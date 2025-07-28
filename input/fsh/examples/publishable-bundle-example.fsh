Instance: ExamplePublishableBundle
InstanceOf: CRMIPublishableBundle
Usage: #example
Title: "Example Publishable Bundle"
Description: """
This example demonstrates a publishable bundle containing an ImplementationGuide as the first entry, 
followed by related knowledge artifacts including a Library and ActivityDefinition.

The bundle represents a complete sepsis detection and management package that can be published 
and deployed as an atomic unit to healthcare systems.
"""

* type = #transaction
* id = "example-publishable-bundle"

// First entry: ImplementationGuide (required)
* entry[+].fullUrl = "http://example.org/fhir/ImplementationGuide/sepsis-management-ig"
* entry[=].resource = SepsisManagementIG
* entry[=].request
  * method = #POST
  * url = "ImplementationGuide/sepsis-management-ig"
  * ifNoneExist = "url=http://example.org/fhir/ImplementationGuide/sepsis-management-ig&version=1.0.0"

// Second entry: Library resource
* entry[+].fullUrl = "http://example.org/fhir/Library/sepsis-detection-library"
* entry[=].resource = SepsisDetectionLibrary
* entry[=].request
  * method = #POST
  * url = "Library/sepsis-detection-library"
  * ifNoneExist = "url=http://example.org/fhir/Library/sepsis-detection-library&version=1.0.0"

// Third entry: ActivityDefinition resource
* entry[+].fullUrl = "http://example.org/fhir/ActivityDefinition/sepsis-management-protocol"
* entry[=].resource = SepsisManagementProtocol
* entry[=].request
  * method = #POST
  * url = "ActivityDefinition/sepsis-management-protocol"
  * ifNoneExist = "url=http://example.org/fhir/ActivityDefinition/sepsis-management-protocol&version=1.0.0" 

// Supporting resources for the example

Instance: SepsisManagementIG
InstanceOf: ImplementationGuide
Usage: #inline
* id = "sepsis-management-ig"
* url = "http://example.org/fhir/ImplementationGuide/sepsis-management-ig"
* version = "1.0.0"
* name = "SepsisManagementIG"
* title = "Sepsis Detection and Management Implementation Guide"
* status = #active
* publisher = "Example Medical Research Institution"
* description = """
This implementation guide provides evidence-based clinical decision support for sepsis detection and management.
It includes risk stratification algorithms, treatment protocols, and quality measures developed through 
clinical trials and expert consensus.
"""
* packageId = "example.sepsis.management"
* fhirVersion = #4.0.1
* definition.resource[0].reference.reference = "Library/sepsis-detection-library"
* definition.resource[0].name = "Sepsis Detection Library"
* definition.resource[0].description = "CQL library containing sepsis detection logic"
* definition.resource[1].reference.reference = "ActivityDefinition/sepsis-management-protocol"
* definition.resource[1].name = "Sepsis Management Protocol"
* definition.resource[1].description = "Evidence-based sepsis management recommendations"

Instance: SepsisDetectionLibrary
InstanceOf: Library
Usage: #inline
* id = "sepsis-detection-library"
* url = "http://example.org/fhir/Library/sepsis-detection-library"
* version = "1.0.0"
* name = "SepsisDetectionLibrary"
* title = "Sepsis Detection Library"
* status = #active
* type = http://terminology.hl7.org/CodeSystem/library-type#logic-library
* description = """
This library contains Clinical Quality Language (CQL) logic for detecting sepsis risk 
based on clinical indicators including vital signs, laboratory values, and clinical observations.
The algorithms are based on peer-reviewed research and clinical guidelines.
"""
* content[0].contentType = #text/cql
* content[0].data = "bGlicmFyeSBTZXBzaXNEZXRlY3Rpb24gdmVyc2lvbiAnMS4wLjAnCgovLyBFeGFtcGxlIENRTCBjb250ZW50IGZvciBzZXBzaXMgZGV0ZWN0aW9u"

Instance: SepsisManagementProtocol
InstanceOf: ActivityDefinition
Usage: #inline
* id = "sepsis-management-protocol"
* url = "http://example.org/fhir/ActivityDefinition/sepsis-management-protocol"
* version = "1.0.0"
* name = "SepsisManagementProtocol"
* title = "Evidence-Based Sepsis Management Protocol"
* status = #active
* description = """
Comprehensive sepsis management protocol including initial assessment, treatment recommendations,
and monitoring guidelines. Based on Surviving Sepsis Campaign guidelines and institutional 
clinical experience.
"""
* kind = #ServiceRequest
* intent = #proposal
* priority = #urgent
* code = http://snomed.info/sct#91302008 "Sepsis (disorder)"
* timingTiming.repeat.frequency = 1
* timingTiming.repeat.period = 1
* timingTiming.repeat.periodUnit = #h
