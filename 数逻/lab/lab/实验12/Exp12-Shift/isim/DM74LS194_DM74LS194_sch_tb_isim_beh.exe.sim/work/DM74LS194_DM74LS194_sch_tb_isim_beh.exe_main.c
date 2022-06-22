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
    unisims_ver_m_00000000001762375489_3501834183_init();
    unisims_ver_m_00000000002549801008_4245414866_init();
    unisims_ver_m_00000000003927721830_1593237687_init();
    unisims_ver_m_00000000002549801008_1565138397_init();
    work_m_00000000003900383457_2597177160_init();
    unisims_ver_m_00000000000236260522_2449448540_init();
    work_m_00000000003986522171_0558370471_init();
    work_m_00000000000244484709_4158823596_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000000244484709_4158823596");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
