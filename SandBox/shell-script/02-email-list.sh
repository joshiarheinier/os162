#!/bin/bash

EMAIL=$1
REGEX="^[A-Za-z0-9\._]*@[A-Za-z0-9]*[a-z\.]*$"

echo -e "\n\tEmails in $1"
echo "======================================="
printf  "%-20s %-20s\n" "Name" "Domain"
echo "======================================="
for list in `grep $REGEX $1`
do
  NAME=`echo $list | sed "s/@.*//"`
  DOMAIN=`echo $list | sed "s/.*@//"`
  printf "%-20s %-20s\n" "$NAME" "$DOMAIN"
done
echo "======================================="

MONTH=`ls -al $1 | awk '{print $6}'`
DATE=`ls -al $1 | awk '{print $7}'`
TIME=`ls -al $1 | awk '{print $8}'`

printf "Last opened at: %1s %1s %1s\n\n" "$MONTH" "$DATE" "$TIME"

