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
static const char *ng0 = "C:/Users/mehrdad/Documents/xilinx/Processor/Proccessor.vhd";



static void work_a_1837504108_3212880686_p_0(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned char t21;
    char *t22;
    char *t23;
    unsigned char t24;
    unsigned char t25;
    char *t26;
    char *t27;
    unsigned char t28;
    unsigned int t29;
    char *t30;
    char *t31;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned char t44;
    unsigned char t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    char *t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;

LAB0:    xsi_set_current_line(147, ng0);
    t3 = (t0 + 3432U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:    t22 = (t0 + 3432U);
    t23 = *((char **)t22);
    t24 = *((unsigned char *)t23);
    t25 = (t24 == (unsigned char)3);
    if (t25 == 1)
        goto LAB19;

LAB20:    t21 = (unsigned char)0;

LAB21:    if (t21 != 0)
        goto LAB17;

LAB18:    t38 = (t0 + 3112U);
    t39 = *((char **)t38);
    t40 = (3 - 3);
    t41 = (t40 * -1);
    t42 = (1U * t41);
    t43 = (0 + t42);
    t38 = (t39 + t43);
    t44 = *((unsigned char *)t38);
    t45 = (t44 == (unsigned char)3);
    if (t45 != 0)
        goto LAB28;

LAB29:
LAB30:    t52 = (t0 + 9013);
    t54 = (t0 + 5152);
    t55 = (t54 + 56U);
    t56 = *((char **)t55);
    t57 = (t56 + 56U);
    t58 = *((char **)t57);
    memcpy(t58, t52, 8U);
    xsi_driver_first_trans_fast_port(t54);

LAB2:    t59 = (t0 + 5072);
    *((int *)t59) = 1;

LAB1:    return;
LAB3:    t14 = (t0 + 8997);
    t16 = (t0 + 5152);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t14, 8U);
    xsi_driver_first_trans_fast_port(t16);
    goto LAB2;

LAB5:    t8 = (t0 + 3592U);
    t9 = *((char **)t8);
    t8 = (t0 + 1832U);
    t10 = *((char **)t8);
    t11 = 1;
    if (8U == 8U)
        goto LAB11;

LAB12:    t11 = 0;

LAB13:    t1 = t11;
    goto LAB7;

LAB8:    t3 = (t0 + 3392U);
    t7 = xsi_signal_has_event(t3);
    t2 = t7;
    goto LAB10;

LAB11:    t12 = 0;

LAB14:    if (t12 < 8U)
        goto LAB15;
    else
        goto LAB13;

LAB15:    t8 = (t9 + t12);
    t13 = (t10 + t12);
    if (*((unsigned char *)t8) != *((unsigned char *)t13))
        goto LAB12;

LAB16:    t12 = (t12 + 1);
    goto LAB14;

LAB17:    t31 = (t0 + 9005);
    t33 = (t0 + 5152);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    memcpy(t37, t31, 8U);
    xsi_driver_first_trans_fast_port(t33);
    goto LAB2;

LAB19:    t22 = (t0 + 3592U);
    t26 = *((char **)t22);
    t22 = (t0 + 1832U);
    t27 = *((char **)t22);
    t28 = 1;
    if (8U == 8U)
        goto LAB22;

LAB23:    t28 = 0;

LAB24:    t21 = (!(t28));
    goto LAB21;

LAB22:    t29 = 0;

LAB25:    if (t29 < 8U)
        goto LAB26;
    else
        goto LAB24;

LAB26:    t22 = (t26 + t29);
    t30 = (t27 + t29);
    if (*((unsigned char *)t22) != *((unsigned char *)t30))
        goto LAB23;

LAB27:    t29 = (t29 + 1);
    goto LAB25;

LAB28:    t46 = (t0 + 2632U);
    t47 = *((char **)t46);
    t46 = (t0 + 5152);
    t48 = (t46 + 56U);
    t49 = *((char **)t48);
    t50 = (t49 + 56U);
    t51 = *((char **)t50);
    memcpy(t51, t47, 8U);
    xsi_driver_first_trans_fast_port(t46);
    goto LAB2;

LAB31:    goto LAB2;

}


extern void work_a_1837504108_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1837504108_3212880686_p_0};
	xsi_register_didat("work_a_1837504108_3212880686", "isim/TB_Proccessor_isim_beh.exe.sim/work/a_1837504108_3212880686.didat");
	xsi_register_executes(pe);
}
