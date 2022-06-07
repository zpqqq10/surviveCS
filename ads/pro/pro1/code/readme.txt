How to reproduce the results？(the executable files under Linux has no suffix)

You are supposed to reproduce the results in linux.

change directory into /sample and execute the command './run.sh' and wait for a while(more than a hour)
before that, please ensure there is a python vision environment on your machine

the bash scipts will output 9 csv files in ./time which are the time recorded by the c program 
and 6 png files in ./pictures which is gernerated by the plot.ipynb(plot.py) according to the data in csv.

then execute the plot.ipynb
if you don't have jupyter-notebook, we provide the sample output in the ./sample/output as html file and pdf file.


the content followed by is the description of each files in the folders:
source code :
the folder containing AVL_Tree.cpp, Splayref.cpp and unbalanced.cpp, the source code of the three algorithms

AVL_Tree AVL_Tree.exe Splayref Splayref.exe unbalanced unbalanced.exe :
the executable files of three algorithms and the binary ELF compiled and linked by gcc

directory time:
the csv files

directory sample:
run.sh
the bash script which will use sample.py to gernerate the input series and put the input series into the binary ELF
next, use the ELF's output to gernerate the csv files in ./time. Finally use the plot.py to plot.

sample.py:
gernerate the required input series.

plot.py:
plot

sample_init input_aa input_ab input_ac:
the processing file, 

directory output:
the sample output of the result which is mentioned in the report.
