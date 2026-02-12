# DO-KB SPARQL queries

This repository contains SPARQL (version 1.1[^1]) queries designed for the Disease Ontology Knowledgebase (DO-KB) SPARQL sandbox (online editor) and endpoint (programmatic access/federated query endpoint). All utilize the data in the Human Disease Ontology (DO) (https://disease-ontology.org / GitHub: [HumanDiseaseOntology](https://github.com/DiseaseOntology/HumanDiseaseOntology)). Some are federated queries that access additional SPARQL endpoints.

- DO-KB SPARQL sandbox: https://disease-ontology.org/do-kb/sparql
- DO-KB SPARQL endpoint: https://sparql.disease-ontology.org/

Additional information can be found on the [SPARQL resources](https://disease-ontology.org/do-kb/sparql_help) page of disease-ontology.org.


## Query File Information

Each query file has a metadata header (# commented YAML) followed by the SPARQL query. All metadata headers start with the following fields:
- **id:** A unique identifier in the format `DOq[0-9]{3}`.
- **description:** A brief description of what the query returns
- **input:** The source(s) that is/are queried.

Additional fields may also be included.


<details>

<summary><h2><i>Code to list DO query IDs</i></h2></summary>

**All DOq Numeric IDs** (with count)
```
find . -name "*.rq" -exec grep -Eh "[# ]id:" {} + | sort --reverse | uniq -c
```

**Duplicated DOq IDs**
```
find . -name "*.rq" -exec grep -Eh "[# ]id:" {} + | sort --reverse | uniq -c | grep -E "[^1] [# ]id:"
```

</details>

[^1]: The SPARQL query language is designed "to query and manipulate RDF graph content on the Web or in an RDF store." Detailed information about SPARQL 1.1 is available from the W3C at https://www.w3.org/TR/2013/REC-sparql11-overview-20130321/.
