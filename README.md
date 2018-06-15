# analysis_tools

## Tool 1: parseTimeinLoop.py

[parseTimeinLoop](https://github.com/danamlewis/analysis_tools/blob/master/bin/parseTimeinLoop.py) is a script to analyze how long someone has been using a DIY closed loop. Input file is a two-file with memberID in column A and looping start date in column B, e.g. "date.xlsx"

#### To run parseTimeinLoop.py:
`./parseTimeinLoop.py date.xlsx`

#### Example output: 
![Example output of parseTimeinLoop.py](/bin/examples/example_output_parseTimeinLoop.png)

## Tool 2: timeSpent.py

[timeSpent.py](https://github.com/danamlewis/analysis_tools/blob/master/bin/timeSpent.py) is a script to analyze time in range, with input variables of the range. Optional file for determining time in range before/after starting a DIY closed loop. 

#### Notes
* You may need to update or install python 3. 
* You will likely also need to install `xlrd`. (To do so, download and unzip it; then from the command line `cd` into the directory, and run `python3 setup.py install`

#### To run timeSpent.py:
`python3 ./timeSpent.py ~/analysis_tools/bin/ 80 180 ~/analysis_tools/bin/date.xlsx`
(using the example where the range is 80-180 mg/dL and the optional looping start date file is date.xlsx)

#### Example output to calculate time in range and print in terminal
![Example raw output of TIR calculation script](/bin/examples/example_timeSpent.png)

(Note the commented out code which can be edited to use with `outputTIR.sh` to output into CSV file instead for multiple users)

## Tool 3: outputTIR.sh

[outputTIR.sh](https://github.com/danamlewis/analysis_tools/blob/master/bin/outputTIR.sh) is a shell script to run timeSpent.py in a larger directory of OpenHumans data, and output the data with the MemberID and headers in one CSV folder at the top of the directory.

### To run outputTIR.sh
`./outputTIR.sh` from the directory with data

### Example output:
![Example CSV output of TIR for multiple users](/bin/examples/example_outputTIR.png)

## Tool 4: howmuchdata.sh

Note: this script is sitting in OH Data Tools, but leaving the notes here because they are not finished/tested.

https://github.com/danamlewis/OpenHumansDataTools/blob/master/bin/howmuchdata.sh <-- pull the date ranges of OH data, output into CSV so you can analyze how much looping time someone has. 

## Tool 5: outcomes.sh

Note: this script is sitting in OH Data Tools, but leaving the notes here because they are not finished/tested.

https://github.com/danamlewis/OpenHumansDataTools/blob/master/bin/outcomes.sh <-- script to analyze data range of entries & device status data; calculates % TIR and Readings in range plus average glucose for the entries data where people are looping. (Aka, this analyzes the post-looping outcomes). 
