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
static const char *ng0 = "D:/fundamentallogic/Top-Wallclock/wallclock.v";
static int ng1[] = {1, 0};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {3U, 0U};
static unsigned int ng6[] = {12U, 0U};



static void Always_44_0(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;

LAB0:    t1 = (t0 + 6048U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 7608);
    *((int *)t2) = 1;
    t3 = (t0 + 6080);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(45, ng0);
    t5 = (t0 + 4328);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t4, 0, 8);
    t8 = (t7 + 4);
    t9 = *((unsigned int *)t8);
    t10 = (~(t9));
    t11 = *((unsigned int *)t7);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB8;

LAB6:    if (*((unsigned int *)t8) == 0)
        goto LAB5;

LAB7:    t14 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t14) = 1;

LAB8:    t15 = (t4 + 4);
    t16 = (t7 + 4);
    t17 = *((unsigned int *)t7);
    t18 = (~(t17));
    *((unsigned int *)t4) = t18;
    *((unsigned int *)t15) = 0;
    if (*((unsigned int *)t16) != 0)
        goto LAB10;

LAB9:    t23 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t23 & 1U);
    t24 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t24 & 1U);
    t25 = (t0 + 4328);
    xsi_vlogvar_wait_assign_value(t25, t4, 0, 0, 1, 0LL);
    goto LAB2;

LAB5:    *((unsigned int *)t4) = 1;
    goto LAB8;

LAB10:    t19 = *((unsigned int *)t4);
    t20 = *((unsigned int *)t16);
    *((unsigned int *)t4) = (t19 | t20);
    t21 = *((unsigned int *)t15);
    t22 = *((unsigned int *)t16);
    *((unsigned int *)t15) = (t21 | t22);
    goto LAB9;

}

static void Always_47_1(char *t0)
{
    char t4[8];
    char t25[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t26;

LAB0:    t1 = (t0 + 6296U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 7624);
    *((int *)t2) = 1;
    t3 = (t0 + 6328);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(48, ng0);
    t5 = (t0 + 4328);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t4, 0, 8);
    t8 = (t7 + 4);
    t9 = *((unsigned int *)t8);
    t10 = (~(t9));
    t11 = *((unsigned int *)t7);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB8;

LAB6:    if (*((unsigned int *)t8) == 0)
        goto LAB5;

LAB7:    t14 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t14) = 1;

LAB8:    t15 = (t4 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (~(t16));
    t18 = *((unsigned int *)t4);
    t19 = (t18 & t17);
    t20 = (t19 != 0);
    if (t20 > 0)
        goto LAB9;

LAB10:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 4648);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng1)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t5, 2, t6, 32);
    t7 = (t0 + 4648);
    xsi_vlogvar_wait_assign_value(t7, t4, 0, 0, 2, 0LL);

LAB11:    goto LAB2;

LAB5:    *((unsigned int *)t4) = 1;
    goto LAB8;

LAB9:    xsi_set_current_line(48, ng0);
    t21 = (t0 + 4488);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = ((char*)((ng1)));
    memset(t25, 0, 8);
    xsi_vlog_unsigned_add(t25, 32, t23, 2, t24, 32);
    t26 = (t0 + 4488);
    xsi_vlogvar_wait_assign_value(t26, t25, 0, 0, 2, 0LL);
    goto LAB11;

}

