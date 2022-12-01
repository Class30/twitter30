#!/bin/bash

          echo -e "\n\nEnter a filename\n"
          read filename

          check=`sudo find / -name $filename | awk -F"/" '{print $NF}'`

          while [ -z $check ]
          do

                  echo -e "\n\nFile not found\a. Make sure you entered the correct filename and Try Again!!!"
                  read filename
                  check=`sudo find / -name $filename | awk -F"/" '{print $NF}'`

          done

          #if [[ -f $filename ]]
          if [[ $check = $filename ]]
          then

          #location=`readlink -f $filename`
          echo -e "\nSUCCESS!!!\n\n"
          #echo -e "$filename is located in `readlink -f $filename`"
          echo -e "$filename is located in `readlink -f $check`"

          fi
