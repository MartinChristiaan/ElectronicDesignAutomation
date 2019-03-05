/* Provide Declarations */
#include <stdarg.h>
#include <setjmp.h>
#include <limits.h>
#ifdef NEED_CBEAPINT
#include <autopilot_cbe.h>
#else
#define aesl_fopen fopen
#define aesl_freopen freopen
#define aesl_tmpfile tmpfile
#endif
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>
#ifdef __STRICT_ANSI__
#define inline __inline__
#define typeof __typeof__ 
#endif
#define __isoc99_fscanf fscanf
#define __isoc99_sscanf sscanf
#undef ferror
#undef feof
/* get a declaration for alloca */
#if defined(__CYGWIN__) || defined(__MINGW32__)
#define  alloca(x) __builtin_alloca((x))
#define _alloca(x) __builtin_alloca((x))
#elif defined(__APPLE__)
extern void *__builtin_alloca(unsigned long);
#define alloca(x) __builtin_alloca(x)
#define longjmp _longjmp
#define setjmp _setjmp
#elif defined(__sun__)
#if defined(__sparcv9)
extern void *__builtin_alloca(unsigned long);
#else
extern void *__builtin_alloca(unsigned int);
#endif
#define alloca(x) __builtin_alloca(x)
#elif defined(__FreeBSD__) || defined(__NetBSD__) || defined(__OpenBSD__) || defined(__DragonFly__) || defined(__arm__)
#define alloca(x) __builtin_alloca(x)
#elif defined(_MSC_VER)
#define inline _inline
#define alloca(x) _alloca(x)
#else
#include <alloca.h>
#endif

#ifndef __GNUC__  /* Can only support "linkonce" vars with GCC */
#define __attribute__(X)
#endif

#if defined(__GNUC__) && defined(__APPLE_CC__)
#define __EXTERNAL_WEAK__ __attribute__((weak_import))
#elif defined(__GNUC__)
#define __EXTERNAL_WEAK__ __attribute__((weak))
#else
#define __EXTERNAL_WEAK__
#endif

#if defined(__GNUC__) && (defined(__APPLE_CC__) || defined(__CYGWIN__) || defined(__MINGW32__))
#define __ATTRIBUTE_WEAK__
#elif defined(__GNUC__)
#define __ATTRIBUTE_WEAK__ __attribute__((weak))
#else
#define __ATTRIBUTE_WEAK__
#endif

#if defined(__GNUC__)
#define __HIDDEN__ __attribute__((visibility("hidden")))
#endif

#ifdef __GNUC__
#define LLVM_NAN(NanStr)   __builtin_nan(NanStr)   /* Double */
#define LLVM_NANF(NanStr)  __builtin_nanf(NanStr)  /* Float */
#define LLVM_NANS(NanStr)  __builtin_nans(NanStr)  /* Double */
#define LLVM_NANSF(NanStr) __builtin_nansf(NanStr) /* Float */
#define LLVM_INF           __builtin_inf()         /* Double */
#define LLVM_INFF          __builtin_inff()        /* Float */
#define LLVM_PREFETCH(addr,rw,locality) __builtin_prefetch(addr,rw,locality)
#define __ATTRIBUTE_CTOR__ __attribute__((constructor))
#define __ATTRIBUTE_DTOR__ __attribute__((destructor))
#define LLVM_ASM           __asm__
#else
#define LLVM_NAN(NanStr)   ((double)0.0)           /* Double */
#define LLVM_NANF(NanStr)  0.0F                    /* Float */
#define LLVM_NANS(NanStr)  ((double)0.0)           /* Double */
#define LLVM_NANSF(NanStr) 0.0F                    /* Float */
#define LLVM_INF           ((double)0.0)           /* Double */
#define LLVM_INFF          0.0F                    /* Float */
#define LLVM_PREFETCH(addr,rw,locality)            /* PREFETCH */
#define __ATTRIBUTE_CTOR__
#define __ATTRIBUTE_DTOR__
#define LLVM_ASM(X)
#endif

#if __GNUC__ < 4 /* Old GCC's, or compilers not GCC */ 
#define __builtin_stack_save() 0   /* not implemented */
#define __builtin_stack_restore(X) /* noop */
#endif

#if __GNUC__ && __LP64__ /* 128-bit integer types */
typedef int __attribute__((mode(TI))) llvmInt128;
typedef unsigned __attribute__((mode(TI))) llvmUInt128;
#endif

#define CODE_FOR_MAIN() /* Any target-specific code for main()*/

#ifndef __cplusplus
typedef unsigned char bool;
#endif


/* Support for floating point constants */
typedef unsigned long long ConstantDoubleTy;
typedef unsigned int        ConstantFloatTy;
typedef struct { unsigned long long f1; unsigned short f2; unsigned short pad[3]; } ConstantFP80Ty;
typedef struct { unsigned long long f1; unsigned long long f2; } ConstantFP128Ty;


/* Global Declarations */
/* Helper union for bitcasts */
typedef union {
  unsigned int Int32;
  unsigned long long Int64;
  float Float;
  double Double;
} llvmBitCastUnion;

/* Function Declarations */
double fmod(double, double);
float fmodf(float, float);
long double fmodl(long double, long double);
void img_conv_5x5( char *llvm_cbe_inptr,  char *llvm_cbe_outptr,  char *llvm_cbe_mask, signed int llvm_cbe_shift);