static void Cont_51_2(char *t0)
{
    char t7[8];
    char t38[8];
    char t51[8];
    char t82[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    int t30;
    int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    char *t49;
    char *t50;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    char *t55;
    char *t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    char *t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    int t74;
    int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    char *t86;
    char *t87;
    char *t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    char *t96;
    char *t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    int t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    char *t110;
    char *t111;
    char *t112;
    char *t113;
    char *t114;
    unsigned int t115;
    unsigned int t116;
    char *t117;
    unsigned int t118;
    unsigned int t119;
    char *t120;
    unsigned int t121;
    unsigned int t122;
    char *t123;

LAB0:    t1 = (t0 + 6544U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 4968);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1368U);
    t6 = *((char **)t5);
    t8 = *((unsigned int *)t4);
    t9 = *((unsigned int *)t6);
    t10 = (t8 & t9);
    *((unsigned int *)t7) = t10;
    t5 = (t4 + 4);
    t11 = (t6 + 4);
    t12 = (t7 + 4);
    t13 = *((unsigned int *)t5);
    t14 = *((unsigned int *)t11);
    t15 = (t13 | t14);
    *((unsigned int *)t12) = t15;
    t16 = *((unsigned int *)t12);
    t17 = (t16 != 0);
    if (t17 == 1)
        goto LAB4;

LAB5:
LAB6:    t39 = (t0 + 4968);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    memset(t38, 0, 8);
    t42 = (t41 + 4);
    t43 = *((unsigned int *)t42);
    t44 = (~(t43));
    t45 = *((unsigned int *)t41);
    t46 = (t45 & t44);
    t47 = (t46 & 1U);
    if (t47 != 0)
        goto LAB10;

LAB8:    if (*((unsigned int *)t42) == 0)
        goto LAB7;

LAB9:    t48 = (t38 + 4);
    *((unsigned int *)t38) = 1;
    *((unsigned int *)t48) = 1;

LAB10:    t49 = (t0 + 2808U);
    t50 = *((char **)t49);
    t52 = *((unsigned int *)t38);
    t53 = *((unsigned int *)t50);
    t54 = (t52 & t53);
    *((unsigned int *)t51) = t54;
    t49 = (t38 + 4);
    t55 = (t50 + 4);
    t56 = (t51 + 4);
    t57 = *((unsigned int *)t49);
    t58 = *((unsigned int *)t55);
    t59 = (t57 | t58);
    *((unsigned int *)t56) = t59;
    t60 = *((unsigned int *)t56);
    t61 = (t60 != 0);
    if (t61 == 1)
        goto LAB11;

LAB12:
LAB13:    t83 = *((unsigned int *)t7);
    t84 = *((unsigned int *)t51);
    t85 = (t83 | t84);
    *((unsigned int *)t82) = t85;
    t86 = (t7 + 4);
    t87 = (t51 + 4);
    t88 = (t82 + 4);
    t89 = *((unsigned int *)t86);
    t90 = *((unsigned int *)t87);
    t91 = (t89 | t90);
    *((unsigned int *)t88) = t91;
    t92 = *((unsigned int *)t88);
    t93 = (t92 != 0);
    if (t93 == 1)
        goto LAB14;

LAB15:
LAB16:    t110 = (t0 + 7768);
    t111 = (t110 + 56U);
    t112 = *((char **)t111);
    t113 = (t112 + 56U);
    t114 = *((char **)t113);
    memset(t114, 0, 8);
    t115 = 1U;
    t116 = t115;
    t117 = (t82 + 4);
    t118 = *((unsigned int *)t82);
    t115 = (t115 & t118);
    t119 = *((unsigned int *)t117);
    t116 = (t116 & t119);
    t120 = (t114 + 4);
    t121 = *((unsigned int *)t114);
    *((unsigned int *)t114) = (t121 | t115);
    t122 = *((unsigned int *)t120);
    *((unsigned int *)t120) = (t122 | t116);
    xsi_driver_vfirst_trans(t110, 0, 0);
    t123 = (t0 + 7640);
    *((int *)t123) = 1;

LAB1:    return;
LAB4:    t18 = *((unsigned int *)t7);
    t19 = *((unsigned int *)t12);
    *((unsigned int *)t7) = (t18 | t19);
    t20 = (t4 + 4);
    t21 = (t6 + 4);
    t22 = *((unsigned int *)t4);
    t23 = (~(t22));
    t24 = *((unsigned int *)t20);
    t25 = (~(t24));
    t26 = *((unsigned int *)t6);
    t27 = (~(t26));
    t28 = *((unsigned int *)t21);
    t29 = (~(t28));
    t30 = (t23 & t25);
    t31 = (t27 & t29);
    t32 = (~(t30));
    t33 = (~(t31));
    t34 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t34 & t32);
    t35 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t35 & t33);
    t36 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t36 & t32);
    t37 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t37 & t33);
    goto LAB6;

LAB7:    *((unsigned int *)t38) = 1;
    goto LAB10;

LAB11:    t62 = *((unsigned int *)t51);
    t63 = *((unsigned int *)t56);
    *((unsigned int *)t51) = (t62 | t63);
    t64 = (t38 + 4);
    t65 = (t50 + 4);
    t66 = *((unsigned int *)t38);
    t67 = (~(t66));
    t68 = *((unsigned int *)t64);
    t69 = (~(t68));
    t70 = *((unsigned int *)t50);
    t71 = (~(t70));
    t72 = *((unsigned int *)t65);
    t73 = (~(t72));
    t74 = (t67 & t69);
    t75 = (t71 & t73);
    t76 = (~(t74));
    t77 = (~(t75));
    t78 = *((unsigned int *)t56);
    *((unsigned int *)t56) = (t78 & t76);
    t79 = *((unsigned int *)t56);
    *((unsigned int *)t56) = (t79 & t77);
    t80 = *((unsigned int *)t51);
    *((unsigned int *)t51) = (t80 & t76);
    t81 = *((unsigned int *)t51);
    *((unsigned int *)t51) = (t81 & t77);
    goto LAB13;

