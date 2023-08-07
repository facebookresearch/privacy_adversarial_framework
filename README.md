# Privacy Adversarial Framework 

The Privacy Adversarial Framework (PAF) is a knowledge base of privacy-focused adversarial tactics and techniques. PAF is heavily inspired by MITRE ATT&CK®.

While traditional cyber security adversaries can have an impact on privacy, another type of adversary - privacy adversaries - are also prolific and problematic. Privacy adversaries include stalkers, doxxers, scrapers, unethical private or political intelligence firms, authoritarian regimes, and more.

PAF is a response to the observation that privacy adversaries are not generally equivalent to those seen in cyber security; they often differ in resources, methods, and intentions.

The main goal of PAF is to accurately model privacy adversaries for the purpose of improving the detection, measurement, mitigation, and emulation of privacy threats.

## What's in this repo?

```paf.csv``` is a standalone CSV capturing the full taxonomy. It may be a bit easier to work with for parsing and processing for bespoke systems.

```paf_navigator.json``` is a STIX file representing the Tactic and Techniques of PAF, compatible with MITRE ATT&CK® Navigator. 

```Dockerfile``` a docker file using Node as a base image. This is used in the quickstart instructions below, but is pinned to a particular version of Navigator, so it is not suitable for direct production use cases. 

## Quickstart - Viewing PAF Taxonomy with Navigator via Docker (not for production use cases)

1. `docker build -t paf_navigator .`
2. `docker run -p 80:80 paf_navigator`
3. Navigate to `http://localhost`, click the **Create New Layer** dropdown, then click the **Privacy Adversarial Framework (PAF)** entry.

## Usage with Navigator
1. Download and follow the instructions at: [https://github.com/mitre-attack/attack-navigator](https://github.com/mitre-attack/attack-navigator) to install Navigator.
2. Place ```paf.json``` in the ```nav-app/src/assets/``` directory within your Navigator installation.  
3. Modify the contents of ```<navigator-install-location>/nav-app/src/assets/config.json``` under "domains" to include an entry for PAF: 

   ``` 
   {  
    "name": "Privacy Adversarial Framework",
    "identifier": "paf",
    "data": ["<navigator-install-location>/nav-app/src/assets/paf.json"]
    }
    ```
 Make sure to replace the `<navigator-install-location>` with the appropriate local path.
 
4. Run Navigator as usual and click on "Create New Layer", there should now be an option for a PAF layer.

## Contributing
See the [CONTRIBUTING](CONTRIBUTING.md) file for how to help out.

## License
The Privacy Adversarial Framework is [MIT](LICENSE) licensed, as found in the LICENSE file.
