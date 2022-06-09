/*									tab:8
 *
 * lc3sim.h - the main header file for the LC-3 simulator
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
 * Filename:	    lc3sim.h
 * History:
 *	SSL	1	18 October 2003
 *		Copyright notices and Gnu Public License marker added.
 */

#ifndef LC3SIM_H
#define LC3SIM_H

/* field access macros; "i" is an instruction */

#define F_DR(i)    (((i) >> 9) & 0x7)
#define F_SR1(i)   (((i) >> 6) & 0x7)
#define F_SR2(i)   (((i) >> 0) & 0x7)
#define F_BaseR(i) F_SR1
#define F_SR(i)    F_DR    /* for stores */
#define F_CC(i)    ((i) & 0x0E00)
#define F_vec8(i)  ((i) & 0xFF)

#define F_imm5(i)  (((i) & 0x010) == 0 ? ((i) & 0x00F) : ((i) | ~0x00F))
#define F_imm6(i)  (((i) & 0x020) == 0 ? ((i) & 0x01F) : ((i) | ~0x01F))
#define F_imm9(i)  (((i) & 0x100) == 0 ? ((i) & 0x1FF) : ((i) | ~0x1FF))
#define F_imm11(i) (((i) & 0x400) == 0 ? ((i) & 0x3FF) : ((i) | ~0x3FF))


/* instruction fields for output formatting */

typedef enum field_t field_t;
enum field_t {
    FMT_R1    = 0x001, /* DR or SR                      */
    FMT_R2    = 0x002, /* SR1 or BaseR                  */
    FMT_R3    = 0x004, /* SR2                           */
    FMT_CC    = 0x008, /* condition codes               */
    FMT_IMM5  = 0x010, /* imm5                          */
    FMT_IMM6  = 0x020, /* imm6                          */
    FMT_VEC8  = 0x040, /* vec8                          */
    FMT_ASC8  = 0x080, /* 8-bit ASCII                   */
    FMT_IMM9  = 0x100, /* label (or address from imm9)  */
    FMT_IMM11 = 0x200, /* label (or address from imm11) */
    FMT_IMM16 = 0x400  /* full instruction in hex       */
};


/* instruction formats for output */

typedef enum format_t format_t;
enum format_t {
    FMT_      = 0,
    FMT_RRR   = (FMT_R1 | FMT_R2 | FMT_R3),
    FMT_RRI   = (FMT_R1 | FMT_R2 | FMT_IMM5),
    FMT_CL    = (FMT_CC | FMT_IMM9),
    FMT_R     = FMT_R2,
    FMT_L     = FMT_IMM11,
    FMT_RL    = (FMT_R1 | FMT_IMM9),
    FMT_RRI6  = (FMT_R1 | FMT_R2 | FMT_IMM6),
    FMT_RR    = (FMT_R1 | FMT_R2),
    FMT_V     = FMT_VEC8,
    FMT_A     = FMT_ASC8,
    FMT_16    = FMT_IMM16
};


/* instruction flags */

typedef enum inst_flag_t inst_flag_t;
enum inst_flag_t {
    FLG_NONE       = 0,
    FLG_SUBROUTINE = 1,
    FLG_RETURN     = 2
};


/* LC-3 registers */

typedef enum reg_num_t reg_num_t;
enum reg_num_t {
	R_R0 = 0, R_R1, R_R2, R_R3, R_R4, R_R5, R_R6, R_R7,
	R_PC, R_IR, R_PSR,
	NUM_REGS
};


extern int read_memory (int addr);
extern void write_memory (int addr, int value);


#endif /* LC3SIM_H */

