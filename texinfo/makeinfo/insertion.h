/* insertion.h -- declarations for insertion.c.
   $Id: insertion.h,v 1.9 2003-11-23 23:38:13 dirt Exp $

   Copyright (C) 1998, 1999, 2001, 2002, 2003 Free Software Foundation, Inc.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software Foundation,
   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */

#ifndef INSERTION_H
#define INSERTION_H

/* Must match list in insertion.c.  */
enum insertion_type
{ 
  cartouche, copying, defcv, deffn, defivar, defmac, defmethod, defop,
  defopt, defspec, deftp, deftypecv, deftypefn, deftypefun, deftypeivar,
  deftypemethod, deftypeop, deftypevar, deftypevr, defun, defvar, defvr,
  detailmenu, direntry, display, documentdescription, enumerate,
  example, floatenv, flushleft, flushright, format, ftable, group,
  ifclear, ifdocbook, ifhtml, ifinfo, ifnotdocbook, ifnothtml, ifnotinfo,
  ifnotplaintext, ifnottex, ifnotxml, ifplaintext, ifset, iftex, ifxml,
  itemize, lisp, menu, multitable, quotation, rawdocbook, rawhtml, rawtex,
  rawxml, smalldisplay, smallexample, smallformat, smalllisp, verbatim,
  table, tex, vtable, titlepage, bad_type
};

typedef struct istack_elt
{
  struct istack_elt *next;
  char *item_function;
  char *filename;
  int line_number;
  int filling_enabled;
  int indented_fill;
  enum insertion_type insertion;
  int inhibited;
  int in_fixed_width_font;
} INSERTION_ELT;


extern int insertion_level;
extern INSERTION_ELT *insertion_stack;
extern int in_menu;
extern int in_detailmenu;
extern int had_menu_commentary;
extern int in_paragraph;

extern int headitem_flag;
extern int after_headitem;

extern void command_name_condition ();
extern void cm_ifdocbook (), cm_ifnotdocbook(), cm_docbook ();
extern void cm_ifhtml (), cm_ifnothtml(), cm_html ();
extern void cm_ifinfo (), cm_ifnotinfo ();
extern void cm_ifplaintext (), cm_ifnotplaintext();
extern void cm_iftex (), cm_ifnottex (), cm_tex ();
extern void cm_ifxml (), cm_ifnotxml (), cm_xml ();
#endif /* !INSERTION_H */
