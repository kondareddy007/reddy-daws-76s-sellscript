#!/bin/bash

Name=""
Wishes="Good morning"

USSAGE(){
    echo "USSAGE: $(basename $0) -n <name> -w <wishes>"
    echo "-n, specify the name(manatory"
    echo "-w, specify the wishes (mandatory) "
    echo "-h Display the help and exit"
}

while getopts ":n:w:h" opt; do
      case $opt in
            n) Name="$OPTARG";;
            w) Whishes="$OPTARG";;
            h) USSAGE; exit;
      esac
done

echo "Hello $Name.$Wishes I have been learning shell script. "