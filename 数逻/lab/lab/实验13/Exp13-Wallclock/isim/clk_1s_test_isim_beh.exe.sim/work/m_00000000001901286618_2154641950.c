/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/fundamentallogic/Exp13-Wallclock/clk_1s.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {2457U, 0U};
static int ng3[] = {1, 0};
static unsigned int ng4[] = {153U, 0U};
static int ng5[] = {7, 0};
static int ng6[] = {11, 0};
static int ng7[] = {8, 0};
static unsigned int ng8[] = {9U, 0U};
static int ng9[] = {3, 0};
static int ng10[] = {4, 0};



static void Always_29_0(char *t0)
{
    char t4[8];
    char t30[8];
    char t39[8];
    char t40[8];
    char t41[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    char *t38;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    unsigned int t48;
    int t49;
    char *t50;
    unsigned int t51;
    int t52;
    int t53;
    char *t54;
    unsigned int t55;
    int t56;
    int t57;
    unsigned int t58;
    int t59;
    unsigned int t60;
    unsigned int t61;
    int t62;
    int t63;

LAB0:    t1 = (t0 + 3008U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 3576);
    *((int *)t2) = 1;
    t3 = (t0 + 3040);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(29, ng0);

LAB5:    xsi_set_current_line(30, ng0);
    t5 = (t0 + 1208U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t5) == 0)
        goto LAB6;

LAB8:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB9:    t13 = (t4 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (~(t14));
    t16 = *((unsigned int *)t4);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(33, ng0);

LAB14:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    t12 = (t5 + 4);
    t13 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = *((unsigned int *)t6);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t12);
    t11 = *((unsigned int *)t13);
    t14 = (t10 ^ t11);
    t15 = (t9 | t14);
    t16 = *((unsigned int *)t12);
    t17 = *((unsigned int *)t13);
    t18 = (t16 | t17);
    t21 = (~(t18));
    t22 = (t15 & t21);
    if (t22 != 0)
        goto LAB18;

LAB15:    if (t18 != 0)
        goto LAB17;

LAB16:    *((unsigned int *)t4) = 1;

LAB18:    t20 = (t4 + 4);
    t23 = *((unsigned int *)t20);
    t24 = (~(t23));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB19;

LAB20:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t4 + 4);
    t12 = (t5 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (t7 >> 0);
    *((unsigned int *)t4) = t8;
    t9 = *((unsigned int *)t12);
    t10 = (t9 >> 0);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t11 & 255U);
    t14 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t14 & 255U);
    t13 = ((char*)((ng4)));
    memset(t30, 0, 8);
    t19 = (t4 + 4);
    t20 = (t13 + 4);
    t15 = *((unsigned int *)t4);
    t16 = *((unsigned int *)t13);
    t17 = (t15 ^ t16);
    t18 = *((unsigned int *)t19);
    t21 = *((unsigned int *)t20);
    t22 = (t18 ^ t21);
    t23 = (t17 | t22);
    t24 = *((unsigned int *)t19);
    t25 = *((unsigned int *)t20);
    t26 = (t24 | t25);
    t27 = (~(t26));
    t31 = (t23 & t27);
    if (t31 != 0)
        goto LAB26;

LAB23:    if (t26 != 0)
        goto LAB25;

LAB24:    *((unsigned int *)t30) = 1;

LAB26:    t29 = (t30 + 4);
    t32 = *((unsigned int *)t29);
    t33 = (~(t32));
    t34 = *((unsigned int *)t30);
    t35 = (t34 & t33);
    t36 = (t35 != 0);
    if (t36 > 0)
        goto LAB27;

