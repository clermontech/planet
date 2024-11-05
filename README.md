# Clermont'ech Planet

Le Planet de Clermont'ech a pour but d'aggréger l'ensemble des événements IT en Auvergne !

## Ajouter un événement sur le Planet

Pour ajouter un événement dans le Planet, créer un nouveau fichier dans le dossier `content/posts` avec le nom suivant : `content/posts/YYYY-MM-DD-title.md`,  où `YYYY-MM-DD` est la date de l'événement et `title` son titre.

Ce fichier doit contenir la configuration suivante :

```md
+++
tags = ["APIHour", "Clermont'ech"]

[params]
[params.event]
name = "APIHour #63"
date = "2006-01-02 15:04:05"
is_free = true|false
event_url = "https://clermontech.org/"

[params.event.location]
friendly_name = "Le Celtill"
full_address = "11 Rue Niel, 63100 Clermont-Ferrand"

[params.organizer]
name = "Clermont'ech"
website = "https://clermontech.org/"
+++

Bienvenue dans ce 63ème API Hour !

Au menu du jour :
* Super Speaker 1 - Super Sujet 1
* Super Speaker 2 - Super Sujet 2
* Super Speaker 3 - Super Sujet 3
```

## Installation / Développement

### Standalone
* Installez [Hugo](https://gohugo.io/installation/)
* Vous êtes prêt ! Lancez `hugo server`.

### Docker
* `docker build --rm -t planet-clermontech . -f Dockerfile_development`
* `docker run --rm -ti -p 1313:1313 -v $PWD:/srv planet-clermontech`

## Deploy

* `docker build --rm -t planet-clermontech-prod . -f Dockerfile`
* `docker run --rm -ti -p 8000:80 planet-clermontech-prod`

## Remerciements

* [Hyde Theme par spf13](https://github.com/spf13/hyde)
* [Hugo](https://gohugo.io)
