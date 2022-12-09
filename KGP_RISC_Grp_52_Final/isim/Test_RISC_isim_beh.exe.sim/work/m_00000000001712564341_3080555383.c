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
static const char *ng0 = "C:/Users/Student/Desktop/KGP_RISC_Grp_52/Jump_Control.v";
static unsigned int ng1[] = {40U, 0U};
static int ng2[] = {1, 0};
static unsigned int ng3[] = {43U, 0U};
static unsigned int ng4[] = {32U, 0U};
static unsigned int ng5[] = {41U, 0U};
static unsigned int ng6[] = {42U, 0U};
static unsigned int ng7[] = {48U, 0U};
static unsigned int ng8[] = {49U, 0U};
static unsigned int ng9[] = {50U, 0U};
static int ng10[] = {0, 0};



static void Always_11_0(char *t0)
{
    char t6[8];
    char t30[8];
    char t61[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
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
    char *t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    int t45;
    int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    char *t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    char *t60;
    char *t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    char *t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    char *t77;
    char *t78;

LAB0:    t1 = (t0 + 3808U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(11, ng0);
    t2 = (t0 + 4128);
    *((int *)t2) = 1;
    t3 = (t0 + 3840);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(11, ng0);

LAB5:    xsi_set_current_line(12, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(14, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng3)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB16;

LAB13:    if (t18 != 0)
        goto LAB15;

LAB14:    *((unsigned int *)t6) = 1;

LAB16:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB17;

LAB18:    xsi_set_current_line(16, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB23;

LAB20:    if (t18 != 0)
        goto LAB22;

LAB21:    *((unsigned int *)t6) = 1;

LAB23:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB24;

LAB25:    xsi_set_current_line(18, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng5)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB30;

LAB27:    if (t18 != 0)
        goto LAB29;

LAB28:    *((unsigned int *)t6) = 1;

LAB30:    t8 = (t0 + 1528U);
    t21 = *((char **)t8);
    t23 = *((unsigned int *)t6);
    t24 = *((unsigned int *)t21);
    t25 = (t23 & t24);
    *((unsigned int *)t30) = t25;
    t8 = (t6 + 4);
    t22 = (t21 + 4);
    t28 = (t30 + 4);
    t26 = *((unsigned int *)t8);
    t27 = *((unsigned int *)t22);
    t31 = (t26 | t27);
    *((unsigned int *)t28) = t31;
    t32 = *((unsigned int *)t28);
    t33 = (t32 != 0);
    if (t33 == 1)
        goto LAB31;

LAB32:
LAB33:    t53 = (t30 + 4);
    t54 = *((unsigned int *)t53);
    t55 = (~(t54));
    t56 = *((unsigned int *)t30);
    t57 = (t56 & t55);
    t58 = (t57 != 0);
    if (t58 > 0)
        goto LAB34;

LAB35:    xsi_set_current_line(20, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng6)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB40;

LAB37:    if (t18 != 0)
        goto LAB39;

LAB38:    *((unsigned int *)t6) = 1;

LAB40:    t8 = (t0 + 1528U);
    t21 = *((char **)t8);
    memset(t30, 0, 8);
    t8 = (t21 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t21);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB44;

LAB42:    if (*((unsigned int *)t8) == 0)
        goto LAB41;

LAB43:    t22 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t22) = 1;

LAB44:    t28 = (t30 + 4);
    t29 = (t21 + 4);
    t31 = *((unsigned int *)t21);
    t32 = (~(t31));
    *((unsigned int *)t30) = t32;
    *((unsigned int *)t28) = 0;
    if (*((unsigned int *)t29) != 0)
        goto LAB46;

LAB45:    t38 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t38 & 1U);
    t39 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t39 & 1U);
    t40 = *((unsigned int *)t6);
    t41 = *((unsigned int *)t30);
    t42 = (t40 & t41);
    *((unsigned int *)t61) = t42;
    t36 = (t6 + 4);
    t53 = (t30 + 4);
    t59 = (t61 + 4);
    t43 = *((unsigned int *)t36);
    t44 = *((unsigned int *)t53);
    t47 = (t43 | t44);
    *((unsigned int *)t59) = t47;
    t48 = *((unsigned int *)t59);
    t49 = (t48 != 0);
    if (t49 == 1)
        goto LAB47;

LAB48:
LAB49:    t71 = (t61 + 4);
    t72 = *((unsigned int *)t71);
    t73 = (~(t72));
    t74 = *((unsigned int *)t61);
    t75 = (t74 & t73);
    t76 = (t75 != 0);
    if (t76 > 0)
        goto LAB50;

LAB51:    xsi_set_current_line(22, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng7)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB56;

LAB53:    if (t18 != 0)
        goto LAB55;

LAB54:    *((unsigned int *)t6) = 1;

LAB56:    t8 = (t0 + 1368U);
    t21 = *((char **)t8);
    t23 = *((unsigned int *)t6);
    t24 = *((unsigned int *)t21);
    t25 = (t23 & t24);
    *((unsigned int *)t30) = t25;
    t8 = (t6 + 4);
    t22 = (t21 + 4);
    t28 = (t30 + 4);
    t26 = *((unsigned int *)t8);
    t27 = *((unsigned int *)t22);
    t31 = (t26 | t27);
    *((unsigned int *)t28) = t31;
    t32 = *((unsigned int *)t28);
    t33 = (t32 != 0);
    if (t33 == 1)
        goto LAB57;

LAB58:
LAB59:    t53 = (t30 + 4);
    t54 = *((unsigned int *)t53);
    t55 = (~(t54));
    t56 = *((unsigned int *)t30);
    t57 = (t56 & t55);
    t58 = (t57 != 0);
    if (t58 > 0)
        goto LAB60;

LAB61:    xsi_set_current_line(24, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng8)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB66;

LAB63:    if (t18 != 0)
        goto LAB65;

LAB64:    *((unsigned int *)t6) = 1;

LAB66:    t8 = (t0 + 1208U);
    t21 = *((char **)t8);
    t23 = *((unsigned int *)t6);
    t24 = *((unsigned int *)t21);
    t25 = (t23 & t24);
    *((unsigned int *)t30) = t25;
    t8 = (t6 + 4);
    t22 = (t21 + 4);
    t28 = (t30 + 4);
    t26 = *((unsigned int *)t8);
    t27 = *((unsigned int *)t22);
    t31 = (t26 | t27);
    *((unsigned int *)t28) = t31;
    t32 = *((unsigned int *)t28);
    t33 = (t32 != 0);
    if (t33 == 1)
        goto LAB67;

LAB68:
LAB69:    t53 = (t30 + 4);
    t54 = *((unsigned int *)t53);
    t55 = (~(t54));
    t56 = *((unsigned int *)t30);
    t57 = (t56 & t55);
    t58 = (t57 != 0);
    if (t58 > 0)
        goto LAB70;

LAB71:    xsi_set_current_line(26, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng9)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB76;

LAB73:    if (t18 != 0)
        goto LAB75;

LAB74:    *((unsigned int *)t6) = 1;

LAB76:    t8 = (t0 + 1208U);
    t21 = *((char **)t8);
    memset(t30, 0, 8);
    t8 = (t21 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t21);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB80;

LAB78:    if (*((unsigned int *)t8) == 0)
        goto LAB77;

LAB79:    t22 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t22) = 1;

LAB80:    t28 = (t30 + 4);
    t29 = (t21 + 4);
    t31 = *((unsigned int *)t21);
    t32 = (~(t31));
    *((unsigned int *)t30) = t32;
    *((unsigned int *)t28) = 0;
    if (*((unsigned int *)t29) != 0)
        goto LAB82;

LAB81:    t38 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t38 & 1U);
    t39 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t39 & 1U);
    t40 = *((unsigned int *)t6);
    t41 = *((unsigned int *)t30);
    t42 = (t40 & t41);
    *((unsigned int *)t61) = t42;
    t36 = (t6 + 4);
    t53 = (t30 + 4);
    t59 = (t61 + 4);
    t43 = *((unsigned int *)t36);
    t44 = *((unsigned int *)t53);
    t47 = (t43 | t44);
    *((unsigned int *)t59) = t47;
    t48 = *((unsigned int *)t59);
    t49 = (t48 != 0);
    if (t49 == 1)
        goto LAB83;

