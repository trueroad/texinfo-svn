/* info.c -- Display nodes of Info files in multiple windows.
   $Id$

   Copyright 1993, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003,
   2004, 2005, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014
   Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.

   Originally written by Brian Fox.  */

#include "info.h"
#include "indices.h"
#include "dribble.h"
#include "getopt.h"
#include "man.h"
#include "variables.h"

char *program_name = "info";

/* Non-zero means search all indices for APROPOS_SEARCH_STRING. */
static int apropos_p = 0;

/* Variable containing the string to search for when apropos_p is non-zero. */
static char *apropos_search_string = NULL;

/* Non-zero means search all indices for INDEX_SEARCH_STRING.  Unlike
   apropos, this puts the user at the node, running info. */
static int index_search_p = 0;

/* Non-zero means look for the node which describes the invocation
   and command-line options of the program, and start the info
   session at that node.  */
static int goto_invocation_p = 0;

/* Variable containing the string to search for when index_search_p is
   non-zero. */
static char *index_search_string = NULL;

/* Non-zero means print version info only. */
static int print_version_p = 0;

/* Non-zero means print a short description of the options. */
static int print_help_p = 0;

/* Name of file to start session with. */
static char *initial_file = 0;

/* Array of the names of nodes that the user specified with "--node" on the
   command line. */
static char **user_nodenames = NULL;
static size_t user_nodenames_index = 0;
static size_t user_nodenames_slots = 0;

/* References to the nodes to start the session with. */
static REFERENCE **ref_list = NULL;
static size_t ref_slots = 0;
static size_t ref_index = 0;

/* String specifying the first file to load.  This string can only be set
   by the user specifying "--file" on the command line. */
static char *user_filename = NULL;

/* String specifying the name of the file to dump nodes to.  This value is
   filled if the user speficies "--output" on the command line. */
static char *user_output_filename = NULL;

/* Non-zero indicates that when "--output" is specified, all of the menu
   items of the specified nodes (and their subnodes as well) should be
   dumped in the order encountered.  This basically can print a book. */
int dump_subnodes = 0;

/* Non-zero means make default keybindings be loosely modeled on vi(1).  */
int vi_keys_p = 0;

/* Non-zero means don't remove ANSI escape sequences.  */
int raw_escapes_p = 1;

/* Print/visit all matching documents. */
static int all_matches_p = 0;

/* Non-zero means print the absolute location of the file to be loaded.  */
static int print_where_p = 0;

/* Debugging level */
unsigned debug_level;

/* Non-zero means don't try to be smart when searching for nodes.  */
int strict_node_location_p = 0;

#if defined(__MSDOS__) || defined(__MINGW32__)
/* Non-zero indicates that screen output should be made 'speech-friendly'.
   Since on MSDOS the usual behavior is to write directly to the video
   memory, speech synthesizer software cannot grab the output.  Therefore,
   we provide a user option which tells us to avoid direct screen output
   and use stdout instead (which loses the color output).  */
int speech_friendly = 0;
#endif

/* Structure describing the options that Info accepts.  We pass this structure
   to getopt_long ().  If you add or otherwise change this structure, you must
   also change the string which follows it. */
#define DRIBBLE_OPTION 2
#define RESTORE_OPTION 3
#define IDXSRCH_OPTION 4
#define INITFLE_OPTION 5

