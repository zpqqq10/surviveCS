#initiallize the csv files with the strings
echo "insert_time,delete_time" > ../time/Splayref_seq_time.csv
echo "insert_time,delete_time" >../time/unbalancedref_seq_time.csv
echo "insert_time,delete_time" > ../time/AVL_seq_time.csv
echo "insert_time,delete_time" >../time/AVL_anti_time.csv
echo "insert_time,delete_time" > ../time/Splayref_anti_time.csv
echo "insert_time,delete_time" >../time/unbalancedref_anti_time.csv
echo "insert_time,delete_time" >../time/AVL_anti_time.csv
echo "insert_time,delete_time" > ../time/Splayref_random_time.csv
echo "insert_time,delete_time" >../time/unbalancedref_random_time.csv
echo "insert_time,delete_time" >../time/AVL_random_time.csv
for i in {1000..10000}			#traverse the N from 1000 to 10000
do
    python sample.py $i > sample_init 
	#get the input series which lines refer to three different input series
    split -1 sample_init input_
    #input the seqence insert series and seqence delete series 
    temp_1=`cat input_aa | ../Splayref`
    temp_2=`cat input_aa | ../unbalancedref`
    temp_3=`cat input_aa | ../AVL_Tree`
    temp_1=${temp_1/Insert $i keys into the tree costs: }
    temp_1=${temp_1/Delete keys costs:} 
	#organize the csv files
    echo $temp_1|sed "s/ /,/g" >> ../time/Splayref_seq_time.csv
    temp_2=${temp_2/Insert $i keys into the tree costs: }
    temp_2=${temp_2/Delete keys costs:} 
    echo $temp_2|sed "s/ /,/g" >>../time/unbalancedref_seq_time.csv
    temp_3=${temp_3/Insert $i keys into the tree costs: }
    temp_3=${temp_3/Delete keys costs:} 
    echo $temp_3|sed "s/ /,/g" >>../time/AVL_seq_time.csv
    
    temp_1=`cat input_ab | ../Splayref`
    temp_2=`cat input_ab | ../unbalancedref`
    temp_3=`cat input_ab | ../AVL_Tree`
    temp_1=${temp_1/Insert $i keys into the tree costs: }
    temp_1=${temp_1/Delete keys costs:} 
    echo $temp_1|sed "s/ /,/g" >> ../time/Splayref_anti_time.csv
    temp_2=${temp_2/Insert $i keys into the tree costs: }
    temp_2=${temp_2/Delete keys costs:} 
    echo $temp_2|sed "s/ /,/g" >>../time/unbalancedref_anti_time.csv
    temp_3=${temp_3/Insert $i keys into the tree costs: }
    temp_3=${temp_3/Delete keys costs:} 
    echo $temp_3|sed "s/ /,/g" >>../time/AVL_anti_time.csv

    temp_1=`cat input_ac | ../Splayref`
    temp_2=`cat input_ac | ../unbalancedref`
    temp_3=`cat input_ac | ../AVL_Tree`
    temp_1=${temp_1/Insert $i keys into the tree costs: }
    temp_1=${temp_1/Delete keys costs:} 
    echo $temp_1|sed "s/ /,/g" >> ../time/Splayref_random_time.csv
    temp_2=${temp_2/Insert $i keys into the tree costs: }
    temp_2=${temp_2/Delete keys costs:} 
    echo $temp_2|sed "s/ /,/g" >>../time/unbalancedref_random_time.csv
    temp_3=${temp_3/Insert $i keys into the tree costs: }
    temp_3=${temp_3/Delete keys costs:} 
    echo $temp_3|sed "s/ /,/g" >>../time/AVL_random_time.csv
	##print the process since the execute time will be over an hour
    if [ $(($i % 100))  -eq 0 ] ;
    then
        echo $i
    fi
done 