#!/bin/bash

# making able to run the script from another directory (even with alias)
cd $(dirname $0) # enters the directory of the script

baseFile=inventory_swapper.yaml
targetIndex=""
hostarray=()

for i in "${baseFile[@]}"
do
    hosts=$(cat "$baseFile")
    hostarray+=($hosts)
done

menu_from_array ()
  {
    COLUMNS=12 # makes list vertically not horizontally
    echo "0) Quit"
    select item; do
    # Check the selected menu item number
    if [ 1 -le "$REPLY" ] && [ "$REPLY" -le $# ]; then
       targetIndex=$((REPLY-1))
       targethost=${hostarray[$targetIndex]} # because using ssh config we need to use hostname instead of IP address!!!
       echo "Chosen host: $targethost"
       ansible-playbook -e "selected_host=$targethost" swapper.yaml
       break;
    elif [[ "$REPLY" == 0 ]]; then
      echo "Exited"
      break;
    else
       echo "Wrong selection: Select any number from 1-$#"
    fi
    done
   }

# Call the subroutine to create the menu
echo ""
echo "Please select one server:"
menu_from_array "${hostarray[@]}"