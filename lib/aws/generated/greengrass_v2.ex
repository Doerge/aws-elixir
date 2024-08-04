# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.GreengrassV2 do
  @moduledoc """
  IoT Greengrass brings local compute, messaging, data management, sync, and ML
  inference capabilities to edge devices. This enables devices to collect and
  analyze data closer to the source of information, react autonomously to local
  events, and communicate securely with each other on local networks. Local
  devices can also communicate securely with Amazon Web Services IoT Core and
  export IoT data to the Amazon Web Services Cloud. IoT Greengrass developers
  can use Lambda functions and components to create and deploy applications to
  fleets of edge devices for local operation. IoT Greengrass Version 2 provides
  a new major version of the IoT Greengrass Core software, new APIs, and a new
  console. Use this API reference to learn how to use the IoT Greengrass V2 API
  operations to manage components, manage deployments, and core devices.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      lambda_function_recipe_source() :: %{
        "componentDependencies" => map(),
        "componentLambdaParameters" => lambda_execution_parameters(),
        "componentName" => String.t(),
        "componentPlatforms" => list(component_platform()()),
        "componentVersion" => String.t(),
        "lambdaArn" => String.t()
      }
      
  """
  @type lambda_function_recipe_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deployment_component_update_policy() :: %{
        "action" => list(any()),
        "timeoutInSeconds" => integer()
      }
      
  """
  @type deployment_component_update_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_service_role_from_account_response() :: %{
        "disassociatedAt" => String.t()
      }
      
  """
  @type disassociate_service_role_from_account_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_component_version_response() :: %{
        "arn" => String.t(),
        "componentName" => String.t(),
        "componentVersion" => String.t(),
        "creationTimestamp" => non_neg_integer(),
        "status" => cloud_component_status()
      }
      
  """
  @type create_component_version_response() :: %{String.t() => any()}

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
        optional("historyFilter") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("parentTargetArn") => String.t(),
        optional("targetArn") => String.t()
      }
      
  """
  @type list_deployments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_connectivity_info_response() :: %{
        "message" => String.t(),
        "version" => String.t()
      }
      
  """
  @type update_connectivity_info_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_component_versions_response() :: %{
        "componentVersions" => list(component_version_list_item()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_component_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_component_version_artifact_request() :: %{
        optional("iotEndpointType") => list(any()),
        optional("s3EndpointType") => list(any())
      }
      
  """
  @type get_component_version_artifact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_client_device_from_core_device_entry() :: %{
        "thingName" => String.t()
      }
      
  """
  @type disassociate_client_device_from_core_device_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deployment() :: %{
        "creationTimestamp" => non_neg_integer(),
        "deploymentId" => String.t(),
        "deploymentName" => String.t(),
        "deploymentStatus" => list(any()),
        "isLatestForTarget" => boolean(),
        "parentTargetArn" => String.t(),
        "revisionId" => String.t(),
        "targetArn" => String.t()
      }
      
  """
  @type deployment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      component_dependency_requirement() :: %{
        "dependencyType" => list(any()),
        "versionRequirement" => String.t()
      }
      
  """
  @type component_dependency_requirement() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      lambda_execution_parameters() :: %{
        "environmentVariables" => map(),
        "eventSources" => list(lambda_event_source()()),
        "execArgs" => list(String.t()()),
        "inputPayloadEncodingType" => list(any()),
        "linuxProcessParams" => lambda_linux_process_params(),
        "maxIdleTimeInSeconds" => integer(),
        "maxInstancesCount" => integer(),
        "maxQueueSize" => integer(),
        "pinned" => boolean(),
        "statusTimeoutInSeconds" => integer(),
        "timeoutInSeconds" => integer()
      }
      
  """
  @type lambda_execution_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_deployments_response() :: %{
        "deployments" => list(deployment()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_deployments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_core_devices_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("status") => list(any()),
        optional("thingGroupArn") => String.t()
      }
      
  """
  @type list_core_devices_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lambda_volume_mount() :: %{
        "addGroupOwner" => boolean(),
        "destinationPath" => String.t(),
        "permission" => list(any()),
        "sourcePath" => String.t()
      }
      
  """
  @type lambda_volume_mount() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_deployment_request() :: %{
        optional("clientToken") => String.t(),
        optional("components") => map(),
        optional("deploymentName") => String.t(),
        optional("deploymentPolicies") => deployment_policies(),
        optional("iotJobConfiguration") => deployment_io_t_job_configuration(),
        optional("parentTargetArn") => String.t(),
        optional("tags") => map(),
        required("targetArn") => String.t()
      }
      
  """
  @type create_deployment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_core_device_response() :: %{
        "architecture" => String.t(),
        "coreDeviceThingName" => String.t(),
        "coreVersion" => String.t(),
        "lastStatusUpdateTimestamp" => non_neg_integer(),
        "platform" => String.t(),
        "status" => list(any()),
        "tags" => map()
      }
      
  """
  @type get_core_device_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_core_devices_response() :: %{
        "coreDevices" => list(core_device()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_core_devices_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_core_device_request() :: %{}
      
  """
  @type delete_core_device_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_component_request() :: %{}
      
  """
  @type delete_component_request() :: %{}

  @typedoc """

  ## Example:
      
      lambda_event_source() :: %{
        "topic" => String.t(),
        "type" => list(any())
      }
      
  """
  @type lambda_event_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_component_response() :: %{
        "recipe" => binary(),
        "recipeOutputFormat" => list(any()),
        "tags" => map()
      }
      
  """
  @type get_component_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      system_resource_limits() :: %{
        "cpus" => float(),
        "memory" => float()
      }
      
  """
  @type system_resource_limits() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_installed_components_response() :: %{
        "installedComponents" => list(installed_component()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_installed_components_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      io_t_job_executions_rollout_config() :: %{
        "exponentialRate" => io_t_job_exponential_rollout_rate(),
        "maximumPerMinute" => integer()
      }
      
  """
  @type io_t_job_executions_rollout_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      core_device() :: %{
        "coreDeviceThingName" => String.t(),
        "lastStatusUpdateTimestamp" => non_neg_integer(),
        "status" => list(any())
      }
      
  """
  @type core_device() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_deployment_response() :: %{
        "deploymentId" => String.t(),
        "iotJobArn" => String.t(),
        "iotJobId" => String.t()
      }
      
  """
  @type create_deployment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      io_t_job_exponential_rollout_rate() :: %{
        "baseRatePerMinute" => integer(),
        "incrementFactor" => float(),
        "rateIncreaseCriteria" => io_t_job_rate_increase_criteria()
      }
      
  """
  @type io_t_job_exponential_rollout_rate() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_service_role_for_account_request() :: %{}
      
  """
  @type get_service_role_for_account_request() :: %{}

  @typedoc """

  ## Example:
      
      associate_client_device_with_core_device_error_entry() :: %{
        "code" => String.t(),
        "message" => String.t(),
        "thingName" => String.t()
      }
      
  """
  @type associate_client_device_with_core_device_error_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_connectivity_info_request() :: %{
        required("connectivityInfo") => list(connectivity_info()())
      }
      
  """
  @type update_connectivity_info_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_core_device_request() :: %{}
      
  """
  @type get_core_device_request() :: %{}

  @typedoc """

  ## Example:
      
      deployment_configuration_validation_policy() :: %{
        "timeoutInSeconds" => integer()
      }
      
  """
  @type deployment_configuration_validation_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_component_versions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_component_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      effective_deployment() :: %{
        "coreDeviceExecutionStatus" => list(any()),
        "creationTimestamp" => non_neg_integer(),
        "deploymentId" => String.t(),
        "deploymentName" => String.t(),
        "description" => String.t(),
        "iotJobArn" => String.t(),
        "iotJobId" => String.t(),
        "modifiedTimestamp" => non_neg_integer(),
        "reason" => String.t(),
        "statusDetails" => effective_deployment_status_details(),
        "targetArn" => String.t()
      }
      
  """
  @type effective_deployment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      request_already_in_progress_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type request_already_in_progress_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_deployment_request() :: %{}
      
  """
  @type cancel_deployment_request() :: %{}

  @typedoc """

  ## Example:
      
      connectivity_info() :: %{
        "hostAddress" => String.t(),
        "id" => String.t(),
        "metadata" => String.t(),
        "portNumber" => integer()
      }
      
  """
  @type connectivity_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_connectivity_info_response() :: %{
        "connectivityInfo" => list(connectivity_info()()),
        "message" => String.t()
      }
      
  """
  @type get_connectivity_info_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      installed_component() :: %{
        "componentName" => String.t(),
        "componentVersion" => String.t(),
        "isRoot" => boolean(),
        "lastInstallationSource" => String.t(),
        "lastReportedTimestamp" => non_neg_integer(),
        "lastStatusChangeTimestamp" => non_neg_integer(),
        "lifecycleState" => list(any()),
        "lifecycleStateDetails" => String.t(),
        "lifecycleStatusCodes" => list(String.t()())
      }
      
  """
  @type installed_component() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_component_version_request() :: %{
        optional("clientToken") => String.t(),
        optional("inlineRecipe") => binary(),
        optional("lambdaFunction") => lambda_function_recipe_source(),
        optional("tags") => map()
      }
      
  """
  @type create_component_version_request() :: %{String.t() => any()}

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
      
      list_components_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("scope") => list(any())
      }
      
  """
  @type list_components_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_disassociate_client_device_from_core_device_response() :: %{
        "errorEntries" => list(disassociate_client_device_from_core_device_error_entry()())
      }
      
  """
  @type batch_disassociate_client_device_from_core_device_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => String.t(),
        "quotaCode" => String.t(),
        "resourceId" => String.t(),
        "resourceType" => String.t(),
        "serviceCode" => String.t()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      component_latest_version() :: %{
        "arn" => String.t(),
        "componentVersion" => String.t(),
        "creationTimestamp" => non_neg_integer(),
        "description" => String.t(),
        "platforms" => list(component_platform()()),
        "publisher" => String.t()
      }
      
  """
  @type component_latest_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deployment_io_t_job_configuration() :: %{
        "abortConfig" => io_t_job_abort_config(),
        "jobExecutionsRolloutConfig" => io_t_job_executions_rollout_config(),
        "timeoutConfig" => io_t_job_timeout_config()
      }
      
  """
  @type deployment_io_t_job_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      component() :: %{
        "arn" => String.t(),
        "componentName" => String.t(),
        "latestVersion" => component_latest_version()
      }
      
  """
  @type component() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_deployment_request() :: %{}
      
  """
  @type get_deployment_request() :: %{}

  @typedoc """

  ## Example:
      
      resolved_component_version() :: %{
        "arn" => String.t(),
        "componentName" => String.t(),
        "componentVersion" => String.t(),
        "message" => String.t(),
        "recipe" => binary(),
        "vendorGuidance" => list(any())
      }
      
  """
  @type resolved_component_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      component_platform() :: %{
        "attributes" => map(),
        "name" => String.t()
      }
      
  """
  @type component_platform() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      io_t_job_rate_increase_criteria() :: %{
        "numberOfNotifiedThings" => integer(),
        "numberOfSucceededThings" => integer()
      }
      
  """
  @type io_t_job_rate_increase_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_component_status() :: %{
        "componentState" => list(any()),
        "errors" => map(),
        "message" => String.t(),
        "vendorGuidance" => list(any()),
        "vendorGuidanceMessage" => String.t()
      }
      
  """
  @type cloud_component_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      component_run_with() :: %{
        "posixUser" => String.t(),
        "systemResourceLimits" => system_resource_limits(),
        "windowsUser" => String.t()
      }
      
  """
  @type component_run_with() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "tags" => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      effective_deployment_status_details() :: %{
        "errorStack" => list(String.t()()),
        "errorTypes" => list(String.t()())
      }
      
  """
  @type effective_deployment_status_details() :: %{String.t() => any()}

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
      
      component_deployment_specification() :: %{
        "componentVersion" => String.t(),
        "configurationUpdate" => component_configuration_update(),
        "runWith" => component_run_with()
      }
      
  """
  @type component_deployment_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_client_devices_associated_with_core_device_response() :: %{
        "associatedClientDevices" => list(associated_client_device()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_client_devices_associated_with_core_device_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_connectivity_info_request() :: %{}
      
  """
  @type get_connectivity_info_request() :: %{}

  @typedoc """

  ## Example:
      
      associate_service_role_to_account_request() :: %{
        required("roleArn") => String.t()
      }
      
  """
  @type associate_service_role_to_account_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deployment_policies() :: %{
        "componentUpdatePolicy" => deployment_component_update_policy(),
        "configurationValidationPolicy" => deployment_configuration_validation_policy(),
        "failureHandlingPolicy" => list(any())
      }
      
  """
  @type deployment_policies() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_deployment_request() :: %{}
      
  """
  @type delete_deployment_request() :: %{}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => String.t(),
        "retryAfterSeconds" => integer()
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      component_configuration_update() :: %{
        "merge" => String.t(),
        "reset" => list(String.t()())
      }
      
  """
  @type component_configuration_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_client_device_with_core_device_entry() :: %{
        "thingName" => String.t()
      }
      
  """
  @type associate_client_device_with_core_device_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      io_t_job_timeout_config() :: %{
        "inProgressTimeoutInMinutes" => float()
      }
      
  """
  @type io_t_job_timeout_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resolve_component_candidates_response() :: %{
        "resolvedComponentVersions" => list(resolved_component_version()())
      }
      
  """
  @type resolve_component_candidates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_client_device_from_core_device_error_entry() :: %{
        "code" => String.t(),
        "message" => String.t(),
        "thingName" => String.t()
      }
      
  """
  @type disassociate_client_device_from_core_device_error_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_disassociate_client_device_from_core_device_request() :: %{
        optional("entries") => list(disassociate_client_device_from_core_device_entry()())
      }
      
  """
  @type batch_disassociate_client_device_from_core_device_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      io_t_job_abort_config() :: %{
        "criteriaList" => list(io_t_job_abort_criteria()())
      }
      
  """
  @type io_t_job_abort_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      component_version_list_item() :: %{
        "arn" => String.t(),
        "componentName" => String.t(),
        "componentVersion" => String.t()
      }
      
  """
  @type component_version_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lambda_container_params() :: %{
        "devices" => list(lambda_device_mount()()),
        "memorySizeInKB" => integer(),
        "mountROSysfs" => boolean(),
        "volumes" => list(lambda_volume_mount()())
      }
      
  """
  @type lambda_container_params() :: %{String.t() => any()}

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
      
      cancel_deployment_response() :: %{
        "message" => String.t()
      }
      
  """
  @type cancel_deployment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_deployment_response() :: %{
        "components" => map(),
        "creationTimestamp" => non_neg_integer(),
        "deploymentId" => String.t(),
        "deploymentName" => String.t(),
        "deploymentPolicies" => deployment_policies(),
        "deploymentStatus" => list(any()),
        "iotJobArn" => String.t(),
        "iotJobConfiguration" => deployment_io_t_job_configuration(),
        "iotJobId" => String.t(),
        "isLatestForTarget" => boolean(),
        "parentTargetArn" => String.t(),
        "revisionId" => String.t(),
        "tags" => map(),
        "targetArn" => String.t()
      }
      
  """
  @type get_deployment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => String.t(),
        "quotaCode" => String.t(),
        "retryAfterSeconds" => integer(),
        "serviceCode" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_component_response() :: %{
        "arn" => String.t(),
        "componentName" => String.t(),
        "componentVersion" => String.t(),
        "creationTimestamp" => non_neg_integer(),
        "description" => String.t(),
        "platforms" => list(component_platform()()),
        "publisher" => String.t(),
        "status" => cloud_component_status(),
        "tags" => map()
      }
      
  """
  @type describe_component_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_effective_deployments_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_effective_deployments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_components_response() :: %{
        "components" => list(component()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_components_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_component_version_artifact_response() :: %{
        "preSignedUrl" => String.t()
      }
      
  """
  @type get_component_version_artifact_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_installed_components_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("topologyFilter") => list(any())
      }
      
  """
  @type list_installed_components_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_associate_client_device_with_core_device_response() :: %{
        "errorEntries" => list(associate_client_device_with_core_device_error_entry()())
      }
      
  """
  @type batch_associate_client_device_with_core_device_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_client_devices_associated_with_core_device_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_client_devices_associated_with_core_device_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associated_client_device() :: %{
        "associationTimestamp" => non_neg_integer(),
        "thingName" => String.t()
      }
      
  """
  @type associated_client_device() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_component_request() :: %{}
      
  """
  @type describe_component_request() :: %{}

  @typedoc """

  ## Example:
      
      component_candidate() :: %{
        "componentName" => String.t(),
        "componentVersion" => String.t(),
        "versionRequirements" => map()
      }
      
  """
  @type component_candidate() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_effective_deployments_response() :: %{
        "effectiveDeployments" => list(effective_deployment()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_effective_deployments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lambda_linux_process_params() :: %{
        "containerParams" => lambda_container_params(),
        "isolationMode" => list(any())
      }
      
  """
  @type lambda_linux_process_params() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_service_role_for_account_response() :: %{
        "associatedAt" => String.t(),
        "roleArn" => String.t()
      }
      
  """
  @type get_service_role_for_account_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_associate_client_device_with_core_device_request() :: %{
        optional("entries") => list(associate_client_device_with_core_device_entry()())
      }
      
  """
  @type batch_associate_client_device_with_core_device_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      io_t_job_abort_criteria() :: %{
        "action" => list(any()),
        "failureType" => list(any()),
        "minNumberOfExecutedThings" => integer(),
        "thresholdPercentage" => float()
      }
      
  """
  @type io_t_job_abort_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_service_role_to_account_response() :: %{
        "associatedAt" => String.t()
      }
      
  """
  @type associate_service_role_to_account_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_service_role_from_account_request() :: %{}
      
  """
  @type disassociate_service_role_from_account_request() :: %{}

  @typedoc """

  ## Example:
      
      get_component_request() :: %{
        optional("recipeOutputFormat") => list(any())
      }
      
  """
  @type get_component_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resolve_component_candidates_request() :: %{
        optional("componentCandidates") => list(component_candidate()()),
        optional("platform") => component_platform()
      }
      
  """
  @type resolve_component_candidates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lambda_device_mount() :: %{
        "addGroupOwner" => boolean(),
        "path" => String.t(),
        "permission" => list(any())
      }
      
  """
  @type lambda_device_mount() :: %{String.t() => any()}

  @type associate_service_role_to_account_errors() ::
          validation_exception() | internal_server_exception()

  @type batch_associate_client_device_with_core_device_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type batch_disassociate_client_device_from_core_device_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type cancel_deployment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_component_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()
          | request_already_in_progress_exception()

  @type create_deployment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_already_in_progress_exception()

  @type delete_component_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_core_device_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_deployment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_component_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type disassociate_service_role_from_account_errors() :: internal_server_exception()

  @type get_component_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_component_version_artifact_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_connectivity_info_errors() :: validation_exception() | internal_server_exception()

  @type get_core_device_errors() ::
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

  @type get_service_role_for_account_errors() :: internal_server_exception()

  @type list_client_devices_associated_with_core_device_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_component_versions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_components_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_core_devices_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_deployments_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_effective_deployments_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_installed_components_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type resolve_component_candidates_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type untag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type update_connectivity_info_errors() :: validation_exception() | internal_server_exception()

  def metadata do
    %{
      api_version: "2020-11-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "greengrass",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "GreengrassV2",
      signature_version: "v4",
      signing_name: "greengrass",
      target_prefix: nil
    }
  end

  @doc """
  Associates a Greengrass service role with IoT Greengrass for your Amazon Web
  Services account in this Amazon Web Services Region. IoT Greengrass uses this
  role to verify the identity of client devices and manage core device
  connectivity information. The role must include the
  [AWSGreengrassResourceAccessRolePolicy](https://console.aws.amazon.com/iam/home#/policies/arn:awsiam::aws:policy/service-role/AWSGreengrassResourceAccessRolePolicy)
  managed policy or a custom policy that defines equivalent permissions for the
  IoT Greengrass features that you use. For more information, see [Greengrass
  service
  role](https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-service-role.html)
  in the *IoT Greengrass Version 2 Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=greengrassv2%20AssociateServiceRoleToAccount&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:map`):
    * `:role_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
  service role to associate with IoT Greengrass for your Amazon Web Services
  account in this Amazon Web Services Region.
  ## Keyword parameters:
  """
  @spec associate_service_role_to_account(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, associate_service_role_to_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_service_role_to_account_errors()}
  def associate_service_role_to_account(%Client{} = client, input, options \\ [])
      when is_map(input) do
    url_path = "/greengrass/servicerole"

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

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Associates a list of client devices with a core device. Use this API operation
  to specify which client devices can discover a core device through cloud
  discovery. With cloud discovery, client devices connect to IoT Greengrass to
  retrieve associated core devices' connectivity information and certificates.
  For more information, see [Configure cloud
  discovery](https://docs.aws.amazon.com/greengrass/v2/developerguide/configure-cloud-discovery.html)
  in the *IoT Greengrass V2 Developer Guide*. Client devices are local IoT
  devices that connect to and communicate with an IoT Greengrass core device
  over MQTT. You can connect client devices to a core device to sync MQTT
  messages and data to Amazon Web Services IoT Core and interact with client
  devices in Greengrass components. For more information, see [Interact with
  local IoT
  devices](https://docs.aws.amazon.com/greengrass/v2/developerguide/interact-with-local-iot-devices.html)
  in the *IoT Greengrass V2 Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=greengrassv2%20BatchAssociateClientDeviceWithCoreDevice&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:core_device_thing_name` (`t:string` required) The name of the core device.
  This is also the name of the IoT thing.
  ## Keyword parameters:
  """
  @spec batch_associate_client_device_with_core_device(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, batch_associate_client_device_with_core_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_associate_client_device_with_core_device_errors()}
  def batch_associate_client_device_with_core_device(
        %Client{} = client,
        core_device_thing_name,
        options \\ []
      ) do
    url_path =
      "/greengrass/v2/coreDevices/#{AWS.Util.encode_uri(core_device_thing_name)}/associateClientDevices"

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
  Disassociates a list of client devices from a core device. After you
  disassociate a client device from a core device, the client device won't be
  able to use cloud discovery to retrieve the core device's connectivity
  information and certificates.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=greengrassv2%20BatchDisassociateClientDeviceFromCoreDevice&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:core_device_thing_name` (`t:string` required) The name of the core device.
  This is also the name of the IoT thing.
  ## Keyword parameters:
  """
  @spec batch_disassociate_client_device_from_core_device(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, batch_disassociate_client_device_from_core_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_disassociate_client_device_from_core_device_errors()}
  def batch_disassociate_client_device_from_core_device(
        %Client{} = client,
        core_device_thing_name,
        options \\ []
      ) do
    url_path =
      "/greengrass/v2/coreDevices/#{AWS.Util.encode_uri(core_device_thing_name)}/disassociateClientDevices"

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
  Cancels a deployment. This operation cancels the deployment for devices that
  haven't yet received it. If a device already received the deployment, this
  operation doesn't change anything for that device.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=greengrassv2%20CancelDeployment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:deployment_id` (`t:string` required) The ID of the deployment.
  ## Keyword parameters:
  """
  @spec cancel_deployment(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, cancel_deployment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_deployment_errors()}
  def cancel_deployment(%Client{} = client, deployment_id, options \\ []) do
    url_path = "/greengrass/v2/deployments/#{AWS.Util.encode_uri(deployment_id)}/cancel"

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
  Creates a component. Components are software that run on Greengrass core
  devices. After you develop and test a component on your core device, you can
  use this operation to upload your component to IoT Greengrass. Then, you can
  deploy the component to other core devices. You can use this operation to do
  the following:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=greengrassv2%20CreateComponentVersion&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_component_version(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_component_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_component_version_errors()}
  def create_component_version(%Client{} = client, options \\ []) do
    url_path = "/greengrass/v2/createComponentVersion"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Creates a continuous deployment for a target, which is a Greengrass core device
  or group of core devices. When you add a new core device to a group of core
  devices that has a deployment, IoT Greengrass deploys that group's deployment
  to the new device. You can define one deployment for each target. When you
  create a new deployment for a target that has an existing deployment, you
  replace the previous deployment. IoT Greengrass applies the new deployment to
  the target devices.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=greengrassv2%20CreateDeployment&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_deployment(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_deployment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_deployment_errors()}
  def create_deployment(%Client{} = client, options \\ []) do
    url_path = "/greengrass/v2/deployments"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Deletes a version of a component from IoT Greengrass.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=greengrassv2%20DeleteComponent&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:arn` (`t:string` required) The ARN of the component version.
  ## Keyword parameters:
  """
  @spec delete_component(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_component_errors()}
  def delete_component(%Client{} = client, arn, options \\ []) do
    url_path = "/greengrass/v2/components/#{AWS.Util.encode_uri(arn)}"

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
      204
    )
  end

  @doc """
  Deletes a Greengrass core device, which is an IoT thing. This operation removes
  the core device from the list of core devices. This operation doesn't delete
  the IoT thing. For more information about how to delete the IoT thing, see
  [DeleteThing](https://docs.aws.amazon.com/iot/latest/apireference/API_DeleteThing.html)
  in the *IoT API Reference*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=greengrassv2%20DeleteCoreDevice&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:core_device_thing_name` (`t:string` required) The name of the core device.
  This is also the name of the IoT thing.
  ## Keyword parameters:
  """
  @spec delete_core_device(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_core_device_errors()}
  def delete_core_device(%Client{} = client, core_device_thing_name, options \\ []) do
    url_path = "/greengrass/v2/coreDevices/#{AWS.Util.encode_uri(core_device_thing_name)}"

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
      204
    )
  end

  @doc """
  Deletes a deployment. To delete an active deployment, you must first cancel it.
  For more information, see
  [CancelDeployment](https://docs.aws.amazon.com/iot/latest/apireference/API_CancelDeployment.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=greengrassv2%20DeleteDeployment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:deployment_id` (`t:string` required) The ID of the deployment.
  ## Keyword parameters:
  """
  @spec delete_deployment(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_deployment_errors()}
  def delete_deployment(%Client{} = client, deployment_id, options \\ []) do
    url_path = "/greengrass/v2/deployments/#{AWS.Util.encode_uri(deployment_id)}"

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
      204
    )
  end

  @doc """
  Retrieves metadata for a version of a component.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=greengrassv2%20DescribeComponent&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:arn` (`t:string` required) The ARN of the component version.
  ## Keyword parameters:
  """
  @spec describe_component(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_component_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_component_errors()}
  def describe_component(%Client{} = client, arn, options \\ []) do
    url_path = "/greengrass/v2/components/#{AWS.Util.encode_uri(arn)}/metadata"

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
  Disassociates the Greengrass service role from IoT Greengrass for your Amazon
  Web Services account in this Amazon Web Services Region. Without a service
  role, IoT Greengrass can't verify the identity of client devices or manage
  core device connectivity information. For more information, see [Greengrass
  service
  role](https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-service-role.html)
  in the *IoT Greengrass Version 2 Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=greengrassv2%20DisassociateServiceRoleFromAccount&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec disassociate_service_role_from_account(AWS.Client.t(), Keyword.t()) ::
          {:ok, disassociate_service_role_from_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_service_role_from_account_errors()}
  def disassociate_service_role_from_account(%Client{} = client, options \\ []) do
    url_path = "/greengrass/servicerole"

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
  Gets the recipe for a version of a component.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=greengrassv2%20GetComponent&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:arn` (`t:string` required) The ARN of the component version.
  ## Keyword parameters:
  * `:recipe_output_format` (`t:enum["JSON|YAML"]`) The format of the recipe.
  """
  @spec get_component(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_component_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_component_errors()}
  def get_component(%Client{} = client, arn, options \\ []) do
    url_path = "/greengrass/v2/components/#{AWS.Util.encode_uri(arn)}"

    # Validate optional parameters
    optional_params = [recipe_output_format: nil]

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
      if opt_val = Keyword.get(options, :recipe_output_format) do
        [{"recipeOutputFormat", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:recipe_output_format])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the pre-signed URL to download a public or a Lambda component artifact.
  Core devices call this operation to identify the URL that they can use to
  download an artifact to install.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=greengrassv2%20GetComponentVersionArtifact&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:arn` (`t:string` required) The ARN of the component version. Specify the ARN
  of a public or a Lambda component version.
  * `:artifact_name` (`t:string` required) The name of the artifact.
  ## Keyword parameters:
  * `:s3_endpoint_type` (`t:enum["GLOBAL|REGIONAL"]`) Specifies the endpoint to
  use when getting Amazon S3 pre-signed URLs.
  * `:iot_endpoint_type` (`t:enum["fips|standard"]`) Determines if the Amazon S3
  URL returned is a FIPS pre-signed URL endpoint. Specify fips if you want the
  returned Amazon S3 pre-signed URL to point to an Amazon S3 FIPS endpoint. If
  you don't specify a value, the default is standard.
  """
  @spec get_component_version_artifact(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_component_version_artifact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_component_version_artifact_errors()}
  def get_component_version_artifact(%Client{} = client, arn, artifact_name, options \\ []) do
    url_path =
      "/greengrass/v2/components/#{AWS.Util.encode_uri(arn)}/artifacts/#{AWS.Util.encode_multi_segment_uri(artifact_name)}"

    # Validate optional parameters
    optional_params = [s3_endpoint_type: nil, iot_endpoint_type: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :iot_endpoint_type) do
        [{"x-amz-iot-endpoint-type", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :s3_endpoint_type) do
        [{"s3EndpointType", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:s3_endpoint_type, :iot_endpoint_type])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves connectivity information for a Greengrass core device.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=greengrassv2%20GetConnectivityInfo&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:thing_name` (`t:string` required) The name of the core device. This is also
  the name of the IoT thing.
  ## Keyword parameters:
  """
  @spec get_connectivity_info(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_connectivity_info_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_connectivity_info_errors()}
  def get_connectivity_info(%Client{} = client, thing_name, options \\ []) do
    url_path = "/greengrass/things/#{AWS.Util.encode_uri(thing_name)}/connectivityInfo"

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
  Retrieves metadata for a Greengrass core device.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=greengrassv2%20GetCoreDevice&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:core_device_thing_name` (`t:string` required) The name of the core device.
  This is also the name of the IoT thing.
  ## Keyword parameters:
  """
  @spec get_core_device(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_core_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_core_device_errors()}
  def get_core_device(%Client{} = client, core_device_thing_name, options \\ []) do
    url_path = "/greengrass/v2/coreDevices/#{AWS.Util.encode_uri(core_device_thing_name)}"

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
  Gets a deployment. Deployments define the components that run on Greengrass core
  devices.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=greengrassv2%20GetDeployment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:deployment_id` (`t:string` required) The ID of the deployment.
  ## Keyword parameters:
  """
  @spec get_deployment(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_deployment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_deployment_errors()}
  def get_deployment(%Client{} = client, deployment_id, options \\ []) do
    url_path = "/greengrass/v2/deployments/#{AWS.Util.encode_uri(deployment_id)}"

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
  Gets the service role associated with IoT Greengrass for your Amazon Web
  Services account in this Amazon Web Services Region. IoT Greengrass uses this
  role to verify the identity of client devices and manage core device
  connectivity information. For more information, see [Greengrass service
  role](https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-service-role.html)
  in the *IoT Greengrass Version 2 Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=greengrassv2%20GetServiceRoleForAccount&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec get_service_role_for_account(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_service_role_for_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_service_role_for_account_errors()}
  def get_service_role_for_account(%Client{} = client, options \\ []) do
    url_path = "/greengrass/servicerole"

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
  Retrieves a paginated list of client devices that are associated with a core
  device.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=greengrassv2%20ListClientDevicesAssociatedWithCoreDevice&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:core_device_thing_name` (`t:string` required) The name of the core device.
  This is also the name of the IoT thing.
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to be returned per
  paginated request.
  * `:next_token` (`t:string`) The token to be used for the next set of paginated
  results.
  """
  @spec list_client_devices_associated_with_core_device(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_client_devices_associated_with_core_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_client_devices_associated_with_core_device_errors()}
  def list_client_devices_associated_with_core_device(
        %Client{} = client,
        core_device_thing_name,
        options \\ []
      ) do
    url_path =
      "/greengrass/v2/coreDevices/#{AWS.Util.encode_uri(core_device_thing_name)}/associatedClientDevices"

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
  Retrieves a paginated list of all versions for a component. Greater versions are
  listed first.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=greengrassv2%20ListComponentVersions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:arn` (`t:string` required) The ARN of the component.
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to be returned per
  paginated request.
  * `:next_token` (`t:string`) The token to be used for the next set of paginated
  results.
  """
  @spec list_component_versions(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_component_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_component_versions_errors()}
  def list_component_versions(%Client{} = client, arn, options \\ []) do
    url_path = "/greengrass/v2/components/#{AWS.Util.encode_uri(arn)}/versions"

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
  Retrieves a paginated list of component summaries. This list includes components
  that you have permission to view.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=greengrassv2%20ListComponents&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to be returned per
  paginated request.
  * `:next_token` (`t:string`) The token to be used for the next set of paginated
  results.
  * `:scope` (`t:enum["PRIVATE|PUBLIC"]`) The scope of the components to list.
  """
  @spec list_components(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_components_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_components_errors()}
  def list_components(%Client{} = client, options \\ []) do
    url_path = "/greengrass/v2/components"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, scope: nil]

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
      if opt_val = Keyword.get(options, :scope) do
        [{"scope", opt_val} | query_params]
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
      |> Keyword.drop([:max_results, :next_token, :scope])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of Greengrass core devices.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=greengrassv2%20ListCoreDevices&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to be returned per
  paginated request.
  * `:next_token` (`t:string`) The token to be used for the next set of paginated
  results.
  * `:status` (`t:enum["HEALTHY|UNHEALTHY"]`) The core device status by which to
  filter. If you specify this parameter, the list includes only core devices
  that have this status. Choose one of the following options:
  * `:thing_group_arn` (`t:string`) The ARN of the IoT thing group by which to
  filter. If you specify this parameter, the list includes only core devices
  that have successfully deployed a deployment that targets the thing group.
  When you remove a core device from a thing group, the list continues to
  include that core device.
  """
  @spec list_core_devices(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_core_devices_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_core_devices_errors()}
  def list_core_devices(%Client{} = client, options \\ []) do
    url_path = "/greengrass/v2/coreDevices"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, status: nil, thing_group_arn: nil]

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
      if opt_val = Keyword.get(options, :thing_group_arn) do
        [{"thingGroupArn", opt_val} | query_params]
      else
        query_params
      end

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
      |> Keyword.drop([:max_results, :next_token, :status, :thing_group_arn])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of deployments.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=greengrassv2%20ListDeployments&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  * `:history_filter` (`t:enum["ALL|LATEST_ONLY"]`) The filter for the list of
  deployments. Choose one of the following options:
  * `:max_results` (`t:integer`) The maximum number of results to be returned per
  paginated request.
  * `:next_token` (`t:string`) The token to be used for the next set of paginated
  results.
  * `:parent_target_arn` (`t:string`) The parent deployment's target ARN within a
  subdeployment.
  * `:target_arn` (`t:string`) The ARN of the target IoT thing or thing group.
  """
  @spec list_deployments(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_deployments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_deployments_errors()}
  def list_deployments(%Client{} = client, options \\ []) do
    url_path = "/greengrass/v2/deployments"

    # Validate optional parameters
    optional_params = [
      history_filter: nil,
      max_results: nil,
      next_token: nil,
      parent_target_arn: nil,
      target_arn: nil
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
      if opt_val = Keyword.get(options, :target_arn) do
        [{"targetArn", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :parent_target_arn) do
        [{"parentTargetArn", opt_val} | query_params]
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
      if opt_val = Keyword.get(options, :history_filter) do
        [{"historyFilter", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :history_filter,
        :max_results,
        :next_token,
        :parent_target_arn,
        :target_arn
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of deployment jobs that IoT Greengrass sends to
  Greengrass core devices.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=greengrassv2%20ListEffectiveDeployments&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:core_device_thing_name` (`t:string` required) The name of the core device.
  This is also the name of the IoT thing.
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to be returned per
  paginated request.
  * `:next_token` (`t:string`) The token to be used for the next set of paginated
  results.
  """
  @spec list_effective_deployments(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_effective_deployments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_effective_deployments_errors()}
  def list_effective_deployments(%Client{} = client, core_device_thing_name, options \\ []) do
    url_path =
      "/greengrass/v2/coreDevices/#{AWS.Util.encode_uri(core_device_thing_name)}/effectiveDeployments"

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
  Retrieves a paginated list of the components that a Greengrass core device runs.
  By default, this list doesn't include components that are deployed as
  dependencies of other components. To include dependencies in the response, set
  the `topologyFilter` parameter to `ALL`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=greengrassv2%20ListInstalledComponents&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:core_device_thing_name` (`t:string` required) The name of the core device.
  This is also the name of the IoT thing.
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to be returned per
  paginated request.
  * `:next_token` (`t:string`) The token to be used for the next set of paginated
  results.
  * `:topology_filter` (`t:enum["ALL|ROOT"]`) The filter for the list of
  components. Choose from the following options:
  """
  @spec list_installed_components(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_installed_components_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_installed_components_errors()}
  def list_installed_components(%Client{} = client, core_device_thing_name, options \\ []) do
    url_path =
      "/greengrass/v2/coreDevices/#{AWS.Util.encode_uri(core_device_thing_name)}/installedComponents"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, topology_filter: nil]

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
      if opt_val = Keyword.get(options, :topology_filter) do
        [{"topologyFilter", opt_val} | query_params]
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
      |> Keyword.drop([:max_results, :next_token, :topology_filter])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the list of tags for an IoT Greengrass resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=greengrassv2%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The ARN of the resource.
  ## Keyword parameters:
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
  Retrieves a list of components that meet the component, version, and platform
  requirements of a deployment. Greengrass core devices call this operation when
  they receive a deployment to identify the components to install. This
  operation identifies components that meet all dependency requirements for a
  deployment. If the requirements conflict, then this operation returns an error
  and the deployment fails. For example, this occurs if component `A` requires
  version `>2.0.0` and component `B` requires version `<2.0.0` of a component
  dependency.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=greengrassv2%20ResolveComponentCandidates&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec resolve_component_candidates(AWS.Client.t(), Keyword.t()) ::
          {:ok, resolve_component_candidates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resolve_component_candidates_errors()}
  def resolve_component_candidates(%Client{} = client, options \\ []) do
    url_path = "/greengrass/v2/resolveComponentCandidates"

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
  Adds tags to an IoT Greengrass resource. If a tag already exists for the
  resource, this operation updates the tag's value.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=greengrassv2%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The ARN of the resource to tag.
  ## Keyword parameters:
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
  Removes a tag from an IoT Greengrass resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=greengrassv2%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The ARN of the resource to untag.
  * `:tag_keys` (`t:list[com.amazonaws.greengrassv2#TagKey]` required) A list of
  keys for tags to remove from the resource.
  ## Keyword parameters:
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
  Updates connectivity information for a Greengrass core device.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=greengrassv2%20UpdateConnectivityInfo&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:thing_name` (`t:string` required) The name of the core device. This is also
  the name of the IoT thing.
  * `:input` (`t:map`):
    * `:connectivity_info` (`t:list[com.amazonaws.greengrassv2#ConnectivityInfo]`
  required) The connectivity information for the core device.
    * `:thing_name` (`t:string` required) The name of the core device. This is also
  the name of the IoT thing.
  ## Keyword parameters:
  """
  @spec update_connectivity_info(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, update_connectivity_info_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_connectivity_info_errors()}
  def update_connectivity_info(%Client{} = client, thing_name, input, options \\ [])
      when is_map(input) do
    url_path = "/greengrass/things/#{AWS.Util.encode_uri(thing_name)}/connectivityInfo"

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

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end
end
