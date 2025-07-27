Profile: CRMIMedicationDefinition
Parent: Medication
Id: crmi-medicationdefinition
Title: "CRMI MedicationDefinition"
Description: "Represents the definition of a medication, suitable for use in various contexts"
* insert StandardsMetadata(1)
* identifier MS
* code MS
* status MS
* ingredient MS
* ingredient
  * item[x] MS
  * itemReference 
    * extension contains ArtifactUriReference named nonCanonicalReference 0..1 MS
* batch 0..0
