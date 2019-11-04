#!/bin/bash
#author : mauro r.
echo "Doxygen file tag generator"
mkdir doxygen
availables_files=$(ls -R | egrep '\.c|\.h' )
echo $availables_files

MY_ARRAY=($(ls -R | egrep '\.c|\.h'))

for i in "${MY_ARRAY[@]}"
do
	src_file=($(find -iname $i -printf '%P\n'))
	path_file=($(find -iname $i -printf '%h\n'))

	echo "Creating file ./doxygen/$src_file"
	mkdir -p ./doxygen/$path_file
	touch ./doxygen/$src_file

	echo -e "/*!\n   \\\file $i \n   \\\brief \"Description\" \n   \\\author \"Your name\"\n   \\date \"DD/Month/Year\"
*/" > ./doxygen/$src_file
	cat $src_file  >> ./doxygen/$src_file
done
