#!/bin/bash 

echo "hellokitty"


fswatch -0 ~/Downloads/ | xargs -0 -n 1 ~/Desktop/transfer.sh

echo "2"

# OUTPUT_FILE=~/Desktop/output.txt
# if [ -e ${OUTPUT_FILE} ]; then
# 	echo "1"
#   #echo ${OUTPUT_FILE}
#   #say "${OUTPUT_FILE}"
# else
#   fail "file does not exist"
# fi


# PYTHON=$(python3 ~/Desktop/milestone_A/Milestone1/pre_process/pre-processing.py --image ~/Desktop/milestone_A/Milestone1/pre_process/input2.jpg) 

# OUTPUT_FILE=~/Desktop/milestone_A/Milestone1/pre_process/output.txt
# TEXT=$(cat ~/Desktop/milestone_A/Milestone1/pre_process/output.txt)
# 	if [ $? -eq 0 ]; then
#    		echo "3"
#    		if [ -e ${OUTPUT_FILE} ]; then
# 			echo "1"
#   			#echo ${OUTPUT_FILE}
#   			say ${TEXT}
# 		else
# 			echo "failed"
# 		fi
# 	else 
# 		echo "4"
# 	fi