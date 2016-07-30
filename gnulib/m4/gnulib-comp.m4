# DO NOT EDIT! GENERATED AUTOMATICALLY!
# Copyright (C) 2002-2016 Free Software Foundation, Inc.
#
# This file is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.
#
# This file is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this file.  If not, see <http://www.gnu.org/licenses/>.
#
# As a special exception to the GNU General Public License,
# this file may be distributed as part of a program that
# contains a configuration script generated by Autoconf, under
# the same distribution terms as the rest of that program.
#
# Generated by gnulib-tool.
#
# This file represents the compiled summary of the specification in
# gnulib-cache.m4. It lists the computed macro invocations that need
# to be invoked from configure.ac.
# In projects that use version control, this file can be treated like
# other built files.


# This macro should be invoked from ./configure.ac, in the section
# "Checks for programs", right after AC_PROG_CC, and certainly before
# any checks for libraries, header files, types and library functions.
AC_DEFUN([gl_EARLY],
[
  m4_pattern_forbid([^gl_[A-Z]])dnl the gnulib macro namespace
  m4_pattern_allow([^gl_ES$])dnl a valid locale name
  m4_pattern_allow([^gl_LIBOBJS$])dnl a variable
  m4_pattern_allow([^gl_LTLIBOBJS$])dnl a variable

  # Pre-early section.
  AC_REQUIRE([gl_USE_SYSTEM_EXTENSIONS])
  AC_REQUIRE([gl_PROG_AR_RANLIB])

  AC_REQUIRE([AM_PROG_CC_C_O])
  # Code from module absolute-header:
  # Code from module alloca-opt:
  # Code from module argz:
  # Code from module btowc:
  # Code from module configmake:
  # Code from module errno:
  # Code from module error:
  # Code from module exitfail:
  # Code from module extensions:
  # Code from module extern-inline:
  # Code from module float:
  # Code from module getopt-gnu:
  # Code from module getopt-posix:
  # Code from module gettext:
  # Code from module gettext-h:
  # Code from module hard-locale:
  # Code from module havelib:
  # Code from module iconv:
  # Code from module include_next:
  # Code from module intprops:
  # Code from module iswblank:
  # Code from module langinfo:
  # Code from module localcharset:
  # Code from module locale:
  # Code from module localeconv:
  # Code from module lock:
  # Code from module malloc-posix:
  # Code from module malloca:
  # Code from module mbchar:
  # Code from module mbiter:
  # Code from module mbrtowc:
  # Code from module mbscasecmp:
  # Code from module mbschr:
  # Code from module mbsinit:
  # Code from module mbslen:
  # Code from module mbsncasecmp:
  # Code from module mbsstr:
  # Code from module mbswidth:
  # Code from module mbtowc:
  # Code from module mbuiter:
  # Code from module memchr:
  # Code from module mempcpy:
  # Code from module memrchr:
  # Code from module msvc-inval:
  # Code from module msvc-nothrow:
  # Code from module multiarch:
  # Code from module nl_langinfo:
  # Code from module nocrash:
  # Code from module regex:
  # Code from module size_max:
  # Code from module snippet/_Noreturn:
  # Code from module snippet/arg-nonnull:
  # Code from module snippet/c++defs:
  # Code from module snippet/warn-on-use:
  # Code from module ssize_t:
  # Code from module stdarg:
  dnl Some compilers (e.g., AIX 5.3 cc) need to be in c99 mode
  dnl for the builtin va_copy to work.  With Autoconf 2.60 or later,
  dnl gl_PROG_CC_C99 arranges for this.  With older Autoconf gl_PROG_CC_C99
  dnl shouldn't hurt, though installers are on their own to set c99 mode.
  gl_PROG_CC_C99
  # Code from module stdbool:
  # Code from module stddef:
  # Code from module stdint:
  # Code from module stdio:
  # Code from module stdlib:
  # Code from module stpcpy:
  # Code from module strcase:
  # Code from module strcasestr:
  # Code from module strcasestr-simple:
  # Code from module strdup-posix:
  # Code from module streq:
  # Code from module strerror:
  # Code from module strerror-override:
  # Code from module string:
  # Code from module strings:
  # Code from module strndup:
  # Code from module strnlen:
  # Code from module strnlen1:
  # Code from module strstr:
  # Code from module strstr-simple:
  # Code from module sys_types:
  # Code from module threadlib:
  gl_THREADLIB_EARLY
  # Code from module unistd:
  # Code from module unitypes:
  # Code from module uniwidth/base:
  # Code from module uniwidth/width:
  # Code from module vasnprintf:
  # Code from module vasprintf:
  # Code from module verify:
  # Code from module wchar:
  # Code from module wcrtomb:
  # Code from module wctype-h:
  # Code from module wcwidth:
  # Code from module xalloc:
  # Code from module xalloc-die:
  # Code from module xalloc-oversized:
  # Code from module xsize:
])

