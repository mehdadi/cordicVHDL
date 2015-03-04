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

/* This file is designed for use with ISim build 0x1cce1bb2 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/mehrdad/Documents/xilinx/Processor/ALU.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_767740470_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_0832606739_3212880686_p_0(char *t0)
{
    char t6[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    char *t7;
    unsigned int t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned char t15;
    int t16;
    int t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned char t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    static char *nl0[] = {&&LAB24, &&LAB24, &&LAB22, &&LAB23, &&LAB24, &&LAB24, &&LAB24, &&LAB24, &&LAB24};

LAB0:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1352U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t7 = ((IEEE_P_2592010699) + 4024);
    t1 = xsi_base_array_concat(t1, t6, t7, (char)99, t3, (char)99, t5, (char)101);
    t8 = (1U + 1U);
    t9 = (2U != t8);
    if (t9 == 1)
        goto LAB2;

LAB3:    t10 = (t0 + 3872);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 2U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 992U);
    t5 = xsi_signal_has_event(t1);
    if (t5 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB4;

LAB6:
LAB5:    t1 = (t0 + 3792);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_size_not_matching(2U, t8, 0);
    goto LAB3;

LAB4:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 2312U);
    t7 = *((char **)t2);
    t2 = (t0 + 6102);
    t16 = xsi_mem_cmp(t2, t7, 2U);
    if (t16 == 1)
        goto LAB11;

LAB14:    t11 = (t0 + 6104);
    t17 = xsi_mem_cmp(t11, t7, 2U);
    if (t17 == 1)
        goto LAB12;

LAB15:
LAB13:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 6106);
    t4 = (t0 + 3936);
    t7 = (t4 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 8U);
    xsi_driver_first_trans_fast_port(t4);

LAB10:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB7:    t2 = (t0 + 1032U);
    t4 = *((char **)t2);
    t9 = *((unsigned char *)t4);
    t15 = (t9 == (unsigned char)3);
    t3 = t15;
    goto LAB9;

LAB11:    xsi_set_current_line(59, ng0);
    t13 = (t0 + 1672U);
    t14 = *((char **)t13);
    t13 = (t0 + 6008U);
    t18 = (t0 + 1832U);
    t19 = *((char **)t18);
    t18 = (t0 + 6024U);
    t20 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t6, t14, t13, t19, t18);
    t21 = (t6 + 12U);
    t8 = *((unsigned int *)t21);
    t22 = (1U * t8);
    t23 = (8U != t22);
    if (t23 == 1)
        goto LAB17;

LAB18:    t24 = (t0 + 3936);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memcpy(t28, t20, 8U);
    xsi_driver_first_trans_fast_port(t24);
    goto LAB10;

LAB12:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 6008U);
    t4 = (t0 + 1832U);
    t7 = *((char **)t4);
    t4 = (t0 + 6024U);
    t10 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t6, t2, t1, t7, t4);
    t11 = (t6 + 12U);
    t8 = *((unsigned int *)t11);
    t22 = (1U * t8);
    t3 = (8U != t22);
    if (t3 == 1)
        goto LAB19;

LAB20:    t12 = (t0 + 3936);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t18 = (t14 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t10, 8U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB10;

LAB16:;
LAB17:    xsi_size_not_matching(8U, t22, 0);
    goto LAB18;

LAB19:    xsi_size_not_matching(8U, t22, 0);
    goto LAB20;

LAB21:    goto LAB5;

LAB22:    xsi_set_current_line(64, ng0);
    t4 = (t0 + 4000);
    t7 = (t4 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB21;

LAB23:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 6008U);
    t4 = (t0 + 6114);
    t10 = (t6 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 0;
    t11 = (t10 + 4U);
    *((int *)t11) = 7;
    t11 = (t10 + 8U);
    *((int *)t11) = 1;
    t16 = (7 - 0);
    t8 = (t16 * 1);
    t8 = (t8 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t8;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t4, t6);
    if (t3 != 0)
        goto LAB25;

LAB27:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 4000);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t7 = (t4 + 56U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB26:    goto LAB21;

LAB24:    xsi_set_current_line(70, ng0);
    goto LAB21;

LAB25:    xsi_set_current_line(66, ng0);
    t11 = (t0 + 4000);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t18 = *((char **)t14);
    *((unsigned char *)t18) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t11);
    goto LAB26;

}


extern void work_a_0832606739_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0832606739_3212880686_p_0};
	xsi_register_didat("work_a_0832606739_3212880686", "isim/TB_Proccessor_isim_beh.exe.sim/work/a_0832606739_3212880686.didat");
	xsi_register_executes(pe);
}
