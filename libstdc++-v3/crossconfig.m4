dnl
dnl This file contains details for non-native builds.
dnl

AC_DEFUN([GLIBCXX_CROSSCONFIG],[
# Base decisions on target environment.
case "${host}" in
  arm*-*-symbianelf*)
    # This is a freestanding configuration; there is nothing to do here.
    ;;

  avr*-*-*)
    AC_DEFINE(HAVE_ACOSF)
    AC_DEFINE(HAVE_ASINF)
    AC_DEFINE(HAVE_ATAN2F)
    AC_DEFINE(HAVE_ATANF)
    AC_DEFINE(HAVE_CEILF)
    AC_DEFINE(HAVE_COSF)
    AC_DEFINE(HAVE_COSHF)
    AC_DEFINE(HAVE_EXPF)
    AC_DEFINE(HAVE_FABSF)
    AC_DEFINE(HAVE_FLOORF)
    AC_DEFINE(HAVE_FMODF)
    AC_DEFINE(HAVE_FREXPF)
    AC_DEFINE(HAVE_SQRTF)
    AC_DEFINE(HAVE_HYPOTF)
    AC_DEFINE(HAVE_LDEXPF)
    AC_DEFINE(HAVE_LOG10F)
    AC_DEFINE(HAVE_LOGF)
    AC_DEFINE(HAVE_MODFF)
    AC_DEFINE(HAVE_POWF)
    AC_DEFINE(HAVE_SINF)
    AC_DEFINE(HAVE_SINHF)
    AC_DEFINE(HAVE_TANF)
    AC_DEFINE(HAVE_TANHF)
    ;;

  mips*-sde-elf*)
    # These definitions are for the SDE C library rather than newlib.
    SECTION_FLAGS='-ffunction-sections -fdata-sections'
    AC_SUBST(SECTION_FLAGS)
    GLIBCXX_CHECK_COMPILER_FEATURES
    GLIBCXX_CHECK_LINKER_FEATURES
    GLIBCXX_CHECK_MATH_SUPPORT
    GLIBCXX_CHECK_STDLIB_SUPPORT

    AC_DEFINE(HAVE_FINITE)
    AC_DEFINE(HAVE_HYPOT)
    AC_DEFINE(HAVE_ISNAN)
    AC_DEFINE(HAVE_ISINF)

    AC_DEFINE(HAVE_LDEXPF)
    AC_DEFINE(HAVE_MODF)
    AC_DEFINE(HAVE_SQRTF)
    ;;

  mips*-sgi-irix6.5)

    AC_DEFINE(HAVE_ACOSF)
    AC_DEFINE(HAVE_ACOSL)
    AC_DEFINE(HAVE_ARPA_INET_H)
    AC_DEFINE(HAVE_ASINF)
    AC_DEFINE(HAVE_ASINL)
    AC_DEFINE(HAVE_AS_SYMVER_DIRECTIVE)
    AC_DEFINE(HAVE_ATAN2F)
    AC_DEFINE(HAVE_ATAN2L)
    AC_DEFINE(HAVE_ATANF)
    AC_DEFINE(HAVE_ATANL)
    AC_DEFINE(HAVE_ATOMIC_LOCK_POLICY)
    AC_DEFINE(HAVE_C99_FLT_EVAL_TYPES)
    AC_DEFINE(HAVE_CEILF)
    AC_DEFINE(HAVE_CEILL)
    AC_DEFINE(HAVE_COMPLEX_H)
    AC_DEFINE(HAVE_COSF)
    AC_DEFINE(HAVE_COSHF)
    AC_DEFINE(HAVE_COSHL)
    AC_DEFINE(HAVE_COSL)
    AC_DEFINE(HAVE_DECL_STRNLEN)
    AC_DEFINE(HAVE_DIRENT_H)
    AC_DEFINE(HAVE_DLFCN_H)
    AC_DEFINE(HAVE_EXCEPTION_PTR_SINCE_GCC46)
    AC_DEFINE(HAVE_EXPF)
    AC_DEFINE(HAVE_EXPL)
    AC_DEFINE(HAVE_FABSF)
    AC_DEFINE(HAVE_FABSL)
    AC_DEFINE(HAVE_FCNTL_H)
    AC_DEFINE(HAVE_FENV_H)
    AC_DEFINE(HAVE_FINITE)
    AC_DEFINE(HAVE_FINITEL)
    AC_DEFINE(HAVE_FLOAT_H)
    AC_DEFINE(HAVE_FLOORF)
    AC_DEFINE(HAVE_FLOORL)
    AC_DEFINE(HAVE_FMODF)
    AC_DEFINE(HAVE_FMODL)
    AC_DEFINE(HAVE_FPCLASS)
    AC_DEFINE(HAVE_FREXPF)
    AC_DEFINE(HAVE_FREXPL)
    AC_DEFINE(HAVE_GETIPINFO)
    AC_DEFINE(HAVE_GETS)
    AC_DEFINE(HAVE_HYPOT)
    AC_DEFINE(HAVE_HYPOTF)
    AC_DEFINE(HAVE_HYPOTL)
    AC_DEFINE(HAVE_IEEEFP_H)
    AC_DEFINE(HAVE_INTTYPES_H)
    AC_DEFINE(HAVE_ISNAN)
    AC_DEFINE(HAVE_ISNANF)
    AC_DEFINE(HAVE_ISNANL)
    AC_DEFINE(HAVE_ISWBLANK)
    AC_DEFINE(HAVE_LC_MESSAGES)
    AC_DEFINE(HAVE_LDEXPF)
    AC_DEFINE(HAVE_LDEXPL)
    AC_DEFINE(HAVE_LIMIT_AS)
    AC_DEFINE(HAVE_LIMIT_DATA)
    AC_DEFINE(HAVE_LIMIT_FSIZE)
    AC_DEFINE(HAVE_LIMIT_RSS)
    AC_DEFINE(HAVE_LIMIT_VMEM)
    AC_DEFINE(HAVE_LINK)
    AC_DEFINE(HAVE_LOCALE_H)
    AC_DEFINE(HAVE_LOG10F)
    AC_DEFINE(HAVE_LOG10L)
    AC_DEFINE(HAVE_LOGF)
    AC_DEFINE(HAVE_LOGL)
    AC_DEFINE(HAVE_LSEEK)
    AC_DEFINE(HAVE_MBSTATE_T)
    AC_DEFINE(HAVE_MEMALIGN)
    AC_DEFINE(HAVE_MEMORY_H)
    AC_DEFINE(HAVE_MODFF)
    AC_DEFINE(HAVE_MODFL)
    AC_DEFINE(HAVE_NAN_H)
    AC_DEFINE(HAVE_NETDB_H)
    AC_DEFINE(HAVE_NETINET_IN_H)
    AC_DEFINE(HAVE_NETINET_TCP_H)
    AC_DEFINE(HAVE_OBSOLETE_ISINF)
    AC_DEFINE(HAVE_OBSOLETE_ISNAN)
    AC_DEFINE(HAVE_POLL)
    AC_DEFINE(HAVE_POLL_H)
    AC_DEFINE(HAVE_POWF)
    AC_DEFINE(HAVE_POWL)
    AC_DEFINE(HAVE_QFPCLASS)
    AC_DEFINE(HAVE_READLINK)
    AC_DEFINE(HAVE_SINF)
    AC_DEFINE(HAVE_SINHF)
    AC_DEFINE(HAVE_SINHL)
    AC_DEFINE(HAVE_SINL)
    AC_DEFINE(HAVE_SLEEP)
    AC_DEFINE(HAVE_SQRTF)
    AC_DEFINE(HAVE_SQRTL)
    AC_DEFINE(HAVE_STACKTRACE)
    AC_DEFINE(HAVE_STDALIGN_H)
    AC_DEFINE(HAVE_STDBOOL_H)
    AC_DEFINE(HAVE_STDINT_H)
    AC_DEFINE(HAVE_STDLIB_H)
    AC_DEFINE(HAVE_STRINGS_H)
    AC_DEFINE(HAVE_STRING_H)
    AC_DEFINE(HAVE_STRTOF)
    AC_DEFINE(HAVE_STRTOLD)
    AC_DEFINE(HAVE_SYMLINK)
    AC_DEFINE(HAVE_SYMVER_SYMBOL_RENAMING_RUNTIME_SUPPORT)
    AC_DEFINE(HAVE_SYS_FILIO_H)
    AC_DEFINE(HAVE_SYS_IOCTL_H)
    AC_DEFINE(HAVE_SYS_IPC_H)
    AC_DEFINE(HAVE_SYS_MMAN_H)
    AC_DEFINE(HAVE_SYS_PARAM_H)
    AC_DEFINE(HAVE_SYS_RESOURCE_H)
    AC_DEFINE(HAVE_SYS_SEM_H)
    AC_DEFINE(HAVE_SYS_SOCKET_H)
    AC_DEFINE(HAVE_SYS_STATVFS_H)
    AC_DEFINE(HAVE_SYS_STAT_H)
    AC_DEFINE(HAVE_SYS_SYSINFO_H)
    AC_DEFINE(HAVE_SYS_TIME_H)
    AC_DEFINE(HAVE_SYS_TYPES_H)
    AC_DEFINE(HAVE_SYS_UIO_H)
    AC_DEFINE(HAVE_S_ISREG)
    AC_DEFINE(HAVE_TANF)
    AC_DEFINE(HAVE_TANHF)
    AC_DEFINE(HAVE_TANHL)
    AC_DEFINE(HAVE_TANL)
    AC_DEFINE(HAVE_TGMATH_H)
    AC_DEFINE(HAVE_TRUNCATE)
    AC_DEFINE(HAVE_UNISTD_H)
    AC_DEFINE(HAVE_USLEEP)
    AC_DEFINE(HAVE_UTIME_H)
    AC_DEFINE(HAVE_VFWSCANF)
    AC_DEFINE(HAVE_VSWSCANF)
    AC_DEFINE(HAVE_VWSCANF)
    AC_DEFINE(HAVE_WCHAR_H)
    AC_DEFINE(HAVE_WCSTOF)
    AC_DEFINE(HAVE_WCTYPE_H)
    AC_DEFINE(HAVE_WRITEV)
    ;;

  *-aix*)
    GLIBCXX_CHECK_LINKER_FEATURES
    GLIBCXX_CHECK_MATH_SUPPORT
    GLIBCXX_CHECK_STDLIB_SUPPORT
    AC_DEFINE(_GLIBCXX_USE_DEV_RANDOM)
    AC_DEFINE(_GLIBCXX_USE_RANDOM_TR1)
    # We don't yet support AIX's TLS ABI.
    #GCC_CHECK_TLS
    AM_ICONV

    AC_DEFINE(HAVE_USELOCALE)
    ;;

  *-darwin*)
    # Darwin versions vary, but the linker should work in a cross environment,
    # so we just check for all the features here.
    # Check for available headers.

    # Don't call GLIBCXX_CHECK_LINKER_FEATURES, Darwin doesn't have a GNU ld
    GLIBCXX_CHECK_MATH_SUPPORT
    GLIBCXX_CHECK_STDLIB_SUPPORT

    AC_CHECK_FUNCS(uselocale)
    ;;

  *djgpp)
    # GLIBCXX_CHECK_MATH_SUPPORT
    AC_DEFINE(HAVE_ISINF)
    AC_DEFINE(HAVE_ISNAN)
    AC_DEFINE(HAVE_FINITE)
    AC_DEFINE(HAVE_SINCOS)
    AC_DEFINE(HAVE_HYPOT)
    ;;

  *-freebsd*)
    SECTION_FLAGS='-ffunction-sections -fdata-sections'
    AC_SUBST(SECTION_FLAGS) 
    GLIBCXX_CHECK_LINKER_FEATURES
    AC_DEFINE(HAVE_SETENV)
    AC_DEFINE(HAVE_FINITEF)
    AC_DEFINE(HAVE_FINITE)
    AC_DEFINE(HAVE_FREXPF)
    AC_DEFINE(HAVE_HYPOT)
    AC_DEFINE(HAVE_HYPOTF)
    AC_DEFINE(HAVE_ISINF)
    AC_DEFINE(HAVE_ISNAN)
    AC_DEFINE(HAVE_ISNANF)

    AC_DEFINE(HAVE_ACOSF)
    AC_DEFINE(HAVE_ASINF)
    AC_DEFINE(HAVE_ATAN2F)
    AC_DEFINE(HAVE_ATANF)
    AC_DEFINE(HAVE_CEILF)
    AC_DEFINE(HAVE_COSF)
    AC_DEFINE(HAVE_COSHF)
    AC_DEFINE(HAVE_EXPF)
    AC_DEFINE(HAVE_FABSF)
    AC_DEFINE(HAVE_FLOORF)
    AC_DEFINE(HAVE_FMODF)
    AC_DEFINE(HAVE_FREXPF)
    AC_DEFINE(HAVE_LDEXPF)
    AC_DEFINE(HAVE_LOG10F)
    AC_DEFINE(HAVE_LOGF)
    AC_DEFINE(HAVE_MODFF)
    AC_DEFINE(HAVE_POWF)
    AC_DEFINE(HAVE_SINF)
    AC_DEFINE(HAVE_SINHF)
    AC_DEFINE(HAVE_SQRTF)
    AC_DEFINE(HAVE_TANF)
    AC_DEFINE(HAVE_TANHF)
    if test x"long_double_math_on_this_cpu" = x"yes"; then
      AC_DEFINE(HAVE_FINITEL)
      AC_DEFINE(HAVE_ISINFL)
      AC_DEFINE(HAVE_ISNANL)
    fi
    AC_CHECK_FUNCS(__cxa_thread_atexit)
    AC_CHECK_FUNCS(aligned_alloc posix_memalign memalign _aligned_malloc)
    AC_CHECK_FUNCS(timespec_get)
    AC_CHECK_FUNCS(sockatmark)
    AC_CHECK_FUNCS(uselocale)
    ;;

  *-fuchsia*)
    SECTION_FLAGS='-ffunction-sections -fdata-sections'
    AC_SUBST(SECTION_FLAGS)
    ;;

  *-hpux*)
    SECTION_FLAGS='-ffunction-sections -fdata-sections'
    AC_SUBST(SECTION_FLAGS)
    GLIBCXX_CHECK_LINKER_FEATURES

    # GLIBCXX_CHECK_MATH_SUPPORT
    AC_DEFINE(HAVE_ISNAN)
    AC_DEFINE(HAVE_HYPOT)
    AC_DEFINE(HAVE_ACOSF)
    AC_DEFINE(HAVE_ASINF)
    AC_DEFINE(HAVE_ATANF)
    AC_DEFINE(HAVE_COSF)
    AC_DEFINE(HAVE_COSHF)
    AC_DEFINE(HAVE_SINF)
    AC_DEFINE(HAVE_SINHF)
    AC_DEFINE(HAVE_TANF)
    AC_DEFINE(HAVE_TANHF)
    AC_DEFINE(HAVE_EXPF)
    AC_DEFINE(HAVE_ATAN2F)
    AC_DEFINE(HAVE_FABSF)
    AC_DEFINE(HAVE_FMODF)
    AC_DEFINE(HAVE_FREXPF)
    AC_DEFINE(HAVE_LOGF)
    AC_DEFINE(HAVE_LOG10F)
    AC_DEFINE(HAVE_MODF)
    AC_DEFINE(HAVE_POWF)
    AC_DEFINE(HAVE_SQRTF)

    # GLIBCXX_CHECK_STDLIB_SUPPORT
    AC_DEFINE(HAVE_STRTOLD)

    GCC_CHECK_TLS
    ;;
  *-linux* | *-uclinux* | *-gnu* | *-kfreebsd*-gnu | *-cygwin* | *-solaris*)
    GLIBCXX_CHECK_COMPILER_FEATURES
    GLIBCXX_CHECK_LINKER_FEATURES
    GLIBCXX_CHECK_MATH_SUPPORT
    GLIBCXX_CHECK_STDLIB_SUPPORT
    AC_DEFINE(_GLIBCXX_USE_DEV_RANDOM)
    AC_DEFINE(_GLIBCXX_USE_RANDOM_TR1)
    GCC_CHECK_TLS
    AC_CHECK_FUNCS(__cxa_thread_atexit_impl)
    AC_CHECK_FUNCS(aligned_alloc posix_memalign memalign _aligned_malloc)
    AC_CHECK_FUNCS(timespec_get)
    AC_CHECK_FUNCS(sockatmark)
    AC_CHECK_FUNCS(uselocale)
    AC_CHECK_FUNCS(secure_getenv)
    AM_ICONV
    ;;
  *-mingw32*)
    GLIBCXX_CHECK_LINKER_FEATURES
    GLIBCXX_CHECK_MATH_SUPPORT
    GLIBCXX_CHECK_STDLIB_SUPPORT
    AC_CHECK_FUNCS(aligned_alloc posix_memalign memalign _aligned_malloc)
    AC_CHECK_FUNCS(_wfopen)
    GCC_CHECK_TLS
    ;;
  *-netbsd* | *-openbsd*)
    SECTION_FLAGS='-ffunction-sections -fdata-sections'
    AC_SUBST(SECTION_FLAGS) 
    GLIBCXX_CHECK_LINKER_FEATURES
    AC_DEFINE(HAVE_FINITEF)
    AC_DEFINE(HAVE_FINITE)
    AC_DEFINE(HAVE_FREXPF)
    AC_DEFINE(HAVE_HYPOTF)
    AC_DEFINE(HAVE_ISINF)
    AC_DEFINE(HAVE_ISINFF)
    AC_DEFINE(HAVE_ISNAN)
    AC_DEFINE(HAVE_ISNANF)
    if test x"long_double_math_on_this_cpu" = x"yes"; then
      AC_DEFINE(HAVE_FINITEL)
      AC_DEFINE(HAVE_ISINFL)
      AC_DEFINE(HAVE_ISNANL)
    fi
    AC_CHECK_FUNCS(aligned_alloc posix_memalign memalign _aligned_malloc)
    AC_CHECK_FUNCS(timespec_get)
    AC_CHECK_FUNCS(sockatmark)
    ;;
  *-qnx6.1* | *-qnx6.2*)
    SECTION_FLAGS='-ffunction-sections -fdata-sections'
    AC_SUBST(SECTION_FLAGS) 
    GLIBCXX_CHECK_LINKER_FEATURES
    AC_DEFINE(HAVE_COSF)
    AC_DEFINE(HAVE_COSL)
    AC_DEFINE(HAVE_COSHF)
    AC_DEFINE(HAVE_COSHL)
    AC_DEFINE(HAVE_LOGF)
    AC_DEFINE(HAVE_LOGL)
    AC_DEFINE(HAVE_LOG10F)
    AC_DEFINE(HAVE_LOG10L)
    AC_DEFINE(HAVE_SINF)
    AC_DEFINE(HAVE_SINL)
    AC_DEFINE(HAVE_SINHF)
    AC_DEFINE(HAVE_SINHL)
    ;;
  *-tpf)
    SECTION_FLAGS='-ffunction-sections -fdata-sections'
    SECTION_LDFLAGS='-Wl,--gc-sections $SECTION_LDFLAGS'
    AC_SUBST(SECTION_FLAGS)
    AC_DEFINE(HAVE_FINITE)
    AC_DEFINE(HAVE_FINITEF)
    AC_DEFINE(HAVE_FREXPF)
    AC_DEFINE(HAVE_HYPOTF)
    AC_DEFINE(HAVE_ISINF)
    AC_DEFINE(HAVE_ISINFF)
    AC_DEFINE(HAVE_ISNAN)
    AC_DEFINE(HAVE_ISNANF)
    AC_DEFINE(HAVE_SINCOS)
    AC_DEFINE(HAVE_SINCOSF)
    if test x"long_double_math_on_this_cpu" = x"yes"; then
      AC_DEFINE(HAVE_FINITEL)
      AC_DEFINE(HAVE_HYPOTL)
      AC_DEFINE(HAVE_ISINFL)
      AC_DEFINE(HAVE_ISNANL)
    fi
    ;;
  *-*vms*)
    # Check for available headers.
    # Don't call GLIBCXX_CHECK_LINKER_FEATURES, VMS doesn't have a GNU ld
    GLIBCXX_CHECK_MATH_SUPPORT
    GLIBCXX_CHECK_STDLIB_SUPPORT
    ;;
  *-vxworks*)
    AC_DEFINE(HAVE_ACOSF)
    AC_DEFINE(HAVE_ASINF)
    AC_DEFINE(HAVE_ATAN2F)
    AC_DEFINE(HAVE_ATANF)
    AC_DEFINE(HAVE_CEILF)
    AC_DEFINE(HAVE_COSF)
    AC_DEFINE(HAVE_COSHF)
    AC_DEFINE(HAVE_EXPF)
    AC_DEFINE(HAVE_FABSF)
    AC_DEFINE(HAVE_FLOORF)
    AC_DEFINE(HAVE_FMODF)
    AC_DEFINE(HAVE_HYPOT)
    AC_DEFINE(HAVE_LOG10F)
    AC_DEFINE(HAVE_LOGF)
    AC_DEFINE(HAVE_POWF)
    AC_DEFINE(HAVE_SINF)
    AC_DEFINE(HAVE_SINHF)
    AC_DEFINE(HAVE_SQRTF)
    AC_DEFINE(HAVE_TANF)
    AC_DEFINE(HAVE_TANHF)

