/*									tab:8
 *
 * symbol.h - symbol table interface for the LC-3 assembler and simulator
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
 * Version:	    1
 * Creation Date:   18 October 2003
 * Filename:	    symbol.h
 * History:
 *	SSL	1	18 October 2003
 *		Copyright notices and Gnu Public License marker added.
 */

#ifndef SYMBOL_H
#define SYMBOL_H

typedef struct symbol_t symbol_t;
struct symbol_t {
    char* name;
    int addr;
    symbol_t* next_with_hash;
#ifdef MAP_LOCATION_TO_SYMBOL
    symbol_t* next_at_loc;
#endif
};

#define SYMBOL_HASH 997

extern symbol_t* lc3_sym_names[65536];
extern symbol_t* lc3_sym_hash[SYMBOL_HASH];

int symbol_hash (const char* symbol);
int add_symbol (const char* symbol, int addr, int dup_ok);
symbol_t* find_symbol (const char* symbol, int* hptr);
#ifdef MAP_LOCATION_TO_SYMBOL
void remove_symbol_at_addr (int addr);
#endif

#endif /* SYMBOL_H */

