![](media/image1.jpeg)

![](media/image2.jpeg)

# 课程设计报告

- 课程名称：数字逻辑与数字系统课程设计

- 设计题目：基于FPGA的8位模型计算机设计与仿真

- 专 业：计算机科学与技术

- 设计日期：2020年6月29日\~2020年7月24

摘要
====

本设计将自顶向下地对8位模型计算机设计，完成系统设计、功能模块和仿真、系统顶层设计与仿真，加深了对"数字逻辑与数字系统"知识的理解，强化了理论知识，掌握了的实践和应用。

在`QuartusⅡ`环境下，采用VHDL语言构建算术逻辑运算单元、累加器、控制器、地址寄存器、程序计数器、数据寄存器、存储器、节拍发生器、时钟信号源、指令寄存器、指令译码器功能模块，以及模型计算机系统。在`ModelSim`仿真环境下，完成功能模块，以及模型系统仿真。

> 功能模块主要有：`Controller`控制器、`ALU`算术逻辑单元、`Shifter`移位器、`InstrReg`指令寄存器、`OutReg`结果寄存器、`ProgCnt` 程序计数器、`AddrReg` 地址寄存器、`OpReg`工作寄存器、`CMP`比较器和`RegArray` 寄存器阵列。系统驱动时钟由`Cyclone IV `E系列FPGA开发板的主控时钟50MHz经分频得到，并通过节拍脉冲发生器对各功能模块的微操作实现有序控制。

本系统的设计在满足基本要求的前提下，进行了进一步的功能扩充。为保证运行更多有意义的，对指令集做到了尽可能的丰富，例如：指令集包含算术指令、逻辑指令、存取操作指令、停机指令等共计13条。为了扩大系统的运算范围，将8位模型机扩充为16位，
指令码也同时变成16位， 提升了可扩充性。

**关键词：**`Quartus Prime(20.1)`, 8位模型机, `ModelSIM` , `VHDL`语言

目录