static struct option long_options[] = {
  { "all", 0, 0, 'a' },
  { "apropos", 1, 0, 'k' },
  { "debug", 1, 0, 'x' },
  { "directory", 1, 0, 'd' },
  { "dribble", 1, 0, DRIBBLE_OPTION },
  { "file", 1, 0, 'f' },
  { "help", 0, &print_help_p, 1 },
  { "index-search", 1, 0, IDXSRCH_OPTION },
  { "init-file", 1, 0, INITFLE_OPTION },
  { "location", 0, &print_where_p, 1 },
  { "node", 1, 0, 'n' },
  { "output", 1, 0, 'o' },
  { "raw-escapes", 0, &raw_escapes_p, 1 },
  { "no-raw-escapes", 0, &raw_escapes_p, 0 },
  { "show-malformed-multibytes", 0, &show_malformed_multibyte_p, 1 },
  { "no-show-malformed-multibytes", 0, &show_malformed_multibyte_p, 0 },
  { "restore", 1, 0, RESTORE_OPTION },
  { "show-options", 0, 0, 'O' },
  { "strict-node-location", 0, &strict_node_location_p, 1 },
  { "subnodes", 0, &dump_subnodes, 1 },
  { "usage", 0, 0, 'O' },
  { "variable", 1, 0, 'v' },
  { "version", 0, &print_version_p, 1 },
  { "vi-keys", 0, &vi_keys_p, 1 },
  { "where", 0, &print_where_p, 1 },
#if defined(__MSDOS__) || defined(__MINGW32__)
  { "speech-friendly", 0, &speech_friendly, 1 },
#endif
  {NULL, 0, NULL, 0}
};

/* String describing the shorthand versions of the long options found above. */
#if defined(__MSDOS__) || defined(__MINGW32__)
static char *short_options = "ak:d:n:f:ho:ORsv:wbx:";
#else
static char *short_options = "ak:d:n:f:ho:ORv:wsx:";
#endif

/* When non-zero, the Info window system has been initialized. */
int info_windows_initialized_p = 0;

/* Some "forward" declarations. */
static void info_short_help (void);
static void init_messages (void);


/* Set INITIAL_FILE to the name of the initial Info file, either by
   following menus from "(dir)Top", or what the user specifed with
   values in FILENAME. */
static void
get_initial_file (char *filename, int *argc, char ***argv, char **error)
{
  REFERENCE *entry;

  /* If there are any more arguments, the initial file is the
     dir entry given by the first one. */
  if (!filename && (*argv)[0])
    {
      /* If they say info -O info, we want to show them the invocation node
         for standalone info; there's nothing useful in info.texi.  */
      if (goto_invocation_p && (*argv)[0]
          && mbscasecmp ((*argv)[0], "info") == 0)
        (*argv)[0] = "info-stnd";

      entry = lookup_dir_entry ((*argv)[0], 0);
      if (entry)
        {
          initial_file = info_find_fullpath (entry->filename, 0);
          if (initial_file)
            {
              (*argv)++; /* Advance past first remaining argument. */
              (*argc)--;

              /* Store full path, so that we find the already loaded file in
                 info_find_file, and show the full path if --where is used. */
              entry->filename = initial_file;
              add_pointer_to_array (info_copy_reference (entry),
                  ref_index, ref_list, ref_slots, 2);
              return;
            }
        }
    }

  /* User used "--file". */
  if (filename)
    {
      initial_file = info_find_fullpath (filename, 0);

      if (!initial_file)
        {
          if (filesys_error_number)
            *error = filesys_error_string (filename, filesys_error_number);
        }
      else
        return;
    }

  /* File name lookup. */
  if (!filename && (*argv)[0])
    {
      /* Try finding a file with this name, in case
         it exists, but wasn't listed in dir. */
      initial_file = info_find_fullpath ((*argv)[0], 0);
      if (initial_file)
        {
          (*argv)++; /* Advance past first remaining argument. */
          (*argc)--;
          return;
        }
      else
        asprintf (error, _("No menu item `%s' in node `%s'."),
            (*argv)[0], "(dir)Top");
    }

  /* Fall back to loading man page. */
  if (filename || (*argv)[0])
    {
      NODE *man_node;

      debug (3, ("falling back to manpage node"));

      man_node = get_manpage_node (filename ? filename : (*argv)[0]);
      if (man_node)
        {
          add_pointer_to_array
            (info_new_reference (MANPAGE_FILE_BUFFER_NAME,
               filename ? filename : (*argv)[0]),
             ref_index, ref_list, ref_slots, 2);

          initial_file = MANPAGE_FILE_BUFFER_NAME;
          return;
        }
    }

  /* Inexact dir lookup. */
  if (!filename && (*argv)[0])
    {
      entry = lookup_dir_entry ((*argv)[0], 1);
      if (entry)
        {
          (*argv)++; /* Advance past first remaining argument. */
          (*argc)--;
          /* Clear error message. */
          free (*error);
          *error = 0;

          initial_file = info_find_fullpath (entry->filename, 0);
          /* Store full path, so that we find the already loaded file in
             info_find_file, and show the full path if --where is used. */
          entry->filename = initial_file;
          add_pointer_to_array (info_copy_reference (entry),
              ref_index, ref_list, ref_slots, 2);
          return;
        }
    }

  /* Otherwise, we want the dir node.  The only node to be displayed
     or output will be "Top". */
  return;
}

