#!/bin/bash
# copy vtp from all time steps into one directory


mkdir vtp_all_timesteps

cd postProcessing/surfaces/
for i in *
do 
	echo $i
	cp ./$i/interface_plic.vtp ../../vtp_all_timesteps/$i.vtp
done

cd ../../

