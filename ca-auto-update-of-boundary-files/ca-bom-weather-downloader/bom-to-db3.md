
create a script to run inside the debian container that does the following:
let now=$(date +"%Y-%m-%d")
downloads the following files to /media/bom_data/ : 
ftp://anonymous:anonymous@ftp.bom.gov.au//anon/gen/fwo/IDV60910.tgz named as IDV60910_$now.tgz
ftp://anonymous:anonymous@ftp.bom.gov.au//anon/gen/fwo/IDN60910.tgz named as IDN60910_$now.tgz
ftp://anonymous:anonymous@ftp.bom.gov.au//anon/gen/fwo/IDQ60910.tgz named as IDQ60910_$now.tgz
ftp://anonymous:anonymous@ftp.bom.gov.au//anon/gen/fwo/IDW60910.tgz named as IDW60910_$now.tgz
ftp://anonymous:anonymous@ftp.bom.gov.au//anon/gen/fwo/IDS60910.tgz named as IDS60910_$now.tgz
ftp://anonymous:anonymous@ftp.bom.gov.au//anon/gen/fwo/IDT60910.tgz named as IDT60910_$now.tgz
ftp://anonymous:anonymous@ftp.bom.gov.au//anon/gen/fwo/IDD60910.tgz named as IDD60910_$now.tgz
extract the above files into /media/temp/ , don't sort into seperate directories.

using the mariadb credentials, database=bom, user=my_user, password=Grower9-Detection-Eccentric-Womb 
do the following with the extracted files:
- for files beginning with "IDV", add the .xml files to a temporary table in mariadb, then insert the data into the "Victoria" table while ignoring existing entries. Finally, clean up the temporary table.
- for files beginning with "IDN", add the .xml files to a temporary table in mariadb, then insert the data into the "New South Wales" table while ignoring existing entries. Finally, clean up the temporary table.
- for files beginning with "IDQ", add the .xml files to a temporary table in mariadb, then insert the data into the "Queensland" table while ignoring existing entries. Finally, clean up the temporary table.
- for files beginning with "IDW", add the .xml files to a temporary table in mariadb, then insert the data into the "Western Australia" table while ignoring existing entries. Finally, clean up the temporary table.
- for files beginning with "IDS", add the .xml files to a temporary table in mariadb, then insert the data into the "South Australia" table while ignoring existing entries. Finally, clean up the temporary table.
- for files beginning with "IDT", add the .xml files to a temporary table in mariadb, then insert the data into the "Tasmania" table while ignoring existing entries. Finally, clean up the temporary table.
- for files beginning with "IDD", add the .xml files to a temporary table in mariadb, then insert the data into the "Northern Territory" table while ignoring existing entries. Finally, clean up the temporary table.

delete all files in /media/temp when finished.