dnl # Different versions and execution modes implement different
dnl # subsets of these functions.  Instead of hard-coding, test for C
dnl # declarations in headers.  The C primitives could be defined as
dnl # macros, in which case the tests might fail, and we might have to
dnl # switch to more elaborate tests.
    GLIBCXX_CHECK_MATH_DECLS([
      acosl asinl atan2l atanl ceill cosl coshl expl fabsl floorl fmodl
      frexpl ldexpl log10l logl modfl powl sinl sinhl sqrtl tanl tanhl hypotl
      ldexpf modff hypotf frexpf])
dnl # sincosl is the only one missing here, compared with the *l
dnl # functions in the list guarded by
dnl # long_double_math_on_this_cpu in configure.ac, right after
dnl # the expansion of the present macro.
    ;;
  *)
    AC_MSG_ERROR([No support for this host/target combination.])
   ;;
esac
])


dnl
dnl Check to see if the (math function) argument passed is
dnl declared when using the c compiler
dnl
dnl Define HAVE_CARGF etc if "cargf" is declared
dnl
dnl argument 1 is name of function to check
dnl
dnl ASSUMES argument is a math function
dnl
dnl GLIBCXX_CHECK_MATH_DECL
AC_DEFUN([GLIBCXX_CHECK_MATH_DECL], [
  AC_CACHE_CHECK([for $1 declaration],
    [glibcxx_cv_func_$1_use], [
      AC_LANG_SAVE
      AC_LANG_C
      AC_TRY_COMPILE([
#include <math.h>
#ifdef HAVE_IEEEFP_H
# include <ieeefp.h>
#endif
#undef $1
], [
  void (*f)(void) = (void (*)(void))$1;
], [glibcxx_cv_func_$1_use=yes
], [glibcxx_cv_func_$1_use=no])])
  if test "x$glibcxx_cv_func_$1_use" = xyes; then
    AC_DEFINE_UNQUOTED(AS_TR_CPP([HAVE_$1]))
  fi
])

dnl
dnl Check to see whether multiple math functions are
dnl declared when using the c compiler
dnl
dnl Define HAVE_CARGF HAVE_POWL etc if "cargf" and "powl"
dnl are declared
dnl
dnl argument 1 is a word list naming function to check
dnl
dnl ASSUMES arguments are math functions
dnl
dnl GLIBCXX_CHECK_MATH_DECLS
AC_DEFUN([GLIBCXX_CHECK_MATH_DECLS], [
  m4_foreach_w([glibcxx_func], [$1], [
    GLIBCXX_CHECK_MATH_DECL(glibcxx_func)
  ])
])