LAB14:    t94 = *((unsigned int *)t82);
    t95 = *((unsigned int *)t88);
    *((unsigned int *)t82) = (t94 | t95);
    t96 = (t7 + 4);
    t97 = (t51 + 4);
    t98 = *((unsigned int *)t96);
    t99 = (~(t98));
    t100 = *((unsigned int *)t7);
    t101 = (t100 & t99);
    t102 = *((unsigned int *)t97);
    t103 = (~(t102));
    t104 = *((unsigned int *)t51);
    t105 = (t104 & t103);
    t106 = (~(t101));
    t107 = (~(t105));
    t108 = *((unsigned int *)t88);
    *((unsigned int *)t88) = (t108 & t106);
    t109 = *((unsigned int *)t88);
    *((unsigned int *)t88) = (t109 & t107);
    goto LAB16;

}

static void Cont_52_3(char *t0)
{
    char t7[8];
    char t38[8];
    char t51[8];
    char t82[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    int t30;
    int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    char *t49;
    char *t50;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    char *t55;
    char *t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    char *t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    int t74;
    int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    char *t86;
    char *t87;
    char *t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    char *t96;
    char *t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    int t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    char *t110;
    char *t111;
    char *t112;
    char *t113;
    char *t114;
    unsigned int t115;
    unsigned int t116;
    char *t117;
    unsigned int t118;
    unsigned int t119;
    char *t120;
    unsigned int t121;
    unsigned int t122;
    char *t123;

LAB0:    t1 = (t0 + 6792U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 5128);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1368U);
    t6 = *((char **)t5);
    t8 = *((unsigned int *)t4);
    t9 = *((unsigned int *)t6);
    t10 = (t8 & t9);
    *((unsigned int *)t7) = t10;
    t5 = (t4 + 4);
    t11 = (t6 + 4);
    t12 = (t7 + 4);
    t13 = *((unsigned int *)t5);
    t14 = *((unsigned int *)t11);
    t15 = (t13 | t14);
    *((unsigned int *)t12) = t15;
    t16 = *((unsigned int *)t12);
    t17 = (t16 != 0);
    if (t17 == 1)
        goto LAB4;

LAB5:
LAB6:    t39 = (t0 + 5128);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    memset(t38, 0, 8);
    t42 = (t41 + 4);
    t43 = *((unsigned int *)t42);
    t44 = (~(t43));
    t45 = *((unsigned int *)t41);
    t46 = (t45 & t44);
    t47 = (t46 & 1U);
    if (t47 != 0)
        goto LAB10;

LAB8:    if (*((unsigned int *)t42) == 0)
        goto LAB7;

LAB9:    t48 = (t38 + 4);
    *((unsigned int *)t38) = 1;
    *((unsigned int *)t48) = 1;

LAB10:    t49 = (t0 + 3128U);
    t50 = *((char **)t49);
    t52 = *((unsigned int *)t38);
    t53 = *((unsigned int *)t50);
    t54 = (t52 & t53);
    *((unsigned int *)t51) = t54;
    t49 = (t38 + 4);
    t55 = (t50 + 4);
    t56 = (t51 + 4);
    t57 = *((unsigned int *)t49);
    t58 = *((unsigned int *)t55);
    t59 = (t57 | t58);
    *((unsigned int *)t56) = t59;
    t60 = *((unsigned int *)t56);
    t61 = (t60 != 0);
    if (t61 == 1)
        goto LAB11;

LAB12:
LAB13:    t83 = *((unsigned int *)t7);
    t84 = *((unsigned int *)t51);
    t85 = (t83 | t84);
    *((unsigned int *)t82) = t85;
    t86 = (t7 + 4);
    t87 = (t51 + 4);
    t88 = (t82 + 4);
    t89 = *((unsigned int *)t86);
    t90 = *((unsigned int *)t87);
    t91 = (t89 | t90);
    *((unsigned int *)t88) = t91;
    t92 = *((unsigned int *)t88);
    t93 = (t92 != 0);
    if (t93 == 1)
        goto LAB14;

LAB15:
LAB16:    t110 = (t0 + 7832);
    t111 = (t110 + 56U);
    t112 = *((char **)t111);
    t113 = (t112 + 56U);
    t114 = *((char **)t113);
    memset(t114, 0, 8);
    t115 = 1U;
    t116 = t115;
    t117 = (t82 + 4);
    t118 = *((unsigned int *)t82);
    t115 = (t115 & t118);
    t119 = *((unsigned int *)t117);
    t116 = (t116 & t119);
    t120 = (t114 + 4);
    t121 = *((unsigned int *)t114);
    *((unsigned int *)t114) = (t121 | t115);
    t122 = *((unsigned int *)t120);
    *((unsigned int *)t120) = (t122 | t116);
    xsi_driver_vfirst_trans(t110, 0, 0);
    t123 = (t0 + 7656);
    *((int *)t123) = 1;

LAB1:    return;
LAB4:    t18 = *((unsigned int *)t7);
    t19 = *((unsigned int *)t12);
    *((unsigned int *)t7) = (t18 | t19);
    t20 = (t4 + 4);
    t21 = (t6 + 4);
    t22 = *((unsigned int *)t4);
    t23 = (~(t22));
    t24 = *((unsigned int *)t20);
    t25 = (~(t24));
    t26 = *((unsigned int *)t6);
    t27 = (~(t26));
    t28 = *((unsigned int *)t21);
    t29 = (~(t28));
    t30 = (t23 & t25);
    t31 = (t27 & t29);
    t32 = (~(t30));
    t33 = (~(t31));
    t34 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t34 & t32);
    t35 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t35 & t33);
    t36 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t36 & t32);
    t37 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t37 & t33);
    goto LAB6;

