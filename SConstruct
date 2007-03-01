# Scons script for LilyPond
# $Id$
import glob, os.path
src = glob.glob('*.ly')
env = Environment()
for tgt in src:
    base = os.path.splitext( tgt)[ 0]
    env.LilyPond( base)
    env.Clean( '.', [ base + '.midi', base + '.ps'])
