unit FHIRConstants;

{$I fhir.inc}

{
  Copyright (c) 2011+, HL7 and Health Intersections Pty Ltd (http://www.healthintersections.com.au)
  All rights reserved.
  
  Redistribution and use in source and binary forms, with or without modification, 
  are permitted provided that the following conditions are met:
  
   * Redistributions of source code must retain the above copyright notice, this 
     list of conditions and the following disclaimer.
   * Redistributions in binary form must reproduce the above copyright notice, 
     this list of conditions and the following disclaimer in the documentation 
     and/or other materials provided with the distribution.
   * Neither the name of HL7 nor the names of its contributors may be used to 
     endorse or promote products derived from this software without specific 
     prior written permission.
  
  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND 
  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED 
  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. 
  IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, 
  INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT 
  NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR 
  PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, 
  WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) 
  ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE 
  POSSIBILITY OF SUCH DAMAGE.
  
}

interface

// FHIR v3.4.0 generated 2018-04-11T14:46:13+10:00

uses
  SysUtils, Classes, StringSupport, DecimalSupport, AdvBuffers, DateSupport, FHIRBase, FHIRTypes, FHIRResources;

Type
{$IFDEF FHIR_ACCOUNT}
  // Search Parameters for Account
  TSearchParamsAccount = (
    spAccount__content, 
    spAccount__id, 
    spAccount__lastUpdated, 
    spAccount__profile, 
    spAccount__query, 
    spAccount__security, 
    spAccount__source, 
    spAccount__tag, 
    spAccount__text, 
    spAccount_Identifier, 
    spAccount_Name, 
    spAccount_Owner, 
    spAccount_Patient, 
    spAccount_Period, 
    spAccount_Status, 
    spAccount_Subject, 
    spAccount_Type); 
{$ENDIF}

{$IFDEF FHIR_ACTIVITYDEFINITION}
  // Search Parameters for ActivityDefinition
  TSearchParamsActivityDefinition = (
    spActivityDefinition__content, 
    spActivityDefinition__id, 
    spActivityDefinition__lastUpdated, 
    spActivityDefinition__profile, 
    spActivityDefinition__query, 
    spActivityDefinition__security, 
    spActivityDefinition__source, 
    spActivityDefinition__tag, 
    spActivityDefinition__text, 
    spActivityDefinition_Composedof, 
    spActivityDefinition_Contexttype, 
    spActivityDefinition_Date, 
    spActivityDefinition_Dependson, 
    spActivityDefinition_Derivedfrom, 
    spActivityDefinition_Description, 
    spActivityDefinition_Effective, 
    spActivityDefinition_Identifier, 
    spActivityDefinition_Jurisdiction, 
    spActivityDefinition_Name, 
    spActivityDefinition_Predecessor, 
    spActivityDefinition_Publisher, 
    spActivityDefinition_Status, 
    spActivityDefinition_Successor, 
    spActivityDefinition_Title, 
    spActivityDefinition_Topic, 
    spActivityDefinition_Url, 
    spActivityDefinition_Version); 
{$ENDIF}

{$IFDEF FHIR_ADVERSEEVENT}
  // Search Parameters for AdverseEvent
  TSearchParamsAdverseEvent = (
    spAdverseEvent__content, 
    spAdverseEvent__id, 
    spAdverseEvent__lastUpdated, 
    spAdverseEvent__profile, 
    spAdverseEvent__query, 
    spAdverseEvent__security, 
    spAdverseEvent__source, 
    spAdverseEvent__tag, 
    spAdverseEvent__text, 
    spAdverseEvent_Actuality, 
    spAdverseEvent_Category, 
    spAdverseEvent_Date, 
    spAdverseEvent_Event, 
    spAdverseEvent_Location, 
    spAdverseEvent_Recorder, 
    spAdverseEvent_Resultingcondition, 
    spAdverseEvent_Seriousness, 
    spAdverseEvent_Severity, 
    spAdverseEvent_Study, 
    spAdverseEvent_Subject, 
    spAdverseEvent_Substance); 
{$ENDIF}

{$IFDEF FHIR_ALLERGYINTOLERANCE}
  // Search Parameters for AllergyIntolerance
  TSearchParamsAllergyIntolerance = (
    spAllergyIntolerance__content, 
    spAllergyIntolerance__id, 
    spAllergyIntolerance__lastUpdated, 
    spAllergyIntolerance__profile, 
    spAllergyIntolerance__query, 
    spAllergyIntolerance__security, 
    spAllergyIntolerance__source, 
    spAllergyIntolerance__tag, 
    spAllergyIntolerance__text, 
    spAllergyIntolerance_Asserter, 
    spAllergyIntolerance_Category, 
    spAllergyIntolerance_Clinicalstatus, 
    spAllergyIntolerance_Code, 
    spAllergyIntolerance_Criticality, 
    spAllergyIntolerance_Date, 
    spAllergyIntolerance_Identifier, 
    spAllergyIntolerance_Lastdate, 
    spAllergyIntolerance_Manifestation, 
    spAllergyIntolerance_Onset, 
    spAllergyIntolerance_Patient, 
    spAllergyIntolerance_Recorder, 
    spAllergyIntolerance_Route, 
    spAllergyIntolerance_Severity, 
    spAllergyIntolerance_Type, 
    spAllergyIntolerance_Verificationstatus); 
{$ENDIF}

{$IFDEF FHIR_APPOINTMENT}
  // Search Parameters for Appointment
  TSearchParamsAppointment = (
    spAppointment__content, 
    spAppointment__id, 
    spAppointment__lastUpdated, 
    spAppointment__profile, 
    spAppointment__query, 
    spAppointment__security, 
    spAppointment__source, 
    spAppointment__tag, 
    spAppointment__text, 
    spAppointment_Actor, 
    spAppointment_Appointmenttype, 
    spAppointment_Basedon, 
    spAppointment_Date, 
    spAppointment_Identifier, 
    spAppointment_Location, 
    spAppointment_Partstatus, 
    spAppointment_Patient, 
    spAppointment_Practitioner, 
    spAppointment_Servicetype, 
    spAppointment_Status); 
{$ENDIF}

{$IFDEF FHIR_APPOINTMENTRESPONSE}
  // Search Parameters for AppointmentResponse
  TSearchParamsAppointmentResponse = (
    spAppointmentResponse__content, 
    spAppointmentResponse__id, 
    spAppointmentResponse__lastUpdated, 
    spAppointmentResponse__profile, 
    spAppointmentResponse__query, 
    spAppointmentResponse__security, 
    spAppointmentResponse__source, 
    spAppointmentResponse__tag, 
    spAppointmentResponse__text, 
    spAppointmentResponse_Actor, 
    spAppointmentResponse_Appointment, 
    spAppointmentResponse_Identifier, 
    spAppointmentResponse_Location, 
    spAppointmentResponse_Partstatus, 
    spAppointmentResponse_Patient, 
    spAppointmentResponse_Practitioner); 
{$ENDIF}

{$IFDEF FHIR_AUDITEVENT}
  // Search Parameters for AuditEvent
  TSearchParamsAuditEvent = (
    spAuditEvent__content, 
    spAuditEvent__id, 
    spAuditEvent__lastUpdated, 
    spAuditEvent__profile, 
    spAuditEvent__query, 
    spAuditEvent__security, 
    spAuditEvent__source, 
    spAuditEvent__tag, 
    spAuditEvent__text, 
    spAuditEvent_Action, 
    spAuditEvent_Address, 
    spAuditEvent_Agent, 
    spAuditEvent_Agentname, 
    spAuditEvent_Agentrole, 
    spAuditEvent_Altid, 
    spAuditEvent_Date, 
    spAuditEvent_Entity, 
    spAuditEvent_Entityid, 
    spAuditEvent_Entityname, 
    spAuditEvent_Entityrole, 
    spAuditEvent_Entitytype, 
    spAuditEvent_Outcome, 
    spAuditEvent_Patient, 
    spAuditEvent_Policy, 
    spAuditEvent_Site, 
    spAuditEvent_Source, 
    spAuditEvent_Subtype, 
    spAuditEvent_Type, 
    spAuditEvent_User); 
{$ENDIF}

{$IFDEF FHIR_BASIC}
  // Search Parameters for Basic
  TSearchParamsBasic = (
    spBasic__content, 
    spBasic__id, 
    spBasic__lastUpdated, 
    spBasic__profile, 
    spBasic__query, 
    spBasic__security, 
    spBasic__source, 
    spBasic__tag, 
    spBasic__text, 
    spBasic_Author, 
    spBasic_Code, 
    spBasic_Created, 
    spBasic_Identifier, 
    spBasic_Patient, 
    spBasic_Subject); 
{$ENDIF}

{$IFDEF FHIR_BINARY}
  // Search Parameters for Binary
  TSearchParamsBinary = (
    spBinary__content, 
    spBinary__id, 
    spBinary__lastUpdated, 
    spBinary__profile, 
    spBinary__query, 
    spBinary__security, 
    spBinary__source, 
    spBinary__tag); 
{$ENDIF}

{$IFDEF FHIR_BIOLOGICALLYDERIVEDPRODUCT}
  // Search Parameters for BiologicallyDerivedProduct
  TSearchParamsBiologicallyDerivedProduct = (
    spBiologicallyDerivedProduct__content, 
    spBiologicallyDerivedProduct__id, 
    spBiologicallyDerivedProduct__lastUpdated, 
    spBiologicallyDerivedProduct__profile, 
    spBiologicallyDerivedProduct__query, 
    spBiologicallyDerivedProduct__security, 
    spBiologicallyDerivedProduct__source, 
    spBiologicallyDerivedProduct__tag, 
    spBiologicallyDerivedProduct__text); 
{$ENDIF}

{$IFDEF FHIR_BODYSTRUCTURE}
  // Search Parameters for BodyStructure
  TSearchParamsBodyStructure = (
    spBodyStructure__content, 
    spBodyStructure__id, 
    spBodyStructure__lastUpdated, 
    spBodyStructure__profile, 
    spBodyStructure__query, 
    spBodyStructure__security, 
    spBodyStructure__source, 
    spBodyStructure__tag, 
    spBodyStructure__text, 
    spBodyStructure_Identifier, 
    spBodyStructure_Location, 
    spBodyStructure_Morphology, 
    spBodyStructure_Patient); 
{$ENDIF}

{$IFDEF FHIR_BUNDLE}
  // Search Parameters for Bundle
  TSearchParamsBundle = (
    spBundle__content, 
    spBundle__id, 
    spBundle__lastUpdated, 
    spBundle__profile, 
    spBundle__query, 
    spBundle__security, 
    spBundle__source, 
    spBundle__tag, 
    spBundle_Composition, 
    spBundle_Identifier, 
    spBundle_Message, 
    spBundle_Timestamp, 
    spBundle_Type); 
{$ENDIF}

{$IFDEF FHIR_CAPABILITYSTATEMENT}
  // Search Parameters for CapabilityStatement
  TSearchParamsCapabilityStatement = (
    spCapabilityStatement__content, 
    spCapabilityStatement__id, 
    spCapabilityStatement__lastUpdated, 
    spCapabilityStatement__profile, 
    spCapabilityStatement__query, 
    spCapabilityStatement__security, 
    spCapabilityStatement__source, 
    spCapabilityStatement__tag, 
    spCapabilityStatement__text, 
    spCapabilityStatement_Date, 
    spCapabilityStatement_Description, 
    spCapabilityStatement_Fhirversion, 
    spCapabilityStatement_Format, 
    spCapabilityStatement_Guide, 
    spCapabilityStatement_Jurisdiction, 
    spCapabilityStatement_Mode, 
    spCapabilityStatement_Name, 
    spCapabilityStatement_Publisher, 
    spCapabilityStatement_Resource, 
    spCapabilityStatement_Resourceprofile, 
    spCapabilityStatement_Securityservice, 
    spCapabilityStatement_Software, 
    spCapabilityStatement_Status, 
    spCapabilityStatement_Supportedprofile, 
    spCapabilityStatement_Title, 
    spCapabilityStatement_Url, 
    spCapabilityStatement_Version); 
{$ENDIF}

{$IFDEF FHIR_CAREPLAN}
  // Search Parameters for CarePlan
  TSearchParamsCarePlan = (
    spCarePlan__content, 
    spCarePlan__id, 
    spCarePlan__lastUpdated, 
    spCarePlan__profile, 
    spCarePlan__query, 
    spCarePlan__security, 
    spCarePlan__source, 
    spCarePlan__tag, 
    spCarePlan__text, 
    spCarePlan_Activitycode, 
    spCarePlan_Activitydate, 
    spCarePlan_Activityreference, 
    spCarePlan_Basedon, 
    spCarePlan_Careteam, 
    spCarePlan_Category, 
    spCarePlan_Condition, 
    spCarePlan_Context, 
    spCarePlan_Date, 
    spCarePlan_Encounter, 
    spCarePlan_Goal, 
    spCarePlan_Identifier, 
    spCarePlan_Instantiates, 
    spCarePlan_Intent, 
    spCarePlan_Partof, 
    spCarePlan_Patient, 
    spCarePlan_Performer, 
    spCarePlan_Replaces, 
    spCarePlan_Status, 
    spCarePlan_Subject); 
{$ENDIF}

{$IFDEF FHIR_CARETEAM}
  // Search Parameters for CareTeam
  TSearchParamsCareTeam = (
    spCareTeam__content, 
    spCareTeam__id, 
    spCareTeam__lastUpdated, 
    spCareTeam__profile, 
    spCareTeam__query, 
    spCareTeam__security, 
    spCareTeam__source, 
    spCareTeam__tag, 
    spCareTeam__text, 
    spCareTeam_Category, 
    spCareTeam_Context, 
    spCareTeam_Date, 
    spCareTeam_Encounter, 
    spCareTeam_Identifier, 
    spCareTeam_Participant, 
    spCareTeam_Patient, 
    spCareTeam_Status, 
    spCareTeam_Subject); 
{$ENDIF}

{$IFDEF FHIR_CHARGEITEM}
  // Search Parameters for ChargeItem
  TSearchParamsChargeItem = (
    spChargeItem__content, 
    spChargeItem__id, 
    spChargeItem__lastUpdated, 
    spChargeItem__profile, 
    spChargeItem__query, 
    spChargeItem__security, 
    spChargeItem__source, 
    spChargeItem__tag, 
    spChargeItem__text, 
    spChargeItem_Account, 
    spChargeItem_Code, 
    spChargeItem_Context, 
    spChargeItem_Entereddate, 
    spChargeItem_Enterer, 
    spChargeItem_Factoroverride, 
    spChargeItem_Identifier, 
    spChargeItem_Occurrence, 
    spChargeItem_Participantactor, 
    spChargeItem_Participantrole, 
    spChargeItem_Patient, 
    spChargeItem_Performingorganization, 
    spChargeItem_Priceoverride, 
    spChargeItem_Quantity, 
    spChargeItem_Requestingorganization, 
    spChargeItem_Service, 
    spChargeItem_Subject); 
{$ENDIF}

{$IFDEF FHIR_CLAIM}
  // Search Parameters for Claim
  TSearchParamsClaim = (
    spClaim__content, 
    spClaim__id, 
    spClaim__lastUpdated, 
    spClaim__profile, 
    spClaim__query, 
    spClaim__security, 
    spClaim__source, 
    spClaim__tag, 
    spClaim__text, 
    spClaim_Careteam, 
    spClaim_Created, 
    spClaim_Encounter, 
    spClaim_Enterer, 
    spClaim_Facility, 
    spClaim_Identifier, 
    spClaim_Insurer, 
    spClaim_Patient, 
    spClaim_Payee, 
    spClaim_Priority, 
    spClaim_Provider, 
    spClaim_Status, 
    spClaim_Use); 
{$ENDIF}

{$IFDEF FHIR_CLAIMRESPONSE}
  // Search Parameters for ClaimResponse
  TSearchParamsClaimResponse = (
    spClaimResponse__content, 
    spClaimResponse__id, 
    spClaimResponse__lastUpdated, 
    spClaimResponse__profile, 
    spClaimResponse__query, 
    spClaimResponse__security, 
    spClaimResponse__source, 
    spClaimResponse__tag, 
    spClaimResponse__text, 
    spClaimResponse_Created, 
    spClaimResponse_Disposition, 
    spClaimResponse_Identifier, 
    spClaimResponse_Insurer, 
    spClaimResponse_Outcome, 
    spClaimResponse_Patient, 
    spClaimResponse_Paymentdate, 
    spClaimResponse_Request, 
    spClaimResponse_Requestprovider, 
    spClaimResponse_Status); 
{$ENDIF}

{$IFDEF FHIR_CLINICALIMPRESSION}
  // Search Parameters for ClinicalImpression
  TSearchParamsClinicalImpression = (
    spClinicalImpression__content, 
    spClinicalImpression__id, 
    spClinicalImpression__lastUpdated, 
    spClinicalImpression__profile, 
    spClinicalImpression__query, 
    spClinicalImpression__security, 
    spClinicalImpression__source, 
    spClinicalImpression__tag, 
    spClinicalImpression__text, 
    spClinicalImpression_Action, 
    spClinicalImpression_Assessor, 
    spClinicalImpression_Context, 
    spClinicalImpression_Date, 
    spClinicalImpression_Findingcode, 
    spClinicalImpression_Findingref, 
    spClinicalImpression_Identifier, 
    spClinicalImpression_Investigation, 
    spClinicalImpression_Patient, 
    spClinicalImpression_Previous, 
    spClinicalImpression_Problem, 
    spClinicalImpression_Status, 
    spClinicalImpression_Subject); 
{$ENDIF}

{$IFDEF FHIR_CODESYSTEM}
  // Search Parameters for CodeSystem
  TSearchParamsCodeSystem = (
    spCodeSystem__content, 
    spCodeSystem__id, 
    spCodeSystem__lastUpdated, 
    spCodeSystem__profile, 
    spCodeSystem__query, 
    spCodeSystem__security, 
    spCodeSystem__source, 
    spCodeSystem__tag, 
    spCodeSystem__text, 
    spCodeSystem_Code, 
    spCodeSystem_Contentmode, 
    spCodeSystem_Date, 
    spCodeSystem_Description, 
    spCodeSystem_Identifier, 
    spCodeSystem_Jurisdiction, 
    spCodeSystem_Language, 
    spCodeSystem_Name, 
    spCodeSystem_Publisher, 
    spCodeSystem_Status, 
    spCodeSystem_Supplements, 
    spCodeSystem_System, 
    spCodeSystem_Title, 
    spCodeSystem_Url, 
    spCodeSystem_Version); 
{$ENDIF}

{$IFDEF FHIR_COMMUNICATION}
  // Search Parameters for Communication
  TSearchParamsCommunication = (
    spCommunication__content, 
    spCommunication__id, 
    spCommunication__lastUpdated, 
    spCommunication__profile, 
    spCommunication__query, 
    spCommunication__security, 
    spCommunication__source, 
    spCommunication__tag, 
    spCommunication__text, 
    spCommunication_Basedon, 
    spCommunication_Category, 
    spCommunication_Context, 
    spCommunication_Encounter, 
    spCommunication_Identifier, 
    spCommunication_Instantiates, 
    spCommunication_Medium, 
    spCommunication_Partof, 
    spCommunication_Patient, 
    spCommunication_Received, 
    spCommunication_Recipient, 
    spCommunication_Sender, 
    spCommunication_Sent, 
    spCommunication_Status, 
    spCommunication_Subject); 
{$ENDIF}

{$IFDEF FHIR_COMMUNICATIONREQUEST}
  // Search Parameters for CommunicationRequest
  TSearchParamsCommunicationRequest = (
    spCommunicationRequest__content, 
    spCommunicationRequest__id, 
    spCommunicationRequest__lastUpdated, 
    spCommunicationRequest__profile, 
    spCommunicationRequest__query, 
    spCommunicationRequest__security, 
    spCommunicationRequest__source, 
    spCommunicationRequest__tag, 
    spCommunicationRequest__text, 
    spCommunicationRequest_Authored, 
    spCommunicationRequest_Basedon, 
    spCommunicationRequest_Category, 
    spCommunicationRequest_Context, 
    spCommunicationRequest_Encounter, 
    spCommunicationRequest_Groupidentifier, 
    spCommunicationRequest_Identifier, 
    spCommunicationRequest_Medium, 
    spCommunicationRequest_Occurrence, 
    spCommunicationRequest_Patient, 
    spCommunicationRequest_Priority, 
    spCommunicationRequest_Recipient, 
    spCommunicationRequest_Replaces, 
    spCommunicationRequest_Requester, 
    spCommunicationRequest_Sender, 
    spCommunicationRequest_Status, 
    spCommunicationRequest_Subject); 
{$ENDIF}

{$IFDEF FHIR_COMPARTMENTDEFINITION}
  // Search Parameters for CompartmentDefinition
  TSearchParamsCompartmentDefinition = (
    spCompartmentDefinition__content, 
    spCompartmentDefinition__id, 
    spCompartmentDefinition__lastUpdated, 
    spCompartmentDefinition__profile, 
    spCompartmentDefinition__query, 
    spCompartmentDefinition__security, 
    spCompartmentDefinition__source, 
    spCompartmentDefinition__tag, 
    spCompartmentDefinition__text, 
    spCompartmentDefinition_Code, 
    spCompartmentDefinition_Contexttype, 
    spCompartmentDefinition_Date, 
    spCompartmentDefinition_Description, 
    spCompartmentDefinition_Jurisdiction, 
    spCompartmentDefinition_Name, 
    spCompartmentDefinition_Publisher, 
    spCompartmentDefinition_Resource, 
    spCompartmentDefinition_Status, 
    spCompartmentDefinition_Title, 
    spCompartmentDefinition_Url); 
{$ENDIF}

{$IFDEF FHIR_COMPOSITION}
  // Search Parameters for Composition
  TSearchParamsComposition = (
    spComposition__content, 
    spComposition__id, 
    spComposition__lastUpdated, 
    spComposition__profile, 
    spComposition__query, 
    spComposition__security, 
    spComposition__source, 
    spComposition__tag, 
    spComposition__text, 
    spComposition_Attester, 
    spComposition_Author, 
    spComposition_Class, 
    spComposition_Confidentiality, 
    spComposition_Context, 
    spComposition_Date, 
    spComposition_Encounter, 
    spComposition_Entry, 
    spComposition_Identifier, 
    spComposition_Patient, 
    spComposition_Period, 
    spComposition_Relatedid, 
    spComposition_Relatedref, 
    spComposition_Section, 
    spComposition_Status, 
    spComposition_Subject, 
    spComposition_Title, 
    spComposition_Type); 
{$ENDIF}

{$IFDEF FHIR_CONCEPTMAP}
  // Search Parameters for ConceptMap
  TSearchParamsConceptMap = (
    spConceptMap__content, 
    spConceptMap__id, 
    spConceptMap__lastUpdated, 
    spConceptMap__profile, 
    spConceptMap__query, 
    spConceptMap__security, 
    spConceptMap__source, 
    spConceptMap__tag, 
    spConceptMap__text, 
    spConceptMap_Date, 
    spConceptMap_Dependson, 
    spConceptMap_Description, 
    spConceptMap_Identifier, 
    spConceptMap_Jurisdiction, 
    spConceptMap_Name, 
    spConceptMap_Other, 
    spConceptMap_Product, 
    spConceptMap_Publisher, 
    spConceptMap_Source, 
    spConceptMap_Sourcecode, 
    spConceptMap_Sourcesystem, 
    spConceptMap_Sourceuri, 
    spConceptMap_Status, 
    spConceptMap_Target, 
    spConceptMap_Targetcode, 
    spConceptMap_Targetsystem, 
    spConceptMap_Targeturi, 
    spConceptMap_Title, 
    spConceptMap_Url, 
    spConceptMap_Version); 
{$ENDIF}

{$IFDEF FHIR_CONDITION}
  // Search Parameters for Condition
  TSearchParamsCondition = (
    spCondition__content, 
    spCondition__id, 
    spCondition__lastUpdated, 
    spCondition__profile, 
    spCondition__query, 
    spCondition__security, 
    spCondition__source, 
    spCondition__tag, 
    spCondition__text, 
    spCondition_Abatementage, 
    spCondition_Abatementdate, 
    spCondition_Abatementstring, 
    spCondition_Asserteddate, 
    spCondition_Asserter, 
    spCondition_Bodysite, 
    spCondition_Category, 
    spCondition_Clinicalstatus, 
    spCondition_Code, 
    spCondition_Context, 
    spCondition_Encounter, 
    spCondition_Evidence, 
    spCondition_Evidencedetail, 
    spCondition_Identifier, 
    spCondition_Onsetage, 
    spCondition_Onsetdate, 
    spCondition_Onsetinfo, 
    spCondition_Patient, 
    spCondition_Severity, 
    spCondition_Stage, 
    spCondition_Subject, 
    spCondition_Verificationstatus); 
{$ENDIF}

{$IFDEF FHIR_CONSENT}
  // Search Parameters for Consent
  TSearchParamsConsent = (
    spConsent__content, 
    spConsent__id, 
    spConsent__lastUpdated, 
    spConsent__profile, 
    spConsent__query, 
    spConsent__security, 
    spConsent__source, 
    spConsent__tag, 
    spConsent__text, 
    spConsent_Action, 
    spConsent_Actor, 
    spConsent_Category, 
    spConsent_Consentor, 
    spConsent_Data, 
    spConsent_Date, 
    spConsent_Identifier, 
    spConsent_Organization, 
    spConsent_Patient, 
    spConsent_Period, 
    spConsent_Purpose, 
    spConsent_Scope, 
    spConsent_Securitylabel, 
    spConsent_Sourceidentifier, 
    spConsent_Sourcereference, 
    spConsent_Status); 
{$ENDIF}

{$IFDEF FHIR_CONTRACT}
  // Search Parameters for Contract
  TSearchParamsContract = (
    spContract__content, 
    spContract__id, 
    spContract__lastUpdated, 
    spContract__profile, 
    spContract__query, 
    spContract__security, 
    spContract__source, 
    spContract__tag, 
    spContract__text, 
    spContract_Authority, 
    spContract_Domain, 
    spContract_Identifier, 
    spContract_Issued, 
    spContract_Patient, 
    spContract_Signer, 
    spContract_Status, 
    spContract_Subject); 
{$ENDIF}

{$IFDEF FHIR_COVERAGE}
  // Search Parameters for Coverage
  TSearchParamsCoverage = (
    spCoverage__content, 
    spCoverage__id, 
    spCoverage__lastUpdated, 
    spCoverage__profile, 
    spCoverage__query, 
    spCoverage__security, 
    spCoverage__source, 
    spCoverage__tag, 
    spCoverage__text, 
    spCoverage_Beneficiary, 
    spCoverage_Dependent, 
    spCoverage_Identifier, 
    spCoverage_Patient, 
    spCoverage_Payor, 
    spCoverage_Policyholder, 
    spCoverage_Status, 
    spCoverage_Subscriber, 
    spCoverage_Type); 
{$ENDIF}

{$IFDEF FHIR_DETECTEDISSUE}
  // Search Parameters for DetectedIssue
  TSearchParamsDetectedIssue = (
    spDetectedIssue__content, 
    spDetectedIssue__id, 
    spDetectedIssue__lastUpdated, 
    spDetectedIssue__profile, 
    spDetectedIssue__query, 
    spDetectedIssue__security, 
    spDetectedIssue__source, 
    spDetectedIssue__tag, 
    spDetectedIssue__text, 
    spDetectedIssue_Author, 
    spDetectedIssue_Category, 
    spDetectedIssue_Date, 
    spDetectedIssue_Identifier, 
    spDetectedIssue_Implicated, 
    spDetectedIssue_Patient); 
{$ENDIF}

{$IFDEF FHIR_DEVICE}
  // Search Parameters for Device
  TSearchParamsDevice = (
    spDevice__content, 
    spDevice__id, 
    spDevice__lastUpdated, 
    spDevice__profile, 
    spDevice__query, 
    spDevice__security, 
    spDevice__source, 
    spDevice__tag, 
    spDevice__text, 
    spDevice_Devicename, 
    spDevice_Identifier, 
    spDevice_Location, 
    spDevice_Manufacturer, 
    spDevice_Model, 
    spDevice_Organization, 
    spDevice_Patient, 
    spDevice_Status, 
    spDevice_Type, 
    spDevice_Udicarrier, 
    spDevice_Udidi, 
    spDevice_Url); 
{$ENDIF}

{$IFDEF FHIR_DEVICECOMPONENT}
  // Search Parameters for DeviceComponent
  TSearchParamsDeviceComponent = (
    spDeviceComponent__content, 
    spDeviceComponent__id, 
    spDeviceComponent__lastUpdated, 
    spDeviceComponent__profile, 
    spDeviceComponent__query, 
    spDeviceComponent__security, 
    spDeviceComponent__source, 
    spDeviceComponent__tag, 
    spDeviceComponent__text, 
    spDeviceComponent_Identifier, 
    spDeviceComponent_Parent, 
    spDeviceComponent_Source, 
    spDeviceComponent_Type); 
{$ENDIF}