LAB28:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t4 + 4);
    t12 = (t5 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (t7 >> 0);
    *((unsigned int *)t4) = t8;
    t9 = *((unsigned int *)t12);
    t10 = (t9 >> 0);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t11 & 15U);
    t14 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t14 & 15U);
    t13 = ((char*)((ng8)));
    memset(t30, 0, 8);
    t19 = (t4 + 4);
    t20 = (t13 + 4);
    t15 = *((unsigned int *)t4);
    t16 = *((unsigned int *)t13);
    t17 = (t15 ^ t16);
    t18 = *((unsigned int *)t19);
    t21 = *((unsigned int *)t20);
    t22 = (t18 ^ t21);
    t23 = (t17 | t22);
    t24 = *((unsigned int *)t19);
    t25 = *((unsigned int *)t20);
    t26 = (t24 | t25);
    t27 = (~(t26));
    t31 = (t23 & t27);
    if (t31 != 0)
        goto LAB38;

LAB35:    if (t26 != 0)
        goto LAB37;

LAB36:    *((unsigned int *)t30) = 1;

LAB38:    t29 = (t30 + 4);
    t32 = *((unsigned int *)t29);
    t33 = (~(t32));
    t34 = *((unsigned int *)t30);
    t35 = (t34 & t33);
    t36 = (t35 != 0);
    if (t36 > 0)
        goto LAB39;

LAB40:    xsi_set_current_line(46, ng0);

LAB47:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t4 + 4);
    t12 = (t5 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (t7 >> 0);
    *((unsigned int *)t4) = t8;
    t9 = *((unsigned int *)t12);
    t10 = (t9 >> 0);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t11 & 15U);
    t14 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t14 & 15U);
    t13 = ((char*)((ng3)));
    memset(t30, 0, 8);
    xsi_vlog_unsigned_add(t30, 32, t4, 32, t13, 32);
    t19 = (t0 + 1928);
    t20 = (t0 + 1928);
    t28 = (t20 + 72U);
    t29 = *((char **)t28);
    t37 = ((char*)((ng9)));
    t38 = ((char*)((ng1)));
    xsi_vlog_convert_partindices(t39, t40, t41, ((int*)(t29)), 2, t37, 32, 1, t38, 32, 1);
    t42 = (t39 + 4);
    t15 = *((unsigned int *)t42);
    t49 = (!(t15));
    t43 = (t40 + 4);
    t16 = *((unsigned int *)t43);
    t52 = (!(t16));
    t53 = (t49 && t52);
    t44 = (t41 + 4);
    t17 = *((unsigned int *)t44);
    t56 = (!(t17));
    t57 = (t53 && t56);
    if (t57 == 1)
        goto LAB48;

LAB49:    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB41:
LAB29:
LAB21:
LAB12:    goto LAB2;

LAB6:    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(30, ng0);

LAB13:    xsi_set_current_line(31, ng0);
    t19 = ((char*)((ng1)));
    t20 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t20, t19, 0, 0, 12, 0LL);
    goto LAB12;

LAB17:    t19 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB18;

LAB19:    xsi_set_current_line(34, ng0);

