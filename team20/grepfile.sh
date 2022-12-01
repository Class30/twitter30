#! /bin/bash

cat << instrs
This script will search for user input words in userinput directory or files
and it will output the results if the file exists
otherwise, it will let you know the file doens't exit.
instrs

		echo -e "\nPlease enter the filename, directory name, or path file to search for a text\n"		

                #echo -e "\n\n\nEnter filename, dir_name or path to search text from\n\n"
                # read - p "some comments here :" filename
		read filename

                if [[ -f $filename ]]
                then

                        echo -e "\n\nEnter the text you want to search\n\n"
                        read grepvar

                echo -e "\n"

                        wdcnt=`grep -i -c $grepvar $filename`
                        echo -e "$grepvar occurs $wdcnt times in $filename\n"

                        grep -i -n $grepvar $filename

                echo -e "\n"

                else
                        echo "\n$filename doesn't exist"
                fi