{$IFDEF FHIR_DEVICEMETRIC}
  // Search Parameters for DeviceMetric
  TSearchParamsDeviceMetric = (
    spDeviceMetric__content, 
    spDeviceMetric__id, 
    spDeviceMetric__lastUpdated, 
    spDeviceMetric__profile, 
    spDeviceMetric__query, 
    spDeviceMetric__security, 
    spDeviceMetric__source, 
    spDeviceMetric__tag, 
    spDeviceMetric__text, 
    spDeviceMetric_Category, 
    spDeviceMetric_Identifier, 
    spDeviceMetric_Parent, 
    spDeviceMetric_Source, 
    spDeviceMetric_Type); 
{$ENDIF}

{$IFDEF FHIR_DEVICEREQUEST}
  // Search Parameters for DeviceRequest
  TSearchParamsDeviceRequest = (
    spDeviceRequest__content, 
    spDeviceRequest__id, 
    spDeviceRequest__lastUpdated, 
    spDeviceRequest__profile, 
    spDeviceRequest__query, 
    spDeviceRequest__security, 
    spDeviceRequest__source, 
    spDeviceRequest__tag, 
    spDeviceRequest__text, 
    spDeviceRequest_Authoredon, 
    spDeviceRequest_Basedon, 
    spDeviceRequest_Code, 
    spDeviceRequest_Device, 
    spDeviceRequest_Encounter, 
    spDeviceRequest_Eventdate, 
    spDeviceRequest_Groupidentifier, 
    spDeviceRequest_Identifier, 
    spDeviceRequest_Instantiates, 
    spDeviceRequest_Insurance, 
    spDeviceRequest_Intent, 
    spDeviceRequest_Patient, 
    spDeviceRequest_Performer, 
    spDeviceRequest_Priorrequest, 
    spDeviceRequest_Requester, 
    spDeviceRequest_Status, 
    spDeviceRequest_Subject); 
{$ENDIF}

{$IFDEF FHIR_DEVICEUSESTATEMENT}
  // Search Parameters for DeviceUseStatement
  TSearchParamsDeviceUseStatement = (
    spDeviceUseStatement__content, 
    spDeviceUseStatement__id, 
    spDeviceUseStatement__lastUpdated, 
    spDeviceUseStatement__profile, 
    spDeviceUseStatement__query, 
    spDeviceUseStatement__security, 
    spDeviceUseStatement__source, 
    spDeviceUseStatement__tag, 
    spDeviceUseStatement__text, 
    spDeviceUseStatement_Device, 
    spDeviceUseStatement_Identifier, 
    spDeviceUseStatement_Patient, 
    spDeviceUseStatement_Subject); 
{$ENDIF}

{$IFDEF FHIR_DIAGNOSTICREPORT}
  // Search Parameters for DiagnosticReport
  TSearchParamsDiagnosticReport = (
    spDiagnosticReport__content, 
    spDiagnosticReport__id, 
    spDiagnosticReport__lastUpdated, 
    spDiagnosticReport__profile, 
    spDiagnosticReport__query, 
    spDiagnosticReport__security, 
    spDiagnosticReport__source, 
    spDiagnosticReport__tag, 
    spDiagnosticReport__text, 
    spDiagnosticReport_Basedon, 
    spDiagnosticReport_Category, 
    spDiagnosticReport_Code, 
    spDiagnosticReport_Context, 
    spDiagnosticReport_Date, 
    spDiagnosticReport_Diagnosis, 
    spDiagnosticReport_Encounter, 
    spDiagnosticReport_Identifier, 
    spDiagnosticReport_Issued, 
    spDiagnosticReport_Media, 
    spDiagnosticReport_Patient, 
    spDiagnosticReport_Performer, 
    spDiagnosticReport_Result, 
    spDiagnosticReport_Resultsinterpreter, 
    spDiagnosticReport_Specimen, 
    spDiagnosticReport_Status, 
    spDiagnosticReport_Subject); 
{$ENDIF}

{$IFDEF FHIR_DOCUMENTMANIFEST}
  // Search Parameters for DocumentManifest
  TSearchParamsDocumentManifest = (
    spDocumentManifest__content, 
    spDocumentManifest__id, 
    spDocumentManifest__lastUpdated, 
    spDocumentManifest__profile, 
    spDocumentManifest__query, 
    spDocumentManifest__security, 
    spDocumentManifest__source, 
    spDocumentManifest__tag, 
    spDocumentManifest__text, 
    spDocumentManifest_Agent, 
    spDocumentManifest_Created, 
    spDocumentManifest_Description, 
    spDocumentManifest_Identifier, 
    spDocumentManifest_Item, 
    spDocumentManifest_Patient, 
    spDocumentManifest_Recipient, 
    spDocumentManifest_Relatedid, 
    spDocumentManifest_Relatedref, 
    spDocumentManifest_Source, 
    spDocumentManifest_Status, 
    spDocumentManifest_Subject, 
    spDocumentManifest_Type); 
{$ENDIF}

{$IFDEF FHIR_DOCUMENTREFERENCE}
  // Search Parameters for DocumentReference
  TSearchParamsDocumentReference = (
    spDocumentReference__content, 
    spDocumentReference__id, 
    spDocumentReference__lastUpdated, 
    spDocumentReference__profile, 
    spDocumentReference__query, 
    spDocumentReference__security, 
    spDocumentReference__source, 
    spDocumentReference__tag, 
    spDocumentReference__text, 
    spDocumentReference_Agent, 
    spDocumentReference_Authenticator, 
    spDocumentReference_Class, 
    spDocumentReference_Contenttype, 
    spDocumentReference_Created, 
    spDocumentReference_Custodian, 
    spDocumentReference_Date, 
    spDocumentReference_Description, 
    spDocumentReference_Encounter, 
    spDocumentReference_Event, 
    spDocumentReference_Facility, 
    spDocumentReference_Format, 
    spDocumentReference_Identifier, 
    spDocumentReference_Language, 
    spDocumentReference_Location, 
    spDocumentReference_Patient, 
    spDocumentReference_Period, 
    spDocumentReference_Relatedid, 
    spDocumentReference_Relatedref, 
    spDocumentReference_Relatesto, 
    spDocumentReference_Relation, 
    spDocumentReference_Relationship, 
    spDocumentReference_Securitylabel, 
    spDocumentReference_Setting, 
    spDocumentReference_Status, 
    spDocumentReference_Subject, 
    spDocumentReference_Type); 
{$ENDIF}

{$IFDEF FHIR_ELIGIBILITYREQUEST}
  // Search Parameters for EligibilityRequest
  TSearchParamsEligibilityRequest = (
    spEligibilityRequest__content, 
    spEligibilityRequest__id, 
    spEligibilityRequest__lastUpdated, 
    spEligibilityRequest__profile, 
    spEligibilityRequest__query, 
    spEligibilityRequest__security, 
    spEligibilityRequest__source, 
    spEligibilityRequest__tag, 
    spEligibilityRequest__text, 
    spEligibilityRequest_Created, 
    spEligibilityRequest_Enterer, 
    spEligibilityRequest_Facility, 
    spEligibilityRequest_Identifier, 
    spEligibilityRequest_Patient, 
    spEligibilityRequest_Provider, 
    spEligibilityRequest_Status); 
{$ENDIF}

{$IFDEF FHIR_ELIGIBILITYRESPONSE}
  // Search Parameters for EligibilityResponse
  TSearchParamsEligibilityResponse = (
    spEligibilityResponse__content, 
    spEligibilityResponse__id, 
    spEligibilityResponse__lastUpdated, 
    spEligibilityResponse__profile, 
    spEligibilityResponse__query, 
    spEligibilityResponse__security, 
    spEligibilityResponse__source, 
    spEligibilityResponse__tag, 
    spEligibilityResponse__text, 
    spEligibilityResponse_Created, 
    spEligibilityResponse_Disposition, 
    spEligibilityResponse_Identifier, 
    spEligibilityResponse_Insurer, 
    spEligibilityResponse_Outcome, 
    spEligibilityResponse_Request, 
    spEligibilityResponse_Requestprovider, 
    spEligibilityResponse_Status); 
{$ENDIF}

{$IFDEF FHIR_ENCOUNTER}
  // Search Parameters for Encounter
  TSearchParamsEncounter = (
    spEncounter__content, 
    spEncounter__id, 
    spEncounter__lastUpdated, 
    spEncounter__profile, 
    spEncounter__query, 
    spEncounter__security, 
    spEncounter__source, 
    spEncounter__tag, 
    spEncounter__text, 
    spEncounter_Account, 
    spEncounter_Appointment, 
    spEncounter_Basedon, 
    spEncounter_Class, 
    spEncounter_Date, 
    spEncounter_Diagnosis, 
    spEncounter_Episodeofcare, 
    spEncounter_Identifier, 
    spEncounter_Length, 
    spEncounter_Location, 
    spEncounter_Locationperiod, 
    spEncounter_Partof, 
    spEncounter_Participant, 
    spEncounter_Participanttype, 
    spEncounter_Patient, 
    spEncounter_Practitioner, 
    spEncounter_Reason, 
    spEncounter_Serviceprovider, 
    spEncounter_Specialarrangement, 
    spEncounter_Status, 
    spEncounter_Subject, 
    spEncounter_Type); 
{$ENDIF}

{$IFDEF FHIR_ENDPOINT}
  // Search Parameters for Endpoint
  TSearchParamsEndpoint = (
    spEndpoint__content, 
    spEndpoint__id, 
    spEndpoint__lastUpdated, 
    spEndpoint__profile, 
    spEndpoint__query, 
    spEndpoint__security, 
    spEndpoint__source, 
    spEndpoint__tag, 
    spEndpoint__text, 
    spEndpoint_Connectiontype, 
    spEndpoint_Identifier, 
    spEndpoint_Name, 
    spEndpoint_Organization, 
    spEndpoint_Payloadtype, 
    spEndpoint_Status); 
{$ENDIF}

{$IFDEF FHIR_ENROLLMENTREQUEST}
  // Search Parameters for EnrollmentRequest
  TSearchParamsEnrollmentRequest = (
    spEnrollmentRequest__content, 
    spEnrollmentRequest__id, 
    spEnrollmentRequest__lastUpdated, 
    spEnrollmentRequest__profile, 
    spEnrollmentRequest__query, 
    spEnrollmentRequest__security, 
    spEnrollmentRequest__source, 
    spEnrollmentRequest__tag, 
    spEnrollmentRequest__text, 
    spEnrollmentRequest_Identifier, 
    spEnrollmentRequest_Patient, 
    spEnrollmentRequest_Status, 
    spEnrollmentRequest_Subject); 
{$ENDIF}

{$IFDEF FHIR_ENROLLMENTRESPONSE}
  // Search Parameters for EnrollmentResponse
  TSearchParamsEnrollmentResponse = (
    spEnrollmentResponse__content, 
    spEnrollmentResponse__id, 
    spEnrollmentResponse__lastUpdated, 
    spEnrollmentResponse__profile, 
    spEnrollmentResponse__query, 
    spEnrollmentResponse__security, 
    spEnrollmentResponse__source, 
    spEnrollmentResponse__tag, 
    spEnrollmentResponse__text, 
    spEnrollmentResponse_Identifier, 
    spEnrollmentResponse_Request, 
    spEnrollmentResponse_Status); 
{$ENDIF}

{$IFDEF FHIR_ENTRYDEFINITION}
  // Search Parameters for EntryDefinition
  TSearchParamsEntryDefinition = (
    spEntryDefinition__content, 
    spEntryDefinition__id, 
    spEntryDefinition__lastUpdated, 
    spEntryDefinition__profile, 
    spEntryDefinition__query, 
    spEntryDefinition__security, 
    spEntryDefinition__source, 
    spEntryDefinition__tag, 
    spEntryDefinition__text); 
{$ENDIF}

{$IFDEF FHIR_EPISODEOFCARE}
  // Search Parameters for EpisodeOfCare
  TSearchParamsEpisodeOfCare = (
    spEpisodeOfCare__content, 
    spEpisodeOfCare__id, 
    spEpisodeOfCare__lastUpdated, 
    spEpisodeOfCare__profile, 
    spEpisodeOfCare__query, 
    spEpisodeOfCare__security, 
    spEpisodeOfCare__source, 
    spEpisodeOfCare__tag, 
    spEpisodeOfCare__text, 
    spEpisodeOfCare_Caremanager, 
    spEpisodeOfCare_Condition, 
    spEpisodeOfCare_Date, 
    spEpisodeOfCare_Identifier, 
    spEpisodeOfCare_Incomingreferral, 
    spEpisodeOfCare_Organization, 
    spEpisodeOfCare_Patient, 
    spEpisodeOfCare_Status, 
    spEpisodeOfCare_Type); 
{$ENDIF}

{$IFDEF FHIR_EVENTDEFINITION}
  // Search Parameters for EventDefinition
  TSearchParamsEventDefinition = (
    spEventDefinition__content, 
    spEventDefinition__id, 
    spEventDefinition__lastUpdated, 
    spEventDefinition__profile, 
    spEventDefinition__query, 
    spEventDefinition__security, 
    spEventDefinition__source, 
    spEventDefinition__tag, 
    spEventDefinition__text, 
    spEventDefinition_Composedof, 
    spEventDefinition_Date, 
    spEventDefinition_Dependson, 
    spEventDefinition_Derivedfrom, 
    spEventDefinition_Description, 
    spEventDefinition_Effective, 
    spEventDefinition_Identifier, 
    spEventDefinition_Jurisdiction, 
    spEventDefinition_Name, 
    spEventDefinition_Predecessor, 
    spEventDefinition_Publisher, 
    spEventDefinition_Status, 
    spEventDefinition_Successor, 
    spEventDefinition_Title, 
    spEventDefinition_Topic, 
    spEventDefinition_Url, 
    spEventDefinition_Version); 
{$ENDIF}

{$IFDEF FHIR_EXAMPLESCENARIO}
  // Search Parameters for ExampleScenario
  TSearchParamsExampleScenario = (
    spExampleScenario__content, 
    spExampleScenario__id, 
    spExampleScenario__lastUpdated, 
    spExampleScenario__profile, 
    spExampleScenario__query, 
    spExampleScenario__security, 
    spExampleScenario__source, 
    spExampleScenario__tag, 
    spExampleScenario__text, 
    spExampleScenario_Date, 
    spExampleScenario_Identifier, 
    spExampleScenario_Jurisdiction, 
    spExampleScenario_Name, 
    spExampleScenario_Publisher, 
    spExampleScenario_Status, 
    spExampleScenario_Url, 
    spExampleScenario_Version); 
{$ENDIF}

{$IFDEF FHIR_EXPANSIONPROFILE}
  // Search Parameters for ExpansionProfile
  TSearchParamsExpansionProfile = (
    spExpansionProfile__content, 
    spExpansionProfile__id, 
    spExpansionProfile__lastUpdated, 
    spExpansionProfile__profile, 
    spExpansionProfile__query, 
    spExpansionProfile__security, 
    spExpansionProfile__source, 
    spExpansionProfile__tag, 
    spExpansionProfile__text, 
    spExpansionProfile_Date, 
    spExpansionProfile_Description, 
    spExpansionProfile_Identifier, 
    spExpansionProfile_Jurisdiction, 
    spExpansionProfile_Name, 
    spExpansionProfile_Publisher, 
    spExpansionProfile_Status, 
    spExpansionProfile_Url, 
    spExpansionProfile_Version); 
{$ENDIF}

{$IFDEF FHIR_EXPLANATIONOFBENEFIT}
  // Search Parameters for ExplanationOfBenefit
  TSearchParamsExplanationOfBenefit = (
    spExplanationOfBenefit__content, 
    spExplanationOfBenefit__id, 
    spExplanationOfBenefit__lastUpdated, 
    spExplanationOfBenefit__profile, 
    spExplanationOfBenefit__query, 
    spExplanationOfBenefit__security, 
    spExplanationOfBenefit__source, 
    spExplanationOfBenefit__tag, 
    spExplanationOfBenefit__text, 
    spExplanationOfBenefit_Careteam, 
    spExplanationOfBenefit_Claim, 
    spExplanationOfBenefit_Coverage, 
    spExplanationOfBenefit_Created, 
    spExplanationOfBenefit_Disposition, 
    spExplanationOfBenefit_Encounter, 
    spExplanationOfBenefit_Enterer, 
    spExplanationOfBenefit_Facility, 
    spExplanationOfBenefit_Identifier, 
    spExplanationOfBenefit_Patient, 
    spExplanationOfBenefit_Payee, 
    spExplanationOfBenefit_Provider, 
    spExplanationOfBenefit_Status); 
{$ENDIF}

{$IFDEF FHIR_FAMILYMEMBERHISTORY}
  // Search Parameters for FamilyMemberHistory
  TSearchParamsFamilyMemberHistory = (
    spFamilyMemberHistory__content, 
    spFamilyMemberHistory__id, 
    spFamilyMemberHistory__lastUpdated, 
    spFamilyMemberHistory__profile, 
    spFamilyMemberHistory__query, 
    spFamilyMemberHistory__security, 
    spFamilyMemberHistory__source, 
    spFamilyMemberHistory__tag, 
    spFamilyMemberHistory__text, 
    spFamilyMemberHistory_Code, 
    spFamilyMemberHistory_Date, 
    spFamilyMemberHistory_Gender, 
    spFamilyMemberHistory_Identifier, 
    spFamilyMemberHistory_Instantiates, 
    spFamilyMemberHistory_Patient, 
    spFamilyMemberHistory_Relationship, 
    spFamilyMemberHistory_Status); 
{$ENDIF}

{$IFDEF FHIR_FLAG}
  // Search Parameters for Flag
  TSearchParamsFlag = (
    spFlag__content, 
    spFlag__id, 
    spFlag__lastUpdated, 
    spFlag__profile, 
    spFlag__query, 
    spFlag__security, 
    spFlag__source, 
    spFlag__tag, 
    spFlag__text, 
    spFlag_Author, 
    spFlag_Date, 
    spFlag_Encounter, 
    spFlag_Identifier, 
    spFlag_Patient, 
    spFlag_Subject); 
{$ENDIF}

{$IFDEF FHIR_GOAL}
  // Search Parameters for Goal
  TSearchParamsGoal = (
    spGoal__content, 
    spGoal__id, 
    spGoal__lastUpdated, 
    spGoal__profile, 
    spGoal__query, 
    spGoal__security, 
    spGoal__source, 
    spGoal__tag, 
    spGoal__text, 
    spGoal_Category, 
    spGoal_Identifier, 
    spGoal_Patient, 
    spGoal_Startdate, 
    spGoal_Status, 
    spGoal_Subject, 
    spGoal_Targetdate); 
{$ENDIF}

{$IFDEF FHIR_GRAPHDEFINITION}
  // Search Parameters for GraphDefinition
  TSearchParamsGraphDefinition = (
    spGraphDefinition__content, 
    spGraphDefinition__id, 
    spGraphDefinition__lastUpdated, 
    spGraphDefinition__profile, 
    spGraphDefinition__query, 
    spGraphDefinition__security, 
    spGraphDefinition__source, 
    spGraphDefinition__tag, 
    spGraphDefinition__text, 
    spGraphDefinition_Date, 
    spGraphDefinition_Description, 
    spGraphDefinition_Jurisdiction, 
    spGraphDefinition_Name, 
    spGraphDefinition_Publisher, 
    spGraphDefinition_Start, 
    spGraphDefinition_Status, 
    spGraphDefinition_Url, 
    spGraphDefinition_Version); 
{$ENDIF}

{$IFDEF FHIR_GROUP}
  // Search Parameters for Group
  TSearchParamsGroup = (
    spGroup__content, 
    spGroup__id, 
    spGroup__lastUpdated, 
    spGroup__profile, 
    spGroup__query, 
    spGroup__security, 
    spGroup__source, 
    spGroup__tag, 
    spGroup__text, 
    spGroup_Actual, 
    spGroup_Characteristic, 
    spGroup_Characteristicvalue, 
    spGroup_Code, 
    spGroup_Exclude, 
    spGroup_Identifier, 
    spGroup_Member, 
    spGroup_Type, 
    spGroup_Value); 
{$ENDIF}

{$IFDEF FHIR_GUIDANCERESPONSE}
  // Search Parameters for GuidanceResponse
  TSearchParamsGuidanceResponse = (
    spGuidanceResponse__content, 
    spGuidanceResponse__id, 
    spGuidanceResponse__lastUpdated, 
    spGuidanceResponse__profile, 
    spGuidanceResponse__query, 
    spGuidanceResponse__security, 
    spGuidanceResponse__source, 
    spGuidanceResponse__tag, 
    spGuidanceResponse__text, 
    spGuidanceResponse_Identifier, 
    spGuidanceResponse_Patient, 
    spGuidanceResponse_Request, 
    spGuidanceResponse_Subject); 
{$ENDIF}

{$IFDEF FHIR_HEALTHCARESERVICE}
  // Search Parameters for HealthcareService
  TSearchParamsHealthcareService = (
    spHealthcareService__content, 
    spHealthcareService__id, 
    spHealthcareService__lastUpdated, 
    spHealthcareService__profile, 
    spHealthcareService__query, 
    spHealthcareService__security, 
    spHealthcareService__source, 
    spHealthcareService__tag, 
    spHealthcareService__text, 
    spHealthcareService_Active, 
    spHealthcareService_Category, 
    spHealthcareService_Characteristic, 
    spHealthcareService_Endpoint, 
    spHealthcareService_Identifier, 
    spHealthcareService_Location, 
    spHealthcareService_Name, 
    spHealthcareService_Organization, 
    spHealthcareService_Programname, 
    spHealthcareService_Type); 
{$ENDIF}

{$IFDEF FHIR_IMAGINGSTUDY}
  // Search Parameters for ImagingStudy
  TSearchParamsImagingStudy = (
    spImagingStudy__content, 
    spImagingStudy__id, 
    spImagingStudy__lastUpdated, 
    spImagingStudy__profile, 
    spImagingStudy__query, 
    spImagingStudy__security, 
    spImagingStudy__source, 
    spImagingStudy__tag, 
    spImagingStudy__text, 
    spImagingStudy_Accession, 
    spImagingStudy_Basedon, 
    spImagingStudy_Bodysite, 
    spImagingStudy_Context, 
    spImagingStudy_Dicomclass, 
    spImagingStudy_Endpoint, 
    spImagingStudy_Identifier, 
    spImagingStudy_Instid, 
    spImagingStudy_Modality, 
    spImagingStudy_Patient, 
    spImagingStudy_Performer, 
    spImagingStudy_Reason, 
    spImagingStudy_Series, 
    spImagingStudy_Started, 
    spImagingStudy_Status, 
    spImagingStudy_Study, 
    spImagingStudy_Subject); 
{$ENDIF}

{$IFDEF FHIR_IMMUNIZATION}
  // Search Parameters for Immunization
  TSearchParamsImmunization = (
    spImmunization__content, 
    spImmunization__id, 
    spImmunization__lastUpdated, 
    spImmunization__profile, 
    spImmunization__query, 
    spImmunization__security, 
    spImmunization__source, 
    spImmunization__tag, 
    spImmunization__text, 
    spImmunization_Date, 
    spImmunization_Identifier, 
    spImmunization_Location, 
    spImmunization_Lotnumber, 
    spImmunization_Manufacturer, 
    spImmunization_Patient, 
    spImmunization_Performer, 
    spImmunization_Reasoncode, 
    spImmunization_Reasonreference, 
    spImmunization_Status, 
    spImmunization_Statusreason, 
    spImmunization_Vaccinecode); 
{$ENDIF}

{$IFDEF FHIR_IMMUNIZATIONEVALUATION}
  // Search Parameters for ImmunizationEvaluation
  TSearchParamsImmunizationEvaluation = (
    spImmunizationEvaluation__content, 
    spImmunizationEvaluation__id, 
    spImmunizationEvaluation__lastUpdated, 
    spImmunizationEvaluation__profile, 
    spImmunizationEvaluation__query, 
    spImmunizationEvaluation__security, 
    spImmunizationEvaluation__source, 
    spImmunizationEvaluation__tag, 
    spImmunizationEvaluation__text, 
    spImmunizationEvaluation_Date, 
    spImmunizationEvaluation_Dosestatus, 
    spImmunizationEvaluation_Identifier, 
    spImmunizationEvaluation_Immunizationevent, 
    spImmunizationEvaluation_Patient, 
    spImmunizationEvaluation_Status, 
    spImmunizationEvaluation_Targetdisease); 
{$ENDIF}

{$IFDEF FHIR_IMMUNIZATIONRECOMMENDATION}
  // Search Parameters for ImmunizationRecommendation
  TSearchParamsImmunizationRecommendation = (
    spImmunizationRecommendation__content, 
    spImmunizationRecommendation__id, 
    spImmunizationRecommendation__lastUpdated, 
    spImmunizationRecommendation__profile, 
    spImmunizationRecommendation__query, 
    spImmunizationRecommendation__security, 
    spImmunizationRecommendation__source, 
    spImmunizationRecommendation__tag, 
    spImmunizationRecommendation__text, 
    spImmunizationRecommendation_Date, 
    spImmunizationRecommendation_Dosenumber, 
    spImmunizationRecommendation_Dosesequence, 
    spImmunizationRecommendation_Identifier, 
    spImmunizationRecommendation_Information, 
    spImmunizationRecommendation_Patient, 
    spImmunizationRecommendation_Status, 
    spImmunizationRecommendation_Support, 
    spImmunizationRecommendation_Targetdisease, 
    spImmunizationRecommendation_Vaccinetype); 
{$ENDIF}

{$IFDEF FHIR_IMPLEMENTATIONGUIDE}
  // Search Parameters for ImplementationGuide
  TSearchParamsImplementationGuide = (
    spImplementationGuide__content, 
    spImplementationGuide__id, 
    spImplementationGuide__lastUpdated, 
    spImplementationGuide__profile, 
    spImplementationGuide__query, 
    spImplementationGuide__security, 
    spImplementationGuide__source, 
    spImplementationGuide__tag, 
    spImplementationGuide__text, 
    spImplementationGuide_Date, 
    spImplementationGuide_Dependson, 
    spImplementationGuide_Description, 
    spImplementationGuide_Experimental, 
    spImplementationGuide_Jurisdiction, 
    spImplementationGuide_Name, 
    spImplementationGuide_Publisher, 
    spImplementationGuide_Status, 
    spImplementationGuide_Url, 
    spImplementationGuide_Version); 
{$ENDIF}

{$IFDEF FHIR_INVOICE}
  // Search Parameters for Invoice
  TSearchParamsInvoice = (
    spInvoice__content, 
    spInvoice__id, 
    spInvoice__lastUpdated, 
    spInvoice__profile, 
    spInvoice__query, 
    spInvoice__security, 
    spInvoice__source, 
    spInvoice__tag, 
    spInvoice__text, 
    spInvoice_Account, 
    spInvoice_Date, 
    spInvoice_Identifier, 
    spInvoice_Issuer, 
    spInvoice_Participant, 
    spInvoice_Participantrole, 
    spInvoice_Patient, 
    spInvoice_Recipient, 
    spInvoice_Status, 
    spInvoice_Subject, 
    spInvoice_Totalgross, 
    spInvoice_Totalnet, 
    spInvoice_Type); 
{$ENDIF}

{$IFDEF FHIR_ITEMINSTANCE}
  // Search Parameters for ItemInstance
  TSearchParamsItemInstance = (
    spItemInstance__content, 
    spItemInstance__id, 
    spItemInstance__lastUpdated, 
    spItemInstance__profile, 
    spItemInstance__query, 
    spItemInstance__security, 
    spItemInstance__source, 
    spItemInstance__tag, 
    spItemInstance__text, 
    spItemInstance_Subject); 
{$ENDIF}

{$IFDEF FHIR_LIBRARY}
  // Search Parameters for Library
  TSearchParamsLibrary = (
    spLibrary__content, 
    spLibrary__id, 
    spLibrary__lastUpdated, 
    spLibrary__profile, 
    spLibrary__query, 
    spLibrary__security, 
    spLibrary__source, 
    spLibrary__tag, 
    spLibrary__text, 
    spLibrary_Composedof, 
    spLibrary_Date, 
    spLibrary_Dependson, 
    spLibrary_Derivedfrom, 
    spLibrary_Description, 
    spLibrary_Effective, 
    spLibrary_Identifier, 
    spLibrary_Jurisdiction, 
    spLibrary_Name, 
    spLibrary_Predecessor, 
    spLibrary_Publisher, 
    spLibrary_Status, 
    spLibrary_Successor, 
    spLibrary_Title, 
    spLibrary_Topic, 
    spLibrary_Type, 
    spLibrary_Url, 
    spLibrary_Version); 
{$ENDIF}

{$IFDEF FHIR_LINKAGE}
  // Search Parameters for Linkage
  TSearchParamsLinkage = (
    spLinkage__content, 
    spLinkage__id, 
    spLinkage__lastUpdated, 
    spLinkage__profile, 
    spLinkage__query, 
    spLinkage__security, 
    spLinkage__source, 
    spLinkage__tag, 
    spLinkage__text, 
    spLinkage_Author, 
    spLinkage_Item, 
    spLinkage_Source); 
{$ENDIF}

