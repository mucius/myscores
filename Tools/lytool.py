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

PLATFORM = SCons.Platform.platform_default()
INCLUDE_RE = re.compile(r'\s*\\include\s+"(\S+)".*')
LYSYSPATH = ('/usr/share/lilypond/current/ly', '.')


def ly_scanner(node, _env, path):
    """ scann lytool """
    contents = node.get_contents()
    includes = INCLUDE_RE.findall(contents)
    if includes == []:
        return includes
    results = []
    for inc in includes:
        for dir_ in path:
            file_ = str(dir_) + os.sep + inc
            if os.path.exists(file_):
                results.append(file_)
                break
    return results


def generate(env):
    """ generate builder """
    env['LY'] = 'lilypond'
    env['LYFLAGS'] = []
    env['LYCOM'] = '$LY $LYFLAGS ${SOURCE}'
    env['LYPATH'] = LYSYSPATH
    env.PrependENVPath('PATH', os.environ['PATH'])
    if PLATFORM == 'win32':
        env.PrependENVPath('HOME',
          os.environ['HOMEDRIVE'] + os.environ['HOMEPATH'])
    else:
        env.PrependENVPath('HOME', os.environ['HOME'])
    scanner = env.Scanner(function=ly_scanner,
            name='Lilypond Scanner', skeys=['.ly'],
            path_function=SCons.Scanner.FindPathDirs('LYPATH'),
            recursive=1)
    env['SCANNERS'] += [scanner]
    builder = SCons.Builder.Builder(action='$LYCOM', suffix='.pdf',
            src_suffix='.ly')
    env['BUILDERS']['LilyPond'] = builder


def exists(env):
    """ existance check """
    return env.Detect('lilypond')
# vim:sw=4 ts=4 expandtab:
