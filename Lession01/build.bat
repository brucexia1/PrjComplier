rem 开发环境：
rem windows10 + jdk-8u231-windows-x64.exe + antlr-4.7-complete.jar

rem  del old files
del /Q *.java
del /Q *.class
del /Q *.tokens

rem build g4
java -cp .;..\bin\antlr-4.7-complete.jar org.antlr.v4.Tool Assign.g4

rem build java
javac -cp .;..\bin\antlr-4.7-complete.jar ./*.java

rem run antlr gui
rem 执行下面命令后等待输入表达式，输入完成后回车 -> 按"ctrl + z" -> 回车
java -cp .;..\bin\antlr-4.7-complete.jar org.antlr.v4.gui.TestRig  Assign expr -gui


pause