{$IFDEF FHIR_LIST}
  // Search Parameters for List
  TSearchParamsList = (
    spList__content, 
    spList__id, 
    spList__lastUpdated, 
    spList__profile, 
    spList__query, 
    spList__security, 
    spList__source, 
    spList__tag, 
    spList__text, 
    spList_Code, 
    spList_Date, 
    spList_Emptyreason, 
    spList_Encounter, 
    spList_Identifier, 
    spList_Item, 
    spList_Notes, 
    spList_Patient, 
    spList_Source, 
    spList_Status, 
    spList_Subject, 
    spList_Title); 
{$ENDIF}

{$IFDEF FHIR_LOCATION}
  // Search Parameters for Location
  TSearchParamsLocation = (
    spLocation__content, 
    spLocation__id, 
    spLocation__lastUpdated, 
    spLocation__profile, 
    spLocation__query, 
    spLocation__security, 
    spLocation__source, 
    spLocation__tag, 
    spLocation__text, 
    spLocation_Address, 
    spLocation_Addresscity, 
    spLocation_Addresscountry, 
    spLocation_Addresspostalcode, 
    spLocation_Addressstate, 
    spLocation_Addressuse, 
    spLocation_Endpoint, 
    spLocation_Identifier, 
    spLocation_Name, 
    spLocation_Near, 
    spLocation_Neardistance, 
    spLocation_Operationalstatus, 
    spLocation_Organization, 
    spLocation_Partof, 
    spLocation_Status, 
    spLocation_Type); 
{$ENDIF}

{$IFDEF FHIR_MEASURE}
  // Search Parameters for Measure
  TSearchParamsMeasure = (
    spMeasure__content, 
    spMeasure__id, 
    spMeasure__lastUpdated, 
    spMeasure__profile, 
    spMeasure__query, 
    spMeasure__security, 
    spMeasure__source, 
    spMeasure__tag, 
    spMeasure__text, 
    spMeasure_Composedof, 
    spMeasure_Date, 
    spMeasure_Dependson, 
    spMeasure_Derivedfrom, 
    spMeasure_Description, 
    spMeasure_Effective, 
    spMeasure_Identifier, 
    spMeasure_Jurisdiction, 
    spMeasure_Name, 
    spMeasure_Predecessor, 
    spMeasure_Publisher, 
    spMeasure_Status, 
    spMeasure_Successor, 
    spMeasure_Title, 
    spMeasure_Topic, 
    spMeasure_Url, 
    spMeasure_Version); 
{$ENDIF}

{$IFDEF FHIR_MEASUREREPORT}
  // Search Parameters for MeasureReport
  TSearchParamsMeasureReport = (
    spMeasureReport__content, 
    spMeasureReport__id, 
    spMeasureReport__lastUpdated, 
    spMeasureReport__profile, 
    spMeasureReport__query, 
    spMeasureReport__security, 
    spMeasureReport__source, 
    spMeasureReport__tag, 
    spMeasureReport__text, 
    spMeasureReport_Identifier, 
    spMeasureReport_Patient, 
    spMeasureReport_Status, 
    spMeasureReport_Subject); 
{$ENDIF}

{$IFDEF FHIR_MEDIA}
  // Search Parameters for Media
  TSearchParamsMedia = (
    spMedia__content, 
    spMedia__id, 
    spMedia__lastUpdated, 
    spMedia__profile, 
    spMedia__query, 
    spMedia__security, 
    spMedia__source, 
    spMedia__tag, 
    spMedia__text, 
    spMedia_Basedon, 
    spMedia_Context, 
    spMedia_Created, 
    spMedia_Device, 
    spMedia_Identifier, 
    spMedia_Modality, 
    spMedia_Operator, 
    spMedia_Patient, 
    spMedia_Site, 
    spMedia_Status, 
    spMedia_Subject, 
    spMedia_Type, 
    spMedia_View); 
{$ENDIF}

{$IFDEF FHIR_MEDICATION}
  // Search Parameters for Medication
  TSearchParamsMedication = (
    spMedication__content, 
    spMedication__id, 
    spMedication__lastUpdated, 
    spMedication__profile, 
    spMedication__query, 
    spMedication__security, 
    spMedication__source, 
    spMedication__tag, 
    spMedication__text, 
    spMedication_Code, 
    spMedication_Expirationdate, 
    spMedication_Form, 
    spMedication_Ingredient, 
    spMedication_Ingredientcode, 
    spMedication_Lotnumber, 
    spMedication_Manufacturer, 
    spMedication_Serialnumber, 
    spMedication_Status); 
{$ENDIF}

{$IFDEF FHIR_MEDICATIONADMINISTRATION}
  // Search Parameters for MedicationAdministration
  TSearchParamsMedicationAdministration = (
    spMedicationAdministration__content, 
    spMedicationAdministration__id, 
    spMedicationAdministration__lastUpdated, 
    spMedicationAdministration__profile, 
    spMedicationAdministration__query, 
    spMedicationAdministration__security, 
    spMedicationAdministration__source, 
    spMedicationAdministration__tag, 
    spMedicationAdministration__text, 
    spMedicationAdministration_Code, 
    spMedicationAdministration_Context, 
    spMedicationAdministration_Device, 
    spMedicationAdministration_Effectivetime, 
    spMedicationAdministration_Identifier, 
    spMedicationAdministration_Medication, 
    spMedicationAdministration_Patient, 
    spMedicationAdministration_Performer, 
    spMedicationAdministration_Reasongiven, 
    spMedicationAdministration_Reasonnotgiven, 
    spMedicationAdministration_Request, 
    spMedicationAdministration_Status, 
    spMedicationAdministration_Subject); 
{$ENDIF}

{$IFDEF FHIR_MEDICATIONDISPENSE}
  // Search Parameters for MedicationDispense
  TSearchParamsMedicationDispense = (
    spMedicationDispense__content, 
    spMedicationDispense__id, 
    spMedicationDispense__lastUpdated, 
    spMedicationDispense__profile, 
    spMedicationDispense__query, 
    spMedicationDispense__security, 
    spMedicationDispense__source, 
    spMedicationDispense__tag, 
    spMedicationDispense__text, 
    spMedicationDispense_Code, 
    spMedicationDispense_Context, 
    spMedicationDispense_Destination, 
    spMedicationDispense_Identifier, 
    spMedicationDispense_Medication, 
    spMedicationDispense_Patient, 
    spMedicationDispense_Performer, 
    spMedicationDispense_Prescription, 
    spMedicationDispense_Receiver, 
    spMedicationDispense_Responsibleparty, 
    spMedicationDispense_Status, 
    spMedicationDispense_Subject, 
    spMedicationDispense_Type, 
    spMedicationDispense_Whenhandedover, 
    spMedicationDispense_Whenprepared); 
{$ENDIF}

{$IFDEF FHIR_MEDICATIONKNOWLEDGE}
  // Search Parameters for MedicationKnowledge
  TSearchParamsMedicationKnowledge = (
    spMedicationKnowledge__content, 
    spMedicationKnowledge__id, 
    spMedicationKnowledge__lastUpdated, 
    spMedicationKnowledge__profile, 
    spMedicationKnowledge__query, 
    spMedicationKnowledge__security, 
    spMedicationKnowledge__source, 
    spMedicationKnowledge__tag, 
    spMedicationKnowledge__text, 
    spMedicationKnowledge_Classification, 
    spMedicationKnowledge_Classificationtype, 
    spMedicationKnowledge_Code, 
    spMedicationKnowledge_Expirationdate, 
    spMedicationKnowledge_Form, 
    spMedicationKnowledge_Formulary, 
    spMedicationKnowledge_Ingredient, 
    spMedicationKnowledge_Ingredientcode, 
    spMedicationKnowledge_Lotnumber, 
    spMedicationKnowledge_Manufacturer, 
    spMedicationKnowledge_Monitoringprogramname, 
    spMedicationKnowledge_Monitoringprogramtype, 
    spMedicationKnowledge_Monograph, 
    spMedicationKnowledge_Serialnumber, 
    spMedicationKnowledge_Status); 
{$ENDIF}

{$IFDEF FHIR_MEDICATIONREQUEST}
  // Search Parameters for MedicationRequest
  TSearchParamsMedicationRequest = (
    spMedicationRequest__content, 
    spMedicationRequest__id, 
    spMedicationRequest__lastUpdated, 
    spMedicationRequest__profile, 
    spMedicationRequest__query, 
    spMedicationRequest__security, 
    spMedicationRequest__source, 
    spMedicationRequest__tag, 
    spMedicationRequest__text, 
    spMedicationRequest_Authoredon, 
    spMedicationRequest_Category, 
    spMedicationRequest_Code, 
    spMedicationRequest_Context, 
    spMedicationRequest_Date, 
    spMedicationRequest_Identifier, 
    spMedicationRequest_Intendeddispenser, 
    spMedicationRequest_Intendedperformer, 
    spMedicationRequest_Intendedperformertype, 
    spMedicationRequest_Intent, 
    spMedicationRequest_Medication, 
    spMedicationRequest_Patient, 
    spMedicationRequest_Priority, 
    spMedicationRequest_Requester, 
    spMedicationRequest_Status, 
    spMedicationRequest_Subject); 
{$ENDIF}

{$IFDEF FHIR_MEDICATIONSTATEMENT}
  // Search Parameters for MedicationStatement
  TSearchParamsMedicationStatement = (
    spMedicationStatement__content, 
    spMedicationStatement__id, 
    spMedicationStatement__lastUpdated, 
    spMedicationStatement__profile, 
    spMedicationStatement__query, 
    spMedicationStatement__security, 
    spMedicationStatement__source, 
    spMedicationStatement__tag, 
    spMedicationStatement__text, 
    spMedicationStatement_Category, 
    spMedicationStatement_Code, 
    spMedicationStatement_Context, 
    spMedicationStatement_Effective, 
    spMedicationStatement_Identifier, 
    spMedicationStatement_Medication, 
    spMedicationStatement_Partof, 
    spMedicationStatement_Patient, 
    spMedicationStatement_Source, 
    spMedicationStatement_Status, 
    spMedicationStatement_Subject); 
{$ENDIF}

{$IFDEF FHIR_MEDICINALPRODUCT}
  // Search Parameters for MedicinalProduct
  TSearchParamsMedicinalProduct = (
    spMedicinalProduct__content, 
    spMedicinalProduct__id, 
    spMedicinalProduct__lastUpdated, 
    spMedicinalProduct__profile, 
    spMedicinalProduct__query, 
    spMedicinalProduct__security, 
    spMedicinalProduct__source, 
    spMedicinalProduct__tag, 
    spMedicinalProduct__text); 
{$ENDIF}

{$IFDEF FHIR_MEDICINALPRODUCTAUTHORIZATION}
  // Search Parameters for MedicinalProductAuthorization
  TSearchParamsMedicinalProductAuthorization = (
    spMedicinalProductAuthorization__content, 
    spMedicinalProductAuthorization__id, 
    spMedicinalProductAuthorization__lastUpdated, 
    spMedicinalProductAuthorization__profile, 
    spMedicinalProductAuthorization__query, 
    spMedicinalProductAuthorization__security, 
    spMedicinalProductAuthorization__source, 
    spMedicinalProductAuthorization__tag, 
    spMedicinalProductAuthorization__text); 
{$ENDIF}

{$IFDEF FHIR_MEDICINALPRODUCTCLINICALS}
  // Search Parameters for MedicinalProductClinicals
  TSearchParamsMedicinalProductClinicals = (
    spMedicinalProductClinicals__content, 
    spMedicinalProductClinicals__id, 
    spMedicinalProductClinicals__lastUpdated, 
    spMedicinalProductClinicals__profile, 
    spMedicinalProductClinicals__query, 
    spMedicinalProductClinicals__security, 
    spMedicinalProductClinicals__source, 
    spMedicinalProductClinicals__tag, 
    spMedicinalProductClinicals__text); 
{$ENDIF}

{$IFDEF FHIR_MEDICINALPRODUCTDEVICESPEC}
  // Search Parameters for MedicinalProductDeviceSpec
  TSearchParamsMedicinalProductDeviceSpec = (
    spMedicinalProductDeviceSpec__content, 
    spMedicinalProductDeviceSpec__id, 
    spMedicinalProductDeviceSpec__lastUpdated, 
    spMedicinalProductDeviceSpec__profile, 
    spMedicinalProductDeviceSpec__query, 
    spMedicinalProductDeviceSpec__security, 
    spMedicinalProductDeviceSpec__source, 
    spMedicinalProductDeviceSpec__tag, 
    spMedicinalProductDeviceSpec__text); 
{$ENDIF}

{$IFDEF FHIR_MEDICINALPRODUCTINGREDIENT}
  // Search Parameters for MedicinalProductIngredient
  TSearchParamsMedicinalProductIngredient = (
    spMedicinalProductIngredient__content, 
    spMedicinalProductIngredient__id, 
    spMedicinalProductIngredient__lastUpdated, 
    spMedicinalProductIngredient__profile, 
    spMedicinalProductIngredient__query, 
    spMedicinalProductIngredient__security, 
    spMedicinalProductIngredient__source, 
    spMedicinalProductIngredient__tag, 
    spMedicinalProductIngredient__text); 
{$ENDIF}

{$IFDEF FHIR_MEDICINALPRODUCTPACKAGED}
  // Search Parameters for MedicinalProductPackaged
  TSearchParamsMedicinalProductPackaged = (
    spMedicinalProductPackaged__content, 
    spMedicinalProductPackaged__id, 
    spMedicinalProductPackaged__lastUpdated, 
    spMedicinalProductPackaged__profile, 
    spMedicinalProductPackaged__query, 
    spMedicinalProductPackaged__security, 
    spMedicinalProductPackaged__source, 
    spMedicinalProductPackaged__tag, 
    spMedicinalProductPackaged__text); 
{$ENDIF}

{$IFDEF FHIR_MEDICINALPRODUCTPHARMACEUTICAL}
  // Search Parameters for MedicinalProductPharmaceutical
  TSearchParamsMedicinalProductPharmaceutical = (
    spMedicinalProductPharmaceutical__content, 
    spMedicinalProductPharmaceutical__id, 
    spMedicinalProductPharmaceutical__lastUpdated, 
    spMedicinalProductPharmaceutical__profile, 
    spMedicinalProductPharmaceutical__query, 
    spMedicinalProductPharmaceutical__security, 
    spMedicinalProductPharmaceutical__source, 
    spMedicinalProductPharmaceutical__tag, 
    spMedicinalProductPharmaceutical__text); 
{$ENDIF}

{$IFDEF FHIR_MESSAGEDEFINITION}
  // Search Parameters for MessageDefinition
  TSearchParamsMessageDefinition = (
    spMessageDefinition__content, 
    spMessageDefinition__id, 
    spMessageDefinition__lastUpdated, 
    spMessageDefinition__profile, 
    spMessageDefinition__query, 
    spMessageDefinition__security, 
    spMessageDefinition__source, 
    spMessageDefinition__tag, 
    spMessageDefinition__text, 
    spMessageDefinition_Category, 
    spMessageDefinition_Date, 
    spMessageDefinition_Description, 
    spMessageDefinition_Event, 
    spMessageDefinition_Focus, 
    spMessageDefinition_Identifier, 
    spMessageDefinition_Jurisdiction, 
    spMessageDefinition_Name, 
    spMessageDefinition_Publisher, 
    spMessageDefinition_Status, 
    spMessageDefinition_Title, 
    spMessageDefinition_Url, 
    spMessageDefinition_Version); 
{$ENDIF}

{$IFDEF FHIR_MESSAGEHEADER}
  // Search Parameters for MessageHeader
  TSearchParamsMessageHeader = (
    spMessageHeader__content, 
    spMessageHeader__id, 
    spMessageHeader__lastUpdated, 
    spMessageHeader__profile, 
    spMessageHeader__query, 
    spMessageHeader__security, 
    spMessageHeader__source, 
    spMessageHeader__tag, 
    spMessageHeader__text, 
    spMessageHeader_Author, 
    spMessageHeader_Code, 
    spMessageHeader_Destination, 
    spMessageHeader_Destinationuri, 
    spMessageHeader_Enterer, 
    spMessageHeader_Event, 
    spMessageHeader_Focus, 
    spMessageHeader_Receiver, 
    spMessageHeader_Responseid, 
    spMessageHeader_Responsible, 
    spMessageHeader_Sender, 
    spMessageHeader_Source, 
    spMessageHeader_Sourceuri, 
    spMessageHeader_Target); 
{$ENDIF}

{$IFDEF FHIR_NAMINGSYSTEM}
  // Search Parameters for NamingSystem
  TSearchParamsNamingSystem = (
    spNamingSystem__content, 
    spNamingSystem__id, 
    spNamingSystem__lastUpdated, 
    spNamingSystem__profile, 
    spNamingSystem__query, 
    spNamingSystem__security, 
    spNamingSystem__source, 
    spNamingSystem__tag, 
    spNamingSystem__text, 
    spNamingSystem_Contact, 
    spNamingSystem_Date, 
    spNamingSystem_Description, 
    spNamingSystem_Idtype, 
    spNamingSystem_Jurisdiction, 
    spNamingSystem_Kind, 
    spNamingSystem_Name, 
    spNamingSystem_Period, 
    spNamingSystem_Publisher, 
    spNamingSystem_Responsible, 
    spNamingSystem_Status, 
    spNamingSystem_Telecom, 
    spNamingSystem_Type, 
    spNamingSystem_Value); 
{$ENDIF}

{$IFDEF FHIR_NUTRITIONORDER}
  // Search Parameters for NutritionOrder
  TSearchParamsNutritionOrder = (
    spNutritionOrder__content, 
    spNutritionOrder__id, 
    spNutritionOrder__lastUpdated, 
    spNutritionOrder__profile, 
    spNutritionOrder__query, 
    spNutritionOrder__security, 
    spNutritionOrder__source, 
    spNutritionOrder__tag, 
    spNutritionOrder__text, 
    spNutritionOrder_Additive, 
    spNutritionOrder_Context, 
    spNutritionOrder_Datetime, 
    spNutritionOrder_Formula, 
    spNutritionOrder_Identifier, 
    spNutritionOrder_Oraldiet, 
    spNutritionOrder_Patient, 
    spNutritionOrder_Provider, 
    spNutritionOrder_Status, 
    spNutritionOrder_Supplement); 
{$ENDIF}

{$IFDEF FHIR_OBSERVATION}
  // Search Parameters for Observation
  TSearchParamsObservation = (
    spObservation__content, 
    spObservation__id, 
    spObservation__lastUpdated, 
    spObservation__profile, 
    spObservation__query, 
    spObservation__security, 
    spObservation__source, 
    spObservation__tag, 
    spObservation__text, 
    spObservation_Basedon, 
    spObservation_Category, 
    spObservation_Code, 
    spObservation_Codevalueconcept, 
    spObservation_Codevaluedate, 
    spObservation_Codevaluequantity, 
    spObservation_Codevaluestring, 
    spObservation_Combocode, 
    spObservation_Combocodevalueconcept, 
    spObservation_Combocodevaluequantity, 
    spObservation_Combodataabsentreason, 
    spObservation_Combovalueconcept, 
    spObservation_Combovaluequantity, 
    spObservation_Componentcode, 
    spObservation_Componentcodevalueconcept, 
    spObservation_Componentcodevaluequantity, 
    spObservation_Componentdataabsentreason, 
    spObservation_Componentvalueconcept, 
    spObservation_Componentvaluequantity, 
    spObservation_Context, 
    spObservation_Dataabsentreason, 
    spObservation_Date, 
    spObservation_Derivedfrom, 
    spObservation_Device, 
    spObservation_Dnavariant, 
    spObservation_Encounter, 
    spObservation_Focus, 
    spObservation_Genednavariant, 
    spObservation_Geneidentifier, 
    spObservation_Hasmember, 
    spObservation_Identifier, 
    spObservation_Method, 
    spObservation_Partof, 
    spObservation_Patient, 
    spObservation_Performer, 
    spObservation_Specimen, 
    spObservation_Status, 
    spObservation_Subject, 
    spObservation_Valueconcept, 
    spObservation_Valuedate, 
    spObservation_Valuequantity, 
    spObservation_Valuestring); 
{$ENDIF}

{$IFDEF FHIR_OBSERVATIONDEFINITION}
  // Search Parameters for ObservationDefinition
  TSearchParamsObservationDefinition = (
    spObservationDefinition__content, 
    spObservationDefinition__id, 
    spObservationDefinition__lastUpdated, 
    spObservationDefinition__profile, 
    spObservationDefinition__query, 
    spObservationDefinition__security, 
    spObservationDefinition__source, 
    spObservationDefinition__tag, 
    spObservationDefinition__text); 
{$ENDIF}

{$IFDEF FHIR_OCCUPATIONALDATA}
  // Search Parameters for OccupationalData
  TSearchParamsOccupationalData = (
    spOccupationalData__content, 
    spOccupationalData__id, 
    spOccupationalData__lastUpdated, 
    spOccupationalData__profile, 
    spOccupationalData__query, 
    spOccupationalData__security, 
    spOccupationalData__source, 
    spOccupationalData__tag, 
    spOccupationalData__text, 
    spOccupationalData_Date, 
    spOccupationalData_Identifier, 
    spOccupationalData_Informant, 
    spOccupationalData_Recorder, 
    spOccupationalData_Status, 
    spOccupationalData_Subject); 
{$ENDIF}

{$IFDEF FHIR_OPERATIONDEFINITION}
  // Search Parameters for OperationDefinition
  TSearchParamsOperationDefinition = (
    spOperationDefinition__content, 
    spOperationDefinition__id, 
    spOperationDefinition__lastUpdated, 
    spOperationDefinition__profile, 
    spOperationDefinition__query, 
    spOperationDefinition__security, 
    spOperationDefinition__source, 
    spOperationDefinition__tag, 
    spOperationDefinition__text, 
    spOperationDefinition_Base, 
    spOperationDefinition_Code, 
    spOperationDefinition_Contexttype, 
    spOperationDefinition_Date, 
    spOperationDefinition_Description, 
    spOperationDefinition_Inputprofile, 
    spOperationDefinition_Instance, 
    spOperationDefinition_Jurisdiction, 
    spOperationDefinition_Kind, 
    spOperationDefinition_Name, 
    spOperationDefinition_Outputprofile, 
    spOperationDefinition_Publisher, 
    spOperationDefinition_Status, 
    spOperationDefinition_System, 
    spOperationDefinition_Type, 
    spOperationDefinition_Url, 
    spOperationDefinition_Version); 
{$ENDIF}

{$IFDEF FHIR_OPERATIONOUTCOME}
  // Search Parameters for OperationOutcome
  TSearchParamsOperationOutcome = (
    spOperationOutcome__content, 
    spOperationOutcome__id, 
    spOperationOutcome__lastUpdated, 
    spOperationOutcome__profile, 
    spOperationOutcome__query, 
    spOperationOutcome__security, 
    spOperationOutcome__source, 
    spOperationOutcome__tag, 
    spOperationOutcome__text); 
{$ENDIF}

{$IFDEF FHIR_ORGANIZATION}
  // Search Parameters for Organization
  TSearchParamsOrganization = (
    spOrganization__content, 
    spOrganization__id, 
    spOrganization__lastUpdated, 
    spOrganization__profile, 
    spOrganization__query, 
    spOrganization__security, 
    spOrganization__source, 
    spOrganization__tag, 
    spOrganization__text, 
    spOrganization_Active, 
    spOrganization_Address, 
    spOrganization_Addresscity, 
    spOrganization_Addresscountry, 
    spOrganization_Addresspostalcode, 
    spOrganization_Addressstate, 
    spOrganization_Addressuse, 
    spOrganization_Endpoint, 
    spOrganization_Identifier, 
    spOrganization_Name, 
    spOrganization_Partof, 
    spOrganization_Phonetic, 
    spOrganization_Type); 
{$ENDIF}

{$IFDEF FHIR_ORGANIZATIONROLE}
  // Search Parameters for OrganizationRole
  TSearchParamsOrganizationRole = (
    spOrganizationRole__content, 
    spOrganizationRole__id, 
    spOrganizationRole__lastUpdated, 
    spOrganizationRole__profile, 
    spOrganizationRole__query, 
    spOrganizationRole__security, 
    spOrganizationRole__source, 
    spOrganizationRole__tag, 
    spOrganizationRole__text, 
    spOrganizationRole_Active, 
    spOrganizationRole_Date, 
    spOrganizationRole_Email, 
    spOrganizationRole_Endpoint, 
    spOrganizationRole_Identifier, 
    spOrganizationRole_Location, 
    spOrganizationRole_Network, 
    spOrganizationRole_Participatingorganization, 
    spOrganizationRole_Phone, 
    spOrganizationRole_Primaryorganization, 
    spOrganizationRole_Role, 
    spOrganizationRole_Service, 
    spOrganizationRole_Specialty, 
    spOrganizationRole_Telecom); 
{$ENDIF}

{$IFDEF FHIR_PATIENT}
  // Search Parameters for Patient
  TSearchParamsPatient = (
    spPatient__content, 
    spPatient__id, 
    spPatient__lastUpdated, 
    spPatient__profile, 
    spPatient__query, 
    spPatient__security, 
    spPatient__source, 
    spPatient__tag, 
    spPatient__text, 
    spPatient_Active, 
    spPatient_Address, 
    spPatient_Addresscity, 
    spPatient_Addresscountry, 
    spPatient_Addresspostalcode, 
    spPatient_Addressstate, 
    spPatient_Addressuse, 
    spPatient_Birthdate, 
    spPatient_Deathdate, 
    spPatient_Deceased, 
    spPatient_Email, 
    spPatient_Family, 
    spPatient_Gender, 
    spPatient_Generalpractitioner, 
    spPatient_Given, 
    spPatient_Identifier, 
    spPatient_Language, 
    spPatient_Link, 
    spPatient_Name, 
    spPatient_Organization, 
    spPatient_Phone, 
    spPatient_Phonetic, 
    spPatient_Telecom); 
{$ENDIF}

{$IFDEF FHIR_PAYMENTNOTICE}
  // Search Parameters for PaymentNotice
  TSearchParamsPaymentNotice = (
    spPaymentNotice__content, 
    spPaymentNotice__id, 
    spPaymentNotice__lastUpdated, 
    spPaymentNotice__profile, 
    spPaymentNotice__query, 
    spPaymentNotice__security, 
    spPaymentNotice__source, 
    spPaymentNotice__tag, 
    spPaymentNotice__text, 
    spPaymentNotice_Created, 
    spPaymentNotice_Identifier, 
    spPaymentNotice_Paymentstatus, 
    spPaymentNotice_Provider, 
    spPaymentNotice_Request, 
    spPaymentNotice_Response, 
    spPaymentNotice_Status, 
    spPaymentNotice_Statusdate); 
{$ENDIF}

{$IFDEF FHIR_PAYMENTRECONCILIATION}
  // Search Parameters for PaymentReconciliation
  TSearchParamsPaymentReconciliation = (
    spPaymentReconciliation__content, 
    spPaymentReconciliation__id, 
    spPaymentReconciliation__lastUpdated, 
    spPaymentReconciliation__profile, 
    spPaymentReconciliation__query, 
    spPaymentReconciliation__security, 
    spPaymentReconciliation__source, 
    spPaymentReconciliation__tag, 
    spPaymentReconciliation__text, 
    spPaymentReconciliation_Created, 
    spPaymentReconciliation_Disposition, 
    spPaymentReconciliation_Identifier, 
    spPaymentReconciliation_Organization, 
    spPaymentReconciliation_Outcome, 
    spPaymentReconciliation_Request, 
    spPaymentReconciliation_Requestprovider, 
    spPaymentReconciliation_Status); 
{$ENDIF}

{$IFDEF FHIR_PERSON}
  // Search Parameters for Person
  TSearchParamsPerson = (
    spPerson__content, 
    spPerson__id, 
    spPerson__lastUpdated, 
    spPerson__profile, 
    spPerson__query, 
    spPerson__security, 
    spPerson__source, 
    spPerson__tag, 
    spPerson__text, 
    spPerson_Address, 
    spPerson_Addresscity, 
    spPerson_Addresscountry, 
    spPerson_Addresspostalcode, 
    spPerson_Addressstate, 
    spPerson_Addressuse, 
    spPerson_Birthdate, 
    spPerson_Email, 
    spPerson_Gender, 
    spPerson_Identifier, 
    spPerson_Link, 
    spPerson_Name, 
    spPerson_Organization, 
    spPerson_Patient, 
    spPerson_Phone, 
    spPerson_Phonetic, 
    spPerson_Practitioner, 
    spPerson_Relatedperson, 
    spPerson_Telecom); 
{$ENDIF}

{$IFDEF FHIR_PLANDEFINITION}
  // Search Parameters for PlanDefinition
  TSearchParamsPlanDefinition = (
    spPlanDefinition__content, 
    spPlanDefinition__id, 
    spPlanDefinition__lastUpdated, 
    spPlanDefinition__profile, 
    spPlanDefinition__query, 
    spPlanDefinition__security, 
    spPlanDefinition__source, 
    spPlanDefinition__tag, 
    spPlanDefinition__text, 
    spPlanDefinition_Composedof, 
    spPlanDefinition_Date, 
    spPlanDefinition_Definition, 
    spPlanDefinition_Dependson, 
    spPlanDefinition_Derivedfrom, 
    spPlanDefinition_Description, 
    spPlanDefinition_Effective, 
    spPlanDefinition_Identifier, 
    spPlanDefinition_Jurisdiction, 
    spPlanDefinition_Name, 
    spPlanDefinition_Predecessor, 
    spPlanDefinition_Publisher, 
    spPlanDefinition_Status, 
    spPlanDefinition_Successor, 
    spPlanDefinition_Title, 
    spPlanDefinition_Topic, 
    spPlanDefinition_Type, 
    spPlanDefinition_Url, 
    spPlanDefinition_Version); 
{$ENDIF}

