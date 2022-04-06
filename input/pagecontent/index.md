> Note: This repository is a work-in-progress. It is for facilitating community discussion and not for production. It implies no endorsement from any institution including the members and participants in the OpenHIE Community of Practice.

## Introduction

Population-level improvements in health outcomes increasingly require providers, data managers, surveillance officers, and others to utilize more granular clinical quality reporting and data sources closer to the point-of-care, if not from the patient themselves. The Data Aggregation Services for Health (“DASH”) Architecture FHIR Implementation Guide describes an approach to utilizing patient-level data in aggregate indicator reporting that is realistic for deployment by local implementers in resource-constrained environments and embraces system heterogeneity, consent, privacy, security, and data sovereignty.

DASH provides the methodology, artifacts, and reference technologies to support scenarios in HIV healthcare for reporting aggregate indicators based on patient-level POC data, including: 

* Common, minimal terminology requirements.
* Data mapping tooling so that Provider data may originate in diverse databases, not just FHIR (though exchanges are performed on FHIR-structured data with FHIR operations).
* FHIR Measures (indicators) for common HIV-related healthcare quality measurement.
* CQL logic that is reproducible and repeatable with example data.
* Questionnaires with minimal ‘Must Support’ data fields in Provider systems.
* CI/CD software workflows.
* Considerations for health information exchange policy makers, planners, and developers.

## Initial Requirements

The initial scoping from diverse stakeholders includes an architecture and tooling that fulfills at minimum the following requirements:

* Protects patient identity, ie. no patient personally identifiable information in external systems.
* Wholly implementable within a national system or public health domain, e.g. HIV.
* Providers may provide data submissions by hand, from database exports, CSV, EHRs; may participate if they contain incomplete patient records; and may participate asynchronously, e.g. when not networked.
* Based on open standards and specifications.
* Easy for local implementers to adapt to any context and adapt to other public health domains.
* Embraces diverse scenarios for implementation from Provider- and governance-oriented perspectives, including the degree of patient identity management.
* Ingestions based on the capabilities of existing systems, e.g. centralized patient data stores.

## Relationship to other FHIR Implementation Guides

DASH was initiated to build upon several ongoing initiatives that make it easier to reduce reporting burdens, accelerate data usage, ensure patient privacy and data security. The initiatives include the WHO SMART Guidelines, FHIR Clinical Guidelines Implementation Guide (CPG IG), and the Da Vinci Data Exchange for Quality Measures (DEQM) FHIR Implementation Guide.

* The Da Vinci Data Exchange for Quality Measures (DEQM) FHIR Implementation Guide details a way to “enable automatic data collection and submission limiting the need for manual processing and intervention”. eCQM benefits include reducing reporting burdens and maximizing the value added from using patient-level data originating the Point of Care (POC). The DASH Architecture is an implementation for resource-constrained contexts informed by the US-oriented DEQM.
* The technical approach is informed by, and adheres to the FHIR Clinical Guidelines Implementation Guide (CPG IG) which provides “a means of creating a computable representation of a narrative clinical guideline that is faithful to guideline intent and supports the derivation of downstream capabilities such as cognitive and decision support, quality measures, case reporting, and documentation templates that direct clinical documentation in support of determining guideline compliance.”
* The suite of WHO SMART Guidelines. The WHO SMART Guidelines cover the entire clinical decision support domain. DASH only manages a priority list of aggregate indicators, and the demonstration tooling focuses on HIV only.  However, DASH and SMART utilize the same underlying methodologies and FHIR workflows for aggregate (eCQM) reporting and terminologies will ideally overlap.

## Implementation Scenarios

### Harmonize Data Dictionaries and Vocabularies

Implementers must determine the overlap between DASH with their participating systems that define sets of codes from data dictionaries and their code systems (LOINC, SNOMED, ICD-10, RxNorm, ...). This harmonization also includes demographic details.

### Ingestion

DASH is meant to be adapted without systems having to possess FHIR infrastructure and with different types of EMR systems.Supported types of ingestion include:

* Structured non-FHIR data such as databases exported in CSV. This data is mapped using tooling into FHIR data structures.
* FHIR QuestionnaireResponse.
* FHIR resource bundles.
* OpenMRS instances with the latest FHIR (v2) module.
* OpenELIS instances with the latest FHIR module.

Many workflows are possible that address the following:
* Patient Deduplication and Disease-Specific Shared Health Records
* Data Quality, Gaps, and Cleaning Workflows
* DHIS2 or another analytics platform
* Privacy and Security Workflows: https://www.hl7.org/fhir/secpriv-module.html
* Semantic interoperability for CQM.

The above technical considerations are not exhaustive and are meant to be informed in totality by data sovereignty, national and subnational patient privacy regulation, cybersecurity, and other best practices.

### Optional Workflows and Infrastructure

DASH is not dependent upon the following infrastructure, though they enable greater scale and flexibility.

* Terminology services
* Client (Patient) Registry
* Shared Health Records
* Master Facility List
* Mechanism (Attribution) Registry

### Actors and Transactions

**DASH Producer**: A Producer in DASH fulfills the role as specified in DEQM, that of a data producer which is a creator of healthcare data, and can “include providers and provider systems; patients, care teams, caregivers, and patient engagement systems; and other related clinical systems such as laboratory, clinic, and hospital information systems”

**DASH Consumer**: A Consumer in DASH fulfills the role as specified in DEQM, that of a consumer of data, and can include “can include data routers and aggregators, payers, health information exchanges and health integrated networks, as well as public health and other healthcare-related agencies”.
