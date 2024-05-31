# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.EntityResolution do
  @moduledoc """
  Welcome to the *Entity Resolution API Reference*.

  Entity Resolution is an Amazon Web Services service that provides pre-configured
  entity
  resolution capabilities that enable developers and analysts at advertising and
  marketing
  companies to build an accurate and complete view of their consumers.

  With Entity Resolution, you can match source records containing consumer
  identifiers,
  such as name, email address, and phone number. This is true even when these
  records have
  incomplete or conflicting identifiers. For example, Entity Resolution can
  effectively match
  a source record from a customer relationship management (CRM) system with a
  source record
  from a marketing system containing campaign information.

  To learn more about Entity Resolution concepts, procedures, and best practices,
  see the
  [Entity Resolution User Guide](https://docs.aws.amazon.com/entityresolution/latest/userguide/what-is-service.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      get_id_mapping_job_input() :: %{}

  """
  @type get_id_mapping_job_input() :: %{}

  @typedoc """

  ## Example:

      list_provider_services_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t(),
        optional("providerName") => String.t()
      }

  """
  @type list_provider_services_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_matching_job_input() :: %{}

  """
  @type start_matching_job_input() :: %{}

  @typedoc """

  ## Example:

      id_mapping_techniques() :: %{
        "idMappingType" => list(any()),
        "providerProperties" => provider_properties()
      }

  """
  @type id_mapping_techniques() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      input_source() :: %{
        "applyNormalization" => [boolean()],
        "inputSourceARN" => [String.t()],
        "schemaName" => String.t()
      }

  """
  @type input_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_matching_workflow_input() :: %{}

  """
  @type delete_matching_workflow_input() :: %{}

  @typedoc """

  ## Example:

      get_match_id_output() :: %{
        "matchId" => [String.t()],
        "matchRule" => [String.t()]
      }

  """
  @type get_match_id_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resolution_techniques() :: %{
        "providerProperties" => provider_properties(),
        "resolutionType" => list(any()),
        "ruleBasedProperties" => rule_based_properties()
      }

  """
  @type resolution_techniques() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_schema_mapping_output() :: %{
        "description" => String.t(),
        "mappedInputFields" => list(schema_input_attribute()()),
        "schemaArn" => String.t(),
        "schemaName" => String.t()
      }

  """
  @type update_schema_mapping_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      deleted_unique_id() :: %{
        "uniqueId" => String.t()
      }

  """
  @type deleted_unique_id() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_id_mapping_workflow_output() :: %{
        "message" => [String.t()]
      }

  """
  @type delete_id_mapping_workflow_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      add_policy_statement_input() :: %{
        optional("condition") => String.t(),
        required("action") => list(String.t()()),
        required("effect") => list(any()),
        required("principal") => list(String.t()())
      }

  """
  @type add_policy_statement_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_schema_mapping_input() :: %{
        optional("description") => String.t(),
        required("mappedInputFields") => list(schema_input_attribute()())
      }

  """
  @type update_schema_mapping_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_policy_input() :: %{}

  """
  @type get_policy_input() :: %{}

  @typedoc """

  ## Example:

      update_matching_workflow_input() :: %{
        optional("description") => String.t(),
        optional("incrementalRunConfig") => incremental_run_config(),
        required("inputSourceConfig") => list(input_source()()),
        required("outputSourceConfig") => list(output_source()()),
        required("resolutionTechniques") => resolution_techniques(),
        required("roleArn") => [String.t()]
      }

  """
  @type update_matching_workflow_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      provider_service_summary() :: %{
        "providerName" => String.t(),
        "providerServiceArn" => String.t(),
        "providerServiceDisplayName" => String.t(),
        "providerServiceName" => String.t(),
        "providerServiceType" => list(any())
      }

  """
  @type provider_service_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_schema_mappings_output() :: %{
        "nextToken" => String.t(),
        "schemaList" => list(schema_mapping_summary()())
      }

  """
  @type list_schema_mappings_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      output_attribute() :: %{
        "hashed" => [boolean()],
        "name" => String.t()
      }

  """
  @type output_attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_matching_job_output() :: %{
        "jobId" => String.t()
      }

  """
  @type start_matching_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      exceeds_limit_exception() :: %{
        "message" => String.t(),
        "quotaName" => [String.t()],
        "quotaValue" => [integer()]
      }

  """
  @type exceeds_limit_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_schema_mapping_input() :: %{}

  """
  @type delete_schema_mapping_input() :: %{}

  @typedoc """

  ## Example:

      put_policy_input() :: %{
        optional("token") => String.t(),
        required("policy") => String.t()
      }

  """
  @type put_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_policy_output() :: %{
        "arn" => String.t(),
        "policy" => String.t(),
        "token" => String.t()
      }

  """
  @type put_policy_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_id_mapping_jobs_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t()
      }

  """
  @type list_id_mapping_jobs_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_id_mapping_workflow_input() :: %{}

  """
  @type delete_id_mapping_workflow_input() :: %{}

  @typedoc """

  ## Example:

      list_id_namespaces_output() :: %{
        "idNamespaceSummaries" => list(id_namespace_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_id_namespaces_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      id_namespace_id_mapping_workflow_properties() :: %{
        "idMappingType" => list(any()),
        "providerProperties" => namespace_provider_properties()
      }

  """
  @type id_namespace_id_mapping_workflow_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_schema_mapping_output() :: %{
        "description" => String.t(),
        "mappedInputFields" => list(schema_input_attribute()()),
        "schemaArn" => String.t(),
        "schemaName" => String.t()
      }

  """
  @type create_schema_mapping_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_matching_workflow_output() :: %{
        "description" => String.t(),
        "incrementalRunConfig" => incremental_run_config(),
        "inputSourceConfig" => list(input_source()()),
        "outputSourceConfig" => list(output_source()()),
        "resolutionTechniques" => resolution_techniques(),
        "roleArn" => [String.t()],
        "workflowName" => String.t()
      }

  """
  @type update_matching_workflow_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_id_mapping_jobs_output() :: %{
        "jobs" => list(job_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_id_mapping_jobs_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_metrics() :: %{
        "inputRecords" => [integer()],
        "matchIDs" => [integer()],
        "recordsNotProcessed" => [integer()],
        "totalRecordsProcessed" => [integer()]
      }

  """
  @type job_metrics() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_id_mapping_workflow_output() :: %{
        "createdAt" => [non_neg_integer()],
        "description" => String.t(),
        "idMappingTechniques" => id_mapping_techniques(),
        "inputSourceConfig" => list(id_mapping_workflow_input_source()()),
        "outputSourceConfig" => list(id_mapping_workflow_output_source()()),
        "roleArn" => String.t(),
        "tags" => map(),
        "updatedAt" => [non_neg_integer()],
        "workflowArn" => String.t(),
        "workflowName" => String.t()
      }

  """
  @type get_id_mapping_workflow_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_output() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_id_namespaces_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t()
      }

  """
  @type list_id_namespaces_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_schema_mapping_output() :: %{
        "createdAt" => [non_neg_integer()],
        "description" => String.t(),
        "hasWorkflows" => [boolean()],
        "mappedInputFields" => list(schema_input_attribute()()),
        "schemaArn" => String.t(),
        "schemaName" => String.t(),
        "tags" => map(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type get_schema_mapping_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_matching_workflows_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t()
      }

  """
  @type list_matching_workflows_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      id_mapping_workflow_output_source() :: %{
        "KMSArn" => String.t(),
        "outputS3Path" => String.t()
      }

  """
  @type id_mapping_workflow_output_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_matching_workflow_output() :: %{
        "description" => String.t(),
        "incrementalRunConfig" => incremental_run_config(),
        "inputSourceConfig" => list(input_source()()),
        "outputSourceConfig" => list(output_source()()),
        "resolutionTechniques" => resolution_techniques(),
        "roleArn" => [String.t()],
        "workflowArn" => String.t(),
        "workflowName" => String.t()
      }

  """
  @type create_matching_workflow_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_summary() :: %{
        "endTime" => [non_neg_integer()],
        "jobId" => String.t(),
        "startTime" => [non_neg_integer()],
        "status" => list(any())
      }

  """
  @type job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      namespace_provider_properties() :: %{
        "providerConfiguration" => [any()],
        "providerServiceArn" => String.t()
      }

  """
  @type namespace_provider_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_delete_unique_id_output() :: %{
        "deleted" => list(deleted_unique_id()()),
        "disconnectedUniqueIds" => list(String.t()()),
        "errors" => list(delete_unique_id_error()()),
        "status" => list(any())
      }

  """
  @type batch_delete_unique_id_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_schema_mapping_input() :: %{}

  """
  @type get_schema_mapping_input() :: %{}

  @typedoc """

  ## Example:

      job_output_source() :: %{
        "KMSArn" => String.t(),
        "outputS3Path" => String.t(),
        "roleArn" => String.t()
      }

  """
  @type job_output_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      provider_id_name_space_configuration() :: %{
        "description" => [String.t()],
        "providerSourceConfigurationDefinition" => [any()],
        "providerTargetConfigurationDefinition" => [any()]
      }

  """
  @type provider_id_name_space_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_delete_unique_id_input() :: %{
        optional("inputSource") => [String.t()],
        required("uniqueIds") => list(String.t()())
      }

  """
  @type batch_delete_unique_id_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      intermediate_source_configuration() :: %{
        "intermediateS3Path" => String.t()
      }

  """
  @type intermediate_source_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_id_namespace_input() :: %{}

  """
  @type delete_id_namespace_input() :: %{}

  @typedoc """

  ## Example:

      list_id_mapping_workflows_output() :: %{
        "nextToken" => String.t(),
        "workflowSummaries" => list(id_mapping_workflow_summary()())
      }

  """
  @type list_id_mapping_workflows_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      id_mapping_job_metrics() :: %{
        "inputRecords" => [integer()],
        "recordsNotProcessed" => [integer()],
        "totalRecordsProcessed" => [integer()]
      }

  """
  @type id_mapping_job_metrics() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_id_mapping_workflow_input() :: %{
        optional("description") => String.t(),
        optional("outputSourceConfig") => list(id_mapping_workflow_output_source()()),
        optional("tags") => map(),
        required("idMappingTechniques") => id_mapping_techniques(),
        required("inputSourceConfig") => list(id_mapping_workflow_input_source()()),
        required("roleArn") => String.t(),
        required("workflowName") => String.t()
      }

  """
  @type create_id_mapping_workflow_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_matching_workflows_output() :: %{
        "nextToken" => String.t(),
        "workflowSummaries" => list(matching_workflow_summary()())
      }

  """
  @type list_matching_workflows_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_matching_workflow_input() :: %{
        optional("description") => String.t(),
        optional("incrementalRunConfig") => incremental_run_config(),
        optional("tags") => map(),
        required("inputSourceConfig") => list(input_source()()),
        required("outputSourceConfig") => list(output_source()()),
        required("resolutionTechniques") => resolution_techniques(),
        required("roleArn") => [String.t()],
        required("workflowName") => String.t()
      }

  """
  @type create_matching_workflow_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      error_details() :: %{
        "errorMessage" => String.t()
      }

  """
  @type error_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      matching_workflow_summary() :: %{
        "createdAt" => [non_neg_integer()],
        "resolutionType" => list(any()),
        "updatedAt" => [non_neg_integer()],
        "workflowArn" => String.t(),
        "workflowName" => String.t()
      }

  """
  @type matching_workflow_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_id_mapping_job_output() :: %{
        "endTime" => [non_neg_integer()],
        "errorDetails" => error_details(),
        "jobId" => String.t(),
        "metrics" => id_mapping_job_metrics(),
        "outputSourceConfig" => list(id_mapping_job_output_source()()),
        "startTime" => [non_neg_integer()],
        "status" => list(any())
      }

  """
  @type get_id_mapping_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      provider_schema_attribute() :: %{
        "fieldName" => String.t(),
        "hashing" => [boolean()],
        "subType" => String.t(),
        "type" => list(any())
      }

  """
  @type provider_schema_attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_id_mapping_job_input() :: %{
        optional("outputSourceConfig") => list(id_mapping_job_output_source()())
      }

  """
  @type start_id_mapping_job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_id_mapping_workflow_output() :: %{
        "description" => String.t(),
        "idMappingTechniques" => id_mapping_techniques(),
        "inputSourceConfig" => list(id_mapping_workflow_input_source()()),
        "outputSourceConfig" => list(id_mapping_workflow_output_source()()),
        "roleArn" => String.t(),
        "workflowArn" => String.t(),
        "workflowName" => String.t()
      }

  """
  @type update_id_mapping_workflow_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_provider_service_input() :: %{}

  """
  @type get_provider_service_input() :: %{}

  @typedoc """

  ## Example:

      list_schema_mappings_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t()
      }

  """
  @type list_schema_mappings_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_matching_jobs_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t()
      }

  """
  @type list_matching_jobs_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_id_mapping_workflow_input() :: %{}

  """
  @type get_id_mapping_workflow_input() :: %{}

  @typedoc """

  ## Example:

      get_id_namespace_input() :: %{}

  """
  @type get_id_namespace_input() :: %{}

  @typedoc """

  ## Example:

      tag_resource_input() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_policy_statement_output() :: %{
        "arn" => String.t(),
        "policy" => String.t(),
        "token" => String.t()
      }

  """
  @type delete_policy_statement_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      rule() :: %{
        "matchingKeys" => list(String.t()()),
        "ruleName" => [String.t()]
      }

  """
  @type rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_matching_workflow_output() :: %{
        "message" => [String.t()]
      }

  """
  @type delete_matching_workflow_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_output() :: %{}

  """
  @type tag_resource_output() :: %{}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_id_mapping_workflows_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t()
      }

  """
  @type list_id_mapping_workflows_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_id_mapping_workflow_output() :: %{
        "description" => String.t(),
        "idMappingTechniques" => id_mapping_techniques(),
        "inputSourceConfig" => list(id_mapping_workflow_input_source()()),
        "outputSourceConfig" => list(id_mapping_workflow_output_source()()),
        "roleArn" => String.t(),
        "workflowArn" => String.t(),
        "workflowName" => String.t()
      }

  """
  @type create_id_mapping_workflow_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_id_mapping_workflow_input() :: %{
        optional("description") => String.t(),
        optional("outputSourceConfig") => list(id_mapping_workflow_output_source()()),
        required("idMappingTechniques") => id_mapping_techniques(),
        required("inputSourceConfig") => list(id_mapping_workflow_input_source()()),
        required("roleArn") => String.t()
      }

  """
  @type update_id_mapping_workflow_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      schema_mapping_summary() :: %{
        "createdAt" => [non_neg_integer()],
        "hasWorkflows" => [boolean()],
        "schemaArn" => String.t(),
        "schemaName" => String.t(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type schema_mapping_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_id_namespace_output() :: %{
        "createdAt" => [non_neg_integer()],
        "description" => String.t(),
        "idMappingWorkflowProperties" => list(id_namespace_id_mapping_workflow_properties()()),
        "idNamespaceArn" => String.t(),
        "idNamespaceName" => String.t(),
        "inputSourceConfig" => list(id_namespace_input_source()()),
        "roleArn" => String.t(),
        "tags" => map(),
        "type" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type get_id_namespace_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_schema_mapping_input() :: %{
        optional("description") => String.t(),
        optional("tags") => map(),
        required("mappedInputFields") => list(schema_input_attribute()()),
        required("schemaName") => String.t()
      }

  """
  @type create_schema_mapping_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_id_namespace_input() :: %{
        optional("description") => String.t(),
        optional("idMappingWorkflowProperties") => list(id_namespace_id_mapping_workflow_properties()()),
        optional("inputSourceConfig") => list(id_namespace_input_source()()),
        optional("roleArn") => String.t(),
        optional("tags") => map(),
        required("idNamespaceName") => String.t(),
        required("type") => list(any())
      }

  """
  @type create_id_namespace_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      provider_intermediate_data_access_configuration() :: %{
        "awsAccountIds" => list(String.t()()),
        "requiredBucketActions" => list([String.t()]())
      }

  """
  @type provider_intermediate_data_access_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_unique_id_error() :: %{
        "errorType" => list(any()),
        "uniqueId" => String.t()
      }

  """
  @type delete_unique_id_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_id_namespace_input() :: %{
        optional("description") => String.t(),
        optional("idMappingWorkflowProperties") => list(id_namespace_id_mapping_workflow_properties()()),
        optional("inputSourceConfig") => list(id_namespace_input_source()()),
        optional("roleArn") => String.t()
      }

  """
  @type update_id_namespace_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_input() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_policy_statement_input() :: %{}

  """
  @type delete_policy_statement_input() :: %{}

  @typedoc """

  ## Example:

      get_matching_job_input() :: %{}

  """
  @type get_matching_job_input() :: %{}

  @typedoc """

  ## Example:

      delete_id_namespace_output() :: %{
        "message" => [String.t()]
      }

  """
  @type delete_id_namespace_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => String.t()
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_input() :: %{}

  """
  @type list_tags_for_resource_input() :: %{}

  @typedoc """

  ## Example:

      get_provider_service_output() :: %{
        "anonymizedOutput" => [boolean()],
        "providerComponentSchema" => provider_component_schema(),
        "providerConfigurationDefinition" => [any()],
        "providerEndpointConfiguration" => list(),
        "providerEntityOutputDefinition" => [any()],
        "providerIdNameSpaceConfiguration" => provider_id_name_space_configuration(),
        "providerIntermediateDataAccessConfiguration" => provider_intermediate_data_access_configuration(),
        "providerJobConfiguration" => [any()],
        "providerName" => String.t(),
        "providerServiceArn" => String.t(),
        "providerServiceDisplayName" => String.t(),
        "providerServiceName" => String.t(),
        "providerServiceType" => list(any())
      }

  """
  @type get_provider_service_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_output() :: %{}

  """
  @type untag_resource_output() :: %{}

  @typedoc """

  ## Example:

      add_policy_statement_output() :: %{
        "arn" => String.t(),
        "policy" => String.t(),
        "token" => String.t()
      }

  """
  @type add_policy_statement_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      id_mapping_workflow_summary() :: %{
        "createdAt" => [non_neg_integer()],
        "updatedAt" => [non_neg_integer()],
        "workflowArn" => String.t(),
        "workflowName" => String.t()
      }

  """
  @type id_mapping_workflow_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      output_source() :: %{
        "KMSArn" => String.t(),
        "applyNormalization" => [boolean()],
        "output" => list(output_attribute()()),
        "outputS3Path" => String.t()
      }

  """
  @type output_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      provider_properties() :: %{
        "intermediateSourceConfiguration" => intermediate_source_configuration(),
        "providerConfiguration" => [any()],
        "providerServiceArn" => String.t()
      }

  """
  @type provider_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_schema_mapping_output() :: %{
        "message" => [String.t()]
      }

  """
  @type delete_schema_mapping_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      provider_component_schema() :: %{
        "providerSchemaAttributes" => list(provider_schema_attribute()()),
        "schemas" => list(list([String.t()]())())
      }

  """
  @type provider_component_schema() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      id_mapping_job_output_source() :: %{
        "KMSArn" => String.t(),
        "outputS3Path" => String.t(),
        "roleArn" => String.t()
      }

  """
  @type id_mapping_job_output_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      id_namespace_summary() :: %{
        "createdAt" => [non_neg_integer()],
        "description" => String.t(),
        "idNamespaceArn" => String.t(),
        "idNamespaceName" => String.t(),
        "type" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type id_namespace_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_id_mapping_job_output() :: %{
        "jobId" => String.t(),
        "outputSourceConfig" => list(id_mapping_job_output_source()())
      }

  """
  @type start_id_mapping_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_matching_workflow_output() :: %{
        "createdAt" => [non_neg_integer()],
        "description" => String.t(),
        "incrementalRunConfig" => incremental_run_config(),
        "inputSourceConfig" => list(input_source()()),
        "outputSourceConfig" => list(output_source()()),
        "resolutionTechniques" => resolution_techniques(),
        "roleArn" => [String.t()],
        "tags" => map(),
        "updatedAt" => [non_neg_integer()],
        "workflowArn" => String.t(),
        "workflowName" => String.t()
      }

  """
  @type get_matching_workflow_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      schema_input_attribute() :: %{
        "fieldName" => String.t(),
        "groupName" => String.t(),
        "matchKey" => String.t(),
        "subType" => String.t(),
        "type" => list(any())
      }

  """
  @type schema_input_attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      id_namespace_input_source() :: %{
        "inputSourceARN" => [String.t()],
        "schemaName" => String.t()
      }

  """
  @type id_namespace_input_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      provider_marketplace_configuration() :: %{
        "assetId" => [String.t()],
        "dataSetId" => [String.t()],
        "listingId" => [String.t()],
        "revisionId" => [String.t()]
      }

  """
  @type provider_marketplace_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_matching_job_output() :: %{
        "endTime" => [non_neg_integer()],
        "errorDetails" => error_details(),
        "jobId" => String.t(),
        "metrics" => job_metrics(),
        "outputSourceConfig" => list(job_output_source()()),
        "startTime" => [non_neg_integer()],
        "status" => list(any())
      }

  """
  @type get_matching_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      rule_based_properties() :: %{
        "attributeMatchingModel" => list(any()),
        "rules" => list(rule()())
      }

  """
  @type rule_based_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_id_namespace_output() :: %{
        "createdAt" => [non_neg_integer()],
        "description" => String.t(),
        "idMappingWorkflowProperties" => list(id_namespace_id_mapping_workflow_properties()()),
        "idNamespaceArn" => String.t(),
        "idNamespaceName" => String.t(),
        "inputSourceConfig" => list(id_namespace_input_source()()),
        "roleArn" => String.t(),
        "tags" => map(),
        "type" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type create_id_namespace_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_id_namespace_output() :: %{
        "createdAt" => [non_neg_integer()],
        "description" => String.t(),
        "idMappingWorkflowProperties" => list(id_namespace_id_mapping_workflow_properties()()),
        "idNamespaceArn" => String.t(),
        "idNamespaceName" => String.t(),
        "inputSourceConfig" => list(id_namespace_input_source()()),
        "roleArn" => String.t(),
        "type" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type update_id_namespace_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      id_mapping_workflow_input_source() :: %{
        "inputSourceARN" => [String.t()],
        "schemaName" => String.t(),
        "type" => list(any())
      }

  """
  @type id_mapping_workflow_input_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_match_id_input() :: %{
        optional("applyNormalization") => [boolean()],
        required("record") => map()
      }

  """
  @type get_match_id_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      incremental_run_config() :: %{
        "incrementalRunType" => list(any())
      }

  """
  @type incremental_run_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_matching_workflow_input() :: %{}

  """
  @type get_matching_workflow_input() :: %{}

  @typedoc """

  ## Example:

      list_matching_jobs_output() :: %{
        "jobs" => list(job_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_matching_jobs_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_provider_services_output() :: %{
        "nextToken" => String.t(),
        "providerServiceSummaries" => list(provider_service_summary()())
      }

  """
  @type list_provider_services_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_policy_output() :: %{
        "arn" => String.t(),
        "policy" => String.t(),
        "token" => String.t()
      }

  """
  @type get_policy_output() :: %{String.t() => any()}

  @type add_policy_statement_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type batch_delete_unique_id_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type create_id_mapping_workflow_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()
          | exceeds_limit_exception()

  @type create_id_namespace_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()
          | exceeds_limit_exception()

  @type create_matching_workflow_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()
          | exceeds_limit_exception()

  @type create_schema_mapping_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()
          | exceeds_limit_exception()

  @type delete_id_mapping_workflow_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_id_namespace_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type delete_matching_workflow_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_policy_statement_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_schema_mapping_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type get_id_mapping_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_id_mapping_workflow_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_id_namespace_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_match_id_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_matching_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_matching_workflow_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_provider_service_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_schema_mapping_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_id_mapping_jobs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_id_mapping_workflows_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_id_namespaces_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_matching_jobs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_matching_workflows_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_provider_services_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_schema_mappings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type put_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_id_mapping_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | exceeds_limit_exception()

  @type start_matching_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | exceeds_limit_exception()

  @type tag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type untag_resource_errors() :: internal_server_exception() | resource_not_found_exception()

  @type update_id_mapping_workflow_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_id_namespace_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_matching_workflow_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_schema_mapping_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "entityresolution",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "EntityResolution",
      signature_version: "v4",
      signing_name: "entityresolution",
      target_prefix: nil
    }
  end

  @doc """
  Adds a policy statement object.

  To retrieve a list of existing policy statements, use
  the `GetPolicy` API.

  ## Required positional parameters:
  * `:arn` (`t:string`) The Amazon Resource Name (ARN) of the resource that will be accessed by the
         principal.
  * `:statement_id` (`t:string`) A statement identifier that differentiates the statement from others in the same
         policy.

  ## Optional parameters:
  """
  @spec add_policy_statement(
          AWS.Client.t(),
          String.t(),
          String.t(),
          add_policy_statement_input(),
          Keyword.t()
        ) ::
          {:ok, add_policy_statement_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, add_policy_statement_errors()}
  def add_policy_statement(%Client{} = client, arn, statement_id, input, options \\ []) do
    url_path = "/policies/#{AWS.Util.encode_uri(arn)}/#{AWS.Util.encode_uri(statement_id)}"
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
  Deletes multiple unique IDs in a matching workflow.

  ## Required positional parameters:
  * `:workflow_name` (`t:string`) The name of the workflow.

  ## Optional parameters:
  * `:input_source` (`t:`) The input source for the batch delete unique ID operation.
  * `:unique_ids` (`t:list[com.amazonaws.entityresolution#UniqueId]`) The unique IDs to delete.
  """
  @spec batch_delete_unique_id(
          AWS.Client.t(),
          String.t(),
          batch_delete_unique_id_input(),
          Keyword.t()
        ) ::
          {:ok, batch_delete_unique_id_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_delete_unique_id_errors()}
  def batch_delete_unique_id(%Client{} = client, workflow_name, input, options \\ []) do
    url_path = "/matchingworkflows/#{AWS.Util.encode_uri(workflow_name)}/uniqueids"

    {headers, input} =
      [
        {"inputSource", "inputSource"},
        {"uniqueIds", "uniqueIds"}
      ]
      |> Request.build_params(input)

    query_params = []

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
  Creates an `IdMappingWorkflow` object which stores the configuration of the
  data processing job to be run.

  Each `IdMappingWorkflow` must have a unique
  workflow name. To modify an existing workflow, use the `UpdateIdMappingWorkflow`
  API.

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec create_id_mapping_workflow(
          AWS.Client.t(),
          create_id_mapping_workflow_input(),
          Keyword.t()
        ) ::
          {:ok, create_id_mapping_workflow_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_id_mapping_workflow_errors()}
  def create_id_mapping_workflow(%Client{} = client, input, options \\ []) do
    url_path = "/idmappingworkflows"
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
  Creates an ID namespace object which will help customers provide metadata
  explaining
  their dataset and how to use it.

  Each ID namespace must have a unique name. To modify an
  existing ID namespace, use the `UpdateIdNamespace` API.

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec create_id_namespace(AWS.Client.t(), create_id_namespace_input(), Keyword.t()) ::
          {:ok, create_id_namespace_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_id_namespace_errors()}
  def create_id_namespace(%Client{} = client, input, options \\ []) do
    url_path = "/idnamespaces"
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
  Creates a `MatchingWorkflow` object which stores the configuration of the
  data processing job to be run.

  It is important to note that there should not be a
  pre-existing `MatchingWorkflow` with the same name. To modify an existing
  workflow, utilize the `UpdateMatchingWorkflow` API.

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec create_matching_workflow(AWS.Client.t(), create_matching_workflow_input(), Keyword.t()) ::
          {:ok, create_matching_workflow_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_matching_workflow_errors()}
  def create_matching_workflow(%Client{} = client, input, options \\ []) do
    url_path = "/matchingworkflows"
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
  Creates a schema mapping, which defines the schema of the input customer records
  table.

  The `SchemaMapping` also provides Entity Resolution with some metadata about the
  table, such as the attribute types of the columns and which columns to match on.

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec create_schema_mapping(AWS.Client.t(), create_schema_mapping_input(), Keyword.t()) ::
          {:ok, create_schema_mapping_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_schema_mapping_errors()}
  def create_schema_mapping(%Client{} = client, input, options \\ []) do
    url_path = "/schemas"
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
  Deletes the `IdMappingWorkflow` with a given name.

  This operation will
  succeed even if a workflow with the given name does not exist.

  ## Required positional parameters:
  * `:workflow_name` (`t:string`) The name of the workflow to be deleted.

  ## Optional parameters:
  """
  @spec delete_id_mapping_workflow(
          AWS.Client.t(),
          String.t(),
          delete_id_mapping_workflow_input(),
          Keyword.t()
        ) ::
          {:ok, delete_id_mapping_workflow_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_id_mapping_workflow_errors()}
  def delete_id_mapping_workflow(%Client{} = client, workflow_name, input, options \\ []) do
    url_path = "/idmappingworkflows/#{AWS.Util.encode_uri(workflow_name)}"
    headers = []
    query_params = []

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
  Deletes the `IdNamespace` with a given name.

  ## Required positional parameters:
  * `:id_namespace_name` (`t:string`) The name of the ID namespace.

  ## Optional parameters:
  """
  @spec delete_id_namespace(AWS.Client.t(), String.t(), delete_id_namespace_input(), Keyword.t()) ::
          {:ok, delete_id_namespace_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_id_namespace_errors()}
  def delete_id_namespace(%Client{} = client, id_namespace_name, input, options \\ []) do
    url_path = "/idnamespaces/#{AWS.Util.encode_uri(id_namespace_name)}"
    headers = []
    query_params = []

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
  Deletes the `MatchingWorkflow` with a given name.

  This operation will succeed
  even if a workflow with the given name does not exist.

  ## Required positional parameters:
  * `:workflow_name` (`t:string`) The name of the workflow to be retrieved.

  ## Optional parameters:
  """
  @spec delete_matching_workflow(
          AWS.Client.t(),
          String.t(),
          delete_matching_workflow_input(),
          Keyword.t()
        ) ::
          {:ok, delete_matching_workflow_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_matching_workflow_errors()}
  def delete_matching_workflow(%Client{} = client, workflow_name, input, options \\ []) do
    url_path = "/matchingworkflows/#{AWS.Util.encode_uri(workflow_name)}"
    headers = []
    query_params = []

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
  Deletes the policy statement.

  ## Required positional parameters:
  * `:arn` (`t:string`) The ARN of the resource for which the policy need to be deleted.
  * `:statement_id` (`t:string`) A statement identifier that differentiates the statement from others in the same
         policy.

  ## Optional parameters:
  """
  @spec delete_policy_statement(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_policy_statement_input(),
          Keyword.t()
        ) ::
          {:ok, delete_policy_statement_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_policy_statement_errors()}
  def delete_policy_statement(%Client{} = client, arn, statement_id, input, options \\ []) do
    url_path = "/policies/#{AWS.Util.encode_uri(arn)}/#{AWS.Util.encode_uri(statement_id)}"
    headers = []
    query_params = []

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
  Deletes the `SchemaMapping` with a given name.

  This operation will succeed
  even if a schema with the given name does not exist. This operation will fail if
  there is a
  `MatchingWorkflow` object that references the `SchemaMapping` in
  the workflow's `InputSourceConfig`.

  ## Required positional parameters:
  * `:schema_name` (`t:string`) The name of the schema to delete.

  ## Optional parameters:
  """
  @spec delete_schema_mapping(
          AWS.Client.t(),
          String.t(),
          delete_schema_mapping_input(),
          Keyword.t()
        ) ::
          {:ok, delete_schema_mapping_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_schema_mapping_errors()}
  def delete_schema_mapping(%Client{} = client, schema_name, input, options \\ []) do
    url_path = "/schemas/#{AWS.Util.encode_uri(schema_name)}"
    headers = []
    query_params = []

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
  Gets the status, metrics, and errors (if there are any) that are associated with
  a
  job.

  ## Required positional parameters:
  * `:job_id` (`t:string`) The ID of the job.
  * `:workflow_name` (`t:string`) The name of the workflow.

  ## Optional parameters:
  """
  @spec get_id_mapping_job(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_id_mapping_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_id_mapping_job_errors()}
  def get_id_mapping_job(%Client{} = client, job_id, workflow_name, options \\ []) do
    url_path =
      "/idmappingworkflows/#{AWS.Util.encode_uri(workflow_name)}/jobs/#{AWS.Util.encode_uri(job_id)}"

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
  Returns the `IdMappingWorkflow` with a given name, if it exists.

  ## Required positional parameters:
  * `:workflow_name` (`t:string`) The name of the workflow.

  ## Optional parameters:
  """
  @spec get_id_mapping_workflow(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_id_mapping_workflow_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_id_mapping_workflow_errors()}
  def get_id_mapping_workflow(%Client{} = client, workflow_name, options \\ []) do
    url_path = "/idmappingworkflows/#{AWS.Util.encode_uri(workflow_name)}"

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
  Returns the `IdNamespace` with a given name, if it exists.

  ## Required positional parameters:
  * `:id_namespace_name` (`t:string`) The name of the ID namespace.

  ## Optional parameters:
  """
  @spec get_id_namespace(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_id_namespace_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_id_namespace_errors()}
  def get_id_namespace(%Client{} = client, id_namespace_name, options \\ []) do
    url_path = "/idnamespaces/#{AWS.Util.encode_uri(id_namespace_name)}"

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
  Returns the corresponding Match ID of a customer record if the record has been
  processed.

  ## Required positional parameters:
  * `:workflow_name` (`t:string`) The name of the workflow.

  ## Optional parameters:
  """
  @spec get_match_id(AWS.Client.t(), String.t(), get_match_id_input(), Keyword.t()) ::
          {:ok, get_match_id_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_match_id_errors()}
  def get_match_id(%Client{} = client, workflow_name, input, options \\ []) do
    url_path = "/matchingworkflows/#{AWS.Util.encode_uri(workflow_name)}/matches"
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
  Gets the status, metrics, and errors (if there are any) that are associated with
  a
  job.

  ## Required positional parameters:
  * `:job_id` (`t:string`) The ID of the job.
  * `:workflow_name` (`t:string`) The name of the workflow.

  ## Optional parameters:
  """
  @spec get_matching_job(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_matching_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_matching_job_errors()}
  def get_matching_job(%Client{} = client, job_id, workflow_name, options \\ []) do
    url_path =
      "/matchingworkflows/#{AWS.Util.encode_uri(workflow_name)}/jobs/#{AWS.Util.encode_uri(job_id)}"

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
  Returns the `MatchingWorkflow` with a given name, if it exists.

  ## Required positional parameters:
  * `:workflow_name` (`t:string`) The name of the workflow.

  ## Optional parameters:
  """
  @spec get_matching_workflow(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_matching_workflow_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_matching_workflow_errors()}
  def get_matching_workflow(%Client{} = client, workflow_name, options \\ []) do
    url_path = "/matchingworkflows/#{AWS.Util.encode_uri(workflow_name)}"

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
  Returns the resource-based policy.

  ## Required positional parameters:
  * `:arn` (`t:string`) The Amazon Resource Name (ARN) of the resource for which the policy need to be
         returned.

  ## Optional parameters:
  """
  @spec get_policy(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_policy_errors()}
  def get_policy(%Client{} = client, arn, options \\ []) do
    url_path = "/policies/#{AWS.Util.encode_uri(arn)}"

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
  Returns the `ProviderService` of a given name.

  ## Required positional parameters:
  * `:provider_name` (`t:string`) The name of the provider. This name is typically the company name.
  * `:provider_service_name` (`t:string`) The ARN (Amazon Resource Name) of the product that the provider service provides.

  ## Optional parameters:
  """
  @spec get_provider_service(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_provider_service_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_provider_service_errors()}
  def get_provider_service(
        %Client{} = client,
        provider_name,
        provider_service_name,
        options \\ []
      ) do
    url_path =
      "/providerservices/#{AWS.Util.encode_uri(provider_name)}/#{AWS.Util.encode_uri(provider_service_name)}"

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
  Returns the SchemaMapping of a given name.

  ## Required positional parameters:
  * `:schema_name` (`t:string`) The name of the schema to be retrieved.

  ## Optional parameters:
  """
  @spec get_schema_mapping(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_schema_mapping_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_schema_mapping_errors()}
  def get_schema_mapping(%Client{} = client, schema_name, options \\ []) do
    url_path = "/schemas/#{AWS.Util.encode_uri(schema_name)}"

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
  Lists all ID mapping jobs for a given workflow.

  ## Required positional parameters:
  * `:workflow_name` (`t:string`) The name of the workflow to be retrieved.

  ## Optional parameters:
  * `:max_results` (`t:`) The maximum number of objects returned per page.
  * `:next_token` (`t:string`) The pagination token from the previous API call.
  """
  @spec list_id_mapping_jobs(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_id_mapping_jobs_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_id_mapping_jobs_errors()}
  def list_id_mapping_jobs(%Client{} = client, workflow_name, options \\ []) do
    url_path = "/idmappingworkflows/#{AWS.Util.encode_uri(workflow_name)}/jobs"

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
  Returns a list of all the `IdMappingWorkflows` that have been created for an
  Amazon Web Services account.

  ## Required positional parameters:

  ## Optional parameters:
  * `:max_results` (`t:`) The maximum number of objects returned per page.
  * `:next_token` (`t:string`) The pagination token from the previous API call.
  """
  @spec list_id_mapping_workflows(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_id_mapping_workflows_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_id_mapping_workflows_errors()}
  def list_id_mapping_workflows(%Client{} = client, options \\ []) do
    url_path = "/idmappingworkflows"

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
  Returns a list of all ID namespaces.

  ## Required positional parameters:

  ## Optional parameters:
  * `:max_results` (`t:`) The maximum number of <code>IdNamespace</code> objects returned per page.
  * `:next_token` (`t:string`) The pagination token from the previous API call.
  """
  @spec list_id_namespaces(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_id_namespaces_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_id_namespaces_errors()}
  def list_id_namespaces(%Client{} = client, options \\ []) do
    url_path = "/idnamespaces"

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
  Lists all jobs for a given workflow.

  ## Required positional parameters:
  * `:workflow_name` (`t:string`) The name of the workflow to be retrieved.

  ## Optional parameters:
  * `:max_results` (`t:`) The maximum number of objects returned per page.
  * `:next_token` (`t:string`) The pagination token from the previous API call.
  """
  @spec list_matching_jobs(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_matching_jobs_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_matching_jobs_errors()}
  def list_matching_jobs(%Client{} = client, workflow_name, options \\ []) do
    url_path = "/matchingworkflows/#{AWS.Util.encode_uri(workflow_name)}/jobs"

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
  Returns a list of all the `MatchingWorkflows` that have been created for an
  Amazon Web Services account.

  ## Required positional parameters:

  ## Optional parameters:
  * `:max_results` (`t:`) The maximum number of objects returned per page.
  * `:next_token` (`t:string`) The pagination token from the previous API call.
  """
  @spec list_matching_workflows(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_matching_workflows_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_matching_workflows_errors()}
  def list_matching_workflows(%Client{} = client, options \\ []) do
    url_path = "/matchingworkflows"

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
  Returns a list of all the `ProviderServices` that are available in this
  Amazon Web Services Region.

  ## Required positional parameters:

  ## Optional parameters:
  * `:max_results` (`t:`) The maximum number of objects returned per page.
  * `:next_token` (`t:string`) The pagination token from the previous API call.
  * `:provider_name` (`t:string`) The name of the provider. This name is typically the company name.
  """
  @spec list_provider_services(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_provider_services_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_provider_services_errors()}
  def list_provider_services(%Client{} = client, options \\ []) do
    url_path = "/providerservices"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, next_token: nil, provider_name: nil
    # ])

    headers = []
    query_params = []

    {provider_name, options} = Keyword.pop(options, :provider_name, nil)

    query_params =
      if !is_nil(provider_name) do
        [{"providerName", provider_name} | query_params]
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
  Returns a list of all the `SchemaMappings` that have been created for an
  Amazon Web Services account.

  ## Required positional parameters:

  ## Optional parameters:
  * `:max_results` (`t:`) The maximum number of objects returned per page.
  * `:next_token` (`t:string`) The pagination token from the previous API call.
  """
  @spec list_schema_mappings(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_schema_mappings_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_schema_mappings_errors()}
  def list_schema_mappings(%Client{} = client, options \\ []) do
    url_path = "/schemas"

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
  Displays the tags associated with an Entity Resolution resource.

  In Entity Resolution,
  `SchemaMapping`, and `MatchingWorkflow` can be tagged.

  ## Required positional parameters:
  * `:resource_arn` (`t:string`) The ARN of the resource for which you want to view tags.

  ## Optional parameters:
  """
  @spec list_tags_for_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_output(), any()}
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
  Updates the resource-based policy.

  ## Required positional parameters:
  * `:arn` (`t:string`) The Amazon Resource Name (ARN) of the resource for which the policy needs to be
         updated.

  ## Optional parameters:
  """
  @spec put_policy(AWS.Client.t(), String.t(), put_policy_input(), Keyword.t()) ::
          {:ok, put_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_policy_errors()}
  def put_policy(%Client{} = client, arn, input, options \\ []) do
    url_path = "/policies/#{AWS.Util.encode_uri(arn)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Starts the `IdMappingJob` of a workflow.

  The workflow must have previously
  been created using the `CreateIdMappingWorkflow` endpoint.

  ## Required positional parameters:
  * `:workflow_name` (`t:string`) The name of the ID mapping job to be retrieved.

  ## Optional parameters:
  """
  @spec start_id_mapping_job(
          AWS.Client.t(),
          String.t(),
          start_id_mapping_job_input(),
          Keyword.t()
        ) ::
          {:ok, start_id_mapping_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_id_mapping_job_errors()}
  def start_id_mapping_job(%Client{} = client, workflow_name, input, options \\ []) do
    url_path = "/idmappingworkflows/#{AWS.Util.encode_uri(workflow_name)}/jobs"
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
  Starts the `MatchingJob` of a workflow.

  The workflow must have previously
  been created using the `CreateMatchingWorkflow` endpoint.

  ## Required positional parameters:
  * `:workflow_name` (`t:string`) The name of the matching job to be retrieved.

  ## Optional parameters:
  """
  @spec start_matching_job(AWS.Client.t(), String.t(), start_matching_job_input(), Keyword.t()) ::
          {:ok, start_matching_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_matching_job_errors()}
  def start_matching_job(%Client{} = client, workflow_name, input, options \\ []) do
    url_path = "/matchingworkflows/#{AWS.Util.encode_uri(workflow_name)}/jobs"
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
  Assigns one or more tags (key-value pairs) to the specified Entity Resolution
  resource.

  Tags can help you organize and categorize your resources. You can also use them
  to scope
  user permissions by granting a user permission to access or change only
  resources with
  certain tag values. In Entity Resolution, `SchemaMapping` and
  `MatchingWorkflow` can be tagged. Tags don't have any semantic meaning to
  Amazon Web Services and are interpreted strictly as strings of characters. You
  can use
  the `TagResource` action with a resource that already has tags. If you specify a
  new tag key, this tag is appended to the list of tags associated with the
  resource. If you
  specify a tag key that is already associated with the resource, the new tag
  value that you
  specify replaces the previous value for that tag.

  ## Required positional parameters:
  * `:resource_arn` (`t:string`) The ARN of the resource for which you want to view tags.

  ## Optional parameters:
  """
  @spec tag_resource(AWS.Client.t(), String.t(), tag_resource_input(), Keyword.t()) ::
          {:ok, tag_resource_output(), any()}
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
  Removes one or more tags from the specified Entity Resolution resource.

  In Entity Resolution, `SchemaMapping`, and `MatchingWorkflow` can be
  tagged.

  ## Required positional parameters:
  * `:resource_arn` (`t:string`) The ARN of the resource for which you want to untag.

  ## Optional parameters:
  * `:tag_keys` (`t:list[com.amazonaws.entityresolution#TagKey]`) The list of tag keys to remove from the resource.
  """
  @spec untag_resource(AWS.Client.t(), String.t(), untag_resource_input(), Keyword.t()) ::
          {:ok, untag_resource_output(), any()}
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
  Updates an existing `IdMappingWorkflow`.

  This method is identical to
  `CreateIdMappingWorkflow`, except it uses an HTTP `PUT` request
  instead of a `POST` request, and the `IdMappingWorkflow` must already
  exist for the method to succeed.

  ## Required positional parameters:
  * `:workflow_name` (`t:string`) The name of the workflow.

  ## Optional parameters:
  """
  @spec update_id_mapping_workflow(
          AWS.Client.t(),
          String.t(),
          update_id_mapping_workflow_input(),
          Keyword.t()
        ) ::
          {:ok, update_id_mapping_workflow_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_id_mapping_workflow_errors()}
  def update_id_mapping_workflow(%Client{} = client, workflow_name, input, options \\ []) do
    url_path = "/idmappingworkflows/#{AWS.Util.encode_uri(workflow_name)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates an existing ID namespace.

  ## Required positional parameters:
  * `:id_namespace_name` (`t:string`) The name of the ID namespace.

  ## Optional parameters:
  """
  @spec update_id_namespace(AWS.Client.t(), String.t(), update_id_namespace_input(), Keyword.t()) ::
          {:ok, update_id_namespace_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_id_namespace_errors()}
  def update_id_namespace(%Client{} = client, id_namespace_name, input, options \\ []) do
    url_path = "/idnamespaces/#{AWS.Util.encode_uri(id_namespace_name)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates an existing `MatchingWorkflow`.

  This method is identical to
  `CreateMatchingWorkflow`, except it uses an HTTP `PUT` request
  instead of a `POST` request, and the `MatchingWorkflow` must already
  exist for the method to succeed.

  ## Required positional parameters:
  * `:workflow_name` (`t:string`) The name of the workflow to be retrieved.

  ## Optional parameters:
  """
  @spec update_matching_workflow(
          AWS.Client.t(),
          String.t(),
          update_matching_workflow_input(),
          Keyword.t()
        ) ::
          {:ok, update_matching_workflow_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_matching_workflow_errors()}
  def update_matching_workflow(%Client{} = client, workflow_name, input, options \\ []) do
    url_path = "/matchingworkflows/#{AWS.Util.encode_uri(workflow_name)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a schema mapping.

  A schema is immutable if it is being used by a workflow. Therefore, you can't
  update
  a schema mapping if it's associated with a workflow.

  ## Required positional parameters:
  * `:schema_name` (`t:string`) The name of the schema. There can&#39;t be multiple <code>SchemaMappings</code> with the
         same name.

  ## Optional parameters:
  """
  @spec update_schema_mapping(
          AWS.Client.t(),
          String.t(),
          update_schema_mapping_input(),
          Keyword.t()
        ) ::
          {:ok, update_schema_mapping_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_schema_mapping_errors()}
  def update_schema_mapping(%Client{} = client, schema_name, input, options \\ []) do
    url_path = "/schemas/#{AWS.Util.encode_uri(schema_name)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
