#64050191 ภูมิรพี ศรีฟ้า
for file in $(find . -type f -name "prog?.c")
do
    trimmedName=`echo $file | cut -d'/' -f2 | cut -d'.' -f1`
    if [ -f $trimmedName ]
    then 
        check=$(./$trimmedName)
        if [ $check = 20 ]
            then
                point=10
        else
            point=7
        fi
    else
        point=5
    fi
    printf "%s  %s\n" $trimmedName $point
done