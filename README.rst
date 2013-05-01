=================
LilyPond practice
=================

This repository includes

  * 2 SCons scripts for building LilyPond_ files.
  * some LilyPond_ files.

LilyPond builder for SCons
==========================

Copy lytool.py to SCons/Tool/ directory.
If you are using scons ver.0.96, rename lytool96_1.py to lytool.py and use it.

Attention
---------

At line 20, path is hard coded, so modify it.

If you want to recogninize the buiilder automatically, 
add 'lytool' to finding tools dict(SCons/Tool/__init__.py)

::

    other_tools = FindAllTools(['BitKeeper', 'CVS',
                                'dmd',
                                'dvipdf', 'dvips', 'gs',
                                'jar', 'javac', 'javah',
                                'latex', 'lex',
                                'lytool', # <--- LilyPond BUilder
                                'm4', 'midl', 'msvs',
                                'pdflatex', 'pdftex', 'Perforce',
                                'RCS', 'rmic', 'rpcgen',
                                'SCCS',
                                # 'Subversion',
                                'swig',
                                'tar', 'tex',
                                'yacc', 'zip'],
                               env)
  

.. _LilyPond: http://www.lilypond.org/