LAB84:
LAB85:    t71 = (t61 + 4);
    t72 = *((unsigned int *)t71);
    t73 = (~(t72));
    t74 = *((unsigned int *)t61);
    t75 = (t74 & t73);
    t76 = (t75 != 0);
    if (t76 > 0)
        goto LAB86;

LAB87:    xsi_set_current_line(29, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB88:
LAB72:
LAB62:
LAB52:
LAB36:
LAB26:
LAB19:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(13, ng0);
    t28 = ((char*)((ng2)));
    t29 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 1, 0LL);
    goto LAB12;

LAB15:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB16;

LAB17:    xsi_set_current_line(15, ng0);
    t21 = ((char*)((ng2)));
    t22 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t22, t21, 0, 0, 1, 0LL);
    goto LAB19;

LAB22:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB23;

LAB24:    xsi_set_current_line(17, ng0);
    t21 = ((char*)((ng2)));
    t22 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t22, t21, 0, 0, 1, 0LL);
    goto LAB26;

LAB29:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB30;

LAB31:    t34 = *((unsigned int *)t30);
    t35 = *((unsigned int *)t28);
    *((unsigned int *)t30) = (t34 | t35);
    t29 = (t6 + 4);
    t36 = (t21 + 4);
    t37 = *((unsigned int *)t6);
    t38 = (~(t37));
    t39 = *((unsigned int *)t29);
    t40 = (~(t39));
    t41 = *((unsigned int *)t21);
    t42 = (~(t41));
    t43 = *((unsigned int *)t36);
    t44 = (~(t43));
    t45 = (t38 & t40);
    t46 = (t42 & t44);
    t47 = (~(t45));
    t48 = (~(t46));
    t49 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t49 & t47);
    t50 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t50 & t48);
    t51 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t51 & t47);
    t52 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t52 & t48);
    goto LAB33;

