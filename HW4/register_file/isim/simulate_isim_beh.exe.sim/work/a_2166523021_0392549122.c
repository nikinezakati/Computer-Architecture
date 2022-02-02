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
static const char *ng0 = "//Mac/Home/Desktop/CA/HW4/register_file/register_file.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2166523021_0392549122_p_0(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(25, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 7432U);
    t3 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t2, t1);
    t4 = (t0 + 4560);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t3;
    xsi_driver_first_trans_fast(t4);

LAB2:    t9 = (t0 + 4448);
    *((int *)t9) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2166523021_0392549122_p_1(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(26, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 7448U);
    t3 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t2, t1);
    t4 = (t0 + 4624);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t3;
    xsi_driver_first_trans_fast(t4);

LAB2:    t9 = (t0 + 4464);
    *((int *)t9) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2166523021_0392549122_p_2(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned char t16;
    unsigned char t17;

LAB0:    xsi_set_current_line(30, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4480);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(32, ng0);
    t3 = (t0 + 2152U);
    t4 = *((char **)t3);
    t3 = (t0 + 2312U);
    t5 = *((char **)t3);
    t6 = *((int *)t5);
    t7 = (t6 - 0);
    t8 = (t7 * 1);
    xsi_vhdl_check_range_of_index(0, 255, 1, t6);
    t9 = (8U * t8);
    t10 = (0 + t9);
    t3 = (t4 + t10);
    t11 = (t0 + 4688);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t3, 8U);
    xsi_driver_first_trans_fast_port(t11);
    xsi_set_current_line(34, ng0);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t16 = (t2 == (unsigned char)3);
    if (t16 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t16 = (t2 == (unsigned char)3);
    if (t16 != 0)
        goto LAB10;

LAB11:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 9604);
    t17 = (8U != 8U);
    if (t17 == 1)
        goto LAB8;

LAB9:    t5 = (t0 + 2472U);
    t11 = *((char **)t5);
    t6 = *((int *)t11);
    t7 = (t6 - 0);
    t8 = (t7 * 1);
    t9 = (8U * t8);
    t10 = (0U + t9);
    t5 = (t0 + 4752);
    t12 = (t5 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t1, 8U);
    xsi_driver_first_trans_delta(t5, t10, 8U, 0LL);
    goto LAB6;

LAB8:    xsi_size_not_matching(8U, 8U, 0);
    goto LAB9;

LAB10:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 1352U);
    t4 = *((char **)t1);
    t1 = (t0 + 2472U);
    t5 = *((char **)t1);
    t6 = *((int *)t5);
    t7 = (t6 - 0);
    t8 = (t7 * 1);
    t9 = (8U * t8);
    t10 = (0U + t9);
    t1 = (t0 + 4752);
    t11 = (t1 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t4, 8U);
    xsi_driver_first_trans_delta(t1, t10, 8U, 0LL);
    goto LAB6;

}


extern void work_a_2166523021_0392549122_init()
{
	static char *pe[] = {(void *)work_a_2166523021_0392549122_p_0,(void *)work_a_2166523021_0392549122_p_1,(void *)work_a_2166523021_0392549122_p_2};
	xsi_register_didat("work_a_2166523021_0392549122", "isim/simulate_isim_beh.exe.sim/work/a_2166523021_0392549122.didat");
	xsi_register_executes(pe);
}