{$IFDEF FHIR_PRACTITIONER}
  // Search Parameters for Practitioner
  TSearchParamsPractitioner = (
    spPractitioner__content, 
    spPractitioner__id, 
    spPractitioner__lastUpdated, 
    spPractitioner__profile, 
    spPractitioner__query, 
    spPractitioner__security, 
    spPractitioner__source, 
    spPractitioner__tag, 
    spPractitioner__text, 
    spPractitioner_Active, 
    spPractitioner_Address, 
    spPractitioner_Addresscity, 
    spPractitioner_Addresscountry, 
    spPractitioner_Addresspostalcode, 
    spPractitioner_Addressstate, 
    spPractitioner_Addressuse, 
    spPractitioner_Communication, 
    spPractitioner_Email, 
    spPractitioner_Family, 
    spPractitioner_Gender, 
    spPractitioner_Given, 
    spPractitioner_Identifier, 
    spPractitioner_Name, 
    spPractitioner_Phone, 
    spPractitioner_Phonetic, 
    spPractitioner_Telecom); 
{$ENDIF}

{$IFDEF FHIR_PRACTITIONERROLE}
  // Search Parameters for PractitionerRole
  TSearchParamsPractitionerRole = (
    spPractitionerRole__content, 
    spPractitionerRole__id, 
    spPractitionerRole__lastUpdated, 
    spPractitionerRole__profile, 
    spPractitionerRole__query, 
    spPractitionerRole__security, 
    spPractitionerRole__source, 
    spPractitionerRole__tag, 
    spPractitionerRole__text, 
    spPractitionerRole_Active, 
    spPractitionerRole_Date, 
    spPractitionerRole_Email, 
    spPractitionerRole_Endpoint, 
    spPractitionerRole_Identifier, 
    spPractitionerRole_Location, 
    spPractitionerRole_Organization, 
    spPractitionerRole_Phone, 
    spPractitionerRole_Practitioner, 
    spPractitionerRole_Role, 
    spPractitionerRole_Service, 
    spPractitionerRole_Specialty, 
    spPractitionerRole_Telecom); 
{$ENDIF}

{$IFDEF FHIR_PROCEDURE}
  // Search Parameters for Procedure
  TSearchParamsProcedure = (
    spProcedure__content, 
    spProcedure__id, 
    spProcedure__lastUpdated, 
    spProcedure__profile, 
    spProcedure__query, 
    spProcedure__security, 
    spProcedure__source, 
    spProcedure__tag, 
    spProcedure__text, 
    spProcedure_Basedon, 
    spProcedure_Category, 
    spProcedure_Code, 
    spProcedure_Context, 
    spProcedure_Date, 
    spProcedure_Encounter, 
    spProcedure_Identifier, 
    spProcedure_Instantiates, 
    spProcedure_Location, 
    spProcedure_Partof, 
    spProcedure_Patient, 
    spProcedure_Performer, 
    spProcedure_Status, 
    spProcedure_Subject); 
{$ENDIF}

{$IFDEF FHIR_PROCESSREQUEST}
  // Search Parameters for ProcessRequest
  TSearchParamsProcessRequest = (
    spProcessRequest__content, 
    spProcessRequest__id, 
    spProcessRequest__lastUpdated, 
    spProcessRequest__profile, 
    spProcessRequest__query, 
    spProcessRequest__security, 
    spProcessRequest__source, 
    spProcessRequest__tag, 
    spProcessRequest__text, 
    spProcessRequest_Action, 
    spProcessRequest_Identifier, 
    spProcessRequest_Provider, 
    spProcessRequest_Status); 
{$ENDIF}

{$IFDEF FHIR_PROCESSRESPONSE}
  // Search Parameters for ProcessResponse
  TSearchParamsProcessResponse = (
    spProcessResponse__content, 
    spProcessResponse__id, 
    spProcessResponse__lastUpdated, 
    spProcessResponse__profile, 
    spProcessResponse__query, 
    spProcessResponse__security, 
    spProcessResponse__source, 
    spProcessResponse__tag, 
    spProcessResponse__text, 
    spProcessResponse_Identifier, 
    spProcessResponse_Organization, 
    spProcessResponse_Request, 
    spProcessResponse_Requestprovider, 
    spProcessResponse_Status); 
{$ENDIF}

{$IFDEF FHIR_PRODUCTPLAN}
  // Search Parameters for ProductPlan
  TSearchParamsProductPlan = (
    spProductPlan__content, 
    spProductPlan__id, 
    spProductPlan__lastUpdated, 
    spProductPlan__profile, 
    spProductPlan__query, 
    spProductPlan__security, 
    spProductPlan__source, 
    spProductPlan__tag, 
    spProductPlan__text, 
    spProductPlan_Address, 
    spProductPlan_Addresscity, 
    spProductPlan_Addresscountry, 
    spProductPlan_Addresspostalcode, 
    spProductPlan_Addressstate, 
    spProductPlan_Addressuse, 
    spProductPlan_Administeredby, 
    spProductPlan_Endpoint, 
    spProductPlan_Identifier, 
    spProductPlan_Name, 
    spProductPlan_Ownedby, 
    spProductPlan_Phonetic, 
    spProductPlan_Status, 
    spProductPlan_Type); 
{$ENDIF}

{$IFDEF FHIR_PROVENANCE}
  // Search Parameters for Provenance
  TSearchParamsProvenance = (
    spProvenance__content, 
    spProvenance__id, 
    spProvenance__lastUpdated, 
    spProvenance__profile, 
    spProvenance__query, 
    spProvenance__security, 
    spProvenance__source, 
    spProvenance__tag, 
    spProvenance__text, 
    spProvenance_Agent, 
    spProvenance_Agentrole, 
    spProvenance_Agenttype, 
    spProvenance_Entityid, 
    spProvenance_Entityref, 
    spProvenance_Location, 
    spProvenance_Patient, 
    spProvenance_Recorded, 
    spProvenance_Signaturetype, 
    spProvenance_Target, 
    spProvenance_When); 
{$ENDIF}

{$IFDEF FHIR_QUESTIONNAIRE}
  // Search Parameters for Questionnaire
  TSearchParamsQuestionnaire = (
    spQuestionnaire__content, 
    spQuestionnaire__id, 
    spQuestionnaire__lastUpdated, 
    spQuestionnaire__profile, 
    spQuestionnaire__query, 
    spQuestionnaire__security, 
    spQuestionnaire__source, 
    spQuestionnaire__tag, 
    spQuestionnaire__text, 
    spQuestionnaire_Code, 
    spQuestionnaire_Contexttype, 
    spQuestionnaire_Date, 
    spQuestionnaire_Definition, 
    spQuestionnaire_Description, 
    spQuestionnaire_Effective, 
    spQuestionnaire_Identifier, 
    spQuestionnaire_Jurisdiction, 
    spQuestionnaire_Name, 
    spQuestionnaire_Publisher, 
    spQuestionnaire_Status, 
    spQuestionnaire_Subjecttype, 
    spQuestionnaire_Title, 
    spQuestionnaire_Url, 
    spQuestionnaire_Version); 
{$ENDIF}

{$IFDEF FHIR_QUESTIONNAIRERESPONSE}
  // Search Parameters for QuestionnaireResponse
  TSearchParamsQuestionnaireResponse = (
    spQuestionnaireResponse__content, 
    spQuestionnaireResponse__id, 
    spQuestionnaireResponse__lastUpdated, 
    spQuestionnaireResponse__profile, 
    spQuestionnaireResponse__query, 
    spQuestionnaireResponse__security, 
    spQuestionnaireResponse__source, 
    spQuestionnaireResponse__tag, 
    spQuestionnaireResponse__text, 
    spQuestionnaireResponse_Author, 
    spQuestionnaireResponse_Authored, 
    spQuestionnaireResponse_Basedon, 
    spQuestionnaireResponse_Context, 
    spQuestionnaireResponse_Identifier, 
    spQuestionnaireResponse_Partof, 
    spQuestionnaireResponse_Patient, 
    spQuestionnaireResponse_Questionnaire, 
    spQuestionnaireResponse_Source, 
    spQuestionnaireResponse_Status, 
    spQuestionnaireResponse_Subject); 
{$ENDIF}

{$IFDEF FHIR_RELATEDPERSON}
  // Search Parameters for RelatedPerson
  TSearchParamsRelatedPerson = (
    spRelatedPerson__content, 
    spRelatedPerson__id, 
    spRelatedPerson__lastUpdated, 
    spRelatedPerson__profile, 
    spRelatedPerson__query, 
    spRelatedPerson__security, 
    spRelatedPerson__source, 
    spRelatedPerson__tag, 
    spRelatedPerson__text, 
    spRelatedPerson_Active, 
    spRelatedPerson_Address, 
    spRelatedPerson_Addresscity, 
    spRelatedPerson_Addresscountry, 
    spRelatedPerson_Addresspostalcode, 
    spRelatedPerson_Addressstate, 
    spRelatedPerson_Addressuse, 
    spRelatedPerson_Birthdate, 
    spRelatedPerson_Email, 
    spRelatedPerson_Gender, 
    spRelatedPerson_Identifier, 
    spRelatedPerson_Name, 
    spRelatedPerson_Patient, 
    spRelatedPerson_Phone, 
    spRelatedPerson_Phonetic, 
    spRelatedPerson_Telecom); 
{$ENDIF}

{$IFDEF FHIR_REQUESTGROUP}
  // Search Parameters for RequestGroup
  TSearchParamsRequestGroup = (
    spRequestGroup__content, 
    spRequestGroup__id, 
    spRequestGroup__lastUpdated, 
    spRequestGroup__profile, 
    spRequestGroup__query, 
    spRequestGroup__security, 
    spRequestGroup__source, 
    spRequestGroup__tag, 
    spRequestGroup__text, 
    spRequestGroup_Author, 
    spRequestGroup_Authored, 
    spRequestGroup_Code, 
    spRequestGroup_Context, 
    spRequestGroup_Encounter, 
    spRequestGroup_Groupidentifier, 
    spRequestGroup_Identifier, 
    spRequestGroup_Instantiatescanonical, 
    spRequestGroup_Instantiatesuri, 
    spRequestGroup_Intent, 
    spRequestGroup_Participant, 
    spRequestGroup_Patient, 
    spRequestGroup_Priority, 
    spRequestGroup_Status, 
    spRequestGroup_Subject); 
{$ENDIF}

{$IFDEF FHIR_RESEARCHSTUDY}
  // Search Parameters for ResearchStudy
  TSearchParamsResearchStudy = (
    spResearchStudy__content, 
    spResearchStudy__id, 
    spResearchStudy__lastUpdated, 
    spResearchStudy__profile, 
    spResearchStudy__query, 
    spResearchStudy__security, 
    spResearchStudy__source, 
    spResearchStudy__tag, 
    spResearchStudy__text, 
    spResearchStudy_Category, 
    spResearchStudy_Date, 
    spResearchStudy_Focus, 
    spResearchStudy_Identifier, 
    spResearchStudy_Keyword, 
    spResearchStudy_Location, 
    spResearchStudy_Partof, 
    spResearchStudy_Principalinvestigator, 
    spResearchStudy_Protocol, 
    spResearchStudy_Site, 
    spResearchStudy_Sponsor, 
    spResearchStudy_Status, 
    spResearchStudy_Title); 
{$ENDIF}

{$IFDEF FHIR_RESEARCHSUBJECT}
  // Search Parameters for ResearchSubject
  TSearchParamsResearchSubject = (
    spResearchSubject__content, 
    spResearchSubject__id, 
    spResearchSubject__lastUpdated, 
    spResearchSubject__profile, 
    spResearchSubject__query, 
    spResearchSubject__security, 
    spResearchSubject__source, 
    spResearchSubject__tag, 
    spResearchSubject__text, 
    spResearchSubject_Date, 
    spResearchSubject_Identifier, 
    spResearchSubject_Individual, 
    spResearchSubject_Patient, 
    spResearchSubject_Status, 
    spResearchSubject_Study); 
{$ENDIF}

{$IFDEF FHIR_RISKASSESSMENT}
  // Search Parameters for RiskAssessment
  TSearchParamsRiskAssessment = (
    spRiskAssessment__content, 
    spRiskAssessment__id, 
    spRiskAssessment__lastUpdated, 
    spRiskAssessment__profile, 
    spRiskAssessment__query, 
    spRiskAssessment__security, 
    spRiskAssessment__source, 
    spRiskAssessment__tag, 
    spRiskAssessment__text, 
    spRiskAssessment_Condition, 
    spRiskAssessment_Date, 
    spRiskAssessment_Encounter, 
    spRiskAssessment_Identifier, 
    spRiskAssessment_Method, 
    spRiskAssessment_Patient, 
    spRiskAssessment_Performer, 
    spRiskAssessment_Probability, 
    spRiskAssessment_Risk, 
    spRiskAssessment_Subject); 
{$ENDIF}

{$IFDEF FHIR_SCHEDULE}
  // Search Parameters for Schedule
  TSearchParamsSchedule = (
    spSchedule__content, 
    spSchedule__id, 
    spSchedule__lastUpdated, 
    spSchedule__profile, 
    spSchedule__query, 
    spSchedule__security, 
    spSchedule__source, 
    spSchedule__tag, 
    spSchedule__text, 
    spSchedule_Active, 
    spSchedule_Actor, 
    spSchedule_Date, 
    spSchedule_Identifier, 
    spSchedule_Type); 
{$ENDIF}

{$IFDEF FHIR_SEARCHPARAMETER}
  // Search Parameters for SearchParameter
  TSearchParamsSearchParameter = (
    spSearchParameter__content, 
    spSearchParameter__id, 
    spSearchParameter__lastUpdated, 
    spSearchParameter__profile, 
    spSearchParameter__query, 
    spSearchParameter__security, 
    spSearchParameter__source, 
    spSearchParameter__tag, 
    spSearchParameter__text, 
    spSearchParameter_Base, 
    spSearchParameter_Code, 
    spSearchParameter_Component, 
    spSearchParameter_Contexttype, 
    spSearchParameter_Date, 
    spSearchParameter_Derivedfrom, 
    spSearchParameter_Description, 
    spSearchParameter_Jurisdiction, 
    spSearchParameter_Name, 
    spSearchParameter_Publisher, 
    spSearchParameter_Status, 
    spSearchParameter_Target, 
    spSearchParameter_Type, 
    spSearchParameter_Url, 
    spSearchParameter_Version); 
{$ENDIF}

{$IFDEF FHIR_SEQUENCE}
  // Search Parameters for Sequence
  TSearchParamsSequence = (
    spSequence__content, 
    spSequence__id, 
    spSequence__lastUpdated, 
    spSequence__profile, 
    spSequence__query, 
    spSequence__security, 
    spSequence__source, 
    spSequence__tag, 
    spSequence__text, 
    spSequence_Chromosome, 
    spSequence_Coordinate, 
    spSequence_End, 
    spSequence_Identifier, 
    spSequence_Patient, 
    spSequence_Start, 
    spSequence_Type); 
{$ENDIF}

{$IFDEF FHIR_SERVICEREQUEST}
  // Search Parameters for ServiceRequest
  TSearchParamsServiceRequest = (
    spServiceRequest__content, 
    spServiceRequest__id, 
    spServiceRequest__lastUpdated, 
    spServiceRequest__profile, 
    spServiceRequest__query, 
    spServiceRequest__security, 
    spServiceRequest__source, 
    spServiceRequest__tag, 
    spServiceRequest__text, 
    spServiceRequest_Authored, 
    spServiceRequest_Basedon, 
    spServiceRequest_Bodysite, 
    spServiceRequest_Category, 
    spServiceRequest_Code, 
    spServiceRequest_Context, 
    spServiceRequest_Encounter, 
    spServiceRequest_Identifier, 
    spServiceRequest_Instantiates, 
    spServiceRequest_Intent, 
    spServiceRequest_Occurrence, 
    spServiceRequest_Patient, 
    spServiceRequest_Performer, 
    spServiceRequest_Performertype, 
    spServiceRequest_Priority, 
    spServiceRequest_Replaces, 
    spServiceRequest_Requester, 
    spServiceRequest_Requisition, 
    spServiceRequest_Specimen, 
    spServiceRequest_Status, 
    spServiceRequest_Subject); 
{$ENDIF}

{$IFDEF FHIR_SLOT}
  // Search Parameters for Slot
  TSearchParamsSlot = (
    spSlot__content, 
    spSlot__id, 
    spSlot__lastUpdated, 
    spSlot__profile, 
    spSlot__query, 
    spSlot__security, 
    spSlot__source, 
    spSlot__tag, 
    spSlot__text, 
    spSlot_Identifier, 
    spSlot_Schedule, 
    spSlot_Slottype, 
    spSlot_Start, 
    spSlot_Status); 
{$ENDIF}

{$IFDEF FHIR_SPECIMEN}
  // Search Parameters for Specimen
  TSearchParamsSpecimen = (
    spSpecimen__content, 
    spSpecimen__id, 
    spSpecimen__lastUpdated, 
    spSpecimen__profile, 
    spSpecimen__query, 
    spSpecimen__security, 
    spSpecimen__source, 
    spSpecimen__tag, 
    spSpecimen__text, 
    spSpecimen_Accession, 
    spSpecimen_Bodysite, 
    spSpecimen_Collected, 
    spSpecimen_Collector, 
    spSpecimen_Container, 
    spSpecimen_Containerid, 
    spSpecimen_Identifier, 
    spSpecimen_Parent, 
    spSpecimen_Patient, 
    spSpecimen_Status, 
    spSpecimen_Subject, 
    spSpecimen_Type); 
{$ENDIF}

{$IFDEF FHIR_SPECIMENDEFINITION}
  // Search Parameters for SpecimenDefinition
  TSearchParamsSpecimenDefinition = (
    spSpecimenDefinition__content, 
    spSpecimenDefinition__id, 
    spSpecimenDefinition__lastUpdated, 
    spSpecimenDefinition__profile, 
    spSpecimenDefinition__query, 
    spSpecimenDefinition__security, 
    spSpecimenDefinition__source, 
    spSpecimenDefinition__tag, 
    spSpecimenDefinition__text, 
    spSpecimenDefinition_Container, 
    spSpecimenDefinition_Identifier, 
    spSpecimenDefinition_Type); 
{$ENDIF}

{$IFDEF FHIR_STRUCTUREDEFINITION}
  // Search Parameters for StructureDefinition
  TSearchParamsStructureDefinition = (
    spStructureDefinition__content, 
    spStructureDefinition__id, 
    spStructureDefinition__lastUpdated, 
    spStructureDefinition__profile, 
    spStructureDefinition__query, 
    spStructureDefinition__security, 
    spStructureDefinition__source, 
    spStructureDefinition__tag, 
    spStructureDefinition__text, 
    spStructureDefinition_Abstract, 
    spStructureDefinition_Base, 
    spStructureDefinition_Basepath, 
    spStructureDefinition_Date, 
    spStructureDefinition_Derivation, 
    spStructureDefinition_Description, 
    spStructureDefinition_Experimental, 
    spStructureDefinition_Extcontext, 
    spStructureDefinition_Identifier, 
    spStructureDefinition_Jurisdiction, 
    spStructureDefinition_Keyword, 
    spStructureDefinition_Kind, 
    spStructureDefinition_Name, 
    spStructureDefinition_Path, 
    spStructureDefinition_Publisher, 
    spStructureDefinition_Status, 
    spStructureDefinition_Title, 
    spStructureDefinition_Type, 
    spStructureDefinition_Url, 
    spStructureDefinition_Valueset, 
    spStructureDefinition_Version); 
{$ENDIF}

{$IFDEF FHIR_STRUCTUREMAP}
  // Search Parameters for StructureMap
  TSearchParamsStructureMap = (
    spStructureMap__content, 
    spStructureMap__id, 
    spStructureMap__lastUpdated, 
    spStructureMap__profile, 
    spStructureMap__query, 
    spStructureMap__security, 
    spStructureMap__source, 
    spStructureMap__tag, 
    spStructureMap__text, 
    spStructureMap_Date, 
    spStructureMap_Description, 
    spStructureMap_Identifier, 
    spStructureMap_Jurisdiction, 
    spStructureMap_Name, 
    spStructureMap_Publisher, 
    spStructureMap_Status, 
    spStructureMap_Title, 
    spStructureMap_Url, 
    spStructureMap_Version); 
{$ENDIF}

{$IFDEF FHIR_SUBSCRIPTION}
  // Search Parameters for Subscription
  TSearchParamsSubscription = (
    spSubscription__content, 
    spSubscription__id, 
    spSubscription__lastUpdated, 
    spSubscription__profile, 
    spSubscription__query, 
    spSubscription__security, 
    spSubscription__source, 
    spSubscription__tag, 
    spSubscription__text, 
    spSubscription_Addtag, 
    spSubscription_Contact, 
    spSubscription_Criteria, 
    spSubscription_Payload, 
    spSubscription_Status, 
    spSubscription_Type, 
    spSubscription_Url); 
{$ENDIF}

{$IFDEF FHIR_SUBSTANCE}
  // Search Parameters for Substance
  TSearchParamsSubstance = (
    spSubstance__content, 
    spSubstance__id, 
    spSubstance__lastUpdated, 
    spSubstance__profile, 
    spSubstance__query, 
    spSubstance__security, 
    spSubstance__source, 
    spSubstance__tag, 
    spSubstance__text, 
    spSubstance_Category, 
    spSubstance_Code, 
    spSubstance_Containeridentifier, 
    spSubstance_Expiry, 
    spSubstance_Identifier, 
    spSubstance_Quantity, 
    spSubstance_Status, 
    spSubstance_Substancereference); 
{$ENDIF}

{$IFDEF FHIR_SUBSTANCEPOLYMER}
  // Search Parameters for SubstancePolymer
  TSearchParamsSubstancePolymer = (
    spSubstancePolymer__content, 
    spSubstancePolymer__id, 
    spSubstancePolymer__lastUpdated, 
    spSubstancePolymer__profile, 
    spSubstancePolymer__query, 
    spSubstancePolymer__security, 
    spSubstancePolymer__source, 
    spSubstancePolymer__tag, 
    spSubstancePolymer__text); 
{$ENDIF}

{$IFDEF FHIR_SUBSTANCEREFERENCEINFORMATION}
  // Search Parameters for SubstanceReferenceInformation
  TSearchParamsSubstanceReferenceInformation = (
    spSubstanceReferenceInformation__content, 
    spSubstanceReferenceInformation__id, 
    spSubstanceReferenceInformation__lastUpdated, 
    spSubstanceReferenceInformation__profile, 
    spSubstanceReferenceInformation__query, 
    spSubstanceReferenceInformation__security, 
    spSubstanceReferenceInformation__source, 
    spSubstanceReferenceInformation__tag, 
    spSubstanceReferenceInformation__text); 
{$ENDIF}

{$IFDEF FHIR_SUBSTANCESPECIFICATION}
  // Search Parameters for SubstanceSpecification
  TSearchParamsSubstanceSpecification = (
    spSubstanceSpecification__content, 
    spSubstanceSpecification__id, 
    spSubstanceSpecification__lastUpdated, 
    spSubstanceSpecification__profile, 
    spSubstanceSpecification__query, 
    spSubstanceSpecification__security, 
    spSubstanceSpecification__source, 
    spSubstanceSpecification__tag, 
    spSubstanceSpecification__text); 
{$ENDIF}

{$IFDEF FHIR_SUPPLYDELIVERY}
  // Search Parameters for SupplyDelivery
  TSearchParamsSupplyDelivery = (
    spSupplyDelivery__content, 
    spSupplyDelivery__id, 
    spSupplyDelivery__lastUpdated, 
    spSupplyDelivery__profile, 
    spSupplyDelivery__query, 
    spSupplyDelivery__security, 
    spSupplyDelivery__source, 
    spSupplyDelivery__tag, 
    spSupplyDelivery__text, 
    spSupplyDelivery_Identifier, 
    spSupplyDelivery_Patient, 
    spSupplyDelivery_Receiver, 
    spSupplyDelivery_Status, 
    spSupplyDelivery_Supplier); 
{$ENDIF}

{$IFDEF FHIR_SUPPLYREQUEST}
  // Search Parameters for SupplyRequest
  TSearchParamsSupplyRequest = (
    spSupplyRequest__content, 
    spSupplyRequest__id, 
    spSupplyRequest__lastUpdated, 
    spSupplyRequest__profile, 
    spSupplyRequest__query, 
    spSupplyRequest__security, 
    spSupplyRequest__source, 
    spSupplyRequest__tag, 
    spSupplyRequest__text, 
    spSupplyRequest_Category, 
    spSupplyRequest_Date, 
    spSupplyRequest_Identifier, 
    spSupplyRequest_Requester, 
    spSupplyRequest_Status, 
    spSupplyRequest_Supplier); 
{$ENDIF}

{$IFDEF FHIR_TASK}
  // Search Parameters for Task
  TSearchParamsTask = (
    spTask__content, 
    spTask__id, 
    spTask__lastUpdated, 
    spTask__profile, 
    spTask__query, 
    spTask__security, 
    spTask__source, 
    spTask__tag, 
    spTask__text, 
    spTask_Authoredon, 
    spTask_Basedon, 
    spTask_Businessstatus, 
    spTask_Code, 
    spTask_Context, 
    spTask_Focus, 
    spTask_Groupidentifier, 
    spTask_Identifier, 
    spTask_Intent, 
    spTask_Modified, 
    spTask_Owner, 
    spTask_Partof, 
    spTask_Patient, 
    spTask_Performer, 
    spTask_Period, 
    spTask_Priority, 
    spTask_Requester, 
    spTask_Status, 
    spTask_Subject); 
{$ENDIF}

{$IFDEF FHIR_TERMINOLOGYCAPABILITIES}
  // Search Parameters for TerminologyCapabilities
  TSearchParamsTerminologyCapabilities = (
    spTerminologyCapabilities__content, 
    spTerminologyCapabilities__id, 
    spTerminologyCapabilities__lastUpdated, 
    spTerminologyCapabilities__profile, 
    spTerminologyCapabilities__query, 
    spTerminologyCapabilities__security, 
    spTerminologyCapabilities__source, 
    spTerminologyCapabilities__tag, 
    spTerminologyCapabilities__text, 
    spTerminologyCapabilities_Date, 
    spTerminologyCapabilities_Description, 
    spTerminologyCapabilities_Jurisdiction, 
    spTerminologyCapabilities_Name, 
    spTerminologyCapabilities_Publisher, 
    spTerminologyCapabilities_Status, 
    spTerminologyCapabilities_Title, 
    spTerminologyCapabilities_Url, 
    spTerminologyCapabilities_Version); 
{$ENDIF}

{$IFDEF FHIR_TESTREPORT}
  // Search Parameters for TestReport
  TSearchParamsTestReport = (
    spTestReport__content, 
    spTestReport__id, 
    spTestReport__lastUpdated, 
    spTestReport__profile, 
    spTestReport__query, 
    spTestReport__security, 
    spTestReport__source, 
    spTestReport__tag, 
    spTestReport__text, 
    spTestReport_Identifier, 
    spTestReport_Issued, 
    spTestReport_Participant, 
    spTestReport_Result, 
    spTestReport_Tester, 
    spTestReport_Testscript); 
{$ENDIF}

{$IFDEF FHIR_TESTSCRIPT}
  // Search Parameters for TestScript
  TSearchParamsTestScript = (
    spTestScript__content, 
    spTestScript__id, 
    spTestScript__lastUpdated, 
    spTestScript__profile, 
    spTestScript__query, 
    spTestScript__security, 
    spTestScript__source, 
    spTestScript__tag, 
    spTestScript__text, 
    spTestScript_Date, 
    spTestScript_Description, 
    spTestScript_Identifier, 
    spTestScript_Jurisdiction, 
    spTestScript_Name, 
    spTestScript_Publisher, 
    spTestScript_Status, 
    spTestScript_Testscriptcapability, 
    spTestScript_Title, 
    spTestScript_Url, 
    spTestScript_Version); 
{$ENDIF}

{$IFDEF FHIR_USERSESSION}
  // Search Parameters for UserSession
  TSearchParamsUserSession = (
    spUserSession__content, 
    spUserSession__id, 
    spUserSession__lastUpdated, 
    spUserSession__profile, 
    spUserSession__query, 
    spUserSession__security, 
    spUserSession__source, 
    spUserSession__tag, 
    spUserSession__text, 
    spUserSession_Focus, 
    spUserSession_Identifier, 
    spUserSession_Patient, 
    spUserSession_Status, 
    spUserSession_User, 
    spUserSession_Workstation); 
{$ENDIF}

