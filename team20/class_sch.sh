#!/bin/bash

              a=Thursday
              b=Saturday
              c=Sunday

              echo -e "\n\n\nWelcome to group20. Today is `date`.\n\n\nLive DevOps Lectures hold everyweek on $a, $b, $c\n\n"

              echo -e "To find out the class time for a lecture day, please pick a day\n\n"

              read lectureday 

		#read -p "TO find out the class time for a lecture day, please pick a day :" lectureday

              # read -p "To find out the class time for a lecture day, please pick a day: " lectureday



              if [ $a = $lectureday ]
              then

              echo -e "You have selected $a. Live lectures begin at 1800 EST. Be on time!!\n\n"

              elif [ $b = $lectureday ]
              then

              echo -e "You have chosen $b. Live lectures start at 0800 EST. Make sure you wake up early!\n\n"


              elif [ $c = $lectureday ]
              then

              echo -e "You have chosen $c. Live lectures start at 1500 EST.\n\n"


              else
              echo -e "We don't have class on $lectureday. Please select either $a, $b, or $c\n\n"
	      fi
