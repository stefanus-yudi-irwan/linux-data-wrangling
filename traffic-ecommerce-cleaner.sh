#!/bin/bash

# create data_clean.csv
if [[ -f "data/data_clean.csv" ]]; then
	echo "data_clean.csv already exists"
else
	unzip data/data.zip -d data

	echo "Generate Raw-Data.csv"
	csvstack data/2019-Oct-sample.csv data/2019-Nov-sample.csv > data/Raw-Data.csv
	echo "Raw-Data.csv generated"

	echo "Generate Data1.csv"
	csvgrep -c "event_type" -m "purchase" data/Raw-Data.csv | csvcut -c event_time,event_type,product_id,category_id,brand,price > data/Data1.csv
	echo "Data1.csv generated"

	echo "Generate Data2.csv"
	echo $"category,product_name" > data/Data2.csv
	grep "purchase" data/Raw-Data.csv | awk -F "," '{print $6}' | awk -F "." '{print $1","$NF}' >> data/Data2.csv
	echo "Data2.csv generated"

	echo "Generate data_clean.csv"
	csvjoin data/Data1.csv data/Data2.csv > data/data_clean.csv
	echo "data_clean.csv generated"

	rm data/Raw-Data.csv data/Data1.csv data/Data2.csv data/2019-Oct-sample.csv data/2019-Nov-sample.csv
	echo "Raw-Data.csv, Data1.csv, Data2.csv, 2019-Oct-sample.csv, 2019-Nov-sample.csv deleted"
fi

#show some result
head data/data_clean.csv | csvlook
echo $"-----------------------------------------------------------------------------------------------------"
wc data/data_clean.csv
echo $"-----------------------------------------------------------------------------------------------------"
grep electronics data/data_clean.csv | grep smartphone | awk -F "," '{print $5}' | sort | uniq -c | sort -nr