{$IFDEF FHIR_VALUESET}
  // Search Parameters for ValueSet
  TSearchParamsValueSet = (
    spValueSet__content, 
    spValueSet__id, 
    spValueSet__lastUpdated, 
    spValueSet__profile, 
    spValueSet__query, 
    spValueSet__security, 
    spValueSet__source, 
    spValueSet__tag, 
    spValueSet__text, 
    spValueSet_Code, 
    spValueSet_Date, 
    spValueSet_Description, 
    spValueSet_Expansion, 
    spValueSet_Identifier, 
    spValueSet_Jurisdiction, 
    spValueSet_Name, 
    spValueSet_Publisher, 
    spValueSet_Reference, 
    spValueSet_Status, 
    spValueSet_Title, 
    spValueSet_Url, 
    spValueSet_Version); 
{$ENDIF}

{$IFDEF FHIR_VERIFICATIONRESULT}
  // Search Parameters for VerificationResult
  TSearchParamsVerificationResult = (
    spVerificationResult__content, 
    spVerificationResult__id, 
    spVerificationResult__lastUpdated, 
    spVerificationResult__profile, 
    spVerificationResult__query, 
    spVerificationResult__security, 
    spVerificationResult__source, 
    spVerificationResult__tag, 
    spVerificationResult__text, 
    spVerificationResult_Target); 
{$ENDIF}

{$IFDEF FHIR_VISIONPRESCRIPTION}
  // Search Parameters for VisionPrescription
  TSearchParamsVisionPrescription = (
    spVisionPrescription__content, 
    spVisionPrescription__id, 
    spVisionPrescription__lastUpdated, 
    spVisionPrescription__profile, 
    spVisionPrescription__query, 
    spVisionPrescription__security, 
    spVisionPrescription__source, 
    spVisionPrescription__tag, 
    spVisionPrescription__text, 
    spVisionPrescription_Datewritten, 
    spVisionPrescription_Encounter, 
    spVisionPrescription_Identifier, 
    spVisionPrescription_Patient, 
    spVisionPrescription_Prescriber, 
    spVisionPrescription_Status); 
{$ENDIF}