> [摘要 ](#摘要)
>
> [第1章 绪论](#第1章-绪论)
>
> [1.1 8位模型计算机简介](#位模型计算机简介)
>
> [1.2设计主要内容](#设计主要内容)
>
> [1.2.1 设计指标](#设计指标)
>
> [1.2.2 设计思路](#设计思路)
>
> [第2章 系统设计](#_Toc46188893)
>
> [2.1 模型计算机原理](#模型计算机原理)
>
> [2.2 模型计算机组成](#模型计算机组成)
>
> [2.2模型计算机的指令系统设计](#模型计算机的指令系统设计)
>
> [第3章 功能模块设计与仿真](#_Toc46188897)
>
> [3.1节拍发生器](#节拍发生器)
>
> [3.1.1节拍发生器的VHDL设计](#节拍发生器的vhdl设计)
>
> [3.1.2节拍发生器仿真](#节拍发生器仿真)
>
> [3.2程序计数器PC](#程序计数器pc)
>
> [3.2.1程序计数器PC的VHDL设计](#程序计数器pc的vhdl设计)
>
> [3.2.2程序计数器的仿真](#程序计数器的仿真)
>
> [3.3 指令寄存器(IR) 和指令译码器](#指令寄存器ir-和指令译码器)
>
> [3.3.1 指令寄存器(IR) 和指令译码器的 VHDL 设计](#指令寄存器ir-和指令译码器的-vhdl-设计)
>
> [3.3.2 指令寄存器(IR) 和指令译码器的仿真](#指令寄存器ir-和指令译码器的仿真)
> 
>[3.4 存储器 RAM](#存储器-ram)
> 
> [3.4.1 存储器 RAM 的VHDL 设计](#存储器-ram-的vhdl-设计)
>
> [3.4.2 存储器 RAM 的仿真](#存储器-ram-的仿真)
>
> [3.5 存储器选择器 RAM MUX](#存储器选择器-ram-mux)
>
> [3.5.1 存储器选择器 RAM MUX 的VHDL 设计](#存储器选择器-ram-mux-的vhdl-设计)
>
> [3.5.2 存储器选择器 RAM MUX 的仿真](#存储器选择器-ram-mux-的仿真)
>
> [3.6 地址寄存器 MAR](#地址寄存器-mar)
> 
>[3.6.1 地址寄存器 MAR 的VHDL 设计](#地址寄存器-mar-的vhdl-设计)
> 
>[3.6.2 地址寄存器 MAR 的仿真](#地址寄存器-mar-的仿真)
> 
>[3.7 累加器 ACC](#累加器-acc)
> 
>[3.7.1 累加器 ACC 的VHDL 设计](#累加器-acc-的vhdl-设计)
> 
>[3.7.2 累加器 ACC 的仿真](#累加器-acc-的仿真)
> 
>[3.8 算术逻辑单元模块ALU](#算术逻辑单元模块alu)
> 
>[3.8.1 算术逻辑单元模块ALU 的VHDL 设计](#算术逻辑单元模块alu-的vhdl-设计)
> 
>[3.8.2 算术逻辑单元模块ALU 仿真](#算术逻辑单元模块alu-仿真)
> 
>[3.9 控制器CTRL](#控制器ctrl)
> 
> [3.9.1 控制器CTRL 的VHDL 设计](#控制器ctrl-的vhdl-设计)
>
> [3.9.2 控制器CTRL 的仿真](#控制器ctrl-的仿真)
>
> [3.10 数据寄存器DR](#数据寄存器dr)
>
> [3.10.1 数据寄存器DR 的VHDL 设计](#数据寄存器dr-的vhdl-设计)
>
> [3.10.2 数据寄存器DR 的仿真](#数据寄存器dr-的仿真)
>
> [第4章 系统VHDL设计与仿真](#第4章-系统vhdl设计与仿真)
>
> [4.1 顶层模块设计](#顶层模块设计)
>
> [4.2 顶层模块仿真](#顶层模块仿真)
>
> [第5章 结论](#第5章-结论)
>
> [参考文献](#参考文献)



第1章 绪论
==========

1.1 8位模型计算机简介
---------------------

为了更好地理解数字逻辑与数字系统课程的基础知识，进一步学习计算机的基本结构和原理。在本次课程设计中，选择了8位模型计算机的设计与实现题目，为了进一步提高自己的能力，增强自己的水平，对该题目做出的改进有添加部分指令、将8位扩充为16位模型机。

模型计算机，顾名思义，就是以实际的计算机结构为基础，对其进行抽象和简化，使之具备计算机的基本结构和功能，可以对数据或指令进行处理和执行。

模型计算机应该具备以下模块：CPU、存储单元、输入和输出、以及总线，可以使本系统具有更好的演示性和可操作性。

根据汇编语言的知识，CPU模块的核心器件是控制器，通用寄存器组AX、BX，专用寄存器(例如：指令寄存器，程序计数器和地址寄存器等)，以及用于驱动各器件协同有序工作的时序发生器。

1.2设计主要内容
---------------

### 1.2.1 设计指标

本模型计算机具备以下功能、模块，以及参数指标：

1.   模块：存储器模块、CPU模块、外设输入模块和输出模块；

2.   总线：包括地址总线和数据总线，总线位宽为16位；

3.   指令集：涵盖基本的汇编指令，如算术运算指令、逻辑运算指令、移位指令、跳转指令、内存读写指令、数据转移指令、运算指令和停机指令，共计13条；

4.   存储器容量：`16 * 1bit(8 byte)`；

5.   输入输出方式：使用存储器初始化文件，固化在内存和寄存器阵列中的数据，尽可能丰富数据来源和去向，以及基本的数据存取。输入存在RAM中，输出存储在寄存器中。

### 1.2.2 设计思路

1 . 模块化设计

(1) 根据确立的设计指标，对各个模块进行单独设计和仿真，对该模块可能涉及的作用和功能有清晰地认识，同时需要注意各模块协同工作时的时序关系和控制信号；

(2) 模块设计的方式可以更为多样化，以VHDL语言编程为主、电路原理图设计和状态转换图设计等方式为辅，尽可能多地熟悉 `Quartus
  II`软件的使用方法和功能；

(3) 自顶向下，逐层设计。对各模块的设计应从顶层的应用/功能入手，分解其在执行指令中选通信号的控制情况和模块工作的先后情况，对可能出现的问题要及早发现及早改正，以免后续综合时，对系统产生不确定性影响。

2\. 顶层设计与描述

当功能模块设计完成后，可由VHDL代码生成元件符号，根据模型机的结构，将各元器件用总线和控制线连接起来，连接的顺序由小及大、由内到外；每连完一个模块就测试一个模块，确保模块内部可以正常工作。

3\. 仿真

在设计过程中，及时对小的模块进行仿真验证，通过才能继续设计。若只在最后进行仿真验证，则对于出现的问题将可能很难发现或解决，从而增大了程序调试的任务量，迟滞了课程设计的进度。仿真工具使用`ModelSim`，编写VHDL测试文件.

第2章 系统设计
==============

2.1 模型计算机原理
------------------

- 所谓模型计算机就是以计算机实际结构为基础，将其简化，能对输入的信息进行处理运算，更便于分析设计。

- 计算机主要由运算器、控制器、存储器、输入设备、输出设备五大部分组成。计算机能按照用户要求、完成提前设计好的指令，指令是计算机执行具体操作的命令。一条指令就是机器语言的一个语句，用来说明机器硬件要完成什么样的基本操作。

- 在设计整体结构时，依据的是各指令的数据通路。然后采用自顶向下，逐步分解细化的方法进行设计。先整体模块，后局部模块。

- 在本设计中，把模型计算机划分成十余个基本模块，分别是存储器、时钟信号源、节拍发生器、操作控制器、程序计数器、地址寄存器、累加器、算术逻辑单元、指令寄存器和指令译码器。

- 让预设指令在这些部件中按顺序执行达到预期目的。计算机执行一条指令分为三步进行：
  - 第1步是取指令，将要执行的指令从内存取到控制器中；

  - 第2步是分析指令，对所取的指令通过译码器进行分析判断，判断该指令要完成的操作；

  - 第3步是执行指令，根据分析结果向各部件发出操作信息，执行该指令相应的操作功能。

2.2 模型计算机组成
------------------

在设计整体结构时，依据的是各指令的数据通路。然后采用自顶向下，逐步分解细化的方法进行设计。先整体模块，后局部模块。

从整体上看，模型计算机主要分为：CPU模块、外设输入模块、外设输出模块、存储模块。模型计算机结构框图如图2.1所示，具体模块有：节拍发生器模块、指令寄存器模块IR、算术逻辑单元模块ALU 、数据寄存器模块DR 、程序计数器模块PC、地址寄存器模块MAR 、操作控制器模块等。

![图2-2-1 模型计算机结构框图](media/image3.png)


2.2模型计算机的指令系统设计
---------------------------

在模型计算机中，指令用于验证模型机能否正常工作。

所有的指令包括将BX 寄存器传值到 AX、 AX 寄存器传值到BX、从存储器读取一个值到AX、 从存储器读取一个值到BX、 加法指令add、
减法指令sub、 将AX 寄存器中的值右移、 将BX 寄存器中的值右移、 将AX寄存器中的值左移、 将BX 寄存器中的值左移、 交换AX 和BX 寄存器中的值、取与(and) 、停机 (halt) 共13条指令。

第3章 功能模块设计与仿真
========================

3.1节拍发生器
-------------

节拍发生器用于产生八个节拍脉冲信号T0\~T7，以便控制计算机按固定节拍有序地工作。节拍发生是一个环形移位寄存器，产生的波形如图3-1-1所示。构成节拍发生器的关键在于环形移位寄存器的初始状态要置成10000000，

- 图3-1-1 节拍发生器脉冲波形图
  ![图3-1-1 节拍发生器脉冲波形图](media/image4.png)

### 3.1.1节拍发生器的VHDL设计

为了便于设计，此处没有使用结构描述模型，而是使用了VHDL
行为描述模型实现了节拍器的功能，具体代码如图3-1-2所示，编译成功后得到RTL
Viewer如图3-1-3所示。

![](media/image5.png)

- 如图3-1-2 节拍发生器VHDL代码

![](media/image6.png)

- 图3-1-3 节拍发生器的RTL图

### 3.1.2节拍发生器仿真

要用`ModelSim`实现节拍发生器脉冲波形图，编写的测试向量如图3-1-4所示，运行结果如图3-1-5。

![](media/image7.png)

- 如图3-1-5 节拍发生器测试向量代码

![](media/image8.png)

![](media/image9.png)

![](media/image10.png)

- 如图3-1-6 节拍发生器`ModelSim`仿真结果

3.2程序计数器PC
---------------

程序计数器的作用是确定下一条指令的地址。当count=0时，计数器保持原状态；当count=1时，计数器处于计数状态，当时钟信号CLK上升沿到来时，做加1运算。

### 3.2.1程序计数器PC的VHDL设计

同样为了实现的便捷，此处使用行为描述模型进行VHDL 设计。

![](media/image11.png)

- 图3-2-1 程序计数器的VHDL代码

![](media/image12.png)

- 图3-2-2 程序计数器的RTL图

### 3.2.2程序计数器的仿真

程序计数器编写的测试向量如图3-2-3所示，simulation仿真运行结果如图3-2-4。由波形图可知，时钟信号的周期设置为1ns，
前1ns进行清零，将PC
的值清零，之后开始随着上升沿进行计数，输出地址。![](media/image13.png)

- 图 3-2-3 PC 测试向量VHDL

![](media/image14.png)

- 图3-2-4(1)程序计数器仿真结果

![](media/image15.png)

- 图3-2-4(2)程序计数器仿真结果

![](media/image16.png)

- 图3-2-4(3) 程序计数器仿真结果

3.3 指令寄存器(IR) 和指令译码器
-------------------------------

指令代码是16位的， 所以指令寄存器可以使用两个8位D触发器实现。本简易计算器共实现13条指令分别为：BX 寄存器传值到 AX、 AX寄存器传值到BX、 从存储器读取一个值到AX、 从存储器读取一个值到BX、加法指令add、 减法指令sub、 将AX 寄存器中的值右移、 将BX
寄存器中的值右移、 将AX 寄存器中的值左移、 将BX 寄存器中的值左移、交换AX 和BX 寄存器中的值、 取与(and) 、停机 (halt)共13条指令。设计上通过数据总线将数据传输进入IR 存储并进行译码，将相应的端口输出信号。设计图如图3-3-1 所示。

![](media/image17.png)

- 图3-3-1 指令寄存器(IR) 和指令译码器

### 3.3.1 指令寄存器(IR) 和指令译码器的 VHDL 设计

使用行为描述模型进行VHDL 设计，如图3-3-2所示，RTL Viewer 如图3-3-3

![](media/image18.png)

- 图 3-3-2 指令寄存器(IR) 和指令译码器的 VHDL
  设计图![](media/image19.png)
  
- 图 3-3-3 指令寄存器(IR) 和指令译码器的 RTL Viewer

### 3.3.2 指令寄存器(IR) 和指令译码器的仿真

指令寄存器(IR)
和指令译码器的测试向量如图3-3-4所示，simulation仿真运行结果如图3-3-5。

![](media/image20.png)

- 图 3-3-4 寄存器(IR) 和指令译码器的测试向量 VHDL

![](media/image21.png)

- 图 3-3-5(1) 指令寄存器(IR) 和指令译码器的仿真

![](media/image22.png)

- 图 3-3-5(2) 指令寄存器(IR) 和指令译码器的仿真

![](media/image23.png)

- 图 3-3-5(3) 指令寄存器(IR) 和指令译码器的仿真

3.4 存储器 RAM
--------------

### 3.4.1 存储器 RAM 的VHDL 设计

使用行为描述模型进行VHDL 设计，设计代码如图3-4-1所示，RTL Viewer
如图3-4-2所示。

![](media/image24.png)

- 图 3-4-1 存储器 RAM 的VHDL 设计

![](media/image25.png)

- 图 3-4-2 存储器 RAM的RTL Viewer

### 3.4.2 存储器 RAM 的仿真

存储器 RAM 的测试向量如图3-4-3 所示，simulation 仿真结果如图 3-4-4所示。

![](media/image26.png)

- 图 3-4-3 存储器 RAM 的测试向量

![](media/image27.png)

- 图 3-4-4 存储器 RAM 的simulation 仿真结果

3.5 存储器选择器 RAM MUX
------------------------

### 3.5.1 存储器选择器 RAM MUX 的VHDL 设计

使用行为描述模型进行VHDL 设计，设计代码如图 3-5-1 所示，RTL Viewer 如图
3-5-2 所示。

![](media/image28.png)

- 图 3-5-1 存储器选择器 RAM MUX 的VHDL 设计

![](media/image29.png)

- 图 3-5-2 存储器选择器 RAM MUX 的RTL Viewer

### 3.5.2 存储器选择器 RAM MUX 的仿真

存储器选择器 RAM MUX 的测试向量如图 3-5-3 所示，simulation 仿真结果如图
3-5-4 所示。

![](media/image30.png)

- 图 3-5-3 存储器选择器 RAM MUX 的测试向量

![](media/image31.png)

- 图 3-5-4(1) 存储器选择器 RAM MUX 的simulation仿真

![](media/image32.png)

- 图 3-5-4(2) 存储器选择器 RAM MUX 的simulation仿真

3.6 地址寄存器 MAR
------------------

### 3.6.1 地址寄存器 MAR 的VHDL 设计

使用行为描述模型进行VHDL 设计，设计代码如图 3-6-1 所示，RTL Viewer 如图
3-6-2 所示。

![](media/image33.png)

- 图 3-6-1 地址寄存器 MAR 的VHDL 设计

![](media/image34.png)

- 图 3-6-2 地址寄存器 MAR 的RTL Viewer

### 3.6.2 地址寄存器 MAR 的仿真

地址寄存器 MAR 的测试向量如图 3-6-3 所示，simulation 仿真结果如图 3-6-4
所示。

![](media/image35.png)

- 图 3-6-3 地址寄存器 MAR 的测试向量

![](media/image36.png)

- 图 3-6-4(1) 地址寄存器 MAR 的simulation 仿真

![](media/image37.png)

- 图 3-6-4(2) 地址寄存器 MAR 的simulation 仿真

3.7 累加器 ACC
--------------

### 3.7.1 累加器 ACC 的VHDL 设计

使用行为描述模型进行VHDL 设计，设计代码如图 3-7-1 所示，RTL Viewer 如图
3-7-2 所示。

![](media/image38.png)

- 图 3-7-1 累加器 ACC 的VHDL 设计

![](media/image39.png)

- 图 3-7-2 累加器 ACC 的RTL Viewer

### 3.7.2 累加器 ACC 的仿真

累加器 ACC 的测试向量如图 3-7-3 所示，累加器 ACC 的simulation
仿真结果如图 3-7-4 所示。

![](media/image40.png)

- 图 3-7-3 累加器 ACC 的测试向量

![](media/image41.png)

- 图 3-7-4 累加器 ACC 的simulation 仿真

3.8 算术逻辑单元模块ALU 
-----------------------

### 3.8.1 算术逻辑单元模块ALU 的VHDL 设计

使用行为描述模型进行VHDL 设计，设计代码如图 3-8-1 所示，RTL Viewer 如图
3-8-2 所示。

![](media/image42.png)

- 图 3-8-1 算术逻辑单元模块ALU 的VHDL 设计

![](media/image43.png)

- 图 3-8-2 算术逻辑单元模块ALU 的RTL Viewer

### 3.8.2 算术逻辑单元模块ALU 仿真

算术逻辑单元模块ALU 的测试向量如图 3-8-3 所示，算术逻辑单元模块ALU
的simulation 仿真结果如图 3-8-4 所示。

![](media/image44.png)

- 图 3-8-3 算术逻辑单元模块ALU 的测试向量

![](media/image45.png)

- 图 3-8-4(1) 算术逻辑单元模块ALU 的simulation 仿真

![](media/image46.png)

- 图 3-8-4(2) 算术逻辑单元模块ALU 的simulation 仿真

3.9 控制器CTRL
--------------

### 3.9.1 控制器CTRL 的VHDL 设计

使用行为描述模型进行VHDL 设计，设计代码如图 3-9-1 所示，RTL Viewer 如图3-9-2 所示。

![](media/image47.png)

- 图 3-9-1 控制器CTRL 的VHDL 设计

![](media/image48.png)

- 图 3-9-2 控制器CTRL 的RTL Viewer

### 3.9.2 控制器CTRL 的仿真

控制器CTRL的测试向量如图 3-9-3 所示，控制器CTRL的simulation 仿真结果如图3-9-4 所示。

![](media/image49.png)

- 图 3-9-3 控制器CTRL的测试向量

![](media/image50.png)

- 图 3-9-4(1) 控制器CTRL的simulation 仿真

![](media/image51.png)

- 图 3-9-4(2) 控制器CTRL的simulation 仿真

3.10 数据寄存器DR
-----------------

### 3.10.1 数据寄存器DR 的VHDL 设计

使用行为描述模型进行VHDL 设计，设计代码如图 3-10-1 所示，RTL Viewer 如图3-10-2 所示。

![](media/image52.png)

- 图 3-10-1 数据寄存器DR 的VHDL 设计

![](media/image53.png)

- 图 3-10-2 数据寄存器DR 的RTL Viewer

### 3.10.2 数据寄存器DR 的仿真

数据寄存器DR 的测试向量如图 3-10-3 所示，数据寄存器DR 的simulation仿真结果如图 3-10-4 所示。

![](media/image54.png)

- 图 3-10-3 数据寄存器DR 的测试向量

![](media/image55.png)

- 图 3-10-4 数据寄存器DR 的simulation 仿真

第4章 系统VHDL设计与仿真
========================

4.1 顶层模块设计
----------------

按照开始设计的模型机的结构将部件进行连线，并将寄存器和总线映射出来便于观察模型机的运行情况。顶层模块的设计代码如图4-1-1所示，对应得RTL
Viewer如图4-1-2所示。

![](media/image56.png)

![](media/image57.png)

![](media/image58.png)

- 图4-1-1 顶层VHDL 设计

![](media/image59.png)

- 图4-1-2 顶层RTL Viewer

4.2 顶层模块仿真
----------------

编写`testbenth`文件对顶层模块测试。测试文件对信号做了六次修改。顶层设计的测试向量如图4-1-3 所示，顶层设计 的simulation 仿真结果如图 4-1-4 所示。

![](media/image60.png)

![](media/image61.png)

![](media/image62.png)

- 图 4-1-3 顶层模块VHDL 仿真向量

从仿真结果可以看出，第一次得求与指令0101010101010101和0000000000001100求与指令结果正确，后来的和1110001111000111求和结果也正确，以及AX和BX 寄存器交换数据得结果和预期中一致。综上，满足设计要求。

![](media/image63.png)

![](media/image64.png)

（通过RAM输入指令和数据）

![](media/image65.png)

- 图 4-1-3 顶层模块VHDL simulation仿真结果

第5章 结论
==========

本次课设题目是"基于FPGA的8位模型机的设计与实现"，该课题从软件实现平台的学习到程序的设计与仿真，实现了对8位模型计算机各部分功能的仿真。

在开发期间，有目的的去学习一些将要用到的东西，仔细的考虑工作流程的规律和步骤充分的利用手中的开发工具，对VHDL语言有了深刻地了解与掌握，并对`QuartusII`软件有了深入的了解。

运用`QuartusII`软件，基于VHDL的8位模型计算机，完成了以下工作：

针对8位模型计算机的总体框图划分成几个相对独立的模块，然后对各个模块在开发环境中进行编程和调试。

对没个模块单独进行分析设计，并在Quartus II中进行了功能仿真。

在设计的过程中，将一些常用的模块定义为相应的逻辑元件符号，以便共享和复用，使设计具有可重用性和可移植性，提高工作效率。

各个模块都调试成功后将各个模块连接起来总体调试，按照总体的设计图进行集成调试。

8位模型计算机的仿真实验结果表明波形正确，达到了设计的功能要求。

通过本课题的设计，让我对数字逻辑与系统设计和计算机组成原理这两门课程有了更深的体会，并更好的学会了使用`QuartusⅡ`软件进行设计和运用VHDL语言进行编程。在完成此设计中也遇到过许多困难，设计中也存在着一些不足之处，希望在日后的学习中慢慢得到改善和提高。

参考文献
========
1.  李晶皎, 李景宏, 曹阳. 逻辑与数字系统设计(M) .北京:清华大学出版社, 2018.
2.  周润景, 苏良碧著. 基于Quartus II的FPGA/CPLD数字系统设计\[M\]. 北京: 电子工业出版社,2013.