/* Expand list of nodes to be loaded. */
static void
add_initial_nodes (FILE_BUFFER *initial_file, int argc, char **argv,
                   char **error)
{
  /* Add nodes specified with --node. */
  if (user_nodenames)
    {
      int i;

      if (ref_index > 0)
        {
          /* Discard a dir entry that was found. */
          info_reference_free (ref_list[0]);
          ref_index = 0;
        }

      for (i = 0; user_nodenames[i]; i++)
        {
          char *node_filename;

          /* Parse node spec to support invoking
             like info --node "(emacs)Buffers". */
          info_parse_node (user_nodenames[i]);
          if (info_parsed_filename)
            node_filename = xstrdup (info_parsed_filename);
          else
            {
              if (!initial_file)
                {
                  asprintf (error, _("No file given for node `%s'."),
                            user_nodenames[i]);
                  continue;
                }
              node_filename = initial_file->fullpath;
            }

          add_pointer_to_array
            (info_new_reference (node_filename,
               xstrdup (info_parsed_nodename)),
             ref_index, ref_list, ref_slots, 2);
        }
    }

  if (!initial_file)
    return;

  if (goto_invocation_p)
    {
      NODE *top_node;
      REFERENCE *invoc_ref = 0;

      char **p = argv;
      char *program;

      if (ref_index > 0)
        {
          /* Discard a dir entry that was found. */
          info_reference_free (ref_list[0]);
          ref_index = 0;
        }

      /* If they said "info --show-options foo bar baz",
         the last of the arguments is the program whose
         options they want to see.  */
      p = argv;
      if (*p)
        {
          while (p[1])
            p++;
          program = xstrdup (*p);
        }
      else if (initial_file->filename)
        /* If there's no command-line arguments to
           supply the program name, use the Info file
           name (sans extension and leading directories)
           instead.  */
        program = program_name_from_file_name (initial_file->filename);
      else
        program = xstrdup ("");
      
      top_node = info_get_node_of_file_buffer (initial_file, "Top");
      invoc_ref = info_intuit_options_node (top_node, program);
      if (invoc_ref)
        {
          add_pointer_to_array (info_copy_reference (invoc_ref),
            ref_index, ref_list, ref_slots, 2);
        }
      free (program);
    }

  /* If there are arguments remaining, they are the names of menu items
     in sequential info files starting from the first one loaded. */
  else if (*argv)
    {
      NODE *initial_node; /* Node to start following menus from. */
      NODE *node_via_menus;

      if (ref_index == 0)
        add_pointer_to_array
          (info_new_reference (xstrdup (initial_file->fullpath),
                               xstrdup ("Top")),
           ref_index, ref_list, ref_slots, 2);

      initial_node = info_get_node_with_defaults (ref_list[0]->filename,
                                                  ref_list[0]->nodename, 0);
      if (!initial_node)
        return;

      node_via_menus = info_follow_menus (initial_node, argv, error, 1);
      if (node_via_menus)
        {
          argv += argc; argc = 0;

          info_reference_free (ref_list[0]);
          ref_list[0] = info_new_reference (node_via_menus->fullpath,
                                            node_via_menus->nodename);
          free (node_via_menus);
        }

      /* If no nodes found, and there is exactly one argument remaining,
         check for it as an index entry. */
      else if (argc == 1 && argv[0])
        {
          REFERENCE **index;
          REFERENCE **index_ptr;

          REFERENCE *nearest = 0;

          debug (3, ("looking in indices"));
          index = info_indices_of_file_buffer (initial_file);

          for (index_ptr = index; index && *index_ptr; index_ptr++)
            {
              if (!strcmp (argv[0], (*index_ptr)->label))
                {
                  nearest = *index_ptr;
                  break;
                }
              /* Case-insensitive initial substring. */
              if (!nearest && !mbsncasecmp (argv[0], (*index_ptr)->label,
                                            mbslen (argv[0])))
                nearest = *index_ptr;
            }

          if (nearest)
            {
              argv += argc; argc = 0;
              free (*error); *error = 0;

              info_reference_free (ref_list[0]);
              ref_list[0] = info_copy_reference (nearest);
            }
        }

      /* If there are arguments remaining, follow menus
         inexactly. */
      if (argc != 0)
        {
          initial_node = info_get_node_with_defaults (ref_list[0]->filename,
                                                      ref_list[0]->nodename,
                                                      0);
          node_via_menus = info_follow_menus (initial_node, argv, error, 0);
          if (node_via_menus)
            {
              argv += argc; argc = 0;

              info_reference_free (ref_list[0]);
              ref_list[0] = info_new_reference (node_via_menus->fullpath,
                                                node_via_menus->nodename);
              free (node_via_menus);
            }
        }
    }

  /* Default is "Top" if there were no other nodes. */
  if (ref_index == 0)
    {
      add_pointer_to_array (info_new_reference (initial_file->fullpath, "Top"),
        ref_index, ref_list, ref_slots, 2);
    }

  return;
}

