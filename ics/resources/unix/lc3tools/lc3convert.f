/*									tab:8
 *
 * lc3convert.f - LC-3 binary and hexadecimal file conversion tool
 *
 * "Copyright (c) 2003 by Steven S. Lumetta."
 *
 * Permission to use, copy, modify, and distribute this software and its
 * documentation for any purpose, without fee, and without written 
 * agreement is hereby granted, provided that the above copyright notice
 * and the following two paragraphs appear in all copies of this software,
 * that the files COPYING and NO_WARRANTY are included verbatim with
 * any distribution, and that the contents of the file README are included
 * verbatim as part of a file named README with any distribution.
 * 
 * IN NO EVENT SHALL THE AUTHOR BE LIABLE TO ANY PARTY FOR DIRECT, 
 * INDIRECT, SPECIAL, INCIDENTAL, OR CONSEQUENTIAL DAMAGES ARISING OUT 
 * OF THE USE OF THIS SOFTWARE AND ITS DOCUMENTATION, EVEN IF THE AUTHOR 
 * HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 * 
 * THE AUTHOR SPECIFICALLY DISCLAIMS ANY WARRANTIES, INCLUDING, BUT NOT 
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR 
 * A PARTICULAR PURPOSE.  THE SOFTWARE PROVIDED HEREUNDER IS ON AN "AS IS" 
 * BASIS, AND THE AUTHOR NO OBLIGATION TO PROVIDE MAINTENANCE, SUPPORT, 
 * UPDATES, ENHANCEMENTS, OR MODIFICATIONS."
 *
 * Author:	    Steve Lumetta
 * Version:	    2
 * Creation Date:   30 October 2003
 * Filename:	    lc3convert.f
 * History:
 *	SSL	2	31 October 2003
 *		Finished initial version.
 *	SSL	1	30 October 2003
 *		Started paring down lc3as code.
 */

%option noyywrap nounput

%{

#include <ctype.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>


static int line_num, num_errors, parse_hex, binary_value, bin_count, hex_count;
static FILE* objout;

static void new_inst_line ();
static void bad_line ();
static void generate_bin_instruction (int value);
static void generate_hex_instruction (const char* val_str);
static void end_current_bin_line ();

%}

/* 
   Operand types--note that hexadecimal does not require the "x" prefix
   for conversion.
*/
HEX      [xX]?[-]?[0-9a-fA-F]+
BINARY   [01]

/* comment and white space specification */
SPACE    [ \t]
COMMENT  [;][^\n\r]*
ENDLINE  {SPACE}*{COMMENT}?\r?\n\r?

/* exclusive lexing states to read binary and hexadecimal files */
%x ls_binary ls_hexadecimal ls_bin_garbage ls_hex_garbage

%%
    /* Choose appropriate parser. */
    if (parse_hex) {
        BEGIN (ls_hexadecimal);
    } else {
        BEGIN (ls_binary);
    }

    /* binary parser */
<ls_binary>{BINARY} {
    if (++bin_count == 17) {
        fprintf (stderr, "%3d: line contains more than 16 digits\n", line_num);
	num_errors++;
    } else {
        binary_value <<= 1;
	if (*yytext == '1')
	    binary_value++;
    }
}
<ls_binary>{ENDLINE} {end_current_bin_line ();}
<ls_binary><<EOF>> {end_current_bin_line (); return 0;}

    /* hexadecimal parser */
<ls_hexadecimal>{HEX} {generate_hex_instruction (yytext);}
<ls_hexadecimal>{ENDLINE} {new_inst_line (); /* a blank line */ }


    /* eat excess white space (both parsers) */
<ls_binary,ls_hexadecimal>{SPACE}+ {}  


    /* error handling (replicated because of substate use) */

<ls_binary>. {BEGIN (ls_bin_garbage);}
<ls_bin_garbage>[^\n\r]*{ENDLINE} {bad_line (); BEGIN (ls_binary);}
<ls_bin_garbage><<EOF>> {bad_line (); BEGIN (ls_binary); return 0;}