LAB34:    xsi_set_current_line(19, ng0);
    t59 = ((char*)((ng2)));
    t60 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t60, t59, 0, 0, 1, 0LL);
    goto LAB36;

LAB39:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB40;

LAB41:    *((unsigned int *)t30) = 1;
    goto LAB44;

LAB46:    t33 = *((unsigned int *)t30);
    t34 = *((unsigned int *)t29);
    *((unsigned int *)t30) = (t33 | t34);
    t35 = *((unsigned int *)t28);
    t37 = *((unsigned int *)t29);
    *((unsigned int *)t28) = (t35 | t37);
    goto LAB45;

LAB47:    t50 = *((unsigned int *)t61);
    t51 = *((unsigned int *)t59);
    *((unsigned int *)t61) = (t50 | t51);
    t60 = (t6 + 4);
    t62 = (t30 + 4);
    t52 = *((unsigned int *)t6);
    t54 = (~(t52));
    t55 = *((unsigned int *)t60);
    t56 = (~(t55));
    t57 = *((unsigned int *)t30);
    t58 = (~(t57));
    t63 = *((unsigned int *)t62);
    t64 = (~(t63));
    t45 = (t54 & t56);
    t46 = (t58 & t64);
    t65 = (~(t45));
    t66 = (~(t46));
    t67 = *((unsigned int *)t59);
    *((unsigned int *)t59) = (t67 & t65);
    t68 = *((unsigned int *)t59);
    *((unsigned int *)t59) = (t68 & t66);
    t69 = *((unsigned int *)t61);
    *((unsigned int *)t61) = (t69 & t65);
    t70 = *((unsigned int *)t61);
    *((unsigned int *)t61) = (t70 & t66);
    goto LAB49;

LAB50:    xsi_set_current_line(21, ng0);
    t77 = ((char*)((ng2)));
    t78 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t78, t77, 0, 0, 1, 0LL);
    goto LAB52;

LAB55:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB56;