static void
info_find_matching_files (char *filename)
{
  int i;
  char *searchdir;

  NODE *man_node;

  /* Check for dir entries first. */
  i = 0;
  for (searchdir = infopath_first (&i); searchdir;
       searchdir = infopath_next (&i))
    {
      REFERENCE *new_ref = dir_entry_of_infodir (filename, searchdir);

      if (new_ref)
        add_pointer_to_array (new_ref, ref_index, ref_list, ref_slots, 2);
    }

  /* Look for files with matching names. */
  i = 0;
  while (1)
    {
      char *p;
      int j;

      p = info_file_find_next_in_path (filename, &i, 0);
      if (!p)
        break;

      /* Add to list only if the file is not in the list already (which would
         happen if there was a dir entry with the label and filename both
         being this file). */
      for (j = 0; j < ref_index; j++)
        {
          if (!strcmp (p, ref_list[j]->filename))
            break;
        }

      if (j == ref_index)
        {
          add_pointer_to_array (info_new_reference (p, 0),
            ref_index, ref_list, ref_slots, 2);
        }
    }

  /* Check for man page. */
  man_node = get_manpage_node (filename);
  if (man_node)
    {
      free (man_node);
      add_pointer_to_array
        (info_new_reference (MANPAGE_FILE_BUFFER_NAME, filename),
         ref_index, ref_list, ref_slots, 2);
    }
}


static void
set_debug_level (const char *arg)
{
  char *p;
  long n = strtol (arg, &p, 10);
  if (*p)
    {
      fprintf (stderr, _("invalid number: %s\n"), arg);
      exit (EXIT_FAILURE);
    }
  if (n < 0 || n > UINT_MAX)
    debug_level = UINT_MAX;
  else
    debug_level = n;
}
      

/* **************************************************************** */
/*                                                                  */
/*                Main Entry Point to the Info Program              */
/*                                                                  */
/* **************************************************************** */