# This macro should be invoked from ./configure.ac, in the section
# "Check for header files, types and library functions".
AC_DEFUN([gl_INIT],
[
  AM_CONDITIONAL([GL_COND_LIBTOOL], [false])
  gl_cond_libtool=false
  gl_libdeps=
  gl_ltlibdeps=
  gl_m4_base='gnulib/m4'
  m4_pushdef([AC_LIBOBJ], m4_defn([gl_LIBOBJ]))
  m4_pushdef([AC_REPLACE_FUNCS], m4_defn([gl_REPLACE_FUNCS]))
  m4_pushdef([AC_LIBSOURCES], m4_defn([gl_LIBSOURCES]))
  m4_pushdef([gl_LIBSOURCES_LIST], [])
  m4_pushdef([gl_LIBSOURCES_DIR], [])
  gl_COMMON
  gl_source_base='gnulib/lib'
  gl_FUNC_ALLOCA
  gl_FUNC_ARGZ
  if test -n "$ARGZ_H"; then
    AC_LIBOBJ([argz])
  fi
  gl_HEADER_ERRNO_H
  gl_ERROR
  if test $ac_cv_lib_error_at_line = no; then
    AC_LIBOBJ([error])
    gl_PREREQ_ERROR
  fi
  m4_ifdef([AM_XGETTEXT_OPTION],
    [AM_][XGETTEXT_OPTION([--flag=error:3:c-format])
     AM_][XGETTEXT_OPTION([--flag=error_at_line:5:c-format])])
  AC_REQUIRE([gl_EXTERN_INLINE])
  gl_FLOAT_H
  if test $REPLACE_FLOAT_LDBL = 1; then
    AC_LIBOBJ([float])
  fi
  if test $REPLACE_ITOLD = 1; then
    AC_LIBOBJ([itold])
  fi
  gl_FUNC_GETOPT_GNU
  if test $REPLACE_GETOPT = 1; then
    AC_LIBOBJ([getopt])
    AC_LIBOBJ([getopt1])
    gl_PREREQ_GETOPT
    dnl Arrange for unistd.h to include getopt.h.
    GNULIB_GL_UNISTD_H_GETOPT=1
  fi
  AC_SUBST([GNULIB_GL_UNISTD_H_GETOPT])
  gl_MODULE_INDICATOR_FOR_TESTS([getopt-gnu])
  gl_FUNC_GETOPT_POSIX
  if test $REPLACE_GETOPT = 1; then
    AC_LIBOBJ([getopt])
    AC_LIBOBJ([getopt1])
    gl_PREREQ_GETOPT
    dnl Arrange for unistd.h to include getopt.h.
    GNULIB_GL_UNISTD_H_GETOPT=1
  fi
  AC_SUBST([GNULIB_GL_UNISTD_H_GETOPT])
  dnl you must add AM_GNU_GETTEXT([external]) or similar to configure.ac.
  AM_GNU_GETTEXT_VERSION([0.18.1])
  AC_SUBST([LIBINTL])
  AC_SUBST([LTLIBINTL])
  AM_ICONV
  m4_ifdef([gl_ICONV_MODULE_INDICATOR],
    [gl_ICONV_MODULE_INDICATOR([iconv])])
  gl_FUNC_ISWBLANK
  if test $HAVE_ISWCNTRL = 0 || test $REPLACE_ISWCNTRL = 1; then
    :
  else
    if test $HAVE_ISWBLANK = 0 || test $REPLACE_ISWBLANK = 1; then
      AC_LIBOBJ([iswblank])
    fi
  fi
  gl_WCTYPE_MODULE_INDICATOR([iswblank])
  gl_MALLOCA
  gl_MBCHAR
  gl_MBITER
  gl_FUNC_MBRTOWC
  if test $HAVE_MBRTOWC = 0 || test $REPLACE_MBRTOWC = 1; then
    AC_LIBOBJ([mbrtowc])
    gl_PREREQ_MBRTOWC
  fi
  gl_WCHAR_MODULE_INDICATOR([mbrtowc])
  gl_STRING_MODULE_INDICATOR([mbscasecmp])
  gl_STRING_MODULE_INDICATOR([mbschr])
  gl_FUNC_MBSINIT
  if test $HAVE_MBSINIT = 0 || test $REPLACE_MBSINIT = 1; then
    AC_LIBOBJ([mbsinit])
    gl_PREREQ_MBSINIT
  fi
  gl_WCHAR_MODULE_INDICATOR([mbsinit])
  gl_FUNC_MBSLEN
  gl_STRING_MODULE_INDICATOR([mbslen])
  gl_STRING_MODULE_INDICATOR([mbsncasecmp])
  gl_STRING_MODULE_INDICATOR([mbsstr])
  gl_MBSWIDTH
  gl_MBITER
  gl_FUNC_MEMCHR
  if test $HAVE_MEMCHR = 0 || test $REPLACE_MEMCHR = 1; then
    AC_LIBOBJ([memchr])
    gl_PREREQ_MEMCHR
  fi
  gl_STRING_MODULE_INDICATOR([memchr])
  gl_FUNC_MEMRCHR
  if test $ac_cv_func_memrchr = no; then
    AC_LIBOBJ([memrchr])
    gl_PREREQ_MEMRCHR
  fi
  gl_STRING_MODULE_INDICATOR([memrchr])
  gl_MULTIARCH
  gl_REGEX
  if test $ac_use_included_regex = yes; then
    AC_LIBOBJ([regex])
    gl_PREREQ_REGEX
  fi
  gt_TYPE_SSIZE_T
  gl_STDARG_H
  AM_STDBOOL_H
  gl_STDDEF_H
  gl_STDINT_H
  gl_STDIO_H
  gl_STDLIB_H
  gl_STRCASE
  if test $HAVE_STRCASECMP = 0; then
    AC_LIBOBJ([strcasecmp])
    gl_PREREQ_STRCASECMP
  fi
  if test $HAVE_STRNCASECMP = 0; then
    AC_LIBOBJ([strncasecmp])
    gl_PREREQ_STRNCASECMP
  fi
  gl_FUNC_STRCASESTR
  if test $HAVE_STRCASESTR = 0 || test $REPLACE_STRCASESTR = 1; then
    AC_LIBOBJ([strcasestr])
    gl_PREREQ_STRCASESTR
  fi
  gl_FUNC_STRCASESTR_SIMPLE
  if test $HAVE_STRCASESTR = 0 || test $REPLACE_STRCASESTR = 1; then
    AC_LIBOBJ([strcasestr])
    gl_PREREQ_STRCASESTR
  fi
  gl_STRING_MODULE_INDICATOR([strcasestr])
  gl_FUNC_STRDUP_POSIX
  if test $ac_cv_func_strdup = no || test $REPLACE_STRDUP = 1; then
    AC_LIBOBJ([strdup])
    gl_PREREQ_STRDUP
  fi
  gl_STRING_MODULE_INDICATOR([strdup])
  gl_FUNC_STRERROR
  if test $REPLACE_STRERROR = 1; then
    AC_LIBOBJ([strerror])
  fi
  gl_MODULE_INDICATOR([strerror])
  gl_STRING_MODULE_INDICATOR([strerror])
  gl_HEADER_STRING_H
  gl_HEADER_STRINGS_H
  gl_FUNC_STRNLEN
  if test $HAVE_DECL_STRNLEN = 0 || test $REPLACE_STRNLEN = 1; then
    AC_LIBOBJ([strnlen])
    gl_PREREQ_STRNLEN
  fi
  gl_STRING_MODULE_INDICATOR([strnlen])
  gl_SYS_TYPES_H
  AC_PROG_MKDIR_P
  gl_UNISTD_H
  gl_LIBUNISTRING_LIBHEADER([0.9.4], [unitypes.h])
  gl_LIBUNISTRING_LIBHEADER([0.9.4], [uniwidth.h])
  gl_LIBUNISTRING_MODULE([0.9.6], [uniwidth/width])
  gl_FUNC_VASPRINTF
  gl_STDIO_MODULE_INDICATOR([vasprintf])
  m4_ifdef([AM_XGETTEXT_OPTION],
    [AM_][XGETTEXT_OPTION([--flag=asprintf:2:c-format])
     AM_][XGETTEXT_OPTION([--flag=vasprintf:2:c-format])])
  gl_WCHAR_H
  gl_WCTYPE_H
  gl_FUNC_WCWIDTH
  if test $HAVE_WCWIDTH = 0 || test $REPLACE_WCWIDTH = 1; then
    AC_LIBOBJ([wcwidth])
  fi
  gl_WCHAR_MODULE_INDICATOR([wcwidth])
  gl_XALLOC
  gl_gnulib_enabled_btowc=false
  gl_gnulib_enabled_configmake=false
  gl_gnulib_enabled_30838f5439487421042f2225bed3af76=false
  gl_gnulib_enabled_intprops=false
  gl_gnulib_enabled_langinfo=false
  gl_gnulib_enabled_localcharset=false
  gl_gnulib_enabled_locale=false
  gl_gnulib_enabled_localeconv=false
  gl_gnulib_enabled_lock=false
  gl_gnulib_enabled_ef455225c00f5049c808c2eda3e76866=false
  gl_gnulib_enabled_mbtowc=false
  gl_gnulib_enabled_mempcpy=false
  gl_gnulib_enabled_f691f076f650964c9f5598c3ee487616=false
  gl_gnulib_enabled_676220fa4366efa9bdbfccf11a857c07=false
  gl_gnulib_enabled_nl_langinfo=false
  gl_gnulib_enabled_size_max=false
  gl_gnulib_enabled_stpcpy=false
  gl_gnulib_enabled_dbb57f49352be8fb86869629a254fb72=false
  gl_gnulib_enabled_strndup=false
  gl_gnulib_enabled_strstr=false
  gl_gnulib_enabled_f84f170cca5f5b09d22686d5b833aa41=false
  gl_gnulib_enabled_threadlib=false
  gl_gnulib_enabled_vasnprintf=false
  gl_gnulib_enabled_wcrtomb=false
  gl_gnulib_enabled_xsize=false
  func_gl_gnulib_m4code_btowc ()
  {
    if ! $gl_gnulib_enabled_btowc; then
      gl_FUNC_BTOWC
      if test $HAVE_BTOWC = 0 || test $REPLACE_BTOWC = 1; then
        AC_LIBOBJ([btowc])
        gl_PREREQ_BTOWC
      fi
      gl_WCHAR_MODULE_INDICATOR([btowc])
      gl_gnulib_enabled_btowc=true
      if test $HAVE_BTOWC = 0 || test $REPLACE_BTOWC = 1; then
        func_gl_gnulib_m4code_mbtowc
      fi
    fi
  }
  func_gl_gnulib_m4code_configmake ()
  {
    if ! $gl_gnulib_enabled_configmake; then
      gl_CONFIGMAKE_PREP
      gl_gnulib_enabled_configmake=true
    fi
  }
  func_gl_gnulib_m4code_30838f5439487421042f2225bed3af76 ()
  {
    if ! $gl_gnulib_enabled_30838f5439487421042f2225bed3af76; then
      gl_HARD_LOCALE
      gl_gnulib_enabled_30838f5439487421042f2225bed3af76=true
    fi
  }
  func_gl_gnulib_m4code_intprops ()
  {
    if ! $gl_gnulib_enabled_intprops; then
      gl_gnulib_enabled_intprops=true
    fi
  }
  func_gl_gnulib_m4code_langinfo ()
  {
    if ! $gl_gnulib_enabled_langinfo; then
      gl_LANGINFO_H
      gl_gnulib_enabled_langinfo=true
    fi
  }
  func_gl_gnulib_m4code_localcharset ()
  {
    if ! $gl_gnulib_enabled_localcharset; then
      gl_LOCALCHARSET
      LOCALCHARSET_TESTS_ENVIRONMENT="CHARSETALIASDIR=\"\$(abs_top_builddir)/$gl_source_base\""
      AC_SUBST([LOCALCHARSET_TESTS_ENVIRONMENT])
      gl_gnulib_enabled_localcharset=true
      func_gl_gnulib_m4code_configmake
    fi
  }
  func_gl_gnulib_m4code_locale ()
  {
    if ! $gl_gnulib_enabled_locale; then
      gl_LOCALE_H
      gl_gnulib_enabled_locale=true
    fi
  }
  func_gl_gnulib_m4code_localeconv ()
  {
    if ! $gl_gnulib_enabled_localeconv; then
      gl_FUNC_LOCALECONV
      if test $REPLACE_LOCALECONV = 1; then
        AC_LIBOBJ([localeconv])
        gl_PREREQ_LOCALECONV
      fi
      gl_LOCALE_MODULE_INDICATOR([localeconv])
      gl_gnulib_enabled_localeconv=true
      func_gl_gnulib_m4code_locale
    fi
  }
  func_gl_gnulib_m4code_lock ()
  {
    if ! $gl_gnulib_enabled_lock; then
      gl_LOCK
      gl_MODULE_INDICATOR([lock])
      gl_gnulib_enabled_lock=true
      func_gl_gnulib_m4code_threadlib
    fi
  }
  func_gl_gnulib_m4code_ef455225c00f5049c808c2eda3e76866 ()
  {
    if ! $gl_gnulib_enabled_ef455225c00f5049c808c2eda3e76866; then
      gl_FUNC_MALLOC_POSIX
      if test $REPLACE_MALLOC = 1; then
        AC_LIBOBJ([malloc])
      fi
      gl_STDLIB_MODULE_INDICATOR([malloc-posix])
      gl_gnulib_enabled_ef455225c00f5049c808c2eda3e76866=true
    fi
  }
  func_gl_gnulib_m4code_mbtowc ()
  {
    if ! $gl_gnulib_enabled_mbtowc; then
      gl_FUNC_MBTOWC
      if test $REPLACE_MBTOWC = 1; then
        AC_LIBOBJ([mbtowc])
        gl_PREREQ_MBTOWC
      fi
      gl_STDLIB_MODULE_INDICATOR([mbtowc])
      gl_gnulib_enabled_mbtowc=true
    fi
  }
  func_gl_gnulib_m4code_mempcpy ()
  {
    if ! $gl_gnulib_enabled_mempcpy; then
      gl_FUNC_MEMPCPY
      if test $HAVE_MEMPCPY = 0; then
        AC_LIBOBJ([mempcpy])
        gl_PREREQ_MEMPCPY
      fi
      gl_STRING_MODULE_INDICATOR([mempcpy])
      gl_gnulib_enabled_mempcpy=true
    fi
  }
  func_gl_gnulib_m4code_f691f076f650964c9f5598c3ee487616 ()
  {
    if ! $gl_gnulib_enabled_f691f076f650964c9f5598c3ee487616; then
      AC_REQUIRE([gl_MSVC_INVAL])
      if test $HAVE_MSVC_INVALID_PARAMETER_HANDLER = 1; then
        AC_LIBOBJ([msvc-inval])
      fi
      gl_gnulib_enabled_f691f076f650964c9f5598c3ee487616=true
    fi
  }
  func_gl_gnulib_m4code_676220fa4366efa9bdbfccf11a857c07 ()
  {
    if ! $gl_gnulib_enabled_676220fa4366efa9bdbfccf11a857c07; then
      AC_REQUIRE([gl_MSVC_NOTHROW])
      if test $HAVE_MSVC_INVALID_PARAMETER_HANDLER = 1; then
        AC_LIBOBJ([msvc-nothrow])
      fi
      gl_gnulib_enabled_676220fa4366efa9bdbfccf11a857c07=true
      func_gl_gnulib_m4code_f691f076f650964c9f5598c3ee487616
    fi
  }
  func_gl_gnulib_m4code_nl_langinfo ()
  {
    if ! $gl_gnulib_enabled_nl_langinfo; then
      gl_FUNC_NL_LANGINFO
      if test $HAVE_NL_LANGINFO = 0 || test $REPLACE_NL_LANGINFO = 1; then
        AC_LIBOBJ([nl_langinfo])
      fi
      gl_LANGINFO_MODULE_INDICATOR([nl_langinfo])
      gl_gnulib_enabled_nl_langinfo=true
      func_gl_gnulib_m4code_langinfo
      if test $HAVE_NL_LANGINFO = 0 || test $REPLACE_NL_LANGINFO = 1; then
        func_gl_gnulib_m4code_localeconv
      fi
    fi
  }
  func_gl_gnulib_m4code_size_max ()
  {
    if ! $gl_gnulib_enabled_size_max; then
      gl_SIZE_MAX
      gl_gnulib_enabled_size_max=true
    fi
  }
  func_gl_gnulib_m4code_stpcpy ()
  {
    if ! $gl_gnulib_enabled_stpcpy; then
      gl_FUNC_STPCPY
      if test $HAVE_STPCPY = 0; then
        AC_LIBOBJ([stpcpy])
        gl_PREREQ_STPCPY
      fi
      gl_STRING_MODULE_INDICATOR([stpcpy])
      gl_gnulib_enabled_stpcpy=true
    fi
  }
  func_gl_gnulib_m4code_dbb57f49352be8fb86869629a254fb72 ()
  {
    if ! $gl_gnulib_enabled_dbb57f49352be8fb86869629a254fb72; then
      AC_REQUIRE([gl_HEADER_ERRNO_H])
      AC_REQUIRE([gl_FUNC_STRERROR_0])
      if test -n "$ERRNO_H" || test $REPLACE_STRERROR_0 = 1; then
        AC_LIBOBJ([strerror-override])
        gl_PREREQ_SYS_H_WINSOCK2
      fi
      gl_gnulib_enabled_dbb57f49352be8fb86869629a254fb72=true
    fi
  }
  func_gl_gnulib_m4code_strndup ()
  {
    if ! $gl_gnulib_enabled_strndup; then
      gl_FUNC_STRNDUP
      if test $HAVE_STRNDUP = 0 || test $REPLACE_STRNDUP = 1; then
        AC_LIBOBJ([strndup])
      fi
      gl_STRING_MODULE_INDICATOR([strndup])
      gl_gnulib_enabled_strndup=true
    fi
  }
  func_gl_gnulib_m4code_strstr ()
  {
    if ! $gl_gnulib_enabled_strstr; then
      gl_FUNC_STRSTR
      if test $REPLACE_STRSTR = 1; then
        AC_LIBOBJ([strstr])
      fi
      gl_gnulib_enabled_strstr=true
      func_gl_gnulib_m4code_f84f170cca5f5b09d22686d5b833aa41
    fi
  }
  func_gl_gnulib_m4code_f84f170cca5f5b09d22686d5b833aa41 ()
  {
    if ! $gl_gnulib_enabled_f84f170cca5f5b09d22686d5b833aa41; then
      gl_FUNC_STRSTR_SIMPLE
      if test $REPLACE_STRSTR = 1; then
        AC_LIBOBJ([strstr])
      fi
      gl_STRING_MODULE_INDICATOR([strstr])
      gl_gnulib_enabled_f84f170cca5f5b09d22686d5b833aa41=true
    fi
  }
  func_gl_gnulib_m4code_threadlib ()
  {
    if ! $gl_gnulib_enabled_threadlib; then
      gl_THREADLIB
      gl_gnulib_enabled_threadlib=true
    fi
  }
  func_gl_gnulib_m4code_vasnprintf ()
  {
    if ! $gl_gnulib_enabled_vasnprintf; then
      gl_FUNC_VASNPRINTF
      gl_gnulib_enabled_vasnprintf=true
      func_gl_gnulib_m4code_xsize
    fi
  }
  func_gl_gnulib_m4code_wcrtomb ()
  {
    if ! $gl_gnulib_enabled_wcrtomb; then
      gl_FUNC_WCRTOMB
      if test $HAVE_WCRTOMB = 0 || test $REPLACE_WCRTOMB = 1; then
        AC_LIBOBJ([wcrtomb])
        gl_PREREQ_WCRTOMB
      fi
      gl_WCHAR_MODULE_INDICATOR([wcrtomb])
      gl_gnulib_enabled_wcrtomb=true
    fi
  }
  func_gl_gnulib_m4code_xsize ()
  {
    if ! $gl_gnulib_enabled_xsize; then
      gl_XSIZE
      gl_gnulib_enabled_xsize=true
      func_gl_gnulib_m4code_size_max
    fi
  }
  if test -n "$ARGZ_H"; then
    func_gl_gnulib_m4code_mempcpy
  fi
  if test -n "$ARGZ_H"; then
    func_gl_gnulib_m4code_stpcpy
  fi
  if test -n "$ARGZ_H"; then
    func_gl_gnulib_m4code_strndup
  fi
  if test -n "$ARGZ_H"; then
    func_gl_gnulib_m4code_strstr
  fi
  if test $ac_cv_lib_error_at_line = no; then
    func_gl_gnulib_m4code_676220fa4366efa9bdbfccf11a857c07
  fi
  if test $HAVE_MBRTOWC = 0 || test $REPLACE_MBRTOWC = 1; then
    func_gl_gnulib_m4code_30838f5439487421042f2225bed3af76
  fi
  if test $HAVE_MBRTOWC = 0 || test $REPLACE_MBRTOWC = 1; then
    func_gl_gnulib_m4code_localcharset
  fi
  if test $ac_use_included_regex = yes; then
    func_gl_gnulib_m4code_btowc
  fi
  if test "$ac_cv_gnu_library_2_1:$ac_use_included_regex" = no:yes; then
    func_gl_gnulib_m4code_lock
  fi
  if test $ac_use_included_regex = yes; then
    func_gl_gnulib_m4code_nl_langinfo
  fi
  if test $ac_use_included_regex = yes; then
    func_gl_gnulib_m4code_wcrtomb
  fi
  if test $ac_cv_func_strdup = no || test $REPLACE_STRDUP = 1; then
    func_gl_gnulib_m4code_ef455225c00f5049c808c2eda3e76866
  fi
  if test $REPLACE_STRERROR = 1; then
    func_gl_gnulib_m4code_intprops
  fi
  if test $REPLACE_STRERROR = 1; then
    func_gl_gnulib_m4code_dbb57f49352be8fb86869629a254fb72
  fi
  if test $HAVE_VASPRINTF = 0 || test $REPLACE_VASPRINTF = 1; then
    func_gl_gnulib_m4code_vasnprintf
  fi
  if test $HAVE_WCWIDTH = 0 || test $REPLACE_WCWIDTH = 1; then
    func_gl_gnulib_m4code_localcharset
  fi
  m4_pattern_allow([^gl_GNULIB_ENABLED_])
  AM_CONDITIONAL([gl_GNULIB_ENABLED_btowc], [$gl_gnulib_enabled_btowc])
  AM_CONDITIONAL([gl_GNULIB_ENABLED_configmake], [$gl_gnulib_enabled_configmake])
  AM_CONDITIONAL([gl_GNULIB_ENABLED_30838f5439487421042f2225bed3af76], [$gl_gnulib_enabled_30838f5439487421042f2225bed3af76])
  AM_CONDITIONAL([gl_GNULIB_ENABLED_intprops], [$gl_gnulib_enabled_intprops])
  AM_CONDITIONAL([gl_GNULIB_ENABLED_langinfo], [$gl_gnulib_enabled_langinfo])
  AM_CONDITIONAL([gl_GNULIB_ENABLED_localcharset], [$gl_gnulib_enabled_localcharset])
  AM_CONDITIONAL([gl_GNULIB_ENABLED_locale], [$gl_gnulib_enabled_locale])
  AM_CONDITIONAL([gl_GNULIB_ENABLED_localeconv], [$gl_gnulib_enabled_localeconv])
  AM_CONDITIONAL([gl_GNULIB_ENABLED_lock], [$gl_gnulib_enabled_lock])
  AM_CONDITIONAL([gl_GNULIB_ENABLED_ef455225c00f5049c808c2eda3e76866], [$gl_gnulib_enabled_ef455225c00f5049c808c2eda3e76866])
  AM_CONDITIONAL([gl_GNULIB_ENABLED_mbtowc], [$gl_gnulib_enabled_mbtowc])
  AM_CONDITIONAL([gl_GNULIB_ENABLED_mempcpy], [$gl_gnulib_enabled_mempcpy])
  AM_CONDITIONAL([gl_GNULIB_ENABLED_f691f076f650964c9f5598c3ee487616], [$gl_gnulib_enabled_f691f076f650964c9f5598c3ee487616])
  AM_CONDITIONAL([gl_GNULIB_ENABLED_676220fa4366efa9bdbfccf11a857c07], [$gl_gnulib_enabled_676220fa4366efa9bdbfccf11a857c07])
  AM_CONDITIONAL([gl_GNULIB_ENABLED_nl_langinfo], [$gl_gnulib_enabled_nl_langinfo])
  AM_CONDITIONAL([gl_GNULIB_ENABLED_size_max], [$gl_gnulib_enabled_size_max])
  AM_CONDITIONAL([gl_GNULIB_ENABLED_stpcpy], [$gl_gnulib_enabled_stpcpy])
  AM_CONDITIONAL([gl_GNULIB_ENABLED_dbb57f49352be8fb86869629a254fb72], [$gl_gnulib_enabled_dbb57f49352be8fb86869629a254fb72])
  AM_CONDITIONAL([gl_GNULIB_ENABLED_strndup], [$gl_gnulib_enabled_strndup])
  AM_CONDITIONAL([gl_GNULIB_ENABLED_strstr], [$gl_gnulib_enabled_strstr])
  AM_CONDITIONAL([gl_GNULIB_ENABLED_f84f170cca5f5b09d22686d5b833aa41], [$gl_gnulib_enabled_f84f170cca5f5b09d22686d5b833aa41])
  AM_CONDITIONAL([gl_GNULIB_ENABLED_threadlib], [$gl_gnulib_enabled_threadlib])
  AM_CONDITIONAL([gl_GNULIB_ENABLED_vasnprintf], [$gl_gnulib_enabled_vasnprintf])
  AM_CONDITIONAL([gl_GNULIB_ENABLED_wcrtomb], [$gl_gnulib_enabled_wcrtomb])
  AM_CONDITIONAL([gl_GNULIB_ENABLED_xsize], [$gl_gnulib_enabled_xsize])
  # End of code from modules
  m4_ifval(gl_LIBSOURCES_LIST, [
    m4_syscmd([test ! -d ]m4_defn([gl_LIBSOURCES_DIR])[ ||
      for gl_file in ]gl_LIBSOURCES_LIST[ ; do
        if test ! -r ]m4_defn([gl_LIBSOURCES_DIR])[/$gl_file ; then
          echo "missing file ]m4_defn([gl_LIBSOURCES_DIR])[/$gl_file" >&2
          exit 1
        fi
      done])dnl
      m4_if(m4_sysval, [0], [],
        [AC_FATAL([expected source file, required through AC_LIBSOURCES, not found])])
  ])
  m4_popdef([gl_LIBSOURCES_DIR])
  m4_popdef([gl_LIBSOURCES_LIST])
  m4_popdef([AC_LIBSOURCES])
  m4_popdef([AC_REPLACE_FUNCS])
  m4_popdef([AC_LIBOBJ])
  AC_CONFIG_COMMANDS_PRE([
    gl_libobjs=
    gl_ltlibobjs=
    if test -n "$gl_LIBOBJS"; then
      # Remove the extension.
      sed_drop_objext='s/\.o$//;s/\.obj$//'
      for i in `for i in $gl_LIBOBJS; do echo "$i"; done | sed -e "$sed_drop_objext" | sort | uniq`; do
        gl_libobjs="$gl_libobjs $i.$ac_objext"
        gl_ltlibobjs="$gl_ltlibobjs $i.lo"
      done
    fi
    AC_SUBST([gl_LIBOBJS], [$gl_libobjs])
    AC_SUBST([gl_LTLIBOBJS], [$gl_ltlibobjs])
  ])
  gltests_libdeps=
  gltests_ltlibdeps=
  m4_pushdef([AC_LIBOBJ], m4_defn([gltests_LIBOBJ]))
  m4_pushdef([AC_REPLACE_FUNCS], m4_defn([gltests_REPLACE_FUNCS]))
  m4_pushdef([AC_LIBSOURCES], m4_defn([gltests_LIBSOURCES]))
  m4_pushdef([gltests_LIBSOURCES_LIST], [])
  m4_pushdef([gltests_LIBSOURCES_DIR], [])
  gl_COMMON
  gl_source_base='tests'
changequote(,)dnl
  gltests_WITNESS=IN_`echo "${PACKAGE-$PACKAGE_TARNAME}" | LC_ALL=C tr abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ | LC_ALL=C sed -e 's/[^A-Z0-9_]/_/g'`_GNULIB_TESTS
changequote([, ])dnl
  AC_SUBST([gltests_WITNESS])
  gl_module_indicator_condition=$gltests_WITNESS
  m4_pushdef([gl_MODULE_INDICATOR_CONDITION], [$gl_module_indicator_condition])
  m4_pattern_allow([^gl_GNULIB_ENABLED_])
  m4_popdef([gl_MODULE_INDICATOR_CONDITION])
  m4_ifval(gltests_LIBSOURCES_LIST, [
    m4_syscmd([test ! -d ]m4_defn([gltests_LIBSOURCES_DIR])[ ||
      for gl_file in ]gltests_LIBSOURCES_LIST[ ; do
        if test ! -r ]m4_defn([gltests_LIBSOURCES_DIR])[/$gl_file ; then
          echo "missing file ]m4_defn([gltests_LIBSOURCES_DIR])[/$gl_file" >&2
          exit 1
        fi
      done])dnl
      m4_if(m4_sysval, [0], [],
        [AC_FATAL([expected source file, required through AC_LIBSOURCES, not found])])
  ])
  m4_popdef([gltests_LIBSOURCES_DIR])
  m4_popdef([gltests_LIBSOURCES_LIST])
  m4_popdef([AC_LIBSOURCES])
  m4_popdef([AC_REPLACE_FUNCS])
  m4_popdef([AC_LIBOBJ])
  AC_CONFIG_COMMANDS_PRE([
    gltests_libobjs=
    gltests_ltlibobjs=
    if test -n "$gltests_LIBOBJS"; then
      # Remove the extension.
      sed_drop_objext='s/\.o$//;s/\.obj$//'
      for i in `for i in $gltests_LIBOBJS; do echo "$i"; done | sed -e "$sed_drop_objext" | sort | uniq`; do
        gltests_libobjs="$gltests_libobjs $i.$ac_objext"
        gltests_ltlibobjs="$gltests_ltlibobjs $i.lo"
      done
    fi
    AC_SUBST([gltests_LIBOBJS], [$gltests_libobjs])
    AC_SUBST([gltests_LTLIBOBJS], [$gltests_ltlibobjs])
  ])
  LIBGNU_LIBDEPS="$gl_libdeps"
  AC_SUBST([LIBGNU_LIBDEPS])
  LIBGNU_LTLIBDEPS="$gl_ltlibdeps"
  AC_SUBST([LIBGNU_LTLIBDEPS])
])

