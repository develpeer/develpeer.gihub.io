#!/bin/bash
for f in `ls ../../gistAnotherRepo/src/*| grep "\(py\|js\|html\|cpp\)$"`; 
do
	#create a new file and find ite extension
	newf=`echo $f |sed -e "s/.*\//..\/Gists\//"| sed -e "s/py/md/"`
	ext=`echo $f |sed -e "s/.*\.//"`

	#Determins file type based on extension
	case $ext in
	  py)
            file_type="python"
	    ;;

	  js)
            file_type="javascript"
	    ;;

	  html)
            file_type="html"
	    ;;

	  *)
            file_type=$ext
	    ;;
	esac

	echo "Creating new markdown file: ["$newf"] with extension: ["$ext"] and file type: ["$file_type"]"
	echo "Creating..."
	echo "\`\`\` " $file_type > $newf
	cat $f >> $newf
	echo "\`\`\`" >> $newf
done
