* python -m http.server
// 整除某个数字 ，求得商   其余的舍弃
% 取模运算  求余运算
/向着最小的靠近   商

- break  # 跳出循环体
- continue # 跳出本次循环，进入下一次的循环 , 进入下一次迭代

位（bit） 来自英文bit，音译为“比特”，表示二进制位。位是计算机内部数据储存的最小单位，11010100是一个8位二进制数。
 一个二进制位只可以表示0和1两种状态；

字节（byte） 字节来自英文Byte，音译为“拜特”，习惯上用大写的“B”表示。

通常1个字节可以存入一个ASCII码，2个字节可以存放一个汉字国标码。

规定一个字节由八个二进制位构成，即1个字节等于8个比特（1Byte=8bit）。

int 四个字节


- print(sum([1, 2])) # use inFunctions

### linux
- lin库名.a # 静态库
- lib库名.so # 动态库 share object

### window
- lin库名.lib # 静态库
- lib.库名.dll # 动态库
- ldd /usr/bin/ls # 判断可执行程序依赖的有哪些库。

### PYCODESTYLE
- class FunctionDemo # class use up_case
- def run_with_env # this def use lower_case.
- private_function add a underline int the front word. such as if _name_ == '_main_':_

### NOTES
- return can be  used in function, express return in Function
- method is simlar as function. but this method is contect to object
- method is a special function.
- pip freeze # show pkg
- pip3 freeze # show pkg
- pip list
- pip show toml # show some pkg's detail informations.
- pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple #
- pip config list # show mirrors
