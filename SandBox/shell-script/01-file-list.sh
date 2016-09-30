echo -e "\n======================="
DIR=`pwd | sed "s/.*\///"`
echo -e "Files in $DIR"
echo "======================="
ls -1
FILE=`ls`
COUNT=0
for NUM in $FILE; do
    let "COUNT+=1"
    done
echo "======================="
echo -e "Total file found:$COUNT\n"
