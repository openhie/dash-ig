Instance: PLM-HIV-Questionnaire
InstanceOf: Questionnaire
Usage: #example
* url = "https://openhie.github.io/dash-ig/Questionnaire/PLM-HIV-Questionnaire"
* meta.profile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extract"
* name = "PLMHIVQuestionnaire"
* title = "PLM Prototype Questionnaire - HIV"
* status = #active
* item[0].linkId = "Patient"
* item[=].text = "Patient ID"
* item[=].type = #group
* item[=].item[0].linkId = "/Patient/id"
* item[=].item[=].text = "Patient ID"
* item[=].item[=].type = #string
* item[=].item[=].definition = "http://datim.org/fhir/StructureDefinition/PLM-HIV-Patient#Patient.id"
* item[=].item[+].linkId = "/Patient/birthDate"
* item[=].item[=].text = "Birth Date"
* item[=].item[=].type = #date
* item[=].item[=].definition = "http://datim.org/fhir/StructureDefinition/PLM-HIV-Patient#Patient.birthDate"
* item[=].item[+].linkId = "/Patient/gender"
* item[=].item[=].text = "Gender"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/administrative-gender"
* item[=].item[=].definition = "http://datim.org/fhir/StructureDefinition/PLM-HIV-Patient#Patient.gender"
* item[+].linkId = "/Encounter"
* item[=].text = "Encounter"
* item[=].type = #group
* item[=].item.linkId = "/Encounter/location"
* item[=].item.text = "Location ID"
* item[=].item.type = #string
* item[=].item.definition = "http://datim.org/fhir/StructureDefinition/PLM-HIV-Encounter#Encounter.location.location.identifier.value"
* item[+].linkId = "/Observation"
* item[=].text = "Practitioner"
* item[=].type = #group
* item[=].item[0].linkId = "/Observation/performer"
* item[=].item[=].text = "Practitioner ID"
* item[=].item[=].type = #string
* item[=].item[=].definition = "http://datim.org/fhir/StructureDefinition/PLM-HIV-Observation#Observation.performer.identifier.value"
* item[=].item[+].linkId = "/Observation/date"
* item[=].item[=].text = "Observation Date"
* item[=].item[=].type = #dateTime
* item[=].item[=].definition = "http://datim.org/fhir/StructureDefinition/PLM-HIV-Observation#Observation.effectiveDateTime"
* item[=].item[+].linkId = "/Observation/viralLoad"
* item[=].item[=].text = "Viral Load Count"
* item[=].item[=].type = #integer
* item[=].item[=].definition = "http://datim.org/fhir/StructureDefinition/PLM-HIV-Observation#Observation.valueQuantity"
* item[+].linkId = "/MedicationStatement"
* item[=].text = "MedicationStatement"
* item[=].type = #group
* item[=].item.linkId = "/MedicationStatement/startDate"
* item[=].item.text = "ART Start Date"
* item[=].item.type = #dateTime
* item[=].item.definition = "http://datim.org/fhir/StructureDefinition/PLM-HIV-MedicationStatement#MedicationStatement.effectivePeriod.start"