int
main (int argc, char *argv[])
{
  int getopt_long_index;       /* Index returned by getopt_long (). */
  char *init_file = 0;         /* Name of init file specified. */
  FILE_BUFFER *initial_fb = 0; /* File to start session with. */
  char *error = 0;             /* Error message to display in mini-buffer. */

#ifdef HAVE_SETLOCALE
  /* Set locale via LC_ALL.  */
  setlocale (LC_ALL, "");
#endif /* HAVE_SETLOCALE */

#ifdef ENABLE_NLS
  /* Set the text message domain.  */
  bindtextdomain (PACKAGE, LOCALEDIR);
  textdomain (PACKAGE);
#endif

  init_messages ();
  while (1)
    {
      int option_character;

      option_character = getopt_long (argc, argv, short_options, long_options,
				      &getopt_long_index);

      /* getopt_long returns EOF when there are no more long options. */
      if (option_character == EOF)
        break;

      /* If this is a long option, then get the short version of it. */
      if (option_character == 0 && long_options[getopt_long_index].flag == 0)
        option_character = long_options[getopt_long_index].val;

      /* Case on the option that we have received. */
      switch (option_character)
        {
        case 0:
          break;

	case 'a':
	  all_matches_p = 1;
	  break;
	  
          /* User wants to add a directory. */
        case 'd':
          infopath_add (optarg);
          break;

          /* User is specifying a particular node. */
        case 'n':
          add_pointer_to_array (optarg, user_nodenames_index, user_nodenames,
                                user_nodenames_slots, 10);
          break;

          /* User is specifying a particular Info file. */
        case 'f':
          if (user_filename)
            free (user_filename);

          user_filename = xstrdup (optarg);
          break;

          /* Treat -h like --help. */
        case 'h':
          print_help_p = 1;
          break;

          /* User is specifying the name of a file to output to. */
        case 'o':
          if (user_output_filename)
            free (user_output_filename);
          user_output_filename = xstrdup (optarg);
          break;

         /* User has specified that she wants to find the "Options"
             or "Invocation" node for the program.  */
        case 'O':
          goto_invocation_p = 1;
          break;

	  /* User has specified that she wants the escape sequences
	     in man pages to be passed thru unaltered.  */
        case 'R':
          raw_escapes_p = 1;
          break;

          /* User is specifying that she wishes to dump the subnodes of
             the node that she is dumping. */
        case 's':
          dump_subnodes = 1;
          break;

          /* For compatibility with man, -w is --where.  */
        case 'w':
          print_where_p = 1;
          break;

#if defined(__MSDOS__) || defined(__MINGW32__)
	  /* User wants speech-friendly output.  */
	case 'b':
	  speech_friendly = 1;
	  break;
#endif /* __MSDOS__ || __MINGW32__ */

          /* User has specified a string to search all indices for. */
        case 'k':
          apropos_p = 1;
          free (apropos_search_string);
          apropos_search_string = xstrdup (optarg);
          break;

          /* User has specified a dribble file to receive keystrokes. */
        case DRIBBLE_OPTION:
          close_dribble_file ();
          open_dribble_file (optarg);
          break;

          /* User has specified an alternate input stream. */
        case RESTORE_OPTION:
          info_set_input_from_file (optarg);
          break;

          /* User has specified a string to search all indices for. */
        case IDXSRCH_OPTION:
          index_search_p = 1;
          free (index_search_string);
          index_search_string = xstrdup (optarg);
          break;

          /* User has specified a file to use as the init file. */
        case INITFLE_OPTION:
          init_file = optarg;
          break;

	case 'v':
	  {
            VARIABLE_ALIST *var;
	    char *p;
	    p = strchr (optarg, '=');
	    if (!p)
	      {
		info_error (_("malformed variable assignment: %s"), optarg);
		exit (EXIT_FAILURE);
	      }
	    *p++ = 0;

            if (!(var = variable_by_name (optarg)))
              {
                info_error (_("%s: no such variable"), optarg);
                exit (EXIT_FAILURE);
              }

	    if (!set_variable_to_value (var, p, SET_ON_COMMAND_LINE))
	      {
                info_error (_("value %s is not valid for variable %s"),
                            p, optarg);
		exit (EXIT_FAILURE);
	      }	
	  }
	  break;
	  
	case 'x':
	  set_debug_level (optarg);
	  break;
	  
        default:
          fprintf (stderr, _("Try --help for more information.\n"));
          exit (EXIT_FAILURE);
        }
    }

  /* If the output device is not a terminal, and no output filename has been
     specified, make user_output_filename be "-", so that the info is written
     to stdout, and turn on the dumping of subnodes. */
  if ((!isatty (fileno (stdout))) && (user_output_filename == NULL))
    {
      user_output_filename = xstrdup ("-");
      dump_subnodes = 1;
    }

  if (dump_subnodes)
    dump_subnodes = DUMP_SUBNODES;
  
  /* If the user specified --version, then show the version and exit. */
  if (print_version_p)
    {
      printf ("info (GNU %s) %s\n", PACKAGE, VERSION);
      puts ("");
      printf (_("Copyright (C) %s Free Software Foundation, Inc.\n\
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>\n\
This is free software: you are free to change and redistribute it.\n\
There is NO WARRANTY, to the extent permitted by law.\n"),
	      "2014");
      exit (EXIT_SUCCESS);
    }

  /* If the `--help' option was present, show the help and exit. */
  if (print_help_p)
    {
      info_short_help ();
      exit (EXIT_SUCCESS);
    }

  argc -= optind;
  argv += optind;
  
  /* If --file was not used and there is a slash in the first non-option
     argument (e.g. "info subdir/file.info"), do not search the dir files
     for a matching entry. */
  if (!user_filename && argv[0] && HAS_SLASH (argv[0]))
    {
      user_filename = argv[0];
      argv++; /* Advance past first remaining argument. */
      argc--;
    }

  /* If the user specified a particular filename, add the path of that
     file to the contents of INFOPATH. */
  if (user_filename)
    add_file_directory_to_path (user_filename);

  /* Load custom key mappings and variable settings */
  initialize_terminal_and_keymaps (init_file);

  /* Add extra search directories to any already specified with
     --directory. */
  infopath_init ();

  /* If the user wants to search every known index for a given string,
     do that now, and report the results. */
  if (apropos_p)
    {
      REFERENCE **apropos_list;

      apropos_list = apropos_in_all_indices (apropos_search_string, 0);

      if (!apropos_list)
        info_error (_(APROPOS_NONE), apropos_search_string);
      else
      {
        register int i;
        REFERENCE *entry;

        for (i = 0; (entry = apropos_list[i]); i++)
          fprintf (stdout, "\"(%s)%s\" -- %s\n",
              entry->filename, entry->nodename, entry->label);
      }
      exit (EXIT_SUCCESS);
    }

  /* Initialize empty list of nodes to load. */
  add_pointer_to_array (0, ref_index, ref_list, ref_slots, 2);
  ref_index--;

  if (all_matches_p)
    {
      /* --all */
      if (!user_filename && argv[0])
        {
          user_filename = argv[0];
          argv++; argc--;
        }
      else if (!user_filename)
        return 1;
      info_find_matching_files (user_filename);
    }
  else
    {
      get_initial_file (user_filename, &argc, &argv, &error);

      /* If the user specified `--index-search=STRING', 
         start the info session in the node corresponding
         to what they want. */
      if (index_search_p && initial_file && !user_output_filename)
        {
          initial_fb = info_find_file (initial_file);
          if (initial_fb && index_entry_exists (initial_fb,
                                                index_search_string))
            {
              initialize_info_session ();
              do_info_index_search (windows, initial_fb, 0,
                                    index_search_string);
              info_read_and_dispatch ();
              close_info_session ();
              return 0;
            }
          else
            {
              fprintf (stderr, _("no index entries found for `%s'\n"),
                       index_search_string);
              close_dribble_file ();
              return 1;
            }
        }

      /* Add nodes to start with (unless we fell back to the man page). */
      if (!initial_file || strcmp (MANPAGE_FILE_BUFFER_NAME, initial_file))
        {
          if (initial_file)
            initial_fb = info_find_file (initial_file);
          else
            initial_fb = 0;

          add_initial_nodes (initial_fb, argc, argv, &error);
        }
    }

  /* --where */
  if (print_where_p)
    {
      int i;
      if (!ref_list)
        return 1;

      for (i = 0; ref_list[i]; i++)
        printf ("%s\n", ref_list[i]->filename);
      return 0;
    }

  /* --output */
  if (user_output_filename)
    {
      if (error)
        info_error (error);

      preprocess_nodes_p = 0;
      dump_nodes_to_file (ref_list, user_output_filename, dump_subnodes);
      return 0;
    }

  if (user_filename && error)
    {
      info_error (error);
      return 1;
    }
    
  info_session (ref_list, all_matches_p ? user_filename : 0, error);
  close_info_session ();
  return 0;
}

