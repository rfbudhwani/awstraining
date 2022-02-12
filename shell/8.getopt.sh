#!/bin/bash
FIRST=""                                   
LAST=""                                  
usage() {                                 
  echo "Usage: $0 [ -f FIRST ] [ -l LAST ]" 1>&2 
}

while getopts ":f:l:" options; do        
                                          
  case "${options}" in                    
    f)                                    
      FIRST=${OPTARG}                      
      ;;
    l)                                    
      LAST=${OPTARG}
      ;;
    :)                                    
      echo "Error: -${OPTARG} requires an argument."                     
      ;;
    *) 
      usage                                                       
      ;;
  esac
done

echo "First : $FIRST"
echo "Last : $LAST"

exit 0               

# SWITCH=false
# VAL=default
# while [ "$#" -gt 0 ] ; do
#   case "${1}" in
#     (-s|--switch) SWITCH=true ;;
#     (-v|--value)  VAL="${2}" ; shift ;;
#     (-v?*)        VAL="${1#-v}" ;;
#     (--value=?*)  VAL="${1#--value=}" ;;
#   esac
#   shift
# done