/*
  Sequential_music-iterator.hh -- declare Sequential_music_iterator

  source file of the GNU LilyPond music typesetter

  (c)  1997--2001 Han-Wen Nienhuys <hanwen@cs.uu.nl>
*/

#ifndef SEQUENTIAL_MUSIC_ITERATOR_HH
#define SEQUENTIAL_MUSIC_ITERATOR_HH

#include "music-iterator.hh"


/*

  This is a lookahead list for grace notes.

   {  ... X \grace Y  Z ... }

   normally, the ending of X is the start of Z. In case of a grace
   note, we take off a little at the end of X. What is stored: START
   (start point of X), LENGTH (length of X), GRACE_START (start_music
   of Y), and the next fixup element.

  This is also done for nested musics, i.e.

  voiceA = \notes { \grace b16 c'2 }
  voiceB = \notes { c'2 \voiceA }

  the iterator for voiceB will contain a fixup entry with (START=0/1,
  LENGTH=2/1, GRACE_START=(0G-1/16) ) 
   
  Graces at the start of a sequential music iterator are handled
  by initting here_mom_ with Music::start_music (); no fixups are needed.

*/
struct Grace_skip 
{
  Moment start_;
  Rational length_;

  Rational grace_start_;  
  Grace_skip *next_;
};

/** Sequential_music iteration: walk each element in turn, and
  construct an iterator for every element.
  
 */
class Sequential_music_iterator :  public Music_iterator
{
public:
  Grace_skip * grace_skips_;
  
  VIRTUAL_COPY_CONS (Music_iterator);
  static SCM constructor_cxx_function;
  Sequential_music_iterator ();
  Sequential_music_iterator (Sequential_music_iterator const&);
  virtual ~Sequential_music_iterator ();

  virtual void construct_children ();
  virtual Moment pending_moment () const;
  virtual bool ok () const;
  virtual void skip (Moment);
  virtual SCM get_music (Moment)const;

protected:
  virtual void process (Moment);
  virtual Music_iterator *try_music_in_children (Music *) const;

private:
  Moment here_mom_;
  SCM cursor_;
  Music_iterator * iter_p_;

  void next_element ();
  void descend_to_child ();
};

#endif // SEQUENTIAL_MUSIC_ITERATOR_HH