void
add_file_directory_to_path (char *filename)
{
  char *directory_name = xstrdup (filename);
  char *temp = filename_non_directory (directory_name);

  if (temp != directory_name)
    {
      if (HAVE_DRIVE (directory_name) && temp == directory_name + 2)
	{
	  /* The directory of "d:foo" is stored as "d:.", to avoid
	     mixing it with "d:/" when a slash is appended.  */
	  *temp = '.';
	  temp += 2;
	}
      temp[-1] = 0;
      infopath_add (directory_name);
    }

  free (directory_name);
}


/* Error handling.  */

/* Non-zero means ring terminal bell on errors. */
int info_error_rings_bell_p = 1;

static FILE *debug_file;

static void
close_debugfile (void)
{
  fclose (debug_file);
}

#define INFODEBUG_FILE "infodebug"

void
vinfo_debug (const char *format, va_list ap)
{
  FILE *fp;

  if (!debug_file)
    {
      if (!info_windows_initialized_p || display_inhibited)
	fp = stderr;
      else
	{
	  debug_file = fopen (INFODEBUG_FILE, "w");
	  if (!debug_file)
	    {
	      info_error (_("can't open %s: %s"), INFODEBUG_FILE,
			  strerror (errno));
	      exit (EXIT_FAILURE);
	    }
	  atexit (close_debugfile);
	  fp = debug_file;
	  info_error (_("debugging output diverted to \"%s\""),
		      INFODEBUG_FILE);
	}
    }
  else
    fp = debug_file;
  
  fprintf (fp, "%s: ", program_name);
  vfprintf (fp, format, ap);
  fprintf (fp, "\n");
  fflush (stderr);
}

