// downloadIcs generates a file for a specified event
function downloadIcs(eventDetails, content) {
    // Pretty harsh but works.
    let parsedDate = new Date(eventDetails.event.date).
        toISOString().
        replaceAll("-", "").
        replaceAll(":", "").
        slice(0, -5)

    content = content.replace(/(\r\n|\n|\r)/gm, "")


    // Data payload
    let data = `BEGIN:VCALENDAR
PRODID:planet.clermontech.org
VERSION:2.0
BEGIN:VEVENT
UID:${btoa(eventDetails.event.date)}
DTSTART;TZID=Etc/Greenwich:${parsedDate}
DTEND;TZID=Etc/Greenwich:${parsedDate}
SUMMARY:${eventDetails.event.name}
LOCATION:${eventDetails.event.location.full_address}
DESCRIPTION:${content}
CATEGORIES:${eventDetails.event.tags}
END:VEVENT
END:VCALENDAR`;

    // Generate element, click on it to download.
    var tmpElement = document.createElement('a');
    tmpElement.setAttribute("href", `data:text/plain;charset=utf-8,${encodeURIComponent(data)}`);
    tmpElement.setAttribute('download', 'event.ics');
    tmpElement.style.display = 'none';
    document.body.appendChild(tmpElement);
    tmpElement.click();
    document.body.removeChild(tmpElement);
}