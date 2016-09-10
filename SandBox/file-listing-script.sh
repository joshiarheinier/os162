ls -1
FILE=`ls`
COUNT=0
for NUM in $FILE; do
    let "COUNT+=1"
    done
echo "Total file found:$COUNT"