void
info_debug (const char *format, ...)
{
  va_list ap;
  va_start (ap, format);
  vinfo_debug (format, ap);
  va_end (ap);
}

/* Print AP according to FORMAT.  If the window system was initialized,
   then the message is printed in the echo area.  Otherwise, a message is
   output to stderr. */
void
vinfo_error (const char *format, va_list ap)
{
  if (!info_windows_initialized_p || display_inhibited)
    {
      fprintf (stderr, "%s: ", program_name);
      vfprintf (stderr, format, ap);
      fprintf (stderr, "\n");
      fflush (stderr);
    }
  else
    {
      if (!echo_area_is_active)
        {
          if (info_error_rings_bell_p)
            terminal_ring_bell ();
          vwindow_message_in_echo_area (format, ap);
        }
      else
        {
          NODE *temp = build_message_node (format, ap);
          if (info_error_rings_bell_p)
            terminal_ring_bell ();
          inform_in_echo_area (temp->contents);
          free (temp->contents);
          free (temp);
        }
    }
}

void
info_error (const char *format, ...)
{
  va_list ap;
  va_start (ap, format);
  vinfo_error (format, ap);
  va_end (ap);
}

void
show_error_node (char *error)
{
  if (info_error_rings_bell_p)
    terminal_ring_bell ();
  if (!info_windows_initialized_p)
    {
      info_error ("%s", error);
    }
  else if (!echo_area_is_active)
    {
      NODE *error_node;

      error_node = format_message_node ("%s", error);
      free_echo_area ();
      window_set_node_of_window (the_echo_area, error_node);
      display_update_one_window (the_echo_area);
    }
  else
    inform_in_echo_area (error);
}


