+++
tags = ["Lava JUG"]

[params]

[params.event]
name = "Spring Boot et Spring 4"
date = "2015-01-15 19:00:00"
is_free = true
event_url = "http://www.lavajug.org/xwiki/bin/view/Main/EventTwentyFive"
[params.event.location]
friendly_name = "Campus Universitaire des Cézeaux"
full_address = "24 Avenue des Landais 63170 Aubière"

[params.organizer]
name = "Lava JUG"
website = "https://www.lavajug.org/"
+++

###Spring Boot
[Spring Boot](http://projects.spring.io/spring-boot/) est une boîte à outils qui vous permet de développer et déployer vos applications Spring en un temps record, grâce a son approche orientée convention plutôt que configuration.
Spring Boot inclus également *un mode de packaging qui permet de lancer son application avec une simple commande* `java -jar application.jar`*, des starters qui sont des dépendances spécialisée pour un usage donné, des endpoints automatiques orientés dev (/beans, /env, mapping) ou devops (/health), une configuration avancées très simple, tout est personnalisable, il propose un mécanisme d’activation de beans sur condition (par exemple présence d’une classe dans le classpath) très utile, [guide de référence](http://docs.spring.io/spring-boot/docs/current/reference/htmlsingle/), configuration par défaut d’un certain nombre de paramètre via application.properties ou application.yml*.
En 2015, ne commencez pas un projet Web basé sur Spring sans Spring Boot, il n’y a **aucune** contre-indication ! Alors venez voir cette présentation.
###Quoi de neuf dans Spring 4.0 et 4.1
Spring 4.2 arrive dans quelques mois, cette présentation sera l’occasion de vous détailler les nouveautés apportées dans les dernières versions. Au menu : *support de Java 8, Amélioration du support JMS, Support complet de JCache (JSR-107), Compilateur SpEL, Nouveau mécanisme de gestion des ressources statiques, support des types génériques pour l'injection, annotation @Lazy améliorée, Support des JSONView, Support des Groovy markup templates, Support de JSONP, Configuration XML et JavaConfig : ViewController amélioré et ViewResolver, Support Websocket, SockJS et STOMP*.
