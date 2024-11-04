+++
tags = ["confiance numerique"]

[params]

[params.event]
name = "Control-Flow Recovery through Binary Code Analysis"
date = "2016-05-12 14:00:00"
is_free = true
event_url = "http://confiance-numerique.clermont-universite.fr/"
[params.event.location]
friendly_name = "IUT Amphi B"
full_address = "Campus des Cézeaux - BP86 63172 Aubière"

[params.organizer]
name = ""
website = ""
+++

### [Emmanuel Fleury](http://www.labri.fr/perso/fleury/), [Labri](http://www.labri.fr/)
Binary code analysis is required when you only have access to program's binary code, or when you do not trust the compile chain that you use. In the last two decades, this field has made big progress but, still, it remains confidential and most of the people will just consider it as classical program analysis. In fact, binary analysis induces a lot of practical and theoritical problems which are specific to binary code analysis.
I will present the context of binary analysis and develop the specific problems that are linked to this topic (dynamic jumps, loop unwinding, self-modifying code, ...). Then, I will introduce our intermediate representation (microcode) and explain our main algorithm to rebuild the control flow of a binary program.
