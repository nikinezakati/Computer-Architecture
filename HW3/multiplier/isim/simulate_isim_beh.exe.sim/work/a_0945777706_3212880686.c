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
static const char *ng0 = "//Mac/Home/Desktop/CA/HW3/multiplier/multiplier.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_0945777706_3212880686_p_0(char *t0)
{
    char t9[16];
    char t20[16];
    char *t1;
    char *t2;
    int t3;
    unsigned char t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned char t8;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t21;
    int t22;
    unsigned int t23;

LAB0:    xsi_set_current_line(56, ng0);

LAB2:
LAB3:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 2128U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t4 = (t3 == 4);
    if (t4 != 0)
        goto LAB5;

LAB6:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1648U);
    t2 = *((char **)t1);
    t3 = (0 - 3);
    t5 = (t3 * -1);
    t6 = (1U * t5);
    t7 = (0 + t6);
    t1 = (t2 + t7);
    t4 = *((unsigned char *)t1);
    t8 = (t4 == (unsigned char)3);
    if (t8 != 0)
        goto LAB7;

LAB9:    t1 = (t0 + 1648U);
    t2 = *((char **)t1);
    t3 = (0 - 3);
    t5 = (t3 * -1);
    t6 = (1U * t5);
    t7 = (0 + t6);
    t1 = (t2 + t7);
    t4 = *((unsigned char *)t1);
    t8 = (t4 == (unsigned char)2);
    if (t8 != 0)
        goto LAB10;

LAB11:
LAB8:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 2128U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t22 = (t3 + 1);
    t1 = (t0 + 2128U);
    t10 = *((char **)t1);
    t1 = (t10 + 0);
    *((int *)t1) = t22;
    goto LAB2;

LAB4:;
LAB5:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 2008U);
    t2 = *((char **)t1);
    t1 = (t0 + 3512);
    t10 = (t1 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 3432);
    *((int *)t1) = 1;

LAB1:    return;
LAB7:    xsi_set_current_line(59, ng0);
    t10 = (t0 + 1768U);
    t11 = *((char **)t10);
    t10 = (t0 + 5620U);
    t12 = (t0 + 1648U);
    t13 = *((char **)t12);
    t12 = (t0 + 5604U);
    t14 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t9, t11, t10, t13, t12);
    t15 = (t0 + 1768U);
    t16 = *((char **)t15);
    t15 = (t16 + 0);
    t17 = (t9 + 12U);
    t18 = *((unsigned int *)t17);
    t19 = (1U * t18);
    memcpy(t15, t14, t19);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1768U);
    t2 = *((char **)t1);
    t1 = (t0 + 1888U);
    t10 = *((char **)t1);
    t11 = ((IEEE_P_2592010699) + 4024);
    t12 = (t0 + 5620U);
    t13 = (t0 + 5636U);
    t1 = xsi_base_array_concat(t1, t9, t11, (char)97, t2, t12, (char)97, t10, t13, (char)101);
    t14 = (t0 + 2008U);
    t15 = *((char **)t14);
    t14 = (t15 + 0);
    t5 = (4U + 4U);
    memcpy(t14, t1, t5);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 2008U);
    t2 = *((char **)t1);
    t5 = (7 - 7);
    t6 = (t5 * 1U);
    t7 = (0 + t6);
    t1 = (t2 + t7);
    t11 = ((IEEE_P_2592010699) + 4024);
    t12 = (t20 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 7;
    t13 = (t12 + 4U);
    *((int *)t13) = 1;
    t13 = (t12 + 8U);
    *((int *)t13) = -1;
    t3 = (1 - 7);
    t18 = (t3 * -1);
    t18 = (t18 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t18;
    t10 = xsi_base_array_concat(t10, t9, t11, (char)99, (unsigned char)2, (char)97, t1, t20, (char)101);
    t13 = (t0 + 2008U);
    t14 = *((char **)t13);
    t13 = (t14 + 0);
    t18 = (1U + 7U);
    memcpy(t13, t10, t18);
    goto LAB8;

LAB10:    xsi_set_current_line(63, ng0);
    t10 = (t0 + 2008U);
    t11 = *((char **)t10);
    t18 = (7 - 7);
    t19 = (t18 * 1U);
    t21 = (0 + t19);
    t10 = (t11 + t21);
    t13 = ((IEEE_P_2592010699) + 4024);
    t14 = (t20 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 7;
    t15 = (t14 + 4U);
    *((int *)t15) = 1;
    t15 = (t14 + 8U);
    *((int *)t15) = -1;
    t22 = (1 - 7);
    t23 = (t22 * -1);
    t23 = (t23 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t23;
    t12 = xsi_base_array_concat(t12, t9, t13, (char)99, (unsigned char)2, (char)97, t10, t20, (char)101);
    t15 = (t0 + 2008U);
    t16 = *((char **)t15);
    t15 = (t16 + 0);
    t23 = (1U + 7U);
    memcpy(t15, t12, t23);
    goto LAB8;

}


extern void work_a_0945777706_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0945777706_3212880686_p_0};
	xsi_register_didat("work_a_0945777706_3212880686", "isim/simulate_isim_beh.exe.sim/work/a_0945777706_3212880686.didat");
	xsi_register_executes(pe);
}
