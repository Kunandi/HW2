#!/bin/bash
#A short BaseSpace access script to view and export, generate Fastx files
#  load the module
source /opt/asn/etc/asn-bash-profiles-special/modules.sh
module load basespace/01102018
#access Basespace
export BASESPACE_API_SERVER="https://api.euc1.sh.basespace.illumina.com/"
export BASESPACE_ACCESS_TOKEN="XXXX"
# current user information
bs -c configname whoami -o Basespace.Whoami
# get metadata about project with ID ${FILE_NAME}
bs get project --id ${FILE_NAME}
# export in csv format the QC thresholds for workflow with ID ${FILE_NAME}
bs workflow threshold export -i ${FILE_NAME}
# Generate fastx files
Bs download project -i <projectID> ${FILE_NAME} -o ${FILE_NAME}.download
#comment for Hw2, almost there!

