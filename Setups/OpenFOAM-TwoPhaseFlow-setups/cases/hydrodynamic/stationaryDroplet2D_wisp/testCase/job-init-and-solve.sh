#!/bin/bash

# Create mesh
blockMesh > log.blockMesh

# Initialize alpha field
# option 1 : setalphafield
setAlphaField > log.setAlphaField
# option 2:surfaceInitVolumeFraction
#module unload python/anaconda-3.6 
#surfaceInitVolumeFraction > log.surfaceInitVolumeFraction

# run locally
interFlow > log.interFlow

# run on queue
#subopenfoam -n 1 -N 1 -r 2:00 -m 4G -T $HOME/OpenFOAM/OpenFOAM-v2312 -j statDroplet2D -V v2312 interFlow -e luise.nagel@de.bosch.com


