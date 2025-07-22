import sys
import xml.dom.minidom
import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="db_user",
  password="MyStr0ngP@ssw0rd123!",
  database="weatherDB"
)

mycursor = mydb.cursor()
mycursor.execute("TRUNCATE TABLE " + sys.argv[1])


period = []
temperature = []
short_desc = []
long_desc = [""] * 10

i = 0
j=0

document = xml.dom.minidom.parse(sys.argv[1]+".xhtml")
div = document.getElementsByTagName('div')
for element in div:
    className = element.getAttribute('class')
    if className == 'tombstone-container':
        p = element.getElementsByTagName('p')
        for node in p:
            className = node.getAttribute('class')
            if className == 'period-name':
                for child in node.childNodes:
                    if child.nodeType == child.TEXT_NODE:
                        if i == len(period):
                            period.append(child.nodeValue)
                        else:
                            period[i] = period[i]+" "+child.nodeValue
            elif className == 'temp temp-high' or className == 'temp temp-low':
                for child in node.childNodes:
                    if child.nodeType == child.TEXT_NODE:
                        if i == len(temperature):
                            temperature.append(child.nodeValue)
                        else:
                            temperature[i] = temperature[i]+" "+child.nodeValue
            elif className == 'short-desc':
                for child in node.childNodes:
                    if child.nodeType == child.TEXT_NODE:
                        if i == len(short_desc):
                            short_desc.append(child.nodeValue)
                        else:
                            short_desc[i] = short_desc[i]+" "+child.nodeValue
            if i == j :
              img = element.getElementsByTagName('img')
              for img_node in img:
                if img_node.getAttribute('class') == 'forecast-icon':
                  long_desc[j] = img_node.getAttribute('alt')
              j += 1
               
        sql = "insert into " + sys.argv[1] + " (period, temperature, short_desc, long_desc) values (%s,%s,%s,%s)"
        val = (period[i], temperature[i], short_desc[i], long_desc[i])
        mycursor.execute(sql, val)
        mydb.commit()
        #print(mycursor.rowcount, "record inserted.")
        i += 1