LAB7:    *((unsigned int *)t38) = 1;
    goto LAB10;

LAB11:    t62 = *((unsigned int *)t51);
    t63 = *((unsigned int *)t56);
    *((unsigned int *)t51) = (t62 | t63);
    t64 = (t38 + 4);
    t65 = (t50 + 4);
    t66 = *((unsigned int *)t38);
    t67 = (~(t66));
    t68 = *((unsigned int *)t64);
    t69 = (~(t68));
    t70 = *((unsigned int *)t50);
    t71 = (~(t70));
    t72 = *((unsigned int *)t65);
    t73 = (~(t72));
    t74 = (t67 & t69);
    t75 = (t71 & t73);
    t76 = (~(t74));
    t77 = (~(t75));
    t78 = *((unsigned int *)t56);
    *((unsigned int *)t56) = (t78 & t76);
    t79 = *((unsigned int *)t56);
    *((unsigned int *)t56) = (t79 & t77);
    t80 = *((unsigned int *)t51);
    *((unsigned int *)t51) = (t80 & t76);
    t81 = *((unsigned int *)t51);
    *((unsigned int *)t51) = (t81 & t77);
    goto LAB13;

LAB14:    t94 = *((unsigned int *)t82);
    t95 = *((unsigned int *)t88);
    *((unsigned int *)t82) = (t94 | t95);
    t96 = (t7 + 4);
    t97 = (t51 + 4);
    t98 = *((unsigned int *)t96);
    t99 = (~(t98));
    t100 = *((unsigned int *)t7);
    t101 = (t100 & t99);
    t102 = *((unsigned int *)t97);
    t103 = (~(t102));
    t104 = *((unsigned int *)t51);
    t105 = (t104 & t103);
    t106 = (~(t101));
    t107 = (~(t105));
    t108 = *((unsigned int *)t88);
    *((unsigned int *)t88) = (t108 & t106);
    t109 = *((unsigned int *)t88);
    *((unsigned int *)t88) = (t109 & t107);
    goto LAB16;

}

static void Always_54_4(char *t0)
{
    char t9[8];
    char t10[8];
    char t20[8];
    char t31[8];
    char t38[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t21;
    char *t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;

LAB0:    t1 = (t0 + 7040U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 7672);
    *((int *)t2) = 1;
    t3 = (t0 + 7072);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(54, ng0);

LAB5:    xsi_set_current_line(55, ng0);
    t4 = (t0 + 4488);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);

LAB6:    t7 = ((char*)((ng2)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 2, t7, 2);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 2, t2, 2);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng4)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 2, t2, 2);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng5)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 2, t2, 2);
    if (t8 == 1)
        goto LAB13;