LAB57:    t34 = *((unsigned int *)t30);
    t35 = *((unsigned int *)t28);
    *((unsigned int *)t30) = (t34 | t35);
    t29 = (t6 + 4);
    t36 = (t21 + 4);
    t37 = *((unsigned int *)t6);
    t38 = (~(t37));
    t39 = *((unsigned int *)t29);
    t40 = (~(t39));
    t41 = *((unsigned int *)t21);
    t42 = (~(t41));
    t43 = *((unsigned int *)t36);
    t44 = (~(t43));
    t45 = (t38 & t40);
    t46 = (t42 & t44);
    t47 = (~(t45));
    t48 = (~(t46));
    t49 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t49 & t47);
    t50 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t50 & t48);
    t51 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t51 & t47);
    t52 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t52 & t48);
    goto LAB59;

LAB60:    xsi_set_current_line(23, ng0);
    t59 = ((char*)((ng2)));
    t60 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t60, t59, 0, 0, 1, 0LL);
    goto LAB62;

LAB65:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB66;

LAB67:    t34 = *((unsigned int *)t30);
    t35 = *((unsigned int *)t28);
    *((unsigned int *)t30) = (t34 | t35);
    t29 = (t6 + 4);
    t36 = (t21 + 4);
    t37 = *((unsigned int *)t6);
    t38 = (~(t37));
    t39 = *((unsigned int *)t29);
    t40 = (~(t39));
    t41 = *((unsigned int *)t21);
    t42 = (~(t41));
    t43 = *((unsigned int *)t36);
    t44 = (~(t43));
    t45 = (t38 & t40);
    t46 = (t42 & t44);
    t47 = (~(t45));
    t48 = (~(t46));
    t49 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t49 & t47);
    t50 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t50 & t48);
    t51 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t51 & t47);
    t52 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t52 & t48);
    goto LAB69;

LAB70:    xsi_set_current_line(25, ng0);
    t59 = ((char*)((ng2)));
    t60 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t60, t59, 0, 0, 1, 0LL);
    goto LAB72;

LAB75:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB76;

LAB77:    *((unsigned int *)t30) = 1;
    goto LAB80;

LAB82:    t33 = *((unsigned int *)t30);
    t34 = *((unsigned int *)t29);
    *((unsigned int *)t30) = (t33 | t34);
    t35 = *((unsigned int *)t28);
    t37 = *((unsigned int *)t29);
    *((unsigned int *)t28) = (t35 | t37);
    goto LAB81;

LAB83:    t50 = *((unsigned int *)t61);
    t51 = *((unsigned int *)t59);
    *((unsigned int *)t61) = (t50 | t51);
    t60 = (t6 + 4);
    t62 = (t30 + 4);
    t52 = *((unsigned int *)t6);
    t54 = (~(t52));
    t55 = *((unsigned int *)t60);
    t56 = (~(t55));
    t57 = *((unsigned int *)t30);
    t58 = (~(t57));
    t63 = *((unsigned int *)t62);
    t64 = (~(t63));
    t45 = (t54 & t56);
    t46 = (t58 & t64);
    t65 = (~(t45));
    t66 = (~(t46));
    t67 = *((unsigned int *)t59);
    *((unsigned int *)t59) = (t67 & t65);
    t68 = *((unsigned int *)t59);
    *((unsigned int *)t59) = (t68 & t66);
    t69 = *((unsigned int *)t61);
    *((unsigned int *)t61) = (t69 & t65);
    t70 = *((unsigned int *)t61);
    *((unsigned int *)t61) = (t70 & t66);
    goto LAB85;

LAB86:    xsi_set_current_line(27, ng0);
    t77 = ((char*)((ng2)));
    t78 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t78, t77, 0, 0, 1, 0LL);
    goto LAB88;

}


extern void work_m_00000000001712564341_3080555383_init()
{
	static char *pe[] = {(void *)Always_11_0};
	xsi_register_didat("work_m_00000000001712564341_3080555383", "isim/Test_RISC_isim_beh.exe.sim/work/m_00000000001712564341_3080555383.didat");
	xsi_register_executes(pe);
}
