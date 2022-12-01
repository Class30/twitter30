#	!/bin/bash 
        
	cntup(){
	   iteration=1
 
            for i in {0..20..4}
            do
            echo "The No. $iteration repetition is $i"

            iteration=$(( $iteration + 1 ))
            done

            echo -e "this \is the end of the loop"
            }

 
         cntdwn() {
	    for (( a=100;a>96;a-- ))
            do
            echo $a
            done
           }
 
	case $1 in 
	cntup)
		"$@"; exit;;
	cntdwn)
		"$@"; exit;;
 	esac