LAB14:
LAB15:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 4328);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t9, 0, 8);
    t5 = (t4 + 4);
    t14 = *((unsigned int *)t5);
    t15 = (~(t14));
    t16 = *((unsigned int *)t4);
    t17 = (t16 & t15);
    t18 = (t17 & 1U);
    if (t18 != 0)
        goto LAB23;

LAB21:    if (*((unsigned int *)t5) == 0)
        goto LAB20;

LAB22:    t7 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t7) = 1;

LAB23:    t11 = (t9 + 4);
    t19 = *((unsigned int *)t11);
    t24 = (~(t19));
    t25 = *((unsigned int *)t9);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB24;

LAB25:    xsi_set_current_line(70, ng0);

LAB27:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 4648);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4488);
    t7 = (t5 + 56U);
    t11 = *((char **)t7);
    memset(t10, 0, 8);
    t12 = (t10 + 4);
    t13 = (t11 + 4);
    t14 = *((unsigned int *)t11);
    t15 = (t14 >> 0);
    t16 = (t15 & 1);
    *((unsigned int *)t10) = t16;
    t17 = *((unsigned int *)t13);
    t18 = (t17 >> 0);
    t19 = (t18 & 1);
    *((unsigned int *)t12) = t19;
    xsi_vlogtype_concat(t9, 3, 3, 2U, t10, 1, t4, 2);

LAB28:    t21 = ((char*)((ng2)));
    t8 = xsi_vlog_unsigned_case_compare(t9, 3, t21, 3);
    if (t8 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t9, 3, t2, 3);
    if (t8 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng4)));
    t8 = xsi_vlog_unsigned_case_compare(t9, 3, t2, 3);
    if (t8 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng5)));
    t8 = xsi_vlog_unsigned_case_compare(t9, 3, t2, 3);
    if (t8 == 1)
        goto LAB35;

LAB36:
LAB37:
LAB26:    goto LAB2;

LAB7:    xsi_set_current_line(56, ng0);

LAB16:    xsi_set_current_line(56, ng0);
    t11 = (t0 + 1688U);
    t12 = *((char **)t11);
    memset(t10, 0, 8);
    t11 = (t10 + 4);
    t13 = (t12 + 4);
    t14 = *((unsigned int *)t12);
    t15 = (t14 >> 0);
    *((unsigned int *)t10) = t15;
    t16 = *((unsigned int *)t13);
    t17 = (t16 >> 0);
    *((unsigned int *)t11) = t17;
    t18 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t18 & 255U);
    t19 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t19 & 255U);
    t21 = (t0 + 1848U);
    t22 = *((char **)t21);
    memset(t20, 0, 8);
    t21 = (t20 + 4);
    t23 = (t22 + 4);
    t24 = *((unsigned int *)t22);
    t25 = (t24 >> 0);
    *((unsigned int *)t20) = t25;
    t26 = *((unsigned int *)t23);
    t27 = (t26 >> 0);
    *((unsigned int *)t21) = t27;
    t28 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t28 & 255U);
    t29 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t29 & 255U);
    xsi_vlogtype_concat(t9, 16, 16, 2U, t20, 8, t10, 8);
    t30 = (t0 + 3848);
    xsi_vlogvar_wait_assign_value(t30, t9, 0, 0, 16, 0LL);
    xsi_set_current_line(57, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1688U);
    t4 = *((char **)t3);
    memset(t10, 0, 8);
    t3 = (t10 + 4);
    t5 = (t4 + 4);
    t14 = *((unsigned int *)t4);
    t15 = (t14 >> 0);
    t16 = (t15 & 1);
    *((unsigned int *)t10) = t16;
    t17 = *((unsigned int *)t5);
    t18 = (t17 >> 0);
    t19 = (t18 & 1);
    *((unsigned int *)t3) = t19;
    t7 = (t0 + 1688U);
    t11 = *((char **)t7);
    memset(t20, 0, 8);
    t7 = (t20 + 4);
    t12 = (t11 + 4);
    t24 = *((unsigned int *)t11);
    t25 = (t24 >> 0);
    t26 = (t25 & 1);
    *((unsigned int *)t20) = t26;
    t27 = *((unsigned int *)t12);
    t28 = (t27 >> 0);
    t29 = (t28 & 1);
    *((unsigned int *)t7) = t29;
    xsi_vlogtype_concat(t9, 4, 4, 3U, t20, 1, t10, 1, t2, 2);
    t13 = (t0 + 4008);
    xsi_vlogvar_wait_assign_value(t13, t9, 0, 0, 4, 0LL);
    goto LAB15;

