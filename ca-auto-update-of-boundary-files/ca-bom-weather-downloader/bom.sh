now=$(date +"%Y-%m-%d")
curl -o /var/www/weather/IDV60910_$now.tgz ftp://anonymous:anonymous@ftp.bom.gov.au//anon/gen/fwo/IDV60910.tgz
curl -o /var/www/weather/IDN60910_$now.tgz ftp://anonymous:anonymous@ftp.bom.gov.au//anon/gen/fwo/IDN60910.tgz
curl -o /var/www/weather/IDQ60910_$now.tgz ftp://anonymous:anonymous@ftp.bom.gov.au//anon/gen/fwo/IDQ60910.tgz
curl -o /var/www/weather/IDW60910_$now.tgz ftp://anonymous:anonymous@ftp.bom.gov.au//anon/gen/fwo/IDW60910.tgz
curl -o /var/www/weather/IDS60910_$now.tgz ftp://anonymous:anonymous@ftp.bom.gov.au//anon/gen/fwo/IDS60910.tgz
curl -o /var/www/weather/IDT60910_$now.tgz ftp://anonymous:anonymous@ftp.bom.gov.au//anon/gen/fwo/IDT60910.tgz
curl -o /var/www/weather/IDD60910_$now.tgz ftp://anonymous:anonymous@ftp.bom.gov.au//anon/gen/fwo/IDD60910.tgz
