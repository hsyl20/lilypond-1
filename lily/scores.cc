/*
  scores.cc -- implement some globals

  source file of the GNU LilyPond music typesetter

  (c)  1997--1998 Han-Wen Nienhuys <hanwen@stack.nl>
*/
#include <fstream.h>
#include "main.hh"
#include "score.hh"
#include "string.hh"
#include "paper-def.hh"
#include "header.hh"
#include "debug.hh"
#include "parray.hh"
#include "file-path.hh"
#include "file-results.hh"
#include "my-lily-parser.hh"
#include "source.hh"

Sources* source_global_l = 0;
Array<String> inclusion_global_array;
Array<String> target_str_global_array;
Link_array<Score> score_global_array;


void write_dependency_file (String fn, Array<String> targets,
			    Array<String> deps)
{
  const int WRAPWIDTH = 65;


  cout << "Writing dependency file " << fn << " ...\n";
  ofstream f (fn.ch_C ());
  if (!f)
    warning ( _("Can't open dependency file `" + fn + "\'"));

  f << "# Automatically generated by " << get_version_str ()  << "\n";
  String out;
  for (int i=0; i < targets.size (); i ++)
     out += targets[i] + " ";
  out +=  ": ";
  for (int i=0; i < deps.size (); i ++)
    {
      if (out.length_i() > WRAPWIDTH)
	{
	  f << out << "\\\n";
	  out = "  ";
	}
      out  += " " +  deps[i];
    }
  f << out << endl; 
}

void
do_deps()
{
  if (dependency_global_b)
    {
      write_dependency_file (default_outname_base_global  + ".dep", target_str_global_array,
			     inclusion_global_array);
    }
}


void
do_scores()
{
  for (int i=0; i < score_global_array.size(); i++)
    {
      Score* is_p = score_global_array[i];
      if (!is_p->header_p_)
	is_p->header_p_ = new Header;
      
                
      is_p->header_p_->lily_id_str_ = "Lily was here, " +
	get_version_number_str();
      if (is_p->errorlevel_i_)
	{
	  is_p->warning (_("Score contains errors. Will not process it. "));
	  exit_status_i_ |= 1;
	}
      else
	{
	  is_p->process();
	}
    }
  do_deps ();
}

void
clear_scores ()
{
  for (int i=0; i < score_global_array.size(); i++)
    {
      delete score_global_array[i];
    }
  score_global_array.clear();
  inclusion_global_array.clear ();
}

extern File_path path;

void
do_one_file (String init_str, String file_str)
{
  if (init_str.length_i () && path.find (init_str).empty_b ())
    {
      warning (_("Can not find `") + init_str +"\'");
      return ;
    }
  if (file_str.length_i () && path.find (file_str).empty_b ())
    {
      warning (_("Can not find `") + file_str + "'");
      return ;
    }

  Sources sources;
  source_global_l = &sources;
  source_global_l->set_path (&path);
  {
    My_lily_parser parser (source_global_l);
    parser.set_version_check (version_ignore_global_b);
    parser.parse_file (init_str, file_str);

    
    if (file_str.length_i () && file_str[0] != '-')
      {
	String a,b,c,d;
	split_path (file_str, a, b, c, d);
	default_outname_base_global = c;
      }
    else
      default_outname_base_global = "lelie";
  
    if (parser.error_level_i_)
      {
	exit_status_i_  = 1;
      }
    else
      do_scores ();
    clear_scores ();
  }
  source_global_l = 0;
}
