 ## tar

 tar xvf ... # tar a file
 tar zcvf back.tar.gz 1.html 2.html  # - can ben ignore  or use backup.tgz
 tar zxvf path/demo.tar.gz # zip demo.tar.gz
 tar ztvf 1.tgz # show files about 1.tgz
 tar zxvf 1.tgz 1.c # unzip some files in 1.tgz ?
 tar zcvf 1.tgz 1.cpp -w # show second confirm

 tat zxvf 1.tgz -C <path> # 将tgz 包解压到制定的目录

 z  --- 利用gzip方式进行压缩文件信息
 c  --- creat 创建出一个压缩包
 t  list
 v  --- 显示压缩数据过程
 f  --- 指定压缩包保存路径