LAB22:    xsi_set_current_line(35, ng0);
    t28 = ((char*)((ng1)));
    t29 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 12, 0LL);
    xsi_set_current_line(36, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB21;

LAB25:    t28 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB26;

LAB27:    xsi_set_current_line(38, ng0);

LAB30:    xsi_set_current_line(39, ng0);
    t37 = ((char*)((ng1)));
    t38 = (t0 + 1928);
    t42 = (t0 + 1928);
    t43 = (t42 + 72U);
    t44 = *((char **)t43);
    t45 = ((char*)((ng5)));
    t46 = ((char*)((ng1)));
    xsi_vlog_convert_partindices(t39, t40, t41, ((int*)(t44)), 2, t45, 32, 1, t46, 32, 1);
    t47 = (t39 + 4);
    t48 = *((unsigned int *)t47);
    t49 = (!(t48));
    t50 = (t40 + 4);
    t51 = *((unsigned int *)t50);
    t52 = (!(t51));
    t53 = (t49 && t52);
    t54 = (t41 + 4);
    t55 = *((unsigned int *)t54);
    t56 = (!(t55));
    t57 = (t53 && t56);
    if (t57 == 1)
        goto LAB31;

LAB32:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t4 + 4);
    t12 = (t5 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (t7 >> 8);
    *((unsigned int *)t4) = t8;
    t9 = *((unsigned int *)t12);
    t10 = (t9 >> 8);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t11 & 15U);
    t14 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t14 & 15U);
    t13 = ((char*)((ng3)));
    memset(t30, 0, 8);
    xsi_vlog_unsigned_add(t30, 32, t4, 32, t13, 32);
    t19 = (t0 + 1928);
    t20 = (t0 + 1928);
    t28 = (t20 + 72U);
    t29 = *((char **)t28);
    t37 = ((char*)((ng6)));
    t38 = ((char*)((ng7)));
    xsi_vlog_convert_partindices(t39, t40, t41, ((int*)(t29)), 2, t37, 32, 1, t38, 32, 1);
    t42 = (t39 + 4);
    t15 = *((unsigned int *)t42);
    t49 = (!(t15));
    t43 = (t40 + 4);
    t16 = *((unsigned int *)t43);
    t52 = (!(t16));
    t53 = (t49 && t52);
    t44 = (t41 + 4);
    t17 = *((unsigned int *)t44);
    t56 = (!(t17));
    t57 = (t53 && t56);
    if (t57 == 1)
        goto LAB33;

LAB34:    goto LAB29;

LAB31:    t58 = *((unsigned int *)t41);
    t59 = (t58 + 0);
    t60 = *((unsigned int *)t39);
    t61 = *((unsigned int *)t40);
    t62 = (t60 - t61);
    t63 = (t62 + 1);
    xsi_vlogvar_wait_assign_value(t38, t37, t59, *((unsigned int *)t40), t63, 0LL);
    goto LAB32;

LAB33:    t18 = *((unsigned int *)t41);
    t59 = (t18 + 0);
    t21 = *((unsigned int *)t39);
    t22 = *((unsigned int *)t40);
    t62 = (t21 - t22);
    t63 = (t62 + 1);
    xsi_vlogvar_wait_assign_value(t19, t30, t59, *((unsigned int *)t40), t63, 0LL);
    goto LAB34;

LAB37:    t28 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB38;

LAB39:    xsi_set_current_line(42, ng0);

LAB42:    xsi_set_current_line(43, ng0);
    t37 = ((char*)((ng1)));
    t38 = (t0 + 1928);
    t42 = (t0 + 1928);
    t43 = (t42 + 72U);
    t44 = *((char **)t43);
    t45 = ((char*)((ng9)));
    t46 = ((char*)((ng1)));
    xsi_vlog_convert_partindices(t39, t40, t41, ((int*)(t44)), 2, t45, 32, 1, t46, 32, 1);
    t47 = (t39 + 4);
    t48 = *((unsigned int *)t47);
    t49 = (!(t48));
    t50 = (t40 + 4);
    t51 = *((unsigned int *)t50);
    t52 = (!(t51));
    t53 = (t49 && t52);
    t54 = (t41 + 4);
    t55 = *((unsigned int *)t54);
    t56 = (!(t55));
    t57 = (t53 && t56);
    if (t57 == 1)
        goto LAB43;

LAB44:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t4 + 4);
    t12 = (t5 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (t7 >> 4);
    *((unsigned int *)t4) = t8;
    t9 = *((unsigned int *)t12);
    t10 = (t9 >> 4);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t11 & 15U);
    t14 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t14 & 15U);
    t13 = ((char*)((ng3)));
    memset(t30, 0, 8);
    xsi_vlog_unsigned_add(t30, 32, t4, 32, t13, 32);
    t19 = (t0 + 1928);
    t20 = (t0 + 1928);
    t28 = (t20 + 72U);
    t29 = *((char **)t28);
    t37 = ((char*)((ng5)));
    t38 = ((char*)((ng10)));
    xsi_vlog_convert_partindices(t39, t40, t41, ((int*)(t29)), 2, t37, 32, 1, t38, 32, 1);
    t42 = (t39 + 4);
    t15 = *((unsigned int *)t42);
    t49 = (!(t15));
    t43 = (t40 + 4);
    t16 = *((unsigned int *)t43);
    t52 = (!(t16));
    t53 = (t49 && t52);
    t44 = (t41 + 4);
    t17 = *((unsigned int *)t44);
    t56 = (!(t17));
    t57 = (t53 && t56);
    if (t57 == 1)
        goto LAB45;

