#!/bin/bash

FILE=$1

DIR=~/Desktop/milestone_A/Milestone1/pre_process/

translation_process () {
	CWD=${PWD}

	FILE_NAME=${1}
	DIR=${2}

	PYTHON=$(python3 ${DIR}/pre-processing.py --image ${FILE_NAME})
	if [ $? -eq 0 ]; then
   		echo "3"
   		return 1
	else 
		echo "4"
		return 0
	fi

}

#PRE_PROCESS=$(python3 ~/Desktop/milestone_A/Milestone1/pre_process/pre-processing.py --image $FILE) 


OUTPUT_FILE=~/Desktop/milestone_A/Milestone1/pre_process/output.txt


translation_process ${FILE} ${DIR}
while [ $? -eq 1 ]
do
	echo "5"
	if [ -e ${OUTPUT_FILE} ]; then
		echo "6"
		TEXT=$(cat ~/Desktop/milestone_A/Milestone1/pre_process/output.txt)
		#echo ${OUTPUT_FILE}
		say ${TEXT}
	else
		echo "failed"
	fi
done
# while [ 0 ]
# do
	# if [ -e ${PRE_PROCESS} ]; then
	# 	if [ -e ${OUTPUT_FILE} ]; then
	# 		echo "1"
 #  			#echo ${OUTPUT_FILE}
 #  			say ${TEXT}
	# 	else
 #  			fail "file does not exist"
	# 	fi
	# else
	# 	fail "translation process not finished"
	# fi
# done
