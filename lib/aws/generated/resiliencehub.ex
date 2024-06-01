# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Resiliencehub do
  @moduledoc """
  Resilience Hub helps you proactively prepare and protect your Amazon Web
  Services applications from disruptions. It offers continual resiliency
  assessment and validation that integrates into your software development
  lifecycle. This enables you to uncover resiliency weaknesses, ensure recovery
  time objective (RTO) and recovery point objective (RPO) targets for your
  applications are met, and resolve issues before they are released into
  production.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      app() :: %{
        "appArn" => String.t(),
        "assessmentSchedule" => String.t(),
        "complianceStatus" => String.t(),
        "creationTime" => non_neg_integer(),
        "description" => String.t(),
        "driftStatus" => String.t(),
        "eventSubscriptions" => list(event_subscription()()),
        "lastAppComplianceEvaluationTime" => non_neg_integer(),
        "lastDriftEvaluationTime" => non_neg_integer(),
        "lastResiliencyScoreEvaluationTime" => non_neg_integer(),
        "name" => String.t(),
        "permissionModel" => permission_model(),
        "policyArn" => String.t(),
        "resiliencyScore" => float(),
        "rpoInSecs" => integer(),
        "rtoInSecs" => integer(),
        "status" => String.t(),
        "tags" => map()
      }

  """
  @type app() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_update_recommendation_status_request() :: %{
        required("appArn") => String.t(),
        required("requestEntries") => list(update_recommendation_status_request_entry()())
      }

  """
  @type batch_update_recommendation_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_app_component_compliances_response() :: %{
        optional("nextToken") => String.t(),
        required("componentCompliances") => list(app_component_compliance()())
      }

  """
  @type list_app_component_compliances_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_app_version_resources_resolution_status_request() :: %{
        optional("resolutionId") => String.t(),
        required("appArn") => String.t(),
        required("appVersion") => String.t()
      }

  """
  @type describe_app_version_resources_resolution_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_apps_response() :: %{
        optional("nextToken") => String.t(),
        required("appSummaries") => list(app_summary()())
      }

  """
  @type list_apps_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_app_component_recommendations_response() :: %{
        optional("nextToken") => String.t(),
        required("componentRecommendations") => list(component_recommendation()())
      }

  """
  @type list_app_component_recommendations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_app_version_resource_request() :: %{
        optional("awsAccountId") => String.t(),
        optional("awsRegion") => String.t(),
        optional("logicalResourceId") => logical_resource_id(),
        optional("physicalResourceId") => String.t(),
        optional("resourceName") => String.t(),
        required("appArn") => String.t(),
        required("appVersion") => String.t()
      }

  """
  @type describe_app_version_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_app_component_recommendations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("assessmentArn") => String.t()
      }

  """
  @type list_app_component_recommendations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      add_draft_app_version_resource_mappings_response() :: %{
        required("appArn") => String.t(),
        required("appVersion") => String.t(),
        required("resourceMappings") => list(resource_mapping()())
      }

  """
  @type add_draft_app_version_resource_mappings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_app_request() :: %{
        optional("assessmentSchedule") => String.t(),
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("eventSubscriptions") => list(event_subscription()()),
        optional("permissionModel") => permission_model(),
        optional("policyArn") => String.t(),
        optional("tags") => map(),
        required("name") => String.t()
      }

  """
  @type create_app_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_app_version_resources_response() :: %{
        optional("nextToken") => String.t(),
        required("physicalResources") => list(physical_resource()()),
        required("resolutionId") => String.t()
      }

  """
  @type list_app_version_resources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_app_response() :: %{
        required("appArn") => String.t()
      }

  """
  @type delete_app_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_app_version_app_component_response() :: %{
        optional("appComponent") => app_component(),
        required("appArn") => String.t(),
        required("appVersion") => String.t()
      }

  """
  @type create_app_version_app_component_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_app_assessments_request() :: %{
        optional("appArn") => String.t(),
        optional("assessmentName") => String.t(),
        optional("assessmentStatus") => list(String.t()()),
        optional("complianceStatus") => String.t(),
        optional("invoker") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("reverseOrder") => boolean()
      }

  """
  @type list_app_assessments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_app_versions_response() :: %{
        optional("nextToken") => String.t(),
        required("appVersions") => list(app_version_summary()())
      }

  """
  @type list_app_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      remove_draft_app_version_resource_mappings_response() :: %{
        optional("appArn") => String.t(),
        optional("appVersion") => String.t()
      }

  """
  @type remove_draft_app_version_resource_mappings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resolve_app_version_resources_request() :: %{
        required("appArn") => String.t(),
        required("appVersion") => String.t()
      }

  """
  @type resolve_app_version_resources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      update_app_version_app_component_request() :: %{
        optional("additionalInfo") => map(),
        optional("name") => String.t(),
        optional("type") => String.t(),
        required("appArn") => String.t(),
        required("id") => String.t()
      }

  """
  @type update_app_version_app_component_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_draft_app_version_template_request() :: %{
        required("appArn") => String.t(),
        required("appTemplateBody") => String.t()
      }

  """
  @type put_draft_app_version_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_mapping() :: %{
        "appRegistryAppName" => String.t(),
        "eksSourceName" => String.t(),
        "logicalStackName" => String.t(),
        "mappingType" => String.t(),
        "physicalResourceId" => physical_resource_id(),
        "resourceGroupName" => String.t(),
        "resourceName" => String.t(),
        "terraformSourceName" => String.t()
      }

  """
  @type resource_mapping() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_unsupported_app_version_resources_response() :: %{
        optional("nextToken") => String.t(),
        required("resolutionId") => String.t(),
        required("unsupportedResources") => list(unsupported_resource()())
      }

  """
  @type list_unsupported_app_version_resources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resiliency_score() :: %{
        "componentScore" => map(),
        "disruptionScore" => map(),
        "score" => float()
      }

  """
  @type resiliency_score() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unsupported_resource() :: %{
        "logicalResourceId" => logical_resource_id(),
        "physicalResourceId" => physical_resource_id(),
        "resourceType" => String.t(),
        "unsupportedResourceStatus" => String.t()
      }

  """
  @type unsupported_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_app_version_resource_request() :: %{
        optional("additionalInfo") => map(),
        optional("awsAccountId") => String.t(),
        optional("awsRegion") => String.t(),
        optional("clientToken") => String.t(),
        optional("resourceName") => String.t(),
        required("appArn") => String.t(),
        required("appComponents") => list(String.t()()),
        required("logicalResourceId") => logical_resource_id(),
        required("physicalResourceId") => String.t(),
        required("resourceType") => String.t()
      }

  """
  @type create_app_version_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      config_recommendation() :: %{
        "appComponentName" => String.t(),
        "compliance" => map(),
        "cost" => cost(),
        "description" => String.t(),
        "haArchitecture" => String.t(),
        "name" => String.t(),
        "optimizationType" => String.t(),
        "recommendationCompliance" => map(),
        "referenceId" => String.t(),
        "suggestedChanges" => list(String.t()())
      }

  """
  @type config_recommendation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      event_subscription() :: %{
        "eventType" => String.t(),
        "name" => String.t(),
        "snsTopicArn" => String.t()
      }

  """
  @type event_subscription() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_app_version_template_request() :: %{
        required("appArn") => String.t(),
        required("appVersion") => String.t()
      }

  """
  @type describe_app_version_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      import_resources_to_draft_app_version_request() :: %{
        optional("eksSources") => list(eks_source()()),
        optional("importStrategy") => String.t(),
        optional("sourceArns") => list(String.t()()),
        optional("terraformSources") => list(terraform_source()()),
        required("appArn") => String.t()
      }

  """
  @type import_resources_to_draft_app_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_app_input_source_response() :: %{
        optional("appArn") => String.t(),
        optional("appInputSource") => app_input_source()
      }

  """
  @type delete_app_input_source_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_app_assessment_request() :: %{
        optional("clientToken") => String.t(),
        optional("tags") => map(),
        required("appArn") => String.t(),
        required("appVersion") => String.t(),
        required("assessmentName") => String.t()
      }

  """
  @type start_app_assessment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_app_version_app_components_response() :: %{
        optional("appComponents") => list(app_component()()),
        optional("nextToken") => String.t(),
        required("appArn") => String.t(),
        required("appVersion") => String.t()
      }

  """
  @type list_app_version_app_components_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_update_recommendation_status_response() :: %{
        "appArn" => String.t(),
        "failedEntries" => list(batch_update_recommendation_status_failed_entry()()),
        "successfulEntries" => list(batch_update_recommendation_status_successful_entry()())
      }

  """
  @type batch_update_recommendation_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_unsupported_app_version_resources_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("resolutionId") => String.t(),
        required("appArn") => String.t(),
        required("appVersion") => String.t()
      }

  """
  @type list_unsupported_app_version_resources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_app_input_sources_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("appArn") => String.t(),
        required("appVersion") => String.t()
      }

  """
  @type list_app_input_sources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_test_recommendations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("assessmentArn") => String.t()
      }

  """
  @type list_test_recommendations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      failure_policy() :: %{
        "rpoInSecs" => integer(),
        "rtoInSecs" => integer()
      }

  """
  @type failure_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_recommendation_template_response() :: %{
        optional("recommendationTemplate") => recommendation_template()
      }

  """
  @type create_recommendation_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_app_response() :: %{
        required("app") => app()
      }

  """
  @type describe_app_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disruption_compliance() :: %{
        "achievableRpoInSecs" => integer(),
        "achievableRtoInSecs" => integer(),
        "complianceStatus" => String.t(),
        "currentRpoInSecs" => integer(),
        "currentRtoInSecs" => integer(),
        "message" => String.t(),
        "rpoDescription" => String.t(),
        "rpoReferenceId" => String.t(),
        "rtoDescription" => String.t(),
        "rtoReferenceId" => String.t()
      }

  """
  @type disruption_compliance() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_resiliency_policies_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("policyName") => String.t()
      }

  """
  @type list_resiliency_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_recommendation_status_request_entry() :: %{
        "entryId" => String.t(),
        "excludeReason" => String.t(),
        "excluded" => boolean(),
        "item" => update_recommendation_status_item(),
        "referenceId" => String.t()
      }

  """
  @type update_recommendation_status_request_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      terraform_source() :: %{
        "s3StateFileUrl" => String.t()
      }

  """
  @type terraform_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_app_version_resources_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("resolutionId") => String.t(),
        required("appArn") => String.t(),
        required("appVersion") => String.t()
      }

  """
  @type list_app_version_resources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_errors_details() :: %{
        "hasMoreErrors" => boolean(),
        "resourceErrors" => list(resource_error()())
      }

  """
  @type resource_errors_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      component_recommendation() :: %{
        "appComponentName" => String.t(),
        "configRecommendations" => list(config_recommendation()()),
        "recommendationStatus" => String.t()
      }

  """
  @type component_recommendation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_app_version_resource_response() :: %{
        optional("physicalResource") => physical_resource(),
        required("appArn") => String.t(),
        required("appVersion") => String.t()
      }

  """
  @type create_app_version_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      logical_resource_id() :: %{
        "eksSourceName" => String.t(),
        "identifier" => String.t(),
        "logicalStackName" => String.t(),
        "resourceGroupName" => String.t(),
        "terraformSourceName" => String.t()
      }

  """
  @type logical_resource_id() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_app_version_resource_response() :: %{
        optional("physicalResource") => physical_resource(),
        required("appArn") => String.t(),
        required("appVersion") => String.t()
      }

  """
  @type delete_app_version_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_app_assessment_request() :: %{
        required("assessmentArn") => String.t()
      }

  """
  @type describe_app_assessment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      recommendation_item() :: %{
        "alreadyImplemented" => boolean(),
        "excludeReason" => String.t(),
        "excluded" => boolean(),
        "resourceId" => String.t(),
        "targetAccountId" => String.t(),
        "targetRegion" => String.t()
      }

  """
  @type recommendation_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_app_version_resource_mappings_response() :: %{
        optional("nextToken") => String.t(),
        required("resourceMappings") => list(resource_mapping()())
      }

  """
  @type list_app_version_resource_mappings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_app_version_resource_response() :: %{
        optional("physicalResource") => physical_resource(),
        required("appArn") => String.t(),
        required("appVersion") => String.t()
      }

  """
  @type describe_app_version_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_draft_app_version_template_response() :: %{
        optional("appArn") => String.t(),
        optional("appVersion") => String.t()
      }

  """
  @type put_draft_app_version_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t(),
        "resourceId" => String.t(),
        "resourceType" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

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

      list_app_assessment_compliance_drifts_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("assessmentArn") => String.t()
      }

  """
  @type list_app_assessment_compliance_drifts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_app_input_source_request() :: %{
        optional("clientToken") => String.t(),
        optional("eksSourceClusterNamespace") => eks_source_cluster_namespace(),
        optional("sourceArn") => String.t(),
        optional("terraformSource") => terraform_source(),
        required("appArn") => String.t()
      }

  """
  @type delete_app_input_source_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_suggested_resiliency_policies_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_suggested_resiliency_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_update_recommendation_status_failed_entry() :: %{
        "entryId" => String.t(),
        "errorMessage" => String.t()
      }

  """
  @type batch_update_recommendation_status_failed_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      alarm_recommendation() :: %{
        "appComponentName" => String.t(),
        "appComponentNames" => list(String.t()()),
        "description" => String.t(),
        "items" => list(recommendation_item()()),
        "name" => String.t(),
        "prerequisite" => String.t(),
        "recommendationId" => String.t(),
        "recommendationStatus" => String.t(),
        "referenceId" => String.t(),
        "type" => String.t()
      }

  """
  @type alarm_recommendation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_recommendation_templates_response() :: %{
        optional("nextToken") => String.t(),
        optional("recommendationTemplates") => list(recommendation_template()())
      }

  """
  @type list_recommendation_templates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      scoring_component_resiliency_score() :: %{
        "excludedCount" => float(),
        "outstandingCount" => float(),
        "possibleScore" => float(),
        "score" => float()
      }

  """
  @type scoring_component_resiliency_score() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_identifier() :: %{
        "logicalResourceId" => logical_resource_id(),
        "resourceType" => String.t()
      }

  """
  @type resource_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_resiliency_policy_request() :: %{
        optional("clientToken") => String.t(),
        optional("dataLocationConstraint") => String.t(),
        optional("policyDescription") => String.t(),
        optional("tags") => map(),
        required("policy") => map(),
        required("policyName") => String.t(),
        required("tier") => String.t()
      }

  """
  @type create_resiliency_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_app_assessments_response() :: %{
        optional("nextToken") => String.t(),
        required("assessmentSummaries") => list(app_assessment_summary()())
      }

  """
  @type list_app_assessments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => String.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_sop_recommendations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("assessmentArn") => String.t()
      }

  """
  @type list_sop_recommendations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_app_version_resource_mappings_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("appArn") => String.t(),
        required("appVersion") => String.t()
      }

  """
  @type list_app_version_resource_mappings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      add_draft_app_version_resource_mappings_request() :: %{
        required("appArn") => String.t(),
        required("resourceMappings") => list(resource_mapping()())
      }

  """
  @type add_draft_app_version_resource_mappings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_app_version_app_component_request() :: %{
        required("appArn") => String.t(),
        required("appVersion") => String.t(),
        required("id") => String.t()
      }

  """
  @type describe_app_version_app_component_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_resiliency_policy_response() :: %{
        required("policy") => resiliency_policy()
      }

  """
  @type update_resiliency_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      publish_app_version_response() :: %{
        optional("appVersion") => String.t(),
        optional("identifier") => float(),
        optional("versionName") => String.t(),
        required("appArn") => String.t()
      }

  """
  @type publish_app_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_app_version_resource_response() :: %{
        optional("physicalResource") => physical_resource(),
        required("appArn") => String.t(),
        required("appVersion") => String.t()
      }

  """
  @type update_app_version_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_update_recommendation_status_successful_entry() :: %{
        "entryId" => String.t(),
        "excludeReason" => String.t(),
        "excluded" => boolean(),
        "item" => update_recommendation_status_item(),
        "referenceId" => String.t()
      }

  """
  @type batch_update_recommendation_status_successful_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_resiliency_policy_response() :: %{
        required("policy") => resiliency_policy()
      }

  """
  @type create_resiliency_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_app_version_response() :: %{
        optional("additionalInfo") => map(),
        required("appArn") => String.t(),
        required("appVersion") => String.t()
      }

  """
  @type update_app_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_alarm_recommendations_response() :: %{
        optional("nextToken") => String.t(),
        required("alarmRecommendations") => list(alarm_recommendation()())
      }

  """
  @type list_alarm_recommendations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        optional("tags") => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      eks_source_cluster_namespace() :: %{
        "eksClusterArn" => String.t(),
        "namespace" => String.t()
      }

  """
  @type eks_source_cluster_namespace() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_draft_app_version_resources_import_status_request() :: %{
        required("appArn") => String.t()
      }

  """
  @type describe_draft_app_version_resources_import_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_app_version_template_response() :: %{
        required("appArn") => String.t(),
        required("appTemplateBody") => String.t(),
        required("appVersion") => String.t()
      }

  """
  @type describe_app_version_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_resiliency_policy_response() :: %{
        required("policy") => resiliency_policy()
      }

  """
  @type describe_resiliency_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      app_component() :: %{
        "additionalInfo" => map(),
        "id" => String.t(),
        "name" => String.t(),
        "type" => String.t()
      }

  """
  @type app_component() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      recommendation_disruption_compliance() :: %{
        "expectedComplianceStatus" => String.t(),
        "expectedRpoDescription" => String.t(),
        "expectedRpoInSecs" => integer(),
        "expectedRtoDescription" => String.t(),
        "expectedRtoInSecs" => integer()
      }

  """
  @type recommendation_disruption_compliance() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_suggested_resiliency_policies_response() :: %{
        optional("nextToken") => String.t(),
        required("resiliencyPolicies") => list(resiliency_policy()())
      }

  """
  @type list_suggested_resiliency_policies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_error() :: %{
        "logicalResourceId" => String.t(),
        "physicalResourceId" => String.t(),
        "reason" => String.t()
      }

  """
  @type resource_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_location() :: %{
        "bucket" => String.t(),
        "prefix" => String.t()
      }

  """
  @type s3_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resolve_app_version_resources_response() :: %{
        required("appArn") => String.t(),
        required("appVersion") => String.t(),
        required("resolutionId") => String.t(),
        required("status") => String.t()
      }

  """
  @type resolve_app_version_resources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      app_input_source() :: %{
        "eksSourceClusterNamespace" => eks_source_cluster_namespace(),
        "importType" => String.t(),
        "resourceCount" => integer(),
        "sourceArn" => String.t(),
        "sourceName" => String.t(),
        "terraformSource" => terraform_source()
      }

  """
  @type app_input_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_recommendation_template_response() :: %{
        required("recommendationTemplateArn") => String.t(),
        required("status") => String.t()
      }

  """
  @type delete_recommendation_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      physical_resource() :: %{
        "additionalInfo" => map(),
        "appComponents" => list(app_component()()),
        "excluded" => boolean(),
        "logicalResourceId" => logical_resource_id(),
        "parentResourceName" => String.t(),
        "physicalResourceId" => physical_resource_id(),
        "resourceName" => String.t(),
        "resourceType" => String.t(),
        "sourceType" => String.t()
      }

  """
  @type physical_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      app_summary() :: %{
        "appArn" => String.t(),
        "assessmentSchedule" => String.t(),
        "complianceStatus" => String.t(),
        "creationTime" => non_neg_integer(),
        "description" => String.t(),
        "driftStatus" => String.t(),
        "lastAppComplianceEvaluationTime" => non_neg_integer(),
        "name" => String.t(),
        "resiliencyScore" => float(),
        "rpoInSecs" => integer(),
        "rtoInSecs" => integer(),
        "status" => String.t()
      }

  """
  @type app_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_test_recommendations_response() :: %{
        optional("nextToken") => String.t(),
        required("testRecommendations") => list(test_recommendation()())
      }

  """
  @type list_test_recommendations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_app_response() :: %{
        required("app") => app()
      }

  """
  @type update_app_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_drift() :: %{
        "appArn" => String.t(),
        "appVersion" => String.t(),
        "diffType" => String.t(),
        "referenceId" => String.t(),
        "resourceIdentifier" => resource_identifier()
      }

  """
  @type resource_drift() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      app_assessment_summary() :: %{
        "appArn" => String.t(),
        "appVersion" => String.t(),
        "assessmentArn" => String.t(),
        "assessmentName" => String.t(),
        "assessmentStatus" => String.t(),
        "complianceStatus" => String.t(),
        "cost" => cost(),
        "driftStatus" => String.t(),
        "endTime" => non_neg_integer(),
        "invoker" => String.t(),
        "message" => String.t(),
        "resiliencyScore" => float(),
        "startTime" => non_neg_integer(),
        "versionName" => String.t()
      }

  """
  @type app_assessment_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      eks_source() :: %{
        "eksClusterArn" => String.t(),
        "namespaces" => list(String.t()())
      }

  """
  @type eks_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_app_request() :: %{
        optional("clientToken") => String.t(),
        optional("forceDelete") => boolean(),
        required("appArn") => String.t()
      }

  """
  @type delete_app_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_app_assessment_resource_drifts_response() :: %{
        "nextToken" => String.t(),
        "resourceDrifts" => list(resource_drift()())
      }

  """
  @type list_app_assessment_resource_drifts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_app_version_resource_request() :: %{
        optional("additionalInfo") => map(),
        optional("appComponents") => list(String.t()()),
        optional("awsAccountId") => String.t(),
        optional("awsRegion") => String.t(),
        optional("excluded") => boolean(),
        optional("logicalResourceId") => logical_resource_id(),
        optional("physicalResourceId") => String.t(),
        optional("resourceName") => String.t(),
        optional("resourceType") => String.t(),
        required("appArn") => String.t()
      }

  """
  @type update_app_version_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      publish_app_version_request() :: %{
        optional("versionName") => String.t(),
        required("appArn") => String.t()
      }

  """
  @type publish_app_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_app_request() :: %{
        required("appArn") => String.t()
      }

  """
  @type describe_app_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_resiliency_policy_request() :: %{
        optional("clientToken") => String.t(),
        required("policyArn") => String.t()
      }

  """
  @type delete_resiliency_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_app_assessment_compliance_drifts_response() :: %{
        "complianceDrifts" => list(compliance_drift()()),
        "nextToken" => String.t()
      }

  """
  @type list_app_assessment_compliance_drifts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_app_version_app_component_response() :: %{
        optional("appComponent") => app_component(),
        required("appArn") => String.t(),
        required("appVersion") => String.t()
      }

  """
  @type delete_app_version_app_component_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      delete_app_version_app_component_request() :: %{
        optional("clientToken") => String.t(),
        required("appArn") => String.t(),
        required("id") => String.t()
      }

  """
  @type delete_app_version_app_component_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      import_resources_to_draft_app_version_response() :: %{
        optional("eksSources") => list(eks_source()()),
        optional("sourceArns") => list(String.t()()),
        optional("terraformSources") => list(terraform_source()()),
        required("appArn") => String.t(),
        required("appVersion") => String.t(),
        required("status") => String.t()
      }

  """
  @type import_resources_to_draft_app_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      app_version_summary() :: %{
        "appVersion" => String.t(),
        "creationTime" => non_neg_integer(),
        "identifier" => float(),
        "versionName" => String.t()
      }

  """
  @type app_version_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_app_version_app_components_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("appArn") => String.t(),
        required("appVersion") => String.t()
      }

  """
  @type list_app_version_app_components_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      permission_model() :: %{
        "crossAccountRoleArns" => list(String.t()()),
        "invokerRoleName" => String.t(),
        "type" => String.t()
      }

  """
  @type permission_model() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_resiliency_policy_request() :: %{
        optional("dataLocationConstraint") => String.t(),
        optional("policy") => map(),
        optional("policyDescription") => String.t(),
        optional("policyName") => String.t(),
        optional("tier") => String.t(),
        required("policyArn") => String.t()
      }

  """
  @type update_resiliency_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_app_input_sources_response() :: %{
        optional("nextToken") => String.t(),
        required("appInputSources") => list(app_input_source()())
      }

  """
  @type list_app_input_sources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => String.t()
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

      resiliency_policy() :: %{
        "creationTime" => non_neg_integer(),
        "dataLocationConstraint" => String.t(),
        "estimatedCostTier" => String.t(),
        "policy" => map(),
        "policyArn" => String.t(),
        "policyDescription" => String.t(),
        "policyName" => String.t(),
        "tags" => map(),
        "tier" => String.t()
      }

  """
  @type resiliency_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_app_request() :: %{
        optional("assessmentSchedule") => String.t(),
        optional("clearResiliencyPolicyArn") => boolean(),
        optional("description") => String.t(),
        optional("eventSubscriptions") => list(event_subscription()()),
        optional("permissionModel") => permission_model(),
        optional("policyArn") => String.t(),
        required("appArn") => String.t()
      }

  """
  @type update_app_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      app_assessment() :: %{
        "appArn" => String.t(),
        "appVersion" => String.t(),
        "assessmentArn" => String.t(),
        "assessmentName" => String.t(),
        "assessmentStatus" => String.t(),
        "compliance" => map(),
        "complianceStatus" => String.t(),
        "cost" => cost(),
        "driftStatus" => String.t(),
        "endTime" => non_neg_integer(),
        "invoker" => String.t(),
        "message" => String.t(),
        "policy" => resiliency_policy(),
        "resiliencyScore" => resiliency_score(),
        "resourceErrorsDetails" => resource_errors_details(),
        "startTime" => non_neg_integer(),
        "tags" => map(),
        "versionName" => String.t()
      }

  """
  @type app_assessment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      test_recommendation() :: %{
        "appComponentName" => String.t(),
        "dependsOnAlarms" => list(String.t()()),
        "description" => String.t(),
        "intent" => String.t(),
        "items" => list(recommendation_item()()),
        "name" => String.t(),
        "prerequisite" => String.t(),
        "recommendationId" => String.t(),
        "recommendationStatus" => String.t(),
        "referenceId" => String.t(),
        "risk" => String.t(),
        "type" => String.t()
      }

  """
  @type test_recommendation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_recommendation_templates_request() :: %{
        optional("assessmentArn") => String.t(),
        optional("maxResults") => integer(),
        optional("name") => String.t(),
        optional("nextToken") => String.t(),
        optional("recommendationTemplateArn") => String.t(),
        optional("reverseOrder") => boolean(),
        optional("status") => list(String.t()())
      }

  """
  @type list_recommendation_templates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t(),
        "retryAfterSeconds" => integer()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_app_assessment_response() :: %{
        required("assessment") => app_assessment()
      }

  """
  @type start_app_assessment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_recommendation_status_item() :: %{
        "resourceId" => String.t(),
        "targetAccountId" => String.t(),
        "targetRegion" => String.t()
      }

  """
  @type update_recommendation_status_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_alarm_recommendations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("assessmentArn") => String.t()
      }

  """
  @type list_alarm_recommendations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_app_version_request() :: %{
        optional("additionalInfo") => map(),
        required("appArn") => String.t()
      }

  """
  @type update_app_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_resiliency_policy_request() :: %{
        required("policyArn") => String.t()
      }

  """
  @type describe_resiliency_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_app_assessment_response() :: %{
        required("assessment") => app_assessment()
      }

  """
  @type describe_app_assessment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_app_version_app_component_response() :: %{
        optional("appComponent") => app_component(),
        required("appArn") => String.t(),
        required("appVersion") => String.t()
      }

  """
  @type describe_app_version_app_component_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_apps_request() :: %{
        optional("appArn") => String.t(),
        optional("fromLastAssessmentTime") => non_neg_integer(),
        optional("maxResults") => integer(),
        optional("name") => String.t(),
        optional("nextToken") => String.t(),
        optional("reverseOrder") => boolean(),
        optional("toLastAssessmentTime") => non_neg_integer()
      }

  """
  @type list_apps_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_app_version_app_component_response() :: %{
        optional("appComponent") => app_component(),
        required("appArn") => String.t(),
        required("appVersion") => String.t()
      }

  """
  @type update_app_version_app_component_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      recommendation_template() :: %{
        "appArn" => String.t(),
        "assessmentArn" => String.t(),
        "endTime" => non_neg_integer(),
        "format" => String.t(),
        "message" => String.t(),
        "name" => String.t(),
        "needsReplacements" => boolean(),
        "recommendationIds" => list(String.t()()),
        "recommendationTemplateArn" => String.t(),
        "recommendationTypes" => list(String.t()()),
        "startTime" => non_neg_integer(),
        "status" => String.t(),
        "tags" => map(),
        "templatesLocation" => s3_location()
      }

  """
  @type recommendation_template() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_resiliency_policy_response() :: %{
        required("policyArn") => String.t()
      }

  """
  @type delete_resiliency_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_app_version_resource_request() :: %{
        optional("awsAccountId") => String.t(),
        optional("awsRegion") => String.t(),
        optional("clientToken") => String.t(),
        optional("logicalResourceId") => logical_resource_id(),
        optional("physicalResourceId") => String.t(),
        optional("resourceName") => String.t(),
        required("appArn") => String.t()
      }

  """
  @type delete_app_version_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_sop_recommendations_response() :: %{
        optional("nextToken") => String.t(),
        required("sopRecommendations") => list(sop_recommendation()())
      }

  """
  @type list_sop_recommendations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_app_assessment_response() :: %{
        required("assessmentArn") => String.t(),
        required("assessmentStatus") => String.t()
      }

  """
  @type delete_app_assessment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      physical_resource_id() :: %{
        "awsAccountId" => String.t(),
        "awsRegion" => String.t(),
        "identifier" => String.t(),
        "type" => String.t()
      }

  """
  @type physical_resource_id() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_app_response() :: %{
        required("app") => app()
      }

  """
  @type create_app_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_app_component_compliances_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("assessmentArn") => String.t()
      }

  """
  @type list_app_component_compliances_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_app_versions_request() :: %{
        optional("endTime") => non_neg_integer(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("startTime") => non_neg_integer(),
        required("appArn") => String.t()
      }

  """
  @type list_app_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      compliance_drift() :: %{
        "actualReferenceId" => String.t(),
        "actualValue" => map(),
        "appId" => String.t(),
        "appVersion" => String.t(),
        "diffType" => String.t(),
        "driftType" => String.t(),
        "entityId" => String.t(),
        "entityType" => String.t(),
        "expectedReferenceId" => String.t(),
        "expectedValue" => map()
      }

  """
  @type compliance_drift() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_app_version_app_component_request() :: %{
        optional("additionalInfo") => map(),
        optional("clientToken") => String.t(),
        optional("id") => String.t(),
        required("appArn") => String.t(),
        required("name") => String.t(),
        required("type") => String.t()
      }

  """
  @type create_app_version_app_component_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_recommendation_template_request() :: %{
        optional("clientToken") => String.t(),
        required("recommendationTemplateArn") => String.t()
      }

  """
  @type delete_recommendation_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_app_assessment_resource_drifts_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("assessmentArn") => String.t()
      }

  """
  @type list_app_assessment_resource_drifts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cost() :: %{
        "amount" => float(),
        "currency" => String.t(),
        "frequency" => String.t()
      }

  """
  @type cost() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_app_version_resources_resolution_status_response() :: %{
        optional("errorMessage") => String.t(),
        required("appArn") => String.t(),
        required("appVersion") => String.t(),
        required("resolutionId") => String.t(),
        required("status") => String.t()
      }

  """
  @type describe_app_version_resources_resolution_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_resiliency_policies_response() :: %{
        optional("nextToken") => String.t(),
        required("resiliencyPolicies") => list(resiliency_policy()())
      }

  """
  @type list_resiliency_policies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      remove_draft_app_version_resource_mappings_request() :: %{
        optional("appRegistryAppNames") => list(String.t()()),
        optional("eksSourceNames") => list(String.t()()),
        optional("logicalStackNames") => list(String.t()()),
        optional("resourceGroupNames") => list(String.t()()),
        optional("resourceNames") => list(String.t()()),
        optional("terraformSourceNames") => list(String.t()()),
        required("appArn") => String.t()
      }

  """
  @type remove_draft_app_version_resource_mappings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sop_recommendation() :: %{
        "appComponentName" => String.t(),
        "description" => String.t(),
        "items" => list(recommendation_item()()),
        "name" => String.t(),
        "prerequisite" => String.t(),
        "recommendationId" => String.t(),
        "recommendationStatus" => String.t(),
        "referenceId" => String.t(),
        "serviceType" => String.t()
      }

  """
  @type sop_recommendation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      app_component_compliance() :: %{
        "appComponentName" => String.t(),
        "compliance" => map(),
        "cost" => cost(),
        "message" => String.t(),
        "resiliencyScore" => resiliency_score(),
        "status" => String.t()
      }

  """
  @type app_component_compliance() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_app_assessment_request() :: %{
        optional("clientToken") => String.t(),
        required("assessmentArn") => String.t()
      }

  """
  @type delete_app_assessment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_recommendation_template_request() :: %{
        optional("bucketName") => String.t(),
        optional("clientToken") => String.t(),
        optional("format") => String.t(),
        optional("recommendationIds") => list(String.t()()),
        optional("recommendationTypes") => list(String.t()()),
        optional("tags") => map(),
        required("assessmentArn") => String.t(),
        required("name") => String.t()
      }

  """
  @type create_recommendation_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_app_version_request() :: %{
        required("appArn") => String.t(),
        required("appVersion") => String.t()
      }

  """
  @type describe_app_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_draft_app_version_resources_import_status_response() :: %{
        optional("errorMessage") => String.t(),
        required("appArn") => String.t(),
        required("appVersion") => String.t(),
        required("status") => String.t(),
        required("statusChangeTime") => non_neg_integer()
      }

  """
  @type describe_draft_app_version_resources_import_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_app_version_response() :: %{
        optional("additionalInfo") => map(),
        required("appArn") => String.t(),
        required("appVersion") => String.t()
      }

  """
  @type describe_app_version_response() :: %{String.t() => any()}

  @type add_draft_app_version_resource_mappings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type batch_update_recommendation_status_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_app_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_app_version_app_component_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_app_version_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_recommendation_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_resiliency_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_app_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_app_assessment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_app_input_source_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_app_version_app_component_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_app_version_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_recommendation_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_resiliency_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_app_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_app_assessment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_app_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_app_version_app_component_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_app_version_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_app_version_resources_resolution_status_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_app_version_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_draft_app_version_resources_import_status_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_resiliency_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type import_resources_to_draft_app_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_alarm_recommendations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_app_assessment_compliance_drifts_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_app_assessment_resource_drifts_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_app_assessments_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_app_component_compliances_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_app_component_recommendations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_app_input_sources_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_app_version_app_components_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_app_version_resource_mappings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_app_version_resources_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_app_versions_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_apps_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_recommendation_templates_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_resiliency_policies_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_sop_recommendations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_suggested_resiliency_policies_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_test_recommendations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_unsupported_app_version_resources_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type publish_app_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type put_draft_app_version_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type remove_draft_app_version_resource_mappings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type resolve_app_version_resources_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_app_assessment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_app_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_app_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_app_version_app_component_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_app_version_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_resiliency_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2020-04-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "resiliencehub",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "resiliencehub",
      signature_version: "v4",
      signing_name: "resiliencehub",
      target_prefix: nil
    }
  end

  @doc """
  Adds the source of resource-maps to the draft version of an application. During
  assessment, Resilience Hub will use these resource-maps to resolve the latest
  physical ID for each resource in the application template. For more
  information about different types of resources suported by Resilience Hub and
  how to add them in your application, see [Step 2: How is your application
  managed?](https://docs.aws.amazon.com/resilience-hub/latest/userguide/how-app-manage.html)
  in the Resilience Hub User Guide.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20AddDraftAppVersionResourceMappings&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec add_draft_app_version_resource_mappings(
          AWS.Client.t(),
          add_draft_app_version_resource_mappings_request(),
          Keyword.t()
        ) ::
          {:ok, add_draft_app_version_resource_mappings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, add_draft_app_version_resource_mappings_errors()}
  def add_draft_app_version_resource_mappings(%Client{} = client, input, options \\ []) do
    url_path = "/add-draft-app-version-resource-mappings"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Enables you to include or exclude one or more operational recommendations.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20BatchUpdateRecommendationStatus&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec batch_update_recommendation_status(
          AWS.Client.t(),
          batch_update_recommendation_status_request(),
          Keyword.t()
        ) ::
          {:ok, batch_update_recommendation_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_update_recommendation_status_errors()}
  def batch_update_recommendation_status(%Client{} = client, input, options \\ []) do
    url_path = "/batch-update-recommendation-status"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates an Resilience Hub application. An Resilience Hub application is a
  collection of Amazon Web Services resources structured to prevent and recover
  Amazon Web Services application disruptions. To describe a Resilience Hub
  application, you provide an application name, resources from one or more
  CloudFormation stacks, Resource Groups, Terraform state files, AppRegistry
  applications, and an appropriate resiliency policy. In addition, you can also
  add resources that are located on Amazon Elastic Kubernetes Service (Amazon
  EKS) clusters as optional resources. For more information about the number of
  resources supported per application, see [Service
  quotas](https://docs.aws.amazon.com/general/latest/gr/resiliencehub.html#limits_resiliencehub).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20CreateApp&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_app(AWS.Client.t(), create_app_request(), Keyword.t()) ::
          {:ok, create_app_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_app_errors()}
  def create_app(%Client{} = client, input, options \\ []) do
    url_path = "/create-app"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a new Application Component in the Resilience Hub application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20CreateAppVersionAppComponent&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_app_version_app_component(
          AWS.Client.t(),
          create_app_version_app_component_request(),
          Keyword.t()
        ) ::
          {:ok, create_app_version_app_component_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_app_version_app_component_errors()}
  def create_app_version_app_component(%Client{} = client, input, options \\ []) do
    url_path = "/create-app-version-app-component"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Adds a resource to the Resilience Hub application and assigns it to the
  specified Application Components. If you specify a new Application Component,
  Resilience Hub will automatically create the Application Component.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20CreateAppVersionResource&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_app_version_resource(
          AWS.Client.t(),
          create_app_version_resource_request(),
          Keyword.t()
        ) ::
          {:ok, create_app_version_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_app_version_resource_errors()}
  def create_app_version_resource(%Client{} = client, input, options \\ []) do
    url_path = "/create-app-version-resource"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a new recommendation template for the Resilience Hub application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20CreateRecommendationTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_recommendation_template(
          AWS.Client.t(),
          create_recommendation_template_request(),
          Keyword.t()
        ) ::
          {:ok, create_recommendation_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_recommendation_template_errors()}
  def create_recommendation_template(%Client{} = client, input, options \\ []) do
    url_path = "/create-recommendation-template"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a resiliency policy for an application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20CreateResiliencyPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_resiliency_policy(AWS.Client.t(), create_resiliency_policy_request(), Keyword.t()) ::
          {:ok, create_resiliency_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_resiliency_policy_errors()}
  def create_resiliency_policy(%Client{} = client, input, options \\ []) do
    url_path = "/create-resiliency-policy"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes an Resilience Hub application. This is a destructive action that can't
  be undone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20DeleteApp&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec delete_app(AWS.Client.t(), delete_app_request(), Keyword.t()) ::
          {:ok, delete_app_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_app_errors()}
  def delete_app(%Client{} = client, input, options \\ []) do
    url_path = "/delete-app"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes an Resilience Hub application assessment. This is a destructive action
  that can't be undone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20DeleteAppAssessment&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec delete_app_assessment(AWS.Client.t(), delete_app_assessment_request(), Keyword.t()) ::
          {:ok, delete_app_assessment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_app_assessment_errors()}
  def delete_app_assessment(%Client{} = client, input, options \\ []) do
    url_path = "/delete-app-assessment"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes the input source and all of its imported resources from the Resilience
  Hub application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20DeleteAppInputSource&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec delete_app_input_source(AWS.Client.t(), delete_app_input_source_request(), Keyword.t()) ::
          {:ok, delete_app_input_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_app_input_source_errors()}
  def delete_app_input_source(%Client{} = client, input, options \\ []) do
    url_path = "/delete-app-input-source"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes an Application Component from the Resilience Hub application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20DeleteAppVersionAppComponent&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec delete_app_version_app_component(
          AWS.Client.t(),
          delete_app_version_app_component_request(),
          Keyword.t()
        ) ::
          {:ok, delete_app_version_app_component_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_app_version_app_component_errors()}
  def delete_app_version_app_component(%Client{} = client, input, options \\ []) do
    url_path = "/delete-app-version-app-component"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a resource from the Resilience Hub application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20DeleteAppVersionResource&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec delete_app_version_resource(
          AWS.Client.t(),
          delete_app_version_resource_request(),
          Keyword.t()
        ) ::
          {:ok, delete_app_version_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_app_version_resource_errors()}
  def delete_app_version_resource(%Client{} = client, input, options \\ []) do
    url_path = "/delete-app-version-resource"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a recommendation template. This is a destructive action that can't be
  undone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20DeleteRecommendationTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec delete_recommendation_template(
          AWS.Client.t(),
          delete_recommendation_template_request(),
          Keyword.t()
        ) ::
          {:ok, delete_recommendation_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_recommendation_template_errors()}
  def delete_recommendation_template(%Client{} = client, input, options \\ []) do
    url_path = "/delete-recommendation-template"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a resiliency policy. This is a destructive action that can't be undone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20DeleteResiliencyPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec delete_resiliency_policy(AWS.Client.t(), delete_resiliency_policy_request(), Keyword.t()) ::
          {:ok, delete_resiliency_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_resiliency_policy_errors()}
  def delete_resiliency_policy(%Client{} = client, input, options \\ []) do
    url_path = "/delete-resiliency-policy"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Describes an Resilience Hub application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20DescribeApp&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec describe_app(AWS.Client.t(), describe_app_request(), Keyword.t()) ::
          {:ok, describe_app_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_app_errors()}
  def describe_app(%Client{} = client, input, options \\ []) do
    url_path = "/describe-app"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Describes an assessment for an Resilience Hub application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20DescribeAppAssessment&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec describe_app_assessment(AWS.Client.t(), describe_app_assessment_request(), Keyword.t()) ::
          {:ok, describe_app_assessment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_app_assessment_errors()}
  def describe_app_assessment(%Client{} = client, input, options \\ []) do
    url_path = "/describe-app-assessment"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Describes the Resilience Hub application version.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20DescribeAppVersion&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec describe_app_version(AWS.Client.t(), describe_app_version_request(), Keyword.t()) ::
          {:ok, describe_app_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_app_version_errors()}
  def describe_app_version(%Client{} = client, input, options \\ []) do
    url_path = "/describe-app-version"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Describes an Application Component in the Resilience Hub application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20DescribeAppVersionAppComponent&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec describe_app_version_app_component(
          AWS.Client.t(),
          describe_app_version_app_component_request(),
          Keyword.t()
        ) ::
          {:ok, describe_app_version_app_component_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_app_version_app_component_errors()}
  def describe_app_version_app_component(%Client{} = client, input, options \\ []) do
    url_path = "/describe-app-version-app-component"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Describes a resource of the Resilience Hub application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20DescribeAppVersionResource&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec describe_app_version_resource(
          AWS.Client.t(),
          describe_app_version_resource_request(),
          Keyword.t()
        ) ::
          {:ok, describe_app_version_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_app_version_resource_errors()}
  def describe_app_version_resource(%Client{} = client, input, options \\ []) do
    url_path = "/describe-app-version-resource"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns the resolution status for the specified resolution identifier for an
  application version. If `resolutionId` is not specified, the current
  resolution status is returned.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20DescribeAppVersionResourcesResolutionStatus&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec describe_app_version_resources_resolution_status(
          AWS.Client.t(),
          describe_app_version_resources_resolution_status_request(),
          Keyword.t()
        ) ::
          {:ok, describe_app_version_resources_resolution_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_app_version_resources_resolution_status_errors()}
  def describe_app_version_resources_resolution_status(%Client{} = client, input, options \\ []) do
    url_path = "/describe-app-version-resources-resolution-status"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Describes details about an Resilience Hub application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20DescribeAppVersionTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec describe_app_version_template(
          AWS.Client.t(),
          describe_app_version_template_request(),
          Keyword.t()
        ) ::
          {:ok, describe_app_version_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_app_version_template_errors()}
  def describe_app_version_template(%Client{} = client, input, options \\ []) do
    url_path = "/describe-app-version-template"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Describes the status of importing resources to an application version.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20DescribeDraftAppVersionResourcesImportStatus&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec describe_draft_app_version_resources_import_status(
          AWS.Client.t(),
          describe_draft_app_version_resources_import_status_request(),
          Keyword.t()
        ) ::
          {:ok, describe_draft_app_version_resources_import_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_draft_app_version_resources_import_status_errors()}
  def describe_draft_app_version_resources_import_status(%Client{} = client, input, options \\ []) do
    url_path = "/describe-draft-app-version-resources-import-status"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Describes a specified resiliency policy for an Resilience Hub application. The
  returned policy object includes creation time, data location constraints, the
  Amazon Resource Name (ARN) for the policy, tags, tier, and more.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20DescribeResiliencyPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec describe_resiliency_policy(
          AWS.Client.t(),
          describe_resiliency_policy_request(),
          Keyword.t()
        ) ::
          {:ok, describe_resiliency_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_resiliency_policy_errors()}
  def describe_resiliency_policy(%Client{} = client, input, options \\ []) do
    url_path = "/describe-resiliency-policy"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Imports resources to Resilience Hub application draft version from different
  input sources. For more information about the input sources supported by
  Resilience Hub, see [Discover the structure and describe your Resilience Hub
  application](https://docs.aws.amazon.com/resilience-hub/latest/userguide/discover-structure.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20ImportResourcesToDraftAppVersion&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec import_resources_to_draft_app_version(
          AWS.Client.t(),
          import_resources_to_draft_app_version_request(),
          Keyword.t()
        ) ::
          {:ok, import_resources_to_draft_app_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, import_resources_to_draft_app_version_errors()}
  def import_resources_to_draft_app_version(%Client{} = client, input, options \\ []) do
    url_path = "/import-resources-to-draft-app-version"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Lists the alarm recommendations for an Resilience Hub application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20ListAlarmRecommendations&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec list_alarm_recommendations(
          AWS.Client.t(),
          list_alarm_recommendations_request(),
          Keyword.t()
        ) ::
          {:ok, list_alarm_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_alarm_recommendations_errors()}
  def list_alarm_recommendations(%Client{} = client, input, options \\ []) do
    url_path = "/list-alarm-recommendations"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  List of compliance drifts that were detected while running an assessment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20ListAppAssessmentComplianceDrifts&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec list_app_assessment_compliance_drifts(
          AWS.Client.t(),
          list_app_assessment_compliance_drifts_request(),
          Keyword.t()
        ) ::
          {:ok, list_app_assessment_compliance_drifts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_app_assessment_compliance_drifts_errors()}
  def list_app_assessment_compliance_drifts(%Client{} = client, input, options \\ []) do
    url_path = "/list-app-assessment-compliance-drifts"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Indicates the list of resource drifts that were detected while running an
  assessment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20ListAppAssessmentResourceDrifts&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec list_app_assessment_resource_drifts(
          AWS.Client.t(),
          list_app_assessment_resource_drifts_request(),
          Keyword.t()
        ) ::
          {:ok, list_app_assessment_resource_drifts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_app_assessment_resource_drifts_errors()}
  def list_app_assessment_resource_drifts(%Client{} = client, input, options \\ []) do
    url_path = "/list-app-assessment-resource-drifts"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Lists the assessments for an Resilience Hub application. You can use request
  parameters to refine the results for the response object.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20ListAppAssessments&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:app_arn` (`t:string`) Amazon Resource Name (ARN) of the Resilience Hub
    application. The format for this ARN is:
    arn:partition:resiliencehub:region:account:app/app-id. For more information
    about ARNs, see Amazon Resource Names (ARNs) in the Amazon Web Services
    General Reference guide.
  * `:assessment_name` (`t:string`) The name for the assessment.
  * `:assessment_status` (`t:list[com.amazonaws.resiliencehub#AssessmentStatus]`)
    The current status of the assessment for the resiliency policy.
  * `:compliance_status` (`t:string`) The current status of compliance for the
    resiliency policy.
  * `:invoker` (`t:string`) Specifies the entity that invoked a specific
    assessment, either a User or the System.
  * `:max_results` (`t:integer`) Maximum number of results to include in the
    response. If more results exist than the specified MaxResults value, a token
    is included in the response so that the remaining results can be retrieved.
  * `:next_token` (`t:string`) Null, or the token from a previous call to get the
    next set of results.
  * `:reverse_order` (`t:boolean`) The default is to sort by ascending startTime.
    To sort by descending startTime, set reverseOrder to true.
  """
  @spec list_app_assessments(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_app_assessments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_app_assessments_errors()}
  def list_app_assessments(%Client{} = client, options \\ []) do
    url_path = "/list-app-assessments"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [app_arn: nil, assessment_name: nil, assessment_status: nil, compliance_status: nil, invoker: nil, max_results: nil, next_token: nil, reverse_order: nil
    # ])

    headers = []
    query_params = []

    {reverse_order, options} = Keyword.pop(options, :reverse_order, nil)

    query_params =
      if !is_nil(reverse_order) do
        [{"reverseOrder", reverse_order} | query_params]
      else
        query_params
      end

    {next_token, options} = Keyword.pop(options, :next_token, nil)

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    {max_results, options} = Keyword.pop(options, :max_results, nil)

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    {invoker, options} = Keyword.pop(options, :invoker, nil)

    query_params =
      if !is_nil(invoker) do
        [{"invoker", invoker} | query_params]
      else
        query_params
      end

    {compliance_status, options} = Keyword.pop(options, :compliance_status, nil)

    query_params =
      if !is_nil(compliance_status) do
        [{"complianceStatus", compliance_status} | query_params]
      else
        query_params
      end

    {assessment_status, options} = Keyword.pop(options, :assessment_status, nil)

    query_params =
      if !is_nil(assessment_status) do
        [{"assessmentStatus", assessment_status} | query_params]
      else
        query_params
      end

    {assessment_name, options} = Keyword.pop(options, :assessment_name, nil)

    query_params =
      if !is_nil(assessment_name) do
        [{"assessmentName", assessment_name} | query_params]
      else
        query_params
      end

    {app_arn, options} = Keyword.pop(options, :app_arn, nil)

    query_params =
      if !is_nil(app_arn) do
        [{"appArn", app_arn} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the compliances for an Resilience Hub Application Component.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20ListAppComponentCompliances&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec list_app_component_compliances(
          AWS.Client.t(),
          list_app_component_compliances_request(),
          Keyword.t()
        ) ::
          {:ok, list_app_component_compliances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_app_component_compliances_errors()}
  def list_app_component_compliances(%Client{} = client, input, options \\ []) do
    url_path = "/list-app-component-compliances"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Lists the recommendations for an Resilience Hub Application Component.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20ListAppComponentRecommendations&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec list_app_component_recommendations(
          AWS.Client.t(),
          list_app_component_recommendations_request(),
          Keyword.t()
        ) ::
          {:ok, list_app_component_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_app_component_recommendations_errors()}
  def list_app_component_recommendations(%Client{} = client, input, options \\ []) do
    url_path = "/list-app-component-recommendations"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Lists all the input sources of the Resilience Hub application. For more
  information about the input sources supported by Resilience Hub, see [Discover
  the structure and describe your Resilience Hub
  application](https://docs.aws.amazon.com/resilience-hub/latest/userguide/discover-structure.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20ListAppInputSources&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec list_app_input_sources(AWS.Client.t(), list_app_input_sources_request(), Keyword.t()) ::
          {:ok, list_app_input_sources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_app_input_sources_errors()}
  def list_app_input_sources(%Client{} = client, input, options \\ []) do
    url_path = "/list-app-input-sources"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Lists all the Application Components in the Resilience Hub application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20ListAppVersionAppComponents&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec list_app_version_app_components(
          AWS.Client.t(),
          list_app_version_app_components_request(),
          Keyword.t()
        ) ::
          {:ok, list_app_version_app_components_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_app_version_app_components_errors()}
  def list_app_version_app_components(%Client{} = client, input, options \\ []) do
    url_path = "/list-app-version-app-components"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Lists how the resources in an application version are mapped/sourced from.
  Mappings can be physical resource identifiers, CloudFormation stacks,
  resource-groups, or an application registry app.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20ListAppVersionResourceMappings&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec list_app_version_resource_mappings(
          AWS.Client.t(),
          list_app_version_resource_mappings_request(),
          Keyword.t()
        ) ::
          {:ok, list_app_version_resource_mappings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_app_version_resource_mappings_errors()}
  def list_app_version_resource_mappings(%Client{} = client, input, options \\ []) do
    url_path = "/list-app-version-resource-mappings"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Lists all the resources in an Resilience Hub application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20ListAppVersionResources&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec list_app_version_resources(
          AWS.Client.t(),
          list_app_version_resources_request(),
          Keyword.t()
        ) ::
          {:ok, list_app_version_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_app_version_resources_errors()}
  def list_app_version_resources(%Client{} = client, input, options \\ []) do
    url_path = "/list-app-version-resources"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Lists the different versions for the Resilience Hub applications.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20ListAppVersions&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec list_app_versions(AWS.Client.t(), list_app_versions_request(), Keyword.t()) ::
          {:ok, list_app_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_app_versions_errors()}
  def list_app_versions(%Client{} = client, input, options \\ []) do
    url_path = "/list-app-versions"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Lists your Resilience Hub applications.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20ListApps&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:app_arn` (`t:string`) Amazon Resource Name (ARN) of the Resilience Hub
    application. The format for this ARN is:
    arn:partition:resiliencehub:region:account:app/app-id. For more information
    about ARNs, see Amazon Resource Names (ARNs) in the Amazon Web Services
    General Reference guide.
  * `:from_last_assessment_time` (`t:timestamp`) Indicates the lower limit of the
    range that is used to filter applications based on their last assessment
    times.
  * `:max_results` (`t:integer`) Maximum number of results to include in the
    response. If more results exist than the specified MaxResults value, a token
    is included in the response so that the remaining results can be retrieved.
  * `:name` (`t:string`) The name for the one of the listed applications.
  * `:next_token` (`t:string`) Null, or the token from a previous call to get the
    next set of results.
  * `:reverse_order` (`t:boolean`) The application list is sorted based on the
    values of lastAppComplianceEvaluationTime field. By default, application
    list is sorted in ascending order. To sort the appliation list in descending
    order, set this field to True.
  * `:to_last_assessment_time` (`t:timestamp`) Indicates the upper limit of the
    range that is used to filter the applications based on their last assessment
    times.
  """
  @spec list_apps(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_apps_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_apps_errors()}
  def list_apps(%Client{} = client, options \\ []) do
    url_path = "/list-apps"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [app_arn: nil, from_last_assessment_time: nil, max_results: nil, name: nil, next_token: nil, reverse_order: nil, to_last_assessment_time: nil
    # ])

    headers = []
    query_params = []

    {to_last_assessment_time, options} = Keyword.pop(options, :to_last_assessment_time, nil)

    query_params =
      if !is_nil(to_last_assessment_time) do
        [{"toLastAssessmentTime", to_last_assessment_time} | query_params]
      else
        query_params
      end

    {reverse_order, options} = Keyword.pop(options, :reverse_order, nil)

    query_params =
      if !is_nil(reverse_order) do
        [{"reverseOrder", reverse_order} | query_params]
      else
        query_params
      end

    {next_token, options} = Keyword.pop(options, :next_token, nil)

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    {name, options} = Keyword.pop(options, :name, nil)

    query_params =
      if !is_nil(name) do
        [{"name", name} | query_params]
      else
        query_params
      end

    {max_results, options} = Keyword.pop(options, :max_results, nil)

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    {from_last_assessment_time, options} = Keyword.pop(options, :from_last_assessment_time, nil)

    query_params =
      if !is_nil(from_last_assessment_time) do
        [{"fromLastAssessmentTime", from_last_assessment_time} | query_params]
      else
        query_params
      end

    {app_arn, options} = Keyword.pop(options, :app_arn, nil)

    query_params =
      if !is_nil(app_arn) do
        [{"appArn", app_arn} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the recommendation templates for the Resilience Hub applications.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20ListRecommendationTemplates&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:assessment_arn` (`t:string`) Amazon Resource Name (ARN) of the assessment.
    The format for this ARN is:
    arn:partition:resiliencehub:region:account:app-assessment/app-id. For more
    information about ARNs, see Amazon Resource Names (ARNs) in the Amazon Web
    Services General Reference guide.
  * `:max_results` (`t:integer`) Maximum number of results to include in the
    response. If more results exist than the specified MaxResults value, a token
    is included in the response so that the remaining results can be retrieved.
  * `:name` (`t:string`) The name for one of the listed recommendation templates.
  * `:next_token` (`t:string`) Null, or the token from a previous call to get the
    next set of results.
  * `:recommendation_template_arn` (`t:string`) The Amazon Resource Name (ARN) for
    a recommendation template.
  * `:reverse_order` (`t:boolean`) The default is to sort by ascending startTime.
    To sort by descending startTime, set reverseOrder to true.
  * `:status` (`t:list[com.amazonaws.resiliencehub#RecommendationTemplateStatus]`)
    Status of the action.
  """
  @spec list_recommendation_templates(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_recommendation_templates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_recommendation_templates_errors()}
  def list_recommendation_templates(%Client{} = client, options \\ []) do
    url_path = "/list-recommendation-templates"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [assessment_arn: nil, max_results: nil, name: nil, next_token: nil, recommendation_template_arn: nil, reverse_order: nil, status: nil
    # ])

    headers = []
    query_params = []

    {status, options} = Keyword.pop(options, :status, nil)

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    {reverse_order, options} = Keyword.pop(options, :reverse_order, nil)

    query_params =
      if !is_nil(reverse_order) do
        [{"reverseOrder", reverse_order} | query_params]
      else
        query_params
      end

    {recommendation_template_arn, options} =
      Keyword.pop(options, :recommendation_template_arn, nil)

    query_params =
      if !is_nil(recommendation_template_arn) do
        [{"recommendationTemplateArn", recommendation_template_arn} | query_params]
      else
        query_params
      end

    {next_token, options} = Keyword.pop(options, :next_token, nil)

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    {name, options} = Keyword.pop(options, :name, nil)

    query_params =
      if !is_nil(name) do
        [{"name", name} | query_params]
      else
        query_params
      end

    {max_results, options} = Keyword.pop(options, :max_results, nil)

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    {assessment_arn, options} = Keyword.pop(options, :assessment_arn, nil)

    query_params =
      if !is_nil(assessment_arn) do
        [{"assessmentArn", assessment_arn} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the resiliency policies for the Resilience Hub applications.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20ListResiliencyPolicies&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) Maximum number of results to include in the
    response. If more results exist than the specified MaxResults value, a token
    is included in the response so that the remaining results can be retrieved.
  * `:next_token` (`t:string`) Null, or the token from a previous call to get the
    next set of results.
  * `:policy_name` (`t:string`) The name of the policy
  """
  @spec list_resiliency_policies(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_resiliency_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_resiliency_policies_errors()}
  def list_resiliency_policies(%Client{} = client, options \\ []) do
    url_path = "/list-resiliency-policies"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, next_token: nil, policy_name: nil
    # ])

    headers = []
    query_params = []

    {policy_name, options} = Keyword.pop(options, :policy_name, nil)

    query_params =
      if !is_nil(policy_name) do
        [{"policyName", policy_name} | query_params]
      else
        query_params
      end

    {next_token, options} = Keyword.pop(options, :next_token, nil)

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    {max_results, options} = Keyword.pop(options, :max_results, nil)

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the standard operating procedure (SOP) recommendations for the Resilience
  Hub applications.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20ListSopRecommendations&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec list_sop_recommendations(AWS.Client.t(), list_sop_recommendations_request(), Keyword.t()) ::
          {:ok, list_sop_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_sop_recommendations_errors()}
  def list_sop_recommendations(%Client{} = client, input, options \\ []) do
    url_path = "/list-sop-recommendations"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Lists the suggested resiliency policies for the Resilience Hub applications.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20ListSuggestedResiliencyPolicies&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) Maximum number of results to include in the
    response. If more results exist than the specified MaxResults value, a token
    is included in the response so that the remaining results can be retrieved.
  * `:next_token` (`t:string`) Null, or the token from a previous call to get the
    next set of results.
  """
  @spec list_suggested_resiliency_policies(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_suggested_resiliency_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_suggested_resiliency_policies_errors()}
  def list_suggested_resiliency_policies(%Client{} = client, options \\ []) do
    url_path = "/list-suggested-resiliency-policies"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, next_token: nil
    # ])

    headers = []
    query_params = []

    {next_token, options} = Keyword.pop(options, :next_token, nil)

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    {max_results, options} = Keyword.pop(options, :max_results, nil)

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags for your resources in your Resilience Hub applications.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) for a specific
    resource in your Resilience Hub application.

  ## Optional parameters:
  """
  @spec list_tags_for_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [
    # ])

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the test recommendations for the Resilience Hub application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20ListTestRecommendations&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec list_test_recommendations(
          AWS.Client.t(),
          list_test_recommendations_request(),
          Keyword.t()
        ) ::
          {:ok, list_test_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_test_recommendations_errors()}
  def list_test_recommendations(%Client{} = client, input, options \\ []) do
    url_path = "/list-test-recommendations"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Lists the resources that are not currently supported in Resilience Hub. An
  unsupported resource is a resource that exists in the object that was used to
  create an app, but is not supported by Resilience Hub.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20ListUnsupportedAppVersionResources&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec list_unsupported_app_version_resources(
          AWS.Client.t(),
          list_unsupported_app_version_resources_request(),
          Keyword.t()
        ) ::
          {:ok, list_unsupported_app_version_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_unsupported_app_version_resources_errors()}
  def list_unsupported_app_version_resources(%Client{} = client, input, options \\ []) do
    url_path = "/list-unsupported-app-version-resources"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Publishes a new version of a specific Resilience Hub application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20PublishAppVersion&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec publish_app_version(AWS.Client.t(), publish_app_version_request(), Keyword.t()) ::
          {:ok, publish_app_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, publish_app_version_errors()}
  def publish_app_version(%Client{} = client, input, options \\ []) do
    url_path = "/publish-app-version"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Adds or updates the app template for an Resilience Hub application draft
  version.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20PutDraftAppVersionTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec put_draft_app_version_template(
          AWS.Client.t(),
          put_draft_app_version_template_request(),
          Keyword.t()
        ) ::
          {:ok, put_draft_app_version_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_draft_app_version_template_errors()}
  def put_draft_app_version_template(%Client{} = client, input, options \\ []) do
    url_path = "/put-draft-app-version-template"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes resource mappings from a draft application version.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20RemoveDraftAppVersionResourceMappings&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec remove_draft_app_version_resource_mappings(
          AWS.Client.t(),
          remove_draft_app_version_resource_mappings_request(),
          Keyword.t()
        ) ::
          {:ok, remove_draft_app_version_resource_mappings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, remove_draft_app_version_resource_mappings_errors()}
  def remove_draft_app_version_resource_mappings(%Client{} = client, input, options \\ []) do
    url_path = "/remove-draft-app-version-resource-mappings"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Resolves the resources for an application version.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20ResolveAppVersionResources&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec resolve_app_version_resources(
          AWS.Client.t(),
          resolve_app_version_resources_request(),
          Keyword.t()
        ) ::
          {:ok, resolve_app_version_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resolve_app_version_resources_errors()}
  def resolve_app_version_resources(%Client{} = client, input, options \\ []) do
    url_path = "/resolve-app-version-resources"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a new application assessment for an application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20StartAppAssessment&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec start_app_assessment(AWS.Client.t(), start_app_assessment_request(), Keyword.t()) ::
          {:ok, start_app_assessment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_app_assessment_errors()}
  def start_app_assessment(%Client{} = client, input, options \\ []) do
    url_path = "/start-app-assessment"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Applies one or more tags to a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) Amazon Resource Name (ARN) of the resource.

  ## Optional parameters:
  """
  @spec tag_resource(AWS.Client.t(), String.t(), tag_resource_request(), Keyword.t()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes one or more tags from a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) Amazon Resource Name (ARN) of the resource.

  ## Optional parameters:
  * `:tag_keys` (`t:list[com.amazonaws.resiliencehub#TagKey]`) The keys of the
    tags you want to remove.
  """
  @spec untag_resource(AWS.Client.t(), String.t(), untag_resource_request(), Keyword.t()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates an application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20UpdateApp&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec update_app(AWS.Client.t(), update_app_request(), Keyword.t()) ::
          {:ok, update_app_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_app_errors()}
  def update_app(%Client{} = client, input, options \\ []) do
    url_path = "/update-app"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the Resilience Hub application version.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20UpdateAppVersion&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec update_app_version(AWS.Client.t(), update_app_version_request(), Keyword.t()) ::
          {:ok, update_app_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_app_version_errors()}
  def update_app_version(%Client{} = client, input, options \\ []) do
    url_path = "/update-app-version"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates an existing Application Component in the Resilience Hub application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20UpdateAppVersionAppComponent&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec update_app_version_app_component(
          AWS.Client.t(),
          update_app_version_app_component_request(),
          Keyword.t()
        ) ::
          {:ok, update_app_version_app_component_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_app_version_app_component_errors()}
  def update_app_version_app_component(%Client{} = client, input, options \\ []) do
    url_path = "/update-app-version-app-component"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the resource details in the Resilience Hub application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20UpdateAppVersionResource&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec update_app_version_resource(
          AWS.Client.t(),
          update_app_version_resource_request(),
          Keyword.t()
        ) ::
          {:ok, update_app_version_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_app_version_resource_errors()}
  def update_app_version_resource(%Client{} = client, input, options \\ []) do
    url_path = "/update-app-version-resource"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a resiliency policy.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resiliencehub%20UpdateResiliencyPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec update_resiliency_policy(AWS.Client.t(), update_resiliency_policy_request(), Keyword.t()) ::
          {:ok, update_resiliency_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_resiliency_policy_errors()}
  def update_resiliency_policy(%Client{} = client, input, options \\ []) do
    url_path = "/update-resiliency-policy"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
