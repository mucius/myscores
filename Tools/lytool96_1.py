"""SCons.Tool.lytool

Tool-specific initialization for LilyPond.

There normally shouldn't be any need to import this module directly.
It will usually be imported through the generic SCons.Tool.Tool()
selection method.

$Id$
"""
import os
import re

import SCons.Scanner
import SCons.Platform

platform = SCons.Platform.platform_default()

include_re = re.compile(r'\s*\\include\s+"(\S+)".*')
lysyspath  = ['/usr/share/lilypond/current/ly', '.']

def lyScanner( node, env, path):
  contents = node.get_contents()
  includes = include_re.findall( contents)
  if includes == []:
    return includes
  results = []
  for inc in includes:
    for dir in path:
      f = str(dir) + os.sep + inc
      if os.path.exists( f):
        results.append( f)
        break
  return results
def lyPathFunc( env, node):
  return tuple( env[ 'LYPATH'])

def generate(env):
  env['LY'] = 'lilypond'
  env['LYFLAGS'] = []
  env['LYCOM'] = '$LY $LYFLAGS ${SOURCE}'
  env['LYPATH'] = lysyspath
  env.PrependENVPath( 'PATH', os.environ[ 'PATH'])
  if platform == 'win32':
    env.PrependENVPath( 'HOME',
        os.environ[ 'HOMEDRIVE'] + os.environ[ 'HOMEPATH'] )
  else:
    env.PrependENVPath( 'HOME', os.environ[ 'HOME'])
  scanner = env.Scanner(
      function = lyScanner,
      name = 'Lilypond Scanner',
      skeys = ['.ly'],
      path_function = lyPathFunc,
      recursive = 1)
  env['SCANNERS'] += [scanner]
  builder = SCons.Builder.Builder(
      action = '$LYCOM',
      suffix = '.pdf',
      src_suffix = '.ly')
  env[ 'BUILDERS']['LilyPond'] = builder
def exists(env):
  return 1

