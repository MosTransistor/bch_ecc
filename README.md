# bch_ecc
[Verilog+Python] python script automatic generated BCH algorithm ECC verilog code

## 概述/Overview
基于BCH算法的python脚本，可以自动生成数字逻辑电路代码，支持code word长度从4～2048
>An python script based on the BCH algorithm that can automatic generate verilog code. the script supporting code word lengths from 4 to 2048
>

| IO | direction | description | 
| --- | --- | --- |
| enc_in | input | pre data without encode |
| enc_out | output | post data with encode, raw data and parity |
| dec_in | input | pre data without decode, raw data and parity |
| dec_out | output | post data with decode |
| err_correct | output | 1-bit correctable error occurred |
| err_uncorrect | output | multi-bit uncorrectable error occurred |
| err_location | output | the location where the correctable error occurred (for example, output 2 means dec_in[2] is the error position) |  

## 脚本介绍/script introduce  
1. 脚本使用启动：”python3 ./gen_bch_verilog.py“
2. 输入需要ecc保护的数据长度：”Input Source Data Length : “
3. 产生对应的verilog代码，ecc_xtox.v
比如：输入数据长度：38，则会产生ecc_38to45.v。命名规则：38是原始数据长度，45为数据加上校验码的长度
>1. script usage: "python3 ./gen_bch_verilog.py"
>2. input the unprotected raw data length: "Input Source Data Length: "
>3. generate verilog code, like ecc_xtox.v
>for example: input data length: 38, will generate ecc_38to45.v. 38 means raw data length, 45 means code word length
>
## 数据统计/statistics
| data length | parity length |
| --- | --- |
| 1 | 3 |
| 2~4 | 4 |
| 5~11 | 5 |
| 12~26 | 6 |
| 27~57 | 7 |
| 58~120 | 8 |
| 121~247 | 9 |

## 数据结构/database
src -> python源代码    
sim(Icarus Verilog + gtkwave) -> 仿真   
>python script in "src" folder, simulation in "sim" folder
>
## 备注/comment
仿真目录：“make sim”执行编译，“make wave”打开波形；
> in "sim" folder, "make sim" for compile, "make wave" for open waveform;
> 