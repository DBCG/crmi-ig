Profile: CRMISubstanceDefinition
Parent: Substance
Id: crmi-substancedefinition
Title: "CRMI SubstanceDefinition"
Description: "Represents the definition of a substance, suitable for use in various contexts"
* insert StandardsMetadata(1)
* identifier MS
* code MS
* ingredient MS
* ingredient
  * substance[x] MS
  * substanceReference
    * extension contains ArtifactUriReference named nonCanonicalReference 0..1 MS
