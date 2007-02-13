# Scons script for LilyPond
# $Id$
src = [
    'chopin_op28_7',
    'dargo_mazurka_2'
    ]
midiFiles = []
psFiles   = []
for m in src:
    midiFiles.append( m + '.midi')
    psFiles.append( m + '.ps')
import os
env = Environment( ENV = os.environ)
env.Append(
    ENV = { 'LANG' :  'en'},
    BUILDERS = { 'LilyPond' : Builder( action = 'lilypond $SOURCE',
        suffix = '.pdf', src_suffix = '.ly')},
)
for tgt in src:
    env.LilyPond( tgt)
env.Clean( '.', [ midiFiles, psFiles])