LAB9:    xsi_set_current_line(59, ng0);

LAB17:    xsi_set_current_line(59, ng0);
    t3 = (t0 + 1848U);
    t4 = *((char **)t3);
    memset(t10, 0, 8);
    t3 = (t10 + 4);
    t5 = (t4 + 4);
    t14 = *((unsigned int *)t4);
    t15 = (t14 >> 0);
    *((unsigned int *)t10) = t15;
    t16 = *((unsigned int *)t5);
    t17 = (t16 >> 0);
    *((unsigned int *)t3) = t17;
    t18 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t18 & 255U);
    t19 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t19 & 255U);
    t7 = (t0 + 2008U);
    t11 = *((char **)t7);
    memset(t20, 0, 8);
    t7 = (t20 + 4);
    t12 = (t11 + 4);
    t24 = *((unsigned int *)t11);
    t25 = (t24 >> 0);
    *((unsigned int *)t20) = t25;
    t26 = *((unsigned int *)t12);
    t27 = (t26 >> 0);
    *((unsigned int *)t7) = t27;
    t28 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t28 & 255U);
    t29 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t29 & 255U);
    xsi_vlogtype_concat(t9, 16, 16, 2U, t20, 8, t10, 8);
    t13 = (t0 + 3848);
    xsi_vlogvar_wait_assign_value(t13, t9, 0, 0, 16, 0LL);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    memset(t10, 0, 8);
    t2 = (t10 + 4);
    t4 = (t3 + 4);
    t14 = *((unsigned int *)t3);
    t15 = (t14 >> 0);
    t16 = (t15 & 1);
    *((unsigned int *)t10) = t16;
    t17 = *((unsigned int *)t4);
    t18 = (t17 >> 0);
    t19 = (t18 & 1);
    *((unsigned int *)t2) = t19;
    t5 = (t0 + 1688U);
    t7 = *((char **)t5);
    memset(t20, 0, 8);
    t5 = (t20 + 4);
    t11 = (t7 + 4);
    t24 = *((unsigned int *)t7);
    t25 = (t24 >> 0);
    t26 = (t25 & 1);
    *((unsigned int *)t20) = t26;
    t27 = *((unsigned int *)t11);
    t28 = (t27 >> 0);
    t29 = (t28 & 1);
    *((unsigned int *)t5) = t29;
    t12 = ((char*)((ng2)));
    xsi_vlogtype_concat(t9, 4, 4, 3U, t12, 2, t20, 1, t10, 1);
    t13 = (t0 + 4008);
    xsi_vlogvar_wait_assign_value(t13, t9, 0, 0, 4, 0LL);
    goto LAB15;

LAB11:    xsi_set_current_line(62, ng0);

LAB18:    xsi_set_current_line(62, ng0);
    t3 = (t0 + 2168U);
    t4 = *((char **)t3);
    memset(t10, 0, 8);
    t3 = (t10 + 4);
    t5 = (t4 + 4);
    t14 = *((unsigned int *)t4);
    t15 = (t14 >> 0);
    *((unsigned int *)t10) = t15;
    t16 = *((unsigned int *)t5);
    t17 = (t16 >> 0);
    *((unsigned int *)t3) = t17;
    t18 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t18 & 15U);
    t19 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t19 & 15U);
    t7 = (t0 + 2168U);
    t11 = *((char **)t7);
    memset(t20, 0, 8);
    t7 = (t20 + 4);
    t12 = (t11 + 4);
    t24 = *((unsigned int *)t11);
    t25 = (t24 >> 4);
    *((unsigned int *)t20) = t25;
    t26 = *((unsigned int *)t12);
    t27 = (t26 >> 4);
    *((unsigned int *)t7) = t27;
    t28 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t28 & 15U);
    t29 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t29 & 15U);
    t13 = (t0 + 2168U);
    t21 = *((char **)t13);
    memset(t31, 0, 8);
    t13 = (t31 + 4);
    t22 = (t21 + 4);
    t32 = *((unsigned int *)t21);
    t33 = (t32 >> 8);
    *((unsigned int *)t31) = t33;
    t34 = *((unsigned int *)t22);
    t35 = (t34 >> 8);
    *((unsigned int *)t13) = t35;
    t36 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t36 & 15U);
    t37 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t37 & 15U);
    t23 = (t0 + 1688U);
    t30 = *((char **)t23);
    memset(t38, 0, 8);
    t23 = (t38 + 4);
    t39 = (t30 + 4);
    t40 = *((unsigned int *)t30);
    t41 = (t40 >> 0);
    *((unsigned int *)t38) = t41;
    t42 = *((unsigned int *)t39);
    t43 = (t42 >> 0);
    *((unsigned int *)t23) = t43;
    t44 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t44 & 15U);
    t45 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t45 & 15U);
    xsi_vlogtype_concat(t9, 16, 16, 4U, t38, 4, t31, 4, t20, 4, t10, 4);
    t46 = (t0 + 3848);
    xsi_vlogvar_wait_assign_value(t46, t9, 0, 0, 16, 0LL);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    xsi_vlogtype_concat(t9, 8, 8, 1U, t3, 8);
    t2 = (t0 + 4008);
    xsi_vlogvar_wait_assign_value(t2, t9, 0, 0, 4, 0LL);
    goto LAB15;

