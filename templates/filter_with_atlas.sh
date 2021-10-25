#!/bin/bash

scil_filter_tractogram.py ${tractogram} ${basename}__${out_extension}.trk \
  --drawn_roi ${atlas} ${mode} ${criteria} -f --display_count > ${basename}__${out_extension}.txt;

if [ ${keep} = "true" ]
then
  scil_streamlines_math.py difference ${tractogram} \
                                      ${basename}__${out_extension}.trk \
                                      ${sid}__${remaining_extension}.trk;
fi
