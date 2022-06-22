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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000002234519456_0394644517_init();
    work_m_00000000001893733582_2154641950_init();
    work_m_00000000003486536359_2716477984_init();
    work_m_00000000003362078722_3270191933_init();
    work_m_00000000000998937961_1868109917_init();
    work_m_00000000000766137539_4069737879_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000000766137539_4069737879");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
