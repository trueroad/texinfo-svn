#serial 38

dnl We use gl_ for non Autoconf macros.
m4_pattern_forbid([^gl_[ABCDEFGHIJKLMNOPQRSTUVXYZ]])dnl

# These are the prerequisite macros for files in the lib/
# directory of the coreutils package.

AC_DEFUN([gl_PREREQ],
[
  # We don't yet use c-stack.c.
  # AC_REQUIRE([gl_C_STACK])

  AC_REQUIRE([AM_FUNC_GETLINE])
  AC_REQUIRE([AM_STDBOOL_H])
  AC_REQUIRE([UTILS_FUNC_MKDIR_TRAILING_SLASH])
  AC_REQUIRE([UTILS_FUNC_MKSTEMP])
  AC_REQUIRE([gl_BACKUPFILE])
  AC_REQUIRE([gl_CANON_HOST])
  AC_REQUIRE([gl_CLOSEOUT])
  AC_REQUIRE([gl_DIRNAME])
  AC_REQUIRE([gl_ERROR])
  AC_REQUIRE([gl_EXCLUDE])
  AC_REQUIRE([gl_EXITFAIL])
  AC_REQUIRE([gl_FILEBLOCKS])
  AC_REQUIRE([gl_FILEMODE])
  AC_REQUIRE([gl_FILE_TYPE])
  AC_REQUIRE([gl_FSUSAGE])
  AC_REQUIRE([gl_FUNC_ALLOCA])
  AC_REQUIRE([gl_FUNC_ATEXIT])
  AC_REQUIRE([gl_FUNC_DUP2])
  AC_REQUIRE([gl_FUNC_EUIDACCESS])
  AC_REQUIRE([gl_FUNC_FNMATCH_GNU])
  AC_REQUIRE([gl_FUNC_GETHOSTNAME])
  AC_REQUIRE([AC_FUNC_GETLOADAVG])
  AC_REQUIRE([gl_FUNC_GETPASS])
  AC_REQUIRE([gl_FUNC_GETUSERSHELL])
  AC_REQUIRE([gl_FUNC_MEMCHR])
  AC_REQUIRE([gl_FUNC_MEMCPY])
  AC_REQUIRE([gl_FUNC_MEMMOVE])
  AC_REQUIRE([gl_FUNC_MEMRCHR])
  AC_REQUIRE([gl_FUNC_MEMSET])
  AC_REQUIRE([gl_FUNC_MKTIME])
  AC_REQUIRE([gl_FUNC_READLINK])
  AC_REQUIRE([gl_FUNC_RMDIR])
  AC_REQUIRE([gl_FUNC_RPMATCH])
  AC_REQUIRE([gl_FUNC_SIG2STR])
  AC_REQUIRE([gl_FUNC_STPCPY])
  AC_REQUIRE([gl_FUNC_STRCSPN])
  AC_REQUIRE([gl_FUNC_STRDUP])
  AC_REQUIRE([gl_FUNC_STRNDUP])
  AC_REQUIRE([gl_FUNC_STRNLEN])
  AC_REQUIRE([gl_FUNC_STRPBRK])
  AC_REQUIRE([gl_FUNC_STRSTR])
  AC_REQUIRE([gl_FUNC_STRTOD])
  AC_REQUIRE([gl_FUNC_STRTOIMAX])
  AC_REQUIRE([gl_FUNC_STRTOLL])
  AC_REQUIRE([gl_FUNC_STRTOL])
  AC_REQUIRE([gl_FUNC_STRTOULL])
  AC_REQUIRE([gl_FUNC_STRTOUL])
  AC_REQUIRE([gl_FUNC_STRTOUMAX])
  AC_REQUIRE([gl_FUNC_STRVERSCMP])
  AC_REQUIRE([gl_FUNC_VASNPRINTF])
  AC_REQUIRE([gl_FUNC_VASPRINTF])
  AC_REQUIRE([gl_GETDATE])
  AC_REQUIRE([gl_GETNDELIM2])
  AC_REQUIRE([gl_GETOPT])
  AC_REQUIRE([gl_GETPAGESIZE])
  AC_REQUIRE([gl_GETUGROUPS])
  AC_REQUIRE([gl_HARD_LOCALE])
  AC_REQUIRE([gl_HASH])
  AC_REQUIRE([gl_HUMAN])
  AC_REQUIRE([gl_IDCACHE])
  AC_REQUIRE([gl_LONG_OPTIONS])
  AC_REQUIRE([gl_MAKEPATH])
  AC_REQUIRE([gl_MBSWIDTH])
  AC_REQUIRE([gl_MD5])
  AC_REQUIRE([gl_MEMCOLL])
  AC_REQUIRE([gl_MODECHANGE])
  AC_REQUIRE([gl_MOUNTLIST])
  AC_REQUIRE([gl_OBSTACK])
  AC_REQUIRE([gl_PATHMAX])
  AC_REQUIRE([gl_PATH_CONCAT])
  AC_REQUIRE([gl_PHYSMEM])
  AC_REQUIRE([gl_POSIXTM])
  AC_REQUIRE([gl_POSIXVER])
  AC_REQUIRE([gl_QUOTEARG])
  AC_REQUIRE([gl_QUOTE])
  AC_REQUIRE([gl_READTOKENS])
  AC_REQUIRE([gl_READUTMP])
  AC_REQUIRE([gl_REGEX])
  AC_REQUIRE([gl_SAFE_READ])
  AC_REQUIRE([gl_SAFE_WRITE])
  AC_REQUIRE([gl_SAME])
  AC_REQUIRE([gl_SAVEDIR])
  AC_REQUIRE([gl_SAVE_CWD])
  AC_REQUIRE([gl_SETTIME])
  AC_REQUIRE([gl_SHA])
  AC_REQUIRE([gl_STDIO_SAFER])
  AC_REQUIRE([gl_STRCASE])
  AC_REQUIRE([gl_TIMESPEC])
  AC_REQUIRE([gl_UNICODEIO])
  AC_REQUIRE([gl_UNISTD_SAFER])
  AC_REQUIRE([gl_USERSPEC])
  AC_REQUIRE([gl_UTIMENS])
  AC_REQUIRE([gl_XALLOC])
  AC_REQUIRE([gl_XGETCWD])
  AC_REQUIRE([gl_XREADLINK])
  AC_REQUIRE([gl_XSTRTOD])
  AC_REQUIRE([gl_XSTRTOL])
  AC_REQUIRE([gl_YESNO])
  AC_REQUIRE([gl_FUNC_GLIBC_UNLOCKED_IO])
  AC_REQUIRE([gl_FUNC_GNU_STRFTIME])
  AC_REQUIRE([gl_FUNC_LSTAT])
  AC_REQUIRE([AC_FUNC_MALLOC])
  AC_REQUIRE([gl_FUNC_MEMCMP])
  AC_REQUIRE([gl_FUNC_NANOSLEEP])
  AC_REQUIRE([gl_FUNC_PUTENV])
  AC_REQUIRE([AC_FUNC_REALLOC])
  AC_REQUIRE([gl_FUNC_STAT])
  AC_REQUIRE([gl_FUNC_UTIME])
  AC_REQUIRE([gl_XSTRTOIMAX])
  AC_REQUIRE([gl_XSTRTOUMAX])
  AC_REQUIRE([vb_FUNC_RENAME])
])
