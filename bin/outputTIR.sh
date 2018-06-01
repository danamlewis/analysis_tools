# Script to run through entire folder of OH data, run timeSpent.py, and output into a csv folder

#!/bin/bash

#this assumes you have an analysis_tools folders that has the scripts and the OH data in it.

set -eu

ls -d [0-9]* | while read dir; do

 cd $dir/direct-sharing-31/${dir}_entries_*csv
    
    ls -d *.csv | while read file; do

    # create csv with PID and column headers

    echo "PID, 'Time Low (%)', 'Time Low (Min)', 'Time range (%), 'Time range (Min)', 'Time high (%)', 'Time high (Min)'" > ../../../outputTIR.csv
    
    # run timeSpent.py for a target range of 80-180 and output the results in CSV

    python3  ~/analysis_tools/bin/timeSpent.py ~/analysis_tools/bin/ 80 180 ~/analysis_tools/bin/date.xlsx >> ../../../outputTIR.csv
        
    done
   
    cd ../../../
 
done
