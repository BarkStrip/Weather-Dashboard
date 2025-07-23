#!/bin/bash

while true
do
    city=("Newark" "Hoboken" "Trenton" "Princeton" "Belmar")
    i=0

    if [[ ! -f "./tagsoup-1.2.1.jar" ]]; then
        curl -L -O  "https://repo1.maven.org/maven2/org/ccil/cowan/tagsoup/tagsoup/1.2.1/tagsoup-1.2.1.jar"
    fi

    while [ $i -le 4 ]
    do 
        curl -L -o ${city[i]}.html "https://forecast.weather.gov/MapClick.php?CityName=${city[i]}&state=NJ" 
        java -jar tagsoup-1.2.1.jar --files ${city[i]}.html   
        python parser.py ${city[i]}
        rm ${city[i]}.html
        rm ${city[i]}.xhtml
        (( i++ )) 
    done

    sleep 21600
done