/* Function Bodies */
static inline int llvm_fcmp_ord(double X, double Y) { return X == X && Y == Y; }
static inline int llvm_fcmp_uno(double X, double Y) { return X != X || Y != Y; }
static inline int llvm_fcmp_ueq(double X, double Y) { return X == Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_une(double X, double Y) { return X != Y; }
static inline int llvm_fcmp_ult(double X, double Y) { return X <  Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_ugt(double X, double Y) { return X >  Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_ule(double X, double Y) { return X <= Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_uge(double X, double Y) { return X >= Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_oeq(double X, double Y) { return X == Y ; }
static inline int llvm_fcmp_one(double X, double Y) { return X != Y && llvm_fcmp_ord(X, Y); }
static inline int llvm_fcmp_olt(double X, double Y) { return X <  Y ; }
static inline int llvm_fcmp_ogt(double X, double Y) { return X >  Y ; }
static inline int llvm_fcmp_ole(double X, double Y) { return X <= Y ; }
static inline int llvm_fcmp_oge(double X, double Y) { return X >= Y ; }

void img_conv_5x5( char *llvm_cbe_inptr,  char *llvm_cbe_outptr,  char *llvm_cbe_mask, signed int llvm_cbe_shift) {
  static  unsigned long long aesl_llvm_cbe_1_count = 0;
  static  unsigned long long aesl_llvm_cbe_2_count = 0;
  static  unsigned long long aesl_llvm_cbe_3_count = 0;
  static  unsigned long long aesl_llvm_cbe_4_count = 0;
  static  unsigned long long aesl_llvm_cbe_5_count = 0;
  static  unsigned long long aesl_llvm_cbe_6_count = 0;
  static  unsigned long long aesl_llvm_cbe_7_count = 0;
  static  unsigned long long aesl_llvm_cbe_8_count = 0;
  static  unsigned long long aesl_llvm_cbe_9_count = 0;
  static  unsigned long long aesl_llvm_cbe_10_count = 0;
  static  unsigned long long aesl_llvm_cbe_11_count = 0;
  static  unsigned long long aesl_llvm_cbe_12_count = 0;
  static  unsigned long long aesl_llvm_cbe_13_count = 0;
  static  unsigned long long aesl_llvm_cbe_14_count = 0;
  static  unsigned long long aesl_llvm_cbe_15_count = 0;
  static  unsigned long long aesl_llvm_cbe_16_count = 0;
  static  unsigned long long aesl_llvm_cbe_17_count = 0;
  static  unsigned long long aesl_llvm_cbe_18_count = 0;
  static  unsigned long long aesl_llvm_cbe_19_count = 0;
  static  unsigned long long aesl_llvm_cbe_20_count = 0;
  static  unsigned long long aesl_llvm_cbe_21_count = 0;
  static  unsigned long long aesl_llvm_cbe_22_count = 0;
  static  unsigned long long aesl_llvm_cbe__2e_rec_count = 0;
  unsigned long long llvm_cbe__2e_rec;
  unsigned long long llvm_cbe__2e_rec__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_23_count = 0;
   char *llvm_cbe_tmp__1;
  static  unsigned long long aesl_llvm_cbe__2e_sum_count = 0;
  unsigned long long llvm_cbe__2e_sum;
  static  unsigned long long aesl_llvm_cbe__2e_sum20_count = 0;
  unsigned long long llvm_cbe__2e_sum20;
  static  unsigned long long aesl_llvm_cbe__2e_sum21_count = 0;
  unsigned long long llvm_cbe__2e_sum21;
  static  unsigned long long aesl_llvm_cbe__2e_sum22_count = 0;
  unsigned long long llvm_cbe__2e_sum22;
  static  unsigned long long aesl_llvm_cbe_24_count = 0;
  static  unsigned long long aesl_llvm_cbe_25_count = 0;
  static  unsigned long long aesl_llvm_cbe_26_count = 0;
  static  unsigned long long aesl_llvm_cbe_27_count = 0;
  static  unsigned long long aesl_llvm_cbe_28_count = 0;
  static  unsigned long long aesl_llvm_cbe_29_count = 0;
  static  unsigned long long aesl_llvm_cbe_30_count = 0;
  static  unsigned long long aesl_llvm_cbe_31_count = 0;
  static  unsigned long long aesl_llvm_cbe_32_count = 0;
  static  unsigned long long aesl_llvm_cbe_33_count = 0;
  static  unsigned long long aesl_llvm_cbe_34_count = 0;
  static  unsigned long long aesl_llvm_cbe_35_count = 0;
  static  unsigned long long aesl_llvm_cbe_36_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge16_count = 0;
  unsigned int llvm_cbe_storemerge16;
  unsigned int llvm_cbe_storemerge16__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_storemerge345_count = 0;
  unsigned int llvm_cbe_storemerge345;
  unsigned int llvm_cbe_storemerge345__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_37_count = 0;
  unsigned long long llvm_cbe_tmp__2;
  static  unsigned long long aesl_llvm_cbe__2e_sum23_count = 0;
  unsigned long long llvm_cbe__2e_sum23;
  static  unsigned long long aesl_llvm_cbe_38_count = 0;
   char *llvm_cbe_tmp__3;
  static  unsigned long long aesl_llvm_cbe_39_count = 0;
  unsigned char llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe__2e_sum24_count = 0;
  unsigned long long llvm_cbe__2e_sum24;
  static  unsigned long long aesl_llvm_cbe_40_count = 0;
   char *llvm_cbe_tmp__5;
  static  unsigned long long aesl_llvm_cbe_41_count = 0;
  unsigned char llvm_cbe_tmp__6;
  static  unsigned long long aesl_llvm_cbe__2e_sum25_count = 0;
  unsigned long long llvm_cbe__2e_sum25;
  static  unsigned long long aesl_llvm_cbe_42_count = 0;
   char *llvm_cbe_tmp__7;
  static  unsigned long long aesl_llvm_cbe_43_count = 0;
  unsigned char llvm_cbe_tmp__8;
  static  unsigned long long aesl_llvm_cbe__2e_sum26_count = 0;
  unsigned long long llvm_cbe__2e_sum26;
  static  unsigned long long aesl_llvm_cbe_44_count = 0;
   char *llvm_cbe_tmp__9;
  static  unsigned long long aesl_llvm_cbe_45_count = 0;
  unsigned char llvm_cbe_tmp__10;
  static  unsigned long long aesl_llvm_cbe__2e_sum27_count = 0;
  unsigned long long llvm_cbe__2e_sum27;
  static  unsigned long long aesl_llvm_cbe_46_count = 0;
   char *llvm_cbe_tmp__11;
  static  unsigned long long aesl_llvm_cbe_47_count = 0;
  unsigned char llvm_cbe_tmp__12;
  static  unsigned long long aesl_llvm_cbe_48_count = 0;
   char *llvm_cbe_tmp__13;
  static  unsigned long long aesl_llvm_cbe_49_count = 0;
  unsigned char llvm_cbe_tmp__14;
  static  unsigned long long aesl_llvm_cbe_50_count = 0;
  unsigned int llvm_cbe_tmp__15;
  static  unsigned long long aesl_llvm_cbe_51_count = 0;
  unsigned long long llvm_cbe_tmp__16;
  static  unsigned long long aesl_llvm_cbe_52_count = 0;
   char *llvm_cbe_tmp__17;
  static  unsigned long long aesl_llvm_cbe_53_count = 0;
  unsigned char llvm_cbe_tmp__18;
  static  unsigned long long aesl_llvm_cbe_54_count = 0;
  unsigned int llvm_cbe_tmp__19;
  static  unsigned long long aesl_llvm_cbe_55_count = 0;
  unsigned long long llvm_cbe_tmp__20;
  static  unsigned long long aesl_llvm_cbe_56_count = 0;
   char *llvm_cbe_tmp__21;
  static  unsigned long long aesl_llvm_cbe_57_count = 0;
  unsigned char llvm_cbe_tmp__22;
  static  unsigned long long aesl_llvm_cbe_58_count = 0;
  unsigned int llvm_cbe_tmp__23;
  static  unsigned long long aesl_llvm_cbe_59_count = 0;
  unsigned long long llvm_cbe_tmp__24;
  static  unsigned long long aesl_llvm_cbe_60_count = 0;
   char *llvm_cbe_tmp__25;
  static  unsigned long long aesl_llvm_cbe_61_count = 0;
  unsigned char llvm_cbe_tmp__26;
  static  unsigned long long aesl_llvm_cbe_62_count = 0;
  unsigned int llvm_cbe_tmp__27;
  static  unsigned long long aesl_llvm_cbe_63_count = 0;
  unsigned long long llvm_cbe_tmp__28;
  static  unsigned long long aesl_llvm_cbe_64_count = 0;
   char *llvm_cbe_tmp__29;
  static  unsigned long long aesl_llvm_cbe_65_count = 0;
  unsigned char llvm_cbe_tmp__30;
  static  unsigned long long aesl_llvm_cbe_66_count = 0;
  unsigned int llvm_cbe_tmp__31;
  static  unsigned long long aesl_llvm_cbe_67_count = 0;
  unsigned int llvm_cbe_tmp__32;
  static  unsigned long long aesl_llvm_cbe_68_count = 0;
  unsigned int llvm_cbe_tmp__33;
  static  unsigned long long aesl_llvm_cbe_69_count = 0;
  static  unsigned long long aesl_llvm_cbe_70_count = 0;
  static  unsigned long long aesl_llvm_cbe_71_count = 0;
  unsigned int llvm_cbe_tmp__34;
  static  unsigned long long aesl_llvm_cbe_72_count = 0;
  unsigned int llvm_cbe_tmp__35;
  static  unsigned long long aesl_llvm_cbe_73_count = 0;
  unsigned int llvm_cbe_tmp__36;
  static  unsigned long long aesl_llvm_cbe_74_count = 0;
  static  unsigned long long aesl_llvm_cbe_75_count = 0;
  static  unsigned long long aesl_llvm_cbe_76_count = 0;
  unsigned int llvm_cbe_tmp__37;
  static  unsigned long long aesl_llvm_cbe_77_count = 0;
  unsigned int llvm_cbe_tmp__38;
  static  unsigned long long aesl_llvm_cbe_78_count = 0;
  unsigned int llvm_cbe_tmp__39;
  static  unsigned long long aesl_llvm_cbe_79_count = 0;
  static  unsigned long long aesl_llvm_cbe_80_count = 0;
  static  unsigned long long aesl_llvm_cbe_81_count = 0;
  unsigned int llvm_cbe_tmp__40;
  static  unsigned long long aesl_llvm_cbe_82_count = 0;
  unsigned int llvm_cbe_tmp__41;
  static  unsigned long long aesl_llvm_cbe_83_count = 0;
  unsigned int llvm_cbe_tmp__42;
  static  unsigned long long aesl_llvm_cbe_84_count = 0;
  static  unsigned long long aesl_llvm_cbe_85_count = 0;
  static  unsigned long long aesl_llvm_cbe_86_count = 0;
  unsigned int llvm_cbe_tmp__43;
  static  unsigned long long aesl_llvm_cbe_87_count = 0;
  unsigned int llvm_cbe_tmp__44;
  static  unsigned long long aesl_llvm_cbe_88_count = 0;
  unsigned int llvm_cbe_tmp__45;
  static  unsigned long long aesl_llvm_cbe_89_count = 0;
  static  unsigned long long aesl_llvm_cbe_90_count = 0;
  static  unsigned long long aesl_llvm_cbe_91_count = 0;
  unsigned int llvm_cbe_tmp__46;
  static  unsigned long long aesl_llvm_cbe_92_count = 0;
  unsigned int llvm_cbe_tmp__47;
  static  unsigned long long aesl_llvm_cbe_93_count = 0;
  unsigned int llvm_cbe_tmp__48;
  static  unsigned long long aesl_llvm_cbe_94_count = 0;
  unsigned int llvm_cbe_tmp__49;
  static  unsigned long long aesl_llvm_cbe_95_count = 0;
  unsigned int llvm_cbe_tmp__50;
  static  unsigned long long aesl_llvm_cbe_96_count = 0;
  static  unsigned long long aesl_llvm_cbe_97_count = 0;
  static  unsigned long long aesl_llvm_cbe_98_count = 0;
  static  unsigned long long aesl_llvm_cbe_99_count = 0;
  static  unsigned long long aesl_llvm_cbe_100_count = 0;
  static  unsigned long long aesl_llvm_cbe_101_count = 0;
  static  unsigned long long aesl_llvm_cbe_102_count = 0;
  unsigned int llvm_cbe_tmp__51;
  static  unsigned long long aesl_llvm_cbe_103_count = 0;
  static  unsigned long long aesl_llvm_cbe_104_count = 0;
  static  unsigned long long aesl_llvm_cbe_105_count = 0;
  static  unsigned long long aesl_llvm_cbe_106_count = 0;
  static  unsigned long long aesl_llvm_cbe_107_count = 0;
  static  unsigned long long aesl_llvm_cbe_108_count = 0;
  static  unsigned long long aesl_llvm_cbe_109_count = 0;
  static  unsigned long long aesl_llvm_cbe_110_count = 0;
  static  unsigned long long aesl_llvm_cbe_111_count = 0;
  static  unsigned long long aesl_llvm_cbe_112_count = 0;
  static  unsigned long long aesl_llvm_cbe_113_count = 0;
  static  unsigned long long aesl_llvm_cbe_114_count = 0;
  static  unsigned long long aesl_llvm_cbe_115_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_116_count = 0;
  static  unsigned long long aesl_llvm_cbe__2e_rec8_count = 0;
  unsigned long long llvm_cbe__2e_rec8;
  static  unsigned long long aesl_llvm_cbe_117_count = 0;
  unsigned int llvm_cbe_tmp__52;
  static  unsigned long long aesl_llvm_cbe_118_count = 0;
  static  unsigned long long aesl_llvm_cbe_119_count = 0;
  static  unsigned long long aesl_llvm_cbe__2e__count = 0;
  unsigned int llvm_cbe__2e_;
  static  unsigned long long aesl_llvm_cbe_120_count = 0;
  static  unsigned long long aesl_llvm_cbe_121_count = 0;
  static  unsigned long long aesl_llvm_cbe_122_count = 0;
  unsigned char llvm_cbe_tmp__53;
  static  unsigned long long aesl_llvm_cbe_123_count = 0;
  unsigned char llvm_cbe_tmp__54;
  static  unsigned long long aesl_llvm_cbe_124_count = 0;
  static  unsigned long long aesl_llvm_cbe_lftr_2e_wideiv_count = 0;
  unsigned int llvm_cbe_lftr_2e_wideiv;
  static  unsigned long long aesl_llvm_cbe_exitcond19_count = 0;
  static  unsigned long long aesl_llvm_cbe_125_count = 0;
  static  unsigned long long aesl_llvm_cbe_126_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @img_conv_5x5\n");
  llvm_cbe__2e_rec__PHI_TEMPORARY = (unsigned long long )0ull;   /* for PHI node */
  goto llvm_cbe__2e_preheader;

  do {     /* Syntactic loop '.preheader' to make GCC happy */
llvm_cbe__2e_preheader:
if (AESL_DEBUG_TRACE)
printf("\n  %%.rec = phi i64 [ 0, %%0 ], [ %%.rec8, %%53  for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe__2e_rec_count);
  llvm_cbe__2e_rec = (unsigned long long )llvm_cbe__2e_rec__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n.rec = 0x%I64X",llvm_cbe__2e_rec);
printf("\n = 0x%I64X",0ull);
printf("\n.rec8 = 0x%I64X",llvm_cbe__2e_rec8);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = getelementptr i8* %%outptr, i64 %%.re for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_23_count);
  llvm_cbe_tmp__1 = ( char *)(&llvm_cbe_outptr[(((signed long long )llvm_cbe__2e_rec))]);
if (AESL_DEBUG_TRACE) {
printf("\n.rec = 0x%I64X",((signed long long )llvm_cbe__2e_rec));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%.sum = add i64 %%.rec, 25 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe__2e_sum_count);
  llvm_cbe__2e_sum = (unsigned long long )((unsigned long long )(llvm_cbe__2e_rec&18446744073709551615ull)) + ((unsigned long long )(256ull&18446744073709551615ull));
if (AESL_DEBUG_TRACE)
printf("\n.sum = 0x%I64X\n", ((unsigned long long )(llvm_cbe__2e_sum&18446744073709551615ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%.sum20 = add i64 %%.rec, 19 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe__2e_sum20_count);
  llvm_cbe__2e_sum20 = (unsigned long long )((unsigned long long )(llvm_cbe__2e_rec&18446744073709551615ull)) + ((unsigned long long )(192ull&18446744073709551615ull));
if (AESL_DEBUG_TRACE)
printf("\n.sum20 = 0x%I64X\n", ((unsigned long long )(llvm_cbe__2e_sum20&18446744073709551615ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%.sum21 = add i64 %%.rec, 12 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe__2e_sum21_count);
  llvm_cbe__2e_sum21 = (unsigned long long )((unsigned long long )(llvm_cbe__2e_rec&18446744073709551615ull)) + ((unsigned long long )(128ull&18446744073709551615ull));
if (AESL_DEBUG_TRACE)
printf("\n.sum21 = 0x%I64X\n", ((unsigned long long )(llvm_cbe__2e_sum21&18446744073709551615ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%.sum22 = add i64 %%.rec, 6 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe__2e_sum22_count);
  llvm_cbe__2e_sum22 = (unsigned long long )((unsigned long long )(llvm_cbe__2e_rec&18446744073709551615ull)) + ((unsigned long long )(64ull&18446744073709551615ull));
if (AESL_DEBUG_TRACE)
printf("\n.sum22 = 0x%I64X\n", ((unsigned long long )(llvm_cbe__2e_sum22&18446744073709551615ull)));
  llvm_cbe_storemerge16__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  llvm_cbe_storemerge345__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__55;

llvm_cbe_tmp__56:
if (AESL_DEBUG_TRACE)
printf("\n  %%.rec8 = add i64 %%.rec, 1, !dbg !5 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe__2e_rec8_count);
  llvm_cbe__2e_rec8 = (unsigned long long )((unsigned long long )(llvm_cbe__2e_rec&18446744073709551615ull)) + ((unsigned long long )(1ull&18446744073709551615ull));
if (AESL_DEBUG_TRACE)
printf("\n.rec8 = 0x%I64X\n", ((unsigned long long )(llvm_cbe__2e_rec8&18446744073709551615ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%54 = ashr i32 %%51, %%shift, !dbg !4 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_117_count);
  llvm_cbe_tmp__52 = (unsigned int )((signed int )(((signed int )llvm_cbe_tmp__50) >> ((signed int )llvm_cbe_shift)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__52));
if (AESL_DEBUG_TRACE)
printf("\n  %%. = select i1 %%55, i32 0, i32 %%54, !dbg !7 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe__2e__count);
  llvm_cbe__2e_ = (unsigned int )(((((signed int )llvm_cbe_tmp__52) < ((signed int )0u))) ? ((unsigned int )0u) : ((unsigned int )llvm_cbe_tmp__52));
if (AESL_DEBUG_TRACE)
printf("\n. = 0x%X\n", llvm_cbe__2e_);
if (AESL_DEBUG_TRACE)
printf("\n  %%57 = trunc i32 %%. to i8, !dbg !5 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_122_count);
  llvm_cbe_tmp__53 = (unsigned char )((unsigned char )llvm_cbe__2e_&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__53);
if (AESL_DEBUG_TRACE)
printf("\n  %%58 = select i1 %%56, i8 -1, i8 %%57, !dbg !5 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_123_count);
  llvm_cbe_tmp__54 = (unsigned char )(((((signed int )llvm_cbe__2e_) > ((signed int )255u))) ? ((unsigned char )((unsigned char )-1)) : ((unsigned char )llvm_cbe_tmp__53));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__54);
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%58, i8* %%1, align 1, !dbg !5 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_124_count);
  *llvm_cbe_tmp__1 = llvm_cbe_tmp__54;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__54);
if (AESL_DEBUG_TRACE)
printf("\n  %%lftr.wideiv = trunc i64 %%.rec8 to i32, !dbg !5 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_lftr_2e_wideiv_count);
  llvm_cbe_lftr_2e_wideiv = (unsigned int )((unsigned int )llvm_cbe__2e_rec8&4294967295U);
if (AESL_DEBUG_TRACE)
printf("\nlftr.wideiv = 0x%X\n", llvm_cbe_lftr_2e_wideiv);
  if (((llvm_cbe_lftr_2e_wideiv&4294967295U) == (59u&4294967295U))) {
    goto llvm_cbe_tmp__57;
  } else {
    llvm_cbe__2e_rec__PHI_TEMPORARY = (unsigned long long )llvm_cbe__2e_rec8;   /* for PHI node */
    goto llvm_cbe__2e_preheader;
  }

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__55:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge16 = phi i32 [ 0, %%.preheader ], [ %%52, %%2  for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_storemerge16_count);
  llvm_cbe_storemerge16 = (unsigned int )llvm_cbe_storemerge16__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge16 = 0x%X",llvm_cbe_storemerge16);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__51);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge345 = phi i32 [ 0, %%.preheader ], [ %%51, %%2  for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_storemerge345_count);
  llvm_cbe_storemerge345 = (unsigned int )llvm_cbe_storemerge345__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge345 = 0x%X",llvm_cbe_storemerge345);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__50);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = sext i32 %%storemerge16 to i64, !dbg !5 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_37_count);
  llvm_cbe_tmp__2 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge16);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__2);
if (AESL_DEBUG_TRACE)
printf("\n  %%.sum23 = add i64 %%.rec, %%3, !dbg !5 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe__2e_sum23_count);
  llvm_cbe__2e_sum23 = (unsigned long long )((unsigned long long )(llvm_cbe__2e_rec&18446744073709551615ull)) + ((unsigned long long )(llvm_cbe_tmp__2&18446744073709551615ull));
if (AESL_DEBUG_TRACE)
printf("\n.sum23 = 0x%I64X\n", ((unsigned long long )(llvm_cbe__2e_sum23&18446744073709551615ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = getelementptr inbounds i8* %%inptr, i64 %%.sum23, !dbg !5 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_38_count);
  llvm_cbe_tmp__3 = ( char *)(&llvm_cbe_inptr[(((signed long long )llvm_cbe__2e_sum23))]);
if (AESL_DEBUG_TRACE) {
printf("\n.sum23 = 0x%I64X",((signed long long )llvm_cbe__2e_sum23));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = load i8* %%4, align 1, !dbg !5 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_39_count);
  llvm_cbe_tmp__4 = (unsigned char )*llvm_cbe_tmp__3;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__4);
if (AESL_DEBUG_TRACE)
printf("\n  %%.sum24 = add i64 %%.sum22, %%3, !dbg !6 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe__2e_sum24_count);
  llvm_cbe__2e_sum24 = (unsigned long long )((unsigned long long )(llvm_cbe__2e_sum22&18446744073709551615ull)) + ((unsigned long long )(llvm_cbe_tmp__2&18446744073709551615ull));
if (AESL_DEBUG_TRACE)
printf("\n.sum24 = 0x%I64X\n", ((unsigned long long )(llvm_cbe__2e_sum24&18446744073709551615ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = getelementptr inbounds i8* %%inptr, i64 %%.sum24, !dbg !6 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_40_count);
  llvm_cbe_tmp__5 = ( char *)(&llvm_cbe_inptr[(((signed long long )llvm_cbe__2e_sum24))]);
if (AESL_DEBUG_TRACE) {
printf("\n.sum24 = 0x%I64X",((signed long long )llvm_cbe__2e_sum24));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = load i8* %%6, align 1, !dbg !6 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_41_count);
  llvm_cbe_tmp__6 = (unsigned char )*llvm_cbe_tmp__5;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__6);
if (AESL_DEBUG_TRACE)
printf("\n  %%.sum25 = add i64 %%.sum21, %%3, !dbg !6 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe__2e_sum25_count);
  llvm_cbe__2e_sum25 = (unsigned long long )((unsigned long long )(llvm_cbe__2e_sum21&18446744073709551615ull)) + ((unsigned long long )(llvm_cbe_tmp__2&18446744073709551615ull));
if (AESL_DEBUG_TRACE)
printf("\n.sum25 = 0x%I64X\n", ((unsigned long long )(llvm_cbe__2e_sum25&18446744073709551615ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = getelementptr inbounds i8* %%inptr, i64 %%.sum25, !dbg !6 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_42_count);
  llvm_cbe_tmp__7 = ( char *)(&llvm_cbe_inptr[(((signed long long )llvm_cbe__2e_sum25))]);
if (AESL_DEBUG_TRACE) {
printf("\n.sum25 = 0x%I64X",((signed long long )llvm_cbe__2e_sum25));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = load i8* %%8, align 1, !dbg !6 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_43_count);
  llvm_cbe_tmp__8 = (unsigned char )*llvm_cbe_tmp__7;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__8);
if (AESL_DEBUG_TRACE)
printf("\n  %%.sum26 = add i64 %%.sum20, %%3, !dbg !6 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe__2e_sum26_count);
  llvm_cbe__2e_sum26 = (unsigned long long )((unsigned long long )(llvm_cbe__2e_sum20&18446744073709551615ull)) + ((unsigned long long )(llvm_cbe_tmp__2&18446744073709551615ull));
if (AESL_DEBUG_TRACE)
printf("\n.sum26 = 0x%I64X\n", ((unsigned long long )(llvm_cbe__2e_sum26&18446744073709551615ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = getelementptr inbounds i8* %%inptr, i64 %%.sum26, !dbg !6 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_44_count);
  llvm_cbe_tmp__9 = ( char *)(&llvm_cbe_inptr[(((signed long long )llvm_cbe__2e_sum26))]);
if (AESL_DEBUG_TRACE) {
printf("\n.sum26 = 0x%I64X",((signed long long )llvm_cbe__2e_sum26));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = load i8* %%10, align 1, !dbg !6 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_45_count);
  llvm_cbe_tmp__10 = (unsigned char )*llvm_cbe_tmp__9;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__10);
if (AESL_DEBUG_TRACE)
printf("\n  %%.sum27 = add i64 %%.sum, %%3, !dbg !6 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe__2e_sum27_count);
  llvm_cbe__2e_sum27 = (unsigned long long )((unsigned long long )(llvm_cbe__2e_sum&18446744073709551615ull)) + ((unsigned long long )(llvm_cbe_tmp__2&18446744073709551615ull));
if (AESL_DEBUG_TRACE)
printf("\n.sum27 = 0x%I64X\n", ((unsigned long long )(llvm_cbe__2e_sum27&18446744073709551615ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = getelementptr inbounds i8* %%inptr, i64 %%.sum27, !dbg !6 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_46_count);
  llvm_cbe_tmp__11 = ( char *)(&llvm_cbe_inptr[(((signed long long )llvm_cbe__2e_sum27))]);
if (AESL_DEBUG_TRACE) {
printf("\n.sum27 = 0x%I64X",((signed long long )llvm_cbe__2e_sum27));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = load i8* %%12, align 1, !dbg !6 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_47_count);
  llvm_cbe_tmp__12 = (unsigned char )*llvm_cbe_tmp__11;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__12);
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = getelementptr inbounds i8* %%mask, i64 %%3, !dbg !3 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_48_count);
  llvm_cbe_tmp__13 = ( char *)(&llvm_cbe_mask[(((signed long long )llvm_cbe_tmp__2))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__2));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = load i8* %%14, align 1, !dbg !3 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_49_count);
  llvm_cbe_tmp__14 = (unsigned char )*llvm_cbe_tmp__13;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__14);
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = add nsw i32 %%storemerge16, 5, !dbg !4 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_50_count);
  llvm_cbe_tmp__15 = (unsigned int )((unsigned int )(llvm_cbe_storemerge16&4294967295ull)) + ((unsigned int )(5u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__15&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = sext i32 %%16 to i64, !dbg !4 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_51_count);
  llvm_cbe_tmp__16 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__15);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__16);
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = getelementptr inbounds i8* %%mask, i64 %%17, !dbg !4 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_52_count);
  llvm_cbe_tmp__17 = ( char *)(&llvm_cbe_mask[(((signed long long )llvm_cbe_tmp__16))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__16));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = load i8* %%18, align 1, !dbg !4 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_53_count);
  llvm_cbe_tmp__18 = (unsigned char )*llvm_cbe_tmp__17;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__18);
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = add nsw i32 %%storemerge16, 10, !dbg !4 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_54_count);
  llvm_cbe_tmp__19 = (unsigned int )((unsigned int )(llvm_cbe_storemerge16&4294967295ull)) + ((unsigned int )(10u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__19&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = sext i32 %%20 to i64, !dbg !4 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_55_count);
  llvm_cbe_tmp__20 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__19);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__20);
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = getelementptr inbounds i8* %%mask, i64 %%21, !dbg !4 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_56_count);
  llvm_cbe_tmp__21 = ( char *)(&llvm_cbe_mask[(((signed long long )llvm_cbe_tmp__20))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__20));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = load i8* %%22, align 1, !dbg !4 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_57_count);
  llvm_cbe_tmp__22 = (unsigned char )*llvm_cbe_tmp__21;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__22);
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = add nsw i32 %%storemerge16, 15, !dbg !4 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_58_count);
  llvm_cbe_tmp__23 = (unsigned int )((unsigned int )(llvm_cbe_storemerge16&4294967295ull)) + ((unsigned int )(15u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__23&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = sext i32 %%24 to i64, !dbg !4 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_59_count);
  llvm_cbe_tmp__24 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__23);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__24);
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = getelementptr inbounds i8* %%mask, i64 %%25, !dbg !4 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_60_count);
  llvm_cbe_tmp__25 = ( char *)(&llvm_cbe_mask[(((signed long long )llvm_cbe_tmp__24))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__24));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = load i8* %%26, align 1, !dbg !4 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_61_count);
  llvm_cbe_tmp__26 = (unsigned char )*llvm_cbe_tmp__25;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__26);
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = add nsw i32 %%storemerge16, 20, !dbg !4 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_62_count);
  llvm_cbe_tmp__27 = (unsigned int )((unsigned int )(llvm_cbe_storemerge16&4294967295ull)) + ((unsigned int )(20u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__27&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = sext i32 %%28 to i64, !dbg !4 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_63_count);
  llvm_cbe_tmp__28 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__27);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__28);
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = getelementptr inbounds i8* %%mask, i64 %%29, !dbg !4 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_64_count);
  llvm_cbe_tmp__29 = ( char *)(&llvm_cbe_mask[(((signed long long )llvm_cbe_tmp__28))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__28));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%31 = load i8* %%30, align 1, !dbg !4 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_65_count);
  llvm_cbe_tmp__30 = (unsigned char )*llvm_cbe_tmp__29;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__30);
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = zext i8 %%5 to i32, !dbg !6 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_66_count);
  llvm_cbe_tmp__31 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__4&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__31);
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = sext i8 %%15 to i32, !dbg !6 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_67_count);
  llvm_cbe_tmp__32 = (unsigned int )((signed int )( char )llvm_cbe_tmp__14);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__32);
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = mul nsw i32 %%33, %%32, !dbg !6 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_68_count);
  llvm_cbe_tmp__33 = (unsigned int )((unsigned int )(llvm_cbe_tmp__32&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__31&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__33&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = zext i8 %%7 to i32, !dbg !6 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_71_count);
  llvm_cbe_tmp__34 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__6&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__34);
