#!/bin/bash

read -r -d '' header <<- EOM
BEGIN:VCALENDAR
PRODID:planet.clermontech.org
X-WR-CALNAME:Planet Clermont'ech
X-WR-TIMEZONE:Europe/Paris
X-WR-CALDESC:Retrouvez tous les événements du monde IT Auvergnat !
VERSION:2.0
EOM

read -r -d '' template <<- EOM
BEGIN:VEVENT
UID:{uid}
DTSTART:{dtstart}
SUMMARY:{summary}
LOCATION:{location}
DESCRIPTION:{description}
CATEGORIES:{categories}
END:VEVENT
EOM

content=$header
for file in _posts/*.md
do
	echo Parsing $file...
	title=$(grep 'title:' $file | sed 's/title:\s*"\(.*\)"/\1/g') 
	datetime=$(grep 'event_date:' $file | sed 's/event_date:\s*"\(.*\)"/\1/g') 
	date=$(grep 'event_date:' $file | sed 's/event_date:\s*"\(.*\) .*"/\1/g') 
	uid=$date-${title//[^a-z0-9]/}
	dtstart=$(echo $datetime | sed 's/ /T/g' | sed 's/[-:]//g')

	address=$(sed -n -e '/location/,/city/ p' "$file")
	adrname=$(printf "%s" "$address" | grep 'name' | sed 's/.*name:[ ]*\(.*\)/\1/')
	adrstreet=$(printf "%s" "$address" | grep 'street_address' | sed 's/.*street_address:[ ]*\(.*\)/\1/')
	adrpostal=$(printf "%s" "$address" | grep 'postal_code' | sed 's/.*postal_code:[ ]*\(.*\)/\1/')
	adrcity=$(printf "%s" "$address" | grep 'city' | sed 's/.*city:[ ]*\(.*\)/\1/')
	location="$adrname $adrstreet, $adrpostal $adrcity"

	description=$(sed -n -e '/description/,/^[^ ]/ p' "$file" | sed '$ d' | tr -s '\n' ' ' | sed 's/description:[ ]*//')
	categories=$(grep  'tags:' $file | tr -s '[]," ' ',' | sed 's/tags:[,]*//' | sed 's/,*$//')

	vcal=${template/\{uid\}/"$uid"}
	vcal=${vcal/\{dtstart\}/"$dtstart"}
	vcal=${vcal/\{summary\}/"$title"}
	vcal=${vcal/\{location\}/"$location"}
	vcal=${vcal/\{description\}/"$description"}
	vcal=${vcal/\{categories\}/"$categories"}

	read -r -d '' content <<- EOM
	$content
	$vcal
	EOM
	#printf "%s\n\n" "$file: $categories"
done

read -r -d '' content <<- EOM
$content
END:VCALENDAR
EOM

printf "%s" "$content" > planet-clermont.ics

echo "File planet-clermont.ics updated."

