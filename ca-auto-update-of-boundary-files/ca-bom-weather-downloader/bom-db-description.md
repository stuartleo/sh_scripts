The following runs in a docker stack comprising a debian container and a mariadb container on the same network.
create a script to run inside the debian container that downloads the following files to /media/bom_data/ :
ftp://anonymous:anonymous@ftp.bom.gov.au//anon/gen/fwo/IDV60910.tgz
ftp://anonymous:anonymous@ftp.bom.gov.au//anon/gen/fwo/IDN60910.tgz
ftp://anonymous:anonymous@ftp.bom.gov.au//anon/gen/fwo/IDQ60910.tgz
ftp://anonymous:anonymous@ftp.bom.gov.au//anon/gen/fwo/IDW60910.tgz
ftp://anonymous:anonymous@ftp.bom.gov.au//anon/gen/fwo/IDS60910.tgz
ftp://anonymous:anonymous@ftp.bom.gov.au//anon/gen/fwo/IDT60910.tgz
ftp://anonymous:anonymous@ftp.bom.gov.au//anon/gen/fwo/IDD60910.tgz
extract the above files into /media/temp/ , don't sort into seperate directories.

do the following with the extracted files:
- for files beginning with "IDV", add the .xml files to a temporary table in mariadb, then insert the data into the "Victoria" table while ignoring existing entries. Finally, clean up the temporary table.
- for files beginning with "IDN", add the .xml files to a temporary table in mariadb, then insert the data into the "NSW" table while ignoring existing entries. Finally, clean up the temporary table.
- for files beginning with "IDQ", add the .xml files to a temporary table in mariadb, then insert the data into the "Queensland" table while ignoring existing entries. Finally, clean up the temporary table.
- for files beginning with "IDW", add the .xml files to a temporary table in mariadb, then insert the data into the "Western Australia" table while ignoring existing entries. Finally, clean up the temporary table.
- for files beginning with "IDS", add the .xml files to a temporary table in mariadb, then insert the data into the "South Australia" table while ignoring existing entries. Finally, clean up the temporary table.
- for files beginning with "IDT", add the .xml files to a temporary table in mariadb, then insert the data into the "Tasmania" table while ignoring existing entries. Finally, clean up the temporary table.
- for files beginning with "IDD", add the .xml files to a temporary table in mariadb, then insert the data into the "NT" table while ignoring existing entries. Finally, clean up the temporary table.
Delete all files in /media/temp/


This script is used to download, extract, and process data from the Australian Bureau of Meteorology. The script first creates two directories, one for the downloaded files and one for the extracted files. It then downloads seven .tgz files from the FTP server and stores them in the /media/bom_data/ directory. The script then extracts the files and stores them in the /media/temp/ directory. Finally, it processes each file and stores it in the corresponding table in the MySQL database. It then deletes all of the files in the /media/temp/ directory.
