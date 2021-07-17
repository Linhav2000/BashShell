#!/bin/bash
 
option="${1}"
case ${option} in
   show_ram) 
      free 
      ;; 
   show_dir)
      echo -n "Your working directory:"
      cd /home/hoangtb/scrip
      ;; 
   show_file) file="${2}"
       mkdir $file
       pwd	   
       ls 
      ;;
   show_cpu)
       lscpu
       ;; 
   show_exit)
       cd ../
       ;;

esac
