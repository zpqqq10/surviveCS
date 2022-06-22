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
static const char *ng0 = "D:/Wxp05-38Decoder/Decoder_test.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static int ng3[] = {7, 0};

static void NetReassign_58_1(char *);
static void NetReassign_59_2(char *);
static void NetReassign_60_3(char *);
static void NetReassign_63_4(char *);
static void NetReassign_64_5(char *);
static void NetReassign_65_6(char *);
static void NetReassign_68_7(char *);
static void NetReassign_69_8(char *);
static void NetReassign_70_9(char *);


static void Initial_46_0(char *t0)
{
    char t6[8];
    char t13[8];
    char t24[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t25;
    char *t26;
    char *t27;

LAB0:    t1 = (t0 + 4448U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(46, ng0);

LAB4:    xsi_set_current_line(47, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(50, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(51, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3368);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(52, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(53, ng0);
    t2 = (t0 + 4256);
    xsi_process_wait(t2, 50000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(54, ng0);
    xsi_set_current_line(54, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3528);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB6:    t2 = (t0 + 3528);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t6, 0, 8);
    xsi_vlog_signed_leq(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB7;

LAB8:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 3048);
    xsi_set_assignedflag(t2);
    t3 = (t0 + 8756);
    *((int *)t3) = 1;
    NetReassign_58_1(t0);
    xsi_set_current_line(59, ng0);
    t2 = (t0 + 3368);
    xsi_set_assignedflag(t2);
    t3 = (t0 + 8760);
    *((int *)t3) = 1;
    NetReassign_59_2(t0);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 3208);
    xsi_set_assignedflag(t2);
    t3 = (t0 + 8764);
    *((int *)t3) = 1;
    NetReassign_60_3(t0);
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 4256);
    xsi_process_wait(t2, 50000LL);
    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB7:    xsi_set_current_line(54, ng0);

LAB9:    xsi_set_current_line(55, ng0);
    t14 = (t0 + 2568);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t0 + 2728);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t0 + 2888);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    xsi_vlogtype_concat(t13, 32, 3, 3U, t22, 1, t19, 1, t16, 1);
    t23 = ((char*)((ng2)));
    memset(t24, 0, 8);
    xsi_vlog_unsigned_add(t24, 32, t13, 32, t23, 32);
    t25 = (t0 + 2568);
    xsi_vlogvar_assign_value(t25, t24, 0, 0, 1);
    t26 = (t0 + 2728);
    xsi_vlogvar_assign_value(t26, t24, 1, 0, 1);
    t27 = (t0 + 2888);
    xsi_vlogvar_assign_value(t27, t24, 2, 0, 1);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 4256);
    xsi_process_wait(t2, 50000LL);
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB10:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 3528);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 3528);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB6;

LAB11:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 3048);
    xsi_set_assignedflag(t2);
    t3 = (t0 + 8768);
    *((int *)t3) = 1;
    NetReassign_63_4(t0);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 3368);
    xsi_set_assignedflag(t2);
    t3 = (t0 + 8772);
    *((int *)t3) = 1;
    NetReassign_64_5(t0);
    xsi_set_current_line(65, ng0);
    t2 = (t0 + 3208);
    xsi_set_assignedflag(t2);
    t3 = (t0 + 8776);
    *((int *)t3) = 1;
    NetReassign_65_6(t0);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 4256);
    xsi_process_wait(t2, 50000LL);
    *((char **)t1) = &&LAB12;
    goto LAB1;

LAB12:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 3048);
    xsi_set_assignedflag(t2);
    t3 = (t0 + 8780);
    *((int *)t3) = 1;
    NetReassign_68_7(t0);
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 3368);
    xsi_set_assignedflag(t2);
    t3 = (t0 + 8784);
    *((int *)t3) = 1;
    NetReassign_69_8(t0);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 3208);
    xsi_set_assignedflag(t2);
    t3 = (t0 + 8788);
    *((int *)t3) = 1;
    NetReassign_70_9(t0);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 4256);
    xsi_process_wait(t2, 50000LL);
    *((char **)t1) = &&LAB13;
    goto LAB1;

LAB13:    goto LAB1;

}

static void NetReassign_58_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 4696U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(58, ng0);
    t3 = 0;
    t2 = ((char*)((ng1)));
    t4 = (t0 + 8756);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 3048);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 1, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}

static void NetReassign_59_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 4944U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(59, ng0);
    t3 = 0;
    t2 = ((char*)((ng1)));
    t4 = (t0 + 8760);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 3368);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 1, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}

static void NetReassign_60_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 5192U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(60, ng0);
    t3 = 0;
    t2 = ((char*)((ng1)));
    t4 = (t0 + 8764);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 3208);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 1, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}

static void NetReassign_63_4(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 5440U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(63, ng0);
    t3 = 0;
    t2 = ((char*)((ng2)));
    t4 = (t0 + 8768);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 3048);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 1, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}

static void NetReassign_64_5(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 5688U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(64, ng0);
    t3 = 0;
    t2 = ((char*)((ng2)));
    t4 = (t0 + 8772);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 3368);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 1, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}

static void NetReassign_65_6(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 5936U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(65, ng0);
    t3 = 0;
    t2 = ((char*)((ng1)));
    t4 = (t0 + 8776);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 3208);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 1, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}

static void NetReassign_68_7(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 6184U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(68, ng0);
    t3 = 0;
    t2 = ((char*)((ng2)));
    t4 = (t0 + 8780);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 3048);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 1, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}

static void NetReassign_69_8(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 6432U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(69, ng0);
    t3 = 0;
    t2 = ((char*)((ng1)));
    t4 = (t0 + 8784);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 3368);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 1, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}

static void NetReassign_70_9(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 6680U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(70, ng0);
    t3 = 0;
    t2 = ((char*)((ng2)));
    t4 = (t0 + 8788);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 3208);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 1, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}


extern void work_m_00000000001917796784_2675183807_init()
{
	static char *pe[] = {(void *)Initial_46_0,(void *)NetReassign_58_1,(void *)NetReassign_59_2,(void *)NetReassign_60_3,(void *)NetReassign_63_4,(void *)NetReassign_64_5,(void *)NetReassign_65_6,(void *)NetReassign_68_7,(void *)NetReassign_69_8,(void *)NetReassign_70_9};
	xsi_register_didat("work_m_00000000001917796784_2675183807", "isim/HCT138_sch_HCT138_sch_sch_tb_isim_beh.exe.sim/work/m_00000000001917796784_2675183807.didat");
	xsi_register_executes(pe);
}
