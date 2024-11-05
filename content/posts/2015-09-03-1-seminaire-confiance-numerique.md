+++
tags = ["confiance numerique"]

[params]

[params.event]
name = "ARPKI: Attack Resilient Public-Key Infrastructure."
date = "2015-09-03 14:00:00"
is_free = true
event_url = "http://confiance-numerique.clermont-universite.fr/"
[params.event.location]
friendly_name = "IUT Amphi B"
full_address = "Campus des Cézeaux - BP86 63172 Aubière"

[params.organizer]
name = ""
website = ""
+++

### Ralf Sasse Institute of Information Security, Department of Computer Science, ETH Zurich
We present ARPKI, a public-key infrastructure that ensures that certificate-related operations, such as certificate issuance, update, revocation, and validation, are transparent and accountable. ARPKI is the first such infrastructure that systematically takes into account requirements identified by previous research. Moreover, ARPKI is co-designed with a formal model, and we verify its core security property using the Tamarin prover. We present a proof-of-concept implementation providing all features required for deployment. ARPKI efficiently handles the certification process with low overhead and without incurring additional latency to TLS. ARPKI offers extremely strong security guarantees, where compromising n-1 trusted signing and verifying entities is insufficient to launch an impersonation attack. Moreover, it deters misbehavior as all its operations are publicly visible. 
