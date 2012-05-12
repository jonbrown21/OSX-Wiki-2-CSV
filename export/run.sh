#!/bin/bash

##### CONFIGURE HERE ########

# put your full path to your collaboration files

fullpath=/Wiki/wiki/Collaboration

##### END CONFIGURATION #####

mkdir /export/users
mkdir /export/users/blogs
mkdir /export/groups
mkdir /export/groups/blogs
mkdir /export/groups/wikis

for i in `ls $fullpath/Groups`
do
cp /export/export-blog.sh $fullpath/Groups/$i/weblog/
cp /export/export.sh $fullpath/Groups/$i/wiki/

# Export Group Wikis

cd $fullpath/Groups/$i/wiki/
./export.sh
mkdir /export/groups/wikis/$i
cp $fullpath/Groups/$i/wiki/wikipages.csv /export/groups/wikis/$i/
rm $fullpath/Groups/$i/wiki/wikipages.csv
rm $fullpath/Groups/$i/wiki/export.sh

# Export Group Blogs

cd $fullpath/Groups/$i/weblog/
./export-blog.sh
mkdir /export/groups/blogs/$i
cp $fullpath/Groups/$i/weblog/wikipages.csv /export/groups/blogs/$i/
rm $fullpath/Groups/$i/weblog/wikipages.csv
rm $fullpath/Groups/$i/weblog/export-blog.sh

done

for i in `ls $fullpath/Users`
do

# Export User Blogs

cp /export/export-blog.sh $fullpath/Users/$i/weblog/

cd $fullpath/Users/$i/weblog/
./export-blog.sh
mkdir /export/users/blogs/$i
cp $fullpath/Users/$i/weblog/wikipages.csv /export/users/blogs/$i/
rm $fullpath/Users/$i/weblog/wikipages.csv
rm $fullpath/Users/$i/weblog/export-blog.sh

done

exit 0