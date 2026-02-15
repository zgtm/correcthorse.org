default: en/index.html

words/english.txt: words/orig/top10000en.txt
	cat words/orig/top10000en.txt | grep '^[^ 1-9\.\'-][^ 1-9A-Z\.\'-][^ 1-9A-Z\.\'-]*$' | sed 's/[[:upper:]]/\l&/g' | sort | uniq > words/english.txt

words/french.txt: words/orig/top10000fr.txt
	cat words/orig/top10000fr.txt | grep '^[^ 1-9\.\'-][^ 1-9A-Z\.\'-][^ 1-9A-Z\.\'-]*$' | sed 's/[[:upper:]]/\l&/g' | sed 's/à/a/g' | sed 's/è/e/g' | sed 's/é/e/g' | grep -v ü | grep -v ä | sort | uniq > words/french.txt

words/german.txt: words/orig/top10000de.txt
	cat words/orig/top10000de.txt | grep '^[^ 1-9\.\'-][^ 1-9A-Z\.\'-][^ 1-9A-Z\.\'-]*$' | sed 's/[[:upper:]]/\l&/g' | sed 's/ä/ae/g' | sed 's/ö/oe/g' | sed 's/ü/ue/g' | sed 's/ß/ss/g' | sort | uniq > words/german.txt

words/netherlands.txt: words/orig/top10000nl.txt
	cat words/orig/top10000nl.txt | grep '^[^ 1-9\.\'-][^ 1-9A-Z\.\'-][^ 1-9A-Z\.\'-]*$' | sed 's/[[:upper:]]/\l&/g' | sed 's/é/e/g' | sed 's/ö/o/g' | sed 's/ü/ue/g' | sed 's/ß/ss/g' | sort | uniq > words/netherlands.txt

en/index.html: translate.py template.tpl en.py de.py fr.py nl.py words/english.txt words/french.txt words/german.txt words/netherlands.txt
	python3 translate.py