LAB13:    xsi_set_current_line(65, ng0);

LAB19:    xsi_set_current_line(65, ng0);
    t3 = (t0 + 2168U);
    t4 = *((char **)t3);
    memset(t10, 0, 8);
    t3 = (t10 + 4);
    t5 = (t4 + 4);
    t14 = *((unsigned int *)t4);
    t15 = (t14 >> 0);
    *((unsigned int *)t10) = t15;
    t16 = *((unsigned int *)t5);
    t17 = (t16 >> 0);
    *((unsigned int *)t3) = t17;
    t18 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t18 & 15U);
    t19 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t19 & 15U);
    t7 = (t0 + 2168U);
    t11 = *((char **)t7);
    memset(t20, 0, 8);
    t7 = (t20 + 4);
    t12 = (t11 + 4);
    t24 = *((unsigned int *)t11);
    t25 = (t24 >> 4);
    *((unsigned int *)t20) = t25;
    t26 = *((unsigned int *)t12);
    t27 = (t26 >> 4);
    *((unsigned int *)t7) = t27;
    t28 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t28 & 15U);
    t29 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t29 & 15U);
    t13 = (t0 + 2168U);
    t21 = *((char **)t13);
    memset(t31, 0, 8);
    t13 = (t31 + 4);
    t22 = (t21 + 4);
    t32 = *((unsigned int *)t21);
    t33 = (t32 >> 8);
    *((unsigned int *)t31) = t33;
    t34 = *((unsigned int *)t22);
    t35 = (t34 >> 8);
    *((unsigned int *)t13) = t35;
    t36 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t36 & 15U);
    t37 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t37 & 15U);
    t23 = (t0 + 1688U);
    t30 = *((char **)t23);
    memset(t38, 0, 8);
    t23 = (t38 + 4);
    t39 = (t30 + 4);
    t40 = *((unsigned int *)t30);
    t41 = (t40 >> 0);
    *((unsigned int *)t38) = t41;
    t42 = *((unsigned int *)t39);
    t43 = (t42 >> 0);
    *((unsigned int *)t23) = t43;
    t44 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t44 & 15U);
    t45 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t45 & 15U);
    xsi_vlogtype_concat(t9, 16, 16, 4U, t38, 4, t31, 4, t20, 4, t10, 4);
    t46 = (t0 + 3848);
    xsi_vlogvar_wait_assign_value(t46, t9, 0, 0, 16, 0LL);
    xsi_set_current_line(66, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4008);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    goto LAB15;

LAB20:    *((unsigned int *)t9) = 1;
    goto LAB23;

LAB24:    xsi_set_current_line(69, ng0);
    t12 = ((char*)((ng2)));
    t13 = (t0 + 4168);
    xsi_vlogvar_wait_assign_value(t13, t12, 0, 0, 4, 0LL);
    goto LAB26;

LAB29:    xsi_set_current_line(72, ng0);

