# trampam
# Алгоритм Евклида(нахождение наибольшего общего делителя)
#NOD=$uninitialized_variable
#PEREM=$uninitialized_variable
#PEREMEN=$uninitialized_variable
#X1=$uninitialized_variable
#X2=$uninitialized_variable
#X3=$uninitialized_variable

echo "введите первую целочисленную неотрицательную переменную:"
read PEREM;
echo $PEREM
    #while [[$PEREM -gt "0"]];
    #do
    #echo "Введено некорректное значение! введите целочисленную неотрицальную переменную!"
    #read PEREM;
    #echo "$PEREM"
    #done
    #fi
echo "введите вторую целочисленную неотрицательную переменную"
read PEREMEN;
echo $PEREMEN
    #while [$PEREMEN - lt "0"];
    #do
    #echo "Введено некорректное значение! введите целочисленную неотрицальную переменную!"
    #read PEREMEN;
    #echo "$PEREMEN"
    #done
    #fi
if [["$PEREM" -eq "$PEREMEN"]]
then
echo "Наибольший Общий Делитель равен "$PEREM"" # Переменные равны и НОД равен самим переменным
fi
    let "X3= PEREM % PEREMEN" #Проверка делится ли первая переменная на вторую
        if [ "$X3" -eq "0" ]; #если отсаток от деления равен 0, то НОД есть сама вторая переменная
        then 
        echo "Наибольший общий делитель равен $PEREMEN"
        else 
        let "X3 = PEREMEN % PEREM" #Проверка делится ли вторая переменная на первую
        if ["X3" -eq "0"]; #если отсаток от деления равен 0, то НОД есть сама первая переменная
        then 
        echo "Наибольший Общий Делитель равен $PEREM"
        fi
        X1=$PEREM
        X2=$PEREMEN
            while ["$X1" -ne "$X2"]
            do 
            if ["$X1" -gt "$X2"];
            then let "X1=X1-X2"
            else let "X2=X2-X1"
            fi    
            done
            echo "Наибольший общий делитель равен $X1"