/* Produce a scaled down description of the available options to Info. */
static void
info_short_help (void)
{
  printf (_("\
Usage: %s [OPTION]... [MENU-ITEM...]\n\
\n\
Read documentation in Info format.\n"), program_name);
  puts ("");

  puts (_("\
Options:\n\
  -a, --all                    use all matching manuals.\n\
  -k, --apropos=STRING         look up STRING in all indices of all manuals.\n\
  -d, --directory=DIR          add DIR to INFOPATH.\n\
      --dribble=FILE           remember user keystrokes in FILENAME.\n\
  -f, --file=MANUAL            specify Info manual to visit."));

  puts (_("\
  -h, --help                   display this help and exit.\n\
      --index-search=STRING    go to node pointed by index entry STRING.\n\
  -n, --node=NODENAME          specify nodes in first visited Info file.\n\
  -o, --output=FILE            output selected nodes to FILE."));

  puts (_("\
  -R, --raw-escapes            output \"raw\" ANSI escapes (default).\n\
      --no-raw-escapes         output escapes as literal text.\n\
      --restore=FILE           read initial keystrokes from FILE.\n\
  -O, --show-options, --usage  go to command-line options node."));

#if defined(__MSDOS__) || defined(__MINGW32__)
  puts (_("\
  -b, --speech-friendly        be friendly to speech synthesizers."));
#endif

  puts (_("\
      --strict-node-location   (for debugging) use Info file pointers as-is.\n\
      --subnodes               recursively output menu items.\n\
  -v, --variable VAR=VALUE     assign VALUE to Info variable VAR.\n\
      --vi-keys                use vi-like and less-like key bindings.\n\
      --version                display version information and exit.\n\
  -w, --where, --location      print physical location of Info file.\n\
  -x, --debug=NUMBER           set debugging level (-1 for all).\n"));

  puts (_("\n\
The first non-option argument, if present, is the menu entry to start from;\n\
it is searched for in all `dir' files along INFOPATH.\n\
If it is not present, info merges all `dir' files and shows the result.\n\
Any remaining arguments are treated as the names of menu\n\
items relative to the initial node visited."));

  puts (_("\n\
For a summary of key bindings, type H within Info."));

  puts (_("\n\
Examples:\n\
  info                       show top-level dir menu\n\
  info info                  show the general manual for Info readers\n\
  info info-stnd             show the manual specific to this Info program\n\
  info emacs                 start at emacs node from top-level dir\n\
  info emacs buffers         start at buffers node within emacs manual\n\
  info --show-options emacs  start at node with emacs' command line options\n\
  info --subnodes -o out.txt emacs  dump entire manual to out.txt\n\
  info -f ./foo.info         show file ./foo.info, not searching dir"));

  puts (_("\n\
Email bug reports to bug-texinfo@gnu.org,\n\
general questions and discussion to help-texinfo@gnu.org.\n\
Texinfo home page: http://www.gnu.org/software/texinfo/"));

  exit (EXIT_SUCCESS);
}


/* Initialize strings for gettext.  Because gettext doesn't handle N_ or
   _ within macro definitions, we put shared messages into variables and
   use them that way.  This also has the advantage that there's only one
   copy of the strings.  */

const char *msg_cant_find_node;
const char *msg_cant_file_node;
const char *msg_cant_find_window;
const char *msg_cant_find_point;
const char *msg_cant_kill_last;
const char *msg_no_menu_node;
const char *msg_no_foot_node;
const char *msg_no_xref_node;
const char *msg_no_pointer;
const char *msg_unknown_command;
const char *msg_term_too_dumb;
const char *msg_at_node_bottom;
const char *msg_at_node_top;
const char *msg_one_window;
const char *msg_win_too_small;
const char *msg_cant_make_help;

static void
init_messages (void)
{
  msg_cant_find_node   = _("Cannot find node `%s'.");
  msg_cant_file_node   = _("Cannot find node `(%s)%s'.");
  msg_cant_find_window = _("Cannot find a window!");
  msg_cant_find_point  = _("Point doesn't appear within this window's node!");
  msg_cant_kill_last   = _("Cannot delete the last window.");
  msg_no_menu_node     = _("No menu in this node.");
  msg_no_foot_node     = _("No footnotes in this node.");
  msg_no_xref_node     = _("No cross references in this node.");
  msg_no_pointer       = _("No `%s' pointer for this node.");
  msg_unknown_command  = _("Unknown Info command `%c'; try `?' for help.");
  msg_term_too_dumb    = _("Terminal type `%s' is not smart enough to run Info.");
  msg_at_node_bottom   = _("You are already at the last page of this node.");
  msg_at_node_top      = _("You are already at the first page of this node.");
  msg_one_window       = _("Only one window.");
  msg_win_too_small    = _("Resulting window would be too small.");
  msg_cant_make_help   = _("Not enough room for a help window, please delete a window.");
}