# Like AC_LIBOBJ, except that the module name goes
# into gl_LIBOBJS instead of into LIBOBJS.
AC_DEFUN([gl_LIBOBJ], [
  AS_LITERAL_IF([$1], [gl_LIBSOURCES([$1.c])])dnl
  gl_LIBOBJS="$gl_LIBOBJS $1.$ac_objext"
])

# Like AC_REPLACE_FUNCS, except that the module name goes
# into gl_LIBOBJS instead of into LIBOBJS.
AC_DEFUN([gl_REPLACE_FUNCS], [
  m4_foreach_w([gl_NAME], [$1], [AC_LIBSOURCES(gl_NAME[.c])])dnl
  AC_CHECK_FUNCS([$1], , [gl_LIBOBJ($ac_func)])
])

# Like AC_LIBSOURCES, except the directory where the source file is
# expected is derived from the gnulib-tool parameterization,
# and alloca is special cased (for the alloca-opt module).
# We could also entirely rely on EXTRA_lib..._SOURCES.
AC_DEFUN([gl_LIBSOURCES], [
  m4_foreach([_gl_NAME], [$1], [
    m4_if(_gl_NAME, [alloca.c], [], [
      m4_define([gl_LIBSOURCES_DIR], [gnulib/lib])
      m4_append([gl_LIBSOURCES_LIST], _gl_NAME, [ ])
    ])
  ])
])