LAB46:    goto LAB41;

LAB43:    t58 = *((unsigned int *)t41);
    t59 = (t58 + 0);
    t60 = *((unsigned int *)t39);
    t61 = *((unsigned int *)t40);
    t62 = (t60 - t61);
    t63 = (t62 + 1);
    xsi_vlogvar_wait_assign_value(t38, t37, t59, *((unsigned int *)t40), t63, 0LL);
    goto LAB44;

LAB45:    t18 = *((unsigned int *)t41);
    t59 = (t18 + 0);
    t21 = *((unsigned int *)t39);
    t22 = *((unsigned int *)t40);
    t62 = (t21 - t22);
    t63 = (t62 + 1);
    xsi_vlogvar_wait_assign_value(t19, t30, t59, *((unsigned int *)t40), t63, 0LL);
    goto LAB46;

LAB48:    t18 = *((unsigned int *)t41);
    t59 = (t18 + 0);
    t21 = *((unsigned int *)t39);
    t22 = *((unsigned int *)t40);
    t62 = (t21 - t22);
    t63 = (t62 + 1);
    xsi_vlogvar_wait_assign_value(t19, t30, t59, *((unsigned int *)t40), t63, 0LL);
    goto LAB49;

}

static void implSig1_execute(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;

LAB0:    t1 = (t0 + 3256U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    memset(t3, 0, 8);
    t2 = (t4 + 4);
    t5 = *((unsigned int *)t2);
    t6 = (~(t5));
    t7 = *((unsigned int *)t4);
    t8 = (t7 & t6);
    t9 = (t8 & 1U);
    if (t9 != 0)
        goto LAB7;

LAB5:    if (*((unsigned int *)t2) == 0)
        goto LAB4;

LAB6:    t10 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t10) = 1;

LAB7:    t11 = (t3 + 4);
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t14 = (~(t13));
    *((unsigned int *)t3) = t14;
    *((unsigned int *)t11) = 0;
    if (*((unsigned int *)t12) != 0)
        goto LAB9;

LAB8:    t19 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t19 & 1U);
    t20 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t20 & 1U);
    t21 = (t0 + 3672);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memset(t25, 0, 8);
    t26 = 1U;
    t27 = t26;
    t28 = (t3 + 4);
    t29 = *((unsigned int *)t3);
    t26 = (t26 & t29);
    t30 = *((unsigned int *)t28);
    t27 = (t27 & t30);
    t31 = (t25 + 4);
    t32 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t32 | t26);
    t33 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t33 | t27);
    xsi_driver_vfirst_trans(t21, 0, 0);
    t34 = (t0 + 3592);
    *((int *)t34) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t3) = 1;
    goto LAB7;

LAB9:    t15 = *((unsigned int *)t3);
    t16 = *((unsigned int *)t12);
    *((unsigned int *)t3) = (t15 | t16);
    t17 = *((unsigned int *)t11);
    t18 = *((unsigned int *)t12);
    *((unsigned int *)t11) = (t17 | t18);
    goto LAB8;

}


extern void work_m_00000000001901286618_2154641950_init()
{
	static char *pe[] = {(void *)Always_29_0,(void *)implSig1_execute};
	xsi_register_didat("work_m_00000000001901286618_2154641950", "isim/clk_1s_test_isim_beh.exe.sim/work/m_00000000001901286618_2154641950.didat");
	xsi_register_executes(pe);
}
