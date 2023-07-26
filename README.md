# Privacy Adversarial Framework 

The Privacy Adversarial Framework (PAF) is a knowledge base of privacy-focused adversarial tactics and techniques. PAF is heavily inspired by MITRE ATT&CK®.

While traditional cyber security adversaries can have an impact on privacy, another type of adversary - privacy adversaries - are also prolific and problematic. Privacy adversaries include stalkers, doxxers, scrapers, unethical private or political intelligence firms, authoritarian regimes, and more.

PAF is a response to the observation that privacy adversaries are not generally equivalent to those seen in cyber security; they often differ in resources, methods, and intentions.

The main goal of PAF is to accurately model privacy adversaries for the purpose of improving the detection, measurement, mitigation, and emulation of privacy threats.

## What's in this repo?

```paf.csv``` is a standalone CSV capturing the full taxonomy. It may be a bit easier to work with for parsing and processing for bespoke systems.

```paf_navigator.json``` is a STIX file representing the Tactic and Techniques of PAF, compatible with MITRE ATT&CK® Navigator. 

## Quickstart - Viewing PAF Taxonomy with Navigator via Docker

1. `docker build -t paf_attack .`
2. `docker run -p 80:80 paf_attack`
3. Navigate to `http://localhost`, click the **Create New Layer** dropdown, then click the **Privacy Adversarial Framework (PAF)** entry.
