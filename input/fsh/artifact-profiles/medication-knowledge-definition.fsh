Profile: CRMIMedicationKnowledgeDefinition
Parent: MedicationKnowledge
Id: crmi-medicationknowledgedefinition
Title: "CRMI MedicationKnowledge Definition"
Description: "Represents the definition of medication knowledge, suitable for use in various contexts"
* insert StandardsMetadata(1)
* code MS
* relatedMedicationKnowledge
  * reference
    * extension contains ArtifactUriReference named nonCanonicalReference 0..1 MS
* associatedMedication
  * extension contains ArtifactUriReference named nonCanonicalReference 0..1 MS
* ingredient MS
  * itemReference MS
    * extension contains ArtifactUriReference named nonCanonicalReference 0..1 MS
