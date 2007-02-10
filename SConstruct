# Scons script for LilyPond
# $Id$
src = [
    'chopin_op28_7',
    ]
midiFiles = []
psFiles   = []
for m in src:
    midiFiles.append( m + '.midi')
    psFiles.append( m + '.ps')
import os
env = Environment( ENV = os.environ)
env[ 'ENV'][ 'LANG'] = 'en'
env[ 'BUILDERS']['LilyPond'] = Builder( action = 'lilypond $SOURCE',
    suffix = '.pdf', src_suffix = '.ly')
for tgt in src:
  env.LilyPond( tgt)
env.Clean( '.', [ midiFiles, psFiles])