LAB38:    xsi_set_current_line(72, ng0);
    t22 = ((char*)((ng5)));
    t23 = (t0 + 4168);
    xsi_vlogvar_wait_assign_value(t23, t22, 0, 0, 4, 0LL);
    xsi_set_current_line(72, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    memset(t20, 0, 8);
    t2 = (t20 + 4);
    t4 = (t3 + 4);
    t14 = *((unsigned int *)t3);
    t15 = (t14 >> 1);
    t16 = (t15 & 1);
    *((unsigned int *)t20) = t16;
    t17 = *((unsigned int *)t4);
    t18 = (t17 >> 1);
    t19 = (t18 & 1);
    *((unsigned int *)t2) = t19;
    memset(t10, 0, 8);
    t5 = (t20 + 4);
    t24 = *((unsigned int *)t5);
    t25 = (~(t24));
    t26 = *((unsigned int *)t20);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB42;

LAB40:    if (*((unsigned int *)t5) == 0)
        goto LAB39;

LAB41:    t7 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t7) = 1;

LAB42:    t11 = (t10 + 4);
    t12 = (t20 + 4);
    t29 = *((unsigned int *)t20);
    t32 = (~(t29));
    *((unsigned int *)t10) = t32;
    *((unsigned int *)t11) = 0;
    if (*((unsigned int *)t12) != 0)
        goto LAB44;

LAB43:    t37 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t37 & 1U);
    t40 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t40 & 1U);
    t13 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t13, t10, 0, 0, 1, 0LL);
    goto LAB37;

LAB31:    xsi_set_current_line(73, ng0);

LAB45:    xsi_set_current_line(73, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 4168);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 4, 0LL);
    xsi_set_current_line(73, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    memset(t10, 0, 8);
    t2 = (t10 + 4);
    t4 = (t3 + 4);
    t14 = *((unsigned int *)t3);
    t15 = (t14 >> 1);
    t16 = (t15 & 1);
    *((unsigned int *)t10) = t16;
    t17 = *((unsigned int *)t4);
    t18 = (t17 >> 1);
    t19 = (t18 & 1);
    *((unsigned int *)t2) = t19;
    t5 = (t0 + 4968);
    xsi_vlogvar_wait_assign_value(t5, t10, 0, 0, 1, 0LL);
    goto LAB37;

LAB33:    xsi_set_current_line(74, ng0);

LAB46:    xsi_set_current_line(74, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 4168);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 4, 0LL);
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    memset(t10, 0, 8);
    t2 = (t10 + 4);
    t4 = (t3 + 4);
    t14 = *((unsigned int *)t3);
    t15 = (t14 >> 1);
    t16 = (t15 & 1);
    *((unsigned int *)t10) = t16;
    t17 = *((unsigned int *)t4);
    t18 = (t17 >> 1);
    t19 = (t18 & 1);
    *((unsigned int *)t2) = t19;
    t5 = (t0 + 5128);
    xsi_vlogvar_wait_assign_value(t5, t10, 0, 0, 1, 0LL);
    goto LAB37;

LAB35:    xsi_set_current_line(75, ng0);

LAB47:    xsi_set_current_line(75, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 4168);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 4, 0LL);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    memset(t10, 0, 8);
    t2 = (t10 + 4);
    t4 = (t3 + 4);
    t14 = *((unsigned int *)t3);
    t15 = (t14 >> 1);
    t16 = (t15 & 1);
    *((unsigned int *)t10) = t16;
    t17 = *((unsigned int *)t4);
    t18 = (t17 >> 1);
    t19 = (t18 & 1);
    *((unsigned int *)t2) = t19;
    t5 = (t0 + 4968);
    xsi_vlogvar_wait_assign_value(t5, t10, 0, 0, 1, 0LL);
    goto LAB37;

LAB39:    *((unsigned int *)t10) = 1;
    goto LAB42;

LAB44:    t33 = *((unsigned int *)t10);
    t34 = *((unsigned int *)t12);
    *((unsigned int *)t10) = (t33 | t34);
    t35 = *((unsigned int *)t11);
    t36 = *((unsigned int *)t12);
    *((unsigned int *)t11) = (t35 | t36);
    goto LAB43;

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

LAB0:    t1 = (t0 + 7288U);
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
    t21 = (t0 + 7896);
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
    t34 = (t0 + 7688);
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


extern void work_m_00000000000998937961_1868109917_init()
{
	static char *pe[] = {(void *)Always_44_0,(void *)Always_47_1,(void *)Cont_51_2,(void *)Cont_52_3,(void *)Always_54_4,(void *)implSig1_execute};
	xsi_register_didat("work_m_00000000000998937961_1868109917", "isim/wallclock_test_isim_beh.exe.sim/work/m_00000000000998937961_1868109917.didat");
	xsi_register_executes(pe);
}