<ls_hexadecimal>. {BEGIN (ls_hex_garbage);}
<ls_hex_garbage>[^\n\r]*{ENDLINE} {bad_line (); BEGIN (ls_hexadecimal);}
<ls_hex_garbage><<EOF>> {bad_line (); BEGIN (ls_hexadecimal); return 0;}

%%

int
main (int argc, char** argv)
{
    int len, parse_error = 0;
    char* use_ext;
    char* ext;
    char* fname;

    if (argc == 3) {
	if (strcmp (argv[1], "-b2") == 0)
	    parse_hex = 0;
	else if (strcmp (argv[1], "-b16") == 0)
	    parse_hex = 1;
	else
	    parse_error = 1;
    } else
	parse_hex = 0;

    if (parse_error || argc < 2 || argc > 3) {
        fprintf (stderr, "usage: %s [-b2] <BIN filename>\n", argv[0]);
        fprintf (stderr, "       %s -b16 <HEX filename>\n", argv[0]);
	return 1;
    }

    /* Make our own copy of the filename. */
    len = strlen (argv[argc - 1]);
    if ((fname = malloc (len + 5)) == NULL) {
        perror ("malloc");
	return 3;
    }
    strcpy (fname, argv[argc - 1]);

    /* Check for .bin or .hex extension; if not found, add it. */
    use_ext = (parse_hex ? ".hex" : ".bin");
    if ((ext = strrchr (fname, '.')) == NULL || strcmp (ext, use_ext) != 0) {
	ext = fname + len;
        strcpy (ext, use_ext);
    }

    /* Open input file. */
    if ((lc3convertin = fopen (fname, "r")) == NULL) {
        fprintf (stderr, "Could not open %s for reading.\n", fname);
	return 2;
    }

    /* Open output files. */
    strcpy (ext, ".obj");
    if ((objout = fopen (fname, "w")) == NULL) {
        fprintf (stderr, "Could not open %s for writing.\n", fname);
	return 2;
    }

    line_num = 0;
    num_errors = 0;
    new_inst_line ();
    yylex ();
    printf ("%d errors found.\n", num_errors);
    if (num_errors > 0)
    	return 1;

    fclose (objout);

    return 0;
}

static void
new_inst_line () 
{
    binary_value = 0;
    bin_count = 0;
    hex_count = 0;
    line_num++;
}

static void 
bad_line ()
{
    fprintf (stderr, "%3d: contains unrecognizable characters\n",
	     line_num);
    num_errors++;
    new_inst_line ();
}

static int
read_val (const char* s, int* vptr, int bits)
{
    char* trash;
    long v;

    if (*s == 'x' || *s == 'X')
	s++;
    v = strtol (s, &trash, 16);
    if (0x10000 > v && 0x8000 <= v)
        v |= -65536L;   /* handles 64-bit longs properly */
    if (v < -(1L << (bits - 1)) || v >= (1L << bits)) {
	fprintf (stderr, "%3d: constant outside of allowed range\n", line_num);
	num_errors++;
	return -1;
    }
    if ((v & (1UL << (bits - 1))) != 0)
	v |= ~((1UL << bits) - 1);
    *vptr = v;
    return 0;
}

static void
write_value (int val)
{
    unsigned char out[2];

    /* FIXME: just htons... */
    out[0] = (val >> 8);
    out[1] = (val & 0xFF);
    fwrite (out, 2, 1, objout);
}

static void 
generate_bin_instruction (int value)
{
    write_value (value);
    new_inst_line ();
}

static void 
generate_hex_instruction (const char* val_str)
{
    int value;

    if (0 == hex_count) {
	if (0 == read_val (val_str, &value, 16)) {
	    write_value (value);
	}
	hex_count = 1;
    } else {
        fprintf (stderr, "%3d: line contains multiple hex values\n", line_num);
	num_errors++;
    }
}

static void
end_current_bin_line () 
{
    if (bin_count == 0) { 
        /* a blank line */
	new_inst_line ();
    } else {
	if (bin_count < 16) {
	    fprintf (stderr, "%3d: line contains only %d digits\n", line_num,
		     bin_count);
	    num_errors++;
	}
	generate_bin_instruction (binary_value);
    }
}

