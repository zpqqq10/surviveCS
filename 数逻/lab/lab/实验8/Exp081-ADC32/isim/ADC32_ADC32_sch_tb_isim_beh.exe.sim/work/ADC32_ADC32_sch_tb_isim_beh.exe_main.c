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
    unisims_ver_m_00000000003510477262_2316096324_init();
    unisims_ver_m_00000000002123152668_0970595058_init();
    unisims_ver_m_00000000002549801008_4245414866_init();
    unisims_ver_m_00000000001162476414_1323117156_init();
    unisims_ver_m_00000000003149700083_1668249201_init();
    unisims_ver_m_00000000001762375489_3501834183_init();
    work_m_00000000000828809841_3571608270_init();
    unisims_ver_m_00000000000924517765_3125220529_init();
    work_m_00000000002614338909_2764929993_init();
    work_m_00000000004182009131_3454541292_init();
    work_m_00000000003312988196_4150605514_init();
    work_m_00000000002808805516_1902263505_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002808805516_1902263505");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
