            #!/bin/bash

            echo -e "\n\nWhat do you want to know? Choices are case sensitive: date, time, calendar\n\n"

            read choice

            case $choice in
            date)
                    echo -e "`date`\n\n";;
            calendar)
                    echo -e "`cal`\n\n";;
            time)
                    echo -e "`timedatectl`";;

            *)
                    echo -e "\aSOrry, Invalid choice. Try again later\n\n";;
            esac
