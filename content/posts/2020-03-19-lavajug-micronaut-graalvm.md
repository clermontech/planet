+++
tags = ["Lava JUG", "Java", "Micronaut", "GraalVM"]

[params]

[params.event]
name = "Micronaut et GraalVM - Annulé"
date = "2020-03-19 19:00:00"
is_free = true
event_url = "https://www.lavajug.org/2020/03/19/micrograal.html"
[params.event.location]
friendly_name = "Almerys"
full_address = "46 rue du Ressort 63100 Clermont Ferrand"

[params.organizer]
name = "Lava JUG"
website = "http://www.lavajug.org/"
+++

**Micronaut**

Si des frameworks comme Spring Boot ont grandement facilité l’écriture d’applications en permettant de générer des applications standalone et auto-configurées, ils souffrent néanmoins de l’historique Spring et de sa “lourdeur”. En effet, l’injection de dépendances au runtime et la réflection rendent plus longs les temps de démarrage et font grossir l’empreinte mémoire de nos applications. En partant de 0, Micronaut prend le contre-pied de ses prédécesseurs en se passant de la réflection et en utilisant la “Ahead-Of-Time compilation” (AOT) pour des temps de démarrage en dessous de la seconde ! Nous verrons également que le framework Micronaut a été pensé de base pour supporter et faciliter le développement de microservices et d’applications serverless : il offre par défaut le support de nombreux providers et outils cloud, il est basé sur Netty qui permet l’écriture d’applications réactives, il rend les applications (très) facilement testables… bref, il apporte tout ce dont on a besoin pour développer des applications modernes !

**Olivier Revial**

Développeur Java depuis plusieurs années, j’adore la tech et mon sujet de prédilection du moment est l’architecture microservices ! Plus récemment je m’intéresse de près aux nouveautés excitantes de la JVM comme les microframeworks ou la compilation native :)

**GraalVM**

Oui, GraalVM améliore les performances des langages JVM tels que Groovy, Scala ou Kotlin pour égaler les performances des langages natifs. Oui, GraalVM permet de produire des exécutables Java standalone - des images natives - grâce à la compilation Ahead-of-time. Oui, le startup de ces applications est grandement réduit. Oui, GraalVM est bien intégrée dans des frameworks tels que Micronaut et Quarkus. Et donc oui, GraalVM rend ses lettres de noblesse au langage Java, qui devient très pertinent dans le monde des micro-services. Dans ce talk, nous nous intéresserons à l’autre grand objectif de GraalVM, qui est de mélanger librement plusieurs langages dans des applications multi-langages ou polyglottes: imaginez une application dont le code source mêle le Java, le JavaScript, le Python, et le Rust! GraalVM permet donc aux développeurs de choisir librement le bon langage pour la tâche à résoudre, sans faire de compromis sur les performances. Nous allons étudier les mécanismes de GraalVM permettant des applications polyglottes. Nous présenterons également Truffle, un outil associé à GraalVM pour écrire son propre langage. Et bien sûr nous écrirons, en live, une application multi-langages!

**Pascal Gillet**

Apprenti perpétuel à la poursuite de nouvelles connaissances (c’est souvent fatiguant). Développeur Java / JEE pendant de nombreuses années, j’ai cédé à la mode du Big Data en 2014, et j’interviens maintenant sur des sujets Cloud: j’aide les entreprises à migrer leurs applications vers l’un ou l’autre fournisseur et à ne plus se soucier de leur infrastructure. J’ai rejoint les rangs de Stack Labs en 2018, une petite structure toulousaine composée exclusivement de passionnés. C’est dans ce cadre que j’essaie d’élargir mes horizons en donnant des conférences pour essayer de distiller un peu de mon savoir-faire et de mes passions.