if (AESL_DEBUG_TRACE)
printf("\n  %%36 = sext i8 %%19 to i32, !dbg !6 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_72_count);
  llvm_cbe_tmp__35 = (unsigned int )((signed int )( char )llvm_cbe_tmp__18);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__35);
if (AESL_DEBUG_TRACE)
printf("\n  %%37 = mul nsw i32 %%36, %%35, !dbg !6 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_73_count);
  llvm_cbe_tmp__36 = (unsigned int )((unsigned int )(llvm_cbe_tmp__35&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__34&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__36&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%38 = zext i8 %%9 to i32, !dbg !7 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_76_count);
  llvm_cbe_tmp__37 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__8&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__37);
if (AESL_DEBUG_TRACE)
printf("\n  %%39 = sext i8 %%23 to i32, !dbg !7 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_77_count);
  llvm_cbe_tmp__38 = (unsigned int )((signed int )( char )llvm_cbe_tmp__22);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__38);
if (AESL_DEBUG_TRACE)
printf("\n  %%40 = mul nsw i32 %%39, %%38, !dbg !7 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_78_count);
  llvm_cbe_tmp__39 = (unsigned int )((unsigned int )(llvm_cbe_tmp__38&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__37&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__39&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%41 = zext i8 %%11 to i32, !dbg !7 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_81_count);
  llvm_cbe_tmp__40 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__10&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__40);
if (AESL_DEBUG_TRACE)
printf("\n  %%42 = sext i8 %%27 to i32, !dbg !7 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_82_count);
  llvm_cbe_tmp__41 = (unsigned int )((signed int )( char )llvm_cbe_tmp__26);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__41);
if (AESL_DEBUG_TRACE)
printf("\n  %%43 = mul nsw i32 %%42, %%41, !dbg !7 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_83_count);
  llvm_cbe_tmp__42 = (unsigned int )((unsigned int )(llvm_cbe_tmp__41&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__40&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__42&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%44 = zext i8 %%13 to i32, !dbg !7 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_86_count);
  llvm_cbe_tmp__43 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__12&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__43);
if (AESL_DEBUG_TRACE)
printf("\n  %%45 = sext i8 %%31 to i32, !dbg !7 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_87_count);
  llvm_cbe_tmp__44 = (unsigned int )((signed int )( char )llvm_cbe_tmp__30);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__44);
if (AESL_DEBUG_TRACE)
printf("\n  %%46 = mul nsw i32 %%45, %%44, !dbg !7 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_88_count);
  llvm_cbe_tmp__45 = (unsigned int )((unsigned int )(llvm_cbe_tmp__44&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__43&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__45&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%47 = add i32 %%34, %%storemerge345, !dbg !6 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_91_count);
  llvm_cbe_tmp__46 = (unsigned int )((unsigned int )(llvm_cbe_tmp__33&4294967295ull)) + ((unsigned int )(llvm_cbe_storemerge345&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__46&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%48 = add i32 %%47, %%37, !dbg !6 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_92_count);
  llvm_cbe_tmp__47 = (unsigned int )((unsigned int )(llvm_cbe_tmp__46&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__36&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__47&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%49 = add i32 %%48, %%40, !dbg !6 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_93_count);
  llvm_cbe_tmp__48 = (unsigned int )((unsigned int )(llvm_cbe_tmp__47&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__39&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__48&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%50 = add i32 %%49, %%43, !dbg !6 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_94_count);
  llvm_cbe_tmp__49 = (unsigned int )((unsigned int )(llvm_cbe_tmp__48&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__42&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__49&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%51 = add i32 %%50, %%46, !dbg !6 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_95_count);
  llvm_cbe_tmp__50 = (unsigned int )((unsigned int )(llvm_cbe_tmp__49&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__45&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__50&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%52 = add nsw i32 %%storemerge16, 1, !dbg !6 for 0x%I64xth hint within @img_conv_5x5  --> \n", ++aesl_llvm_cbe_102_count);
  llvm_cbe_tmp__51 = (unsigned int )((unsigned int )(llvm_cbe_storemerge16&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__51&4294967295ull)));
  if (((llvm_cbe_tmp__51&4294967295U) == (5u&4294967295U))) {
    goto llvm_cbe_tmp__56;
  } else {
    llvm_cbe_storemerge16__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__51;   /* for PHI node */
    llvm_cbe_storemerge345__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__50;   /* for PHI node */
    goto llvm_cbe_tmp__55;
  }

  } while (1); /* end of syntactic loop '' */
  } while (1); /* end of syntactic loop '.preheader' */
llvm_cbe_tmp__57:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @img_conv_5x5}\n");
  return;
}

