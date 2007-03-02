# Scons script for LilyPond
# $Id$
import glob, os.path
src = glob.glob('*.ly')
env = Environment( tools=['lytool'], toolpath=['/home/tory/python/lib'])
for i in src:
    tgt = os.path.splitext( i)[ 0]
    env.LilyPond( tgt)
    env.Clean( '.', [ tgt + '.midi', tgt + '.ps', tgt + '.png'])
