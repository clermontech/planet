+++
tags = ["Lava JUG", "RAG", "ElasticSearch", "LLM"]

[params]

[params.event]
name = "Benjamin Dauvissat - Construisons un chatbot privé avec RAG, ElasticSearch et LLM"
date = "2025-03-27 19:00:00"
is_free = true
event_url = "https://www.lavajug.org/"
[params.event.location]
friendly_name = "Turing 22"
full_address = "22 Allée Alan Turing, 63000 Clermont-Ferrand"

[params.organizer]
name = "LavaJUG"
website = "https://www.lavajug.org/"
+++

Au-delà de la hype autour de ChatGPT, comment construire un moteur de recherche conversationnelle (aka “chatbot”) basé sur des données et documents qui doivent rester privés ? La solution est le RAG (Retrieval Augmented Generation). C’est le moteur de recherche qui va fournir un contexte vérifiable sur lequel se basera la génération des réponses du chatbot. Elasticsearch, bien connu pour ses capacités de recherche par mots-clés a depuis plusieurs années intégré les “dense vectors” et la recherche sémantique, permettant une recherche et un scoring hybrides combinant ces deux approches. En parallèle, l’utilisation des LLM (Large Language Models) s’est démocratisée avec des orchestrateurs comme LangChain4J et des LLM accessibles et faciles à déployer avec Ollama. Nous verrons comment construire un chatbot sur un jeu de données privées et discuter avec.
