<h1 align="center">Data Cleaning In Linux Shell</h1>
<p align="center"><text>Stefanus Yudi Irwan | Pacmann User Name : stefanus-flri</text></p>

This repository contained necessary script to turn __raw data__ [_(data.zip)_](https://drive.google.com/file/d/1rKkUQU-sXIDka3rVNBahp6q3wDhrPY-1/view>) about traffic ecommerce into _data_clean.csv_ which contain __purchasing data__ only. This project done by using [`csvkit`](https://pypi.org/project/csvkit/) python external library for data wrangling in shell and some basic linux terminal built in command. 

![Alt text](image/table.jpg)

## Project Purpose

This project made to clean _raw data_ from [_data.zip_](https://drive.google.com/file/d/1rKkUQU-sXIDka3rVNBahp6q3wDhrPY-1/view>) contain two .csv file named `2019-Nov sample.csv` and `2019-Oct-sample.csv` which contain columns as follows :

![Alt text](image/raw%20data.jpg)

 - `a`  : describe index number for every traffic ecommerce event
 - `event_time` : describe time-stamp of the event
 - `event_type` : describe the type of the event view and purchase 
 - `product_id` : describe the product id being accessed
 - `category_id` : describe some category about the event
 - `category_code` : describe product category being accessed
 - `brand` : describe the company which made the product
 - `price` : describe the product price
 - `user_id` : describe the user id whom create the event
 - `user_session` : describe user session of the event

and then make `data_clean.csv` of purchasing data from both csv file which contain column as follows :

|event_time|event_type|product_id|category|brand|price|category|product_name|
|:---:|:----:|:---:|:---:|:---:|:---:|:---:|:---:|

- `event_time` : will be contain time-stamp of the event purchase
- `event_type` : will be contain purchase all
- `product_id` : will be contain purchased product id
- `category_id` : will be contain category of purchased product
- `brand` : will be contain brand data of the purchased product
- `price` : will be contain price of the purchased product
- `category` : will be contain category of the purchased product
- `product_name` : will be contain name of the purchased product

## Project Step by Step
1. prepare the necessary requirement for this program 
`python` `pip` `csvkit` `unzip` `virtualenv`
2. create `traffic-ecommerce-cleaner.sh` file then make it executable
3. create `data` directory folder at the same directory of `traffic-ecommerce-cleaner.sh`. 
4. download [data.zip](https://drive.google.com/file/d/1rKkUQU-sXIDka3rVNBahp6q3wDhrPY-1/view>) from this google drive and place the zip file in the `data` folder 
5. make `traffic-ecommerce-cleaner.sh` with following flow chart

![Alt text](image/flowchart.jpg)

6. execute the `traffic-ecommerce-cleaner.sh`
7. finally there will be this output in local terminal

![Alt text](image/table2.jpg)

8. if `data_clean.csv` isn’t available in `data` directory before executing `traffic-ecommerce-cleaner.sh`, there will be `data_clean.csv` in `data` directory after executing the `traffic-ecommerce-cleaner.sh`
9. create virtual environment `virtual_wrangling` and install `csvkit` inside

## How To Use This Repository

1.	make sure you’ve install `python`, and `pip` in your local device
2.	install `csvkit` by executing `pip install csvkit` inside your terminal
3.	install `unzip` command in linux terminal by executing `sudo apt-get install unzip` you will be prompted input password
4.	clone this repository into your local machine, you will get `Ubuntu-Shell-Data-Wrangling` repository folder
5.	if you want to make new `data_clean.csv`, then download this [data.zip](https://drive.google.com/file/d/1rKkUQU-sXIDka3rVNBahp6q3wDhrPY-1/view>) into your local machine and place it in  folder `data` in the cloned `Ubuntu-Shell-Data-Wrangling` repository folder. Delete the already exists file `data_clean.csv` in cloned folder `data`.
6. or if you want to use the already exist `data_clean.csv` just left step number 5
7.	execute the `traffic-ecommerce-cleaner.sh`

![Alt text](image/result%20executed.jpg)

Note :<br>
>If you don’t want to install `csvkit`, you can activate virtual environment in `virtual_wrangling` folder by executing `source virtual_wrangling/bin/activate` from the repository folder, but you’ve to install python [virtualenv first](https://pypi.org/project/virtualenv/) to your local device

## Suggestion
It is more interesting if the data could come from online traffic ecommerce data which updated every minute or second, and we could build an interactive dashboard from it.

If u have any other comment you can email-me on yudi.stefanus22@gmail.com or contact me through [my Linkedin](https://www.linkedin.com/in/stefanusyudi22/). Enjoyy....




 





