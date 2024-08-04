# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AuditManager do
  @moduledoc """
  Welcome to the Audit Manager API reference. This guide is for developers who
  need detailed information about the Audit Manager API operations, data types,
  and errors. Audit Manager is a service that provides automated evidence
  collection so that you can continually audit your Amazon Web Services usage.
  You can use it to assess the effectiveness of your controls, manage risk, and
  simplify compliance.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      update_assessment_response() :: %{
        "assessment" => assessment()
      }
      
  """
  @type update_assessment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      framework_metadata() :: %{
        "complianceType" => String.t(),
        "description" => String.t(),
        "logo" => String.t(),
        "name" => String.t()
      }
      
  """
  @type framework_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_assessments_response() :: %{
        "assessmentMetadata" => list(assessment_metadata_item()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_assessments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_delegations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type get_delegations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_control_response() :: %{
        "control" => control()
      }
      
  """
  @type update_control_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      control_domain_insights() :: %{
        "controlsCountByNoncompliantEvidence" => integer(),
        "evidenceInsights" => evidence_insights(),
        "id" => String.t(),
        "lastUpdated" => non_neg_integer(),
        "name" => String.t(),
        "totalControlsCount" => integer()
      }
      
  """
  @type control_domain_insights() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_settings_request() :: %{}
      
  """
  @type get_settings_request() :: %{}

  @typedoc """

  ## Example:
      
      get_insights_request() :: %{}
      
  """
  @type get_insights_request() :: %{}

  @typedoc """

  ## Example:
      
      aws_account() :: %{
        "emailAddress" => String.t(),
        "id" => String.t(),
        "name" => String.t()
      }
      
  """
  @type aws_account() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_assessment_framework_share_request() :: %{
        required("action") => list(any()),
        required("requestType") => list(any())
      }
      
  """
  @type update_assessment_framework_share_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_delete_delegation_by_assessment_response() :: %{
        "errors" => list(batch_delete_delegation_by_assessment_error()())
      }
      
  """
  @type batch_delete_delegation_by_assessment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_control_response() :: %{}
      
  """
  @type delete_control_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_assessment_framework_response() :: %{}
      
  """
  @type delete_assessment_framework_response() :: %{}

  @typedoc """

  ## Example:
      
      create_assessment_report_response() :: %{
        "assessmentReport" => assessment_report()
      }
      
  """
  @type create_assessment_report_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_assessment_response() :: %{
        "assessment" => assessment()
      }
      
  """
  @type create_assessment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_assessment_framework_request() :: %{}
      
  """
  @type delete_assessment_framework_request() :: %{}

  @typedoc """

  ## Example:
      
      list_assessment_reports_response() :: %{
        "assessmentReports" => list(assessment_report_metadata()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_assessment_reports_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_evidence_by_evidence_folder_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type get_evidence_by_evidence_folder_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_notifications_response() :: %{
        "nextToken" => String.t(),
        "notifications" => list(notification()())
      }
      
  """
  @type list_notifications_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_account_response() :: %{
        "status" => list(any())
      }
      
  """
  @type register_account_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      assessment_evidence_folder() :: %{
        "assessmentId" => String.t(),
        "assessmentReportSelectionCount" => integer(),
        "author" => String.t(),
        "controlId" => String.t(),
        "controlName" => String.t(),
        "controlSetId" => String.t(),
        "dataSource" => String.t(),
        "date" => non_neg_integer(),
        "evidenceAwsServiceSourceCount" => integer(),
        "evidenceByTypeComplianceCheckCount" => integer(),
        "evidenceByTypeComplianceCheckIssuesCount" => integer(),
        "evidenceByTypeConfigurationDataCount" => integer(),
        "evidenceByTypeManualCount" => integer(),
        "evidenceByTypeUserActivityCount" => integer(),
        "evidenceResourcesIncludedCount" => integer(),
        "id" => String.t(),
        "name" => String.t(),
        "totalEvidence" => integer()
      }
      
  """
  @type assessment_evidence_folder() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_account_request() :: %{
        optional("delegatedAdminAccount") => String.t(),
        optional("kmsKey") => String.t()
      }
      
  """
  @type register_account_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_account_request() :: %{}
      
  """
  @type deregister_account_request() :: %{}

  @typedoc """

  ## Example:
      
      assessment_reports_destination() :: %{
        "destination" => String.t(),
        "destinationType" => list(any())
      }
      
  """
  @type assessment_reports_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_control_insights_by_control_domain_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("controlDomainId") => String.t()
      }
      
  """
  @type list_control_insights_by_control_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      control_set() :: %{
        "controls" => list(control()()),
        "id" => String.t(),
        "name" => String.t()
      }
      
  """
  @type control_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_evidence_folders_by_assessment_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type get_evidence_folders_by_assessment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_assessment_framework_control() :: %{
        "id" => String.t()
      }
      
  """
  @type create_assessment_framework_control() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregistration_policy() :: %{
        "deleteResources" => list(any())
      }
      
  """
  @type deregistration_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_metadata() :: %{
        "category" => String.t(),
        "description" => String.t(),
        "displayName" => String.t(),
        "name" => String.t()
      }
      
  """
  @type service_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      assessment_metadata_item() :: %{
        "complianceType" => String.t(),
        "creationTime" => non_neg_integer(),
        "delegations" => list(delegation()()),
        "id" => String.t(),
        "lastUpdated" => non_neg_integer(),
        "name" => String.t(),
        "roles" => list(role()()),
        "status" => list(any())
      }
      
  """
  @type assessment_metadata_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_control_mapping_source() :: %{
        "sourceDescription" => String.t(),
        "sourceFrequency" => list(any()),
        "sourceKeyword" => source_keyword(),
        "sourceName" => String.t(),
        "sourceSetUpOption" => list(any()),
        "sourceType" => list(any()),
        "troubleshootingText" => String.t()
      }
      
  """
  @type create_control_mapping_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      role() :: %{
        "roleArn" => String.t(),
        "roleType" => list(any())
      }
      
  """
  @type role() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_organization_admin_account_response() :: %{}
      
  """
  @type deregister_organization_admin_account_response() :: %{}

  @typedoc """

  ## Example:
      
      update_settings_response() :: %{
        "settings" => settings()
      }
      
  """
  @type update_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_assessment_control_set_status_request() :: %{
        required("comment") => String.t(),
        required("status") => list(any())
      }
      
  """
  @type update_assessment_control_set_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      control() :: %{
        "actionPlanInstructions" => String.t(),
        "actionPlanTitle" => String.t(),
        "arn" => String.t(),
        "controlMappingSources" => list(control_mapping_source()()),
        "controlSources" => String.t(),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "id" => String.t(),
        "lastUpdatedAt" => non_neg_integer(),
        "lastUpdatedBy" => String.t(),
        "name" => String.t(),
        "state" => list(any()),
        "tags" => map(),
        "testingInformation" => String.t(),
        "type" => list(any())
      }
      
  """
  @type control() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_control_request() :: %{}
      
  """
  @type get_control_request() :: %{}

  @typedoc """

  ## Example:
      
      list_control_insights_by_control_domain_response() :: %{
        "controlInsightsMetadata" => list(control_insights_metadata_item()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_control_insights_by_control_domain_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_assessment_framework_request() :: %{}
      
  """
  @type get_assessment_framework_request() :: %{}

  @typedoc """

  ## Example:
      
      control_comment() :: %{
        "authorName" => String.t(),
        "commentBody" => String.t(),
        "postedDate" => non_neg_integer()
      }
      
  """
  @type control_comment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      assessment_metadata() :: %{
        "assessmentReportsDestination" => assessment_reports_destination(),
        "complianceType" => String.t(),
        "creationTime" => non_neg_integer(),
        "delegations" => list(delegation()()),
        "description" => String.t(),
        "id" => String.t(),
        "lastUpdated" => non_neg_integer(),
        "name" => String.t(),
        "roles" => list(role()()),
        "scope" => scope(),
        "status" => list(any())
      }
      
  """
  @type assessment_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_disassociate_assessment_report_evidence_request() :: %{
        required("evidenceFolderId") => String.t(),
        required("evidenceIds") => list(String.t()())
      }
      
  """
  @type batch_disassociate_assessment_report_evidence_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      assessment_control() :: %{
        "assessmentReportEvidenceCount" => integer(),
        "comments" => list(control_comment()()),
        "description" => String.t(),
        "evidenceCount" => integer(),
        "evidenceSources" => list(String.t()()),
        "id" => String.t(),
        "name" => String.t(),
        "response" => list(any()),
        "status" => list(any())
      }
      
  """
  @type assessment_control() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_insights_by_assessment_request() :: %{}
      
  """
  @type get_insights_by_assessment_request() :: %{}

  @typedoc """

  ## Example:
      
      update_assessment_status_request() :: %{
        required("status") => list(any())
      }
      
  """
  @type update_assessment_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      manual_evidence() :: %{
        "evidenceFileName" => String.t(),
        "s3ResourcePath" => String.t(),
        "textResponse" => String.t()
      }
      
  """
  @type manual_evidence() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_controls_response() :: %{
        "controlMetadataList" => list(control_metadata()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_controls_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_keywords_for_data_source_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("source") => list(any())
      }
      
  """
  @type list_keywords_for_data_source_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_organization_admin_account_request() :: %{
        optional("adminAccountId") => String.t()
      }
      
  """
  @type deregister_organization_admin_account_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_associate_assessment_report_evidence_request() :: %{
        required("evidenceFolderId") => String.t(),
        required("evidenceIds") => list(String.t()())
      }
      
  """
  @type batch_associate_assessment_report_evidence_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_assessment_framework_response() :: %{
        "framework" => framework()
      }
      
  """
  @type create_assessment_framework_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_control_domain_insights_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_control_domain_insights_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_evidence_folder_request() :: %{}
      
  """
  @type get_evidence_folder_request() :: %{}

  @typedoc """

  ## Example:
      
      list_control_domain_insights_by_assessment_response() :: %{
        "controlDomainInsights" => list(control_domain_insights()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_control_domain_insights_by_assessment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_assessment_framework_control_set() :: %{
        "controls" => list(create_assessment_framework_control()()),
        "name" => String.t()
      }
      
  """
  @type create_assessment_framework_control_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_control_response() :: %{
        "control" => control()
      }
      
  """
  @type create_control_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_change_logs_response() :: %{
        "changeLogs" => list(change_log()()),
        "nextToken" => String.t()
      }
      
  """
  @type get_change_logs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_organization_admin_account_request() :: %{}
      
  """
  @type get_organization_admin_account_request() :: %{}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t(),
        "resourceId" => String.t(),
        "resourceType" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_organization_admin_account_response() :: %{
        "adminAccountId" => String.t(),
        "organizationId" => String.t()
      }
      
  """
  @type get_organization_admin_account_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_create_delegation_by_assessment_request() :: %{
        required("createDelegationRequests") => list(create_delegation_request()())
      }
      
  """
  @type batch_create_delegation_by_assessment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evidence_insights() :: %{
        "compliantEvidenceCount" => integer(),
        "inconclusiveEvidenceCount" => integer(),
        "noncompliantEvidenceCount" => integer()
      }
      
  """
  @type evidence_insights() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aws_service() :: %{
        "serviceName" => String.t()
      }
      
  """
  @type aws_service() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_assessment_framework_request() :: %{
        optional("complianceType") => String.t(),
        optional("description") => String.t(),
        optional("tags") => map(),
        required("controlSets") => list(create_assessment_framework_control_set()()),
        required("name") => String.t()
      }
      
  """
  @type create_assessment_framework_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_assessment_frameworks_response() :: %{
        "frameworkMetadataList" => list(assessment_framework_metadata()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_assessment_frameworks_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      control_metadata() :: %{
        "arn" => String.t(),
        "controlSources" => String.t(),
        "createdAt" => non_neg_integer(),
        "id" => String.t(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t()
      }
      
  """
  @type control_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_assessment_framework_share_requests_response() :: %{
        "assessmentFrameworkShareRequests" => list(assessment_framework_share_request()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_assessment_framework_share_requests_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_assessment_control_insights_by_control_domain_response() :: %{
        "controlInsightsByAssessment" => list(control_insights_metadata_by_assessment_item()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_assessment_control_insights_by_control_domain_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_assessment_control_set_status_response() :: %{
        "controlSet" => assessment_control_set()
      }
      
  """
  @type update_assessment_control_set_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_notifications_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_notifications_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_insights_by_assessment_response() :: %{
        "insights" => insights_by_assessment()
      }
      
  """
  @type get_insights_by_assessment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_assessment_framework_request() :: %{
        optional("complianceType") => String.t(),
        optional("description") => String.t(),
        required("controlSets") => list(update_assessment_framework_control_set()()),
        required("name") => String.t()
      }
      
  """
  @type update_assessment_framework_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_delete_delegation_by_assessment_error() :: %{
        "delegationId" => String.t(),
        "errorCode" => String.t(),
        "errorMessage" => String.t()
      }
      
  """
  @type batch_delete_delegation_by_assessment_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_assessment_framework_share_request() :: %{
        required("requestType") => list(any())
      }
      
  """
  @type delete_assessment_framework_share_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      default_export_destination() :: %{
        "destination" => String.t(),
        "destinationType" => list(any())
      }
      
  """
  @type default_export_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_assessment_report_request() :: %{}
      
  """
  @type delete_assessment_report_request() :: %{}

  @typedoc """

  ## Example:
      
      associate_assessment_report_evidence_folder_response() :: %{}
      
  """
  @type associate_assessment_report_evidence_folder_response() :: %{}

  @typedoc """

  ## Example:
      
      list_assessment_control_insights_by_control_domain_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("assessmentId") => String.t(),
        required("controlDomainId") => String.t()
      }
      
  """
  @type list_assessment_control_insights_by_control_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      assessment_control_set() :: %{
        "controls" => list(assessment_control()()),
        "delegations" => list(delegation()()),
        "description" => String.t(),
        "id" => String.t(),
        "manualEvidenceCount" => integer(),
        "roles" => list(role()()),
        "status" => list(any()),
        "systemEvidenceCount" => integer()
      }
      
  """
  @type assessment_control_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      assessment_report_evidence_error() :: %{
        "errorCode" => String.t(),
        "errorMessage" => String.t(),
        "evidenceId" => String.t()
      }
      
  """
  @type assessment_report_evidence_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      settings() :: %{
        "defaultAssessmentReportsDestination" => assessment_reports_destination(),
        "defaultExportDestination" => default_export_destination(),
        "defaultProcessOwners" => list(role()()),
        "deregistrationPolicy" => deregistration_policy(),
        "evidenceFinderEnablement" => evidence_finder_enablement(),
        "isAwsOrgEnabled" => boolean(),
        "kmsKey" => String.t(),
        "snsTopic" => String.t()
      }
      
  """
  @type settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_services_in_scope_response() :: %{
        "serviceMetadata" => list(service_metadata()())
      }
      
  """
  @type get_services_in_scope_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_assessments_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("status") => list(any())
      }
      
  """
  @type list_assessments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_control_domain_insights_by_assessment_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("assessmentId") => String.t()
      }
      
  """
  @type list_control_domain_insights_by_assessment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_assessment_response() :: %{}
      
  """
  @type delete_assessment_response() :: %{}

  @typedoc """

  ## Example:
      
      batch_associate_assessment_report_evidence_response() :: %{
        "errors" => list(assessment_report_evidence_error()()),
        "evidenceIds" => list(String.t()())
      }
      
  """
  @type batch_associate_assessment_report_evidence_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "tags" => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_settings_request() :: %{
        optional("defaultAssessmentReportsDestination") => assessment_reports_destination(),
        optional("defaultExportDestination") => default_export_destination(),
        optional("defaultProcessOwners") => list(role()()),
        optional("deregistrationPolicy") => deregistration_policy(),
        optional("evidenceFinderEnabled") => boolean(),
        optional("kmsKey") => String.t(),
        optional("snsTopic") => String.t()
      }
      
  """
  @type update_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_evidence_folders_by_assessment_control_response() :: %{
        "evidenceFolders" => list(assessment_evidence_folder()()),
        "nextToken" => String.t()
      }
      
  """
  @type get_evidence_folders_by_assessment_control_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_change_logs_request() :: %{
        optional("controlId") => String.t(),
        optional("controlSetId") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type get_change_logs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception_field() :: %{
        "message" => String.t(),
        "name" => String.t()
      }
      
  """
  @type validation_exception_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_organization_admin_account_request() :: %{
        required("adminAccountId") => String.t()
      }
      
  """
  @type register_organization_admin_account_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_controls_request() :: %{
        optional("controlCatalogId") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("controlType") => list(any())
      }
      
  """
  @type list_controls_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      insights() :: %{
        "activeAssessmentsCount" => integer(),
        "assessmentControlsCountByNoncompliantEvidence" => integer(),
        "compliantEvidenceCount" => integer(),
        "inconclusiveEvidenceCount" => integer(),
        "lastUpdated" => non_neg_integer(),
        "noncompliantEvidenceCount" => integer(),
        "totalAssessmentControlsCount" => integer()
      }
      
  """
  @type insights() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_assessment_request() :: %{
        optional("assessmentDescription") => String.t(),
        optional("assessmentName") => String.t(),
        optional("assessmentReportsDestination") => assessment_reports_destination(),
        optional("roles") => list(role()()),
        required("scope") => scope()
      }
      
  """
  @type update_assessment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      assessment() :: %{
        "arn" => String.t(),
        "awsAccount" => aws_account(),
        "framework" => assessment_framework(),
        "metadata" => assessment_metadata(),
        "tags" => map()
      }
      
  """
  @type assessment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_import_evidence_to_assessment_control_request() :: %{
        required("manualEvidence") => list(manual_evidence()())
      }
      
  """
  @type batch_import_evidence_to_assessment_control_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_insights_response() :: %{
        "insights" => insights()
      }
      
  """
  @type get_insights_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_settings_response() :: %{
        "settings" => settings()
      }
      
  """
  @type get_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_evidence_folders_by_assessment_response() :: %{
        "evidenceFolders" => list(assessment_evidence_folder()()),
        "nextToken" => String.t()
      }
      
  """
  @type get_evidence_folders_by_assessment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_evidence_file_upload_url_request() :: %{
        required("fileName") => String.t()
      }
      
  """
  @type get_evidence_file_upload_url_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_evidence_file_upload_url_response() :: %{
        "evidenceFileName" => String.t(),
        "uploadUrl" => String.t()
      }
      
  """
  @type get_evidence_file_upload_url_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_assessment_request() :: %{}
      
  """
  @type get_assessment_request() :: %{}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_assessment_report_evidence_folder_response() :: %{}
      
  """
  @type disassociate_assessment_report_evidence_folder_response() :: %{}

  @typedoc """

  ## Example:
      
      scope() :: %{
        "awsAccounts" => list(aws_account()()),
        "awsServices" => list(aws_service()())
      }
      
  """
  @type scope() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_delete_delegation_by_assessment_request() :: %{
        required("delegationIds") => list(String.t()())
      }
      
  """
  @type batch_delete_delegation_by_assessment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      framework() :: %{
        "arn" => String.t(),
        "complianceType" => String.t(),
        "controlSets" => list(control_set()()),
        "controlSources" => String.t(),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "id" => String.t(),
        "lastUpdatedAt" => non_neg_integer(),
        "lastUpdatedBy" => String.t(),
        "logo" => String.t(),
        "name" => String.t(),
        "tags" => map(),
        "type" => list(any())
      }
      
  """
  @type framework() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validate_assessment_report_integrity_request() :: %{
        required("s3RelativePath") => String.t()
      }
      
  """
  @type validate_assessment_report_integrity_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_delegations_response() :: %{
        "delegations" => list(delegation_metadata()()),
        "nextToken" => String.t()
      }
      
  """
  @type get_delegations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_assessment_framework_share_requests_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("requestType") => list(any())
      }
      
  """
  @type list_assessment_framework_share_requests_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      assessment_report_metadata() :: %{
        "assessmentId" => String.t(),
        "assessmentName" => String.t(),
        "author" => String.t(),
        "creationTime" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "status" => list(any())
      }
      
  """
  @type assessment_report_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_assessment_framework_control_set() :: %{
        "controls" => list(create_assessment_framework_control()()),
        "id" => String.t(),
        "name" => String.t()
      }
      
  """
  @type update_assessment_framework_control_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_assessment_response() :: %{
        "assessment" => assessment(),
        "userRole" => role()
      }
      
  """
  @type get_assessment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_control_domain_insights_response() :: %{
        "controlDomainInsights" => list(control_domain_insights()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_control_domain_insights_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_account_response() :: %{
        "status" => list(any())
      }
      
  """
  @type deregister_account_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_assessment_report_evidence_folder_request() :: %{
        required("evidenceFolderId") => String.t()
      }
      
  """
  @type associate_assessment_report_evidence_folder_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_import_evidence_to_assessment_control_response() :: %{
        "errors" => list(batch_import_evidence_to_assessment_control_error()())
      }
      
  """
  @type batch_import_evidence_to_assessment_control_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      control_insights_metadata_by_assessment_item() :: %{
        "controlSetName" => String.t(),
        "evidenceInsights" => evidence_insights(),
        "id" => String.t(),
        "lastUpdated" => non_neg_integer(),
        "name" => String.t()
      }
      
  """
  @type control_insights_metadata_by_assessment_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      validate_assessment_report_integrity_response() :: %{
        "signatureAlgorithm" => String.t(),
        "signatureDateTime" => String.t(),
        "signatureKeyId" => String.t(),
        "signatureValid" => boolean(),
        "validationErrors" => list(String.t()())
      }
      
  """
  @type validate_assessment_report_integrity_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      assessment_framework_metadata() :: %{
        "arn" => String.t(),
        "complianceType" => String.t(),
        "controlSetsCount" => integer(),
        "controlsCount" => integer(),
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "lastUpdatedAt" => non_neg_integer(),
        "logo" => String.t(),
        "name" => String.t(),
        "type" => list(any())
      }
      
  """
  @type assessment_framework_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_control_request() :: %{
        optional("actionPlanInstructions") => String.t(),
        optional("actionPlanTitle") => String.t(),
        optional("description") => String.t(),
        optional("testingInformation") => String.t(),
        required("controlMappingSources") => list(control_mapping_source()()),
        required("name") => String.t()
      }
      
  """
  @type update_control_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_assessment_framework_share_response() :: %{}
      
  """
  @type delete_assessment_framework_share_response() :: %{}

  @typedoc """

  ## Example:
      
      update_assessment_framework_response() :: %{
        "framework" => framework()
      }
      
  """
  @type update_assessment_framework_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_create_delegation_by_assessment_error() :: %{
        "createDelegationRequest" => create_delegation_request(),
        "errorCode" => String.t(),
        "errorMessage" => String.t()
      }
      
  """
  @type batch_create_delegation_by_assessment_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "fields" => list(validation_exception_field()()),
        "message" => String.t(),
        "reason" => list(any())
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{}
      
  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:
      
      batch_create_delegation_by_assessment_response() :: %{
        "delegations" => list(delegation()()),
        "errors" => list(batch_create_delegation_by_assessment_error()())
      }
      
  """
  @type batch_create_delegation_by_assessment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evidence_finder_enablement() :: %{
        "backfillStatus" => list(any()),
        "enablementStatus" => list(any()),
        "error" => String.t(),
        "eventDataStoreArn" => String.t()
      }
      
  """
  @type evidence_finder_enablement() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_control_request() :: %{}
      
  """
  @type delete_control_request() :: %{}

  @typedoc """

  ## Example:
      
      url() :: %{
        "hyperlinkName" => String.t(),
        "link" => String.t()
      }
      
  """
  @type url() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evidence() :: %{
        "assessmentReportSelection" => String.t(),
        "attributes" => map(),
        "awsAccountId" => String.t(),
        "awsOrganization" => String.t(),
        "complianceCheck" => String.t(),
        "dataSource" => String.t(),
        "eventName" => String.t(),
        "eventSource" => String.t(),
        "evidenceAwsAccountId" => String.t(),
        "evidenceByType" => String.t(),
        "evidenceFolderId" => String.t(),
        "iamId" => String.t(),
        "id" => String.t(),
        "resourcesIncluded" => list(resource()()),
        "time" => non_neg_integer()
      }
      
  """
  @type evidence() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      assessment_framework_share_request() :: %{
        "comment" => String.t(),
        "complianceType" => String.t(),
        "creationTime" => non_neg_integer(),
        "customControlsCount" => integer(),
        "destinationAccount" => String.t(),
        "destinationRegion" => String.t(),
        "expirationTime" => non_neg_integer(),
        "frameworkDescription" => String.t(),
        "frameworkId" => String.t(),
        "frameworkName" => String.t(),
        "id" => String.t(),
        "lastUpdated" => non_neg_integer(),
        "sourceAccount" => String.t(),
        "standardControlsCount" => integer(),
        "status" => list(any())
      }
      
  """
  @type assessment_framework_share_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_evidence_by_evidence_folder_response() :: %{
        "evidence" => list(evidence()()),
        "nextToken" => String.t()
      }
      
  """
  @type get_evidence_by_evidence_folder_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_evidence_request() :: %{}
      
  """
  @type get_evidence_request() :: %{}

  @typedoc """

  ## Example:
      
      update_assessment_control_response() :: %{
        "control" => assessment_control()
      }
      
  """
  @type update_assessment_control_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delegation() :: %{
        "assessmentId" => String.t(),
        "assessmentName" => String.t(),
        "comment" => String.t(),
        "controlSetId" => String.t(),
        "createdBy" => String.t(),
        "creationTime" => non_neg_integer(),
        "id" => String.t(),
        "lastUpdated" => non_neg_integer(),
        "roleArn" => String.t(),
        "roleType" => list(any()),
        "status" => list(any())
      }
      
  """
  @type delegation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_keywords_for_data_source_response() :: %{
        "keywords" => list(String.t()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_keywords_for_data_source_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_organization_admin_account_response() :: %{
        "adminAccountId" => String.t(),
        "organizationId" => String.t()
      }
      
  """
  @type register_organization_admin_account_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_evidence_response() :: %{
        "evidence" => evidence()
      }
      
  """
  @type get_evidence_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notification() :: %{
        "assessmentId" => String.t(),
        "assessmentName" => String.t(),
        "controlSetId" => String.t(),
        "controlSetName" => String.t(),
        "description" => String.t(),
        "eventTime" => non_neg_integer(),
        "id" => String.t(),
        "source" => String.t()
      }
      
  """
  @type notification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_assessment_framework_share_request() :: %{
        optional("comment") => String.t(),
        required("destinationAccount") => String.t(),
        required("destinationRegion") => String.t()
      }
      
  """
  @type start_assessment_framework_share_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_assessment_control_request() :: %{
        optional("commentBody") => String.t(),
        optional("controlStatus") => list(any())
      }
      
  """
  @type update_assessment_control_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_assessment_frameworks_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("frameworkType") => list(any())
      }
      
  """
  @type list_assessment_frameworks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_evidence_folder_response() :: %{
        "evidenceFolder" => assessment_evidence_folder()
      }
      
  """
  @type get_evidence_folder_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_assessment_report_evidence_folder_request() :: %{
        required("evidenceFolderId") => String.t()
      }
      
  """
  @type disassociate_assessment_report_evidence_folder_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_assessment_framework_share_response() :: %{
        "assessmentFrameworkShareRequest" => assessment_framework_share_request()
      }
      
  """
  @type start_assessment_framework_share_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      assessment_report() :: %{
        "assessmentId" => String.t(),
        "assessmentName" => String.t(),
        "author" => String.t(),
        "awsAccountId" => String.t(),
        "creationTime" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "status" => list(any())
      }
      
  """
  @type assessment_report() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_control_response() :: %{
        "control" => control()
      }
      
  """
  @type get_control_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_assessment_report_url_request() :: %{}
      
  """
  @type get_assessment_report_url_request() :: %{}

  @typedoc """

  ## Example:
      
      create_assessment_request() :: %{
        optional("description") => String.t(),
        optional("tags") => map(),
        required("assessmentReportsDestination") => assessment_reports_destination(),
        required("frameworkId") => String.t(),
        required("name") => String.t(),
        required("roles") => list(role()()),
        required("scope") => scope()
      }
      
  """
  @type create_assessment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_disassociate_assessment_report_evidence_response() :: %{
        "errors" => list(assessment_report_evidence_error()()),
        "evidenceIds" => list(String.t()())
      }
      
  """
  @type batch_disassociate_assessment_report_evidence_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_control_request() :: %{
        optional("actionPlanInstructions") => String.t(),
        optional("actionPlanTitle") => String.t(),
        optional("description") => String.t(),
        optional("tags") => map(),
        optional("testingInformation") => String.t(),
        required("controlMappingSources") => list(create_control_mapping_source()()),
        required("name") => String.t()
      }
      
  """
  @type create_control_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_import_evidence_to_assessment_control_error() :: %{
        "errorCode" => String.t(),
        "errorMessage" => String.t(),
        "manualEvidence" => manual_evidence()
      }
      
  """
  @type batch_import_evidence_to_assessment_control_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      insights_by_assessment() :: %{
        "assessmentControlsCountByNoncompliantEvidence" => integer(),
        "compliantEvidenceCount" => integer(),
        "inconclusiveEvidenceCount" => integer(),
        "lastUpdated" => non_neg_integer(),
        "noncompliantEvidenceCount" => integer(),
        "totalAssessmentControlsCount" => integer()
      }
      
  """
  @type insights_by_assessment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      source_keyword() :: %{
        "keywordInputType" => list(any()),
        "keywordValue" => String.t()
      }
      
  """
  @type source_keyword() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_delegation_request() :: %{
        "comment" => String.t(),
        "controlSetId" => String.t(),
        "roleArn" => String.t(),
        "roleType" => list(any())
      }
      
  """
  @type create_delegation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_assessment_request() :: %{}
      
  """
  @type delete_assessment_request() :: %{}

  @typedoc """

  ## Example:
      
      get_services_in_scope_request() :: %{}
      
  """
  @type get_services_in_scope_request() :: %{}

  @typedoc """

  ## Example:
      
      update_assessment_status_response() :: %{
        "assessment" => assessment()
      }
      
  """
  @type update_assessment_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      change_log() :: %{
        "action" => list(any()),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "objectName" => String.t(),
        "objectType" => list(any())
      }
      
  """
  @type change_log() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      control_mapping_source() :: %{
        "sourceDescription" => String.t(),
        "sourceFrequency" => list(any()),
        "sourceId" => String.t(),
        "sourceKeyword" => source_keyword(),
        "sourceName" => String.t(),
        "sourceSetUpOption" => list(any()),
        "sourceType" => list(any()),
        "troubleshootingText" => String.t()
      }
      
  """
  @type control_mapping_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_assessment_reports_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_assessment_reports_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_assessment_report_response() :: %{}
      
  """
  @type delete_assessment_report_response() :: %{}

  @typedoc """

  ## Example:
      
      create_assessment_report_request() :: %{
        optional("description") => String.t(),
        optional("queryStatement") => String.t(),
        required("name") => String.t()
      }
      
  """
  @type create_assessment_report_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_account_status_request() :: %{}
      
  """
  @type get_account_status_request() :: %{}

  @typedoc """

  ## Example:
      
      get_assessment_framework_response() :: %{
        "framework" => framework()
      }
      
  """
  @type get_assessment_framework_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_evidence_folders_by_assessment_control_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type get_evidence_folders_by_assessment_control_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      assessment_framework() :: %{
        "arn" => String.t(),
        "controlSets" => list(assessment_control_set()()),
        "id" => String.t(),
        "metadata" => framework_metadata()
      }
      
  """
  @type assessment_framework() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_assessment_framework_share_response() :: %{
        "assessmentFrameworkShareRequest" => assessment_framework_share_request()
      }
      
  """
  @type update_assessment_framework_share_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delegation_metadata() :: %{
        "assessmentId" => String.t(),
        "assessmentName" => String.t(),
        "controlSetName" => String.t(),
        "creationTime" => non_neg_integer(),
        "id" => String.t(),
        "roleArn" => String.t(),
        "status" => list(any())
      }
      
  """
  @type delegation_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      control_insights_metadata_item() :: %{
        "evidenceInsights" => evidence_insights(),
        "id" => String.t(),
        "lastUpdated" => non_neg_integer(),
        "name" => String.t()
      }
      
  """
  @type control_insights_metadata_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_account_status_response() :: %{
        "status" => list(any())
      }
      
  """
  @type get_account_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_assessment_report_url_response() :: %{
        "preSignedUrl" => url()
      }
      
  """
  @type get_assessment_report_url_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource() :: %{
        "arn" => String.t(),
        "complianceCheck" => String.t(),
        "value" => String.t()
      }
      
  """
  @type resource() :: %{String.t() => any()}

  @type associate_assessment_report_evidence_folder_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type batch_associate_assessment_report_evidence_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type batch_create_delegation_by_assessment_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type batch_delete_delegation_by_assessment_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type batch_disassociate_assessment_report_evidence_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type batch_import_evidence_to_assessment_control_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_assessment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type create_assessment_framework_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type create_assessment_report_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_control_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type delete_assessment_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_assessment_framework_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_assessment_framework_share_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_assessment_report_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_control_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type deregister_account_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type deregister_organization_admin_account_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type disassociate_assessment_report_evidence_folder_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_account_status_errors() :: internal_server_exception()

  @type get_assessment_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_assessment_framework_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_assessment_report_url_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_change_logs_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_control_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_delegations_errors() ::
          validation_exception() | access_denied_exception() | internal_server_exception()

  @type get_evidence_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_evidence_by_evidence_folder_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_evidence_file_upload_url_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type get_evidence_folder_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_evidence_folders_by_assessment_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_evidence_folders_by_assessment_control_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_insights_errors() :: access_denied_exception() | internal_server_exception()

  @type get_insights_by_assessment_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_organization_admin_account_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_services_in_scope_errors() ::
          validation_exception() | access_denied_exception() | internal_server_exception()

  @type get_settings_errors() :: access_denied_exception() | internal_server_exception()

  @type list_assessment_control_insights_by_control_domain_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_assessment_framework_share_requests_errors() ::
          validation_exception() | access_denied_exception() | internal_server_exception()

  @type list_assessment_frameworks_errors() ::
          validation_exception() | access_denied_exception() | internal_server_exception()

  @type list_assessment_reports_errors() ::
          validation_exception() | access_denied_exception() | internal_server_exception()

  @type list_assessments_errors() ::
          validation_exception() | access_denied_exception() | internal_server_exception()

  @type list_control_domain_insights_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_control_domain_insights_by_assessment_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_control_insights_by_control_domain_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_controls_errors() ::
          validation_exception() | access_denied_exception() | internal_server_exception()

  @type list_keywords_for_data_source_errors() ::
          validation_exception() | access_denied_exception() | internal_server_exception()

  @type list_notifications_errors() ::
          validation_exception() | access_denied_exception() | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type register_account_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type register_organization_admin_account_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type start_assessment_framework_share_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type untag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type update_assessment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_assessment_control_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_assessment_control_set_status_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_assessment_framework_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_assessment_framework_share_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type update_assessment_status_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type update_control_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_settings_errors() ::
          validation_exception() | access_denied_exception() | internal_server_exception()

  @type validate_assessment_report_integrity_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2017-07-25",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "auditmanager",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "AuditManager",
      signature_version: "v4",
      signing_name: "auditmanager",
      target_prefix: nil
    }
  end

  @doc """
  Associates an evidence folder to an assessment report in an Audit Manager
  assessment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20AssociateAssessmentReportEvidenceFolder&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:assessment_id` (`t:string` required) The identifier for the assessment.
  """
  @spec associate_assessment_report_evidence_folder(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, associate_assessment_report_evidence_folder_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_assessment_report_evidence_folder_errors()}
  def associate_assessment_report_evidence_folder(
        %Client{} = client,
        assessment_id,
        options \\ []
      ) do
    url_path = "/assessments/#{AWS.Util.encode_uri(assessment_id)}/associateToAssessmentReport"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Associates a list of evidence to an assessment report in an Audit Manager
  assessment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20BatchAssociateAssessmentReportEvidence&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:assessment_id` (`t:string` required) The identifier for the assessment.
  """
  @spec batch_associate_assessment_report_evidence(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, batch_associate_assessment_report_evidence_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_associate_assessment_report_evidence_errors()}
  def batch_associate_assessment_report_evidence(%Client{} = client, assessment_id, options \\ []) do
    url_path =
      "/assessments/#{AWS.Util.encode_uri(assessment_id)}/batchAssociateToAssessmentReport"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates a batch of delegations for an assessment in Audit Manager.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20BatchCreateDelegationByAssessment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:assessment_id` (`t:string` required) The identifier for the assessment.
  """
  @spec batch_create_delegation_by_assessment(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, batch_create_delegation_by_assessment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_create_delegation_by_assessment_errors()}
  def batch_create_delegation_by_assessment(%Client{} = client, assessment_id, options \\ []) do
    url_path = "/assessments/#{AWS.Util.encode_uri(assessment_id)}/delegations"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Deletes a batch of delegations for an assessment in Audit Manager.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20BatchDeleteDelegationByAssessment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:assessment_id` (`t:string` required) The identifier for the assessment.
  """
  @spec batch_delete_delegation_by_assessment(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, batch_delete_delegation_by_assessment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_delete_delegation_by_assessment_errors()}
  def batch_delete_delegation_by_assessment(%Client{} = client, assessment_id, options \\ []) do
    url_path = "/assessments/#{AWS.Util.encode_uri(assessment_id)}/delegations"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Disassociates a list of evidence from an assessment report in Audit Manager.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20BatchDisassociateAssessmentReportEvidence&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:assessment_id` (`t:string` required) The identifier for the assessment.
  """
  @spec batch_disassociate_assessment_report_evidence(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, batch_disassociate_assessment_report_evidence_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_disassociate_assessment_report_evidence_errors()}
  def batch_disassociate_assessment_report_evidence(
        %Client{} = client,
        assessment_id,
        options \\ []
      ) do
    url_path =
      "/assessments/#{AWS.Util.encode_uri(assessment_id)}/batchDisassociateFromAssessmentReport"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Adds one or more pieces of evidence to a control in an Audit Manager assessment.
  You can import manual evidence from any S3 bucket by specifying the S3 URI of
  the object. You can also upload a file from your browser, or enter plain text
  in response to a risk assessment question.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20BatchImportEvidenceToAssessmentControl&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:assessment_id` (`t:string` required) The identifier for the assessment.
  * `:control_id` (`t:string` required) The identifier for the control.
  * `:control_set_id` (`t:string` required) The identifier for the control set.
  """
  @spec batch_import_evidence_to_assessment_control(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, batch_import_evidence_to_assessment_control_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_import_evidence_to_assessment_control_errors()}
  def batch_import_evidence_to_assessment_control(
        %Client{} = client,
        assessment_id,
        control_id,
        control_set_id,
        options \\ []
      ) do
    url_path =
      "/assessments/#{AWS.Util.encode_uri(assessment_id)}/controlSets/#{AWS.Util.encode_uri(control_set_id)}/controls/#{AWS.Util.encode_uri(control_id)}/evidence"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates an assessment in Audit Manager.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20CreateAssessment&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec create_assessment(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_assessment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_assessment_errors()}
  def create_assessment(%Client{} = client, options \\ []) do
    url_path = "/assessments"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates a custom framework in Audit Manager.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20CreateAssessmentFramework&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec create_assessment_framework(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_assessment_framework_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_assessment_framework_errors()}
  def create_assessment_framework(%Client{} = client, options \\ []) do
    url_path = "/assessmentFrameworks"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates an assessment report for the specified assessment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20CreateAssessmentReport&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:assessment_id` (`t:string` required) The identifier for the assessment.
  """
  @spec create_assessment_report(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_assessment_report_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_assessment_report_errors()}
  def create_assessment_report(%Client{} = client, assessment_id, options \\ []) do
    url_path = "/assessments/#{AWS.Util.encode_uri(assessment_id)}/reports"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates a new custom control in Audit Manager.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20CreateControl&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec create_control(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_control_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_control_errors()}
  def create_control(%Client{} = client, options \\ []) do
    url_path = "/controls"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Deletes an assessment in Audit Manager.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20DeleteAssessment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:assessment_id` (`t:string` required) The identifier for the assessment.
  """
  @spec delete_assessment(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_assessment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_assessment_errors()}
  def delete_assessment(%Client{} = client, assessment_id, options \\ []) do
    url_path = "/assessments/#{AWS.Util.encode_uri(assessment_id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Deletes a custom framework in Audit Manager.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20DeleteAssessmentFramework&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:framework_id` (`t:string` required) The identifier for the custom framework.
  """
  @spec delete_assessment_framework(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_assessment_framework_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_assessment_framework_errors()}
  def delete_assessment_framework(%Client{} = client, framework_id, options \\ []) do
    url_path = "/assessmentFrameworks/#{AWS.Util.encode_uri(framework_id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Deletes a share request for a custom framework in Audit Manager.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20DeleteAssessmentFrameworkShare&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:request_id` (`t:string` required) The unique identifier for the share
    request to be deleted.
  * `:request_type` (`t:enum["RECEIVED|SENT"]` required) Specifies whether the
    share request is a sent request or a received request.
  """
  @spec delete_assessment_framework_share(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_assessment_framework_share_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_assessment_framework_share_errors()}
  def delete_assessment_framework_share(
        %Client{} = client,
        request_id,
        request_type,
        options \\ []
      )
      when is_binary(request_type) do
    url_path = "/assessmentFrameworkShareRequests/#{AWS.Util.encode_uri(request_id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"requestType", request_type}]

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Deletes an assessment report in Audit Manager. When you run the
  `DeleteAssessmentReport` operation, Audit Manager attempts to delete the
  following data:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20DeleteAssessmentReport&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:assessment_id` (`t:string` required) The unique identifier for the
    assessment.
  * `:assessment_report_id` (`t:string` required) The unique identifier for the
    assessment report.
  """
  @spec delete_assessment_report(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_assessment_report_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_assessment_report_errors()}
  def delete_assessment_report(
        %Client{} = client,
        assessment_id,
        assessment_report_id,
        options \\ []
      ) do
    url_path =
      "/assessments/#{AWS.Util.encode_uri(assessment_id)}/reports/#{AWS.Util.encode_uri(assessment_report_id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Deletes a custom control in Audit Manager.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20DeleteControl&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:control_id` (`t:string` required) The unique identifier for the control.
  """
  @spec delete_control(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_control_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_control_errors()}
  def delete_control(%Client{} = client, control_id, options \\ []) do
    url_path = "/controls/#{AWS.Util.encode_uri(control_id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Deregisters an account in Audit Manager.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20DeregisterAccount&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec deregister_account(AWS.Client.t(), Keyword.t()) ::
          {:ok, deregister_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deregister_account_errors()}
  def deregister_account(%Client{} = client, options \\ []) do
    url_path = "/account/deregisterAccount"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Removes the specified Amazon Web Services account as a delegated administrator
  for Audit Manager. When you remove a delegated administrator from your Audit
  Manager settings, you continue to have access to the evidence that you
  previously collected under that account. This is also the case when you
  deregister a delegated administrator from Organizations. However, Audit
  Manager stops collecting and attaching evidence to that delegated
  administrator account moving forward.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20DeregisterOrganizationAdminAccount&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec deregister_organization_admin_account(AWS.Client.t(), Keyword.t()) ::
          {:ok, deregister_organization_admin_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deregister_organization_admin_account_errors()}
  def deregister_organization_admin_account(%Client{} = client, options \\ []) do
    url_path = "/account/deregisterOrganizationAdminAccount"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Disassociates an evidence folder from the specified assessment report in Audit
  Manager.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20DisassociateAssessmentReportEvidenceFolder&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:assessment_id` (`t:string` required) The unique identifier for the
    assessment.
  """
  @spec disassociate_assessment_report_evidence_folder(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, disassociate_assessment_report_evidence_folder_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_assessment_report_evidence_folder_errors()}
  def disassociate_assessment_report_evidence_folder(
        %Client{} = client,
        assessment_id,
        options \\ []
      ) do
    url_path =
      "/assessments/#{AWS.Util.encode_uri(assessment_id)}/disassociateFromAssessmentReport"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Gets the registration status of an account in Audit Manager.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20GetAccountStatus&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec get_account_status(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_account_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_account_status_errors()}
  def get_account_status(%Client{} = client, options \\ []) do
    url_path = "/account/status"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a specified assessment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20GetAssessment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:assessment_id` (`t:string` required) The unique identifier for the
    assessment.
  """
  @spec get_assessment(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_assessment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_assessment_errors()}
  def get_assessment(%Client{} = client, assessment_id, options \\ []) do
    url_path = "/assessments/#{AWS.Util.encode_uri(assessment_id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a specified framework.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20GetAssessmentFramework&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:framework_id` (`t:string` required) The identifier for the framework.
  """
  @spec get_assessment_framework(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_assessment_framework_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_assessment_framework_errors()}
  def get_assessment_framework(%Client{} = client, framework_id, options \\ []) do
    url_path = "/assessmentFrameworks/#{AWS.Util.encode_uri(framework_id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the URL of an assessment report in Audit Manager.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20GetAssessmentReportUrl&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:assessment_id` (`t:string` required) The unique identifier for the
    assessment.
  * `:assessment_report_id` (`t:string` required) The unique identifier for the
    assessment report.
  """
  @spec get_assessment_report_url(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_assessment_report_url_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_assessment_report_url_errors()}
  def get_assessment_report_url(
        %Client{} = client,
        assessment_id,
        assessment_report_id,
        options \\ []
      ) do
    url_path =
      "/assessments/#{AWS.Util.encode_uri(assessment_id)}/reports/#{AWS.Util.encode_uri(assessment_report_id)}/url"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a list of changelogs from Audit Manager.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20GetChangeLogs&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:assessment_id` (`t:string` required) The unique identifier for the
    assessment.

  ## Keyword parameters:
  * `:control_id` (`t:string`) The unique identifier for the control.
  * `:control_set_id` (`t:string`) The unique identifier for the control set.
  * `:max_results` (`t:integer`) Represents the maximum number of results on a
    page or for an API request call.
  * `:next_token` (`t:string`) The pagination token that's used to fetch the next
    set of results.
  """
  @spec get_change_logs(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_change_logs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_change_logs_errors()}
  def get_change_logs(%Client{} = client, assessment_id, options \\ []) do
    url_path = "/assessments/#{AWS.Util.encode_uri(assessment_id)}/changelogs"

    # Validate optional parameters
    optional_params = [control_id: nil, control_set_id: nil, max_results: nil, next_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :control_set_id) do
        [{"controlSetId", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :control_id) do
        [{"controlId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:control_id, :control_set_id, :max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a specified control.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20GetControl&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:control_id` (`t:string` required) The identifier for the control.
  """
  @spec get_control(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_control_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_control_errors()}
  def get_control(%Client{} = client, control_id, options \\ []) do
    url_path = "/controls/#{AWS.Util.encode_uri(control_id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a list of delegations from an audit owner to a delegate.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20GetDelegations&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:max_results` (`t:integer`) Represents the maximum number of results on a
    page or for an API request call.
  * `:next_token` (`t:string`) The pagination token that's used to fetch the next
    set of results.
  """
  @spec get_delegations(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_delegations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_delegations_errors()}
  def get_delegations(%Client{} = client, options \\ []) do
    url_path = "/delegations"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a specified evidence item.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20GetEvidence&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:assessment_id` (`t:string` required) The unique identifier for the
    assessment.
  * `:control_set_id` (`t:string` required) The unique identifier for the control
    set.
  * `:evidence_folder_id` (`t:string` required) The unique identifier for the
    folder that the evidence is stored in.
  * `:evidence_id` (`t:string` required) The unique identifier for the evidence.
  """
  @spec get_evidence(AWS.Client.t(), String.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_evidence_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_evidence_errors()}
  def get_evidence(
        %Client{} = client,
        assessment_id,
        control_set_id,
        evidence_folder_id,
        evidence_id,
        options \\ []
      ) do
    url_path =
      "/assessments/#{AWS.Util.encode_uri(assessment_id)}/controlSets/#{AWS.Util.encode_uri(control_set_id)}/evidenceFolders/#{AWS.Util.encode_uri(evidence_folder_id)}/evidence/#{AWS.Util.encode_uri(evidence_id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets all evidence from a specified evidence folder in Audit Manager.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20GetEvidenceByEvidenceFolder&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:assessment_id` (`t:string` required) The identifier for the assessment.
  * `:control_set_id` (`t:string` required) The identifier for the control set.
  * `:evidence_folder_id` (`t:string` required) The unique identifier for the
    folder that the evidence is stored in.

  ## Keyword parameters:
  * `:max_results` (`t:integer`) Represents the maximum number of results on a
    page or for an API request call.
  * `:next_token` (`t:string`) The pagination token that's used to fetch the next
    set of results.
  """
  @spec get_evidence_by_evidence_folder(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, get_evidence_by_evidence_folder_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_evidence_by_evidence_folder_errors()}
  def get_evidence_by_evidence_folder(
        %Client{} = client,
        assessment_id,
        control_set_id,
        evidence_folder_id,
        options \\ []
      ) do
    url_path =
      "/assessments/#{AWS.Util.encode_uri(assessment_id)}/controlSets/#{AWS.Util.encode_uri(control_set_id)}/evidenceFolders/#{AWS.Util.encode_uri(evidence_folder_id)}/evidence"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Creates a presigned Amazon S3 URL that can be used to upload a file as manual
  evidence. For instructions on how to use this operation, see [Upload a file
  from your browser
  ](https://docs.aws.amazon.com/audit-manager/latest/userguide/upload-evidence.html#how-to-upload-manual-evidence-files)
  in the *Audit Manager User Guide*. The following restrictions apply to this
  operation:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20GetEvidenceFileUploadUrl&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:file_name` (`t:string` required) The file that you want to upload. For a
    list of supported file formats, see Supported file types for manual evidence
    in the Audit Manager User Guide.
  """
  @spec get_evidence_file_upload_url(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_evidence_file_upload_url_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_evidence_file_upload_url_errors()}
  def get_evidence_file_upload_url(%Client{} = client, file_name, options \\ [])
      when is_binary(file_name) do
    url_path = "/evidenceFileUploadUrl"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"fileName", file_name}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an evidence folder from a specified assessment in Audit Manager.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20GetEvidenceFolder&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:assessment_id` (`t:string` required) The unique identifier for the
    assessment.
  * `:control_set_id` (`t:string` required) The unique identifier for the control
    set.
  * `:evidence_folder_id` (`t:string` required) The unique identifier for the
    folder that the evidence is stored in.
  """
  @spec get_evidence_folder(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_evidence_folder_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_evidence_folder_errors()}
  def get_evidence_folder(
        %Client{} = client,
        assessment_id,
        control_set_id,
        evidence_folder_id,
        options \\ []
      ) do
    url_path =
      "/assessments/#{AWS.Util.encode_uri(assessment_id)}/controlSets/#{AWS.Util.encode_uri(control_set_id)}/evidenceFolders/#{AWS.Util.encode_uri(evidence_folder_id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the evidence folders from a specified assessment in Audit Manager.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20GetEvidenceFoldersByAssessment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:assessment_id` (`t:string` required) The unique identifier for the
    assessment.

  ## Keyword parameters:
  * `:max_results` (`t:integer`) Represents the maximum number of results on a
    page or for an API request call.
  * `:next_token` (`t:string`) The pagination token that's used to fetch the next
    set of results.
  """
  @spec get_evidence_folders_by_assessment(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_evidence_folders_by_assessment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_evidence_folders_by_assessment_errors()}
  def get_evidence_folders_by_assessment(%Client{} = client, assessment_id, options \\ []) do
    url_path = "/assessments/#{AWS.Util.encode_uri(assessment_id)}/evidenceFolders"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a list of evidence folders that are associated with a specified control in
  an Audit Manager assessment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20GetEvidenceFoldersByAssessmentControl&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:assessment_id` (`t:string` required) The identifier for the assessment.
  * `:control_id` (`t:string` required) The identifier for the control.
  * `:control_set_id` (`t:string` required) The identifier for the control set.

  ## Keyword parameters:
  * `:max_results` (`t:integer`) Represents the maximum number of results on a
    page or for an API request call.
  * `:next_token` (`t:string`) The pagination token that's used to fetch the next
    set of results.
  """
  @spec get_evidence_folders_by_assessment_control(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, get_evidence_folders_by_assessment_control_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_evidence_folders_by_assessment_control_errors()}
  def get_evidence_folders_by_assessment_control(
        %Client{} = client,
        assessment_id,
        control_id,
        control_set_id,
        options \\ []
      ) do
    url_path =
      "/assessments/#{AWS.Util.encode_uri(assessment_id)}/evidenceFolders-by-assessment-control/#{AWS.Util.encode_uri(control_set_id)}/#{AWS.Util.encode_uri(control_id)}"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the latest analytics data for all your current active assessments.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20GetInsights&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec get_insights(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_insights_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_insights_errors()}
  def get_insights(%Client{} = client, options \\ []) do
    url_path = "/insights"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the latest analytics data for a specific active assessment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20GetInsightsByAssessment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:assessment_id` (`t:string` required) The unique identifier for the
    assessment.
  """
  @spec get_insights_by_assessment(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_insights_by_assessment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_insights_by_assessment_errors()}
  def get_insights_by_assessment(%Client{} = client, assessment_id, options \\ []) do
    url_path = "/insights/assessments/#{AWS.Util.encode_uri(assessment_id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the name of the delegated Amazon Web Services administrator account for a
  specified organization.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20GetOrganizationAdminAccount&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec get_organization_admin_account(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_organization_admin_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_organization_admin_account_errors()}
  def get_organization_admin_account(%Client{} = client, options \\ []) do
    url_path = "/account/organizationAdminAccount"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a list of the Amazon Web Services from which Audit Manager can collect
  evidence. Audit Manager defines which Amazon Web Services are in scope for an
  assessment. Audit Manager infers this scope by examining the assessment’s
  controls and their data sources, and then mapping this information to one or
  more of the corresponding Amazon Web Services that are in this list.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20GetServicesInScope&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec get_services_in_scope(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_services_in_scope_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_services_in_scope_errors()}
  def get_services_in_scope(%Client{} = client, options \\ []) do
    url_path = "/services"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the settings for a specified Amazon Web Services account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20GetSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:attribute`
    (`t:enum["ALL|DEFAULT_ASSESSMENT_REPORTS_DESTINATION|DEFAULT_EXPORT_DESTINATION|DEFAULT_PROCESS_OWNERS|DEREGISTRATION_POLICY|EVIDENCE_FINDER_ENABLEMENT|IS_AWS_ORG_ENABLED|SNS_TOPIC"]`
    required) The list of setting attribute enum values.
  """
  @spec get_settings(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_settings_errors()}
  def get_settings(%Client{} = client, attribute, options \\ []) do
    url_path = "/settings/#{AWS.Util.encode_uri(attribute)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the latest analytics data for controls within a specific control domain
  and a specific active assessment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20ListAssessmentControlInsightsByControlDomain&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:assessment_id` (`t:string` required) The unique identifier for the active
    assessment.
  * `:control_domain_id` (`t:string` required) The unique identifier for the
    control domain.

  ## Keyword parameters:
  * `:max_results` (`t:integer`) Represents the maximum number of results on a
    page or for an API request call.
  * `:next_token` (`t:string`) The pagination token that's used to fetch the next
    set of results.
  """
  @spec list_assessment_control_insights_by_control_domain(
          AWS.Client.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, list_assessment_control_insights_by_control_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_assessment_control_insights_by_control_domain_errors()}
  def list_assessment_control_insights_by_control_domain(
        %Client{} = client,
        assessment_id,
        control_domain_id,
        options \\ []
      )
      when is_binary(assessment_id) and is_binary(control_domain_id) do
    url_path = "/insights/controls-by-assessment"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"assessmentId", assessment_id}, {"controlDomainId", control_domain_id}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of sent or received share requests for custom frameworks in Audit
  Manager.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20ListAssessmentFrameworkShareRequests&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:request_type` (`t:enum["RECEIVED|SENT"]` required) Specifies whether the
    share request is a sent request or a received request.

  ## Keyword parameters:
  * `:max_results` (`t:integer`) Represents the maximum number of results on a
    page or for an API request call.
  * `:next_token` (`t:string`) The pagination token that's used to fetch the next
    set of results.
  """
  @spec list_assessment_framework_share_requests(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_assessment_framework_share_requests_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_assessment_framework_share_requests_errors()}
  def list_assessment_framework_share_requests(%Client{} = client, request_type, options \\ [])
      when is_binary(request_type) do
    url_path = "/assessmentFrameworkShareRequests"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"requestType", request_type}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of the frameworks that are available in the Audit Manager
  framework library.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20ListAssessmentFrameworks&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:framework_type` (`t:enum["CUSTOM|STANDARD"]` required) The type of
    framework, such as a standard framework or a custom framework.

  ## Keyword parameters:
  * `:max_results` (`t:integer`) Represents the maximum number of results on a
    page or for an API request call.
  * `:next_token` (`t:string`) The pagination token that's used to fetch the next
    set of results.
  """
  @spec list_assessment_frameworks(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_assessment_frameworks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_assessment_frameworks_errors()}
  def list_assessment_frameworks(%Client{} = client, framework_type, options \\ [])
      when is_binary(framework_type) do
    url_path = "/assessmentFrameworks"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"frameworkType", framework_type}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of assessment reports created in Audit Manager.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20ListAssessmentReports&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:max_results` (`t:integer`) Represents the maximum number of results on a
    page or for an API request call.
  * `:next_token` (`t:string`) The pagination token that's used to fetch the next
    set of results.
  """
  @spec list_assessment_reports(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_assessment_reports_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_assessment_reports_errors()}
  def list_assessment_reports(%Client{} = client, options \\ []) do
    url_path = "/assessmentReports"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of current and past assessments from Audit Manager.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20ListAssessments&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:max_results` (`t:integer`) Represents the maximum number of results on a
    page or for an API request call.
  * `:next_token` (`t:string`) The pagination token that's used to fetch the next
    set of results.
  * `:status` (`t:enum["ACTIVE|INACTIVE"]`) The current status of the assessment.
  """
  @spec list_assessments(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_assessments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_assessments_errors()}
  def list_assessments(%Client{} = client, options \\ []) do
    url_path = "/assessments"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, status: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :status) do
        [{"status", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token, :status])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the latest analytics data for control domains across all of your active
  assessments. Audit Manager supports the control domains that are provided by
  Amazon Web Services Control Catalog. For information about how to find a list
  of available control domains, see [ `ListDomains`
  ](https://docs.aws.amazon.com/controlcatalog/latest/APIReference/API_ListDomains.html)
  in the Amazon Web Services Control Catalog API Reference.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20ListControlDomainInsights&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:max_results` (`t:integer`) Represents the maximum number of results on a
    page or for an API request call.
  * `:next_token` (`t:string`) The pagination token that's used to fetch the next
    set of results.
  """
  @spec list_control_domain_insights(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_control_domain_insights_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_control_domain_insights_errors()}
  def list_control_domain_insights(%Client{} = client, options \\ []) do
    url_path = "/insights/control-domains"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists analytics data for control domains within a specified active assessment.
  Audit Manager supports the control domains that are provided by Amazon Web
  Services Control Catalog. For information about how to find a list of
  available control domains, see [ `ListDomains`
  ](https://docs.aws.amazon.com/controlcatalog/latest/APIReference/API_ListDomains.html)
  in the Amazon Web Services Control Catalog API Reference.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20ListControlDomainInsightsByAssessment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:assessment_id` (`t:string` required) The unique identifier for the active
    assessment.

  ## Keyword parameters:
  * `:max_results` (`t:integer`) Represents the maximum number of results on a
    page or for an API request call.
  * `:next_token` (`t:string`) The pagination token that's used to fetch the next
    set of results.
  """
  @spec list_control_domain_insights_by_assessment(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_control_domain_insights_by_assessment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_control_domain_insights_by_assessment_errors()}
  def list_control_domain_insights_by_assessment(%Client{} = client, assessment_id, options \\ [])
      when is_binary(assessment_id) do
    url_path = "/insights/control-domains-by-assessment"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"assessmentId", assessment_id}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the latest analytics data for controls within a specific control domain
  across all active assessments.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20ListControlInsightsByControlDomain&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:control_domain_id` (`t:string` required) The unique identifier for the
    control domain.

  ## Keyword parameters:
  * `:max_results` (`t:integer`) Represents the maximum number of results on a
    page or for an API request call.
  * `:next_token` (`t:string`) The pagination token that's used to fetch the next
    set of results.
  """
  @spec list_control_insights_by_control_domain(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_control_insights_by_control_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_control_insights_by_control_domain_errors()}
  def list_control_insights_by_control_domain(
        %Client{} = client,
        control_domain_id,
        options \\ []
      )
      when is_binary(control_domain_id) do
    url_path = "/insights/controls"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"controlDomainId", control_domain_id}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of controls from Audit Manager.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20ListControls&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:control_type` (`t:enum["CORE|CUSTOM|STANDARD"]` required) A filter that
    narrows the list of controls to a specific type.

  ## Keyword parameters:
  * `:control_catalog_id` (`t:string`) A filter that narrows the list of controls
    to a specific resource from the Amazon Web Services Control Catalog.
  * `:max_results` (`t:integer`) The maximum number of results on a page or for an
    API request call.
  * `:next_token` (`t:string`) The pagination token that's used to fetch the next
    set of results.
  """
  @spec list_controls(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_controls_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_controls_errors()}
  def list_controls(%Client{} = client, control_type, options \\ [])
      when is_binary(control_type) do
    url_path = "/controls"

    # Validate optional parameters
    optional_params = [control_catalog_id: nil, max_results: nil, next_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"controlType", control_type}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :control_catalog_id) do
        [{"controlCatalogId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:control_catalog_id, :max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of keywords that are pre-mapped to the specified control data
  source.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20ListKeywordsForDataSource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:source`
    (`t:enum["AWS_API_CALL|AWS_CLOUDTRAIL|AWS_CONFIG|AWS_SECURITY_HUB|MANUAL"]`
    required) The control mapping data source that the keywords apply to.

  ## Keyword parameters:
  * `:max_results` (`t:integer`) Represents the maximum number of results on a
    page or for an API request call.
  * `:next_token` (`t:string`) The pagination token that's used to fetch the next
    set of results.
  """
  @spec list_keywords_for_data_source(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_keywords_for_data_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_keywords_for_data_source_errors()}
  def list_keywords_for_data_source(%Client{} = client, source, options \\ [])
      when is_binary(source) do
    url_path = "/dataSourceKeywords"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"source", source}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of all Audit Manager notifications.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20ListNotifications&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:max_results` (`t:integer`) Represents the maximum number of results on a
    page or for an API request call.
  * `:next_token` (`t:string`) The pagination token that's used to fetch the next
    set of results.
  """
  @spec list_notifications(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_notifications_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_notifications_errors()}
  def list_notifications(%Client{} = client, options \\ []) do
    url_path = "/notifications"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of tags for the specified resource in Audit Manager.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
    resource.
  """
  @spec list_tags_for_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Enables Audit Manager for the specified Amazon Web Services account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20RegisterAccount&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec register_account(AWS.Client.t(), Keyword.t()) ::
          {:ok, register_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_account_errors()}
  def register_account(%Client{} = client, options \\ []) do
    url_path = "/account/registerAccount"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Enables an Amazon Web Services account within the organization as the delegated
  administrator for Audit Manager.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20RegisterOrganizationAdminAccount&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec register_organization_admin_account(AWS.Client.t(), Keyword.t()) ::
          {:ok, register_organization_admin_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_organization_admin_account_errors()}
  def register_organization_admin_account(%Client{} = client, options \\ []) do
    url_path = "/account/registerOrganizationAdminAccount"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates a share request for a custom framework in Audit Manager. The share
  request specifies a recipient and notifies them that a custom framework is
  available. Recipients have 120 days to accept or decline the request. If no
  action is taken, the share request expires.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20StartAssessmentFrameworkShare&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:framework_id` (`t:string` required) The unique identifier for the custom
    framework to be shared.
  """
  @spec start_assessment_framework_share(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, start_assessment_framework_share_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_assessment_framework_share_errors()}
  def start_assessment_framework_share(%Client{} = client, framework_id, options \\ []) do
    url_path = "/assessmentFrameworks/#{AWS.Util.encode_uri(framework_id)}/shareRequests"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Tags the specified resource in Audit Manager.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
    resource.
  """
  @spec tag_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Removes a tag from a resource in Audit Manager.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
    specified resource.
  * `:tag_keys` (`t:list[com.amazonaws.auditmanager#TagKey]` required) The name or
    key of the tag.
  """
  @spec untag_resource(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, tag_keys, options \\ [])
      when is_binary(tag_keys) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"tagKeys", tag_keys}]

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Edits an Audit Manager assessment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20UpdateAssessment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:assessment_id` (`t:string` required) The unique identifier for the
    assessment.
  """
  @spec update_assessment(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_assessment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_assessment_errors()}
  def update_assessment(%Client{} = client, assessment_id, options \\ []) do
    url_path = "/assessments/#{AWS.Util.encode_uri(assessment_id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates a control within an assessment in Audit Manager.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20UpdateAssessmentControl&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:assessment_id` (`t:string` required) The unique identifier for the
    assessment.
  * `:control_id` (`t:string` required) The unique identifier for the control.
  * `:control_set_id` (`t:string` required) The unique identifier for the control
    set.
  """
  @spec update_assessment_control(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_assessment_control_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_assessment_control_errors()}
  def update_assessment_control(
        %Client{} = client,
        assessment_id,
        control_id,
        control_set_id,
        options \\ []
      ) do
    url_path =
      "/assessments/#{AWS.Util.encode_uri(assessment_id)}/controlSets/#{AWS.Util.encode_uri(control_set_id)}/controls/#{AWS.Util.encode_uri(control_id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates the status of a control set in an Audit Manager assessment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20UpdateAssessmentControlSetStatus&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:assessment_id` (`t:string` required) The unique identifier for the
    assessment.
  * `:control_set_id` (`t:string` required) The unique identifier for the control
    set.
  """
  @spec update_assessment_control_set_status(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_assessment_control_set_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_assessment_control_set_status_errors()}
  def update_assessment_control_set_status(
        %Client{} = client,
        assessment_id,
        control_set_id,
        options \\ []
      ) do
    url_path =
      "/assessments/#{AWS.Util.encode_uri(assessment_id)}/controlSets/#{AWS.Util.encode_uri(control_set_id)}/status"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates a custom framework in Audit Manager.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20UpdateAssessmentFramework&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:framework_id` (`t:string` required) The unique identifier for the framework.
  """
  @spec update_assessment_framework(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_assessment_framework_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_assessment_framework_errors()}
  def update_assessment_framework(%Client{} = client, framework_id, options \\ []) do
    url_path = "/assessmentFrameworks/#{AWS.Util.encode_uri(framework_id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates a share request for a custom framework in Audit Manager.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20UpdateAssessmentFrameworkShare&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:request_id` (`t:string` required) The unique identifier for the share
    request.
  """
  @spec update_assessment_framework_share(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_assessment_framework_share_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_assessment_framework_share_errors()}
  def update_assessment_framework_share(%Client{} = client, request_id, options \\ []) do
    url_path = "/assessmentFrameworkShareRequests/#{AWS.Util.encode_uri(request_id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates the status of an assessment in Audit Manager.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20UpdateAssessmentStatus&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:assessment_id` (`t:string` required) The unique identifier for the
    assessment.
  """
  @spec update_assessment_status(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_assessment_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_assessment_status_errors()}
  def update_assessment_status(%Client{} = client, assessment_id, options \\ []) do
    url_path = "/assessments/#{AWS.Util.encode_uri(assessment_id)}/status"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates a custom control in Audit Manager.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20UpdateControl&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:control_id` (`t:string` required) The identifier for the control.
  """
  @spec update_control(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_control_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_control_errors()}
  def update_control(%Client{} = client, control_id, options \\ []) do
    url_path = "/controls/#{AWS.Util.encode_uri(control_id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates Audit Manager settings for the current account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20UpdateSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec update_settings(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_settings_errors()}
  def update_settings(%Client{} = client, options \\ []) do
    url_path = "/settings"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Validates the integrity of an assessment report in Audit Manager.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=auditmanager%20ValidateAssessmentReportIntegrity&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec validate_assessment_report_integrity(AWS.Client.t(), Keyword.t()) ::
          {:ok, validate_assessment_report_integrity_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, validate_assessment_report_integrity_errors()}
  def validate_assessment_report_integrity(%Client{} = client, options \\ []) do
    url_path = "/assessmentReports/integrity"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end
end
