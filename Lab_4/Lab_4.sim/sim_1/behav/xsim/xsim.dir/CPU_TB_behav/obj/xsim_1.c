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
extern void execute_2(char*, char *);
extern void execute_3(char*, char *);
extern void execute_4(char*, char *);
extern void execute_5(char*, char *);
extern void execute_6(char*, char *);
extern void execute_7(char*, char *);
extern void execute_8(char*, char *);
extern void execute_9(char*, char *);
extern void execute_44(char*, char *);
extern void execute_45(char*, char *);
extern void execute_46(char*, char *);
extern void execute_47(char*, char *);
extern void execute_48(char*, char *);
extern void execute_50(char*, char *);
extern void execute_51(char*, char *);
extern void execute_52(char*, char *);
extern void execute_3878(char*, char *);
extern void execute_3879(char*, char *);
extern void execute_3229(char*, char *);
extern void execute_3230(char*, char *);
extern void execute_3231(char*, char *);
extern void execute_64(char*, char *);
extern void execute_3233(char*, char *);
extern void execute_3234(char*, char *);
extern void execute_3237(char*, char *);
extern void execute_3238(char*, char *);
extern void execute_3239(char*, char *);
extern void execute_3240(char*, char *);
extern void execute_3241(char*, char *);
extern void execute_3243(char*, char *);
extern void execute_3244(char*, char *);
extern void execute_3246(char*, char *);
extern void execute_3248(char*, char *);
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
extern void execute_3265(char*, char *);
extern void execute_3266(char*, char *);
extern void execute_3267(char*, char *);
extern void execute_3268(char*, char *);
extern void execute_3269(char*, char *);
extern void execute_3270(char*, char *);
extern void execute_3271(char*, char *);
extern void execute_3272(char*, char *);
extern void execute_3273(char*, char *);
extern void execute_3274(char*, char *);
extern void execute_3275(char*, char *);
extern void execute_3277(char*, char *);
extern void execute_3278(char*, char *);
extern void execute_3280(char*, char *);
extern void execute_3281(char*, char *);
extern void execute_3283(char*, char *);
extern void execute_3284(char*, char *);
extern void execute_3286(char*, char *);
extern void execute_3287(char*, char *);
extern void execute_3289(char*, char *);
extern void execute_3290(char*, char *);
extern void execute_3292(char*, char *);
extern void execute_3293(char*, char *);
extern void execute_3295(char*, char *);
extern void execute_3296(char*, char *);
extern void execute_3298(char*, char *);
extern void execute_3299(char*, char *);
extern void execute_3301(char*, char *);
extern void execute_3302(char*, char *);
extern void execute_3304(char*, char *);
extern void execute_3305(char*, char *);
extern void execute_3307(char*, char *);
extern void execute_3308(char*, char *);
extern void execute_3310(char*, char *);
extern void execute_3311(char*, char *);
extern void execute_3313(char*, char *);
extern void execute_3314(char*, char *);
extern void execute_3316(char*, char *);
extern void execute_3317(char*, char *);
extern void execute_3319(char*, char *);
extern void execute_3320(char*, char *);
extern void execute_3322(char*, char *);
extern void execute_3323(char*, char *);
extern void execute_3325(char*, char *);
extern void execute_3326(char*, char *);
extern void execute_3328(char*, char *);
extern void execute_3329(char*, char *);
extern void execute_3331(char*, char *);
extern void execute_3332(char*, char *);
extern void execute_3334(char*, char *);
extern void execute_3335(char*, char *);
extern void execute_3337(char*, char *);
extern void execute_3338(char*, char *);
extern void execute_3340(char*, char *);
extern void execute_3341(char*, char *);
extern void execute_3343(char*, char *);
extern void execute_3344(char*, char *);
extern void execute_3346(char*, char *);
extern void execute_3347(char*, char *);
extern void execute_3349(char*, char *);
extern void execute_3350(char*, char *);
extern void execute_3352(char*, char *);
extern void execute_3353(char*, char *);
extern void execute_3355(char*, char *);
extern void execute_3356(char*, char *);
extern void execute_3358(char*, char *);
extern void execute_3359(char*, char *);
extern void execute_3361(char*, char *);
extern void execute_3362(char*, char *);
extern void execute_3364(char*, char *);
extern void execute_3365(char*, char *);
extern void execute_3367(char*, char *);
extern void execute_3368(char*, char *);
extern void execute_3861(char*, char *);
extern void execute_3863(char*, char *);
extern void execute_3869(char*, char *);
extern void execute_3870(char*, char *);
extern void execute_3872(char*, char *);
extern void execute_3873(char*, char *);
extern void execute_3875(char*, char *);
extern void execute_3877(char*, char *);
extern void execute_3981(char*, char *);
extern void execute_4107(char*, char *);
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
extern void execute_4091(char*, char *);
extern void execute_4092(char*, char *);
extern void execute_4093(char*, char *);
extern void execute_4095(char*, char *);
extern void execute_4096(char*, char *);
extern void execute_4097(char*, char *);
extern void execute_4099(char*, char *);
extern void execute_4100(char*, char *);
extern void execute_4101(char*, char *);
extern void execute_4103(char*, char *);
extern void execute_4104(char*, char *);
extern void execute_4105(char*, char *);
extern void execute_4109(char*, char *);
extern void execute_4313(char*, char *);
extern void execute_4317(char*, char *);
extern void execute_4111(char*, char *);
extern void execute_4113(char*, char *);
extern void execute_4115(char*, char *);
extern void execute_4311(char*, char *);
extern void execute_4312(char*, char *);
extern void execute_4315(char*, char *);
extern void execute_4316(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_33(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_40(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[234] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_4, (funcp)execute_5, (funcp)execute_6, (funcp)execute_7, (funcp)execute_8, (funcp)execute_9, (funcp)execute_44, (funcp)execute_45, (funcp)execute_46, (funcp)execute_47, (funcp)execute_48, (funcp)execute_50, (funcp)execute_51, (funcp)execute_52, (funcp)execute_3878, (funcp)execute_3879, (funcp)execute_3229, (funcp)execute_3230, (funcp)execute_3231, (funcp)execute_64, (funcp)execute_3233, (funcp)execute_3234, (funcp)execute_3237, (funcp)execute_3238, (funcp)execute_3239, (funcp)execute_3240, (funcp)execute_3241, (funcp)execute_3243, (funcp)execute_3244, (funcp)execute_3246, (funcp)execute_3248, (funcp)execute_3249, (funcp)execute_3250, (funcp)execute_3251, (funcp)execute_3252, (funcp)execute_3253, (funcp)execute_3254, (funcp)execute_3255, (funcp)execute_3256, (funcp)execute_3257, (funcp)execute_3258, (funcp)execute_3259, (funcp)execute_3265, (funcp)execute_3266, (funcp)execute_3267, (funcp)execute_3268, (funcp)execute_3269, (funcp)execute_3270, (funcp)execute_3271, (funcp)execute_3272, (funcp)execute_3273, (funcp)execute_3274, (funcp)execute_3275, (funcp)execute_3277, (funcp)execute_3278, (funcp)execute_3280, (funcp)execute_3281, (funcp)execute_3283, (funcp)execute_3284, (funcp)execute_3286, (funcp)execute_3287, (funcp)execute_3289, (funcp)execute_3290, (funcp)execute_3292, (funcp)execute_3293, (funcp)execute_3295, (funcp)execute_3296, (funcp)execute_3298, (funcp)execute_3299, (funcp)execute_3301, (funcp)execute_3302, (funcp)execute_3304, (funcp)execute_3305, (funcp)execute_3307, (funcp)execute_3308, (funcp)execute_3310, (funcp)execute_3311, (funcp)execute_3313, (funcp)execute_3314, (funcp)execute_3316, (funcp)execute_3317, (funcp)execute_3319, (funcp)execute_3320, (funcp)execute_3322, (funcp)execute_3323, (funcp)execute_3325, (funcp)execute_3326, (funcp)execute_3328, (funcp)execute_3329, (funcp)execute_3331, (funcp)execute_3332, (funcp)execute_3334, (funcp)execute_3335, (funcp)execute_3337, (funcp)execute_3338, (funcp)execute_3340, (funcp)execute_3341, (funcp)execute_3343, (funcp)execute_3344, (funcp)execute_3346, (funcp)execute_3347, (funcp)execute_3349, (funcp)execute_3350, (funcp)execute_3352, (funcp)execute_3353, (funcp)execute_3355, (funcp)execute_3356, (funcp)execute_3358, (funcp)execute_3359, (funcp)execute_3361, (funcp)execute_3362, (funcp)execute_3364, (funcp)execute_3365, (funcp)execute_3367, (funcp)execute_3368, (funcp)execute_3861, (funcp)execute_3863, (funcp)execute_3869, (funcp)execute_3870, (funcp)execute_3872, (funcp)execute_3873, (funcp)execute_3875, (funcp)execute_3877, (funcp)execute_3981, (funcp)execute_4107, (funcp)execute_3983, (funcp)execute_3984, (funcp)execute_3985, (funcp)execute_3987, (funcp)execute_3988, (funcp)execute_3989, (funcp)execute_3991, (funcp)execute_3992, (funcp)execute_3993, (funcp)execute_3995, (funcp)execute_3996, (funcp)execute_3997, (funcp)execute_3999, (funcp)execute_4000, (funcp)execute_4001, (funcp)execute_4003, (funcp)execute_4004, (funcp)execute_4005, (funcp)execute_4007, (funcp)execute_4008, (funcp)execute_4009, (funcp)execute_4011, (funcp)execute_4012, (funcp)execute_4013, (funcp)execute_4015, (funcp)execute_4016, (funcp)execute_4017, (funcp)execute_4019, (funcp)execute_4020, (funcp)execute_4021, (funcp)execute_4023, (funcp)execute_4024, (funcp)execute_4025, (funcp)execute_4027, (funcp)execute_4028, (funcp)execute_4029, (funcp)execute_4031, (funcp)execute_4032, (funcp)execute_4033, (funcp)execute_4035, (funcp)execute_4036, (funcp)execute_4037, (funcp)execute_4039, (funcp)execute_4040, (funcp)execute_4041, (funcp)execute_4043, (funcp)execute_4044, (funcp)execute_4045, (funcp)execute_4047, (funcp)execute_4048, (funcp)execute_4049, (funcp)execute_4051, (funcp)execute_4052, (funcp)execute_4053, (funcp)execute_4055, (funcp)execute_4056, (funcp)execute_4057, (funcp)execute_4059, (funcp)execute_4060, (funcp)execute_4061, (funcp)execute_4063, (funcp)execute_4064, (funcp)execute_4065, (funcp)execute_4067, (funcp)execute_4068, (funcp)execute_4069, (funcp)execute_4071, (funcp)execute_4072, (funcp)execute_4073, (funcp)execute_4075, (funcp)execute_4076, (funcp)execute_4077, (funcp)execute_4079, (funcp)execute_4080, (funcp)execute_4081, (funcp)execute_4083, (funcp)execute_4084, (funcp)execute_4085, (funcp)execute_4087, (funcp)execute_4088, (funcp)execute_4089, (funcp)execute_4091, (funcp)execute_4092, (funcp)execute_4093, (funcp)execute_4095, (funcp)execute_4096, (funcp)execute_4097, (funcp)execute_4099, (funcp)execute_4100, (funcp)execute_4101, (funcp)execute_4103, (funcp)execute_4104, (funcp)execute_4105, (funcp)execute_4109, (funcp)execute_4313, (funcp)execute_4317, (funcp)execute_4111, (funcp)execute_4113, (funcp)execute_4115, (funcp)execute_4311, (funcp)execute_4312, (funcp)execute_4315, (funcp)execute_4316, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_33, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_40};
const int NumRelocateId= 234;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/CPU_TB_behav/xsim.reloc",  (void **)funcTab, 234);
	iki_vhdl_file_variable_register(dp + 107016);
	iki_vhdl_file_variable_register(dp + 107072);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/CPU_TB_behav/xsim.reloc");
}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/CPU_TB_behav/xsim.reloc");
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
    iki_set_sv_type_file_path_name("xsim.dir/CPU_TB_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/CPU_TB_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/CPU_TB_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
