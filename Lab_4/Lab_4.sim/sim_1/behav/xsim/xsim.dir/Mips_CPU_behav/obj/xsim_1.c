/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_21(char*, char *);
extern void execute_22(char*, char *);
extern void execute_23(char*, char *);
extern void execute_3862(char*, char *);
extern void execute_3863(char*, char *);
extern void execute_3200(char*, char *);
extern void execute_3201(char*, char *);
extern void execute_3202(char*, char *);
extern void execute_35(char*, char *);
extern void execute_3204(char*, char *);
extern void execute_3205(char*, char *);
extern void execute_3208(char*, char *);
extern void execute_3209(char*, char *);
extern void execute_3210(char*, char *);
extern void execute_3211(char*, char *);
extern void execute_3212(char*, char *);
extern void execute_3214(char*, char *);
extern void execute_3215(char*, char *);
extern void execute_3217(char*, char *);
extern void execute_3219(char*, char *);
extern void execute_3220(char*, char *);
extern void execute_3221(char*, char *);
extern void execute_3222(char*, char *);
extern void execute_3223(char*, char *);
extern void execute_3224(char*, char *);
extern void execute_3225(char*, char *);
extern void execute_3226(char*, char *);
extern void execute_3227(char*, char *);
extern void execute_3228(char*, char *);
extern void execute_3229(char*, char *);
extern void execute_3230(char*, char *);
extern void execute_3249(char*, char *);
extern void execute_3250(char*, char *);
extern void execute_3251(char*, char *);
extern void execute_3252(char*, char *);
extern void execute_3253(char*, char *);
extern void execute_3254(char*, char *);
extern void execute_3255(char*, char *);
extern void execute_3256(char*, char *);
extern void execute_3257(char*, char *);
extern void execute_3258(char*, char *);
extern void execute_3259(char*, char *);
extern void execute_3261(char*, char *);
extern void execute_3262(char*, char *);
extern void execute_3264(char*, char *);
extern void execute_3265(char*, char *);
extern void execute_3267(char*, char *);
extern void execute_3268(char*, char *);
extern void execute_3270(char*, char *);
extern void execute_3271(char*, char *);
extern void execute_3273(char*, char *);
extern void execute_3274(char*, char *);
extern void execute_3276(char*, char *);
extern void execute_3277(char*, char *);
extern void execute_3279(char*, char *);
extern void execute_3280(char*, char *);
extern void execute_3282(char*, char *);
extern void execute_3283(char*, char *);
extern void execute_3285(char*, char *);
extern void execute_3286(char*, char *);
extern void execute_3288(char*, char *);
extern void execute_3289(char*, char *);
extern void execute_3291(char*, char *);
extern void execute_3292(char*, char *);
extern void execute_3294(char*, char *);
extern void execute_3295(char*, char *);
extern void execute_3297(char*, char *);
extern void execute_3298(char*, char *);
extern void execute_3300(char*, char *);
extern void execute_3301(char*, char *);
extern void execute_3303(char*, char *);
extern void execute_3304(char*, char *);
extern void execute_3306(char*, char *);
extern void execute_3307(char*, char *);
extern void execute_3309(char*, char *);
extern void execute_3310(char*, char *);
extern void execute_3312(char*, char *);
extern void execute_3313(char*, char *);
extern void execute_3315(char*, char *);
extern void execute_3316(char*, char *);
extern void execute_3318(char*, char *);
extern void execute_3319(char*, char *);
extern void execute_3321(char*, char *);
extern void execute_3322(char*, char *);
extern void execute_3324(char*, char *);
extern void execute_3325(char*, char *);
extern void execute_3327(char*, char *);
extern void execute_3328(char*, char *);
extern void execute_3330(char*, char *);
extern void execute_3331(char*, char *);
extern void execute_3333(char*, char *);
extern void execute_3334(char*, char *);
extern void execute_3336(char*, char *);
extern void execute_3337(char*, char *);
extern void execute_3339(char*, char *);
extern void execute_3340(char*, char *);
extern void execute_3342(char*, char *);
extern void execute_3343(char*, char *);
extern void execute_3345(char*, char *);
extern void execute_3346(char*, char *);
extern void execute_3348(char*, char *);
extern void execute_3349(char*, char *);
extern void execute_3351(char*, char *);
extern void execute_3352(char*, char *);
extern void execute_3845(char*, char *);
extern void execute_3847(char*, char *);
extern void execute_3853(char*, char *);
extern void execute_3854(char*, char *);
extern void execute_3856(char*, char *);
extern void execute_3857(char*, char *);
extern void execute_3859(char*, char *);
extern void execute_3861(char*, char *);
extern void execute_3965(char*, char *);
extern void execute_4091(char*, char *);
extern void execute_3967(char*, char *);
extern void execute_3968(char*, char *);
extern void execute_3969(char*, char *);
extern void execute_3971(char*, char *);
extern void execute_3972(char*, char *);
extern void execute_3973(char*, char *);
extern void execute_3975(char*, char *);
extern void execute_3976(char*, char *);
extern void execute_3977(char*, char *);
extern void execute_3979(char*, char *);
extern void execute_3980(char*, char *);
extern void execute_3981(char*, char *);
extern void execute_3983(char*, char *);
extern void execute_3984(char*, char *);
extern void execute_3985(char*, char *);
extern void execute_3987(char*, char *);
extern void execute_3988(char*, char *);
extern void execute_3989(char*, char *);
extern void execute_3991(char*, char *);
extern void execute_3992(char*, char *);
extern void execute_3993(char*, char *);
extern void execute_3995(char*, char *);
extern void execute_3996(char*, char *);
extern void execute_3997(char*, char *);
extern void execute_3999(char*, char *);
extern void execute_4000(char*, char *);
extern void execute_4001(char*, char *);
extern void execute_4003(char*, char *);
extern void execute_4004(char*, char *);
extern void execute_4005(char*, char *);
extern void execute_4007(char*, char *);
extern void execute_4008(char*, char *);
extern void execute_4009(char*, char *);
extern void execute_4011(char*, char *);
extern void execute_4012(char*, char *);
extern void execute_4013(char*, char *);
extern void execute_4015(char*, char *);
extern void execute_4016(char*, char *);
extern void execute_4017(char*, char *);
extern void execute_4019(char*, char *);
extern void execute_4020(char*, char *);
extern void execute_4021(char*, char *);
extern void execute_4023(char*, char *);
extern void execute_4024(char*, char *);
extern void execute_4025(char*, char *);
extern void execute_4027(char*, char *);
extern void execute_4028(char*, char *);
extern void execute_4029(char*, char *);
extern void execute_4031(char*, char *);
extern void execute_4032(char*, char *);
extern void execute_4033(char*, char *);
extern void execute_4035(char*, char *);
extern void execute_4036(char*, char *);
extern void execute_4037(char*, char *);
extern void execute_4039(char*, char *);
extern void execute_4040(char*, char *);
extern void execute_4041(char*, char *);
extern void execute_4043(char*, char *);
extern void execute_4044(char*, char *);
extern void execute_4045(char*, char *);
extern void execute_4047(char*, char *);
extern void execute_4048(char*, char *);
extern void execute_4049(char*, char *);
extern void execute_4051(char*, char *);
extern void execute_4052(char*, char *);
extern void execute_4053(char*, char *);
extern void execute_4055(char*, char *);
extern void execute_4056(char*, char *);
extern void execute_4057(char*, char *);
extern void execute_4059(char*, char *);
extern void execute_4060(char*, char *);
extern void execute_4061(char*, char *);
extern void execute_4063(char*, char *);
extern void execute_4064(char*, char *);
extern void execute_4065(char*, char *);
extern void execute_4067(char*, char *);
extern void execute_4068(char*, char *);
extern void execute_4069(char*, char *);
extern void execute_4071(char*, char *);
extern void execute_4072(char*, char *);
extern void execute_4073(char*, char *);
extern void execute_4075(char*, char *);
extern void execute_4076(char*, char *);
extern void execute_4077(char*, char *);
extern void execute_4079(char*, char *);
extern void execute_4080(char*, char *);
extern void execute_4081(char*, char *);
extern void execute_4083(char*, char *);
extern void execute_4084(char*, char *);
extern void execute_4085(char*, char *);
extern void execute_4087(char*, char *);
extern void execute_4088(char*, char *);
extern void execute_4089(char*, char *);
extern void execute_4093(char*, char *);
extern void execute_4297(char*, char *);
extern void execute_4301(char*, char *);
extern void execute_4095(char*, char *);
extern void execute_4097(char*, char *);
extern void execute_4099(char*, char *);
extern void execute_4295(char*, char *);
extern void execute_4296(char*, char *);
extern void execute_4299(char*, char *);
extern void execute_4300(char*, char *);
extern void transaction_1(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[219] = {(funcp)execute_21, (funcp)execute_22, (funcp)execute_23, (funcp)execute_3862, (funcp)execute_3863, (funcp)execute_3200, (funcp)execute_3201, (funcp)execute_3202, (funcp)execute_35, (funcp)execute_3204, (funcp)execute_3205, (funcp)execute_3208, (funcp)execute_3209, (funcp)execute_3210, (funcp)execute_3211, (funcp)execute_3212, (funcp)execute_3214, (funcp)execute_3215, (funcp)execute_3217, (funcp)execute_3219, (funcp)execute_3220, (funcp)execute_3221, (funcp)execute_3222, (funcp)execute_3223, (funcp)execute_3224, (funcp)execute_3225, (funcp)execute_3226, (funcp)execute_3227, (funcp)execute_3228, (funcp)execute_3229, (funcp)execute_3230, (funcp)execute_3249, (funcp)execute_3250, (funcp)execute_3251, (funcp)execute_3252, (funcp)execute_3253, (funcp)execute_3254, (funcp)execute_3255, (funcp)execute_3256, (funcp)execute_3257, (funcp)execute_3258, (funcp)execute_3259, (funcp)execute_3261, (funcp)execute_3262, (funcp)execute_3264, (funcp)execute_3265, (funcp)execute_3267, (funcp)execute_3268, (funcp)execute_3270, (funcp)execute_3271, (funcp)execute_3273, (funcp)execute_3274, (funcp)execute_3276, (funcp)execute_3277, (funcp)execute_3279, (funcp)execute_3280, (funcp)execute_3282, (funcp)execute_3283, (funcp)execute_3285, (funcp)execute_3286, (funcp)execute_3288, (funcp)execute_3289, (funcp)execute_3291, (funcp)execute_3292, (funcp)execute_3294, (funcp)execute_3295, (funcp)execute_3297, (funcp)execute_3298, (funcp)execute_3300, (funcp)execute_3301, (funcp)execute_3303, (funcp)execute_3304, (funcp)execute_3306, (funcp)execute_3307, (funcp)execute_3309, (funcp)execute_3310, (funcp)execute_3312, (funcp)execute_3313, (funcp)execute_3315, (funcp)execute_3316, (funcp)execute_3318, (funcp)execute_3319, (funcp)execute_3321, (funcp)execute_3322, (funcp)execute_3324, (funcp)execute_3325, (funcp)execute_3327, (funcp)execute_3328, (funcp)execute_3330, (funcp)execute_3331, (funcp)execute_3333, (funcp)execute_3334, (funcp)execute_3336, (funcp)execute_3337, (funcp)execute_3339, (funcp)execute_3340, (funcp)execute_3342, (funcp)execute_3343, (funcp)execute_3345, (funcp)execute_3346, (funcp)execute_3348, (funcp)execute_3349, (funcp)execute_3351, (funcp)execute_3352, (funcp)execute_3845, (funcp)execute_3847, (funcp)execute_3853, (funcp)execute_3854, (funcp)execute_3856, (funcp)execute_3857, (funcp)execute_3859, (funcp)execute_3861, (funcp)execute_3965, (funcp)execute_4091, (funcp)execute_3967, (funcp)execute_3968, (funcp)execute_3969, (funcp)execute_3971, (funcp)execute_3972, (funcp)execute_3973, (funcp)execute_3975, (funcp)execute_3976, (funcp)execute_3977, (funcp)execute_3979, (funcp)execute_3980, (funcp)execute_3981, (funcp)execute_3983, (funcp)execute_3984, (funcp)execute_3985, (funcp)execute_3987, (funcp)execute_3988, (funcp)execute_3989, (funcp)execute_3991, (funcp)execute_3992, (funcp)execute_3993, (funcp)execute_3995, (funcp)execute_3996, (funcp)execute_3997, (funcp)execute_3999, (funcp)execute_4000, (funcp)execute_4001, (funcp)execute_4003, (funcp)execute_4004, (funcp)execute_4005, (funcp)execute_4007, (funcp)execute_4008, (funcp)execute_4009, (funcp)execute_4011, (funcp)execute_4012, (funcp)execute_4013, (funcp)execute_4015, (funcp)execute_4016, (funcp)execute_4017, (funcp)execute_4019, (funcp)execute_4020, (funcp)execute_4021, (funcp)execute_4023, (funcp)execute_4024, (funcp)execute_4025, (funcp)execute_4027, (funcp)execute_4028, (funcp)execute_4029, (funcp)execute_4031, (funcp)execute_4032, (funcp)execute_4033, (funcp)execute_4035, (funcp)execute_4036, (funcp)execute_4037, (funcp)execute_4039, (funcp)execute_4040, (funcp)execute_4041, (funcp)execute_4043, (funcp)execute_4044, (funcp)execute_4045, (funcp)execute_4047, (funcp)execute_4048, (funcp)execute_4049, (funcp)execute_4051, (funcp)execute_4052, (funcp)execute_4053, (funcp)execute_4055, (funcp)execute_4056, (funcp)execute_4057, (funcp)execute_4059, (funcp)execute_4060, (funcp)execute_4061, (funcp)execute_4063, (funcp)execute_4064, (funcp)execute_4065, (funcp)execute_4067, (funcp)execute_4068, (funcp)execute_4069, (funcp)execute_4071, (funcp)execute_4072, (funcp)execute_4073, (funcp)execute_4075, (funcp)execute_4076, (funcp)execute_4077, (funcp)execute_4079, (funcp)execute_4080, (funcp)execute_4081, (funcp)execute_4083, (funcp)execute_4084, (funcp)execute_4085, (funcp)execute_4087, (funcp)execute_4088, (funcp)execute_4089, (funcp)execute_4093, (funcp)execute_4297, (funcp)execute_4301, (funcp)execute_4095, (funcp)execute_4097, (funcp)execute_4099, (funcp)execute_4295, (funcp)execute_4296, (funcp)execute_4299, (funcp)execute_4300, (funcp)transaction_1, (funcp)vhdl_transfunc_eventcallback};
const int NumRelocateId= 219;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/Mips_CPU_behav/xsim.reloc",  (void **)funcTab, 219);
	iki_vhdl_file_variable_register(dp + 99760);
	iki_vhdl_file_variable_register(dp + 99816);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/Mips_CPU_behav/xsim.reloc");
}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/Mips_CPU_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/Mips_CPU_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/Mips_CPU_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/Mips_CPU_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