Const
  CODES_TFhirResourceType : Array[TFhirResourceType] of String = ('', {$IFDEF FHIR_ACCOUNT}'Account',{$ENDIF}
      {$IFDEF FHIR_ACTIVITYDEFINITION}'ActivityDefinition',{$ENDIF}
      {$IFDEF FHIR_ADVERSEEVENT}'AdverseEvent',{$ENDIF}
      {$IFDEF FHIR_ALLERGYINTOLERANCE}'AllergyIntolerance',{$ENDIF}
      {$IFDEF FHIR_APPOINTMENT}'Appointment',{$ENDIF}
      {$IFDEF FHIR_APPOINTMENTRESPONSE}'AppointmentResponse',{$ENDIF}
      {$IFDEF FHIR_AUDITEVENT}'AuditEvent',{$ENDIF}
      {$IFDEF FHIR_BASIC}'Basic',{$ENDIF}
      {$IFDEF FHIR_BINARY}'Binary',{$ENDIF}
      {$IFDEF FHIR_BIOLOGICALLYDERIVEDPRODUCT}'BiologicallyDerivedProduct',{$ENDIF}
      {$IFDEF FHIR_BODYSTRUCTURE}'BodyStructure',{$ENDIF}
      {$IFDEF FHIR_BUNDLE}'Bundle',{$ENDIF}
      {$IFDEF FHIR_CAPABILITYSTATEMENT}'CapabilityStatement',{$ENDIF}
      {$IFDEF FHIR_CAREPLAN}'CarePlan',{$ENDIF}
      {$IFDEF FHIR_CARETEAM}'CareTeam',{$ENDIF}
      {$IFDEF FHIR_CHARGEITEM}'ChargeItem',{$ENDIF}
      {$IFDEF FHIR_CLAIM}'Claim',{$ENDIF}
      {$IFDEF FHIR_CLAIMRESPONSE}'ClaimResponse',{$ENDIF}
      {$IFDEF FHIR_CLINICALIMPRESSION}'ClinicalImpression',{$ENDIF}
      {$IFDEF FHIR_CODESYSTEM}'CodeSystem',{$ENDIF}
      {$IFDEF FHIR_COMMUNICATION}'Communication',{$ENDIF}
      {$IFDEF FHIR_COMMUNICATIONREQUEST}'CommunicationRequest',{$ENDIF}
      {$IFDEF FHIR_COMPARTMENTDEFINITION}'CompartmentDefinition',{$ENDIF}
      {$IFDEF FHIR_COMPOSITION}'Composition',{$ENDIF}
      {$IFDEF FHIR_CONCEPTMAP}'ConceptMap',{$ENDIF}
      {$IFDEF FHIR_CONDITION}'Condition',{$ENDIF}
      {$IFDEF FHIR_CONSENT}'Consent',{$ENDIF}
      {$IFDEF FHIR_CONTRACT}'Contract',{$ENDIF}
      {$IFDEF FHIR_COVERAGE}'Coverage',{$ENDIF}
      {$IFDEF FHIR_DETECTEDISSUE}'DetectedIssue',{$ENDIF}
      {$IFDEF FHIR_DEVICE}'Device',{$ENDIF}
      {$IFDEF FHIR_DEVICECOMPONENT}'DeviceComponent',{$ENDIF}
      {$IFDEF FHIR_DEVICEMETRIC}'DeviceMetric',{$ENDIF}
      {$IFDEF FHIR_DEVICEREQUEST}'DeviceRequest',{$ENDIF}
      {$IFDEF FHIR_DEVICEUSESTATEMENT}'DeviceUseStatement',{$ENDIF}
      {$IFDEF FHIR_DIAGNOSTICREPORT}'DiagnosticReport',{$ENDIF}
      {$IFDEF FHIR_DOCUMENTMANIFEST}'DocumentManifest',{$ENDIF}
      {$IFDEF FHIR_DOCUMENTREFERENCE}'DocumentReference',{$ENDIF}
      {$IFDEF FHIR_ELIGIBILITYREQUEST}'EligibilityRequest',{$ENDIF}
      {$IFDEF FHIR_ELIGIBILITYRESPONSE}'EligibilityResponse',{$ENDIF}
      {$IFDEF FHIR_ENCOUNTER}'Encounter',{$ENDIF}
      {$IFDEF FHIR_ENDPOINT}'Endpoint',{$ENDIF}
      {$IFDEF FHIR_ENROLLMENTREQUEST}'EnrollmentRequest',{$ENDIF}
      {$IFDEF FHIR_ENROLLMENTRESPONSE}'EnrollmentResponse',{$ENDIF}
      {$IFDEF FHIR_ENTRYDEFINITION}'EntryDefinition',{$ENDIF}
      {$IFDEF FHIR_EPISODEOFCARE}'EpisodeOfCare',{$ENDIF}
      {$IFDEF FHIR_EVENTDEFINITION}'EventDefinition',{$ENDIF}
      {$IFDEF FHIR_EXAMPLESCENARIO}'ExampleScenario',{$ENDIF}
      {$IFDEF FHIR_EXPANSIONPROFILE}'ExpansionProfile',{$ENDIF}
      {$IFDEF FHIR_EXPLANATIONOFBENEFIT}'ExplanationOfBenefit',{$ENDIF}
      {$IFDEF FHIR_FAMILYMEMBERHISTORY}'FamilyMemberHistory',{$ENDIF}
      {$IFDEF FHIR_FLAG}'Flag',{$ENDIF}
      {$IFDEF FHIR_GOAL}'Goal',{$ENDIF}
      {$IFDEF FHIR_GRAPHDEFINITION}'GraphDefinition',{$ENDIF}
      {$IFDEF FHIR_GROUP}'Group',{$ENDIF}
      {$IFDEF FHIR_GUIDANCERESPONSE}'GuidanceResponse',{$ENDIF}
      
      {$IFDEF FHIR_HEALTHCARESERVICE}'HealthcareService',{$ENDIF}
      {$IFDEF FHIR_IMAGINGSTUDY}'ImagingStudy',{$ENDIF}
      {$IFDEF FHIR_IMMUNIZATION}'Immunization',{$ENDIF}
      {$IFDEF FHIR_IMMUNIZATIONEVALUATION}'ImmunizationEvaluation',{$ENDIF}
      {$IFDEF FHIR_IMMUNIZATIONRECOMMENDATION}'ImmunizationRecommendation',{$ENDIF}
      {$IFDEF FHIR_IMPLEMENTATIONGUIDE}'ImplementationGuide',{$ENDIF}
      {$IFDEF FHIR_INVOICE}'Invoice',{$ENDIF}
      {$IFDEF FHIR_ITEMINSTANCE}'ItemInstance',{$ENDIF}
      {$IFDEF FHIR_LIBRARY}'Library',{$ENDIF}
      {$IFDEF FHIR_LINKAGE}'Linkage',{$ENDIF}
      {$IFDEF FHIR_LIST}'List',{$ENDIF}
      {$IFDEF FHIR_LOCATION}'Location',{$ENDIF}
      {$IFDEF FHIR_MEASURE}'Measure',{$ENDIF}
      {$IFDEF FHIR_MEASUREREPORT}'MeasureReport',{$ENDIF}
      {$IFDEF FHIR_MEDIA}'Media',{$ENDIF}
      {$IFDEF FHIR_MEDICATION}'Medication',{$ENDIF}
      {$IFDEF FHIR_MEDICATIONADMINISTRATION}'MedicationAdministration',{$ENDIF}
      {$IFDEF FHIR_MEDICATIONDISPENSE}'MedicationDispense',{$ENDIF}
      {$IFDEF FHIR_MEDICATIONKNOWLEDGE}'MedicationKnowledge',{$ENDIF}
      {$IFDEF FHIR_MEDICATIONREQUEST}'MedicationRequest',{$ENDIF}
      {$IFDEF FHIR_MEDICATIONSTATEMENT}'MedicationStatement',{$ENDIF}
      {$IFDEF FHIR_MEDICINALPRODUCT}'MedicinalProduct',{$ENDIF}
      {$IFDEF FHIR_MEDICINALPRODUCTAUTHORIZATION}'MedicinalProductAuthorization',{$ENDIF}
      {$IFDEF FHIR_MEDICINALPRODUCTCLINICALS}'MedicinalProductClinicals',{$ENDIF}
      {$IFDEF FHIR_MEDICINALPRODUCTDEVICESPEC}'MedicinalProductDeviceSpec',{$ENDIF}
      {$IFDEF FHIR_MEDICINALPRODUCTINGREDIENT}'MedicinalProductIngredient',{$ENDIF}
      {$IFDEF FHIR_MEDICINALPRODUCTPACKAGED}'MedicinalProductPackaged',{$ENDIF}
      {$IFDEF FHIR_MEDICINALPRODUCTPHARMACEUTICAL}'MedicinalProductPharmaceutical',{$ENDIF}
      {$IFDEF FHIR_MESSAGEDEFINITION}'MessageDefinition',{$ENDIF}
      {$IFDEF FHIR_MESSAGEHEADER}'MessageHeader',{$ENDIF}
      {$IFDEF FHIR_NAMINGSYSTEM}'NamingSystem',{$ENDIF}
      {$IFDEF FHIR_NUTRITIONORDER}'NutritionOrder',{$ENDIF}
      {$IFDEF FHIR_OBSERVATION}'Observation',{$ENDIF}
      {$IFDEF FHIR_OBSERVATIONDEFINITION}'ObservationDefinition',{$ENDIF}
      {$IFDEF FHIR_OCCUPATIONALDATA}'OccupationalData',{$ENDIF}
      {$IFDEF FHIR_OPERATIONDEFINITION}'OperationDefinition',{$ENDIF}
      {$IFDEF FHIR_OPERATIONOUTCOME}'OperationOutcome',{$ENDIF}
      {$IFDEF FHIR_ORGANIZATION}'Organization',{$ENDIF}
      {$IFDEF FHIR_ORGANIZATIONROLE}'OrganizationRole',{$ENDIF}
      {$IFDEF FHIR_PARAMETERS}'Parameters',{$ENDIF}
      {$IFDEF FHIR_PATIENT}'Patient',{$ENDIF}
      {$IFDEF FHIR_PAYMENTNOTICE}'PaymentNotice',{$ENDIF}
      {$IFDEF FHIR_PAYMENTRECONCILIATION}'PaymentReconciliation',{$ENDIF}
      {$IFDEF FHIR_PERSON}'Person',{$ENDIF}
      {$IFDEF FHIR_PLANDEFINITION}'PlanDefinition',{$ENDIF}
      {$IFDEF FHIR_PRACTITIONER}'Practitioner',{$ENDIF}
      {$IFDEF FHIR_PRACTITIONERROLE}'PractitionerRole',{$ENDIF}
      {$IFDEF FHIR_PROCEDURE}'Procedure',{$ENDIF}
      {$IFDEF FHIR_PROCESSREQUEST}'ProcessRequest',{$ENDIF}
      {$IFDEF FHIR_PROCESSRESPONSE}'ProcessResponse',{$ENDIF}
      {$IFDEF FHIR_PRODUCTPLAN}'ProductPlan',{$ENDIF}
      {$IFDEF FHIR_PROVENANCE}'Provenance',{$ENDIF}
      {$IFDEF FHIR_QUESTIONNAIRE}'Questionnaire',{$ENDIF}
      
      {$IFDEF FHIR_QUESTIONNAIRERESPONSE}'QuestionnaireResponse',{$ENDIF}
      {$IFDEF FHIR_RELATEDPERSON}'RelatedPerson',{$ENDIF}
      {$IFDEF FHIR_REQUESTGROUP}'RequestGroup',{$ENDIF}
      {$IFDEF FHIR_RESEARCHSTUDY}'ResearchStudy',{$ENDIF}
      {$IFDEF FHIR_RESEARCHSUBJECT}'ResearchSubject',{$ENDIF}
      {$IFDEF FHIR_RISKASSESSMENT}'RiskAssessment',{$ENDIF}
      {$IFDEF FHIR_SCHEDULE}'Schedule',{$ENDIF}
      {$IFDEF FHIR_SEARCHPARAMETER}'SearchParameter',{$ENDIF}
      {$IFDEF FHIR_SEQUENCE}'Sequence',{$ENDIF}
      {$IFDEF FHIR_SERVICEREQUEST}'ServiceRequest',{$ENDIF}
      {$IFDEF FHIR_SLOT}'Slot',{$ENDIF}
      {$IFDEF FHIR_SPECIMEN}'Specimen',{$ENDIF}
      {$IFDEF FHIR_SPECIMENDEFINITION}'SpecimenDefinition',{$ENDIF}
      {$IFDEF FHIR_STRUCTUREDEFINITION}'StructureDefinition',{$ENDIF}
      {$IFDEF FHIR_STRUCTUREMAP}'StructureMap',{$ENDIF}
      {$IFDEF FHIR_SUBSCRIPTION}'Subscription',{$ENDIF}
      {$IFDEF FHIR_SUBSTANCE}'Substance',{$ENDIF}
      {$IFDEF FHIR_SUBSTANCEPOLYMER}'SubstancePolymer',{$ENDIF}
      {$IFDEF FHIR_SUBSTANCEREFERENCEINFORMATION}'SubstanceReferenceInformation',{$ENDIF}
      {$IFDEF FHIR_SUBSTANCESPECIFICATION}'SubstanceSpecification',{$ENDIF}
      {$IFDEF FHIR_SUPPLYDELIVERY}'SupplyDelivery',{$ENDIF}
      {$IFDEF FHIR_SUPPLYREQUEST}'SupplyRequest',{$ENDIF}
      {$IFDEF FHIR_TASK}'Task',{$ENDIF}
      {$IFDEF FHIR_TERMINOLOGYCAPABILITIES}'TerminologyCapabilities',{$ENDIF}
      {$IFDEF FHIR_TESTREPORT}'TestReport',{$ENDIF}
      {$IFDEF FHIR_TESTSCRIPT}'TestScript',{$ENDIF}
      {$IFDEF FHIR_USERSESSION}'UserSession',{$ENDIF}
      {$IFDEF FHIR_VALUESET}'ValueSet',{$ENDIF}
      {$IFDEF FHIR_VERIFICATIONRESULT}'VerificationResult',{$ENDIF}
      {$IFDEF FHIR_VISIONPRESCRIPTION}'VisionPrescription',{$ENDIF}
       'Custom');
  LOWERCASE_CODES_TFhirResourceType : Array[TFhirResourceType] of String = ('', {$IFDEF FHIR_ACCOUNT}'account',{$ENDIF}
     {$IFDEF FHIR_ACTIVITYDEFINITION}'activitydefinition',{$ENDIF}
     {$IFDEF FHIR_ADVERSEEVENT}'adverseevent',{$ENDIF}
     {$IFDEF FHIR_ALLERGYINTOLERANCE}'allergyintolerance',{$ENDIF}
     {$IFDEF FHIR_APPOINTMENT}'appointment',{$ENDIF}
     {$IFDEF FHIR_APPOINTMENTRESPONSE}'appointmentresponse',{$ENDIF}
     {$IFDEF FHIR_AUDITEVENT}'auditevent',{$ENDIF}
     {$IFDEF FHIR_BASIC}'basic',{$ENDIF}
     {$IFDEF FHIR_BINARY}'binary',{$ENDIF}
     {$IFDEF FHIR_BIOLOGICALLYDERIVEDPRODUCT}'biologicallyderivedproduct',{$ENDIF}
     {$IFDEF FHIR_BODYSTRUCTURE}'bodystructure',{$ENDIF}
     {$IFDEF FHIR_BUNDLE}'bundle',{$ENDIF}
     {$IFDEF FHIR_CAPABILITYSTATEMENT}'capabilitystatement',{$ENDIF}
     {$IFDEF FHIR_CAREPLAN}'careplan',{$ENDIF}
     {$IFDEF FHIR_CARETEAM}'careteam',{$ENDIF}
     {$IFDEF FHIR_CHARGEITEM}'chargeitem',{$ENDIF}
     {$IFDEF FHIR_CLAIM}'claim',{$ENDIF}
     {$IFDEF FHIR_CLAIMRESPONSE}'claimresponse',{$ENDIF}
     {$IFDEF FHIR_CLINICALIMPRESSION}'clinicalimpression',{$ENDIF}
     {$IFDEF FHIR_CODESYSTEM}'codesystem',{$ENDIF}
     {$IFDEF FHIR_COMMUNICATION}'communication',{$ENDIF}
     {$IFDEF FHIR_COMMUNICATIONREQUEST}'communicationrequest',{$ENDIF}
     {$IFDEF FHIR_COMPARTMENTDEFINITION}'compartmentdefinition',{$ENDIF}
     {$IFDEF FHIR_COMPOSITION}'composition',{$ENDIF}
     {$IFDEF FHIR_CONCEPTMAP}'conceptmap',{$ENDIF}
     {$IFDEF FHIR_CONDITION}'condition',{$ENDIF}
     {$IFDEF FHIR_CONSENT}'consent',{$ENDIF}
     {$IFDEF FHIR_CONTRACT}'contract',{$ENDIF}
     {$IFDEF FHIR_COVERAGE}'coverage',{$ENDIF}
     {$IFDEF FHIR_DETECTEDISSUE}'detectedissue',{$ENDIF}
     {$IFDEF FHIR_DEVICE}'device',{$ENDIF}
     {$IFDEF FHIR_DEVICECOMPONENT}'devicecomponent',{$ENDIF}
     {$IFDEF FHIR_DEVICEMETRIC}'devicemetric',{$ENDIF}
     {$IFDEF FHIR_DEVICEREQUEST}'devicerequest',{$ENDIF}
     {$IFDEF FHIR_DEVICEUSESTATEMENT}'deviceusestatement',{$ENDIF}
     {$IFDEF FHIR_DIAGNOSTICREPORT}'diagnosticreport',{$ENDIF}
     {$IFDEF FHIR_DOCUMENTMANIFEST}'documentmanifest',{$ENDIF}
     {$IFDEF FHIR_DOCUMENTREFERENCE}'documentreference',{$ENDIF}
     {$IFDEF FHIR_ELIGIBILITYREQUEST}'eligibilityrequest',{$ENDIF}
     {$IFDEF FHIR_ELIGIBILITYRESPONSE}'eligibilityresponse',{$ENDIF}
     {$IFDEF FHIR_ENCOUNTER}'encounter',{$ENDIF}
     {$IFDEF FHIR_ENDPOINT}'endpoint',{$ENDIF}
     {$IFDEF FHIR_ENROLLMENTREQUEST}'enrollmentrequest',{$ENDIF}
     {$IFDEF FHIR_ENROLLMENTRESPONSE}'enrollmentresponse',{$ENDIF}
     {$IFDEF FHIR_ENTRYDEFINITION}'entrydefinition',{$ENDIF}
     {$IFDEF FHIR_EPISODEOFCARE}'episodeofcare',{$ENDIF}
     {$IFDEF FHIR_EVENTDEFINITION}'eventdefinition',{$ENDIF}
     {$IFDEF FHIR_EXAMPLESCENARIO}'examplescenario',{$ENDIF}
     {$IFDEF FHIR_EXPANSIONPROFILE}'expansionprofile',{$ENDIF}
     {$IFDEF FHIR_EXPLANATIONOFBENEFIT}'explanationofbenefit',{$ENDIF}
     {$IFDEF FHIR_FAMILYMEMBERHISTORY}'familymemberhistory',{$ENDIF}
     {$IFDEF FHIR_FLAG}'flag',{$ENDIF}
     {$IFDEF FHIR_GOAL}'goal',{$ENDIF}
     {$IFDEF FHIR_GRAPHDEFINITION}'graphdefinition',{$ENDIF}
     {$IFDEF FHIR_GROUP}'group',{$ENDIF}
     {$IFDEF FHIR_GUIDANCERESPONSE}'guidanceresponse',{$ENDIF}
     {$IFDEF FHIR_HEALTHCARESERVICE}'healthcareservice',{$ENDIF}
     {$IFDEF FHIR_IMAGINGSTUDY}'imagingstudy',{$ENDIF}
     {$IFDEF FHIR_IMMUNIZATION}'immunization',{$ENDIF}
     {$IFDEF FHIR_IMMUNIZATIONEVALUATION}'immunizationevaluation',{$ENDIF}
     {$IFDEF FHIR_IMMUNIZATIONRECOMMENDATION}'immunizationrecommendation',{$ENDIF}
     {$IFDEF FHIR_IMPLEMENTATIONGUIDE}'implementationguide',{$ENDIF}
     {$IFDEF FHIR_INVOICE}'invoice',{$ENDIF}
     {$IFDEF FHIR_ITEMINSTANCE}'iteminstance',{$ENDIF}
     {$IFDEF FHIR_LIBRARY}'library',{$ENDIF}
     {$IFDEF FHIR_LINKAGE}'linkage',{$ENDIF}
     {$IFDEF FHIR_LIST}'list',{$ENDIF}
     {$IFDEF FHIR_LOCATION}'location',{$ENDIF}
     {$IFDEF FHIR_MEASURE}'measure',{$ENDIF}
     {$IFDEF FHIR_MEASUREREPORT}'measurereport',{$ENDIF}
     {$IFDEF FHIR_MEDIA}'media',{$ENDIF}
     {$IFDEF FHIR_MEDICATION}'medication',{$ENDIF}
     {$IFDEF FHIR_MEDICATIONADMINISTRATION}'medicationadministration',{$ENDIF}
     {$IFDEF FHIR_MEDICATIONDISPENSE}'medicationdispense',{$ENDIF}
     {$IFDEF FHIR_MEDICATIONKNOWLEDGE}'medicationknowledge',{$ENDIF}
     {$IFDEF FHIR_MEDICATIONREQUEST}'medicationrequest',{$ENDIF}
     {$IFDEF FHIR_MEDICATIONSTATEMENT}'medicationstatement',{$ENDIF}
     {$IFDEF FHIR_MEDICINALPRODUCT}'medicinalproduct',{$ENDIF}
     {$IFDEF FHIR_MEDICINALPRODUCTAUTHORIZATION}'medicinalproductauthorization',{$ENDIF}
     {$IFDEF FHIR_MEDICINALPRODUCTCLINICALS}'medicinalproductclinicals',{$ENDIF}
     {$IFDEF FHIR_MEDICINALPRODUCTDEVICESPEC}'medicinalproductdevicespec',{$ENDIF}
     {$IFDEF FHIR_MEDICINALPRODUCTINGREDIENT}'medicinalproductingredient',{$ENDIF}
     {$IFDEF FHIR_MEDICINALPRODUCTPACKAGED}'medicinalproductpackaged',{$ENDIF}
     {$IFDEF FHIR_MEDICINALPRODUCTPHARMACEUTICAL}'medicinalproductpharmaceutical',{$ENDIF}
     {$IFDEF FHIR_MESSAGEDEFINITION}'messagedefinition',{$ENDIF}
     {$IFDEF FHIR_MESSAGEHEADER}'messageheader',{$ENDIF}
     {$IFDEF FHIR_NAMINGSYSTEM}'namingsystem',{$ENDIF}
     {$IFDEF FHIR_NUTRITIONORDER}'nutritionorder',{$ENDIF}
     {$IFDEF FHIR_OBSERVATION}'observation',{$ENDIF}
     {$IFDEF FHIR_OBSERVATIONDEFINITION}'observationdefinition',{$ENDIF}
     {$IFDEF FHIR_OCCUPATIONALDATA}'occupationaldata',{$ENDIF}
     {$IFDEF FHIR_OPERATIONDEFINITION}'operationdefinition',{$ENDIF}
     {$IFDEF FHIR_OPERATIONOUTCOME}'operationoutcome',{$ENDIF}
     {$IFDEF FHIR_ORGANIZATION}'organization',{$ENDIF}
     {$IFDEF FHIR_ORGANIZATIONROLE}'organizationrole',{$ENDIF}
     {$IFDEF FHIR_PARAMETERS}'parameters',{$ENDIF}
     {$IFDEF FHIR_PATIENT}'patient',{$ENDIF}
     {$IFDEF FHIR_PAYMENTNOTICE}'paymentnotice',{$ENDIF}
     {$IFDEF FHIR_PAYMENTRECONCILIATION}'paymentreconciliation',{$ENDIF}
     {$IFDEF FHIR_PERSON}'person',{$ENDIF}
     {$IFDEF FHIR_PLANDEFINITION}'plandefinition',{$ENDIF}
     {$IFDEF FHIR_PRACTITIONER}'practitioner',{$ENDIF}
     {$IFDEF FHIR_PRACTITIONERROLE}'practitionerrole',{$ENDIF}
     {$IFDEF FHIR_PROCEDURE}'procedure',{$ENDIF}
     {$IFDEF FHIR_PROCESSREQUEST}'processrequest',{$ENDIF}
     {$IFDEF FHIR_PROCESSRESPONSE}'processresponse',{$ENDIF}
     {$IFDEF FHIR_PRODUCTPLAN}'productplan',{$ENDIF}
     {$IFDEF FHIR_PROVENANCE}'provenance',{$ENDIF}
     {$IFDEF FHIR_QUESTIONNAIRE}'questionnaire',{$ENDIF}
     {$IFDEF FHIR_QUESTIONNAIRERESPONSE}'questionnaireresponse',{$ENDIF}
     {$IFDEF FHIR_RELATEDPERSON}'relatedperson',{$ENDIF}
     {$IFDEF FHIR_REQUESTGROUP}'requestgroup',{$ENDIF}
     {$IFDEF FHIR_RESEARCHSTUDY}'researchstudy',{$ENDIF}
     {$IFDEF FHIR_RESEARCHSUBJECT}'researchsubject',{$ENDIF}
     {$IFDEF FHIR_RISKASSESSMENT}'riskassessment',{$ENDIF}
     {$IFDEF FHIR_SCHEDULE}'schedule',{$ENDIF}
     {$IFDEF FHIR_SEARCHPARAMETER}'searchparameter',{$ENDIF}
     {$IFDEF FHIR_SEQUENCE}'sequence',{$ENDIF}
     {$IFDEF FHIR_SERVICEREQUEST}'servicerequest',{$ENDIF}
     {$IFDEF FHIR_SLOT}'slot',{$ENDIF}
     {$IFDEF FHIR_SPECIMEN}'specimen',{$ENDIF}
     {$IFDEF FHIR_SPECIMENDEFINITION}'specimendefinition',{$ENDIF}
     {$IFDEF FHIR_STRUCTUREDEFINITION}'structuredefinition',{$ENDIF}
     {$IFDEF FHIR_STRUCTUREMAP}'structuremap',{$ENDIF}
     {$IFDEF FHIR_SUBSCRIPTION}'subscription',{$ENDIF}
     {$IFDEF FHIR_SUBSTANCE}'substance',{$ENDIF}
     {$IFDEF FHIR_SUBSTANCEPOLYMER}'substancepolymer',{$ENDIF}
     {$IFDEF FHIR_SUBSTANCEREFERENCEINFORMATION}'substancereferenceinformation',{$ENDIF}
     {$IFDEF FHIR_SUBSTANCESPECIFICATION}'substancespecification',{$ENDIF}
     {$IFDEF FHIR_SUPPLYDELIVERY}'supplydelivery',{$ENDIF}
     {$IFDEF FHIR_SUPPLYREQUEST}'supplyrequest',{$ENDIF}
     {$IFDEF FHIR_TASK}'task',{$ENDIF}
     {$IFDEF FHIR_TERMINOLOGYCAPABILITIES}'terminologycapabilities',{$ENDIF}
     {$IFDEF FHIR_TESTREPORT}'testreport',{$ENDIF}
     {$IFDEF FHIR_TESTSCRIPT}'testscript',{$ENDIF}
     {$IFDEF FHIR_USERSESSION}'usersession',{$ENDIF}
     {$IFDEF FHIR_VALUESET}'valueset',{$ENDIF}
     {$IFDEF FHIR_VERIFICATIONRESULT}'verificationresult',{$ENDIF}
     {$IFDEF FHIR_VISIONPRESCRIPTION}'visionprescription',{$ENDIF}
     'custom');
     
  CLASSES_TFhirResourceType : Array[TFhirResourceType] of TFhirResourceClass = (nil, {$IFDEF FHIR_ACCOUNT}TFhirAccount,{$ENDIF}
     {$IFDEF FHIR_ACTIVITYDEFINITION}TFhirActivityDefinition,{$ENDIF}
     {$IFDEF FHIR_ADVERSEEVENT}TFhirAdverseEvent,{$ENDIF}
     {$IFDEF FHIR_ALLERGYINTOLERANCE}TFhirAllergyIntolerance,{$ENDIF}
     {$IFDEF FHIR_APPOINTMENT}TFhirAppointment,{$ENDIF}
     {$IFDEF FHIR_APPOINTMENTRESPONSE}TFhirAppointmentResponse,{$ENDIF}
     {$IFDEF FHIR_AUDITEVENT}TFhirAuditEvent,{$ENDIF}
     {$IFDEF FHIR_BASIC}TFhirBasic,{$ENDIF}
     {$IFDEF FHIR_BINARY}TFhirBinary,{$ENDIF}
     {$IFDEF FHIR_BIOLOGICALLYDERIVEDPRODUCT}TFhirBiologicallyDerivedProduct,{$ENDIF}
     {$IFDEF FHIR_BODYSTRUCTURE}TFhirBodyStructure,{$ENDIF}
     {$IFDEF FHIR_BUNDLE}TFhirBundle,{$ENDIF}
     {$IFDEF FHIR_CAPABILITYSTATEMENT}TFhirCapabilityStatement,{$ENDIF}
     {$IFDEF FHIR_CAREPLAN}TFhirCarePlan,{$ENDIF}
     {$IFDEF FHIR_CARETEAM}TFhirCareTeam,{$ENDIF}
     {$IFDEF FHIR_CHARGEITEM}TFhirChargeItem,{$ENDIF}
     {$IFDEF FHIR_CLAIM}TFhirClaim,{$ENDIF}
     {$IFDEF FHIR_CLAIMRESPONSE}TFhirClaimResponse,{$ENDIF}
     {$IFDEF FHIR_CLINICALIMPRESSION}TFhirClinicalImpression,{$ENDIF}
     {$IFDEF FHIR_CODESYSTEM}TFhirCodeSystem,{$ENDIF}
     {$IFDEF FHIR_COMMUNICATION}TFhirCommunication,{$ENDIF}
     {$IFDEF FHIR_COMMUNICATIONREQUEST}TFhirCommunicationRequest,{$ENDIF}
     {$IFDEF FHIR_COMPARTMENTDEFINITION}TFhirCompartmentDefinition,{$ENDIF}
     {$IFDEF FHIR_COMPOSITION}TFhirComposition,{$ENDIF}
     {$IFDEF FHIR_CONCEPTMAP}TFhirConceptMap,{$ENDIF}
     {$IFDEF FHIR_CONDITION}TFhirCondition,{$ENDIF}
     {$IFDEF FHIR_CONSENT}TFhirConsent,{$ENDIF}
     {$IFDEF FHIR_CONTRACT}TFhirContract,{$ENDIF}
     {$IFDEF FHIR_COVERAGE}TFhirCoverage,{$ENDIF}
     {$IFDEF FHIR_DETECTEDISSUE}TFhirDetectedIssue,{$ENDIF}
     {$IFDEF FHIR_DEVICE}TFhirDevice,{$ENDIF}
     {$IFDEF FHIR_DEVICECOMPONENT}TFhirDeviceComponent,{$ENDIF}
     {$IFDEF FHIR_DEVICEMETRIC}TFhirDeviceMetric,{$ENDIF}
     {$IFDEF FHIR_DEVICEREQUEST}TFhirDeviceRequest,{$ENDIF}
     {$IFDEF FHIR_DEVICEUSESTATEMENT}TFhirDeviceUseStatement,{$ENDIF}
     {$IFDEF FHIR_DIAGNOSTICREPORT}TFhirDiagnosticReport,{$ENDIF}
     {$IFDEF FHIR_DOCUMENTMANIFEST}TFhirDocumentManifest,{$ENDIF}
     {$IFDEF FHIR_DOCUMENTREFERENCE}TFhirDocumentReference,{$ENDIF}
     {$IFDEF FHIR_ELIGIBILITYREQUEST}TFhirEligibilityRequest,{$ENDIF}
     {$IFDEF FHIR_ELIGIBILITYRESPONSE}TFhirEligibilityResponse,{$ENDIF}
     {$IFDEF FHIR_ENCOUNTER}TFhirEncounter,{$ENDIF}
     {$IFDEF FHIR_ENDPOINT}TFhirEndpoint,{$ENDIF}
     {$IFDEF FHIR_ENROLLMENTREQUEST}TFhirEnrollmentRequest,{$ENDIF}
     {$IFDEF FHIR_ENROLLMENTRESPONSE}TFhirEnrollmentResponse,{$ENDIF}
     {$IFDEF FHIR_ENTRYDEFINITION}TFhirEntryDefinition,{$ENDIF}
     {$IFDEF FHIR_EPISODEOFCARE}TFhirEpisodeOfCare,{$ENDIF}
     {$IFDEF FHIR_EVENTDEFINITION}TFhirEventDefinition,{$ENDIF}
     {$IFDEF FHIR_EXAMPLESCENARIO}TFhirExampleScenario,{$ENDIF}
     {$IFDEF FHIR_EXPANSIONPROFILE}TFhirExpansionProfile,{$ENDIF}
     {$IFDEF FHIR_EXPLANATIONOFBENEFIT}TFhirExplanationOfBenefit,{$ENDIF}
     {$IFDEF FHIR_FAMILYMEMBERHISTORY}TFhirFamilyMemberHistory,{$ENDIF}
     {$IFDEF FHIR_FLAG}TFhirFlag,{$ENDIF}
     {$IFDEF FHIR_GOAL}TFhirGoal,{$ENDIF}
     {$IFDEF FHIR_GRAPHDEFINITION}TFhirGraphDefinition,{$ENDIF}
     {$IFDEF FHIR_GROUP}TFhirGroup,{$ENDIF}
     {$IFDEF FHIR_GUIDANCERESPONSE}TFhirGuidanceResponse,{$ENDIF}
     {$IFDEF FHIR_HEALTHCARESERVICE}TFhirHealthcareService,{$ENDIF}
     {$IFDEF FHIR_IMAGINGSTUDY}TFhirImagingStudy,{$ENDIF}
     {$IFDEF FHIR_IMMUNIZATION}TFhirImmunization,{$ENDIF}
     {$IFDEF FHIR_IMMUNIZATIONEVALUATION}TFhirImmunizationEvaluation,{$ENDIF}
     {$IFDEF FHIR_IMMUNIZATIONRECOMMENDATION}TFhirImmunizationRecommendation,{$ENDIF}
     {$IFDEF FHIR_IMPLEMENTATIONGUIDE}TFhirImplementationGuide,{$ENDIF}
     {$IFDEF FHIR_INVOICE}TFhirInvoice,{$ENDIF}
     {$IFDEF FHIR_ITEMINSTANCE}TFhirItemInstance,{$ENDIF}
     {$IFDEF FHIR_LIBRARY}TFhirLibrary,{$ENDIF}
     {$IFDEF FHIR_LINKAGE}TFhirLinkage,{$ENDIF}
     {$IFDEF FHIR_LIST}TFhirList,{$ENDIF}
     {$IFDEF FHIR_LOCATION}TFhirLocation,{$ENDIF}
     {$IFDEF FHIR_MEASURE}TFhirMeasure,{$ENDIF}
     {$IFDEF FHIR_MEASUREREPORT}TFhirMeasureReport,{$ENDIF}
     {$IFDEF FHIR_MEDIA}TFhirMedia,{$ENDIF}
     {$IFDEF FHIR_MEDICATION}TFhirMedication,{$ENDIF}
     {$IFDEF FHIR_MEDICATIONADMINISTRATION}TFhirMedicationAdministration,{$ENDIF}
     {$IFDEF FHIR_MEDICATIONDISPENSE}TFhirMedicationDispense,{$ENDIF}
     {$IFDEF FHIR_MEDICATIONKNOWLEDGE}TFhirMedicationKnowledge,{$ENDIF}
     {$IFDEF FHIR_MEDICATIONREQUEST}TFhirMedicationRequest,{$ENDIF}
     {$IFDEF FHIR_MEDICATIONSTATEMENT}TFhirMedicationStatement,{$ENDIF}
     {$IFDEF FHIR_MEDICINALPRODUCT}TFhirMedicinalProduct,{$ENDIF}
     {$IFDEF FHIR_MEDICINALPRODUCTAUTHORIZATION}TFhirMedicinalProductAuthorization,{$ENDIF}
     {$IFDEF FHIR_MEDICINALPRODUCTCLINICALS}TFhirMedicinalProductClinicals,{$ENDIF}
     {$IFDEF FHIR_MEDICINALPRODUCTDEVICESPEC}TFhirMedicinalProductDeviceSpec,{$ENDIF}
     {$IFDEF FHIR_MEDICINALPRODUCTINGREDIENT}TFhirMedicinalProductIngredient,{$ENDIF}
     {$IFDEF FHIR_MEDICINALPRODUCTPACKAGED}TFhirMedicinalProductPackaged,{$ENDIF}
     {$IFDEF FHIR_MEDICINALPRODUCTPHARMACEUTICAL}TFhirMedicinalProductPharmaceutical,{$ENDIF}
     {$IFDEF FHIR_MESSAGEDEFINITION}TFhirMessageDefinition,{$ENDIF}
     {$IFDEF FHIR_MESSAGEHEADER}TFhirMessageHeader,{$ENDIF}
     {$IFDEF FHIR_NAMINGSYSTEM}TFhirNamingSystem,{$ENDIF}
     {$IFDEF FHIR_NUTRITIONORDER}TFhirNutritionOrder,{$ENDIF}
     {$IFDEF FHIR_OBSERVATION}TFhirObservation,{$ENDIF}
     {$IFDEF FHIR_OBSERVATIONDEFINITION}TFhirObservationDefinition,{$ENDIF}
     {$IFDEF FHIR_OCCUPATIONALDATA}TFhirOccupationalData,{$ENDIF}
     {$IFDEF FHIR_OPERATIONDEFINITION}TFhirOperationDefinition,{$ENDIF}
     {$IFDEF FHIR_OPERATIONOUTCOME}TFhirOperationOutcome,{$ENDIF}
     {$IFDEF FHIR_ORGANIZATION}TFhirOrganization,{$ENDIF}
     {$IFDEF FHIR_ORGANIZATIONROLE}TFhirOrganizationRole,{$ENDIF}
     {$IFDEF FHIR_PARAMETERS}TFhirParameters,{$ENDIF}
     {$IFDEF FHIR_PATIENT}TFhirPatient,{$ENDIF}
     {$IFDEF FHIR_PAYMENTNOTICE}TFhirPaymentNotice,{$ENDIF}
     {$IFDEF FHIR_PAYMENTRECONCILIATION}TFhirPaymentReconciliation,{$ENDIF}
     {$IFDEF FHIR_PERSON}TFhirPerson,{$ENDIF}
     {$IFDEF FHIR_PLANDEFINITION}TFhirPlanDefinition,{$ENDIF}
     {$IFDEF FHIR_PRACTITIONER}TFhirPractitioner,{$ENDIF}
     {$IFDEF FHIR_PRACTITIONERROLE}TFhirPractitionerRole,{$ENDIF}
     {$IFDEF FHIR_PROCEDURE}TFhirProcedure,{$ENDIF}
     {$IFDEF FHIR_PROCESSREQUEST}TFhirProcessRequest,{$ENDIF}
     {$IFDEF FHIR_PROCESSRESPONSE}TFhirProcessResponse,{$ENDIF}
     {$IFDEF FHIR_PRODUCTPLAN}TFhirProductPlan,{$ENDIF}
     {$IFDEF FHIR_PROVENANCE}TFhirProvenance,{$ENDIF}
     {$IFDEF FHIR_QUESTIONNAIRE}TFhirQuestionnaire,{$ENDIF}
     {$IFDEF FHIR_QUESTIONNAIRERESPONSE}TFhirQuestionnaireResponse,{$ENDIF}
     {$IFDEF FHIR_RELATEDPERSON}TFhirRelatedPerson,{$ENDIF}
     {$IFDEF FHIR_REQUESTGROUP}TFhirRequestGroup,{$ENDIF}
     {$IFDEF FHIR_RESEARCHSTUDY}TFhirResearchStudy,{$ENDIF}
     {$IFDEF FHIR_RESEARCHSUBJECT}TFhirResearchSubject,{$ENDIF}
     {$IFDEF FHIR_RISKASSESSMENT}TFhirRiskAssessment,{$ENDIF}
     {$IFDEF FHIR_SCHEDULE}TFhirSchedule,{$ENDIF}
     {$IFDEF FHIR_SEARCHPARAMETER}TFhirSearchParameter,{$ENDIF}
     {$IFDEF FHIR_SEQUENCE}TFhirSequence,{$ENDIF}
     {$IFDEF FHIR_SERVICEREQUEST}TFhirServiceRequest,{$ENDIF}
     {$IFDEF FHIR_SLOT}TFhirSlot,{$ENDIF}
     {$IFDEF FHIR_SPECIMEN}TFhirSpecimen,{$ENDIF}
     {$IFDEF FHIR_SPECIMENDEFINITION}TFhirSpecimenDefinition,{$ENDIF}
     {$IFDEF FHIR_STRUCTUREDEFINITION}TFhirStructureDefinition,{$ENDIF}
     {$IFDEF FHIR_STRUCTUREMAP}TFhirStructureMap,{$ENDIF}
     {$IFDEF FHIR_SUBSCRIPTION}TFhirSubscription,{$ENDIF}
     {$IFDEF FHIR_SUBSTANCE}TFhirSubstance,{$ENDIF}
     {$IFDEF FHIR_SUBSTANCEPOLYMER}TFhirSubstancePolymer,{$ENDIF}
     {$IFDEF FHIR_SUBSTANCEREFERENCEINFORMATION}TFhirSubstanceReferenceInformation,{$ENDIF}
     {$IFDEF FHIR_SUBSTANCESPECIFICATION}TFhirSubstanceSpecification,{$ENDIF}
     {$IFDEF FHIR_SUPPLYDELIVERY}TFhirSupplyDelivery,{$ENDIF}
     {$IFDEF FHIR_SUPPLYREQUEST}TFhirSupplyRequest,{$ENDIF}
     {$IFDEF FHIR_TASK}TFhirTask,{$ENDIF}
     {$IFDEF FHIR_TERMINOLOGYCAPABILITIES}TFhirTerminologyCapabilities,{$ENDIF}
     {$IFDEF FHIR_TESTREPORT}TFhirTestReport,{$ENDIF}
     {$IFDEF FHIR_TESTSCRIPT}TFhirTestScript,{$ENDIF}
     {$IFDEF FHIR_USERSESSION}TFhirUserSession,{$ENDIF}
     {$IFDEF FHIR_VALUESET}TFhirValueSet,{$ENDIF}
     {$IFDEF FHIR_VERIFICATIONRESULT}TFhirVerificationResult,{$ENDIF}
     {$IFDEF FHIR_VISIONPRESCRIPTION}TFhirVisionPrescription,{$ENDIF}
     nil);
     
  ALL_RESOURCE_TYPES = [{$IFDEF FHIR_ACCOUNT}frtAccount,{$ENDIF}
     {$IFDEF FHIR_ACTIVITYDEFINITION}frtActivityDefinition,{$ENDIF}
     {$IFDEF FHIR_ADVERSEEVENT}frtAdverseEvent,{$ENDIF}
     {$IFDEF FHIR_ALLERGYINTOLERANCE}frtAllergyIntolerance,{$ENDIF}
     {$IFDEF FHIR_APPOINTMENT}frtAppointment,{$ENDIF}
     {$IFDEF FHIR_APPOINTMENTRESPONSE}frtAppointmentResponse,{$ENDIF}
     {$IFDEF FHIR_AUDITEVENT}frtAuditEvent,{$ENDIF}
     {$IFDEF FHIR_BASIC}frtBasic,{$ENDIF}
     {$IFDEF FHIR_BINARY}frtBinary,{$ENDIF}
     {$IFDEF FHIR_BIOLOGICALLYDERIVEDPRODUCT}frtBiologicallyDerivedProduct,{$ENDIF}
     {$IFDEF FHIR_BODYSTRUCTURE}frtBodyStructure,{$ENDIF}
     {$IFDEF FHIR_BUNDLE}frtBundle,{$ENDIF}
     {$IFDEF FHIR_CAPABILITYSTATEMENT}frtCapabilityStatement,{$ENDIF}
     {$IFDEF FHIR_CAREPLAN}frtCarePlan,{$ENDIF}
     {$IFDEF FHIR_CARETEAM}frtCareTeam,{$ENDIF}
     {$IFDEF FHIR_CHARGEITEM}frtChargeItem,{$ENDIF}
     {$IFDEF FHIR_CLAIM}frtClaim,{$ENDIF}
     {$IFDEF FHIR_CLAIMRESPONSE}frtClaimResponse,{$ENDIF}
     {$IFDEF FHIR_CLINICALIMPRESSION}frtClinicalImpression,{$ENDIF}
     {$IFDEF FHIR_CODESYSTEM}frtCodeSystem,{$ENDIF}
     {$IFDEF FHIR_COMMUNICATION}frtCommunication,{$ENDIF}
     {$IFDEF FHIR_COMMUNICATIONREQUEST}frtCommunicationRequest,{$ENDIF}
     {$IFDEF FHIR_COMPARTMENTDEFINITION}frtCompartmentDefinition,{$ENDIF}
     {$IFDEF FHIR_COMPOSITION}frtComposition,{$ENDIF}
     {$IFDEF FHIR_CONCEPTMAP}frtConceptMap,{$ENDIF}
     {$IFDEF FHIR_CONDITION}frtCondition,{$ENDIF}
     {$IFDEF FHIR_CONSENT}frtConsent,{$ENDIF}
     {$IFDEF FHIR_CONTRACT}frtContract,{$ENDIF}
     {$IFDEF FHIR_COVERAGE}frtCoverage,{$ENDIF}
     {$IFDEF FHIR_DETECTEDISSUE}frtDetectedIssue,{$ENDIF}
     {$IFDEF FHIR_DEVICE}frtDevice,{$ENDIF}
     {$IFDEF FHIR_DEVICECOMPONENT}frtDeviceComponent,{$ENDIF}
     {$IFDEF FHIR_DEVICEMETRIC}frtDeviceMetric,{$ENDIF}
     {$IFDEF FHIR_DEVICEREQUEST}frtDeviceRequest,{$ENDIF}
     {$IFDEF FHIR_DEVICEUSESTATEMENT}frtDeviceUseStatement,{$ENDIF}
     {$IFDEF FHIR_DIAGNOSTICREPORT}frtDiagnosticReport,{$ENDIF}
     {$IFDEF FHIR_DOCUMENTMANIFEST}frtDocumentManifest,{$ENDIF}
     {$IFDEF FHIR_DOCUMENTREFERENCE}frtDocumentReference,{$ENDIF}
     {$IFDEF FHIR_ELIGIBILITYREQUEST}frtEligibilityRequest,{$ENDIF}
     {$IFDEF FHIR_ELIGIBILITYRESPONSE}frtEligibilityResponse,{$ENDIF}
     {$IFDEF FHIR_ENCOUNTER}frtEncounter,{$ENDIF}
     {$IFDEF FHIR_ENDPOINT}frtEndpoint,{$ENDIF}
     {$IFDEF FHIR_ENROLLMENTREQUEST}frtEnrollmentRequest,{$ENDIF}
     {$IFDEF FHIR_ENROLLMENTRESPONSE}frtEnrollmentResponse,{$ENDIF}
     {$IFDEF FHIR_ENTRYDEFINITION}frtEntryDefinition,{$ENDIF}
     {$IFDEF FHIR_EPISODEOFCARE}frtEpisodeOfCare,{$ENDIF}
     {$IFDEF FHIR_EVENTDEFINITION}frtEventDefinition,{$ENDIF}
     {$IFDEF FHIR_EXAMPLESCENARIO}frtExampleScenario,{$ENDIF}
     {$IFDEF FHIR_EXPANSIONPROFILE}frtExpansionProfile,{$ENDIF}
     {$IFDEF FHIR_EXPLANATIONOFBENEFIT}frtExplanationOfBenefit,{$ENDIF}
     {$IFDEF FHIR_FAMILYMEMBERHISTORY}frtFamilyMemberHistory,{$ENDIF}
     {$IFDEF FHIR_FLAG}frtFlag,{$ENDIF}
     {$IFDEF FHIR_GOAL}frtGoal,{$ENDIF}
     {$IFDEF FHIR_GRAPHDEFINITION}frtGraphDefinition,{$ENDIF}
     {$IFDEF FHIR_GROUP}frtGroup,{$ENDIF}
     {$IFDEF FHIR_GUIDANCERESPONSE}frtGuidanceResponse,{$ENDIF}
     {$IFDEF FHIR_HEALTHCARESERVICE}frtHealthcareService,{$ENDIF}
     {$IFDEF FHIR_IMAGINGSTUDY}frtImagingStudy,{$ENDIF}
     {$IFDEF FHIR_IMMUNIZATION}frtImmunization,{$ENDIF}
     {$IFDEF FHIR_IMMUNIZATIONEVALUATION}frtImmunizationEvaluation,{$ENDIF}
     {$IFDEF FHIR_IMMUNIZATIONRECOMMENDATION}frtImmunizationRecommendation,{$ENDIF}
     {$IFDEF FHIR_IMPLEMENTATIONGUIDE}frtImplementationGuide,{$ENDIF}
     {$IFDEF FHIR_INVOICE}frtInvoice,{$ENDIF}
     {$IFDEF FHIR_ITEMINSTANCE}frtItemInstance,{$ENDIF}
     {$IFDEF FHIR_LIBRARY}frtLibrary,{$ENDIF}
     {$IFDEF FHIR_LINKAGE}frtLinkage,{$ENDIF}
     {$IFDEF FHIR_LIST}frtList,{$ENDIF}
     {$IFDEF FHIR_LOCATION}frtLocation,{$ENDIF}
     {$IFDEF FHIR_MEASURE}frtMeasure,{$ENDIF}
     {$IFDEF FHIR_MEASUREREPORT}frtMeasureReport,{$ENDIF}
     {$IFDEF FHIR_MEDIA}frtMedia,{$ENDIF}
     {$IFDEF FHIR_MEDICATION}frtMedication,{$ENDIF}
     {$IFDEF FHIR_MEDICATIONADMINISTRATION}frtMedicationAdministration,{$ENDIF}
     {$IFDEF FHIR_MEDICATIONDISPENSE}frtMedicationDispense,{$ENDIF}
     {$IFDEF FHIR_MEDICATIONKNOWLEDGE}frtMedicationKnowledge,{$ENDIF}
     {$IFDEF FHIR_MEDICATIONREQUEST}frtMedicationRequest,{$ENDIF}
     {$IFDEF FHIR_MEDICATIONSTATEMENT}frtMedicationStatement,{$ENDIF}
     {$IFDEF FHIR_MEDICINALPRODUCT}frtMedicinalProduct,{$ENDIF}
     {$IFDEF FHIR_MEDICINALPRODUCTAUTHORIZATION}frtMedicinalProductAuthorization,{$ENDIF}
     {$IFDEF FHIR_MEDICINALPRODUCTCLINICALS}frtMedicinalProductClinicals,{$ENDIF}
     {$IFDEF FHIR_MEDICINALPRODUCTDEVICESPEC}frtMedicinalProductDeviceSpec,{$ENDIF}
     {$IFDEF FHIR_MEDICINALPRODUCTINGREDIENT}frtMedicinalProductIngredient,{$ENDIF}
     {$IFDEF FHIR_MEDICINALPRODUCTPACKAGED}frtMedicinalProductPackaged,{$ENDIF}
     {$IFDEF FHIR_MEDICINALPRODUCTPHARMACEUTICAL}frtMedicinalProductPharmaceutical,{$ENDIF}
     {$IFDEF FHIR_MESSAGEDEFINITION}frtMessageDefinition,{$ENDIF}
     {$IFDEF FHIR_MESSAGEHEADER}frtMessageHeader,{$ENDIF}
     {$IFDEF FHIR_NAMINGSYSTEM}frtNamingSystem,{$ENDIF}
     {$IFDEF FHIR_NUTRITIONORDER}frtNutritionOrder,{$ENDIF}
     {$IFDEF FHIR_OBSERVATION}frtObservation,{$ENDIF}
     {$IFDEF FHIR_OBSERVATIONDEFINITION}frtObservationDefinition,{$ENDIF}
     {$IFDEF FHIR_OCCUPATIONALDATA}frtOccupationalData,{$ENDIF}
     {$IFDEF FHIR_OPERATIONDEFINITION}frtOperationDefinition,{$ENDIF}
     {$IFDEF FHIR_OPERATIONOUTCOME}frtOperationOutcome,{$ENDIF}
     {$IFDEF FHIR_ORGANIZATION}frtOrganization,{$ENDIF}
     {$IFDEF FHIR_ORGANIZATIONROLE}frtOrganizationRole,{$ENDIF}
     {$IFDEF FHIR_PARAMETERS}frtParameters,{$ENDIF}
     {$IFDEF FHIR_PATIENT}frtPatient,{$ENDIF}
     {$IFDEF FHIR_PAYMENTNOTICE}frtPaymentNotice,{$ENDIF}
     {$IFDEF FHIR_PAYMENTRECONCILIATION}frtPaymentReconciliation,{$ENDIF}
     {$IFDEF FHIR_PERSON}frtPerson,{$ENDIF}
     {$IFDEF FHIR_PLANDEFINITION}frtPlanDefinition,{$ENDIF}
     {$IFDEF FHIR_PRACTITIONER}frtPractitioner,{$ENDIF}
     {$IFDEF FHIR_PRACTITIONERROLE}frtPractitionerRole,{$ENDIF}
     {$IFDEF FHIR_PROCEDURE}frtProcedure,{$ENDIF}
     {$IFDEF FHIR_PROCESSREQUEST}frtProcessRequest,{$ENDIF}
     {$IFDEF FHIR_PROCESSRESPONSE}frtProcessResponse,{$ENDIF}
     {$IFDEF FHIR_PRODUCTPLAN}frtProductPlan,{$ENDIF}
     {$IFDEF FHIR_PROVENANCE}frtProvenance,{$ENDIF}
     {$IFDEF FHIR_QUESTIONNAIRE}frtQuestionnaire,{$ENDIF}
     {$IFDEF FHIR_QUESTIONNAIRERESPONSE}frtQuestionnaireResponse,{$ENDIF}
     {$IFDEF FHIR_RELATEDPERSON}frtRelatedPerson,{$ENDIF}
     {$IFDEF FHIR_REQUESTGROUP}frtRequestGroup,{$ENDIF}
     {$IFDEF FHIR_RESEARCHSTUDY}frtResearchStudy,{$ENDIF}
     {$IFDEF FHIR_RESEARCHSUBJECT}frtResearchSubject,{$ENDIF}
     {$IFDEF FHIR_RISKASSESSMENT}frtRiskAssessment,{$ENDIF}
     {$IFDEF FHIR_SCHEDULE}frtSchedule,{$ENDIF}
     {$IFDEF FHIR_SEARCHPARAMETER}frtSearchParameter,{$ENDIF}
     {$IFDEF FHIR_SEQUENCE}frtSequence,{$ENDIF}
     {$IFDEF FHIR_SERVICEREQUEST}frtServiceRequest,{$ENDIF}
     {$IFDEF FHIR_SLOT}frtSlot,{$ENDIF}
     {$IFDEF FHIR_SPECIMEN}frtSpecimen,{$ENDIF}
     {$IFDEF FHIR_SPECIMENDEFINITION}frtSpecimenDefinition,{$ENDIF}
     {$IFDEF FHIR_STRUCTUREDEFINITION}frtStructureDefinition,{$ENDIF}
     {$IFDEF FHIR_STRUCTUREMAP}frtStructureMap,{$ENDIF}
     {$IFDEF FHIR_SUBSCRIPTION}frtSubscription,{$ENDIF}
     {$IFDEF FHIR_SUBSTANCE}frtSubstance,{$ENDIF}
     {$IFDEF FHIR_SUBSTANCEPOLYMER}frtSubstancePolymer,{$ENDIF}
     {$IFDEF FHIR_SUBSTANCEREFERENCEINFORMATION}frtSubstanceReferenceInformation,{$ENDIF}
     {$IFDEF FHIR_SUBSTANCESPECIFICATION}frtSubstanceSpecification,{$ENDIF}
     {$IFDEF FHIR_SUPPLYDELIVERY}frtSupplyDelivery,{$ENDIF}
     {$IFDEF FHIR_SUPPLYREQUEST}frtSupplyRequest,{$ENDIF}
     {$IFDEF FHIR_TASK}frtTask,{$ENDIF}
     {$IFDEF FHIR_TERMINOLOGYCAPABILITIES}frtTerminologyCapabilities,{$ENDIF}
     {$IFDEF FHIR_TESTREPORT}frtTestReport,{$ENDIF}
     {$IFDEF FHIR_TESTSCRIPT}frtTestScript,{$ENDIF}
     {$IFDEF FHIR_USERSESSION}frtUserSession,{$ENDIF}
     {$IFDEF FHIR_VALUESET}frtValueSet,{$ENDIF}
     {$IFDEF FHIR_VERIFICATIONRESULT}frtVerificationResult,{$ENDIF}
     {$IFDEF FHIR_VISIONPRESCRIPTION}frtVisionPrescription,{$ENDIF}
     frtCustom];
     
  ALL_RESOURCE_TYPE_NAMES : Array [TFHIRResourceType] of String = ('--None--', {$IFDEF FHIR_ACCOUNT}'Account',{$ENDIF}
     {$IFDEF FHIR_ACTIVITYDEFINITION}'ActivityDefinition',{$ENDIF}
     {$IFDEF FHIR_ADVERSEEVENT}'AdverseEvent',{$ENDIF}
     {$IFDEF FHIR_ALLERGYINTOLERANCE}'AllergyIntolerance',{$ENDIF}
     {$IFDEF FHIR_APPOINTMENT}'Appointment',{$ENDIF}
     {$IFDEF FHIR_APPOINTMENTRESPONSE}'AppointmentResponse',{$ENDIF}
     {$IFDEF FHIR_AUDITEVENT}'AuditEvent',{$ENDIF}
     {$IFDEF FHIR_BASIC}'Basic',{$ENDIF}
     {$IFDEF FHIR_BINARY}'Binary',{$ENDIF}
     {$IFDEF FHIR_BIOLOGICALLYDERIVEDPRODUCT}'BiologicallyDerivedProduct',{$ENDIF}
     {$IFDEF FHIR_BODYSTRUCTURE}'BodyStructure',{$ENDIF}
     {$IFDEF FHIR_BUNDLE}'Bundle',{$ENDIF}
     {$IFDEF FHIR_CAPABILITYSTATEMENT}'CapabilityStatement',{$ENDIF}
     {$IFDEF FHIR_CAREPLAN}'CarePlan',{$ENDIF}
     {$IFDEF FHIR_CARETEAM}'CareTeam',{$ENDIF}
     {$IFDEF FHIR_CHARGEITEM}'ChargeItem',{$ENDIF}
     {$IFDEF FHIR_CLAIM}'Claim',{$ENDIF}
     {$IFDEF FHIR_CLAIMRESPONSE}'ClaimResponse',{$ENDIF}
     {$IFDEF FHIR_CLINICALIMPRESSION}'ClinicalImpression',{$ENDIF}
     {$IFDEF FHIR_CODESYSTEM}'CodeSystem',{$ENDIF}
     {$IFDEF FHIR_COMMUNICATION}'Communication',{$ENDIF}
     {$IFDEF FHIR_COMMUNICATIONREQUEST}'CommunicationRequest',{$ENDIF}
     {$IFDEF FHIR_COMPARTMENTDEFINITION}'CompartmentDefinition',{$ENDIF}
     {$IFDEF FHIR_COMPOSITION}'Composition',{$ENDIF}
     {$IFDEF FHIR_CONCEPTMAP}'ConceptMap',{$ENDIF}
     {$IFDEF FHIR_CONDITION}'Condition',{$ENDIF}
     {$IFDEF FHIR_CONSENT}'Consent',{$ENDIF}
     {$IFDEF FHIR_CONTRACT}'Contract',{$ENDIF}
     {$IFDEF FHIR_COVERAGE}'Coverage',{$ENDIF}
     {$IFDEF FHIR_DETECTEDISSUE}'DetectedIssue',{$ENDIF}
     {$IFDEF FHIR_DEVICE}'Device',{$ENDIF}
     {$IFDEF FHIR_DEVICECOMPONENT}'DeviceComponent',{$ENDIF}
     {$IFDEF FHIR_DEVICEMETRIC}'DeviceMetric',{$ENDIF}
     {$IFDEF FHIR_DEVICEREQUEST}'DeviceRequest',{$ENDIF}
     {$IFDEF FHIR_DEVICEUSESTATEMENT}'DeviceUseStatement',{$ENDIF}
     {$IFDEF FHIR_DIAGNOSTICREPORT}'DiagnosticReport',{$ENDIF}
     {$IFDEF FHIR_DOCUMENTMANIFEST}'DocumentManifest',{$ENDIF}
     {$IFDEF FHIR_DOCUMENTREFERENCE}'DocumentReference',{$ENDIF}
     {$IFDEF FHIR_ELIGIBILITYREQUEST}'EligibilityRequest',{$ENDIF}
     {$IFDEF FHIR_ELIGIBILITYRESPONSE}'EligibilityResponse',{$ENDIF}
     {$IFDEF FHIR_ENCOUNTER}'Encounter',{$ENDIF}
     {$IFDEF FHIR_ENDPOINT}'Endpoint',{$ENDIF}
     {$IFDEF FHIR_ENROLLMENTREQUEST}'EnrollmentRequest',{$ENDIF}
     {$IFDEF FHIR_ENROLLMENTRESPONSE}'EnrollmentResponse',{$ENDIF}
     {$IFDEF FHIR_ENTRYDEFINITION}'EntryDefinition',{$ENDIF}
     {$IFDEF FHIR_EPISODEOFCARE}'EpisodeOfCare',{$ENDIF}
     {$IFDEF FHIR_EVENTDEFINITION}'EventDefinition',{$ENDIF}
     {$IFDEF FHIR_EXAMPLESCENARIO}'ExampleScenario',{$ENDIF}
     {$IFDEF FHIR_EXPANSIONPROFILE}'ExpansionProfile',{$ENDIF}
     {$IFDEF FHIR_EXPLANATIONOFBENEFIT}'ExplanationOfBenefit',{$ENDIF}
     {$IFDEF FHIR_FAMILYMEMBERHISTORY}'FamilyMemberHistory',{$ENDIF}
     {$IFDEF FHIR_FLAG}'Flag',{$ENDIF}
     {$IFDEF FHIR_GOAL}'Goal',{$ENDIF}
     {$IFDEF FHIR_GRAPHDEFINITION}'GraphDefinition',{$ENDIF}
     {$IFDEF FHIR_GROUP}'Group',{$ENDIF}
     {$IFDEF FHIR_GUIDANCERESPONSE}'GuidanceResponse',{$ENDIF}
     {$IFDEF FHIR_HEALTHCARESERVICE}'HealthcareService',{$ENDIF}
     {$IFDEF FHIR_IMAGINGSTUDY}'ImagingStudy',{$ENDIF}
     {$IFDEF FHIR_IMMUNIZATION}'Immunization',{$ENDIF}
     {$IFDEF FHIR_IMMUNIZATIONEVALUATION}'ImmunizationEvaluation',{$ENDIF}
     {$IFDEF FHIR_IMMUNIZATIONRECOMMENDATION}'ImmunizationRecommendation',{$ENDIF}
     {$IFDEF FHIR_IMPLEMENTATIONGUIDE}'ImplementationGuide',{$ENDIF}
     {$IFDEF FHIR_INVOICE}'Invoice',{$ENDIF}
     {$IFDEF FHIR_ITEMINSTANCE}'ItemInstance',{$ENDIF}
     {$IFDEF FHIR_LIBRARY}'Library',{$ENDIF}
     {$IFDEF FHIR_LINKAGE}'Linkage',{$ENDIF}
     {$IFDEF FHIR_LIST}'List',{$ENDIF}
     {$IFDEF FHIR_LOCATION}'Location',{$ENDIF}
     {$IFDEF FHIR_MEASURE}'Measure',{$ENDIF}
     {$IFDEF FHIR_MEASUREREPORT}'MeasureReport',{$ENDIF}
     {$IFDEF FHIR_MEDIA}'Media',{$ENDIF}
     {$IFDEF FHIR_MEDICATION}'Medication',{$ENDIF}
     {$IFDEF FHIR_MEDICATIONADMINISTRATION}'MedicationAdministration',{$ENDIF}
     {$IFDEF FHIR_MEDICATIONDISPENSE}'MedicationDispense',{$ENDIF}
     {$IFDEF FHIR_MEDICATIONKNOWLEDGE}'MedicationKnowledge',{$ENDIF}
     {$IFDEF FHIR_MEDICATIONREQUEST}'MedicationRequest',{$ENDIF}
     {$IFDEF FHIR_MEDICATIONSTATEMENT}'MedicationStatement',{$ENDIF}
     {$IFDEF FHIR_MEDICINALPRODUCT}'MedicinalProduct',{$ENDIF}
     {$IFDEF FHIR_MEDICINALPRODUCTAUTHORIZATION}'MedicinalProductAuthorization',{$ENDIF}
     {$IFDEF FHIR_MEDICINALPRODUCTCLINICALS}'MedicinalProductClinicals',{$ENDIF}
     {$IFDEF FHIR_MEDICINALPRODUCTDEVICESPEC}'MedicinalProductDeviceSpec',{$ENDIF}
     {$IFDEF FHIR_MEDICINALPRODUCTINGREDIENT}'MedicinalProductIngredient',{$ENDIF}
     {$IFDEF FHIR_MEDICINALPRODUCTPACKAGED}'MedicinalProductPackaged',{$ENDIF}
     {$IFDEF FHIR_MEDICINALPRODUCTPHARMACEUTICAL}'MedicinalProductPharmaceutical',{$ENDIF}
     {$IFDEF FHIR_MESSAGEDEFINITION}'MessageDefinition',{$ENDIF}
     {$IFDEF FHIR_MESSAGEHEADER}'MessageHeader',{$ENDIF}
     {$IFDEF FHIR_NAMINGSYSTEM}'NamingSystem',{$ENDIF}
     {$IFDEF FHIR_NUTRITIONORDER}'NutritionOrder',{$ENDIF}
     {$IFDEF FHIR_OBSERVATION}'Observation',{$ENDIF}
     {$IFDEF FHIR_OBSERVATIONDEFINITION}'ObservationDefinition',{$ENDIF}
     {$IFDEF FHIR_OCCUPATIONALDATA}'OccupationalData',{$ENDIF}
     {$IFDEF FHIR_OPERATIONDEFINITION}'OperationDefinition',{$ENDIF}
     {$IFDEF FHIR_OPERATIONOUTCOME}'OperationOutcome',{$ENDIF}
     {$IFDEF FHIR_ORGANIZATION}'Organization',{$ENDIF}
     {$IFDEF FHIR_ORGANIZATIONROLE}'OrganizationRole',{$ENDIF}
     {$IFDEF FHIR_PARAMETERS}'Parameters',{$ENDIF}
     {$IFDEF FHIR_PATIENT}'Patient',{$ENDIF}
     {$IFDEF FHIR_PAYMENTNOTICE}'PaymentNotice',{$ENDIF}
     {$IFDEF FHIR_PAYMENTRECONCILIATION}'PaymentReconciliation',{$ENDIF}
     {$IFDEF FHIR_PERSON}'Person',{$ENDIF}
     {$IFDEF FHIR_PLANDEFINITION}'PlanDefinition',{$ENDIF}
     {$IFDEF FHIR_PRACTITIONER}'Practitioner',{$ENDIF}
     {$IFDEF FHIR_PRACTITIONERROLE}'PractitionerRole',{$ENDIF}
     {$IFDEF FHIR_PROCEDURE}'Procedure',{$ENDIF}
     {$IFDEF FHIR_PROCESSREQUEST}'ProcessRequest',{$ENDIF}
     {$IFDEF FHIR_PROCESSRESPONSE}'ProcessResponse',{$ENDIF}
     {$IFDEF FHIR_PRODUCTPLAN}'ProductPlan',{$ENDIF}
     {$IFDEF FHIR_PROVENANCE}'Provenance',{$ENDIF}
     {$IFDEF FHIR_QUESTIONNAIRE}'Questionnaire',{$ENDIF}
     {$IFDEF FHIR_QUESTIONNAIRERESPONSE}'QuestionnaireResponse',{$ENDIF}
     {$IFDEF FHIR_RELATEDPERSON}'RelatedPerson',{$ENDIF}
     {$IFDEF FHIR_REQUESTGROUP}'RequestGroup',{$ENDIF}
     {$IFDEF FHIR_RESEARCHSTUDY}'ResearchStudy',{$ENDIF}
     {$IFDEF FHIR_RESEARCHSUBJECT}'ResearchSubject',{$ENDIF}
     {$IFDEF FHIR_RISKASSESSMENT}'RiskAssessment',{$ENDIF}
     {$IFDEF FHIR_SCHEDULE}'Schedule',{$ENDIF}
     {$IFDEF FHIR_SEARCHPARAMETER}'SearchParameter',{$ENDIF}
     {$IFDEF FHIR_SEQUENCE}'Sequence',{$ENDIF}
     {$IFDEF FHIR_SERVICEREQUEST}'ServiceRequest',{$ENDIF}
     {$IFDEF FHIR_SLOT}'Slot',{$ENDIF}
     {$IFDEF FHIR_SPECIMEN}'Specimen',{$ENDIF}
     {$IFDEF FHIR_SPECIMENDEFINITION}'SpecimenDefinition',{$ENDIF}
     {$IFDEF FHIR_STRUCTUREDEFINITION}'StructureDefinition',{$ENDIF}
     {$IFDEF FHIR_STRUCTUREMAP}'StructureMap',{$ENDIF}
     {$IFDEF FHIR_SUBSCRIPTION}'Subscription',{$ENDIF}
     {$IFDEF FHIR_SUBSTANCE}'Substance',{$ENDIF}
     {$IFDEF FHIR_SUBSTANCEPOLYMER}'SubstancePolymer',{$ENDIF}
     {$IFDEF FHIR_SUBSTANCEREFERENCEINFORMATION}'SubstanceReferenceInformation',{$ENDIF}
     {$IFDEF FHIR_SUBSTANCESPECIFICATION}'SubstanceSpecification',{$ENDIF}
     {$IFDEF FHIR_SUPPLYDELIVERY}'SupplyDelivery',{$ENDIF}
     {$IFDEF FHIR_SUPPLYREQUEST}'SupplyRequest',{$ENDIF}
     {$IFDEF FHIR_TASK}'Task',{$ENDIF}
     {$IFDEF FHIR_TERMINOLOGYCAPABILITIES}'TerminologyCapabilities',{$ENDIF}
     {$IFDEF FHIR_TESTREPORT}'TestReport',{$ENDIF}
     {$IFDEF FHIR_TESTSCRIPT}'TestScript',{$ENDIF}
     {$IFDEF FHIR_USERSESSION}'UserSession',{$ENDIF}
     {$IFDEF FHIR_VALUESET}'ValueSet',{$ENDIF}
     {$IFDEF FHIR_VERIFICATIONRESULT}'VerificationResult',{$ENDIF}
     {$IFDEF FHIR_VISIONPRESCRIPTION}'VisionPrescription',{$ENDIF}
     'Custom');
     
