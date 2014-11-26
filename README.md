Clermont'ech Planet
===================

[![Build
Status](https://travis-ci.org/clermontech/planet.svg?branch=gh-pages)](https://travis-ci.org/clermontech/planet)


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

# When is it? (required)
event_date: "2013-12-17 19:00:00"

# Tell us more about your event! (optional, but... heavily recommended)
description:
    The description...
    can be written in multiline, and **Markdown** can be used.
    Please, do not add any images, only plain text with text decoration.

# URL of your event, on your own website (optional)
event_url: http://clermontech.org/api-hours/api-hour-6.html

# Where is it? (optional, but then again, heavily recommended)
location:
    name: Le Celtill
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


Installation
------------

We use [Bundler](http://bundler.io/) to manage dependencies:

    $ bundle install
    $ bundle exec jekyll serve

Browse [`http://localhost:4000`](http://localhost:4000).


Development
-----------

You must have [bower](http://bower.io/) installed:

    $ npm install -g bower

Install dependencies:

    $ bundle install

Compile CSS:

    $ bundle exec compass compile

Watcher:

    $ bundle exec compass watch
