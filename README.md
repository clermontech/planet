Clermont'ech Planet
===================

Clermont'ech Planet aggregates all IT-related events all around Auvergne!


Ajouter un événement sur le Planet
----------------------------------

Pour ajouter un événement dans le Planet, créer un nouveau fichier dans le
dossier `_posts/` avec le nom suivant : `_posts/YYYY-MM-DD-a-title.md` où
`YYYY-MM-DD` est la date de l'événement et `a-title` son titre.

Ce fichier doit contenir la configuration suivante :

```yaml
---
# Event title (optional)
title: "APIHour #6"

# When it is? (required)
event_date: "2013-12-17 19:00:00"

# Tell us more about your event! (optional, but... heavily recommended)
description:
    The description...
    can be written in multiline, and **Markdown** can be used.
    Please, do not add any images, only plain text with text decoration.

# URL of your event, on your own website (optional)
event_url: http://clermontech.org/api-hours/api-hour-6.html

# Where it is? (option, but then again, heavily recommended)
location:
    street_address: 11 rue Niel
    postal_code: 63100
    city: Clermont-Ferrand

# Keywords describing your event (optional)
# Please, do not add too many tags...
tags: [ APIHour, "Clermont'ech" ]

# About you!
# Not used yet...
organizer:
    name: "Clermont'ech"
    website: http://clermontech.org/
    twitter: clermontech
---
```