# Like AC_LIBOBJ, except that the module name goes
# into gltests_LIBOBJS instead of into LIBOBJS.
AC_DEFUN([gltests_LIBOBJ], [
  AS_LITERAL_IF([$1], [gltests_LIBSOURCES([$1.c])])dnl
  gltests_LIBOBJS="$gltests_LIBOBJS $1.$ac_objext"
])

# Like AC_REPLACE_FUNCS, except that the module name goes
# into gltests_LIBOBJS instead of into LIBOBJS.
AC_DEFUN([gltests_REPLACE_FUNCS], [
  m4_foreach_w([gl_NAME], [$1], [AC_LIBSOURCES(gl_NAME[.c])])dnl
  AC_CHECK_FUNCS([$1], , [gltests_LIBOBJ($ac_func)])
])

# Like AC_LIBSOURCES, except the directory where the source file is
# expected is derived from the gnulib-tool parameterization,
# and alloca is special cased (for the alloca-opt module).
# We could also entirely rely on EXTRA_lib..._SOURCES.
AC_DEFUN([gltests_LIBSOURCES], [
  m4_foreach([_gl_NAME], [$1], [
    m4_if(_gl_NAME, [alloca.c], [], [
      m4_define([gltests_LIBSOURCES_DIR], [tests])
      m4_append([gltests_LIBSOURCES_LIST], _gl_NAME, [ ])
    ])
  ])
])

