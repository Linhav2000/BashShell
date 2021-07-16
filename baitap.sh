#! /bin/bash

# tinh tong gia tri cua hai so 55 va 75
 ((tong=55+75))
#in ket qua
echo Tong la : $tong


# su dung lenh if
n=20
if [$n -lt 10]
then
	echo "so mot chu so"
else
	echo " hai chu so "
fi

#su dung if voi logic AND 
echo " nhap ten nguoi dung "
read username
echo " nhap mat khau "
read password
if [[($username -eq "admin" && $password -eq "admin") ]];
then
	echo " hop le"
else 
	echo " khong hop le "
fi
 
# su dung if voi cong OR

echo " nhap n "
read n
if [[ ( $n=="150" || $n=="400" ) ]] ;
then 
	echo " hop le "
else
	echo " khong hop le "
fi

#kiem tra thu muc ton tai 

echo " nhap ten thu muc "
read name 
if [ -e "$name" ]
then
	echo " thu muc ton tai "
else
	`touch $name `
	echo " tao thanh cong "
fi






























