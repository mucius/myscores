import os
import re

import SCons.Scanner

include_re = re.compile(r'\s*\\include\s+"(\S+)".*')
lysyspath  = ('/usr/share/lilypond/current/ly', '.')

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

def generate(env):
  import os
  env['LY'] = 'lilypond.exe'
  env['LYFLAGS'] = []
  env['LYCOM'] = '$LY $LYFLAGS ${SOURCE}'
  env['LYPATH'] = lysyspath
  env.PrependENVPath( 'PATH', os.environ[ 'PATH'])
  env.PrependENVPath( 'HOME', os.environ[ 'HOME'])
  scanner = env.Scanner(
      function = lyScanner,
      name = 'Lilypond Scanner',
      skeys = ['.ly'],
      path_function = SCons.Scanner.FindPathDirs( 'LYPATH'),
      recursive = 1)
  env['SCANNERS'] += [scanner]
  builder = SCons.Builder.Builder(
      action = '$LYCOM',
      suffix = '.pdf',
      src_suffix = '.ly')
  env[ 'BUILDERS']['LilyPond'] = builder

def exists(env):
  return env.Detect('lilypond')

