#!/bin/bash
function thuhien() {
      free
}
function thuchien2(){
	echo -n "Your working directory:"
        pwd 
}
function thuchien3(){
       mkdir $file         
       ls 
}
function thuchien4(){
	lscpu
}
function thuhien5() {
	cd ../
}
option="${1}"
case ${option} in
   show_ram) 
      thu
      ;; 
   show_dir)
      thuchien2
      ;; 
   show_file) file="${2}"
       thuchien3
      ;;
   show_cpu)
      thuchien4
       ;; 
   show_exit)
     thuchien5
       ;;

esac 






