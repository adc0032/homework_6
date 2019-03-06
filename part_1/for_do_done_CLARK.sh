#!/bin/bash

read -p "Enter Search Word for All Files: " searchall

touch $searchall.search.txt

for file in ~/homework_6/part_2/book_pages/*
do
    ~/homework_6/part_1/string_finder_CLARK.sh $file $searchall >> $searchall.search.txt
done

