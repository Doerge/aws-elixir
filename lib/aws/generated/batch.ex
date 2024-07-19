# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Batch do
  @moduledoc """
  Batch Using Batch, you can run batch computing workloads on the Amazon Web
  Services Cloud. Batch computing is a common means for developers, scientists,
  and engineers to access large amounts of compute resources. Batch uses the
  advantages of the batch computing to remove the undifferentiated heavy lifting
  of configuring and managing required infrastructure. At the same time, it also
  adopts a familiar batch computing software approach. You can use Batch to
  efficiently provision resources, and work toward eliminating capacity
  constraints, reducing your overall compute costs, and delivering results more
  quickly.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      ecs_properties_override() :: %{
        "taskProperties" => list(task_properties_override()())
      }
      
  """
  @type ecs_properties_override() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_compute_environments_response() :: %{
        "computeEnvironments" => list(compute_environment_detail()()),
        "nextToken" => String.t()
      }
      
  """
  @type describe_compute_environments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_scheduling_policies_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_scheduling_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_job_request() :: %{
        required("jobId") => String.t(),
        required("reason") => String.t()
      }
      
  """
  @type cancel_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      eks_metadata() :: %{
        "labels" => map()
      }
      
  """
  @type eks_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      task_properties_override() :: %{
        "containers" => list(task_container_overrides()())
      }
      
  """
  @type task_properties_override() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_job_definition_request() :: %{
        required("jobDefinition") => String.t()
      }
      
  """
  @type deregister_job_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      fargate_platform_configuration() :: %{
        "platformVersion" => String.t()
      }
      
  """
  @type fargate_platform_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_job_definitions_response() :: %{
        "jobDefinitions" => list(job_definition()()),
        "nextToken" => String.t()
      }
      
  """
  @type describe_job_definitions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      container_properties() :: %{
        "command" => list(String.t()()),
        "environment" => list(key_value_pair()()),
        "ephemeralStorage" => ephemeral_storage(),
        "executionRoleArn" => String.t(),
        "fargatePlatformConfiguration" => fargate_platform_configuration(),
        "image" => String.t(),
        "instanceType" => String.t(),
        "jobRoleArn" => String.t(),
        "linuxParameters" => linux_parameters(),
        "logConfiguration" => log_configuration(),
        "memory" => integer(),
        "mountPoints" => list(mount_point()()),
        "networkConfiguration" => network_configuration(),
        "privileged" => boolean(),
        "readonlyRootFilesystem" => boolean(),
        "repositoryCredentials" => repository_credentials(),
        "resourceRequirements" => list(resource_requirement()()),
        "runtimePlatform" => runtime_platform(),
        "secrets" => list(secret()()),
        "ulimits" => list(ulimit()()),
        "user" => String.t(),
        "vcpus" => integer(),
        "volumes" => list(volume()())
      }
      
  """
  @type container_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      eks_host_path() :: %{
        "path" => String.t()
      }
      
  """
  @type eks_host_path() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_compute_environment_response() :: %{
        "computeEnvironmentArn" => String.t(),
        "computeEnvironmentName" => String.t()
      }
      
  """
  @type create_compute_environment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      eks_container_environment_variable() :: %{
        "name" => String.t(),
        "value" => String.t()
      }
      
  """
  @type eks_container_environment_variable() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      update_compute_environment_request() :: %{
        optional("computeResources") => compute_resource_update(),
        optional("serviceRole") => String.t(),
        optional("state") => list(any()),
        optional("unmanagedvCpus") => integer(),
        optional("updatePolicy") => update_policy(),
        required("computeEnvironment") => String.t()
      }
      
  """
  @type update_compute_environment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_job_queue_snapshot_request() :: %{
        required("jobQueue") => String.t()
      }
      
  """
  @type get_job_queue_snapshot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      job_timeout() :: %{
        "attemptDurationSeconds" => integer()
      }
      
  """
  @type job_timeout() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scheduling_policy_detail() :: %{
        "arn" => String.t(),
        "fairsharePolicy" => fairshare_policy(),
        "name" => String.t(),
        "tags" => map()
      }
      
  """
  @type scheduling_policy_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_jobs_request() :: %{
        optional("arrayJobId") => String.t(),
        optional("filters") => list(key_values_pair()()),
        optional("jobQueue") => String.t(),
        optional("jobStatus") => list(any()),
        optional("maxResults") => integer(),
        optional("multiNodeJobId") => String.t(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_scheduling_policy_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type delete_scheduling_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_pull_secret() :: %{
        "name" => String.t()
      }
      
  """
  @type image_pull_secret() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ec2_configuration() :: %{
        "imageIdOverride" => String.t(),
        "imageKubernetesVersion" => String.t(),
        "imageType" => String.t()
      }
      
  """
  @type ec2_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_job_definition_response() :: %{}
      
  """
  @type deregister_job_definition_response() :: %{}

  @typedoc """

  ## Example:
      
      create_scheduling_policy_request() :: %{
        optional("fairsharePolicy") => fairshare_policy(),
        optional("tags") => map(),
        required("name") => String.t()
      }
      
  """
  @type create_scheduling_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      node_property_override() :: %{
        "containerOverrides" => container_overrides(),
        "ecsPropertiesOverride" => ecs_properties_override(),
        "eksPropertiesOverride" => eks_properties_override(),
        "instanceTypes" => list(String.t()()),
        "targetNodes" => String.t()
      }
      
  """
  @type node_property_override() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_interface() :: %{
        "attachmentId" => String.t(),
        "ipv6Address" => String.t(),
        "privateIpv4Address" => String.t()
      }
      
  """
  @type network_interface() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      eks_container_override() :: %{
        "args" => list(String.t()()),
        "command" => list(String.t()()),
        "env" => list(eks_container_environment_variable()()),
        "image" => String.t(),
        "name" => String.t(),
        "resources" => eks_container_resource_requirements()
      }
      
  """
  @type eks_container_override() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_jobs_response() :: %{
        "jobSummaryList" => list(job_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attempt_task_container_details() :: %{
        "exitCode" => integer(),
        "logStreamName" => String.t(),
        "name" => String.t(),
        "networkInterfaces" => list(network_interface()()),
        "reason" => String.t()
      }
      
  """
  @type attempt_task_container_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_scheduling_policies_response() :: %{
        "schedulingPolicies" => list(scheduling_policy_detail()())
      }
      
  """
  @type describe_scheduling_policies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_policy() :: %{
        "jobExecutionTimeoutMinutes" => float(),
        "terminateJobsOnUpdate" => boolean()
      }
      
  """
  @type update_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      job_queue_detail() :: %{
        "computeEnvironmentOrder" => list(compute_environment_order()()),
        "jobQueueArn" => String.t(),
        "jobQueueName" => String.t(),
        "jobStateTimeLimitActions" => list(job_state_time_limit_action()()),
        "priority" => integer(),
        "schedulingPolicyArn" => String.t(),
        "state" => list(any()),
        "status" => list(any()),
        "statusReason" => String.t(),
        "tags" => map()
      }
      
  """
  @type job_queue_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_job_queue_response() :: %{}
      
  """
  @type delete_job_queue_response() :: %{}

  @typedoc """

  ## Example:
      
      ecs_properties() :: %{
        "taskProperties" => list(ecs_task_properties()())
      }
      
  """
  @type ecs_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_job_definition_response() :: %{
        "jobDefinitionArn" => String.t(),
        "jobDefinitionName" => String.t(),
        "revision" => integer()
      }
      
  """
  @type register_job_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_job_definitions_request() :: %{
        optional("jobDefinitionName") => String.t(),
        optional("jobDefinitions") => list(String.t()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("status") => String.t()
      }
      
  """
  @type describe_job_definitions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_compute_environment_request() :: %{
        optional("computeResources") => compute_resource(),
        optional("eksConfiguration") => eks_configuration(),
        optional("serviceRole") => String.t(),
        optional("state") => list(any()),
        optional("tags") => map(),
        optional("unmanagedvCpus") => integer(),
        required("computeEnvironmentName") => String.t(),
        required("type") => list(any())
      }
      
  """
  @type create_compute_environment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      mount_point() :: %{
        "containerPath" => String.t(),
        "readOnly" => boolean(),
        "sourceVolume" => String.t()
      }
      
  """
  @type mount_point() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attempt_ecs_task_details() :: %{
        "containerInstanceArn" => String.t(),
        "containers" => list(attempt_task_container_details()()),
        "taskArn" => String.t()
      }
      
  """
  @type attempt_ecs_task_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      task_container_overrides() :: %{
        "command" => list(String.t()()),
        "environment" => list(key_value_pair()()),
        "name" => String.t(),
        "resourceRequirements" => list(resource_requirement()())
      }
      
  """
  @type task_container_overrides() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      eks_container_detail() :: %{
        "args" => list(String.t()()),
        "command" => list(String.t()()),
        "env" => list(eks_container_environment_variable()()),
        "exitCode" => integer(),
        "image" => String.t(),
        "imagePullPolicy" => String.t(),
        "name" => String.t(),
        "reason" => String.t(),
        "resources" => eks_container_resource_requirements(),
        "securityContext" => eks_container_security_context(),
        "volumeMounts" => list(eks_container_volume_mount()())
      }
      
  """
  @type eks_container_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      eks_properties_override() :: %{
        "podProperties" => eks_pod_properties_override()
      }
      
  """
  @type eks_properties_override() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_scheduling_policy_response() :: %{
        "arn" => String.t(),
        "name" => String.t()
      }
      
  """
  @type create_scheduling_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      job_summary() :: %{
        "arrayProperties" => array_properties_summary(),
        "container" => container_summary(),
        "createdAt" => float(),
        "jobArn" => String.t(),
        "jobDefinition" => String.t(),
        "jobId" => String.t(),
        "jobName" => String.t(),
        "nodeProperties" => node_properties_summary(),
        "startedAt" => float(),
        "status" => list(any()),
        "statusReason" => String.t(),
        "stoppedAt" => float()
      }
      
  """
  @type job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_scheduling_policies_response() :: %{
        "nextToken" => String.t(),
        "schedulingPolicies" => list(scheduling_policy_listing_detail()())
      }
      
  """
  @type list_scheduling_policies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_compute_environment_request() :: %{
        required("computeEnvironment") => String.t()
      }
      
  """
  @type delete_compute_environment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ecs_task_properties() :: %{
        "containers" => list(task_container_properties()()),
        "ephemeralStorage" => ephemeral_storage(),
        "executionRoleArn" => String.t(),
        "ipcMode" => String.t(),
        "networkConfiguration" => network_configuration(),
        "pidMode" => String.t(),
        "platformVersion" => String.t(),
        "runtimePlatform" => runtime_platform(),
        "taskRoleArn" => String.t(),
        "volumes" => list(volume()())
      }
      
  """
  @type ecs_task_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      task_container_details() :: %{
        "command" => list(String.t()()),
        "dependsOn" => list(task_container_dependency()()),
        "environment" => list(key_value_pair()()),
        "essential" => boolean(),
        "exitCode" => integer(),
        "image" => String.t(),
        "linuxParameters" => linux_parameters(),
        "logConfiguration" => log_configuration(),
        "logStreamName" => String.t(),
        "mountPoints" => list(mount_point()()),
        "name" => String.t(),
        "networkInterfaces" => list(network_interface()()),
        "privileged" => boolean(),
        "readonlyRootFilesystem" => boolean(),
        "reason" => String.t(),
        "repositoryCredentials" => repository_credentials(),
        "resourceRequirements" => list(resource_requirement()()),
        "secrets" => list(secret()()),
        "ulimits" => list(ulimit()()),
        "user" => String.t()
      }
      
  """
  @type task_container_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      client_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type client_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_job_queue_response() :: %{
        "jobQueueArn" => String.t(),
        "jobQueueName" => String.t()
      }
      
  """
  @type create_job_queue_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ulimit() :: %{
        "hardLimit" => integer(),
        "name" => String.t(),
        "softLimit" => integer()
      }
      
  """
  @type ulimit() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluate_on_exit() :: %{
        "action" => list(any()),
        "onExitCode" => String.t(),
        "onReason" => String.t(),
        "onStatusReason" => String.t()
      }
      
  """
  @type evaluate_on_exit() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attempt_detail() :: %{
        "container" => attempt_container_detail(),
        "startedAt" => float(),
        "statusReason" => String.t(),
        "stoppedAt" => float(),
        "taskProperties" => list(attempt_ecs_task_details()())
      }
      
  """
  @type attempt_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_job_definition_request() :: %{
        optional("containerProperties") => container_properties(),
        optional("ecsProperties") => ecs_properties(),
        optional("eksProperties") => eks_properties(),
        optional("nodeProperties") => node_properties(),
        optional("parameters") => map(),
        optional("platformCapabilities") => list(list(any())()),
        optional("propagateTags") => boolean(),
        optional("retryStrategy") => retry_strategy(),
        optional("schedulingPriority") => integer(),
        optional("tags") => map(),
        optional("timeout") => job_timeout(),
        required("jobDefinitionName") => String.t(),
        required("type") => list(any())
      }
      
  """
  @type register_job_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_scheduling_policy_response() :: %{}
      
  """
  @type delete_scheduling_policy_response() :: %{}

  @typedoc """

  ## Example:
      
      submit_job_request() :: %{
        optional("arrayProperties") => array_properties(),
        optional("containerOverrides") => container_overrides(),
        optional("dependsOn") => list(job_dependency()()),
        optional("ecsPropertiesOverride") => ecs_properties_override(),
        optional("eksPropertiesOverride") => eks_properties_override(),
        optional("nodeOverrides") => node_overrides(),
        optional("parameters") => map(),
        optional("propagateTags") => boolean(),
        optional("retryStrategy") => retry_strategy(),
        optional("schedulingPriorityOverride") => integer(),
        optional("shareIdentifier") => String.t(),
        optional("tags") => map(),
        optional("timeout") => job_timeout(),
        required("jobDefinition") => String.t(),
        required("jobName") => String.t(),
        required("jobQueue") => String.t()
      }
      
  """
  @type submit_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      key_values_pair() :: %{
        "name" => String.t(),
        "values" => list(String.t()())
      }
      
  """
  @type key_values_pair() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attempt_container_detail() :: %{
        "containerInstanceArn" => String.t(),
        "exitCode" => integer(),
        "logStreamName" => String.t(),
        "networkInterfaces" => list(network_interface()()),
        "reason" => String.t(),
        "taskArn" => String.t()
      }
      
  """
  @type attempt_container_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_job_queue_request() :: %{
        optional("computeEnvironmentOrder") => list(compute_environment_order()()),
        optional("jobStateTimeLimitActions") => list(job_state_time_limit_action()()),
        optional("priority") => integer(),
        optional("schedulingPolicyArn") => String.t(),
        optional("state") => list(any()),
        required("jobQueue") => String.t()
      }
      
  """
  @type update_job_queue_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ecs_task_details() :: %{
        "containerInstanceArn" => String.t(),
        "containers" => list(task_container_details()()),
        "ephemeralStorage" => ephemeral_storage(),
        "executionRoleArn" => String.t(),
        "ipcMode" => String.t(),
        "networkConfiguration" => network_configuration(),
        "pidMode" => String.t(),
        "platformVersion" => String.t(),
        "runtimePlatform" => runtime_platform(),
        "taskArn" => String.t(),
        "taskRoleArn" => String.t(),
        "volumes" => list(volume()())
      }
      
  """
  @type ecs_task_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_job_queues_response() :: %{
        "jobQueues" => list(job_queue_detail()()),
        "nextToken" => String.t()
      }
      
  """
  @type describe_job_queues_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      eks_configuration() :: %{
        "eksClusterArn" => String.t(),
        "kubernetesNamespace" => String.t()
      }
      
  """
  @type eks_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      secret() :: %{
        "name" => String.t(),
        "valueFrom" => String.t()
      }
      
  """
  @type secret() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      share_attributes() :: %{
        "shareIdentifier" => String.t(),
        "weightFactor" => float()
      }
      
  """
  @type share_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      fairshare_policy() :: %{
        "computeReservation" => integer(),
        "shareDecaySeconds" => integer(),
        "shareDistribution" => list(share_attributes()())
      }
      
  """
  @type fairshare_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      terminate_job_request() :: %{
        required("jobId") => String.t(),
        required("reason") => String.t()
      }
      
  """
  @type terminate_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      eks_volume() :: %{
        "emptyDir" => eks_empty_dir(),
        "hostPath" => eks_host_path(),
        "name" => String.t(),
        "secret" => eks_secret()
      }
      
  """
  @type eks_volume() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      job_definition() :: %{
        "containerOrchestrationType" => list(any()),
        "containerProperties" => container_properties(),
        "ecsProperties" => ecs_properties(),
        "eksProperties" => eks_properties(),
        "jobDefinitionArn" => String.t(),
        "jobDefinitionName" => String.t(),
        "nodeProperties" => node_properties(),
        "parameters" => map(),
        "platformCapabilities" => list(list(any())()),
        "propagateTags" => boolean(),
        "retryStrategy" => retry_strategy(),
        "revision" => integer(),
        "schedulingPriority" => integer(),
        "status" => String.t(),
        "tags" => map(),
        "timeout" => job_timeout(),
        "type" => String.t()
      }
      
  """
  @type job_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "tags" => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      front_of_queue_job_summary() :: %{
        "earliestTimeAtPosition" => float(),
        "jobArn" => String.t()
      }
      
  """
  @type front_of_queue_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      container_summary() :: %{
        "exitCode" => integer(),
        "reason" => String.t()
      }
      
  """
  @type container_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ephemeral_storage() :: %{
        "sizeInGiB" => integer()
      }
      
  """
  @type ephemeral_storage() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      eks_properties() :: %{
        "podProperties" => eks_pod_properties()
      }
      
  """
  @type eks_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      eks_attempt_detail() :: %{
        "containers" => list(eks_attempt_container_detail()()),
        "eksClusterArn" => String.t(),
        "initContainers" => list(eks_attempt_container_detail()()),
        "nodeName" => String.t(),
        "podName" => String.t(),
        "startedAt" => float(),
        "statusReason" => String.t(),
        "stoppedAt" => float()
      }
      
  """
  @type eks_attempt_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      eks_secret() :: %{
        "optional" => boolean(),
        "secretName" => String.t()
      }
      
  """
  @type eks_secret() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_job_queue_snapshot_response() :: %{
        "frontOfQueue" => front_of_queue_detail()
      }
      
  """
  @type get_job_queue_snapshot_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      host() :: %{
        "sourcePath" => String.t()
      }
      
  """
  @type host() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compute_environment_order() :: %{
        "computeEnvironment" => String.t(),
        "order" => integer()
      }
      
  """
  @type compute_environment_order() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_scheduling_policy_request() :: %{
        optional("fairsharePolicy") => fairshare_policy(),
        required("arn") => String.t()
      }
      
  """
  @type update_scheduling_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compute_resource_update() :: %{
        "allocationStrategy" => list(any()),
        "bidPercentage" => integer(),
        "desiredvCpus" => integer(),
        "ec2Configuration" => list(ec2_configuration()()),
        "ec2KeyPair" => String.t(),
        "imageId" => String.t(),
        "instanceRole" => String.t(),
        "instanceTypes" => list(String.t()()),
        "launchTemplate" => launch_template_specification(),
        "maxvCpus" => integer(),
        "minvCpus" => integer(),
        "placementGroup" => String.t(),
        "securityGroupIds" => list(String.t()()),
        "subnets" => list(String.t()()),
        "tags" => map(),
        "type" => list(any()),
        "updateToLatestImageVersion" => boolean()
      }
      
  """
  @type compute_resource_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      eks_container_security_context() :: %{
        "allowPrivilegeEscalation" => boolean(),
        "privileged" => boolean(),
        "readOnlyRootFilesystem" => boolean(),
        "runAsGroup" => float(),
        "runAsNonRoot" => boolean(),
        "runAsUser" => float()
      }
      
  """
  @type eks_container_security_context() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      e_f_s_authorization_config() :: %{
        "accessPointId" => String.t(),
        "iam" => list(any())
      }
      
  """
  @type e_f_s_authorization_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      submit_job_response() :: %{
        "jobArn" => String.t(),
        "jobId" => String.t(),
        "jobName" => String.t()
      }
      
  """
  @type submit_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      container_overrides() :: %{
        "command" => list(String.t()()),
        "environment" => list(key_value_pair()()),
        "instanceType" => String.t(),
        "memory" => integer(),
        "resourceRequirements" => list(resource_requirement()()),
        "vcpus" => integer()
      }
      
  """
  @type container_overrides() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      front_of_queue_detail() :: %{
        "jobs" => list(front_of_queue_job_summary()()),
        "lastUpdatedAt" => float()
      }
      
  """
  @type front_of_queue_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      e_f_s_volume_configuration() :: %{
        "authorizationConfig" => e_f_s_authorization_config(),
        "fileSystemId" => String.t(),
        "rootDirectory" => String.t(),
        "transitEncryption" => list(any()),
        "transitEncryptionPort" => integer()
      }
      
  """
  @type e_f_s_volume_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      container_detail() :: %{
        "command" => list(String.t()()),
        "containerInstanceArn" => String.t(),
        "environment" => list(key_value_pair()()),
        "ephemeralStorage" => ephemeral_storage(),
        "executionRoleArn" => String.t(),
        "exitCode" => integer(),
        "fargatePlatformConfiguration" => fargate_platform_configuration(),
        "image" => String.t(),
        "instanceType" => String.t(),
        "jobRoleArn" => String.t(),
        "linuxParameters" => linux_parameters(),
        "logConfiguration" => log_configuration(),
        "logStreamName" => String.t(),
        "memory" => integer(),
        "mountPoints" => list(mount_point()()),
        "networkConfiguration" => network_configuration(),
        "networkInterfaces" => list(network_interface()()),
        "privileged" => boolean(),
        "readonlyRootFilesystem" => boolean(),
        "reason" => String.t(),
        "repositoryCredentials" => repository_credentials(),
        "resourceRequirements" => list(resource_requirement()()),
        "runtimePlatform" => runtime_platform(),
        "secrets" => list(secret()()),
        "taskArn" => String.t(),
        "ulimits" => list(ulimit()()),
        "user" => String.t(),
        "vcpus" => integer(),
        "volumes" => list(volume()())
      }
      
  """
  @type container_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_configuration() :: %{
        "assignPublicIp" => list(any())
      }
      
  """
  @type network_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scheduling_policy_listing_detail() :: %{
        "arn" => String.t()
      }
      
  """
  @type scheduling_policy_listing_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_compute_environments_request() :: %{
        optional("computeEnvironments") => list(String.t()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type describe_compute_environments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      node_overrides() :: %{
        "nodePropertyOverrides" => list(node_property_override()()),
        "numNodes" => integer()
      }
      
  """
  @type node_overrides() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      volume() :: %{
        "efsVolumeConfiguration" => e_f_s_volume_configuration(),
        "host" => host(),
        "name" => String.t()
      }
      
  """
  @type volume() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      job_dependency() :: %{
        "jobId" => String.t(),
        "type" => list(any())
      }
      
  """
  @type job_dependency() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      array_properties() :: %{
        "size" => integer()
      }
      
  """
  @type array_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      node_range_property() :: %{
        "container" => container_properties(),
        "ecsProperties" => ecs_properties(),
        "eksProperties" => eks_properties(),
        "instanceTypes" => list(String.t()()),
        "targetNodes" => String.t()
      }
      
  """
  @type node_range_property() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      eks_attempt_container_detail() :: %{
        "exitCode" => integer(),
        "name" => String.t(),
        "reason" => String.t()
      }
      
  """
  @type eks_attempt_container_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_jobs_response() :: %{
        "jobs" => list(job_detail()())
      }
      
  """
  @type describe_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      key_value_pair() :: %{
        "name" => String.t(),
        "value" => String.t()
      }
      
  """
  @type key_value_pair() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{}
      
  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:
      
      runtime_platform() :: %{
        "cpuArchitecture" => String.t(),
        "operatingSystemFamily" => String.t()
      }
      
  """
  @type runtime_platform() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_job_queue_request() :: %{
        required("jobQueue") => String.t()
      }
      
  """
  @type delete_job_queue_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      terminate_job_response() :: %{}
      
  """
  @type terminate_job_response() :: %{}

  @typedoc """

  ## Example:
      
      eks_container_resource_requirements() :: %{
        "limits" => map(),
        "requests" => map()
      }
      
  """
  @type eks_container_resource_requirements() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      linux_parameters() :: %{
        "devices" => list(device()()),
        "initProcessEnabled" => boolean(),
        "maxSwap" => integer(),
        "sharedMemorySize" => integer(),
        "swappiness" => integer(),
        "tmpfs" => list(tmpfs()())
      }
      
  """
  @type linux_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_compute_environment_response() :: %{
        "computeEnvironmentArn" => String.t(),
        "computeEnvironmentName" => String.t()
      }
      
  """
  @type update_compute_environment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      node_details() :: %{
        "isMainNode" => boolean(),
        "nodeIndex" => integer()
      }
      
  """
  @type node_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      eks_container_volume_mount() :: %{
        "mountPath" => String.t(),
        "name" => String.t(),
        "readOnly" => boolean()
      }
      
  """
  @type eks_container_volume_mount() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      eks_pod_properties() :: %{
        "containers" => list(eks_container()()),
        "dnsPolicy" => String.t(),
        "hostNetwork" => boolean(),
        "imagePullSecrets" => list(image_pull_secret()()),
        "initContainers" => list(eks_container()()),
        "metadata" => eks_metadata(),
        "serviceAccountName" => String.t(),
        "shareProcessNamespace" => boolean(),
        "volumes" => list(eks_volume()())
      }
      
  """
  @type eks_pod_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      server_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_job_queue_response() :: %{
        "jobQueueArn" => String.t(),
        "jobQueueName" => String.t()
      }
      
  """
  @type update_job_queue_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      retry_strategy() :: %{
        "attempts" => integer(),
        "evaluateOnExit" => list(evaluate_on_exit()())
      }
      
  """
  @type retry_strategy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_jobs_request() :: %{
        required("jobs") => list(String.t()())
      }
      
  """
  @type describe_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      launch_template_specification() :: %{
        "launchTemplateId" => String.t(),
        "launchTemplateName" => String.t(),
        "version" => String.t()
      }
      
  """
  @type launch_template_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      node_properties_summary() :: %{
        "isMainNode" => boolean(),
        "nodeIndex" => integer(),
        "numNodes" => integer()
      }
      
  """
  @type node_properties_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compute_environment_detail() :: %{
        "computeEnvironmentArn" => String.t(),
        "computeEnvironmentName" => String.t(),
        "computeResources" => compute_resource(),
        "containerOrchestrationType" => list(any()),
        "ecsClusterArn" => String.t(),
        "eksConfiguration" => eks_configuration(),
        "serviceRole" => String.t(),
        "state" => list(any()),
        "status" => list(any()),
        "statusReason" => String.t(),
        "tags" => map(),
        "type" => list(any()),
        "unmanagedvCpus" => integer(),
        "updatePolicy" => update_policy(),
        "uuid" => String.t()
      }
      
  """
  @type compute_environment_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      device() :: %{
        "containerPath" => String.t(),
        "hostPath" => String.t(),
        "permissions" => list(list(any())())
      }
      
  """
  @type device() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      eks_properties_detail() :: %{
        "podProperties" => eks_pod_properties_detail()
      }
      
  """
  @type eks_properties_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_job_queues_request() :: %{
        optional("jobQueues") => list(String.t()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type describe_job_queues_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      eks_container() :: %{
        "args" => list(String.t()()),
        "command" => list(String.t()()),
        "env" => list(eks_container_environment_variable()()),
        "image" => String.t(),
        "imagePullPolicy" => String.t(),
        "name" => String.t(),
        "resources" => eks_container_resource_requirements(),
        "securityContext" => eks_container_security_context(),
        "volumeMounts" => list(eks_container_volume_mount()())
      }
      
  """
  @type eks_container() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      job_detail() :: %{
        "arrayProperties" => array_properties_detail(),
        "attempts" => list(attempt_detail()()),
        "container" => container_detail(),
        "createdAt" => float(),
        "dependsOn" => list(job_dependency()()),
        "ecsProperties" => ecs_properties_detail(),
        "eksAttempts" => list(eks_attempt_detail()()),
        "eksProperties" => eks_properties_detail(),
        "isCancelled" => boolean(),
        "isTerminated" => boolean(),
        "jobArn" => String.t(),
        "jobDefinition" => String.t(),
        "jobId" => String.t(),
        "jobName" => String.t(),
        "jobQueue" => String.t(),
        "nodeDetails" => node_details(),
        "nodeProperties" => node_properties(),
        "parameters" => map(),
        "platformCapabilities" => list(list(any())()),
        "propagateTags" => boolean(),
        "retryStrategy" => retry_strategy(),
        "schedulingPriority" => integer(),
        "shareIdentifier" => String.t(),
        "startedAt" => float(),
        "status" => list(any()),
        "statusReason" => String.t(),
        "stoppedAt" => float(),
        "tags" => map(),
        "timeout" => job_timeout()
      }
      
  """
  @type job_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      array_properties_detail() :: %{
        "index" => integer(),
        "size" => integer(),
        "statusSummary" => map()
      }
      
  """
  @type array_properties_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_scheduling_policies_request() :: %{
        required("arns") => list(String.t()())
      }
      
  """
  @type describe_scheduling_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      array_properties_summary() :: %{
        "index" => integer(),
        "size" => integer()
      }
      
  """
  @type array_properties_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ecs_properties_detail() :: %{
        "taskProperties" => list(ecs_task_details()())
      }
      
  """
  @type ecs_properties_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_job_queue_request() :: %{
        optional("jobStateTimeLimitActions") => list(job_state_time_limit_action()()),
        optional("schedulingPolicyArn") => String.t(),
        optional("state") => list(any()),
        optional("tags") => map(),
        required("computeEnvironmentOrder") => list(compute_environment_order()()),
        required("jobQueueName") => String.t(),
        required("priority") => integer()
      }
      
  """
  @type create_job_queue_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      log_configuration() :: %{
        "logDriver" => list(any()),
        "options" => map(),
        "secretOptions" => list(secret()())
      }
      
  """
  @type log_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_job_response() :: %{}
      
  """
  @type cancel_job_response() :: %{}

  @typedoc """

  ## Example:
      
      update_scheduling_policy_response() :: %{}
      
  """
  @type update_scheduling_policy_response() :: %{}

  @typedoc """

  ## Example:
      
      resource_requirement() :: %{
        "type" => list(any()),
        "value" => String.t()
      }
      
  """
  @type resource_requirement() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      job_state_time_limit_action() :: %{
        "action" => list(any()),
        "maxTimeSeconds" => integer(),
        "reason" => String.t(),
        "state" => list(any())
      }
      
  """
  @type job_state_time_limit_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compute_resource() :: %{
        "allocationStrategy" => list(any()),
        "bidPercentage" => integer(),
        "desiredvCpus" => integer(),
        "ec2Configuration" => list(ec2_configuration()()),
        "ec2KeyPair" => String.t(),
        "imageId" => String.t(),
        "instanceRole" => String.t(),
        "instanceTypes" => list(String.t()()),
        "launchTemplate" => launch_template_specification(),
        "maxvCpus" => integer(),
        "minvCpus" => integer(),
        "placementGroup" => String.t(),
        "securityGroupIds" => list(String.t()()),
        "spotIamFleetRole" => String.t(),
        "subnets" => list(String.t()()),
        "tags" => map(),
        "type" => list(any())
      }
      
  """
  @type compute_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      node_properties() :: %{
        "mainNode" => integer(),
        "nodeRangeProperties" => list(node_range_property()()),
        "numNodes" => integer()
      }
      
  """
  @type node_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      eks_empty_dir() :: %{
        "medium" => String.t(),
        "sizeLimit" => String.t()
      }
      
  """
  @type eks_empty_dir() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      task_container_dependency() :: %{
        "condition" => String.t(),
        "containerName" => String.t()
      }
      
  """
  @type task_container_dependency() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      eks_pod_properties_override() :: %{
        "containers" => list(eks_container_override()()),
        "initContainers" => list(eks_container_override()()),
        "metadata" => eks_metadata()
      }
      
  """
  @type eks_pod_properties_override() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      repository_credentials() :: %{
        "credentialsParameter" => String.t()
      }
      
  """
  @type repository_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      eks_pod_properties_detail() :: %{
        "containers" => list(eks_container_detail()()),
        "dnsPolicy" => String.t(),
        "hostNetwork" => boolean(),
        "imagePullSecrets" => list(image_pull_secret()()),
        "initContainers" => list(eks_container_detail()()),
        "metadata" => eks_metadata(),
        "nodeName" => String.t(),
        "podName" => String.t(),
        "serviceAccountName" => String.t(),
        "shareProcessNamespace" => boolean(),
        "volumes" => list(eks_volume()())
      }
      
  """
  @type eks_pod_properties_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tmpfs() :: %{
        "containerPath" => String.t(),
        "mountOptions" => list(String.t()()),
        "size" => integer()
      }
      
  """
  @type tmpfs() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_compute_environment_response() :: %{}
      
  """
  @type delete_compute_environment_response() :: %{}

  @typedoc """

  ## Example:
      
      task_container_properties() :: %{
        "command" => list(String.t()()),
        "dependsOn" => list(task_container_dependency()()),
        "environment" => list(key_value_pair()()),
        "essential" => boolean(),
        "image" => String.t(),
        "linuxParameters" => linux_parameters(),
        "logConfiguration" => log_configuration(),
        "mountPoints" => list(mount_point()()),
        "name" => String.t(),
        "privileged" => boolean(),
        "readonlyRootFilesystem" => boolean(),
        "repositoryCredentials" => repository_credentials(),
        "resourceRequirements" => list(resource_requirement()()),
        "secrets" => list(secret()()),
        "ulimits" => list(ulimit()()),
        "user" => String.t()
      }
      
  """
  @type task_container_properties() :: %{String.t() => any()}

  @type cancel_job_errors() :: server_exception() | client_exception()

  @type create_compute_environment_errors() :: server_exception() | client_exception()

  @type create_job_queue_errors() :: server_exception() | client_exception()

  @type create_scheduling_policy_errors() :: server_exception() | client_exception()

  @type delete_compute_environment_errors() :: server_exception() | client_exception()

  @type delete_job_queue_errors() :: server_exception() | client_exception()

  @type delete_scheduling_policy_errors() :: server_exception() | client_exception()

  @type deregister_job_definition_errors() :: server_exception() | client_exception()

  @type describe_compute_environments_errors() :: server_exception() | client_exception()

  @type describe_job_definitions_errors() :: server_exception() | client_exception()

  @type describe_job_queues_errors() :: server_exception() | client_exception()

  @type describe_jobs_errors() :: server_exception() | client_exception()

  @type describe_scheduling_policies_errors() :: server_exception() | client_exception()

  @type get_job_queue_snapshot_errors() :: server_exception() | client_exception()

  @type list_jobs_errors() :: server_exception() | client_exception()

  @type list_scheduling_policies_errors() :: server_exception() | client_exception()

  @type list_tags_for_resource_errors() :: server_exception() | client_exception()

  @type register_job_definition_errors() :: server_exception() | client_exception()

  @type submit_job_errors() :: server_exception() | client_exception()

  @type tag_resource_errors() :: server_exception() | client_exception()

  @type terminate_job_errors() :: server_exception() | client_exception()

  @type untag_resource_errors() :: server_exception() | client_exception()

  @type update_compute_environment_errors() :: server_exception() | client_exception()

  @type update_job_queue_errors() :: server_exception() | client_exception()

  @type update_scheduling_policy_errors() :: server_exception() | client_exception()

  def metadata do
    %{
      api_version: "2016-08-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "batch",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Batch",
      signature_version: "v4",
      signing_name: "batch",
      target_prefix: nil
    }
  end

  @doc """
  Cancels a job in an Batch job queue. Jobs that are in the `SUBMITTED` or
  `PENDING` are canceled. A job in`RUNNABLE` remains in `RUNNABLE` until it
  reaches the head of the job queue. Then the job status is updated to `FAILED`.
  A `PENDING` job is canceled after all dependency jobs are completed.
  Therefore, it may take longer than expected to cancel a job in `PENDING`
  status. When you try to cancel an array parent job in `PENDING`, Batch
  attempts to cancel all child jobs. The array parent job is canceled when all
  child jobs are completed.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=batch%20CancelJob&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec cancel_job(AWS.Client.t(), Keyword.t()) ::
          {:ok, cancel_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_job_errors()}

  def cancel_job(%Client{} = client, options \\ []) do
    url_path = "/v1/canceljob"

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
  Creates an Batch compute environment. You can create `MANAGED` or `UNMANAGED`
  compute environments. `MANAGED` compute environments can use Amazon EC2 or
  Fargate resources. `UNMANAGED` compute environments can only use EC2
  resources. In a managed compute environment, Batch manages the capacity and
  instance types of the compute resources within the environment. This is based
  on the compute resource specification that you define or the [launch
  template](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html)
  that you specify when you create the compute environment. Either, you can
  choose to use EC2 On-Demand Instances and EC2 Spot Instances. Or, you can use
  Fargate and Fargate Spot capacity in your managed compute environment. You can
  optionally set a maximum price so that Spot Instances only launch when the
  Spot Instance price is less than a specified percentage of the On-Demand
  price. Multi-node parallel jobs aren't supported on Spot Instances.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=batch%20CreateComputeEnvironment&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_compute_environment(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_compute_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_compute_environment_errors()}

  def create_compute_environment(%Client{} = client, options \\ []) do
    url_path = "/v1/createcomputeenvironment"

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
  Creates an Batch job queue. When you create a job queue, you associate one or
  more compute environments to the queue and assign an order of preference for
  the compute environments.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=batch%20CreateJobQueue&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_job_queue(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_job_queue_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_job_queue_errors()}

  def create_job_queue(%Client{} = client, options \\ []) do
    url_path = "/v1/createjobqueue"

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
  Creates an Batch scheduling policy.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=batch%20CreateSchedulingPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_scheduling_policy(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_scheduling_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_scheduling_policy_errors()}

  def create_scheduling_policy(%Client{} = client, options \\ []) do
    url_path = "/v1/createschedulingpolicy"

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
  Deletes an Batch compute environment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=batch%20DeleteComputeEnvironment&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec delete_compute_environment(AWS.Client.t(), Keyword.t()) ::
          {:ok, delete_compute_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_compute_environment_errors()}

  def delete_compute_environment(%Client{} = client, options \\ []) do
    url_path = "/v1/deletecomputeenvironment"

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
  Deletes the specified job queue. You must first disable submissions for a queue
  with the `UpdateJobQueue` operation. All jobs in the queue are eventually
  terminated when you delete a job queue. The jobs are terminated at a rate of
  about 16 jobs each second.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=batch%20DeleteJobQueue&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec delete_job_queue(AWS.Client.t(), Keyword.t()) ::
          {:ok, delete_job_queue_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_job_queue_errors()}

  def delete_job_queue(%Client{} = client, options \\ []) do
    url_path = "/v1/deletejobqueue"

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
  Deletes the specified scheduling policy.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=batch%20DeleteSchedulingPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec delete_scheduling_policy(AWS.Client.t(), Keyword.t()) ::
          {:ok, delete_scheduling_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_scheduling_policy_errors()}

  def delete_scheduling_policy(%Client{} = client, options \\ []) do
    url_path = "/v1/deleteschedulingpolicy"

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
  Deregisters an Batch job definition. Job definitions are permanently deleted
  after 180 days.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=batch%20DeregisterJobDefinition&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec deregister_job_definition(AWS.Client.t(), Keyword.t()) ::
          {:ok, deregister_job_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deregister_job_definition_errors()}

  def deregister_job_definition(%Client{} = client, options \\ []) do
    url_path = "/v1/deregisterjobdefinition"

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
  Describes one or more of your compute environments.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=batch%20DescribeComputeEnvironments&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec describe_compute_environments(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_compute_environments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_compute_environments_errors()}

  def describe_compute_environments(%Client{} = client, options \\ []) do
    url_path = "/v1/describecomputeenvironments"

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
  Describes a list of job definitions. You can specify a `status` (such as
  `ACTIVE`) to only return job definitions that match that status.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=batch%20DescribeJobDefinitions&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec describe_job_definitions(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_job_definitions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_job_definitions_errors()}

  def describe_job_definitions(%Client{} = client, options \\ []) do
    url_path = "/v1/describejobdefinitions"

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
  Describes one or more of your job queues.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=batch%20DescribeJobQueues&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec describe_job_queues(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_job_queues_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_job_queues_errors()}

  def describe_job_queues(%Client{} = client, options \\ []) do
    url_path = "/v1/describejobqueues"

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
  Describes a list of Batch jobs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=batch%20DescribeJobs&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec describe_jobs(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_jobs_errors()}

  def describe_jobs(%Client{} = client, options \\ []) do
    url_path = "/v1/describejobs"

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
  Describes one or more of your scheduling policies.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=batch%20DescribeSchedulingPolicies&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec describe_scheduling_policies(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_scheduling_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_scheduling_policies_errors()}

  def describe_scheduling_policies(%Client{} = client, options \\ []) do
    url_path = "/v1/describeschedulingpolicies"

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
  Provides a list of the first 100 `RUNNABLE` jobs associated to a single job
  queue.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=batch%20GetJobQueueSnapshot&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec get_job_queue_snapshot(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_job_queue_snapshot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_job_queue_snapshot_errors()}

  def get_job_queue_snapshot(%Client{} = client, options \\ []) do
    url_path = "/v1/getjobqueuesnapshot"

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
  Returns a list of Batch jobs. You must specify only one of the following items:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=batch%20ListJobs&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec list_jobs(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_jobs_errors()}

  def list_jobs(%Client{} = client, options \\ []) do
    url_path = "/v1/listjobs"

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
  Returns a list of Batch scheduling policies.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=batch%20ListSchedulingPolicies&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec list_scheduling_policies(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_scheduling_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_scheduling_policies_errors()}

  def list_scheduling_policies(%Client{} = client, options \\ []) do
    url_path = "/v1/listschedulingpolicies"

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
  Lists the tags for an Batch resource. Batch resources that support tags are
  compute environments, jobs, job definitions, job queues, and scheduling
  policies. ARNs for child jobs of array and multi-node parallel (MNP) jobs
  aren't supported.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=batch%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) that identifies
  the resource that tags are listed for. Batch resources that support tags are
  compute environments, jobs, job definitions, job queues, and scheduling
  policies. ARNs for child jobs of array and multi-node parallel (MNP) jobs
  aren't supported.

  ## Optional parameters:
  """

  @spec list_tags_for_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}

  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"

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
  Registers an Batch job definition.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=batch%20RegisterJobDefinition&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec register_job_definition(AWS.Client.t(), Keyword.t()) ::
          {:ok, register_job_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_job_definition_errors()}

  def register_job_definition(%Client{} = client, options \\ []) do
    url_path = "/v1/registerjobdefinition"

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
  Submits an Batch job from a job definition. Parameters that are specified during
  `SubmitJob` override parameters defined in the job definition. vCPU and memory
  requirements that are specified in the `resourceRequirements` objects in the
  job definition are the exception. They can't be overridden this way using the
  `memory` and `vcpus` parameters. Rather, you must specify updates to job
  definition parameters in a `resourceRequirements` object that's included in
  the `containerOverrides` parameter. Job queues with a scheduling policy are
  limited to 500 active fair share identifiers at a time.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=batch%20SubmitJob&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec submit_job(AWS.Client.t(), Keyword.t()) ::
          {:ok, submit_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, submit_job_errors()}

  def submit_job(%Client{} = client, options \\ []) do
    url_path = "/v1/submitjob"

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
  Associates the specified tags to a resource with the specified `resourceArn`. If
  existing tags on a resource aren't specified in the request parameters, they
  aren't changed. When a resource is deleted, the tags that are associated with
  that resource are deleted as well. Batch resources that support tags are
  compute environments, jobs, job definitions, job queues, and scheduling
  policies. ARNs for child jobs of array and multi-node parallel (MNP) jobs
  aren't supported.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=batch%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the resource
  that tags are added to. Batch resources that support tags are compute
  environments, jobs, job definitions, job queues, and scheduling policies.
  ARNs for child jobs of array and multi-node parallel (MNP) jobs aren't
  supported.

  ## Optional parameters:
  """

  @spec tag_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}

  def tag_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"

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
  Terminates a job in a job queue. Jobs that are in the `STARTING` or `RUNNING`
  state are terminated, which causes them to transition to `FAILED`. Jobs that
  have not progressed to the `STARTING` state are cancelled.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=batch%20TerminateJob&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec terminate_job(AWS.Client.t(), Keyword.t()) ::
          {:ok, terminate_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, terminate_job_errors()}

  def terminate_job(%Client{} = client, options \\ []) do
    url_path = "/v1/terminatejob"

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
  Deletes specified tags from an Batch resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=batch%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the resource
  from which to delete tags. Batch resources that support tags are compute
  environments, jobs, job definitions, job queues, and scheduling policies.
  ARNs for child jobs of array and multi-node parallel (MNP) jobs aren't
  supported.
  * `:tag_keys` (`t:list[com.amazonaws.batch#TagKey]`) The keys of the tags to be
  removed.

  ## Optional parameters:
  """

  @spec untag_resource(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}

  def untag_resource(%Client{} = client, resource_arn, tag_keys, options \\ [])
      when is_binary(tag_keys) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"

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
  Updates an Batch compute environment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=batch%20UpdateComputeEnvironment&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec update_compute_environment(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_compute_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_compute_environment_errors()}

  def update_compute_environment(%Client{} = client, options \\ []) do
    url_path = "/v1/updatecomputeenvironment"

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
  Updates a job queue.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=batch%20UpdateJobQueue&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec update_job_queue(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_job_queue_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_job_queue_errors()}

  def update_job_queue(%Client{} = client, options \\ []) do
    url_path = "/v1/updatejobqueue"

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
  Updates a scheduling policy.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=batch%20UpdateSchedulingPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec update_scheduling_policy(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_scheduling_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_scheduling_policy_errors()}

  def update_scheduling_policy(%Client{} = client, options \\ []) do
    url_path = "/v1/updateschedulingpolicy"

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
