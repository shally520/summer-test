# DC Lab Practices

# Lab 工程文件
- 下载工程文件, 下载地址：[Github](https://github.com/shally520/summer-test/tree/master/lab1)  
- 在计算机中安装 eda 环境
- 把工程文件传入虚拟机
# Lab Flow

## 检查和修改 Tcl 文件
1. 将lab1作为当前目录 `cd lab1`
2. 列出lab1下所有文件 `ls`，确保文件齐全
3. 补充 `common__setup.tcl` 空白处
```
     set ADDITIONAL_SEARCH_PATH        "../ref/libs/mw_lib/sc/LM ./rtl ./scripts";  # Directories containing logical libraries,
                                                                                       
     set TARGET_LIBRARY_FILES          sc_max.db;
     set SYMBOL_LIBRARY_FILES          sc.sdb;

     set MW_DESIGN_LIB                 TOP_LIB;
     set MW_REFERENCE_LIB_DIRS         ../ref/libs/mw_lib/sc;# Milkyway reference libraries

     set TECH_FILE                     ../ref/libs/tech/cb13_6m.tf  ;

     set TLUPLUS_MAX_FILE              ../ref/libs/tlup/cb13_6m_max.tluplus  ;

     set TLUPLUS_MIN_FILE              ../ref/libs/tlup/cb13_6m_min.tluplus  ;

     set MAP_FILE                      ../ref/libs/tlup/cb13_6m.map  ;
```
4. 遇到的问题
- 填写*common_setup.tcl*文件时，路径之间用空格间隔开

## 调用 Design Vision
1. 查看当前路径在lab1下  `pwd` 
2. 调出*design vision*界面 `design_vision -topo -gui`
3. 选择 ***File &rarr; Setup*** 
 - 确保路径正确
 ![路径设置](doc_imgs\路径设置.png)
4. 检查逻辑库和物理库是否一致 `check_library`
5. 检查*TLU Pus*和*Technology*文件是否一致 `check_tlu_plus_files`
6. 以上没有出错时会出现passed

## 将设计读入 DC Memory
1. 点击 *File &rarr; Read*
- 点击rtl文件，再点击TOP.vhd或者TOP.v文件
- 选择TOP保证右下角窗口显示与选择一致 ***Design:TOP***
2. 选择 *File &rarr;Link Design &rarr;OK*
- 链接设计，解析所有引用
- 在 *log Area* 不应该出先警告或者错误
3. 保存 unmapped 中的设计用 ddc 的格式
```
write -hier -f ddc -out unmapped/TOP.ddc
```
4. 用 dc_shell 命令中查看在 memory 中设计和库列表
```
   list_designs
    list_libs
```
## 分析 Design Schematic Views
- 选中 *Logical Hierarchy* 中的 *TOP*
- 点击菜单栏中 *Schematic &rarr;Schematic Views*
 
## 用脚本约束 TOP
1. 重新打开 *Logical Hierarchy* 窗口
2. 通过以下命令约束*TOP* `source TOP.con`

## 编译到***Vendor-Specific Gates***
1. 在 *design vision* 窗口底部命令框键入以下命令
`compile_ultra`

## 生成报告和分析时间
1. 进入*TOP*的*Symbol views*
2. 在命令口键入 `rc`
  - 执行该命令将会在*log area*列出所有违反约束的汇总
3. 通过以下命令可以生成时间报告得到更详细的时间路径信息 `rt`

## 保存优化的设计
1. *File &rarr; save As*
2. 双击*mapped*
3. 输入*TOP.v*在文件名字中
4. 确保*Save all designs in hierararchy*键被选择
5. 点击*Save*,将*gate-level netlist* 以.v文件存入了*mapped*目录下
6. 选择窗口底部的 *History*
7. 选择 *Save Contents As* 保存历史命令，并且确保 *dc.tcl* 保存在 *scripts* 目录下

## 删除设计并退出***Design Vision***
1. 执行以下命令删除所有历史命令
```
    fr
    list_designs
```
2. 记录历史命令 `h`
 - 执行这个命令所有历史命令将自动记录在创建在lab目录下的command.log文件中。
3. 退出*Design Vision*
```
File - Exit - OK
```
- 也可以在命令行输入exit
  
## 另一种调用 `Design Vision GUI` 的方法
1. 在 linux shell 界面输入：
```
dc_shell -topo
```
2. 在 DC_shell 界面输入
```
start_gui
```
3. 退出 DC_shell
```
design_vision -topo> stop_gui
```