# This macro records the list of files which have been installed by
# gnulib-tool and may be removed by future gnulib-tool invocations.
AC_DEFUN([gl_FILE_LIST], [
  build-aux/config.rpath
  build-aux/snippet/_Noreturn.h
  build-aux/snippet/arg-nonnull.h
  build-aux/snippet/c++defs.h
  build-aux/snippet/warn-on-use.h
  lib/alloca.in.h
  lib/argz.c
  lib/argz.in.h
  lib/asnprintf.c
  lib/asprintf.c
  lib/btowc.c
  lib/config.charset
  lib/errno.in.h
  lib/error.c
  lib/error.h
  lib/exitfail.c
  lib/exitfail.h
  lib/float+.h
  lib/float.c
  lib/float.in.h
  lib/getopt.c
  lib/getopt.in.h
  lib/getopt1.c
  lib/getopt_int.h
  lib/gettext.h
  lib/glthread/lock.c
  lib/glthread/lock.h
  lib/glthread/threadlib.c
  lib/hard-locale.c
  lib/hard-locale.h
  lib/intprops.h
  lib/iswblank.c
  lib/itold.c
  lib/langinfo.in.h
  lib/localcharset.c
  lib/localcharset.h
  lib/locale.in.h
  lib/localeconv.c
  lib/malloc.c
  lib/malloca.c
  lib/malloca.h
  lib/malloca.valgrind
  lib/mbchar.c
  lib/mbchar.h
  lib/mbiter.c
  lib/mbiter.h
  lib/mbrtowc.c
  lib/mbscasecmp.c
  lib/mbschr.c
  lib/mbsinit.c
  lib/mbslen.c
  lib/mbsncasecmp.c
  lib/mbsstr.c
  lib/mbswidth.c
  lib/mbswidth.h
  lib/mbtowc-impl.h
  lib/mbtowc.c
  lib/mbuiter.c
  lib/mbuiter.h
  lib/memchr.c
  lib/memchr.valgrind
  lib/mempcpy.c
  lib/memrchr.c
  lib/msvc-inval.c
  lib/msvc-inval.h
  lib/msvc-nothrow.c
  lib/msvc-nothrow.h
  lib/nl_langinfo.c
  lib/printf-args.c
  lib/printf-args.h
  lib/printf-parse.c
  lib/printf-parse.h
  lib/ref-add.sin
  lib/ref-del.sin
  lib/regcomp.c
  lib/regex.c
  lib/regex.h
  lib/regex_internal.c
  lib/regex_internal.h
  lib/regexec.c
  lib/size_max.h
  lib/stdarg.in.h
  lib/stdbool.in.h
  lib/stddef.in.h
  lib/stdint.in.h
  lib/stdio.in.h
  lib/stdlib.in.h
  lib/stpcpy.c
  lib/str-kmp.h
  lib/str-two-way.h
  lib/strcasecmp.c
  lib/strcasestr.c
  lib/strdup.c
  lib/streq.h
  lib/strerror-override.c
  lib/strerror-override.h
  lib/strerror.c
  lib/string.in.h
  lib/strings.in.h
  lib/strncasecmp.c
  lib/strndup.c
  lib/strnlen.c
  lib/strnlen1.c
  lib/strnlen1.h
  lib/strstr.c
  lib/sys_types.in.h
  lib/unistd.c
  lib/unistd.in.h
  lib/unitypes.in.h
  lib/uniwidth.in.h
  lib/uniwidth/cjk.h
  lib/uniwidth/width.c
  lib/vasnprintf.c
  lib/vasnprintf.h
  lib/vasprintf.c
  lib/verify.h
  lib/wchar.in.h
  lib/wcrtomb.c
  lib/wctype-h.c
  lib/wctype.in.h
  lib/wcwidth.c
  lib/xalloc-die.c
  lib/xalloc-oversized.h
  lib/xalloc.h
  lib/xmalloc.c
  lib/xsize.c
  lib/xsize.h
  m4/00gnulib.m4
  m4/absolute-header.m4
  m4/alloca.m4
  m4/argz.m4
  m4/btowc.m4
  m4/codeset.m4
  m4/configmake.m4
  m4/eealloc.m4
  m4/errno_h.m4
  m4/error.m4
  m4/exponentd.m4
  m4/extensions.m4
  m4/extern-inline.m4
  m4/fcntl-o.m4
  m4/float_h.m4
  m4/getopt.m4
  m4/gettext.m4
  m4/glibc2.m4
  m4/glibc21.m4
  m4/gnulib-common.m4
  m4/hard-locale.m4
  m4/iconv.m4
  m4/include_next.m4
  m4/intdiv0.m4
  m4/intl.m4
  m4/intldir.m4
  m4/intlmacosx.m4
  m4/intmax.m4
  m4/intmax_t.m4
  m4/inttypes-pri.m4
  m4/inttypes_h.m4
  m4/iswblank.m4
  m4/langinfo_h.m4
  m4/lcmessage.m4
  m4/lib-ld.m4
  m4/lib-link.m4
  m4/lib-prefix.m4
  m4/libunistring-base.m4
  m4/localcharset.m4
  m4/locale-fr.m4
  m4/locale-ja.m4
  m4/locale-zh.m4
  m4/locale_h.m4
  m4/localeconv.m4
  m4/lock.m4
  m4/longlong.m4
  m4/malloc.m4
  m4/malloca.m4
  m4/math_h.m4
  m4/mbchar.m4
  m4/mbiter.m4
  m4/mbrtowc.m4
  m4/mbsinit.m4
  m4/mbslen.m4
  m4/mbstate_t.m4
  m4/mbswidth.m4
  m4/mbtowc.m4
  m4/memchr.m4
  m4/mempcpy.m4
  m4/memrchr.m4
  m4/mmap-anon.m4
  m4/msvc-inval.m4
  m4/msvc-nothrow.m4
  m4/multiarch.m4
  m4/nl_langinfo.m4
  m4/nls.m4
  m4/nocrash.m4
  m4/off_t.m4
  m4/onceonly.m4
  m4/po.m4
  m4/printf-posix.m4
  m4/printf.m4
  m4/progtest.m4
  m4/regex.m4
  m4/size_max.m4
  m4/ssize_t.m4
  m4/stdarg.m4
  m4/stdbool.m4
  m4/stddef_h.m4
  m4/stdint.m4
  m4/stdint_h.m4
  m4/stdio_h.m4
  m4/stdlib_h.m4
  m4/stpcpy.m4
  m4/strcase.m4
  m4/strcasestr.m4
  m4/strdup.m4
  m4/strerror.m4
  m4/string_h.m4
  m4/strings_h.m4
  m4/strndup.m4
  m4/strnlen.m4
  m4/strstr.m4
  m4/sys_socket_h.m4
  m4/sys_types_h.m4
  m4/threadlib.m4
  m4/uintmax_t.m4
  m4/unistd_h.m4
  m4/vasnprintf.m4
  m4/vasprintf.m4
  m4/visibility.m4
  m4/warn-on-use.m4
  m4/wchar_h.m4
  m4/wchar_t.m4
  m4/wcrtomb.m4
  m4/wctype_h.m4
  m4/wcwidth.m4
  m4/wint_t.m4
  m4/xalloc.m4
  m4/xsize.m4
])
