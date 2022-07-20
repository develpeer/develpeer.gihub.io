#!/bin/bash
nav_order=0
for f in `ls ../../gistAnotherRepo/src/*| grep "\(py\|js\|html\|cpp\)$"|grep -v "__init__"`;
do
	#create a new file and find ite extension
	newf=`echo $f |sed -e "s/.*\//..\/Gists\//"| sed -e "s/.[^.]*$/.md/"`
	ext=`echo $f |sed -e "s/.*\.//"`
  fonly=`echo $f |sed -e "s/.*\///"`

	#Determine file type based on extension
	case $ext in
	  py)
            file_type="python"
            output=`python $f`
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
	nav_order=$((nav_order+1))
	echo "Creating..."

  {
    #add jekyll front matter
    echo "---
layout: default
title: Gist for - $fonly
parent: Gist for fun
nav_order: $nav_order
---"
    #add html/md header
    echo "
# Gist for:  $fonly

# Source Code 
\`\`\`  $file_type"

    #add content
    cat $f
    echo "
\`\`\`"
    #add Output
    echo "

# Output
After running the above code snippet, you will get this output

\`\`\`"
    case $file_type in
      python)
        python $f|while read ol
          do echo ">>>" $ol
        done
        ;;
      #add other types if needed
      *)
        echo -e "\033[41m!!Error\033[0m No handler created for $file_type" >&2
        ;;
    esac
	echo "\`\`\`"
	} > "$newf"

done
