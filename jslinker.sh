#!/bin/bash
source linkerfiles.sh

#Set file name
if [[ $1 ]]; then 
    file_output_name=$1;
else
    read -p "What would you like the output HTML file to be named?: " file_output_name
    echo
fi
execution_root_directory=`pwd`
cd "$files_root_directory"

cat "$execution_root_directory/templates/template-1.html" > $file_output_name
echo >> $file_output_name
#Javascript code
for (( i=0; i<`echo ${linker_files[@]} | wc -w` ; i++ )); do
    echo Linking ${linker_files[i]};
    cat ${linker_files[i]} >> $file_output_name
done
echo >> $file_output_name
cat "$execution_root_directory/templates/template-2.html" >> $file_output_name