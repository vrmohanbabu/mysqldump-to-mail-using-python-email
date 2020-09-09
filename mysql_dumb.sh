#!/usr/bin/sh

# Getting Date and Time:
DATE_NOW=`date +%F-%H%M`

# Database information:
DBUSER="root"
DBPASSWORD="root"
DBNAME="root"

# Dump file location:
FILELOCATION="/home/centos/mysqldump-to-mail-using-python-email/dumpfiles/"
FILENAME="dump-${DATE_NOW}.sql"
FILEPATH="${FILELOCATION}${FILENAME}"

# Creating dump from mysql:
mysqldump -u $DBUSER -p$DBPASSWORD $DBNAME > $FILEPATH

# Sending dump file in the mail:
if [ $? = 0 ]
then
	/usr/local/bin/python3.7 ~/mysqldump-to-mail-using-python-email/send_mail.py $FILEPATH $FILENAME $DATE_NOW
else
	echo "Error in creating mysqldump"
fi
