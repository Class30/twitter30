          #! /bin/bash
          # by C'est La Vie

cat << comments
This script will list the group members of all the groups in the server
comments

          #check all groups with gid between 1 and 60k
          #groupcheck() {
          grps=`getent group {1000..60000} | cut -d: -f1`
          echo -e "This is the list of user groups created in this server.\n$grps"

          #iterate through all groups in the /etc/group file
          for i in $grps
          do
                  groupmems=`sudo lid -g $i`

                  echo -e "The group member(s) of group $i are:...\n$groupmems\n\n"

          done
          #}
