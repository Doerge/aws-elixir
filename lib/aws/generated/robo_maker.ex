# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.RoboMaker do
  @moduledoc """
  This section provides documentation for the AWS RoboMaker API operations.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      list_deployment_jobs_response() :: %{
        "deploymentJobs" => list(deployment_job()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_deployment_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_deployment_job_request() :: %{
        required("job") => String.t()
      }
      
  """
  @type describe_deployment_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deployment_application_config() :: %{
        "application" => String.t(),
        "applicationVersion" => String.t(),
        "launchConfig" => deployment_launch_config()
      }
      
  """
  @type deployment_application_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_deployment_job_response() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "deploymentApplicationConfigs" => list(deployment_application_config()()),
        "deploymentConfig" => deployment_config(),
        "failureCode" => list(any()),
        "failureReason" => String.t(),
        "fleet" => String.t(),
        "robotDeploymentSummary" => list(robot_deployment()()),
        "status" => list(any()),
        "tags" => map()
      }
      
  """
  @type describe_deployment_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_simulation_applications_response() :: %{
        "nextToken" => String.t(),
        "simulationApplicationSummaries" => list(simulation_application_summary()())
      }
      
  """
  @type list_simulation_applications_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_world_export_jobs_request() :: %{
        optional("filters") => list(filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_world_export_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_world_generation_job_request() :: %{
        optional("clientRequestToken") => String.t(),
        optional("tags") => map(),
        optional("worldTags") => map(),
        required("template") => String.t(),
        required("worldCount") => world_count()
      }
      
  """
  @type create_world_generation_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      robot_software_suite() :: %{
        "name" => list(any()),
        "version" => list(any())
      }
      
  """
  @type robot_software_suite() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_simulation_job_batch_request() :: %{
        required("batch") => String.t()
      }
      
  """
  @type describe_simulation_job_batch_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_fleet_request() :: %{
        required("fleet") => String.t()
      }
      
  """
  @type delete_fleet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_simulation_application_response() :: %{
        "arn" => String.t(),
        "environment" => environment(),
        "imageDigest" => String.t(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t(),
        "renderingEngine" => rendering_engine(),
        "revisionId" => String.t(),
        "robotSoftwareSuite" => robot_software_suite(),
        "simulationSoftwareSuite" => simulation_software_suite(),
        "sources" => list(source()()),
        "tags" => map(),
        "version" => String.t()
      }
      
  """
  @type describe_simulation_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_simulation_job_batch_response() :: %{
        "arn" => String.t(),
        "batchPolicy" => batch_policy(),
        "clientRequestToken" => String.t(),
        "createdAt" => non_neg_integer(),
        "createdRequests" => list(simulation_job_summary()()),
        "failedRequests" => list(failed_create_simulation_job_request()()),
        "failureCode" => list(any()),
        "failureReason" => String.t(),
        "pendingRequests" => list(simulation_job_request()()),
        "status" => list(any()),
        "tags" => map()
      }
      
  """
  @type start_simulation_job_batch_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      create_simulation_application_request() :: %{
        optional("environment") => environment(),
        optional("renderingEngine") => rendering_engine(),
        optional("sources") => list(source_config()()),
        optional("tags") => map(),
        required("name") => String.t(),
        required("robotSoftwareSuite") => robot_software_suite(),
        required("simulationSoftwareSuite") => simulation_software_suite()
      }
      
  """
  @type create_simulation_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_robot_response() :: %{}
      
  """
  @type delete_robot_response() :: %{}

  @typedoc """

  ## Example:
      
      robot() :: %{
        "architecture" => list(any()),
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "fleetArn" => String.t(),
        "greenGrassGroupId" => String.t(),
        "lastDeploymentJob" => String.t(),
        "lastDeploymentTime" => non_neg_integer(),
        "name" => String.t(),
        "status" => list(any())
      }
      
  """
  @type robot() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_deployment_job_response() :: %{}
      
  """
  @type cancel_deployment_job_response() :: %{}

  @typedoc """

  ## Example:
      
      world_generation_job_summary() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "failedWorldCount" => integer(),
        "status" => list(any()),
        "succeededWorldCount" => integer(),
        "template" => String.t(),
        "worldCount" => world_count()
      }
      
  """
  @type world_generation_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_fleet_request() :: %{
        optional("tags") => map(),
        required("name") => String.t()
      }
      
  """
  @type create_fleet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compute_response() :: %{
        "computeType" => list(any()),
        "gpuUnitLimit" => integer(),
        "simulationUnitLimit" => integer()
      }
      
  """
  @type compute_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_world_request() :: %{
        required("world") => String.t()
      }
      
  """
  @type describe_world_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_deployment_job_response() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "deploymentApplicationConfigs" => list(deployment_application_config()()),
        "deploymentConfig" => deployment_config(),
        "failureCode" => list(any()),
        "failureReason" => String.t(),
        "fleet" => String.t(),
        "status" => list(any()),
        "tags" => map()
      }
      
  """
  @type create_deployment_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_world_template_request() :: %{
        optional("name") => String.t(),
        optional("templateBody") => String.t(),
        optional("templateLocation") => template_location(),
        required("template") => String.t()
      }
      
  """
  @type update_world_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deployment_config() :: %{
        "concurrentDeploymentPercentage" => integer(),
        "downloadConditionFile" => s3_object(),
        "failureThresholdPercentage" => integer(),
        "robotDeploymentTimeoutInSeconds" => float()
      }
      
  """
  @type deployment_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compute() :: %{
        "computeType" => list(any()),
        "gpuUnitLimit" => integer(),
        "simulationUnitLimit" => integer()
      }
      
  """
  @type compute() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_fleet_response() :: %{}
      
  """
  @type delete_fleet_response() :: %{}

  @typedoc """

  ## Example:
      
      network_interface() :: %{
        "networkInterfaceId" => String.t(),
        "privateIpAddress" => String.t(),
        "publicIpAddress" => String.t()
      }
      
  """
  @type network_interface() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_robot_application_request() :: %{
        optional("currentRevisionId") => String.t(),
        optional("environment") => environment(),
        optional("sources") => list(source_config()()),
        required("application") => String.t(),
        required("robotSoftwareSuite") => robot_software_suite()
      }
      
  """
  @type update_robot_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      simulation_job_request() :: %{
        "compute" => compute(),
        "dataSources" => list(data_source_config()()),
        "failureBehavior" => list(any()),
        "iamRole" => String.t(),
        "loggingConfig" => logging_config(),
        "maxJobDurationInSeconds" => float(),
        "outputLocation" => output_location(),
        "robotApplications" => list(robot_application_config()()),
        "simulationApplications" => list(simulation_application_config()()),
        "tags" => map(),
        "useDefaultApplications" => boolean(),
        "vpcConfig" => vpc_config()
      }
      
  """
  @type simulation_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_fleets_request() :: %{
        optional("filters") => list(filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_fleets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_robot_response() :: %{
        "architecture" => list(any()),
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "greengrassGroupId" => String.t(),
        "name" => String.t(),
        "tags" => map()
      }
      
  """
  @type create_robot_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_object() :: %{
        "bucket" => String.t(),
        "etag" => String.t(),
        "key" => String.t()
      }
      
  """
  @type s3_object() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restart_simulation_job_response() :: %{}
      
  """
  @type restart_simulation_job_response() :: %{}

  @typedoc """

  ## Example:
      
      batch_policy() :: %{
        "maxConcurrency" => integer(),
        "timeoutInSeconds" => float()
      }
      
  """
  @type batch_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_robot_response() :: %{
        "fleet" => String.t(),
        "robot" => String.t()
      }
      
  """
  @type deregister_robot_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      simulation_job_summary() :: %{
        "arn" => String.t(),
        "computeType" => list(any()),
        "dataSourceNames" => list(String.t()()),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t(),
        "robotApplicationNames" => list(String.t()()),
        "simulationApplicationNames" => list(String.t()()),
        "status" => list(any())
      }
      
  """
  @type simulation_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_fleets_response() :: %{
        "fleetDetails" => list(fleet()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_fleets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      logging_config() :: %{
        "recordAllRosTopics" => boolean()
      }
      
  """
  @type logging_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_robot_application_response() :: %{
        "arn" => String.t(),
        "environment" => environment(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t(),
        "revisionId" => String.t(),
        "robotSoftwareSuite" => robot_software_suite(),
        "sources" => list(source()()),
        "version" => String.t()
      }
      
  """
  @type update_robot_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_simulation_application_request() :: %{
        optional("currentRevisionId") => String.t(),
        optional("environment") => environment(),
        optional("renderingEngine") => rendering_engine(),
        optional("sources") => list(source_config()()),
        required("application") => String.t(),
        required("robotSoftwareSuite") => robot_software_suite(),
        required("simulationSoftwareSuite") => simulation_software_suite()
      }
      
  """
  @type update_simulation_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_robot_application_version_request() :: %{
        optional("currentRevisionId") => String.t(),
        optional("imageDigest") => String.t(),
        optional("s3Etags") => list(String.t()()),
        required("application") => String.t()
      }
      
  """
  @type create_robot_application_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_world_generation_job_request() :: %{
        required("job") => String.t()
      }
      
  """
  @type cancel_world_generation_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_robot_request() :: %{
        optional("tags") => map(),
        required("architecture") => list(any()),
        required("greengrassGroupId") => String.t(),
        required("name") => String.t()
      }
      
  """
  @type create_robot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      simulation_job_batch_summary() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "createdRequestCount" => integer(),
        "failedRequestCount" => integer(),
        "lastUpdatedAt" => non_neg_integer(),
        "pendingRequestCount" => integer(),
        "status" => list(any())
      }
      
  """
  @type simulation_job_batch_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      simulation_application_summary() :: %{
        "arn" => String.t(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t(),
        "robotSoftwareSuite" => robot_software_suite(),
        "simulationSoftwareSuite" => simulation_software_suite(),
        "version" => String.t()
      }
      
  """
  @type simulation_application_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_robot_application_version_response() :: %{
        "arn" => String.t(),
        "environment" => environment(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t(),
        "revisionId" => String.t(),
        "robotSoftwareSuite" => robot_software_suite(),
        "sources" => list(source()()),
        "version" => String.t()
      }
      
  """
  @type create_robot_application_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      world_config() :: %{
        "world" => String.t()
      }
      
  """
  @type world_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_deployment_job_request() :: %{
        optional("deploymentConfig") => deployment_config(),
        optional("tags") => map(),
        required("clientRequestToken") => String.t(),
        required("deploymentApplicationConfigs") => list(deployment_application_config()()),
        required("fleet") => String.t()
      }
      
  """
  @type create_deployment_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_world_template_response() :: %{
        "arn" => String.t(),
        "clientRequestToken" => String.t(),
        "createdAt" => non_neg_integer(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t(),
        "tags" => map(),
        "version" => String.t()
      }
      
  """
  @type describe_world_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_robot_response() :: %{
        "fleet" => String.t(),
        "robot" => String.t()
      }
      
  """
  @type register_robot_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      world_summary() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "generationJob" => String.t(),
        "template" => String.t()
      }
      
  """
  @type world_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_world_export_job_response() :: %{
        "arn" => String.t(),
        "clientRequestToken" => String.t(),
        "createdAt" => non_neg_integer(),
        "failureCode" => list(any()),
        "iamRole" => String.t(),
        "outputLocation" => output_location(),
        "status" => list(any()),
        "tags" => map()
      }
      
  """
  @type create_world_export_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_world_generation_jobs_response() :: %{
        "nextToken" => String.t(),
        "worldGenerationJobSummaries" => list(world_generation_job_summary()())
      }
      
  """
  @type list_world_generation_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_response() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "lastDeploymentJob" => String.t(),
        "lastDeploymentStatus" => list(any()),
        "lastDeploymentTime" => non_neg_integer(),
        "name" => String.t(),
        "robots" => list(robot()()),
        "tags" => map()
      }
      
  """
  @type describe_fleet_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_simulation_application_version_request() :: %{
        optional("currentRevisionId") => String.t(),
        optional("imageDigest") => String.t(),
        optional("s3Etags") => list(String.t()()),
        required("application") => String.t()
      }
      
  """
  @type create_simulation_application_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      progress_detail() :: %{
        "currentProgress" => list(any()),
        "estimatedTimeRemainingSeconds" => integer(),
        "percentDone" => float(),
        "targetResource" => String.t()
      }
      
  """
  @type progress_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      concurrent_deployment_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type concurrent_deployment_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_deployment_job_request() :: %{
        required("job") => String.t()
      }
      
  """
  @type cancel_deployment_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_key_output() :: %{
        "etag" => String.t(),
        "s3Key" => String.t()
      }
      
  """
  @type s3_key_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_simulation_job_response() :: %{
        "arn" => String.t(),
        "clientRequestToken" => String.t(),
        "compute" => compute_response(),
        "dataSources" => list(data_source()()),
        "failureBehavior" => list(any()),
        "failureCode" => list(any()),
        "failureReason" => String.t(),
        "iamRole" => String.t(),
        "lastStartedAt" => non_neg_integer(),
        "lastUpdatedAt" => non_neg_integer(),
        "loggingConfig" => logging_config(),
        "maxJobDurationInSeconds" => float(),
        "name" => String.t(),
        "networkInterface" => network_interface(),
        "outputLocation" => output_location(),
        "robotApplications" => list(robot_application_config()()),
        "simulationApplications" => list(simulation_application_config()()),
        "simulationTimeMillis" => float(),
        "status" => list(any()),
        "tags" => map(),
        "vpcConfig" => vpc_config_response()
      }
      
  """
  @type describe_simulation_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_world_template_response() :: %{
        "arn" => String.t(),
        "clientRequestToken" => String.t(),
        "createdAt" => non_neg_integer(),
        "name" => String.t(),
        "tags" => map()
      }
      
  """
  @type create_world_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_world_template_request() :: %{
        required("template") => String.t()
      }
      
  """
  @type delete_world_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      upload_configuration() :: %{
        "name" => String.t(),
        "path" => String.t(),
        "uploadBehavior" => list(any())
      }
      
  """
  @type upload_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_world_templates_response() :: %{
        "nextToken" => String.t(),
        "templateSummaries" => list(template_summary()())
      }
      
  """
  @type list_world_templates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      environment() :: %{
        "uri" => String.t()
      }
      
  """
  @type environment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_simulation_application_version_response() :: %{
        "arn" => String.t(),
        "environment" => environment(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t(),
        "renderingEngine" => rendering_engine(),
        "revisionId" => String.t(),
        "robotSoftwareSuite" => robot_software_suite(),
        "simulationSoftwareSuite" => simulation_software_suite(),
        "sources" => list(source()()),
        "version" => String.t()
      }
      
  """
  @type create_simulation_application_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      simulation_software_suite() :: %{
        "name" => list(any()),
        "version" => String.t()
      }
      
  """
  @type simulation_software_suite() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sync_deployment_job_request() :: %{
        required("clientRequestToken") => String.t(),
        required("fleet") => String.t()
      }
      
  """
  @type sync_deployment_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      launch_config() :: %{
        "command" => list(String.t()()),
        "environmentVariables" => map(),
        "launchFile" => String.t(),
        "packageName" => String.t(),
        "portForwardingConfig" => port_forwarding_config(),
        "streamUI" => boolean()
      }
      
  """
  @type launch_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_world_generation_job_response() :: %{
        "arn" => String.t(),
        "clientRequestToken" => String.t(),
        "createdAt" => non_neg_integer(),
        "failureCode" => list(any()),
        "failureReason" => String.t(),
        "finishedWorldsSummary" => finished_worlds_summary(),
        "status" => list(any()),
        "tags" => map(),
        "template" => String.t(),
        "worldCount" => world_count(),
        "worldTags" => map()
      }
      
  """
  @type describe_world_generation_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_simulation_job_response() :: %{
        "arn" => String.t(),
        "clientRequestToken" => String.t(),
        "compute" => compute_response(),
        "dataSources" => list(data_source()()),
        "failureBehavior" => list(any()),
        "failureCode" => list(any()),
        "iamRole" => String.t(),
        "lastStartedAt" => non_neg_integer(),
        "lastUpdatedAt" => non_neg_integer(),
        "loggingConfig" => logging_config(),
        "maxJobDurationInSeconds" => float(),
        "outputLocation" => output_location(),
        "robotApplications" => list(robot_application_config()()),
        "simulationApplications" => list(simulation_application_config()()),
        "simulationTimeMillis" => float(),
        "status" => list(any()),
        "tags" => map(),
        "vpcConfig" => vpc_config_response()
      }
      
  """
  @type create_simulation_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      port_forwarding_config() :: %{
        "portMappings" => list(port_mapping()())
      }
      
  """
  @type port_forwarding_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_world_export_job_request() :: %{
        required("job") => String.t()
      }
      
  """
  @type describe_world_export_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_world_template_request() :: %{
        optional("clientRequestToken") => String.t(),
        optional("name") => String.t(),
        optional("tags") => map(),
        optional("templateBody") => String.t(),
        optional("templateLocation") => template_location()
      }
      
  """
  @type create_world_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_source_config() :: %{
        "destination" => String.t(),
        "name" => String.t(),
        "s3Bucket" => String.t(),
        "s3Keys" => list(String.t()()),
        "type" => list(any())
      }
      
  """
  @type data_source_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      idempotent_parameter_mismatch_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type idempotent_parameter_mismatch_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      template_summary() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t(),
        "version" => String.t()
      }
      
  """
  @type template_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_world_generation_job_response() :: %{
        "arn" => String.t(),
        "clientRequestToken" => String.t(),
        "createdAt" => non_neg_integer(),
        "failureCode" => list(any()),
        "status" => list(any()),
        "tags" => map(),
        "template" => String.t(),
        "worldCount" => world_count(),
        "worldTags" => map()
      }
      
  """
  @type create_world_generation_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_simulation_job_response() :: %{}
      
  """
  @type cancel_simulation_job_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_robot_application_response() :: %{}
      
  """
  @type delete_robot_application_response() :: %{}

  @typedoc """

  ## Example:
      
      vpc_config() :: %{
        "assignPublicIp" => boolean(),
        "securityGroups" => list(String.t()()),
        "subnets" => list(String.t()())
      }
      
  """
  @type vpc_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_world_templates_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_world_templates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      world_export_job_summary() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "outputLocation" => output_location(),
        "status" => list(any()),
        "worlds" => list(String.t()())
      }
      
  """
  @type world_export_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      simulation_job() :: %{
        "arn" => String.t(),
        "clientRequestToken" => String.t(),
        "compute" => compute_response(),
        "dataSources" => list(data_source()()),
        "failureBehavior" => list(any()),
        "failureCode" => list(any()),
        "failureReason" => String.t(),
        "iamRole" => String.t(),
        "lastStartedAt" => non_neg_integer(),
        "lastUpdatedAt" => non_neg_integer(),
        "loggingConfig" => logging_config(),
        "maxJobDurationInSeconds" => float(),
        "name" => String.t(),
        "networkInterface" => network_interface(),
        "outputLocation" => output_location(),
        "robotApplications" => list(robot_application_config()()),
        "simulationApplications" => list(simulation_application_config()()),
        "simulationTimeMillis" => float(),
        "status" => list(any()),
        "tags" => map(),
        "vpcConfig" => vpc_config_response()
      }
      
  """
  @type simulation_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "tags" => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_describe_simulation_job_response() :: %{
        "jobs" => list(simulation_job()()),
        "unprocessedJobs" => list(String.t()())
      }
      
  """
  @type batch_describe_simulation_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_world_export_jobs_response() :: %{
        "nextToken" => String.t(),
        "worldExportJobSummaries" => list(world_export_job_summary()())
      }
      
  """
  @type list_world_export_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_robot_response() :: %{
        "architecture" => list(any()),
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "fleetArn" => String.t(),
        "greengrassGroupId" => String.t(),
        "lastDeploymentJob" => String.t(),
        "lastDeploymentTime" => non_neg_integer(),
        "name" => String.t(),
        "status" => list(any()),
        "tags" => map()
      }
      
  """
  @type describe_robot_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      robot_deployment() :: %{
        "arn" => String.t(),
        "deploymentFinishTime" => non_neg_integer(),
        "deploymentStartTime" => non_neg_integer(),
        "failureCode" => list(any()),
        "failureReason" => String.t(),
        "progressDetail" => progress_detail(),
        "status" => list(any())
      }
      
  """
  @type robot_deployment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      output_location() :: %{
        "s3Bucket" => String.t(),
        "s3Prefix" => String.t()
      }
      
  """
  @type output_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_unavailable_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deployment_launch_config() :: %{
        "environmentVariables" => map(),
        "launchFile" => String.t(),
        "packageName" => String.t(),
        "postLaunchFile" => String.t(),
        "preLaunchFile" => String.t()
      }
      
  """
  @type deployment_launch_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_world_template_response() :: %{}
      
  """
  @type delete_world_template_response() :: %{}

  @typedoc """

  ## Example:
      
      describe_simulation_job_request() :: %{
        required("job") => String.t()
      }
      
  """
  @type describe_simulation_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_delete_worlds_request() :: %{
        required("worlds") => list(String.t()())
      }
      
  """
  @type batch_delete_worlds_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_robot_applications_response() :: %{
        "nextToken" => String.t(),
        "robotApplicationSummaries" => list(robot_application_summary()())
      }
      
  """
  @type list_robot_applications_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_world_template_body_response() :: %{
        "templateBody" => String.t()
      }
      
  """
  @type get_world_template_body_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      filter() :: %{
        "name" => String.t(),
        "values" => list(String.t()())
      }
      
  """
  @type filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_world_generation_job_request() :: %{
        required("job") => String.t()
      }
      
  """
  @type describe_world_generation_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_world_generation_jobs_request() :: %{
        optional("filters") => list(filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_world_generation_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_simulation_job_batches_response() :: %{
        "nextToken" => String.t(),
        "simulationJobBatchSummaries" => list(simulation_job_batch_summary()())
      }
      
  """
  @type list_simulation_job_batches_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_simulation_application_response() :: %{
        "arn" => String.t(),
        "environment" => environment(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t(),
        "renderingEngine" => rendering_engine(),
        "revisionId" => String.t(),
        "robotSoftwareSuite" => robot_software_suite(),
        "simulationSoftwareSuite" => simulation_software_suite(),
        "sources" => list(source()()),
        "version" => String.t()
      }
      
  """
  @type update_simulation_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_robots_response() :: %{
        "nextToken" => String.t(),
        "robots" => list(robot()())
      }
      
  """
  @type list_robots_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      source() :: %{
        "architecture" => list(any()),
        "etag" => String.t(),
        "s3Bucket" => String.t(),
        "s3Key" => String.t()
      }
      
  """
  @type source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_simulation_job_batch_request() :: %{
        optional("batchPolicy") => batch_policy(),
        optional("clientRequestToken") => String.t(),
        optional("tags") => map(),
        required("createSimulationJobRequests") => list(simulation_job_request()())
      }
      
  """
  @type start_simulation_job_batch_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      failure_summary() :: %{
        "failures" => list(world_failure()()),
        "totalFailureCount" => integer()
      }
      
  """
  @type failure_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_simulation_jobs_response() :: %{
        "nextToken" => String.t(),
        "simulationJobSummaries" => list(simulation_job_summary()())
      }
      
  """
  @type list_simulation_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_simulation_application_response() :: %{}
      
  """
  @type delete_simulation_application_response() :: %{}

  @typedoc """

  ## Example:
      
      template_location() :: %{
        "s3Bucket" => String.t(),
        "s3Key" => String.t()
      }
      
  """
  @type template_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_worlds_request() :: %{
        optional("filters") => list(filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_worlds_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_simulation_job_request() :: %{
        required("job") => String.t()
      }
      
  """
  @type cancel_simulation_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rendering_engine() :: %{
        "name" => list(any()),
        "version" => String.t()
      }
      
  """
  @type rendering_engine() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_robot_application_response() :: %{
        "arn" => String.t(),
        "environment" => environment(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t(),
        "revisionId" => String.t(),
        "robotSoftwareSuite" => robot_software_suite(),
        "sources" => list(source()()),
        "tags" => map(),
        "version" => String.t()
      }
      
  """
  @type create_robot_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_world_template_response() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t()
      }
      
  """
  @type update_world_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_world_export_job_response() :: %{
        "arn" => String.t(),
        "clientRequestToken" => String.t(),
        "createdAt" => non_neg_integer(),
        "failureCode" => list(any()),
        "failureReason" => String.t(),
        "iamRole" => String.t(),
        "outputLocation" => output_location(),
        "status" => list(any()),
        "tags" => map(),
        "worlds" => list(String.t()())
      }
      
  """
  @type describe_world_export_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_simulation_application_request() :: %{
        optional("applicationVersion") => String.t(),
        required("application") => String.t()
      }
      
  """
  @type delete_simulation_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      port_mapping() :: %{
        "applicationPort" => integer(),
        "enableOnPublicIp" => boolean(),
        "jobPort" => integer()
      }
      
  """
  @type port_mapping() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_robot_request() :: %{
        required("robot") => String.t()
      }
      
  """
  @type describe_robot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_simulation_job_batch_response() :: %{}
      
  """
  @type cancel_simulation_job_batch_response() :: %{}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{}
      
  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:
      
      list_simulation_jobs_request() :: %{
        optional("filters") => list(filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_simulation_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_robot_application_request() :: %{
        optional("environment") => environment(),
        optional("sources") => list(source_config()()),
        optional("tags") => map(),
        required("name") => String.t(),
        required("robotSoftwareSuite") => robot_software_suite()
      }
      
  """
  @type create_robot_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_simulation_job_batch_response() :: %{
        "arn" => String.t(),
        "batchPolicy" => batch_policy(),
        "clientRequestToken" => String.t(),
        "createdAt" => non_neg_integer(),
        "createdRequests" => list(simulation_job_summary()()),
        "failedRequests" => list(failed_create_simulation_job_request()()),
        "failureCode" => list(any()),
        "failureReason" => String.t(),
        "lastUpdatedAt" => non_neg_integer(),
        "pendingRequests" => list(simulation_job_request()()),
        "status" => list(any()),
        "tags" => map()
      }
      
  """
  @type describe_simulation_job_batch_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_delete_worlds_response() :: %{
        "unprocessedWorlds" => list(String.t()())
      }
      
  """
  @type batch_delete_worlds_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_robot_applications_request() :: %{
        optional("filters") => list(filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("versionQualifier") => String.t()
      }
      
  """
  @type list_robot_applications_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      failed_create_simulation_job_request() :: %{
        "failedAt" => non_neg_integer(),
        "failureCode" => list(any()),
        "failureReason" => String.t(),
        "request" => simulation_job_request()
      }
      
  """
  @type failed_create_simulation_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_world_template_request() :: %{
        required("template") => String.t()
      }
      
  """
  @type describe_world_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_robot_application_request() :: %{
        optional("applicationVersion") => String.t(),
        required("application") => String.t()
      }
      
  """
  @type describe_robot_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_robot_request() :: %{
        required("fleet") => String.t(),
        required("robot") => String.t()
      }
      
  """
  @type register_robot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_robot_application_request() :: %{
        optional("applicationVersion") => String.t(),
        required("application") => String.t()
      }
      
  """
  @type delete_robot_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_describe_simulation_job_request() :: %{
        required("jobs") => list(String.t()())
      }
      
  """
  @type batch_describe_simulation_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_world_generation_job_response() :: %{}
      
  """
  @type cancel_world_generation_job_response() :: %{}

  @typedoc """

  ## Example:
      
      finished_worlds_summary() :: %{
        "failureSummary" => failure_summary(),
        "finishedCount" => integer(),
        "succeededWorlds" => list(String.t()())
      }
      
  """
  @type finished_worlds_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_simulation_job_request() :: %{
        optional("clientRequestToken") => String.t(),
        optional("compute") => compute(),
        optional("dataSources") => list(data_source_config()()),
        optional("failureBehavior") => list(any()),
        optional("loggingConfig") => logging_config(),
        optional("outputLocation") => output_location(),
        optional("robotApplications") => list(robot_application_config()()),
        optional("simulationApplications") => list(simulation_application_config()()),
        optional("tags") => map(),
        optional("vpcConfig") => vpc_config(),
        required("iamRole") => String.t(),
        required("maxJobDurationInSeconds") => float()
      }
      
  """
  @type create_simulation_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      world_failure() :: %{
        "failureCode" => list(any()),
        "failureCount" => integer(),
        "sampleFailureReason" => String.t()
      }
      
  """
  @type world_failure() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      source_config() :: %{
        "architecture" => list(any()),
        "s3Bucket" => String.t(),
        "s3Key" => String.t()
      }
      
  """
  @type source_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_request() :: %{
        required("fleet") => String.t()
      }
      
  """
  @type describe_fleet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_config_response() :: %{
        "assignPublicIp" => boolean(),
        "securityGroups" => list(String.t()()),
        "subnets" => list(String.t()()),
        "vpcId" => String.t()
      }
      
  """
  @type vpc_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      simulation_application_config() :: %{
        "application" => String.t(),
        "applicationVersion" => String.t(),
        "launchConfig" => launch_config(),
        "tools" => list(tool()()),
        "uploadConfigurations" => list(upload_configuration()()),
        "useDefaultTools" => boolean(),
        "useDefaultUploadConfigurations" => boolean(),
        "worldConfigs" => list(world_config()())
      }
      
  """
  @type simulation_application_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      robot_application_summary() :: %{
        "arn" => String.t(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t(),
        "robotSoftwareSuite" => robot_software_suite(),
        "version" => String.t()
      }
      
  """
  @type robot_application_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sync_deployment_job_response() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "deploymentApplicationConfigs" => list(deployment_application_config()()),
        "deploymentConfig" => deployment_config(),
        "failureCode" => list(any()),
        "failureReason" => String.t(),
        "fleet" => String.t(),
        "status" => list(any())
      }
      
  """
  @type sync_deployment_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_world_export_job_request() :: %{
        required("job") => String.t()
      }
      
  """
  @type cancel_world_export_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_robot_request() :: %{
        required("robot") => String.t()
      }
      
  """
  @type delete_robot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_simulation_application_response() :: %{
        "arn" => String.t(),
        "environment" => environment(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t(),
        "renderingEngine" => rendering_engine(),
        "revisionId" => String.t(),
        "robotSoftwareSuite" => robot_software_suite(),
        "simulationSoftwareSuite" => simulation_software_suite(),
        "sources" => list(source()()),
        "tags" => map(),
        "version" => String.t()
      }
      
  """
  @type create_simulation_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_world_template_body_request() :: %{
        optional("generationJob") => String.t(),
        optional("template") => String.t()
      }
      
  """
  @type get_world_template_body_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_already_exists_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_source() :: %{
        "destination" => String.t(),
        "name" => String.t(),
        "s3Bucket" => String.t(),
        "s3Keys" => list(s3_key_output()()),
        "type" => list(any())
      }
      
  """
  @type data_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_robots_request() :: %{
        optional("filters") => list(filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_robots_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_simulation_application_request() :: %{
        optional("applicationVersion") => String.t(),
        required("application") => String.t()
      }
      
  """
  @type describe_simulation_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_robot_application_response() :: %{
        "arn" => String.t(),
        "environment" => environment(),
        "imageDigest" => String.t(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t(),
        "revisionId" => String.t(),
        "robotSoftwareSuite" => robot_software_suite(),
        "sources" => list(source()()),
        "tags" => map(),
        "version" => String.t()
      }
      
  """
  @type describe_robot_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_simulation_job_batches_request() :: %{
        optional("filters") => list(filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_simulation_job_batches_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_worlds_response() :: %{
        "nextToken" => String.t(),
        "worldSummaries" => list(world_summary()())
      }
      
  """
  @type list_worlds_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_fleet_response() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "name" => String.t(),
        "tags" => map()
      }
      
  """
  @type create_fleet_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_robot_request() :: %{
        required("fleet") => String.t(),
        required("robot") => String.t()
      }
      
  """
  @type deregister_robot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_world_export_job_request() :: %{
        optional("clientRequestToken") => String.t(),
        optional("tags") => map(),
        required("iamRole") => String.t(),
        required("outputLocation") => output_location(),
        required("worlds") => list(String.t()())
      }
      
  """
  @type create_world_export_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tool() :: %{
        "command" => String.t(),
        "exitBehavior" => list(any()),
        "name" => String.t(),
        "streamOutputToCloudWatch" => boolean(),
        "streamUI" => boolean()
      }
      
  """
  @type tool() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_simulation_job_batch_request() :: %{
        required("batch") => String.t()
      }
      
  """
  @type cancel_simulation_job_batch_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_simulation_applications_request() :: %{
        optional("filters") => list(filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("versionQualifier") => String.t()
      }
      
  """
  @type list_simulation_applications_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_world_export_job_response() :: %{}
      
  """
  @type cancel_world_export_job_response() :: %{}

  @typedoc """

  ## Example:
      
      world_count() :: %{
        "floorplanCount" => integer(),
        "interiorCountPerFloorplan" => integer()
      }
      
  """
  @type world_count() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      fleet() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "lastDeploymentJob" => String.t(),
        "lastDeploymentStatus" => list(any()),
        "lastDeploymentTime" => non_neg_integer(),
        "name" => String.t()
      }
      
  """
  @type fleet() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deployment_job() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "deploymentApplicationConfigs" => list(deployment_application_config()()),
        "deploymentConfig" => deployment_config(),
        "failureCode" => list(any()),
        "failureReason" => String.t(),
        "fleet" => String.t(),
        "status" => list(any())
      }
      
  """
  @type deployment_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      robot_application_config() :: %{
        "application" => String.t(),
        "applicationVersion" => String.t(),
        "launchConfig" => launch_config(),
        "tools" => list(tool()()),
        "uploadConfigurations" => list(upload_configuration()()),
        "useDefaultTools" => boolean(),
        "useDefaultUploadConfigurations" => boolean()
      }
      
  """
  @type robot_application_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_deployment_jobs_request() :: %{
        optional("filters") => list(filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_deployment_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_world_response() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "generationJob" => String.t(),
        "tags" => map(),
        "template" => String.t(),
        "worldDescriptionBody" => String.t()
      }
      
  """
  @type describe_world_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restart_simulation_job_request() :: %{
        required("job") => String.t()
      }
      
  """
  @type restart_simulation_job_request() :: %{String.t() => any()}

  @type batch_delete_worlds_errors() ::
          throttling_exception() | invalid_parameter_exception() | internal_server_exception()

  @type batch_describe_simulation_job_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type cancel_deployment_job_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type cancel_simulation_job_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type cancel_simulation_job_batch_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type cancel_world_export_job_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type cancel_world_generation_job_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_deployment_job_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | idempotent_parameter_mismatch_exception()
          | resource_not_found_exception()
          | concurrent_deployment_exception()

  @type create_fleet_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()

  @type create_robot_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()

  @type create_robot_application_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | idempotent_parameter_mismatch_exception()

  @type create_robot_application_version_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | idempotent_parameter_mismatch_exception()

  @type create_simulation_application_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | idempotent_parameter_mismatch_exception()

  @type create_simulation_application_version_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | idempotent_parameter_mismatch_exception()

  @type create_simulation_job_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | idempotent_parameter_mismatch_exception()
          | resource_not_found_exception()

  @type create_world_export_job_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | idempotent_parameter_mismatch_exception()
          | resource_not_found_exception()

  @type create_world_generation_job_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | idempotent_parameter_mismatch_exception()
          | resource_not_found_exception()

  @type create_world_template_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_fleet_errors() ::
          throttling_exception() | invalid_parameter_exception() | internal_server_exception()

  @type delete_robot_errors() ::
          throttling_exception() | invalid_parameter_exception() | internal_server_exception()

  @type delete_robot_application_errors() ::
          throttling_exception() | invalid_parameter_exception() | internal_server_exception()

  @type delete_simulation_application_errors() ::
          throttling_exception() | invalid_parameter_exception() | internal_server_exception()

  @type delete_world_template_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type deregister_robot_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_deployment_job_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_fleet_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_robot_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_robot_application_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_simulation_application_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_simulation_job_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_simulation_job_batch_errors() ::
          invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_world_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_world_export_job_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_world_generation_job_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_world_template_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_world_template_body_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_deployment_jobs_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_fleets_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_robot_applications_errors() ::
          throttling_exception() | invalid_parameter_exception() | internal_server_exception()

  @type list_robots_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_simulation_applications_errors() ::
          throttling_exception() | invalid_parameter_exception() | internal_server_exception()

  @type list_simulation_job_batches_errors() ::
          invalid_parameter_exception() | internal_server_exception()

  @type list_simulation_jobs_errors() ::
          throttling_exception() | invalid_parameter_exception() | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_world_export_jobs_errors() ::
          throttling_exception() | invalid_parameter_exception() | internal_server_exception()

  @type list_world_generation_jobs_errors() ::
          throttling_exception() | invalid_parameter_exception() | internal_server_exception()

  @type list_world_templates_errors() ::
          throttling_exception() | invalid_parameter_exception() | internal_server_exception()

  @type list_worlds_errors() ::
          throttling_exception() | invalid_parameter_exception() | internal_server_exception()

  @type register_robot_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type restart_simulation_job_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type start_simulation_job_batch_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | idempotent_parameter_mismatch_exception()

  @type sync_deployment_job_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | idempotent_parameter_mismatch_exception()
          | resource_not_found_exception()
          | concurrent_deployment_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_robot_application_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_simulation_application_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_world_template_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2018-06-29",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "robomaker",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "RoboMaker",
      signature_version: "v4",
      signing_name: "robomaker",
      target_prefix: nil
    }
  end

  @doc """
  Deletes one or more worlds in a batch operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20BatchDeleteWorlds&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec batch_delete_worlds(AWS.Client.t(), Keyword.t()) ::
          {:ok, batch_delete_worlds_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_delete_worlds_errors()}

  def batch_delete_worlds(%Client{} = client, options \\ []) do
    url_path = "/batchDeleteWorlds"

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
  Describes one or more simulation jobs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20BatchDescribeSimulationJob&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec batch_describe_simulation_job(AWS.Client.t(), Keyword.t()) ::
          {:ok, batch_describe_simulation_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_describe_simulation_job_errors()}

  def batch_describe_simulation_job(%Client{} = client, options \\ []) do
    url_path = "/batchDescribeSimulationJob"

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
  Cancels the specified deployment job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20CancelDeploymentJob&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec cancel_deployment_job(AWS.Client.t(), Keyword.t()) ::
          {:ok, cancel_deployment_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_deployment_job_errors()}

  def cancel_deployment_job(%Client{} = client, options \\ []) do
    url_path = "/cancelDeploymentJob"

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
  Cancels the specified simulation job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20CancelSimulationJob&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec cancel_simulation_job(AWS.Client.t(), Keyword.t()) ::
          {:ok, cancel_simulation_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_simulation_job_errors()}

  def cancel_simulation_job(%Client{} = client, options \\ []) do
    url_path = "/cancelSimulationJob"

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
  Cancels a simulation job batch. When you cancel a simulation job batch, you are
  also cancelling all of the active simulation jobs created as part of the
  batch.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20CancelSimulationJobBatch&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec cancel_simulation_job_batch(AWS.Client.t(), Keyword.t()) ::
          {:ok, cancel_simulation_job_batch_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_simulation_job_batch_errors()}

  def cancel_simulation_job_batch(%Client{} = client, options \\ []) do
    url_path = "/cancelSimulationJobBatch"

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
  Cancels the specified export job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20CancelWorldExportJob&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec cancel_world_export_job(AWS.Client.t(), Keyword.t()) ::
          {:ok, cancel_world_export_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_world_export_job_errors()}

  def cancel_world_export_job(%Client{} = client, options \\ []) do
    url_path = "/cancelWorldExportJob"

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
  Cancels the specified world generator job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20CancelWorldGenerationJob&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec cancel_world_generation_job(AWS.Client.t(), Keyword.t()) ::
          {:ok, cancel_world_generation_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_world_generation_job_errors()}

  def cancel_world_generation_job(%Client{} = client, options \\ []) do
    url_path = "/cancelWorldGenerationJob"

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
  Deploys a specific version of a robot application to robots in a fleet. This API
  is no longer supported and will throw an error if used.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20CreateDeploymentJob&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_deployment_job(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_deployment_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_deployment_job_errors()}

  def create_deployment_job(%Client{} = client, options \\ []) do
    url_path = "/createDeploymentJob"

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
  Creates a fleet, a logical group of robots running the same robot application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20CreateFleet&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_fleet(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_fleet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_fleet_errors()}

  def create_fleet(%Client{} = client, options \\ []) do
    url_path = "/createFleet"

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
  Creates a robot.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20CreateRobot&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_robot(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_robot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_robot_errors()}

  def create_robot(%Client{} = client, options \\ []) do
    url_path = "/createRobot"

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
  Creates a robot application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20CreateRobotApplication&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_robot_application(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_robot_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_robot_application_errors()}

  def create_robot_application(%Client{} = client, options \\ []) do
    url_path = "/createRobotApplication"

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
  Creates a version of a robot application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20CreateRobotApplicationVersion&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_robot_application_version(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_robot_application_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_robot_application_version_errors()}

  def create_robot_application_version(%Client{} = client, options \\ []) do
    url_path = "/createRobotApplicationVersion"

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
  Creates a simulation application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20CreateSimulationApplication&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_simulation_application(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_simulation_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_simulation_application_errors()}

  def create_simulation_application(%Client{} = client, options \\ []) do
    url_path = "/createSimulationApplication"

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
  Creates a simulation application with a specific revision id.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20CreateSimulationApplicationVersion&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_simulation_application_version(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_simulation_application_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_simulation_application_version_errors()}

  def create_simulation_application_version(%Client{} = client, options \\ []) do
    url_path = "/createSimulationApplicationVersion"

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
  Creates a simulation job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20CreateSimulationJob&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_simulation_job(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_simulation_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_simulation_job_errors()}

  def create_simulation_job(%Client{} = client, options \\ []) do
    url_path = "/createSimulationJob"

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
  Creates a world export job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20CreateWorldExportJob&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_world_export_job(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_world_export_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_world_export_job_errors()}

  def create_world_export_job(%Client{} = client, options \\ []) do
    url_path = "/createWorldExportJob"

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
  Creates worlds using the specified template.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20CreateWorldGenerationJob&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_world_generation_job(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_world_generation_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_world_generation_job_errors()}

  def create_world_generation_job(%Client{} = client, options \\ []) do
    url_path = "/createWorldGenerationJob"

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
  Creates a world template.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20CreateWorldTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_world_template(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_world_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_world_template_errors()}

  def create_world_template(%Client{} = client, options \\ []) do
    url_path = "/createWorldTemplate"

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
  Deletes a fleet.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20DeleteFleet&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec delete_fleet(AWS.Client.t(), Keyword.t()) ::
          {:ok, delete_fleet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_fleet_errors()}

  def delete_fleet(%Client{} = client, options \\ []) do
    url_path = "/deleteFleet"

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
  Deletes a robot.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20DeleteRobot&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec delete_robot(AWS.Client.t(), Keyword.t()) ::
          {:ok, delete_robot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_robot_errors()}

  def delete_robot(%Client{} = client, options \\ []) do
    url_path = "/deleteRobot"

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
  Deletes a robot application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20DeleteRobotApplication&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec delete_robot_application(AWS.Client.t(), Keyword.t()) ::
          {:ok, delete_robot_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_robot_application_errors()}

  def delete_robot_application(%Client{} = client, options \\ []) do
    url_path = "/deleteRobotApplication"

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
  Deletes a simulation application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20DeleteSimulationApplication&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec delete_simulation_application(AWS.Client.t(), Keyword.t()) ::
          {:ok, delete_simulation_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_simulation_application_errors()}

  def delete_simulation_application(%Client{} = client, options \\ []) do
    url_path = "/deleteSimulationApplication"

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
  Deletes a world template.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20DeleteWorldTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec delete_world_template(AWS.Client.t(), Keyword.t()) ::
          {:ok, delete_world_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_world_template_errors()}

  def delete_world_template(%Client{} = client, options \\ []) do
    url_path = "/deleteWorldTemplate"

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
  Deregisters a robot.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20DeregisterRobot&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec deregister_robot(AWS.Client.t(), Keyword.t()) ::
          {:ok, deregister_robot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deregister_robot_errors()}

  def deregister_robot(%Client{} = client, options \\ []) do
    url_path = "/deregisterRobot"

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
  Describes a deployment job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20DescribeDeploymentJob&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec describe_deployment_job(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_deployment_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_deployment_job_errors()}

  def describe_deployment_job(%Client{} = client, options \\ []) do
    url_path = "/describeDeploymentJob"

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
  Describes a fleet.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20DescribeFleet&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec describe_fleet(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_fleet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_fleet_errors()}

  def describe_fleet(%Client{} = client, options \\ []) do
    url_path = "/describeFleet"

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
  Describes a robot.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20DescribeRobot&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec describe_robot(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_robot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_robot_errors()}

  def describe_robot(%Client{} = client, options \\ []) do
    url_path = "/describeRobot"

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
  Describes a robot application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20DescribeRobotApplication&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec describe_robot_application(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_robot_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_robot_application_errors()}

  def describe_robot_application(%Client{} = client, options \\ []) do
    url_path = "/describeRobotApplication"

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
  Describes a simulation application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20DescribeSimulationApplication&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec describe_simulation_application(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_simulation_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_simulation_application_errors()}

  def describe_simulation_application(%Client{} = client, options \\ []) do
    url_path = "/describeSimulationApplication"

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
  Describes a simulation job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20DescribeSimulationJob&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec describe_simulation_job(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_simulation_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_simulation_job_errors()}

  def describe_simulation_job(%Client{} = client, options \\ []) do
    url_path = "/describeSimulationJob"

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
  Describes a simulation job batch.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20DescribeSimulationJobBatch&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec describe_simulation_job_batch(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_simulation_job_batch_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_simulation_job_batch_errors()}

  def describe_simulation_job_batch(%Client{} = client, options \\ []) do
    url_path = "/describeSimulationJobBatch"

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
  Describes a world.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20DescribeWorld&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec describe_world(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_world_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_world_errors()}

  def describe_world(%Client{} = client, options \\ []) do
    url_path = "/describeWorld"

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
  Describes a world export job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20DescribeWorldExportJob&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec describe_world_export_job(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_world_export_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_world_export_job_errors()}

  def describe_world_export_job(%Client{} = client, options \\ []) do
    url_path = "/describeWorldExportJob"

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
  Describes a world generation job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20DescribeWorldGenerationJob&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec describe_world_generation_job(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_world_generation_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_world_generation_job_errors()}

  def describe_world_generation_job(%Client{} = client, options \\ []) do
    url_path = "/describeWorldGenerationJob"

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
  Describes a world template.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20DescribeWorldTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec describe_world_template(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_world_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_world_template_errors()}

  def describe_world_template(%Client{} = client, options \\ []) do
    url_path = "/describeWorldTemplate"

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
  Gets the world template body.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20GetWorldTemplateBody&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec get_world_template_body(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_world_template_body_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_world_template_body_errors()}

  def get_world_template_body(%Client{} = client, options \\ []) do
    url_path = "/getWorldTemplateBody"

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
  Returns a list of deployment jobs for a fleet. You can optionally provide
  filters to retrieve specific deployment jobs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20ListDeploymentJobs&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec list_deployment_jobs(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_deployment_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_deployment_jobs_errors()}

  def list_deployment_jobs(%Client{} = client, options \\ []) do
    url_path = "/listDeploymentJobs"

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
  Returns a list of fleets. You can optionally provide filters to retrieve
  specific fleets.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20ListFleets&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec list_fleets(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_fleets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_fleets_errors()}

  def list_fleets(%Client{} = client, options \\ []) do
    url_path = "/listFleets"

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
  Returns a list of robot application. You can optionally provide filters to
  retrieve specific robot applications.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20ListRobotApplications&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec list_robot_applications(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_robot_applications_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_robot_applications_errors()}

  def list_robot_applications(%Client{} = client, options \\ []) do
    url_path = "/listRobotApplications"

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
  Returns a list of robots. You can optionally provide filters to retrieve
  specific robots.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20ListRobots&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec list_robots(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_robots_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_robots_errors()}

  def list_robots(%Client{} = client, options \\ []) do
    url_path = "/listRobots"

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
  Returns a list of simulation applications. You can optionally provide filters to
  retrieve specific simulation applications.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20ListSimulationApplications&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec list_simulation_applications(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_simulation_applications_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_simulation_applications_errors()}

  def list_simulation_applications(%Client{} = client, options \\ []) do
    url_path = "/listSimulationApplications"

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
  Returns a list simulation job batches. You can optionally provide filters to
  retrieve specific simulation batch jobs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20ListSimulationJobBatches&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec list_simulation_job_batches(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_simulation_job_batches_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_simulation_job_batches_errors()}

  def list_simulation_job_batches(%Client{} = client, options \\ []) do
    url_path = "/listSimulationJobBatches"

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
  Returns a list of simulation jobs. You can optionally provide filters to
  retrieve specific simulation jobs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20ListSimulationJobs&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec list_simulation_jobs(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_simulation_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_simulation_jobs_errors()}

  def list_simulation_jobs(%Client{} = client, options \\ []) do
    url_path = "/listSimulationJobs"

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
  Lists all tags on a AWS RoboMaker resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The AWS RoboMaker Amazon Resource Name (ARN) with
  tags to be listed.

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
  Lists world export jobs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20ListWorldExportJobs&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec list_world_export_jobs(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_world_export_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_world_export_jobs_errors()}

  def list_world_export_jobs(%Client{} = client, options \\ []) do
    url_path = "/listWorldExportJobs"

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
  Lists world generator jobs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20ListWorldGenerationJobs&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec list_world_generation_jobs(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_world_generation_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_world_generation_jobs_errors()}

  def list_world_generation_jobs(%Client{} = client, options \\ []) do
    url_path = "/listWorldGenerationJobs"

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
  Lists world templates.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20ListWorldTemplates&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec list_world_templates(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_world_templates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_world_templates_errors()}

  def list_world_templates(%Client{} = client, options \\ []) do
    url_path = "/listWorldTemplates"

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
  Lists worlds.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20ListWorlds&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec list_worlds(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_worlds_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_worlds_errors()}

  def list_worlds(%Client{} = client, options \\ []) do
    url_path = "/listWorlds"

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
  Registers a robot with a fleet.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20RegisterRobot&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec register_robot(AWS.Client.t(), Keyword.t()) ::
          {:ok, register_robot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_robot_errors()}

  def register_robot(%Client{} = client, options \\ []) do
    url_path = "/registerRobot"

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
  Restarts a running simulation job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20RestartSimulationJob&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec restart_simulation_job(AWS.Client.t(), Keyword.t()) ::
          {:ok, restart_simulation_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, restart_simulation_job_errors()}

  def restart_simulation_job(%Client{} = client, options \\ []) do
    url_path = "/restartSimulationJob"

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
  Starts a new simulation job batch. The batch is defined using one or more
  `SimulationJobRequest` objects.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20StartSimulationJobBatch&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec start_simulation_job_batch(AWS.Client.t(), Keyword.t()) ::
          {:ok, start_simulation_job_batch_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_simulation_job_batch_errors()}

  def start_simulation_job_batch(%Client{} = client, options \\ []) do
    url_path = "/startSimulationJobBatch"

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
  Syncrhonizes robots in a fleet to the latest deployment. This is helpful if
  robots were added after a deployment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20SyncDeploymentJob&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec sync_deployment_job(AWS.Client.t(), Keyword.t()) ::
          {:ok, sync_deployment_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, sync_deployment_job_errors()}

  def sync_deployment_job(%Client{} = client, options \\ []) do
    url_path = "/syncDeploymentJob"

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
  Adds or edits tags for a AWS RoboMaker resource. Each tag consists of a tag key
  and a tag value. Tag keys and tag values are both required, but tag values can
  be empty strings.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the AWS
  RoboMaker resource you are tagging.

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
  Removes the specified tags from the specified AWS RoboMaker resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the AWS
  RoboMaker resource you are removing tags.
  * `:tag_keys` (`t:list[com.amazonaws.robomaker#TagKey]`) A map that contains tag
  keys and tag values that will be unattached from the resource.

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
  Updates a robot application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20UpdateRobotApplication&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec update_robot_application(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_robot_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_robot_application_errors()}

  def update_robot_application(%Client{} = client, options \\ []) do
    url_path = "/updateRobotApplication"

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
  Updates a simulation application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20UpdateSimulationApplication&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec update_simulation_application(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_simulation_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_simulation_application_errors()}

  def update_simulation_application(%Client{} = client, options \\ []) do
    url_path = "/updateSimulationApplication"

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
  Updates a world template.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=robomaker%20UpdateWorldTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec update_world_template(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_world_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_world_template_errors()}

  def update_world_template(%Client{} = client, options \\ []) do
    url_path = "/updateWorldTemplate"

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