{$IFDEF FHIR_ACCOUNT}
  CODES_TSearchParamsAccount : Array[TSearchParamsAccount] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'identifier', 'name', 'owner', 'patient', 'period', 'status', 'subject', 'type');
{$ENDIF}
{$IFDEF FHIR_ACTIVITYDEFINITION}
  CODES_TSearchParamsActivityDefinition : Array[TSearchParamsActivityDefinition] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'composed-of', 'context-type', 'date', 'depends-on', 'derived-from', 'description', 'effective', 'identifier', 'jurisdiction', 'name', 'predecessor', 'publisher', 'status', 'successor', 'title', 'topic', 'url', 'version');
{$ENDIF}
{$IFDEF FHIR_ADVERSEEVENT}
  CODES_TSearchParamsAdverseEvent : Array[TSearchParamsAdverseEvent] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'actuality', 'category', 'date', 'event', 'location', 'recorder', 'resultingcondition', 'seriousness', 'severity', 'study', 'subject', 'substance');
{$ENDIF}
{$IFDEF FHIR_ALLERGYINTOLERANCE}
  CODES_TSearchParamsAllergyIntolerance : Array[TSearchParamsAllergyIntolerance] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'asserter', 'category', 'clinical-status', 'code', 'criticality', 'date', 'identifier', 'last-date', 'manifestation', 'onset', 'patient', 'recorder', 'route', 'severity', 'type', 'verification-status');
{$ENDIF}
{$IFDEF FHIR_APPOINTMENT}
  CODES_TSearchParamsAppointment : Array[TSearchParamsAppointment] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'actor', 'appointment-type', 'based-on', 'date', 'identifier', 'location', 'part-status', 'patient', 'practitioner', 'service-type', 'status');
{$ENDIF}
{$IFDEF FHIR_APPOINTMENTRESPONSE}
  CODES_TSearchParamsAppointmentResponse : Array[TSearchParamsAppointmentResponse] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'actor', 'appointment', 'identifier', 'location', 'part-status', 'patient', 'practitioner');
{$ENDIF}
{$IFDEF FHIR_AUDITEVENT}
  CODES_TSearchParamsAuditEvent : Array[TSearchParamsAuditEvent] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'action', 'address', 'agent', 'agent-name', 'agent-role', 'altid', 'date', 'entity', 'entity-id', 'entity-name', 'entity-role', 'entity-type', 'outcome', 'patient', 'policy', 'site', 'source', 'subtype', 'type', 'user');
{$ENDIF}
{$IFDEF FHIR_BASIC}
  CODES_TSearchParamsBasic : Array[TSearchParamsBasic] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'author', 'code', 'created', 'identifier', 'patient', 'subject');
{$ENDIF}
{$IFDEF FHIR_BINARY}
  CODES_TSearchParamsBinary : Array[TSearchParamsBinary] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag');
{$ENDIF}
{$IFDEF FHIR_BIOLOGICALLYDERIVEDPRODUCT}
  CODES_TSearchParamsBiologicallyDerivedProduct : Array[TSearchParamsBiologicallyDerivedProduct] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text');
{$ENDIF}
{$IFDEF FHIR_BODYSTRUCTURE}
  CODES_TSearchParamsBodyStructure : Array[TSearchParamsBodyStructure] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'identifier', 'location', 'morphology', 'patient');
{$ENDIF}
{$IFDEF FHIR_BUNDLE}
  CODES_TSearchParamsBundle : Array[TSearchParamsBundle] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', 'composition', 'identifier', 'message', 'timestamp', 'type');
{$ENDIF}
{$IFDEF FHIR_CAPABILITYSTATEMENT}
  CODES_TSearchParamsCapabilityStatement : Array[TSearchParamsCapabilityStatement] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'date', 'description', 'fhirversion', 'format', 'guide', 'jurisdiction', 'mode', 'name', 'publisher', 'resource', 'resource-profile', 'security-service', 'software', 'status', 'supported-profile', 'title', 'url', 'version');
{$ENDIF}
{$IFDEF FHIR_CAREPLAN}
  CODES_TSearchParamsCarePlan : Array[TSearchParamsCarePlan] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'activity-code', 'activity-date', 'activity-reference', 'based-on', 'care-team', 'category', 'condition', 'context', 'date', 'encounter', 'goal', 'identifier', 'instantiates', 'intent', 'part-of', 'patient', 'performer', 'replaces', 'status', 'subject');
{$ENDIF}
{$IFDEF FHIR_CARETEAM}
  CODES_TSearchParamsCareTeam : Array[TSearchParamsCareTeam] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'category', 'context', 'date', 'encounter', 'identifier', 'participant', 'patient', 'status', 'subject');
{$ENDIF}
{$IFDEF FHIR_CHARGEITEM}
  CODES_TSearchParamsChargeItem : Array[TSearchParamsChargeItem] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'account', 'code', 'context', 'entered-date', 'enterer', 'factor-override', 'identifier', 'occurrence', 'participant-actor', 'participant-role', 'patient', 'performing-organization', 'price-override', 'quantity', 'requesting-organization', 'service', 'subject');
{$ENDIF}
{$IFDEF FHIR_CLAIM}
  CODES_TSearchParamsClaim : Array[TSearchParamsClaim] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'care-team', 'created', 'encounter', 'enterer', 'facility', 'identifier', 'insurer', 'patient', 'payee', 'priority', 'provider', 'status', 'use');
{$ENDIF}
{$IFDEF FHIR_CLAIMRESPONSE}
  CODES_TSearchParamsClaimResponse : Array[TSearchParamsClaimResponse] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'created', 'disposition', 'identifier', 'insurer', 'outcome', 'patient', 'payment-date', 'request', 'request-provider', 'status');
{$ENDIF}
{$IFDEF FHIR_CLINICALIMPRESSION}
  CODES_TSearchParamsClinicalImpression : Array[TSearchParamsClinicalImpression] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'action', 'assessor', 'context', 'date', 'finding-code', 'finding-ref', 'identifier', 'investigation', 'patient', 'previous', 'problem', 'status', 'subject');
{$ENDIF}
{$IFDEF FHIR_CODESYSTEM}
  CODES_TSearchParamsCodeSystem : Array[TSearchParamsCodeSystem] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'code', 'content-mode', 'date', 'description', 'identifier', 'jurisdiction', 'language', 'name', 'publisher', 'status', 'supplements', 'system', 'title', 'url', 'version');
{$ENDIF}
{$IFDEF FHIR_COMMUNICATION}
  CODES_TSearchParamsCommunication : Array[TSearchParamsCommunication] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'based-on', 'category', 'context', 'encounter', 'identifier', 'instantiates', 'medium', 'part-of', 'patient', 'received', 'recipient', 'sender', 'sent', 'status', 'subject');
{$ENDIF}
{$IFDEF FHIR_COMMUNICATIONREQUEST}
  CODES_TSearchParamsCommunicationRequest : Array[TSearchParamsCommunicationRequest] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'authored', 'based-on', 'category', 'context', 'encounter', 'group-identifier', 'identifier', 'medium', 'occurrence', 'patient', 'priority', 'recipient', 'replaces', 'requester', 'sender', 'status', 'subject');
{$ENDIF}
{$IFDEF FHIR_COMPARTMENTDEFINITION}
  CODES_TSearchParamsCompartmentDefinition : Array[TSearchParamsCompartmentDefinition] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'code', 'context-type', 'date', 'description', 'jurisdiction', 'name', 'publisher', 'resource', 'status', 'title', 'url');
{$ENDIF}
{$IFDEF FHIR_COMPOSITION}
  CODES_TSearchParamsComposition : Array[TSearchParamsComposition] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'attester', 'author', 'class', 'confidentiality', 'context', 'date', 'encounter', 'entry', 'identifier', 'patient', 'period', 'related-id', 'related-ref', 'section', 'status', 'subject', 'title', 'type');
{$ENDIF}
{$IFDEF FHIR_CONCEPTMAP}
  CODES_TSearchParamsConceptMap : Array[TSearchParamsConceptMap] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'date', 'dependson', 'description', 'identifier', 'jurisdiction', 'name', 'other', 'product', 'publisher', 'source', 'source-code', 'source-system', 'source-uri', 'status', 'target', 'target-code', 'target-system', 'target-uri', 'title', 'url', 'version');
{$ENDIF}
{$IFDEF FHIR_CONDITION}
  CODES_TSearchParamsCondition : Array[TSearchParamsCondition] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'abatement-age', 'abatement-date', 'abatement-string', 'asserted-date', 'asserter', 'body-site', 'category', 'clinical-status', 'code', 'context', 'encounter', 'evidence', 'evidence-detail', 'identifier', 'onset-age', 'onset-date', 'onset-info', 'patient', 'severity', 'stage', 'subject', 'verification-status');
{$ENDIF}
{$IFDEF FHIR_CONSENT}
  CODES_TSearchParamsConsent : Array[TSearchParamsConsent] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'action', 'actor', 'category', 'consentor', 'data', 'date', 'identifier', 'organization', 'patient', 'period', 'purpose', 'scope', 'securitylabel', 'source-identifier', 'source-reference', 'status');
{$ENDIF}
{$IFDEF FHIR_CONTRACT}
  CODES_TSearchParamsContract : Array[TSearchParamsContract] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'authority', 'domain', 'identifier', 'issued', 'patient', 'signer', 'status', 'subject');
{$ENDIF}
{$IFDEF FHIR_COVERAGE}
  CODES_TSearchParamsCoverage : Array[TSearchParamsCoverage] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'beneficiary', 'dependent', 'identifier', 'patient', 'payor', 'policy-holder', 'status', 'subscriber', 'type');
{$ENDIF}
{$IFDEF FHIR_DETECTEDISSUE}
  CODES_TSearchParamsDetectedIssue : Array[TSearchParamsDetectedIssue] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'author', 'category', 'date', 'identifier', 'implicated', 'patient');
{$ENDIF}
{$IFDEF FHIR_DEVICE}
  CODES_TSearchParamsDevice : Array[TSearchParamsDevice] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'device-name', 'identifier', 'location', 'manufacturer', 'model', 'organization', 'patient', 'status', 'type', 'udi-carrier', 'udi-di', 'url');
{$ENDIF}
{$IFDEF FHIR_DEVICECOMPONENT}
  CODES_TSearchParamsDeviceComponent : Array[TSearchParamsDeviceComponent] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'identifier', 'parent', 'source', 'type');
{$ENDIF}
{$IFDEF FHIR_DEVICEMETRIC}
  CODES_TSearchParamsDeviceMetric : Array[TSearchParamsDeviceMetric] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'category', 'identifier', 'parent', 'source', 'type');
{$ENDIF}
{$IFDEF FHIR_DEVICEREQUEST}
  CODES_TSearchParamsDeviceRequest : Array[TSearchParamsDeviceRequest] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'authored-on', 'based-on', 'code', 'device', 'encounter', 'event-date', 'group-identifier', 'identifier', 'instantiates', 'insurance', 'intent', 'patient', 'performer', 'priorrequest', 'requester', 'status', 'subject');
{$ENDIF}
{$IFDEF FHIR_DEVICEUSESTATEMENT}
  CODES_TSearchParamsDeviceUseStatement : Array[TSearchParamsDeviceUseStatement] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'device', 'identifier', 'patient', 'subject');
{$ENDIF}
{$IFDEF FHIR_DIAGNOSTICREPORT}
  CODES_TSearchParamsDiagnosticReport : Array[TSearchParamsDiagnosticReport] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'based-on', 'category', 'code', 'context', 'date', 'diagnosis', 'encounter', 'identifier', 'issued', 'media', 'patient', 'performer', 'result', 'results-interpreter', 'specimen', 'status', 'subject');
{$ENDIF}
{$IFDEF FHIR_DOCUMENTMANIFEST}
  CODES_TSearchParamsDocumentManifest : Array[TSearchParamsDocumentManifest] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'agent', 'created', 'description', 'identifier', 'item', 'patient', 'recipient', 'related-id', 'related-ref', 'source', 'status', 'subject', 'type');
{$ENDIF}
{$IFDEF FHIR_DOCUMENTREFERENCE}
  CODES_TSearchParamsDocumentReference : Array[TSearchParamsDocumentReference] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'agent', 'authenticator', 'class', 'contenttype', 'created', 'custodian', 'date', 'description', 'encounter', 'event', 'facility', 'format', 'identifier', 'language', 'location', 'patient', 'period', 'related-id', 'related-ref', 'relatesto', 'relation', 'relationship', 'securitylabel', 'setting', 'status', 'subject', 'type');
{$ENDIF}
{$IFDEF FHIR_ELIGIBILITYREQUEST}
  CODES_TSearchParamsEligibilityRequest : Array[TSearchParamsEligibilityRequest] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'created', 'enterer', 'facility', 'identifier', 'patient', 'provider', 'status');
{$ENDIF}
{$IFDEF FHIR_ELIGIBILITYRESPONSE}
  CODES_TSearchParamsEligibilityResponse : Array[TSearchParamsEligibilityResponse] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'created', 'disposition', 'identifier', 'insurer', 'outcome', 'request', 'request-provider', 'status');
{$ENDIF}
{$IFDEF FHIR_ENCOUNTER}
  CODES_TSearchParamsEncounter : Array[TSearchParamsEncounter] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'account', 'appointment', 'based-on', 'class', 'date', 'diagnosis', 'episodeofcare', 'identifier', 'length', 'location', 'location-period', 'part-of', 'participant', 'participant-type', 'patient', 'practitioner', 'reason', 'service-provider', 'special-arrangement', 'status', 'subject', 'type');
{$ENDIF}
{$IFDEF FHIR_ENDPOINT}
  CODES_TSearchParamsEndpoint : Array[TSearchParamsEndpoint] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'connection-type', 'identifier', 'name', 'organization', 'payload-type', 'status');
{$ENDIF}
{$IFDEF FHIR_ENROLLMENTREQUEST}
  CODES_TSearchParamsEnrollmentRequest : Array[TSearchParamsEnrollmentRequest] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'identifier', 'patient', 'status', 'subject');
{$ENDIF}
{$IFDEF FHIR_ENROLLMENTRESPONSE}
  CODES_TSearchParamsEnrollmentResponse : Array[TSearchParamsEnrollmentResponse] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'identifier', 'request', 'status');
{$ENDIF}
{$IFDEF FHIR_ENTRYDEFINITION}
  CODES_TSearchParamsEntryDefinition : Array[TSearchParamsEntryDefinition] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text');
{$ENDIF}
{$IFDEF FHIR_EPISODEOFCARE}
  CODES_TSearchParamsEpisodeOfCare : Array[TSearchParamsEpisodeOfCare] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'care-manager', 'condition', 'date', 'identifier', 'incomingreferral', 'organization', 'patient', 'status', 'type');
{$ENDIF}
{$IFDEF FHIR_EVENTDEFINITION}
  CODES_TSearchParamsEventDefinition : Array[TSearchParamsEventDefinition] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'composed-of', 'date', 'depends-on', 'derived-from', 'description', 'effective', 'identifier', 'jurisdiction', 'name', 'predecessor', 'publisher', 'status', 'successor', 'title', 'topic', 'url', 'version');
{$ENDIF}
{$IFDEF FHIR_EXAMPLESCENARIO}
  CODES_TSearchParamsExampleScenario : Array[TSearchParamsExampleScenario] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'date', 'identifier', 'jurisdiction', 'name', 'publisher', 'status', 'url', 'version');
{$ENDIF}
{$IFDEF FHIR_EXPANSIONPROFILE}
  CODES_TSearchParamsExpansionProfile : Array[TSearchParamsExpansionProfile] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'date', 'description', 'identifier', 'jurisdiction', 'name', 'publisher', 'status', 'url', 'version');
{$ENDIF}
{$IFDEF FHIR_EXPLANATIONOFBENEFIT}
  CODES_TSearchParamsExplanationOfBenefit : Array[TSearchParamsExplanationOfBenefit] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'care-team', 'claim', 'coverage', 'created', 'disposition', 'encounter', 'enterer', 'facility', 'identifier', 'patient', 'payee', 'provider', 'status');
{$ENDIF}
{$IFDEF FHIR_FAMILYMEMBERHISTORY}
  CODES_TSearchParamsFamilyMemberHistory : Array[TSearchParamsFamilyMemberHistory] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'code', 'date', 'gender', 'identifier', 'instantiates', 'patient', 'relationship', 'status');
{$ENDIF}
{$IFDEF FHIR_FLAG}
  CODES_TSearchParamsFlag : Array[TSearchParamsFlag] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'author', 'date', 'encounter', 'identifier', 'patient', 'subject');
{$ENDIF}
{$IFDEF FHIR_GOAL}
  CODES_TSearchParamsGoal : Array[TSearchParamsGoal] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'category', 'identifier', 'patient', 'start-date', 'status', 'subject', 'target-date');
{$ENDIF}
{$IFDEF FHIR_GRAPHDEFINITION}
  CODES_TSearchParamsGraphDefinition : Array[TSearchParamsGraphDefinition] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'date', 'description', 'jurisdiction', 'name', 'publisher', 'start', 'status', 'url', 'version');
{$ENDIF}
{$IFDEF FHIR_GROUP}
  CODES_TSearchParamsGroup : Array[TSearchParamsGroup] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'actual', 'characteristic', 'characteristic-value', 'code', 'exclude', 'identifier', 'member', 'type', 'value');
{$ENDIF}
{$IFDEF FHIR_GUIDANCERESPONSE}
  CODES_TSearchParamsGuidanceResponse : Array[TSearchParamsGuidanceResponse] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'identifier', 'patient', 'request', 'subject');
{$ENDIF}
{$IFDEF FHIR_HEALTHCARESERVICE}
  CODES_TSearchParamsHealthcareService : Array[TSearchParamsHealthcareService] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'active', 'category', 'characteristic', 'endpoint', 'identifier', 'location', 'name', 'organization', 'programname', 'type');
{$ENDIF}
{$IFDEF FHIR_IMAGINGSTUDY}
  CODES_TSearchParamsImagingStudy : Array[TSearchParamsImagingStudy] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'accession', 'basedon', 'bodysite', 'context', 'dicom-class', 'endpoint', 'identifier', 'inst-id', 'modality', 'patient', 'performer', 'reason', 'series', 'started', 'status', 'study', 'subject');
{$ENDIF}
{$IFDEF FHIR_IMMUNIZATION}
  CODES_TSearchParamsImmunization : Array[TSearchParamsImmunization] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'date', 'identifier', 'location', 'lot-number', 'manufacturer', 'patient', 'performer', 'reason-code', 'reason-reference', 'status', 'status-reason', 'vaccine-code');
{$ENDIF}
{$IFDEF FHIR_IMMUNIZATIONEVALUATION}
  CODES_TSearchParamsImmunizationEvaluation : Array[TSearchParamsImmunizationEvaluation] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'date', 'dose-status', 'identifier', 'immunization-event', 'patient', 'status', 'target-disease');
{$ENDIF}
{$IFDEF FHIR_IMMUNIZATIONRECOMMENDATION}
  CODES_TSearchParamsImmunizationRecommendation : Array[TSearchParamsImmunizationRecommendation] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'date', 'dose-number', 'dose-sequence', 'identifier', 'information', 'patient', 'status', 'support', 'target-disease', 'vaccine-type');
{$ENDIF}
{$IFDEF FHIR_IMPLEMENTATIONGUIDE}
  CODES_TSearchParamsImplementationGuide : Array[TSearchParamsImplementationGuide] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'date', 'depends-on', 'description', 'experimental', 'jurisdiction', 'name', 'publisher', 'status', 'url', 'version');
{$ENDIF}
{$IFDEF FHIR_INVOICE}
  CODES_TSearchParamsInvoice : Array[TSearchParamsInvoice] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'account', 'date', 'identifier', 'issuer', 'participant', 'participant-role', 'patient', 'recipient', 'status', 'subject', 'totalgross', 'totalnet', 'type');
{$ENDIF}
{$IFDEF FHIR_ITEMINSTANCE}
  CODES_TSearchParamsItemInstance : Array[TSearchParamsItemInstance] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'subject');
{$ENDIF}
{$IFDEF FHIR_LIBRARY}
  CODES_TSearchParamsLibrary : Array[TSearchParamsLibrary] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'composed-of', 'date', 'depends-on', 'derived-from', 'description', 'effective', 'identifier', 'jurisdiction', 'name', 'predecessor', 'publisher', 'status', 'successor', 'title', 'topic', 'type', 'url', 'version');
{$ENDIF}
{$IFDEF FHIR_LINKAGE}
  CODES_TSearchParamsLinkage : Array[TSearchParamsLinkage] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'author', 'item', 'source');
{$ENDIF}
{$IFDEF FHIR_LIST}
  CODES_TSearchParamsList : Array[TSearchParamsList] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'code', 'date', 'empty-reason', 'encounter', 'identifier', 'item', 'notes', 'patient', 'source', 'status', 'subject', 'title');
{$ENDIF}
{$IFDEF FHIR_LOCATION}
  CODES_TSearchParamsLocation : Array[TSearchParamsLocation] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'address', 'address-city', 'address-country', 'address-postalcode', 'address-state', 'address-use', 'endpoint', 'identifier', 'name', 'near', 'near-distance', 'operational-status', 'organization', 'partof', 'status', 'type');
{$ENDIF}
{$IFDEF FHIR_MEASURE}
  CODES_TSearchParamsMeasure : Array[TSearchParamsMeasure] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'composed-of', 'date', 'depends-on', 'derived-from', 'description', 'effective', 'identifier', 'jurisdiction', 'name', 'predecessor', 'publisher', 'status', 'successor', 'title', 'topic', 'url', 'version');
{$ENDIF}
{$IFDEF FHIR_MEASUREREPORT}
  CODES_TSearchParamsMeasureReport : Array[TSearchParamsMeasureReport] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'identifier', 'patient', 'status', 'subject');
{$ENDIF}
{$IFDEF FHIR_MEDIA}
  CODES_TSearchParamsMedia : Array[TSearchParamsMedia] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'based-on', 'context', 'created', 'device', 'identifier', 'modality', 'operator', 'patient', 'site', 'status', 'subject', 'type', 'view');
{$ENDIF}
{$IFDEF FHIR_MEDICATION}
  CODES_TSearchParamsMedication : Array[TSearchParamsMedication] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'code', 'expiration-date', 'form', 'ingredient', 'ingredient-code', 'lot-number', 'manufacturer', 'serial-number', 'status');
{$ENDIF}
{$IFDEF FHIR_MEDICATIONADMINISTRATION}
  CODES_TSearchParamsMedicationAdministration : Array[TSearchParamsMedicationAdministration] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'code', 'context', 'device', 'effective-time', 'identifier', 'medication', 'patient', 'performer', 'reason-given', 'reason-not-given', 'request', 'status', 'subject');
{$ENDIF}
{$IFDEF FHIR_MEDICATIONDISPENSE}
  CODES_TSearchParamsMedicationDispense : Array[TSearchParamsMedicationDispense] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'code', 'context', 'destination', 'identifier', 'medication', 'patient', 'performer', 'prescription', 'receiver', 'responsibleparty', 'status', 'subject', 'type', 'whenhandedover', 'whenprepared');
{$ENDIF}
{$IFDEF FHIR_MEDICATIONKNOWLEDGE}
  CODES_TSearchParamsMedicationKnowledge : Array[TSearchParamsMedicationKnowledge] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'classification', 'classification-type', 'code', 'expiration-date', 'form', 'formulary', 'ingredient', 'ingredient-code', 'lot-number', 'manufacturer', 'monitoring-program-name', 'monitoring-program-type', 'monograph', 'serial-number', 'status');
{$ENDIF}
{$IFDEF FHIR_MEDICATIONREQUEST}
  CODES_TSearchParamsMedicationRequest : Array[TSearchParamsMedicationRequest] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'authoredon', 'category', 'code', 'context', 'date', 'identifier', 'intended-dispenser', 'intended-performer', 'intended-performertype', 'intent', 'medication', 'patient', 'priority', 'requester', 'status', 'subject');
{$ENDIF}
{$IFDEF FHIR_MEDICATIONSTATEMENT}
  CODES_TSearchParamsMedicationStatement : Array[TSearchParamsMedicationStatement] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'category', 'code', 'context', 'effective', 'identifier', 'medication', 'part-of', 'patient', 'source', 'status', 'subject');
{$ENDIF}
{$IFDEF FHIR_MEDICINALPRODUCT}
  CODES_TSearchParamsMedicinalProduct : Array[TSearchParamsMedicinalProduct] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text');
{$ENDIF}
{$IFDEF FHIR_MEDICINALPRODUCTAUTHORIZATION}
  CODES_TSearchParamsMedicinalProductAuthorization : Array[TSearchParamsMedicinalProductAuthorization] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text');
{$ENDIF}
{$IFDEF FHIR_MEDICINALPRODUCTCLINICALS}
  CODES_TSearchParamsMedicinalProductClinicals : Array[TSearchParamsMedicinalProductClinicals] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text');
{$ENDIF}
{$IFDEF FHIR_MEDICINALPRODUCTDEVICESPEC}
  CODES_TSearchParamsMedicinalProductDeviceSpec : Array[TSearchParamsMedicinalProductDeviceSpec] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text');
{$ENDIF}
{$IFDEF FHIR_MEDICINALPRODUCTINGREDIENT}
  CODES_TSearchParamsMedicinalProductIngredient : Array[TSearchParamsMedicinalProductIngredient] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text');
{$ENDIF}
{$IFDEF FHIR_MEDICINALPRODUCTPACKAGED}
  CODES_TSearchParamsMedicinalProductPackaged : Array[TSearchParamsMedicinalProductPackaged] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text');
{$ENDIF}
{$IFDEF FHIR_MEDICINALPRODUCTPHARMACEUTICAL}
  CODES_TSearchParamsMedicinalProductPharmaceutical : Array[TSearchParamsMedicinalProductPharmaceutical] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text');
{$ENDIF}
{$IFDEF FHIR_MESSAGEDEFINITION}
  CODES_TSearchParamsMessageDefinition : Array[TSearchParamsMessageDefinition] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'category', 'date', 'description', 'event', 'focus', 'identifier', 'jurisdiction', 'name', 'publisher', 'status', 'title', 'url', 'version');
{$ENDIF}
{$IFDEF FHIR_MESSAGEHEADER}
  CODES_TSearchParamsMessageHeader : Array[TSearchParamsMessageHeader] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'author', 'code', 'destination', 'destination-uri', 'enterer', 'event', 'focus', 'receiver', 'response-id', 'responsible', 'sender', 'source', 'source-uri', 'target');
{$ENDIF}
{$IFDEF FHIR_NAMINGSYSTEM}
  CODES_TSearchParamsNamingSystem : Array[TSearchParamsNamingSystem] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'contact', 'date', 'description', 'id-type', 'jurisdiction', 'kind', 'name', 'period', 'publisher', 'responsible', 'status', 'telecom', 'type', 'value');
{$ENDIF}
{$IFDEF FHIR_NUTRITIONORDER}
  CODES_TSearchParamsNutritionOrder : Array[TSearchParamsNutritionOrder] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'additive', 'context', 'datetime', 'formula', 'identifier', 'oraldiet', 'patient', 'provider', 'status', 'supplement');
{$ENDIF}
{$IFDEF FHIR_OBSERVATION}
  CODES_TSearchParamsObservation : Array[TSearchParamsObservation] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'based-on', 'category', 'code', 'code-value-concept', 'code-value-date', 'code-value-quantity', 'code-value-string', 'combo-code', 'combo-code-value-concept', 'combo-code-value-quantity', 'combo-data-absent-reason', 'combo-value-concept', 'combo-value-quantity', 'component-code', 'component-code-value-concept', 'component-code-value-quantity', 'component-data-absent-reason', 'component-value-concept', 'component-value-quantity', 'context', 'data-absent-reason', 'date', 'derived-from', 'device', 'dna-variant', 'encounter', 'focus', 'gene-dnavariant', 'gene-identifier', 'has-member', 'identifier', 'method', 'part-of', 'patient', 'performer', 'specimen', 'status', 'subject', 'value-concept', 'value-date', 'value-quantity', 'value-string');
{$ENDIF}
{$IFDEF FHIR_OBSERVATIONDEFINITION}
  CODES_TSearchParamsObservationDefinition : Array[TSearchParamsObservationDefinition] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text');
{$ENDIF}
{$IFDEF FHIR_OCCUPATIONALDATA}
  CODES_TSearchParamsOccupationalData : Array[TSearchParamsOccupationalData] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'date', 'identifier', 'informant', 'recorder', 'status', 'subject');
{$ENDIF}
{$IFDEF FHIR_OPERATIONDEFINITION}
  CODES_TSearchParamsOperationDefinition : Array[TSearchParamsOperationDefinition] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'base', 'code', 'context-type', 'date', 'description', 'input-profile', 'instance', 'jurisdiction', 'kind', 'name', 'output-profile', 'publisher', 'status', 'system', 'type', 'url', 'version');
{$ENDIF}
{$IFDEF FHIR_OPERATIONOUTCOME}
  CODES_TSearchParamsOperationOutcome : Array[TSearchParamsOperationOutcome] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text');
{$ENDIF}
{$IFDEF FHIR_ORGANIZATION}
  CODES_TSearchParamsOrganization : Array[TSearchParamsOrganization] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'active', 'address', 'address-city', 'address-country', 'address-postalcode', 'address-state', 'address-use', 'endpoint', 'identifier', 'name', 'partof', 'phonetic', 'type');
{$ENDIF}
{$IFDEF FHIR_ORGANIZATIONROLE}
  CODES_TSearchParamsOrganizationRole : Array[TSearchParamsOrganizationRole] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'active', 'date', 'email', 'endpoint', 'identifier', 'location', 'network', 'participating-organization', 'phone', 'primary-organization', 'role', 'service', 'specialty', 'telecom');
{$ENDIF}
{$IFDEF FHIR_PATIENT}
  CODES_TSearchParamsPatient : Array[TSearchParamsPatient] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'active', 'address', 'address-city', 'address-country', 'address-postalcode', 'address-state', 'address-use', 'birthdate', 'death-date', 'deceased', 'email', 'family', 'gender', 'general-practitioner', 'given', 'identifier', 'language', 'link', 'name', 'organization', 'phone', 'phonetic', 'telecom');
{$ENDIF}
{$IFDEF FHIR_PAYMENTNOTICE}
  CODES_TSearchParamsPaymentNotice : Array[TSearchParamsPaymentNotice] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'created', 'identifier', 'payment-status', 'provider', 'request', 'response', 'status', 'statusdate');
{$ENDIF}
{$IFDEF FHIR_PAYMENTRECONCILIATION}
  CODES_TSearchParamsPaymentReconciliation : Array[TSearchParamsPaymentReconciliation] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'created', 'disposition', 'identifier', 'organization', 'outcome', 'request', 'request-provider', 'status');
{$ENDIF}
{$IFDEF FHIR_PERSON}
  CODES_TSearchParamsPerson : Array[TSearchParamsPerson] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'address', 'address-city', 'address-country', 'address-postalcode', 'address-state', 'address-use', 'birthdate', 'email', 'gender', 'identifier', 'link', 'name', 'organization', 'patient', 'phone', 'phonetic', 'practitioner', 'relatedperson', 'telecom');
{$ENDIF}
{$IFDEF FHIR_PLANDEFINITION}
  CODES_TSearchParamsPlanDefinition : Array[TSearchParamsPlanDefinition] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'composed-of', 'date', 'definition', 'depends-on', 'derived-from', 'description', 'effective', 'identifier', 'jurisdiction', 'name', 'predecessor', 'publisher', 'status', 'successor', 'title', 'topic', 'type', 'url', 'version');
{$ENDIF}
{$IFDEF FHIR_PRACTITIONER}
  CODES_TSearchParamsPractitioner : Array[TSearchParamsPractitioner] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'active', 'address', 'address-city', 'address-country', 'address-postalcode', 'address-state', 'address-use', 'communication', 'email', 'family', 'gender', 'given', 'identifier', 'name', 'phone', 'phonetic', 'telecom');
{$ENDIF}
{$IFDEF FHIR_PRACTITIONERROLE}
  CODES_TSearchParamsPractitionerRole : Array[TSearchParamsPractitionerRole] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'active', 'date', 'email', 'endpoint', 'identifier', 'location', 'organization', 'phone', 'practitioner', 'role', 'service', 'specialty', 'telecom');
{$ENDIF}
{$IFDEF FHIR_PROCEDURE}
  CODES_TSearchParamsProcedure : Array[TSearchParamsProcedure] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'based-on', 'category', 'code', 'context', 'date', 'encounter', 'identifier', 'instantiates', 'location', 'part-of', 'patient', 'performer', 'status', 'subject');
{$ENDIF}
{$IFDEF FHIR_PROCESSREQUEST}
  CODES_TSearchParamsProcessRequest : Array[TSearchParamsProcessRequest] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'action', 'identifier', 'provider', 'status');
{$ENDIF}
{$IFDEF FHIR_PROCESSRESPONSE}
  CODES_TSearchParamsProcessResponse : Array[TSearchParamsProcessResponse] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'identifier', 'organization', 'request', 'request-provider', 'status');
{$ENDIF}
{$IFDEF FHIR_PRODUCTPLAN}
  CODES_TSearchParamsProductPlan : Array[TSearchParamsProductPlan] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'address', 'address-city', 'address-country', 'address-postalcode', 'address-state', 'address-use', 'administered-by', 'endpoint', 'identifier', 'name', 'owned-by', 'phonetic', 'status', 'type');
{$ENDIF}
{$IFDEF FHIR_PROVENANCE}
  CODES_TSearchParamsProvenance : Array[TSearchParamsProvenance] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'agent', 'agent-role', 'agent-type', 'entity-id', 'entity-ref', 'location', 'patient', 'recorded', 'signature-type', 'target', 'when');
{$ENDIF}
{$IFDEF FHIR_QUESTIONNAIRE}
  CODES_TSearchParamsQuestionnaire : Array[TSearchParamsQuestionnaire] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'code', 'context-type', 'date', 'definition', 'description', 'effective', 'identifier', 'jurisdiction', 'name', 'publisher', 'status', 'subject-type', 'title', 'url', 'version');
{$ENDIF}
{$IFDEF FHIR_QUESTIONNAIRERESPONSE}
  CODES_TSearchParamsQuestionnaireResponse : Array[TSearchParamsQuestionnaireResponse] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'author', 'authored', 'based-on', 'context', 'identifier', 'part-of', 'patient', 'questionnaire', 'source', 'status', 'subject');
{$ENDIF}
{$IFDEF FHIR_RELATEDPERSON}
  CODES_TSearchParamsRelatedPerson : Array[TSearchParamsRelatedPerson] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'active', 'address', 'address-city', 'address-country', 'address-postalcode', 'address-state', 'address-use', 'birthdate', 'email', 'gender', 'identifier', 'name', 'patient', 'phone', 'phonetic', 'telecom');
{$ENDIF}
{$IFDEF FHIR_REQUESTGROUP}
  CODES_TSearchParamsRequestGroup : Array[TSearchParamsRequestGroup] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'author', 'authored', 'code', 'context', 'encounter', 'group-identifier', 'identifier', 'instantiates-canonical', 'instantiates-uri', 'intent', 'participant', 'patient', 'priority', 'status', 'subject');
{$ENDIF}
{$IFDEF FHIR_RESEARCHSTUDY}
  CODES_TSearchParamsResearchStudy : Array[TSearchParamsResearchStudy] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'category', 'date', 'focus', 'identifier', 'keyword', 'location', 'partof', 'principalinvestigator', 'protocol', 'site', 'sponsor', 'status', 'title');
{$ENDIF}
{$IFDEF FHIR_RESEARCHSUBJECT}
  CODES_TSearchParamsResearchSubject : Array[TSearchParamsResearchSubject] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'date', 'identifier', 'individual', 'patient', 'status', 'study');
{$ENDIF}
{$IFDEF FHIR_RISKASSESSMENT}
  CODES_TSearchParamsRiskAssessment : Array[TSearchParamsRiskAssessment] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'condition', 'date', 'encounter', 'identifier', 'method', 'patient', 'performer', 'probability', 'risk', 'subject');
{$ENDIF}
{$IFDEF FHIR_SCHEDULE}
  CODES_TSearchParamsSchedule : Array[TSearchParamsSchedule] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'active', 'actor', 'date', 'identifier', 'type');
{$ENDIF}
{$IFDEF FHIR_SEARCHPARAMETER}
  CODES_TSearchParamsSearchParameter : Array[TSearchParamsSearchParameter] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'base', 'code', 'component', 'context-type', 'date', 'derived-from', 'description', 'jurisdiction', 'name', 'publisher', 'status', 'target', 'type', 'url', 'version');
{$ENDIF}
{$IFDEF FHIR_SEQUENCE}
  CODES_TSearchParamsSequence : Array[TSearchParamsSequence] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'chromosome', 'coordinate', 'end', 'identifier', 'patient', 'start', 'type');
{$ENDIF}
{$IFDEF FHIR_SERVICEREQUEST}
  CODES_TSearchParamsServiceRequest : Array[TSearchParamsServiceRequest] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'authored', 'based-on', 'body-site', 'category', 'code', 'context', 'encounter', 'identifier', 'instantiates', 'intent', 'occurrence', 'patient', 'performer', 'performer-type', 'priority', 'replaces', 'requester', 'requisition', 'specimen', 'status', 'subject');
{$ENDIF}
{$IFDEF FHIR_SLOT}
  CODES_TSearchParamsSlot : Array[TSearchParamsSlot] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'identifier', 'schedule', 'slot-type', 'start', 'status');
{$ENDIF}
{$IFDEF FHIR_SPECIMEN}
  CODES_TSearchParamsSpecimen : Array[TSearchParamsSpecimen] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'accession', 'bodysite', 'collected', 'collector', 'container', 'container-id', 'identifier', 'parent', 'patient', 'status', 'subject', 'type');
{$ENDIF}
{$IFDEF FHIR_SPECIMENDEFINITION}
  CODES_TSearchParamsSpecimenDefinition : Array[TSearchParamsSpecimenDefinition] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'container', 'identifier', 'type');
{$ENDIF}
{$IFDEF FHIR_STRUCTUREDEFINITION}
  CODES_TSearchParamsStructureDefinition : Array[TSearchParamsStructureDefinition] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'abstract', 'base', 'base-path', 'date', 'derivation', 'description', 'experimental', 'ext-context', 'identifier', 'jurisdiction', 'keyword', 'kind', 'name', 'path', 'publisher', 'status', 'title', 'type', 'url', 'valueset', 'version');
{$ENDIF}
{$IFDEF FHIR_STRUCTUREMAP}
  CODES_TSearchParamsStructureMap : Array[TSearchParamsStructureMap] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'date', 'description', 'identifier', 'jurisdiction', 'name', 'publisher', 'status', 'title', 'url', 'version');
{$ENDIF}
{$IFDEF FHIR_SUBSCRIPTION}
  CODES_TSearchParamsSubscription : Array[TSearchParamsSubscription] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'add-tag', 'contact', 'criteria', 'payload', 'status', 'type', 'url');
{$ENDIF}
{$IFDEF FHIR_SUBSTANCE}
  CODES_TSearchParamsSubstance : Array[TSearchParamsSubstance] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'category', 'code', 'container-identifier', 'expiry', 'identifier', 'quantity', 'status', 'substance-reference');
{$ENDIF}
{$IFDEF FHIR_SUBSTANCEPOLYMER}
  CODES_TSearchParamsSubstancePolymer : Array[TSearchParamsSubstancePolymer] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text');
{$ENDIF}
{$IFDEF FHIR_SUBSTANCEREFERENCEINFORMATION}
  CODES_TSearchParamsSubstanceReferenceInformation : Array[TSearchParamsSubstanceReferenceInformation] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text');
{$ENDIF}
{$IFDEF FHIR_SUBSTANCESPECIFICATION}
  CODES_TSearchParamsSubstanceSpecification : Array[TSearchParamsSubstanceSpecification] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text');
{$ENDIF}
{$IFDEF FHIR_SUPPLYDELIVERY}
  CODES_TSearchParamsSupplyDelivery : Array[TSearchParamsSupplyDelivery] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'identifier', 'patient', 'receiver', 'status', 'supplier');
{$ENDIF}
{$IFDEF FHIR_SUPPLYREQUEST}
  CODES_TSearchParamsSupplyRequest : Array[TSearchParamsSupplyRequest] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'category', 'date', 'identifier', 'requester', 'status', 'supplier');
{$ENDIF}
{$IFDEF FHIR_TASK}
  CODES_TSearchParamsTask : Array[TSearchParamsTask] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'authored-on', 'based-on', 'business-status', 'code', 'context', 'focus', 'group-identifier', 'identifier', 'intent', 'modified', 'owner', 'part-of', 'patient', 'performer', 'period', 'priority', 'requester', 'status', 'subject');
{$ENDIF}
{$IFDEF FHIR_TERMINOLOGYCAPABILITIES}
  CODES_TSearchParamsTerminologyCapabilities : Array[TSearchParamsTerminologyCapabilities] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'date', 'description', 'jurisdiction', 'name', 'publisher', 'status', 'title', 'url', 'version');
{$ENDIF}
{$IFDEF FHIR_TESTREPORT}
  CODES_TSearchParamsTestReport : Array[TSearchParamsTestReport] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'identifier', 'issued', 'participant', 'result', 'tester', 'testscript');
{$ENDIF}
{$IFDEF FHIR_TESTSCRIPT}
  CODES_TSearchParamsTestScript : Array[TSearchParamsTestScript] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'date', 'description', 'identifier', 'jurisdiction', 'name', 'publisher', 'status', 'testscript-capability', 'title', 'url', 'version');
{$ENDIF}
{$IFDEF FHIR_USERSESSION}
  CODES_TSearchParamsUserSession : Array[TSearchParamsUserSession] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'focus', 'identifier', 'patient', 'status', 'user', 'workstation');
{$ENDIF}
{$IFDEF FHIR_VALUESET}
  CODES_TSearchParamsValueSet : Array[TSearchParamsValueSet] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'code', 'date', 'description', 'expansion', 'identifier', 'jurisdiction', 'name', 'publisher', 'reference', 'status', 'title', 'url', 'version');
{$ENDIF}
{$IFDEF FHIR_VERIFICATIONRESULT}
  CODES_TSearchParamsVerificationResult : Array[TSearchParamsVerificationResult] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'target');
{$ENDIF}
{$IFDEF FHIR_VISIONPRESCRIPTION}
  CODES_TSearchParamsVisionPrescription : Array[TSearchParamsVisionPrescription] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_source', '_tag', '_text', 'datewritten', 'encounter', 'identifier', 'patient', 'prescriber', 'status');
{$ENDIF}
  FHIR_GENERATED_VERSION = '3.3.0';

  FHIR_GENERATED_PUBLICATION = '4';

  FHIR_GENERATED_DATE = '2018-04-11T14:46:13+10:00';



implementation

end.

