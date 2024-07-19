# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.M2 do
  @moduledoc """
  Amazon Web Services Mainframe Modernization provides tools and resources to help
  you plan and implement migration and modernization from mainframes to Amazon
  Web Services managed runtime environments. It provides tools for analyzing
  existing mainframe applications, developing or updating mainframe applications
  using COBOL or PL/I, and implementing an automated pipeline for continuous
  integration and continuous delivery (CI/CD) of the applications.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      record_length() :: %{
        "max" => integer(),
        "min" => integer()
      }
      
  """
  @type record_length() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      alternate_key() :: %{
        "allowDuplicates" => boolean(),
        "length" => integer(),
        "name" => [String.t()],
        "offset" => integer()
      }
      
  """
  @type alternate_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_batch_job_executions_request() :: %{
        optional("executionIds") => list(String.t()()),
        optional("jobName") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("startedAfter") => non_neg_integer(),
        optional("startedBefore") => non_neg_integer(),
        optional("status") => String.t()
      }
      
  """
  @type list_batch_job_executions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_environment_response() :: %{
        required("environmentId") => String.t()
      }
      
  """
  @type update_environment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_deployments_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_deployments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pending_maintenance() :: %{
        "engineVersion" => [String.t()],
        "schedule" => maintenance_schedule()
      }
      
  """
  @type pending_maintenance() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deployment_summary() :: %{
        "applicationId" => String.t(),
        "applicationVersion" => integer(),
        "creationTime" => non_neg_integer(),
        "deploymentId" => String.t(),
        "environmentId" => String.t(),
        "status" => String.t(),
        "statusReason" => [String.t()]
      }
      
  """
  @type deployment_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      file_batch_job_identifier() :: %{
        "fileName" => [String.t()],
        "folderPath" => [String.t()]
      }
      
  """
  @type file_batch_job_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_data_sets_response() :: %{
        "dataSets" => list(data_set_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_data_sets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      job_step() :: %{
        "procStepName" => [String.t()],
        "procStepNumber" => integer(),
        "stepCondCode" => [String.t()],
        "stepName" => [String.t()],
        "stepNumber" => integer(),
        "stepRestartable" => boolean()
      }
      
  """
  @type job_step() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_data_set_import_task_response() :: %{
        required("taskId") => String.t()
      }
      
  """
  @type create_data_set_import_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      get_batch_job_execution_request() :: %{}
      
  """
  @type get_batch_job_execution_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_application_from_environment_request() :: %{}
      
  """
  @type delete_application_from_environment_request() :: %{}

  @typedoc """

  ## Example:
      
      job_step_restart_marker() :: %{
        "fromProcStep" => [String.t()],
        "fromStep" => [String.t()],
        "toProcStep" => [String.t()],
        "toStep" => [String.t()]
      }
      
  """
  @type job_step_restart_marker() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_set() :: %{
        "datasetName" => [String.t()],
        "datasetOrg" => list(),
        "recordLength" => record_length(),
        "relativePath" => [String.t()],
        "storageType" => [String.t()]
      }
      
  """
  @type data_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_deployments_response() :: %{
        "deployments" => list(deployment_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_deployments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vsam_attributes() :: %{
        "alternateKeys" => list(alternate_key()()),
        "compressed" => boolean(),
        "encoding" => [String.t()],
        "format" => [String.t()],
        "primaryKey" => primary_key()
      }
      
  """
  @type vsam_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deployed_version_summary() :: %{
        "applicationVersion" => integer(),
        "status" => String.t(),
        "statusReason" => [String.t()]
      }
      
  """
  @type deployed_version_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      environment_summary() :: %{
        "creationTime" => non_neg_integer(),
        "engineType" => String.t(),
        "engineVersion" => String.t(),
        "environmentArn" => String.t(),
        "environmentId" => String.t(),
        "instanceType" => String.t(),
        "name" => String.t(),
        "status" => String.t()
      }
      
  """
  @type environment_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_environment_request() :: %{}
      
  """
  @type get_environment_request() :: %{}

  @typedoc """

  ## Example:
      
      create_deployment_request() :: %{
        "applicationVersion" => integer(),
        "clientToken" => [String.t()],
        "environmentId" => String.t()
      }
      
  """
  @type create_deployment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vsam_detail_attributes() :: %{
        "alternateKeys" => list(alternate_key()()),
        "cacheAtStartup" => boolean(),
        "compressed" => boolean(),
        "encoding" => String.t(),
        "primaryKey" => primary_key(),
        "recordFormat" => String.t()
      }
      
  """
  @type vsam_detail_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_data_sets_request() :: %{
        optional("maxResults") => integer(),
        optional("nameFilter") => String.t(),
        optional("nextToken") => String.t(),
        optional("prefix") => String.t()
      }
      
  """
  @type list_data_sets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_data_set_details_response() :: %{
        "blocksize" => integer(),
        "creationTime" => non_neg_integer(),
        "dataSetName" => String.t(),
        "dataSetOrg" => list(),
        "fileSize" => [float()],
        "lastReferencedTime" => non_neg_integer(),
        "lastUpdatedTime" => non_neg_integer(),
        "location" => String.t(),
        "recordLength" => integer()
      }
      
  """
  @type get_data_set_details_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_data_set_details_request() :: %{}
      
  """
  @type get_data_set_details_request() :: %{}

  @typedoc """

  ## Example:
      
      application_version_summary() :: %{
        "applicationVersion" => integer(),
        "creationTime" => non_neg_integer(),
        "status" => String.t(),
        "statusReason" => [String.t()]
      }
      
  """
  @type application_version_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_deployment_response() :: %{
        required("deploymentId") => String.t()
      }
      
  """
  @type create_deployment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_environment_response() :: %{
        optional("actualCapacity") => integer(),
        optional("description") => String.t(),
        optional("highAvailabilityConfig") => high_availability_config(),
        optional("kmsKeyId") => [String.t()],
        optional("loadBalancerArn") => [String.t()],
        optional("pendingMaintenance") => pending_maintenance(),
        optional("preferredMaintenanceWindow") => String.t(),
        optional("publiclyAccessible") => boolean(),
        optional("statusReason") => [String.t()],
        optional("storageConfigurations") => list(list()()),
        optional("tags") => map(),
        required("creationTime") => non_neg_integer(),
        required("engineType") => String.t(),
        required("engineVersion") => String.t(),
        required("environmentArn") => String.t(),
        required("environmentId") => String.t(),
        required("instanceType") => String.t(),
        required("name") => String.t(),
        required("securityGroupIds") => list(String.t()()),
        required("status") => String.t(),
        required("subnetIds") => list(String.t()()),
        required("vpcId") => String.t()
      }
      
  """
  @type get_environment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      gdg_detail_attributes() :: %{
        "limit" => integer(),
        "rollDisposition" => String.t()
      }
      
  """
  @type gdg_detail_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restart_batch_job_identifier() :: %{
        "executionId" => String.t(),
        "jobStepRestartMarker" => job_step_restart_marker()
      }
      
  """
  @type restart_batch_job_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      script_batch_job_identifier() :: %{
        "scriptName" => [String.t()]
      }
      
  """
  @type script_batch_job_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      engine_versions_summary() :: %{
        "engineType" => [String.t()],
        "engineVersion" => [String.t()]
      }
      
  """
  @type engine_versions_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ps_attributes() :: %{
        "encoding" => [String.t()],
        "format" => [String.t()]
      }
      
  """
  @type ps_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_batch_job_execution_request() :: %{}
      
  """
  @type cancel_batch_job_execution_request() :: %{}

  @typedoc """

  ## Example:
      
      high_availability_config() :: %{
        "desiredCapacity" => integer()
      }
      
  """
  @type high_availability_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_batch_job_restart_points_request() :: %{}
      
  """
  @type list_batch_job_restart_points_request() :: %{}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      script_batch_job_definition() :: %{
        "scriptName" => [String.t()]
      }
      
  """
  @type script_batch_job_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_application_version_request() :: %{}
      
  """
  @type get_application_version_request() :: %{}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => [String.t()],
        "quotaCode" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()],
        "serviceCode" => [String.t()]
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_deployment_request() :: %{}
      
  """
  @type get_deployment_request() :: %{}

  @typedoc """

  ## Example:
      
      stop_application_request() :: %{
        optional("forceStop") => boolean()
      }
      
  """
  @type stop_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_set_summary() :: %{
        "creationTime" => non_neg_integer(),
        "dataSetName" => String.t(),
        "dataSetOrg" => String.t(),
        "format" => String.t(),
        "lastReferencedTime" => non_neg_integer(),
        "lastUpdatedTime" => non_neg_integer()
      }
      
  """
  @type data_set_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      po_attributes() :: %{
        "encoding" => [String.t()],
        "format" => [String.t()],
        "memberFileExtensions" => list(String.t()())
      }
      
  """
  @type po_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        required("tags") => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_application_request() :: %{
        optional("clientToken") => [String.t()],
        optional("description") => String.t(),
        optional("kmsKeyId") => [String.t()],
        optional("roleArn") => String.t(),
        optional("tags") => map(),
        required("definition") => list(),
        required("engineType") => String.t(),
        required("name") => String.t()
      }
      
  """
  @type create_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_environments_request() :: %{
        optional("engineType") => String.t(),
        optional("maxResults") => integer(),
        optional("names") => list(String.t()()),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_environments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_set_import_summary() :: %{
        "failed" => integer(),
        "inProgress" => integer(),
        "pending" => integer(),
        "succeeded" => integer(),
        "total" => integer()
      }
      
  """
  @type data_set_import_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception_field() :: %{
        "message" => [String.t()],
        "name" => [String.t()]
      }
      
  """
  @type validation_exception_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      log_group_summary() :: %{
        "logGroupName" => String.t(),
        "logType" => String.t()
      }
      
  """
  @type log_group_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_unavailable_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_application_response() :: %{
        required("applicationArn") => String.t(),
        required("applicationId") => String.t(),
        required("applicationVersion") => integer()
      }
      
  """
  @type create_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execution_timeout_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type execution_timeout_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_data_set_import_history_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_data_set_import_history_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_data_set_import_task_request() :: %{
        optional("clientToken") => [String.t()],
        required("importConfig") => list()
      }
      
  """
  @type create_data_set_import_task_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      efs_storage_configuration() :: %{
        "fileSystemId" => String.t(),
        "mountPoint" => String.t()
      }
      
  """
  @type efs_storage_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_application_response() :: %{}
      
  """
  @type delete_application_response() :: %{}

  @typedoc """

  ## Example:
      
      start_application_response() :: %{}
      
  """
  @type start_application_response() :: %{}

  @typedoc """

  ## Example:
      
      create_environment_response() :: %{
        required("environmentId") => String.t()
      }
      
  """
  @type create_environment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      po_detail_attributes() :: %{
        "encoding" => [String.t()],
        "format" => [String.t()]
      }
      
  """
  @type po_detail_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_application_request() :: %{
        optional("definition") => list(),
        optional("description") => String.t(),
        required("currentApplicationVersion") => integer()
      }
      
  """
  @type update_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_application_response() :: %{
        required("applicationVersion") => integer()
      }
      
  """
  @type update_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_batch_job_restart_points_response() :: %{
        "batchJobSteps" => list(job_step()())
      }
      
  """
  @type list_batch_job_restart_points_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_signed_bluinsights_url_response() :: %{
        "signedBiUrl" => [String.t()]
      }
      
  """
  @type get_signed_bluinsights_url_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => [String.t()],
        "retryAfterSeconds" => integer()
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_environment_request() :: %{}
      
  """
  @type delete_environment_request() :: %{}

  @typedoc """

  ## Example:
      
      start_application_request() :: %{}
      
  """
  @type start_application_request() :: %{}

  @typedoc """

  ## Example:
      
      get_application_response() :: %{
        optional("deployedVersion") => deployed_version_summary(),
        optional("description") => String.t(),
        optional("environmentId") => String.t(),
        optional("kmsKeyId") => [String.t()],
        optional("lastStartTime") => non_neg_integer(),
        optional("listenerArns") => list(String.t()()),
        optional("listenerPorts") => list(integer()()),
        optional("loadBalancerDnsName") => String.t(),
        optional("logGroups") => list(log_group_summary()()),
        optional("roleArn") => String.t(),
        optional("statusReason") => [String.t()],
        optional("tags") => map(),
        optional("targetGroupArns") => list(String.t()()),
        required("applicationArn") => String.t(),
        required("applicationId") => String.t(),
        required("creationTime") => non_neg_integer(),
        required("engineType") => String.t(),
        required("latestVersion") => application_version_summary(),
        required("name") => String.t(),
        required("status") => String.t()
      }
      
  """
  @type get_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_applications_request() :: %{
        optional("environmentId") => String.t(),
        optional("maxResults") => integer(),
        optional("names") => list(String.t()()),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_applications_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_batch_job_identifier() :: %{
        "bucket" => [String.t()],
        "identifier" => list(),
        "keyPrefix" => [String.t()]
      }
      
  """
  @type s3_batch_job_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_application_response() :: %{}
      
  """
  @type stop_application_response() :: %{}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      file_batch_job_definition() :: %{
        "fileName" => [String.t()],
        "folderPath" => [String.t()]
      }
      
  """
  @type file_batch_job_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_batch_job_execution_response() :: %{
        optional("batchJobIdentifier") => list(),
        optional("endTime") => non_neg_integer(),
        optional("jobId") => String.t(),
        optional("jobName") => String.t(),
        optional("jobStepRestartMarker") => job_step_restart_marker(),
        optional("jobType") => String.t(),
        optional("jobUser") => String.t(),
        optional("returnCode") => [String.t()],
        optional("statusReason") => [String.t()],
        required("applicationId") => String.t(),
        required("executionId") => String.t(),
        required("startTime") => non_neg_integer(),
        required("status") => String.t()
      }
      
  """
  @type get_batch_job_execution_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      list_batch_job_definitions_response() :: %{
        "batchJobDefinitions" => list(list()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_batch_job_definitions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      fsx_storage_configuration() :: %{
        "fileSystemId" => String.t(),
        "mountPoint" => String.t()
      }
      
  """
  @type fsx_storage_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()()),
        "message" => [String.t()],
        "reason" => String.t()
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
      
      data_set_import_item() :: %{
        "dataSet" => data_set(),
        "externalLocation" => list()
      }
      
  """
  @type data_set_import_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      gdg_attributes() :: %{
        "limit" => integer(),
        "rollDisposition" => [String.t()]
      }
      
  """
  @type gdg_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_deployment_response() :: %{
        optional("statusReason") => [String.t()],
        required("applicationId") => String.t(),
        required("applicationVersion") => integer(),
        required("creationTime") => non_neg_integer(),
        required("deploymentId") => String.t(),
        required("environmentId") => String.t(),
        required("status") => String.t()
      }
      
  """
  @type get_deployment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => [String.t()],
        "quotaCode" => [String.t()],
        "retryAfterSeconds" => integer(),
        "serviceCode" => [String.t()]
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_batch_job_executions_response() :: %{
        optional("nextToken") => String.t(),
        required("batchJobExecutions") => list(batch_job_execution_summary()())
      }
      
  """
  @type list_batch_job_executions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_application_versions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_application_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_engine_versions_response() :: %{
        optional("nextToken") => String.t(),
        required("engineVersions") => list(engine_versions_summary()())
      }
      
  """
  @type list_engine_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_environments_response() :: %{
        "environments" => list(environment_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_environments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      maintenance_schedule() :: %{
        "endTime" => non_neg_integer(),
        "startTime" => non_neg_integer()
      }
      
  """
  @type maintenance_schedule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_application_version_response() :: %{
        optional("description") => String.t(),
        optional("statusReason") => [String.t()],
        required("applicationVersion") => integer(),
        required("creationTime") => non_neg_integer(),
        required("definitionContent") => String.t(),
        required("name") => String.t(),
        required("status") => String.t()
      }
      
  """
  @type get_application_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      application_summary() :: %{
        "applicationArn" => String.t(),
        "applicationId" => String.t(),
        "applicationVersion" => integer(),
        "creationTime" => non_neg_integer(),
        "deploymentStatus" => String.t(),
        "description" => String.t(),
        "engineType" => String.t(),
        "environmentId" => String.t(),
        "lastStartTime" => non_neg_integer(),
        "name" => String.t(),
        "roleArn" => String.t(),
        "status" => String.t(),
        "versionStatus" => String.t()
      }
      
  """
  @type application_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_applications_response() :: %{
        "applications" => list(application_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_applications_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_application_versions_response() :: %{
        "applicationVersions" => list(application_version_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_application_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_environment_request() :: %{
        optional("clientToken") => [String.t()],
        optional("description") => String.t(),
        optional("engineVersion") => String.t(),
        optional("highAvailabilityConfig") => high_availability_config(),
        optional("kmsKeyId") => [String.t()],
        optional("preferredMaintenanceWindow") => String.t(),
        optional("publiclyAccessible") => boolean(),
        optional("securityGroupIds") => list(String.t()()),
        optional("storageConfigurations") => list(list()()),
        optional("subnetIds") => list(String.t()()),
        optional("tags") => map(),
        required("engineType") => String.t(),
        required("instanceType") => String.t(),
        required("name") => String.t()
      }
      
  """
  @type create_environment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_batch_job_execution_response() :: %{}
      
  """
  @type cancel_batch_job_execution_response() :: %{}

  @typedoc """

  ## Example:
      
      update_environment_request() :: %{
        optional("applyDuringMaintenanceWindow") => boolean(),
        optional("desiredCapacity") => integer(),
        optional("engineVersion") => String.t(),
        optional("forceUpdate") => boolean(),
        optional("instanceType") => String.t(),
        optional("preferredMaintenanceWindow") => [String.t()]
      }
      
  """
  @type update_environment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_batch_job_response() :: %{
        required("executionId") => String.t()
      }
      
  """
  @type start_batch_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_data_set_import_history_response() :: %{
        "dataSetImportTasks" => list(data_set_import_task()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_data_set_import_history_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_application_from_environment_response() :: %{}
      
  """
  @type delete_application_from_environment_response() :: %{}

  @typedoc """

  ## Example:
      
      start_batch_job_request() :: %{
        optional("jobParams") => map(),
        required("batchJobIdentifier") => list()
      }
      
  """
  @type start_batch_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_data_set_import_task_request() :: %{}
      
  """
  @type get_data_set_import_task_request() :: %{}

  @typedoc """

  ## Example:
      
      list_engine_versions_request() :: %{
        optional("engineType") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_engine_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      primary_key() :: %{
        "length" => integer(),
        "name" => [String.t()],
        "offset" => integer()
      }
      
  """
  @type primary_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_application_request() :: %{}
      
  """
  @type get_application_request() :: %{}

  @typedoc """

  ## Example:
      
      ps_detail_attributes() :: %{
        "encoding" => [String.t()],
        "format" => [String.t()]
      }
      
  """
  @type ps_detail_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_batch_job_definitions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("prefix") => [String.t()]
      }
      
  """
  @type list_batch_job_definitions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_environment_response() :: %{}
      
  """
  @type delete_environment_response() :: %{}

  @typedoc """

  ## Example:
      
      batch_job_execution_summary() :: %{
        "applicationId" => String.t(),
        "batchJobIdentifier" => list(),
        "endTime" => non_neg_integer(),
        "executionId" => String.t(),
        "jobId" => String.t(),
        "jobName" => String.t(),
        "jobType" => String.t(),
        "returnCode" => [String.t()],
        "startTime" => non_neg_integer(),
        "status" => String.t()
      }
      
  """
  @type batch_job_execution_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_application_request() :: %{}
      
  """
  @type delete_application_request() :: %{}

  @typedoc """

  ## Example:
      
      get_data_set_import_task_response() :: %{
        optional("summary") => data_set_import_summary(),
        required("status") => String.t(),
        required("taskId") => String.t()
      }
      
  """
  @type get_data_set_import_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_set_import_task() :: %{
        "status" => String.t(),
        "statusReason" => [String.t()],
        "summary" => data_set_import_summary(),
        "taskId" => String.t()
      }
      
  """
  @type data_set_import_task() :: %{String.t() => any()}

  @type cancel_batch_job_execution_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_application_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_data_set_import_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_deployment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_environment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_application_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_application_from_environment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_environment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type get_application_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_application_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_batch_job_execution_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_data_set_details_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | execution_timeout_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_data_set_import_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_deployment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_environment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_signed_bluinsights_url_errors() ::
          throttling_exception() | access_denied_exception() | internal_server_exception()

  @type list_application_versions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_applications_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_batch_job_definitions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_batch_job_executions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_batch_job_restart_points_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_data_set_import_history_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_data_sets_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | execution_timeout_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_deployments_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_engine_versions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_environments_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type start_application_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_batch_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type stop_application_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_application_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_environment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2021-04-28",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "m2",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "m2",
      signature_version: "v4",
      signing_name: "m2",
      target_prefix: nil
    }
  end

  @doc """
  Cancels the running of a specific batch job execution.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=m2%20CancelBatchJobExecution&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The unique identifier of the application.
  * `:execution_id` (`t:string`) The unique identifier of the batch job execution.

  ## Optional parameters:
  """

  @spec cancel_batch_job_execution(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, cancel_batch_job_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_batch_job_execution_errors()}

  def cancel_batch_job_execution(%Client{} = client, application_id, execution_id, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/batch-job-executions/#{AWS.Util.encode_uri(execution_id)}/cancel"

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
  Creates a new application with given parameters. Requires an existing runtime
  environment and application definition file.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=m2%20CreateApplication&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_application(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_application_errors()}

  def create_application(%Client{} = client, options \\ []) do
    url_path = "/applications"

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
  Starts a data set import task for a specific application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=m2%20CreateDataSetImportTask&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The unique identifier of the application for
  which you want to import data sets.

  ## Optional parameters:
  """

  @spec create_data_set_import_task(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_data_set_import_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_data_set_import_task_errors()}

  def create_data_set_import_task(%Client{} = client, application_id, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/dataset-import-task"

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
  Creates and starts a deployment to deploy an application into a runtime
  environment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=m2%20CreateDeployment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The application identifier.

  ## Optional parameters:
  """

  @spec create_deployment(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_deployment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_deployment_errors()}

  def create_deployment(%Client{} = client, application_id, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/deployments"

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
  Creates a runtime environment for a given runtime engine.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=m2%20CreateEnvironment&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_environment(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_environment_errors()}

  def create_environment(%Client{} = client, options \\ []) do
    url_path = "/environments"

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
  Deletes a specific application. You cannot delete a running application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=m2%20DeleteApplication&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The unique identifier of the application you
  want to delete.

  ## Optional parameters:
  """

  @spec delete_application(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_application_errors()}

  def delete_application(%Client{} = client, application_id, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}"

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
  Deletes a specific application from the specific runtime environment where it
  was previously deployed. You cannot delete a runtime environment using
  DeleteEnvironment if any application has ever been deployed to it. This API
  removes the association of the application with the runtime environment so you
  can delete the environment smoothly.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=m2%20DeleteApplicationFromEnvironment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The unique identifier of the application you
  want to delete.
  * `:environment_id` (`t:string`) The unique identifier of the runtime
  environment where the application was previously deployed.

  ## Optional parameters:
  """

  @spec delete_application_from_environment(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_application_from_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_application_from_environment_errors()}

  def delete_application_from_environment(
        %Client{} = client,
        application_id,
        environment_id,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/environment/#{AWS.Util.encode_uri(environment_id)}"

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
  Deletes a specific runtime environment. The environment cannot contain deployed
  applications. If it does, you must delete those applications before you delete
  the environment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=m2%20DeleteEnvironment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:environment_id` (`t:string`) The unique identifier of the runtime
  environment you want to delete.

  ## Optional parameters:
  """

  @spec delete_environment(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_environment_errors()}

  def delete_environment(%Client{} = client, environment_id, options \\ []) do
    url_path = "/environments/#{AWS.Util.encode_uri(environment_id)}"

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
  Describes the details of a specific application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=m2%20GetApplication&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The identifier of the application.

  ## Optional parameters:
  """

  @spec get_application(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_application_errors()}

  def get_application(%Client{} = client, application_id, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}"

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
  Returns details about a specific version of a specific application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=m2%20GetApplicationVersion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The unique identifier of the application.
  * `:application_version` (`t:integer`) The specific version of the application.

  ## Optional parameters:
  """

  @spec get_application_version(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_application_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_application_version_errors()}

  def get_application_version(
        %Client{} = client,
        application_id,
        application_version,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/versions/#{AWS.Util.encode_uri(application_version)}"

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
  Gets the details of a specific batch job execution for a specific application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=m2%20GetBatchJobExecution&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The identifier of the application.
  * `:execution_id` (`t:string`) The unique identifier of the batch job execution.

  ## Optional parameters:
  """

  @spec get_batch_job_execution(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_batch_job_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_batch_job_execution_errors()}

  def get_batch_job_execution(%Client{} = client, application_id, execution_id, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/batch-job-executions/#{AWS.Util.encode_uri(execution_id)}"

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
  Gets the details of a specific data set.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=m2%20GetDataSetDetails&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The unique identifier of the application that
  this data set is associated with.
  * `:data_set_name` (`t:string`) The name of the data set.

  ## Optional parameters:
  """

  @spec get_data_set_details(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_data_set_details_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_data_set_details_errors()}

  def get_data_set_details(%Client{} = client, application_id, data_set_name, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/datasets/#{AWS.Util.encode_uri(data_set_name)}"

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
  Gets the status of a data set import task initiated with the
  `CreateDataSetImportTask` operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=m2%20GetDataSetImportTask&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The application identifier.
  * `:task_id` (`t:string`) The task identifier returned by the
  CreateDataSetImportTask operation.

  ## Optional parameters:
  """

  @spec get_data_set_import_task(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_data_set_import_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_data_set_import_task_errors()}

  def get_data_set_import_task(%Client{} = client, application_id, task_id, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/dataset-import-tasks/#{AWS.Util.encode_uri(task_id)}"

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
  Gets details of a specific deployment with a given deployment identifier.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=m2%20GetDeployment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The unique identifier of the application.
  * `:deployment_id` (`t:string`) The unique identifier for the deployment.

  ## Optional parameters:
  """

  @spec get_deployment(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_deployment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_deployment_errors()}

  def get_deployment(%Client{} = client, application_id, deployment_id, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/deployments/#{AWS.Util.encode_uri(deployment_id)}"

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
  Describes a specific runtime environment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=m2%20GetEnvironment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:environment_id` (`t:string`) The unique identifier of the runtime
  environment.

  ## Optional parameters:
  """

  @spec get_environment(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_environment_errors()}

  def get_environment(%Client{} = client, environment_id, options \\ []) do
    url_path = "/environments/#{AWS.Util.encode_uri(environment_id)}"

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
  Gets a single sign-on URL that can be used to connect to AWS Blu Insights.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=m2%20GetSignedBluinsightsUrl&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec get_signed_bluinsights_url(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_signed_bluinsights_url_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_signed_bluinsights_url_errors()}

  def get_signed_bluinsights_url(%Client{} = client, options \\ []) do
    url_path = "/signed-bi-url"

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
  Returns a list of the application versions for a specific application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=m2%20ListApplicationVersions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The unique identifier of the application.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of application versions to
  return.
  * `:next_token` (`t:string`) A pagination token returned from a previous call to
  this operation. This specifies the next item to return. To return to the
  beginning of the list, exclude this parameter.
  """

  @spec list_application_versions(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_application_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_application_versions_errors()}

  def list_application_versions(%Client{} = client, application_id, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/versions"

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
  Lists the applications associated with a specific Amazon Web Services account.
  You can provide the unique identifier of a specific runtime environment in a
  query parameter to see all applications associated with that environment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=m2%20ListApplications&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:environment_id` (`t:string`) The unique identifier of the runtime
  environment where the applications are deployed.
  * `:max_results` (`t:integer`) The maximum number of applications to return.
  * `:names` (`t:list[com.amazonaws.m2#EntityName]`) The names of the
  applications.
  * `:next_token` (`t:string`) A pagination token to control the number of
  applications displayed in the list.
  """

  @spec list_applications(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_applications_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_applications_errors()}

  def list_applications(%Client{} = client, options \\ []) do
    url_path = "/applications"

    # Validate optional parameters
    optional_params = [environment_id: nil, max_results: nil, names: nil, next_token: nil]

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
      if opt_val = Keyword.get(options, :names) do
        [{"names", opt_val} | query_params]
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
      if opt_val = Keyword.get(options, :environment_id) do
        [{"environmentId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:environment_id, :max_results, :names, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all the available batch job definitions based on the batch job resources
  uploaded during the application creation. You can use the batch job
  definitions in the list to start a batch job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=m2%20ListBatchJobDefinitions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The identifier of the application.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of batch job definitions to
  return.
  * `:next_token` (`t:string`) A pagination token returned from a previous call to
  this operation. This specifies the next item to return. To return to the
  beginning of the list, exclude this parameter.
  * `:prefix` (`t:string`) If the batch job definition is a
  FileBatchJobDefinition, the prefix allows you to search on the file names of
  FileBatchJobDefinitions.
  """

  @spec list_batch_job_definitions(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_batch_job_definitions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_batch_job_definitions_errors()}

  def list_batch_job_definitions(%Client{} = client, application_id, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/batch-job-definitions"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, prefix: nil]

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
      if opt_val = Keyword.get(options, :prefix) do
        [{"prefix", opt_val} | query_params]
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
      |> Keyword.drop([:max_results, :next_token, :prefix])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists historical, current, and scheduled batch job executions for a specific
  application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=m2%20ListBatchJobExecutions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The unique identifier of the application.

  ## Optional parameters:
  * `:execution_ids` (`t:list[com.amazonaws.m2#Identifier]`) The unique identifier
  of each batch job execution.
  * `:job_name` (`t:string`) The name of each batch job execution.
  * `:max_results` (`t:integer`) The maximum number of batch job executions to
  return.
  * `:next_token` (`t:string`) A pagination token to control the number of batch
  job executions displayed in the list.
  * `:started_after` (`t:timestamp`) The time after which the batch job executions
  started.
  * `:started_before` (`t:timestamp`) The time before the batch job executions
  started.
  * `:status` (`t:string`) The status of the batch job executions.
  """

  @spec list_batch_job_executions(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_batch_job_executions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_batch_job_executions_errors()}

  def list_batch_job_executions(%Client{} = client, application_id, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/batch-job-executions"

    # Validate optional parameters
    optional_params = [
      execution_ids: nil,
      job_name: nil,
      max_results: nil,
      next_token: nil,
      started_after: nil,
      started_before: nil,
      status: nil
    ]

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
      if opt_val = Keyword.get(options, :started_before) do
        [{"startedBefore", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :started_after) do
        [{"startedAfter", opt_val} | query_params]
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

    query_params =
      if opt_val = Keyword.get(options, :job_name) do
        [{"jobName", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :execution_ids) do
        [{"executionIds", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :execution_ids,
        :job_name,
        :max_results,
        :next_token,
        :started_after,
        :started_before,
        :status
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all the job steps for JCL files to restart a batch job. This is only
  applicable for Micro Focus engine with versions 8.0.6 and above.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=m2%20ListBatchJobRestartPoints&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The unique identifier of the application.
  * `:execution_id` (`t:string`) The unique identifier of each batch job
  execution.

  ## Optional parameters:
  """

  @spec list_batch_job_restart_points(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_batch_job_restart_points_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_batch_job_restart_points_errors()}

  def list_batch_job_restart_points(
        %Client{} = client,
        application_id,
        execution_id,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/batch-job-executions/#{AWS.Util.encode_uri(execution_id)}/steps"

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
  Lists the data set imports for the specified application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=m2%20ListDataSetImportHistory&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The unique identifier of the application.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of objects to return.
  * `:next_token` (`t:string`) A pagination token returned from a previous call to
  this operation. This specifies the next item to return. To return to the
  beginning of the list, exclude this parameter.
  """

  @spec list_data_set_import_history(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_data_set_import_history_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_data_set_import_history_errors()}

  def list_data_set_import_history(%Client{} = client, application_id, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/dataset-import-tasks"

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
  Lists the data sets imported for a specific application. In Amazon Web Services
  Mainframe Modernization, data sets are associated with applications deployed
  on runtime environments. This is known as importing data sets. Currently,
  Amazon Web Services Mainframe Modernization can import data sets into catalogs
  using
  [CreateDataSetImportTask](https://docs.aws.amazon.com/m2/latest/APIReference/API_CreateDataSetImportTask.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=m2%20ListDataSets&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The unique identifier of the application for
  which you want to list the associated data sets.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of objects to return.
  * `:name_filter` (`t:string`) Filter dataset name matching the specified
  pattern. Can use * and % as wild cards.
  * `:next_token` (`t:string`) A pagination token returned from a previous call to
  this operation. This specifies the next item to return. To return to the
  beginning of the list, exclude this parameter.
  * `:prefix` (`t:string`) The prefix of the data set name, which you can use to
  filter the list of data sets.
  """

  @spec list_data_sets(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_data_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_data_sets_errors()}

  def list_data_sets(%Client{} = client, application_id, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/datasets"

    # Validate optional parameters
    optional_params = [max_results: nil, name_filter: nil, next_token: nil, prefix: nil]

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
      if opt_val = Keyword.get(options, :prefix) do
        [{"prefix", opt_val} | query_params]
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
      if opt_val = Keyword.get(options, :name_filter) do
        [{"nameFilter", opt_val} | query_params]
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
      |> Keyword.drop([:max_results, :name_filter, :next_token, :prefix])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of all deployments of a specific application. A deployment is a
  combination of a specific application and a specific version of that
  application. Each deployment is mapped to a particular application version.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=m2%20ListDeployments&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The application identifier.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of objects to return.
  * `:next_token` (`t:string`) A pagination token returned from a previous call to
  this operation. This specifies the next item to return. To return to the
  beginning of the list, exclude this parameter.
  """

  @spec list_deployments(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_deployments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_deployments_errors()}

  def list_deployments(%Client{} = client, application_id, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/deployments"

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
  Lists the available engine versions.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=m2%20ListEngineVersions&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:engine_type` (`t:string`) The type of target platform.
  * `:max_results` (`t:integer`) The maximum number of objects to return.
  * `:next_token` (`t:string`) A pagination token returned from a previous call to
  this operation. This specifies the next item to return. To return to the
  beginning of the list, exclude this parameter.
  """

  @spec list_engine_versions(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_engine_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_engine_versions_errors()}

  def list_engine_versions(%Client{} = client, options \\ []) do
    url_path = "/engine-versions"

    # Validate optional parameters
    optional_params = [engine_type: nil, max_results: nil, next_token: nil]

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
      if opt_val = Keyword.get(options, :engine_type) do
        [{"engineType", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:engine_type, :max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the runtime environments.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=m2%20ListEnvironments&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:engine_type` (`t:string`) The engine type for the runtime environment.
  * `:max_results` (`t:integer`) The maximum number of runtime environments to
  return.
  * `:names` (`t:list[com.amazonaws.m2#EntityName]`) The names of the runtime
  environments. Must be unique within the account.
  * `:next_token` (`t:string`) A pagination token to control the number of runtime
  environments displayed in the list.
  """

  @spec list_environments(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_environments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_environments_errors()}

  def list_environments(%Client{} = client, options \\ []) do
    url_path = "/environments"

    # Validate optional parameters
    optional_params = [engine_type: nil, max_results: nil, names: nil, next_token: nil]

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
      if opt_val = Keyword.get(options, :names) do
        [{"names", opt_val} | query_params]
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
      if opt_val = Keyword.get(options, :engine_type) do
        [{"engineType", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:engine_type, :max_results, :names, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags for the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=m2%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the resource.

  ## Optional parameters:
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
  Starts an application that is currently stopped.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=m2%20StartApplication&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The unique identifier of the application you
  want to start.

  ## Optional parameters:
  """

  @spec start_application(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, start_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_application_errors()}

  def start_application(%Client{} = client, application_id, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/start"

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
  Starts a batch job and returns the unique identifier of this execution of the
  batch job. The associated application must be running in order to start the
  batch job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=m2%20StartBatchJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The unique identifier of the application
  associated with this batch job.

  ## Optional parameters:
  """

  @spec start_batch_job(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, start_batch_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_batch_job_errors()}

  def start_batch_job(%Client{} = client, application_id, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/batch-job"

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
  Stops a running application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=m2%20StopApplication&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The unique identifier of the application you
  want to stop.

  ## Optional parameters:
  """

  @spec stop_application(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, stop_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_application_errors()}

  def stop_application(%Client{} = client, application_id, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/stop"

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
  Adds one or more tags to the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=m2%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the resource.

  ## Optional parameters:
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
  Removes one or more tags from the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=m2%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the resource.
  * `:tag_keys` (`t:list[com.amazonaws.m2#TagKey]`) The keys of the tags to
  remove.

  ## Optional parameters:
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
  Updates an application and creates a new version.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=m2%20UpdateApplication&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The unique identifier of the application you
  want to update.

  ## Optional parameters:
  """

  @spec update_application(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_application_errors()}

  def update_application(%Client{} = client, application_id, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}"

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
      :patch,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Updates the configuration details for a specific runtime environment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=m2%20UpdateEnvironment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:environment_id` (`t:string`) The unique identifier of the runtime
  environment that you want to update.

  ## Optional parameters:
  """

  @spec update_environment(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_environment_errors()}

  def update_environment(%Client{} = client, environment_id, options \\ []) do
    url_path = "/environments/#{AWS.Util.encode_uri(environment_id)}"

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
      :patch,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end
end
