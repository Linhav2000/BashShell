# tạo ba 3 file bỏ chung vào 1 thư mục 
#  hellomake.c tương ứng chương trình chính
#  hellofunc.c là file hàm in thông báo
#  hellomake.h là file header khai báo hàm in ra 
## Lệnh xem kết quả thông thường :														
 	 $ gcc -o hellomake hellomake.c hellofunc.c -I.
 	 $ ./hellomake
#Lệnh này sẽ thực hiện biên dich 2  file.c.
#"-I." có nghĩa là include gcc sẽ thực hiện tìm kiếm trong thư mục hiện tại(.) để thêm file hellomake.h


## Tạo một make đơn giản có tên phổ biến là "Makefile"
        
   CC=gcc
   CFLAGS=-I.

    	hellomake: 
	  $(CC) -o $@  hellomake.c hellofunc.h $(CFLAGS)
#"$@" lấy tên bên trái của target

# khi mà tên file make trùng với tên của một rule nào đấy nó sẽ bị lỗi cách khắc phục :
  THÊM " .PHONY: [TÊN TẤT CẢ CÁC RULE ] "
  VD
  CC=gcc
  CFLAGS=-I.
.PHONY: hellomake 

	hellomake:
          $(CC) -o $@  hellomake.c hellofunc.h $(CFLAGS)

# Khi chúng ta sửa file.h thì make file sẽ không thể nhận biết ra sự thay đổi vậy cách khắc phục
  CC=gcc
 CFLAGS=-I.
 INC_FILES= hellomake.h
.PHONY: hellomake
 	%.o: %.c $(INC_FILE)
   	    $(CC)  -c -o $@ $< $(CFLAGS)  
	 hellomake:
   	    $(CC) -o $@  hellomake.c hellofunc.h $(CFLAGS)
# "-c" tạo ra một oject 
#"$<" lấy giá trị bên phải của rule 
include abc.mk

var="aaa"
var3="ccc"


var1= $(var) # giong de quy tim cai gia tri bien var cuoi cung de in ra
var2 := $(var) # lay gia tri tai thoi diem hien tai
var3 ?= $(var) #tim kiem xem bien var3 co gan gia tri chua gans roi thi lay con chua thi lay gia tri dau tien
var="bbb"

rule3:
	@echo " $(var1)------$(var2)-----$(var3) "
rule1: 
	@echo " hello word"
rule2:
	@echo " what is color "

