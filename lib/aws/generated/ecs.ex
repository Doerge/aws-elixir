# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ECS do
  @moduledoc """
  Amazon Elastic Container Service Amazon Elastic Container Service (Amazon ECS)
  is a highly scalable, fast, container management service. It makes it easy to
  run, stop, and manage Docker containers. You can host your cluster on a
  serverless infrastructure that's managed by Amazon ECS by launching your
  services or tasks on Fargate. For more control, you can host your tasks on a
  cluster of Amazon Elastic Compute Cloud (Amazon EC2) or External (on-premises)
  instances that you manage.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      service_registry() :: %{
        "containerName" => String.t(),
        "containerPort" => integer(),
        "port" => integer(),
        "registryArn" => String.t()
      }
      
  """
  @type service_registry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_task_definition_response() :: %{
        "tags" => list(tag()()),
        "taskDefinition" => task_definition()
      }
      
  """
  @type describe_task_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      container_instance_health_status() :: %{
        "details" => list(instance_health_check_result()()),
        "overallStatus" => list(any())
      }
      
  """
  @type container_instance_health_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_capacity_provider_response() :: %{
        "capacityProvider" => capacity_provider()
      }
      
  """
  @type delete_capacity_provider_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_container_instances_state_response() :: %{
        "containerInstances" => list(container_instance()()),
        "failures" => list(failure()())
      }
      
  """
  @type update_container_instances_state_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      task_set() :: %{
        "capacityProviderStrategy" => list(capacity_provider_strategy_item()()),
        "clusterArn" => String.t(),
        "computedDesiredCount" => integer(),
        "createdAt" => non_neg_integer(),
        "externalId" => String.t(),
        "fargateEphemeralStorage" => deployment_ephemeral_storage(),
        "id" => String.t(),
        "launchType" => list(any()),
        "loadBalancers" => list(load_balancer()()),
        "networkConfiguration" => network_configuration(),
        "pendingCount" => integer(),
        "platformFamily" => String.t(),
        "platformVersion" => String.t(),
        "runningCount" => integer(),
        "scale" => scale(),
        "serviceArn" => String.t(),
        "serviceRegistries" => list(service_registry()()),
        "stabilityStatus" => list(any()),
        "stabilityStatusAt" => non_neg_integer(),
        "startedBy" => String.t(),
        "status" => String.t(),
        "tags" => list(tag()()),
        "taskDefinition" => String.t(),
        "taskSetArn" => String.t(),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type task_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      task() :: %{
        "launchType" => list(any()),
        "attachments" => list(attachment()()),
        "ephemeralStorage" => ephemeral_storage(),
        "pullStartedAt" => non_neg_integer(),
        "containerInstanceArn" => String.t(),
        "startedBy" => String.t(),
        "executionStoppedAt" => non_neg_integer(),
        "attributes" => list(attribute()()),
        "stoppingAt" => non_neg_integer(),
        "cpu" => String.t(),
        "platformVersion" => String.t(),
        "enableExecuteCommand" => boolean(),
        "healthStatus" => list(any()),
        "taskArn" => String.t(),
        "stopCode" => list(any()),
        "createdAt" => non_neg_integer(),
        "lastStatus" => String.t(),
        "memory" => String.t(),
        "desiredStatus" => String.t(),
        "overrides" => task_override(),
        "connectivity" => list(any()),
        "tags" => list(tag()()),
        "connectivityAt" => non_neg_integer(),
        "taskDefinitionArn" => String.t(),
        "platformFamily" => String.t(),
        "inferenceAccelerators" => list(inference_accelerator()()),
        "pullStoppedAt" => non_neg_integer(),
        "stoppedAt" => non_neg_integer(),
        "fargateEphemeralStorage" => task_ephemeral_storage(),
        "containers" => list(container()()),
        "capacityProviderName" => String.t(),
        "clusterArn" => String.t(),
        "group" => String.t(),
        "stoppedReason" => String.t(),
        "startedAt" => non_neg_integer(),
        "availabilityZone" => String.t(),
        "version" => float()
      }
      
  """
  @type task() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_capacity_provider_request() :: %{
        required("capacityProvider") => String.t()
      }
      
  """
  @type delete_capacity_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("resourceArn") => String.t(),
        required("tags") => list(tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_in_progress_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type update_in_progress_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_task_request() :: %{
        optional("cluster") => String.t(),
        optional("reason") => String.t(),
        required("task") => String.t()
      }
      
  """
  @type stop_task_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_container_instances_request() :: %{
        optional("cluster") => String.t(),
        optional("include") => list(list(any())()),
        required("containerInstances") => list(String.t()())
      }
      
  """
  @type describe_container_instances_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      system_control() :: %{
        "namespace" => String.t(),
        "value" => String.t()
      }
      
  """
  @type system_control() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      container() :: %{
        "containerArn" => String.t(),
        "cpu" => String.t(),
        "exitCode" => integer(),
        "gpuIds" => list(String.t()()),
        "healthStatus" => list(any()),
        "image" => String.t(),
        "imageDigest" => String.t(),
        "lastStatus" => String.t(),
        "managedAgents" => list(managed_agent()()),
        "memory" => String.t(),
        "memoryReservation" => String.t(),
        "name" => String.t(),
        "networkBindings" => list(network_binding()()),
        "networkInterfaces" => list(network_interface()()),
        "reason" => String.t(),
        "runtimeId" => String.t(),
        "taskArn" => String.t()
      }
      
  """
  @type container() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inference_accelerator() :: %{
        "deviceName" => String.t(),
        "deviceType" => String.t()
      }
      
  """
  @type inference_accelerator() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      run_task_response() :: %{
        "failures" => list(failure()()),
        "tasks" => list(task()())
      }
      
  """
  @type run_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      proxy_configuration() :: %{
        "containerName" => String.t(),
        "properties" => list(key_value_pair()()),
        "type" => list(any())
      }
      
  """
  @type proxy_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attribute_limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type attribute_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      setting() :: %{
        "name" => list(any()),
        "principalArn" => String.t(),
        "type" => list(any()),
        "value" => String.t()
      }
      
  """
  @type setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deployment() :: %{
        "capacityProviderStrategy" => list(capacity_provider_strategy_item()()),
        "createdAt" => non_neg_integer(),
        "desiredCount" => integer(),
        "failedTasks" => integer(),
        "fargateEphemeralStorage" => deployment_ephemeral_storage(),
        "id" => String.t(),
        "launchType" => list(any()),
        "networkConfiguration" => network_configuration(),
        "pendingCount" => integer(),
        "platformFamily" => String.t(),
        "platformVersion" => String.t(),
        "rolloutState" => list(any()),
        "rolloutStateReason" => String.t(),
        "runningCount" => integer(),
        "serviceConnectConfiguration" => service_connect_configuration(),
        "serviceConnectResources" => list(service_connect_service_resource()()),
        "status" => String.t(),
        "taskDefinition" => String.t(),
        "updatedAt" => non_neg_integer(),
        "volumeConfigurations" => list(service_volume_configuration()())
      }
      
  """
  @type deployment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_event() :: %{
        "createdAt" => non_neg_integer(),
        "id" => String.t(),
        "message" => String.t()
      }
      
  """
  @type service_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_services_request() :: %{
        optional("cluster") => String.t(),
        optional("include") => list(list(any())()),
        required("services") => list(String.t()())
      }
      
  """
  @type describe_services_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      task_override() :: %{
        "containerOverrides" => list(container_override()()),
        "cpu" => String.t(),
        "ephemeralStorage" => ephemeral_storage(),
        "executionRoleArn" => String.t(),
        "inferenceAcceleratorOverrides" => list(inference_accelerator_override()()),
        "memory" => String.t(),
        "taskRoleArn" => String.t()
      }
      
  """
  @type task_override() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_cluster_response() :: %{
        "cluster" => cluster()
      }
      
  """
  @type create_cluster_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_in_use_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_account_setting_default_request() :: %{
        required("name") => list(any()),
        required("value") => String.t()
      }
      
  """
  @type put_account_setting_default_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_container_instance_response() :: %{
        "containerInstance" => container_instance()
      }
      
  """
  @type register_container_instance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_task_set_request() :: %{
        optional("capacityProviderStrategy") => list(capacity_provider_strategy_item()()),
        optional("clientToken") => String.t(),
        optional("externalId") => String.t(),
        optional("launchType") => list(any()),
        optional("loadBalancers") => list(load_balancer()()),
        optional("networkConfiguration") => network_configuration(),
        optional("platformVersion") => String.t(),
        optional("scale") => scale(),
        optional("serviceRegistries") => list(service_registry()()),
        optional("tags") => list(tag()()),
        required("cluster") => String.t(),
        required("service") => String.t(),
        required("taskDefinition") => String.t()
      }
      
  """
  @type create_task_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_task_request() :: %{
        optional("cluster") => String.t(),
        optional("enableECSManagedTags") => boolean(),
        optional("enableExecuteCommand") => boolean(),
        optional("group") => String.t(),
        optional("networkConfiguration") => network_configuration(),
        optional("overrides") => task_override(),
        optional("propagateTags") => list(any()),
        optional("referenceId") => String.t(),
        optional("startedBy") => String.t(),
        optional("tags") => list(tag()()),
        optional("volumeConfigurations") => list(task_volume_configuration()()),
        required("containerInstances") => list(String.t()()),
        required("taskDefinition") => String.t()
      }
      
  """
  @type start_task_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_account_setting_response() :: %{
        "setting" => setting()
      }
      
  """
  @type delete_account_setting_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_capacity_provider_request() :: %{
        required("autoScalingGroupProvider") => auto_scaling_group_provider_update(),
        required("name") => String.t()
      }
      
  """
  @type update_capacity_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_account_setting_response() :: %{
        "setting" => setting()
      }
      
  """
  @type put_account_setting_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_services_by_namespace_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("namespace") => String.t()
      }
      
  """
  @type list_services_by_namespace_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_task_protection_response() :: %{
        "failures" => list(failure()()),
        "protectedTasks" => list(protected_task()())
      }
      
  """
  @type get_task_protection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_connect_service_resource() :: %{
        "discoveryArn" => String.t(),
        "discoveryName" => String.t()
      }
      
  """
  @type service_connect_service_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type cluster_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      host_volume_properties() :: %{
        "sourcePath" => String.t()
      }
      
  """
  @type host_volume_properties() :: %{String.t() => any()}

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
      
      update_task_set_request() :: %{
        required("cluster") => String.t(),
        required("scale") => scale(),
        required("service") => String.t(),
        required("taskSet") => String.t()
      }
      
  """
  @type update_task_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execute_command_configuration() :: %{
        "kmsKeyId" => String.t(),
        "logConfiguration" => execute_command_log_configuration(),
        "logging" => list(any())
      }
      
  """
  @type execute_command_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attachment() :: %{
        "details" => list(key_value_pair()()),
        "id" => String.t(),
        "status" => String.t(),
        "type" => String.t()
      }
      
  """
  @type attachment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      target_not_connected_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type target_not_connected_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type service_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service() :: %{
        "capacityProviderStrategy" => list(capacity_provider_strategy_item()()),
        "clusterArn" => String.t(),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "deploymentConfiguration" => deployment_configuration(),
        "deploymentController" => deployment_controller(),
        "deployments" => list(deployment()()),
        "desiredCount" => integer(),
        "enableECSManagedTags" => boolean(),
        "enableExecuteCommand" => boolean(),
        "events" => list(service_event()()),
        "healthCheckGracePeriodSeconds" => integer(),
        "launchType" => list(any()),
        "loadBalancers" => list(load_balancer()()),
        "networkConfiguration" => network_configuration(),
        "pendingCount" => integer(),
        "placementConstraints" => list(placement_constraint()()),
        "placementStrategy" => list(placement_strategy()()),
        "platformFamily" => String.t(),
        "platformVersion" => String.t(),
        "propagateTags" => list(any()),
        "roleArn" => String.t(),
        "runningCount" => integer(),
        "schedulingStrategy" => list(any()),
        "serviceArn" => String.t(),
        "serviceName" => String.t(),
        "serviceRegistries" => list(service_registry()()),
        "status" => String.t(),
        "tags" => list(tag()()),
        "taskDefinition" => String.t(),
        "taskSets" => list(task_set()())
      }
      
  """
  @type service() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      host_entry() :: %{
        "hostname" => String.t(),
        "ipAddress" => String.t()
      }
      
  """
  @type host_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_task_definitions_request() :: %{
        optional("familyPrefix") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("sort") => list(any()),
        optional("status") => list(any())
      }
      
  """
  @type list_task_definitions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      task_volume_configuration() :: %{
        "managedEBSVolume" => task_managed_ebs_volume_configuration(),
        "name" => String.t()
      }
      
  """
  @type task_volume_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      managed_agent_state_change() :: %{
        "containerName" => String.t(),
        "managedAgentName" => list(any()),
        "reason" => String.t(),
        "status" => String.t()
      }
      
  """
  @type managed_agent_state_change() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("resourceArn") => String.t(),
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_task_set_response() :: %{
        "taskSet" => task_set()
      }
      
  """
  @type delete_task_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_container_instances_state_request() :: %{
        optional("cluster") => String.t(),
        required("containerInstances") => list(String.t()()),
        required("status") => list(any())
      }
      
  """
  @type update_container_instances_state_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      docker_volume_configuration() :: %{
        "autoprovision" => boolean(),
        "driver" => String.t(),
        "driverOpts" => map(),
        "labels" => map(),
        "scope" => list(any())
      }
      
  """
  @type docker_volume_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_task_protection_request() :: %{
        optional("expiresInMinutes") => integer(),
        required("cluster") => String.t(),
        required("protectionEnabled") => boolean(),
        required("tasks") => list(String.t()())
      }
      
  """
  @type update_task_protection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_cluster_request() :: %{
        optional("configuration") => cluster_configuration(),
        optional("serviceConnectDefaults") => cluster_service_connect_defaults_request(),
        optional("settings") => list(cluster_setting()()),
        required("cluster") => String.t()
      }
      
  """
  @type update_cluster_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_container_instance_request() :: %{
        optional("attributes") => list(attribute()()),
        optional("cluster") => String.t(),
        optional("containerInstanceArn") => String.t(),
        optional("instanceIdentityDocument") => String.t(),
        optional("instanceIdentityDocumentSignature") => String.t(),
        optional("platformDevices") => list(platform_device()()),
        optional("tags") => list(tag()()),
        optional("totalResources") => list(resource()()),
        optional("versionInfo") => version_info()
      }
      
  """
  @type register_container_instance_request() :: %{String.t() => any()}

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
      
      timeout_configuration() :: %{
        "idleTimeoutSeconds" => integer(),
        "perRequestTimeoutSeconds" => integer()
      }
      
  """
  @type timeout_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      managed_agent() :: %{
        "lastStartedAt" => non_neg_integer(),
        "lastStatus" => String.t(),
        "name" => list(any()),
        "reason" => String.t()
      }
      
  """
  @type managed_agent() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_configuration() :: %{
        "executeCommandConfiguration" => execute_command_configuration(),
        "managedStorageConfiguration" => managed_storage_configuration()
      }
      
  """
  @type cluster_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deployment_alarms() :: %{
        "alarmNames" => list(String.t()()),
        "enable" => boolean(),
        "rollback" => boolean()
      }
      
  """
  @type deployment_alarms() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_account_setting_request() :: %{
        optional("principalArn") => String.t(),
        required("name") => list(any()),
        required("value") => String.t()
      }
      
  """
  @type put_account_setting_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_services_request() :: %{
        optional("cluster") => String.t(),
        optional("launchType") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("schedulingStrategy") => list(any())
      }
      
  """
  @type list_services_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execute_command_response() :: %{
        "clusterArn" => String.t(),
        "containerArn" => String.t(),
        "containerName" => String.t(),
        "interactive" => boolean(),
        "session" => session(),
        "taskArn" => String.t()
      }
      
  """
  @type execute_command_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_services_response() :: %{
        "failures" => list(failure()()),
        "services" => list(service()())
      }
      
  """
  @type describe_services_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      task_managed_ebs_volume_termination_policy() :: %{
        "deleteOnTermination" => boolean()
      }
      
  """
  @type task_managed_ebs_volume_termination_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_task_definition_response() :: %{
        "taskDefinition" => task_definition()
      }
      
  """
  @type deregister_task_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      namespace_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type namespace_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_feature_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type unsupported_feature_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deployment_configuration() :: %{
        "alarms" => deployment_alarms(),
        "deploymentCircuitBreaker" => deployment_circuit_breaker(),
        "maximumPercent" => integer(),
        "minimumHealthyPercent" => integer()
      }
      
  """
  @type deployment_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_account_settings_request() :: %{
        optional("effectiveSettings") => boolean(),
        optional("maxResults") => integer(),
        optional("name") => list(any()),
        optional("nextToken") => String.t(),
        optional("principalArn") => String.t(),
        optional("value") => String.t()
      }
      
  """
  @type list_account_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_account_settings_response() :: %{
        "nextToken" => String.t(),
        "settings" => list(setting()())
      }
      
  """
  @type list_account_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_cluster_request() :: %{
        optional("capacityProviders") => list(String.t()()),
        optional("clusterName") => String.t(),
        optional("configuration") => cluster_configuration(),
        optional("defaultCapacityProviderStrategy") => list(capacity_provider_strategy_item()()),
        optional("serviceConnectDefaults") => cluster_service_connect_defaults_request(),
        optional("settings") => list(cluster_setting()()),
        optional("tags") => list(tag()())
      }
      
  """
  @type create_cluster_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_connect_configuration() :: %{
        "enabled" => boolean(),
        "logConfiguration" => log_configuration(),
        "namespace" => String.t(),
        "services" => list(service_connect_service()())
      }
      
  """
  @type service_connect_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      client_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type client_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_capacity_providers_request() :: %{
        optional("capacityProviders") => list(String.t()()),
        optional("include") => list(list(any())()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type describe_capacity_providers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => String.t(),
        "resourceIds" => list(String.t()())
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
      
      container_definition() :: %{
        "dependsOn" => list(container_dependency()()),
        "image" => String.t(),
        "entryPoint" => list(String.t()()),
        "user" => String.t(),
        "healthCheck" => health_check(),
        "interactive" => boolean(),
        "dockerSecurityOptions" => list(String.t()()),
        "pseudoTerminal" => boolean(),
        "hostname" => String.t(),
        "secrets" => list(secret()()),
        "name" => String.t(),
        "portMappings" => list(port_mapping()()),
        "workingDirectory" => String.t(),
        "command" => list(String.t()()),
        "environmentFiles" => list(environment_file()()),
        "cpu" => integer(),
        "repositoryCredentials" => repository_credentials(),
        "links" => list(String.t()()),
        "ulimits" => list(ulimit()()),
        "readonlyRootFilesystem" => boolean(),
        "volumesFrom" => list(volume_from()()),
        "disableNetworking" => boolean(),
        "memory" => integer(),
        "privileged" => boolean(),
        "logConfiguration" => log_configuration(),
        "systemControls" => list(system_control()()),
        "mountPoints" => list(mount_point()()),
        "environment" => list(key_value_pair()()),
        "dnsSearchDomains" => list(String.t()()),
        "linuxParameters" => linux_parameters(),
        "startTimeout" => integer(),
        "resourceRequirements" => list(resource_requirement()()),
        "dnsServers" => list(String.t()()),
        "dockerLabels" => map(),
        "essential" => boolean(),
        "stopTimeout" => integer(),
        "memoryReservation" => integer(),
        "credentialSpecs" => list(String.t()()),
        "extraHosts" => list(host_entry()()),
        "firelensConfiguration" => firelens_configuration()
      }
      
  """
  @type container_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      managed_storage_configuration() :: %{
        "fargateEphemeralStorageKmsKeyId" => String.t(),
        "kmsKeyId" => String.t()
      }
      
  """
  @type managed_storage_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_task_protection_request() :: %{
        optional("tasks") => list(String.t()()),
        required("cluster") => String.t()
      }
      
  """
  @type get_task_protection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_contains_tasks_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type cluster_contains_tasks_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "key" => String.t(),
        "value" => String.t()
      }
      
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_task_definitions_response() :: %{
        "nextToken" => String.t(),
        "taskDefinitionArns" => list(String.t()())
      }
      
  """
  @type list_task_definitions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      container_override() :: %{
        "command" => list(String.t()()),
        "cpu" => integer(),
        "environment" => list(key_value_pair()()),
        "environmentFiles" => list(environment_file()()),
        "memory" => integer(),
        "memoryReservation" => integer(),
        "name" => String.t(),
        "resourceRequirements" => list(resource_requirement()())
      }
      
  """
  @type container_override() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ulimit() :: %{
        "hardLimit" => integer(),
        "name" => list(any()),
        "softLimit" => integer()
      }
      
  """
  @type ulimit() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execute_command_log_configuration() :: %{
        "cloudWatchEncryptionEnabled" => boolean(),
        "cloudWatchLogGroupName" => String.t(),
        "s3BucketName" => String.t(),
        "s3EncryptionEnabled" => boolean(),
        "s3KeyPrefix" => String.t()
      }
      
  """
  @type execute_command_log_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster() :: %{
        "activeServicesCount" => integer(),
        "attachments" => list(attachment()()),
        "attachmentsStatus" => String.t(),
        "capacityProviders" => list(String.t()()),
        "clusterArn" => String.t(),
        "clusterName" => String.t(),
        "configuration" => cluster_configuration(),
        "defaultCapacityProviderStrategy" => list(capacity_provider_strategy_item()()),
        "pendingTasksCount" => integer(),
        "registeredContainerInstancesCount" => integer(),
        "runningTasksCount" => integer(),
        "serviceConnectDefaults" => cluster_service_connect_defaults(),
        "settings" => list(cluster_setting()()),
        "statistics" => list(key_value_pair()()),
        "status" => String.t(),
        "tags" => list(tag()())
      }
      
  """
  @type cluster() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attachment_state_change() :: %{
        "attachmentArn" => String.t(),
        "status" => String.t()
      }
      
  """
  @type attachment_state_change() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_services_response() :: %{
        "nextToken" => String.t(),
        "serviceArns" => list(String.t()())
      }
      
  """
  @type list_services_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_not_active_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type service_not_active_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_setting() :: %{
        "name" => list(any()),
        "value" => String.t()
      }
      
  """
  @type cluster_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_task_definitions_request() :: %{
        required("taskDefinitions") => list(String.t()())
      }
      
  """
  @type delete_task_definitions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_task_sets_request() :: %{
        optional("include") => list(list(any())()),
        optional("taskSets") => list(String.t()()),
        required("cluster") => String.t(),
        required("service") => String.t()
      }
      
  """
  @type describe_task_sets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      submit_container_state_change_request() :: %{
        optional("cluster") => String.t(),
        optional("containerName") => String.t(),
        optional("exitCode") => integer(),
        optional("networkBindings") => list(network_binding()()),
        optional("reason") => String.t(),
        optional("runtimeId") => String.t(),
        optional("status") => String.t(),
        optional("task") => String.t()
      }
      
  """
  @type submit_container_state_change_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_service_request() :: %{
        optional("capacityProviderStrategy") => list(capacity_provider_strategy_item()()),
        optional("clientToken") => String.t(),
        optional("cluster") => String.t(),
        optional("deploymentConfiguration") => deployment_configuration(),
        optional("deploymentController") => deployment_controller(),
        optional("desiredCount") => integer(),
        optional("enableECSManagedTags") => boolean(),
        optional("enableExecuteCommand") => boolean(),
        optional("healthCheckGracePeriodSeconds") => integer(),
        optional("launchType") => list(any()),
        optional("loadBalancers") => list(load_balancer()()),
        optional("networkConfiguration") => network_configuration(),
        optional("placementConstraints") => list(placement_constraint()()),
        optional("placementStrategy") => list(placement_strategy()()),
        optional("platformVersion") => String.t(),
        optional("propagateTags") => list(any()),
        optional("role") => String.t(),
        optional("schedulingStrategy") => list(any()),
        optional("serviceConnectConfiguration") => service_connect_configuration(),
        optional("serviceRegistries") => list(service_registry()()),
        optional("tags") => list(tag()()),
        optional("taskDefinition") => String.t(),
        optional("volumeConfigurations") => list(service_volume_configuration()()),
        required("serviceName") => String.t()
      }
      
  """
  @type create_service_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      task_definition_placement_constraint() :: %{
        "expression" => String.t(),
        "type" => list(any())
      }
      
  """
  @type task_definition_placement_constraint() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_task_definition_families_response() :: %{
        "families" => list(String.t()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_task_definition_families_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_task_set_response() :: %{
        "taskSet" => task_set()
      }
      
  """
  @type update_task_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_attributes_response() :: %{
        "attributes" => list(attribute()())
      }
      
  """
  @type delete_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_tasks_response() :: %{
        "failures" => list(failure()()),
        "tasks" => list(task()())
      }
      
  """
  @type describe_tasks_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deployment_circuit_breaker() :: %{
        "enable" => boolean(),
        "rollback" => boolean()
      }
      
  """
  @type deployment_circuit_breaker() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_container_instances_response() :: %{
        "containerInstances" => list(container_instance()()),
        "failures" => list(failure()())
      }
      
  """
  @type describe_container_instances_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      container_state_change() :: %{
        "containerName" => String.t(),
        "exitCode" => integer(),
        "imageDigest" => String.t(),
        "networkBindings" => list(network_binding()()),
        "reason" => String.t(),
        "runtimeId" => String.t(),
        "status" => String.t()
      }
      
  """
  @type container_state_change() :: %{String.t() => any()}

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
      
      put_cluster_capacity_providers_request() :: %{
        required("capacityProviders") => list(String.t()()),
        required("cluster") => String.t(),
        required("defaultCapacityProviderStrategy") => list(capacity_provider_strategy_item()())
      }
      
  """
  @type put_cluster_capacity_providers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "tags" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_scaling_group_provider_update() :: %{
        "managedDraining" => list(any()),
        "managedScaling" => managed_scaling(),
        "managedTerminationProtection" => list(any())
      }
      
  """
  @type auto_scaling_group_provider_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_health_check_result() :: %{
        "lastStatusChange" => non_neg_integer(),
        "lastUpdated" => non_neg_integer(),
        "status" => list(any()),
        "type" => list(any())
      }
      
  """
  @type instance_health_check_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_binding() :: %{
        "bindIP" => String.t(),
        "containerPort" => integer(),
        "containerPortRange" => String.t(),
        "hostPort" => integer(),
        "hostPortRange" => String.t(),
        "protocol" => list(any())
      }
      
  """
  @type network_binding() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_task_sets_response() :: %{
        "failures" => list(failure()()),
        "taskSets" => list(task_set()())
      }
      
  """
  @type describe_task_sets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_container_instance_request() :: %{
        optional("cluster") => String.t(),
        optional("force") => boolean(),
        required("containerInstance") => String.t()
      }
      
  """
  @type deregister_container_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_container_instances_request() :: %{
        optional("cluster") => String.t(),
        optional("filter") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("status") => list(any())
      }
      
  """
  @type list_container_instances_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      submit_task_state_change_request() :: %{
        optional("attachments") => list(attachment_state_change()()),
        optional("cluster") => String.t(),
        optional("containers") => list(container_state_change()()),
        optional("executionStoppedAt") => non_neg_integer(),
        optional("managedAgents") => list(managed_agent_state_change()()),
        optional("pullStartedAt") => non_neg_integer(),
        optional("pullStoppedAt") => non_neg_integer(),
        optional("reason") => String.t(),
        optional("status") => String.t(),
        optional("task") => String.t()
      }
      
  """
  @type submit_task_state_change_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      health_check() :: %{
        "command" => list(String.t()()),
        "interval" => integer(),
        "retries" => integer(),
        "startPeriod" => integer(),
        "timeout" => integer()
      }
      
  """
  @type health_check() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_container_agent_request() :: %{
        optional("cluster") => String.t(),
        required("containerInstance") => String.t()
      }
      
  """
  @type update_container_agent_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ephemeral_storage() :: %{
        "sizeInGiB" => integer()
      }
      
  """
  @type ephemeral_storage() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      submit_attachment_state_changes_response() :: %{
        "acknowledgment" => String.t()
      }
      
  """
  @type submit_attachment_state_changes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_clusters_response() :: %{
        "clusterArns" => list(String.t()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_clusters_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      task_set_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type task_set_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      session() :: %{
        "sessionId" => String.t(),
        "streamUrl" => String.t(),
        "tokenValue" => String.t()
      }
      
  """
  @type session() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_cluster_response() :: %{
        "cluster" => cluster()
      }
      
  """
  @type delete_cluster_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_capacity_provider_response() :: %{
        "capacityProvider" => capacity_provider()
      }
      
  """
  @type create_capacity_provider_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_container_agent_response() :: %{
        "containerInstance" => container_instance()
      }
      
  """
  @type update_container_agent_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_attributes_response() :: %{
        "attributes" => list(attribute()())
      }
      
  """
  @type put_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      task_definition() :: %{
        "compatibilities" => list(list(any())()),
        "containerDefinitions" => list(container_definition()()),
        "cpu" => String.t(),
        "deregisteredAt" => non_neg_integer(),
        "ephemeralStorage" => ephemeral_storage(),
        "executionRoleArn" => String.t(),
        "family" => String.t(),
        "inferenceAccelerators" => list(inference_accelerator()()),
        "ipcMode" => list(any()),
        "memory" => String.t(),
        "networkMode" => list(any()),
        "pidMode" => list(any()),
        "placementConstraints" => list(task_definition_placement_constraint()()),
        "proxyConfiguration" => proxy_configuration(),
        "registeredAt" => non_neg_integer(),
        "registeredBy" => String.t(),
        "requiresAttributes" => list(attribute()()),
        "requiresCompatibilities" => list(list(any())()),
        "revision" => integer(),
        "runtimePlatform" => runtime_platform(),
        "status" => list(any()),
        "taskDefinitionArn" => String.t(),
        "taskRoleArn" => String.t(),
        "volumes" => list(volume()())
      }
      
  """
  @type task_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_container_instances_response() :: %{
        "containerInstanceArns" => list(String.t()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_container_instances_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_cluster_settings_request() :: %{
        required("cluster") => String.t(),
        required("settings") => list(cluster_setting()())
      }
      
  """
  @type update_cluster_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_service_request() :: %{
        optional("capacityProviderStrategy") => list(capacity_provider_strategy_item()()),
        optional("cluster") => String.t(),
        optional("deploymentConfiguration") => deployment_configuration(),
        optional("desiredCount") => integer(),
        optional("enableECSManagedTags") => boolean(),
        optional("enableExecuteCommand") => boolean(),
        optional("forceNewDeployment") => boolean(),
        optional("healthCheckGracePeriodSeconds") => integer(),
        optional("loadBalancers") => list(load_balancer()()),
        optional("networkConfiguration") => network_configuration(),
        optional("placementConstraints") => list(placement_constraint()()),
        optional("placementStrategy") => list(placement_strategy()()),
        optional("platformVersion") => String.t(),
        optional("propagateTags") => list(any()),
        optional("serviceConnectConfiguration") => service_connect_configuration(),
        optional("serviceRegistries") => list(service_registry()()),
        optional("taskDefinition") => String.t(),
        optional("volumeConfigurations") => list(service_volume_configuration()()),
        required("service") => String.t()
      }
      
  """
  @type update_service_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ebs_tag_specification() :: %{
        "propagateTags" => list(any()),
        "resourceType" => list(any()),
        "tags" => list(tag()())
      }
      
  """
  @type ebs_tag_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deployment_controller() :: %{
        "type" => list(any())
      }
      
  """
  @type deployment_controller() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_account_setting_default_response() :: %{
        "setting" => setting()
      }
      
  """
  @type put_account_setting_default_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      discover_poll_endpoint_response() :: %{
        "endpoint" => String.t(),
        "serviceConnectEndpoint" => String.t(),
        "telemetryEndpoint" => String.t()
      }
      
  """
  @type discover_poll_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_clusters_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_clusters_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_task_definition_request() :: %{
        optional("include") => list(list(any())()),
        required("taskDefinition") => String.t()
      }
      
  """
  @type describe_task_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      f_sx_windows_file_server_authorization_config() :: %{
        "credentialsParameter" => String.t(),
        "domain" => String.t()
      }
      
  """
  @type f_sx_windows_file_server_authorization_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_capacity_provider_response() :: %{
        "capacityProvider" => capacity_provider()
      }
      
  """
  @type update_capacity_provider_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      platform_unknown_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type platform_unknown_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_attributes_request() :: %{
        optional("cluster") => String.t(),
        required("attributes") => list(attribute()())
      }
      
  """
  @type delete_attributes_request() :: %{String.t() => any()}

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
      
      update_task_protection_response() :: %{
        "failures" => list(failure()()),
        "protectedTasks" => list(protected_task()())
      }
      
  """
  @type update_task_protection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_task_set_request() :: %{
        optional("force") => boolean(),
        required("cluster") => String.t(),
        required("service") => String.t(),
        required("taskSet") => String.t()
      }
      
  """
  @type delete_task_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_contains_container_instances_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type cluster_contains_container_instances_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      submit_container_state_change_response() :: %{
        "acknowledgment" => String.t()
      }
      
  """
  @type submit_container_state_change_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_task_definition_families_request() :: %{
        optional("familyPrefix") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("status") => list(any())
      }
      
  """
  @type list_task_definition_families_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_cluster_request() :: %{
        required("cluster") => String.t()
      }
      
  """
  @type delete_cluster_request() :: %{String.t() => any()}

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
      
      update_cluster_settings_response() :: %{
        "cluster" => cluster()
      }
      
  """
  @type update_cluster_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      capacity_provider_strategy_item() :: %{
        "base" => integer(),
        "capacityProvider" => String.t(),
        "weight" => integer()
      }
      
  """
  @type capacity_provider_strategy_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      no_update_available_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type no_update_available_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_task_definitions_response() :: %{
        "failures" => list(failure()()),
        "taskDefinitions" => list(task_definition()())
      }
      
  """
  @type delete_task_definitions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      placement_constraint() :: %{
        "expression" => String.t(),
        "type" => list(any())
      }
      
  """
  @type placement_constraint() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_configuration() :: %{
        "awsvpcConfiguration" => aws_vpc_configuration()
      }
      
  """
  @type network_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      managed_scaling() :: %{
        "instanceWarmupPeriod" => integer(),
        "maximumScalingStepSize" => integer(),
        "minimumScalingStepSize" => integer(),
        "status" => list(any()),
        "targetCapacity" => integer()
      }
      
  """
  @type managed_scaling() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      volume() :: %{
        "configuredAtLaunch" => boolean(),
        "dockerVolumeConfiguration" => docker_volume_configuration(),
        "efsVolumeConfiguration" => e_f_s_volume_configuration(),
        "fsxWindowsFileServerVolumeConfiguration" => f_sx_windows_file_server_volume_configuration(),
        "host" => host_volume_properties(),
        "name" => String.t()
      }
      
  """
  @type volume() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      missing_version_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type missing_version_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      register_task_definition_request() :: %{
        optional("cpu") => String.t(),
        optional("ephemeralStorage") => ephemeral_storage(),
        optional("executionRoleArn") => String.t(),
        optional("inferenceAccelerators") => list(inference_accelerator()()),
        optional("ipcMode") => list(any()),
        optional("memory") => String.t(),
        optional("networkMode") => list(any()),
        optional("pidMode") => list(any()),
        optional("placementConstraints") => list(task_definition_placement_constraint()()),
        optional("proxyConfiguration") => proxy_configuration(),
        optional("requiresCompatibilities") => list(list(any())()),
        optional("runtimePlatform") => runtime_platform(),
        optional("tags") => list(tag()()),
        optional("taskRoleArn") => String.t(),
        optional("volumes") => list(volume()()),
        required("containerDefinitions") => list(container_definition()()),
        required("family") => String.t()
      }
      
  """
  @type register_task_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_tasks_request() :: %{
        optional("cluster") => String.t(),
        optional("include") => list(list(any())()),
        required("tasks") => list(String.t()())
      }
      
  """
  @type describe_tasks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inference_accelerator_override() :: %{
        "deviceName" => String.t(),
        "deviceType" => String.t()
      }
      
  """
  @type inference_accelerator_override() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_scaling_group_provider() :: %{
        "autoScalingGroupArn" => String.t(),
        "managedDraining" => list(any()),
        "managedScaling" => managed_scaling(),
        "managedTerminationProtection" => list(any())
      }
      
  """
  @type auto_scaling_group_provider() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      platform_task_definition_incompatibility_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type platform_task_definition_incompatibility_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      port_mapping() :: %{
        "appProtocol" => list(any()),
        "containerPort" => integer(),
        "containerPortRange" => String.t(),
        "hostPort" => integer(),
        "name" => String.t(),
        "protocol" => list(any())
      }
      
  """
  @type port_mapping() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_clusters_response() :: %{
        "clusters" => list(cluster()()),
        "failures" => list(failure()())
      }
      
  """
  @type describe_clusters_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_task_response() :: %{
        "failures" => list(failure()()),
        "tasks" => list(task()())
      }
      
  """
  @type start_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      load_balancer() :: %{
        "containerName" => String.t(),
        "containerPort" => integer(),
        "loadBalancerName" => String.t(),
        "targetGroupArn" => String.t()
      }
      
  """
  @type load_balancer() :: %{String.t() => any()}

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
      
      cluster_service_connect_defaults() :: %{
        "namespace" => String.t()
      }
      
  """
  @type cluster_service_connect_defaults() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("resourceArn") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kernel_capabilities() :: %{
        "add" => list(String.t()()),
        "drop" => list(String.t()())
      }
      
  """
  @type kernel_capabilities() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execute_command_request() :: %{
        optional("cluster") => String.t(),
        optional("container") => String.t(),
        required("command") => String.t(),
        required("interactive") => boolean(),
        required("task") => String.t()
      }
      
  """
  @type execute_command_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_service_primary_task_set_request() :: %{
        required("cluster") => String.t(),
        required("primaryTaskSet") => String.t(),
        required("service") => String.t()
      }
      
  """
  @type update_service_primary_task_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      runtime_platform() :: %{
        "cpuArchitecture" => list(any()),
        "operatingSystemFamily" => list(any())
      }
      
  """
  @type runtime_platform() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      target_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type target_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_service_request() :: %{
        optional("cluster") => String.t(),
        optional("force") => boolean(),
        required("service") => String.t()
      }
      
  """
  @type delete_service_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      linux_parameters() :: %{
        "capabilities" => kernel_capabilities(),
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
      
      submit_task_state_change_response() :: %{
        "acknowledgment" => String.t()
      }
      
  """
  @type submit_task_state_change_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_connect_service() :: %{
        "clientAliases" => list(service_connect_client_alias()()),
        "discoveryName" => String.t(),
        "ingressPortOverride" => integer(),
        "portName" => String.t(),
        "timeout" => timeout_configuration(),
        "tls" => service_connect_tls_configuration()
      }
      
  """
  @type service_connect_service() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scale() :: %{
        "unit" => list(any()),
        "value" => float()
      }
      
  """
  @type scale() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      server_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      platform_device() :: %{
        "id" => String.t(),
        "type" => list(any())
      }
      
  """
  @type platform_device() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      discover_poll_endpoint_request() :: %{
        optional("cluster") => String.t(),
        optional("containerInstance") => String.t()
      }
      
  """
  @type discover_poll_endpoint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_contains_services_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type cluster_contains_services_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      blocked_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type blocked_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attribute() :: %{
        "name" => String.t(),
        "targetId" => String.t(),
        "targetType" => list(any()),
        "value" => String.t()
      }
      
  """
  @type attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tasks_request() :: %{
        optional("cluster") => String.t(),
        optional("containerInstance") => String.t(),
        optional("desiredStatus") => list(any()),
        optional("family") => String.t(),
        optional("launchType") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("serviceName") => String.t(),
        optional("startedBy") => String.t()
      }
      
  """
  @type list_tasks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      task_ephemeral_storage() :: %{
        "kmsKeyId" => String.t(),
        "sizeInGiB" => integer()
      }
      
  """
  @type task_ephemeral_storage() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_capacity_providers_response() :: %{
        "capacityProviders" => list(capacity_provider()()),
        "failures" => list(failure()()),
        "nextToken" => String.t()
      }
      
  """
  @type describe_capacity_providers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      failure() :: %{
        "arn" => String.t(),
        "detail" => String.t(),
        "reason" => String.t()
      }
      
  """
  @type failure() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_task_response() :: %{
        "task" => task()
      }
      
  """
  @type stop_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_services_by_namespace_response() :: %{
        "nextToken" => String.t(),
        "serviceArns" => list(String.t()())
      }
      
  """
  @type list_services_by_namespace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_connect_client_alias() :: %{
        "dnsName" => String.t(),
        "port" => integer()
      }
      
  """
  @type service_connect_client_alias() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aws_vpc_configuration() :: %{
        "assignPublicIp" => list(any()),
        "securityGroups" => list(String.t()()),
        "subnets" => list(String.t()())
      }
      
  """
  @type aws_vpc_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      capacity_provider() :: %{
        "autoScalingGroupProvider" => auto_scaling_group_provider(),
        "capacityProviderArn" => String.t(),
        "name" => String.t(),
        "status" => list(any()),
        "tags" => list(tag()()),
        "updateStatus" => list(any()),
        "updateStatusReason" => String.t()
      }
      
  """
  @type capacity_provider() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_capacity_provider_request() :: %{
        optional("tags") => list(tag()()),
        required("autoScalingGroupProvider") => auto_scaling_group_provider(),
        required("name") => String.t()
      }
      
  """
  @type create_capacity_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_attributes_request() :: %{
        optional("cluster") => String.t(),
        required("attributes") => list(attribute()())
      }
      
  """
  @type put_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_cluster_capacity_providers_response() :: %{
        "cluster" => cluster()
      }
      
  """
  @type put_cluster_capacity_providers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      protected_task() :: %{
        "expirationDate" => non_neg_integer(),
        "protectionEnabled" => boolean(),
        "taskArn" => String.t()
      }
      
  """
  @type protected_task() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_connect_tls_configuration() :: %{
        "issuerCertificateAuthority" => service_connect_tls_certificate_authority(),
        "kmsKey" => String.t(),
        "roleArn" => String.t()
      }
      
  """
  @type service_connect_tls_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_attributes_request() :: %{
        optional("attributeName") => String.t(),
        optional("attributeValue") => String.t(),
        optional("cluster") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("targetType") => list(any())
      }
      
  """
  @type list_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_service_response() :: %{
        "service" => service()
      }
      
  """
  @type update_service_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      volume_from() :: %{
        "readOnly" => boolean(),
        "sourceContainer" => String.t()
      }
      
  """
  @type volume_from() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_service_response() :: %{
        "service" => service()
      }
      
  """
  @type delete_service_response() :: %{String.t() => any()}

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
      
      submit_attachment_state_changes_request() :: %{
        optional("cluster") => String.t(),
        required("attachments") => list(attachment_state_change()())
      }
      
  """
  @type submit_attachment_state_changes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_account_setting_request() :: %{
        optional("principalArn") => String.t(),
        required("name") => list(any())
      }
      
  """
  @type delete_account_setting_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_task_set_response() :: %{
        "taskSet" => task_set()
      }
      
  """
  @type create_task_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_volume_configuration() :: %{
        "managedEBSVolume" => service_managed_ebs_volume_configuration(),
        "name" => String.t()
      }
      
  """
  @type service_volume_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tasks_response() :: %{
        "nextToken" => String.t(),
        "taskArns" => list(String.t()())
      }
      
  """
  @type list_tasks_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_service_response() :: %{
        "service" => service()
      }
      
  """
  @type create_service_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      task_managed_ebs_volume_configuration() :: %{
        "encrypted" => boolean(),
        "filesystemType" => list(any()),
        "iops" => integer(),
        "kmsKeyId" => String.t(),
        "roleArn" => String.t(),
        "sizeInGiB" => integer(),
        "snapshotId" => String.t(),
        "tagSpecifications" => list(ebs_tag_specification()()),
        "terminationPolicy" => task_managed_ebs_volume_termination_policy(),
        "throughput" => integer(),
        "volumeType" => String.t()
      }
      
  """
  @type task_managed_ebs_volume_configuration() :: %{String.t() => any()}

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
      
      container_instance() :: %{
        "agentConnected" => boolean(),
        "agentUpdateStatus" => list(any()),
        "attachments" => list(attachment()()),
        "attributes" => list(attribute()()),
        "capacityProviderName" => String.t(),
        "containerInstanceArn" => String.t(),
        "ec2InstanceId" => String.t(),
        "healthStatus" => container_instance_health_status(),
        "pendingTasksCount" => integer(),
        "registeredAt" => non_neg_integer(),
        "registeredResources" => list(resource()()),
        "remainingResources" => list(resource()()),
        "runningTasksCount" => integer(),
        "status" => String.t(),
        "statusReason" => String.t(),
        "tags" => list(tag()()),
        "version" => float(),
        "versionInfo" => version_info()
      }
      
  """
  @type container_instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_connect_tls_certificate_authority() :: %{
        "awsPcaAuthorityArn" => String.t()
      }
      
  """
  @type service_connect_tls_certificate_authority() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_task_definition_request() :: %{
        required("taskDefinition") => String.t()
      }
      
  """
  @type deregister_task_definition_request() :: %{String.t() => any()}

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
      
      firelens_configuration() :: %{
        "options" => map(),
        "type" => list(any())
      }
      
  """
  @type firelens_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      version_info() :: %{
        "agentHash" => String.t(),
        "agentVersion" => String.t(),
        "dockerVersion" => String.t()
      }
      
  """
  @type version_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_service_primary_task_set_response() :: %{
        "taskSet" => task_set()
      }
      
  """
  @type update_service_primary_task_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_managed_ebs_volume_configuration() :: %{
        "encrypted" => boolean(),
        "filesystemType" => list(any()),
        "iops" => integer(),
        "kmsKeyId" => String.t(),
        "roleArn" => String.t(),
        "sizeInGiB" => integer(),
        "snapshotId" => String.t(),
        "tagSpecifications" => list(ebs_tag_specification()()),
        "throughput" => integer(),
        "volumeType" => String.t()
      }
      
  """
  @type service_managed_ebs_volume_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_task_definition_response() :: %{
        "tags" => list(tag()()),
        "taskDefinition" => task_definition()
      }
      
  """
  @type register_task_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_clusters_request() :: %{
        optional("clusters") => list(String.t()()),
        optional("include") => list(list(any())())
      }
      
  """
  @type describe_clusters_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      run_task_request() :: %{
        optional("capacityProviderStrategy") => list(capacity_provider_strategy_item()()),
        optional("clientToken") => String.t(),
        optional("cluster") => String.t(),
        optional("count") => integer(),
        optional("enableECSManagedTags") => boolean(),
        optional("enableExecuteCommand") => boolean(),
        optional("group") => String.t(),
        optional("launchType") => list(any()),
        optional("networkConfiguration") => network_configuration(),
        optional("overrides") => task_override(),
        optional("placementConstraints") => list(placement_constraint()()),
        optional("placementStrategy") => list(placement_strategy()()),
        optional("platformVersion") => String.t(),
        optional("propagateTags") => list(any()),
        optional("referenceId") => String.t(),
        optional("startedBy") => String.t(),
        optional("tags") => list(tag()()),
        optional("volumeConfigurations") => list(task_volume_configuration()()),
        required("taskDefinition") => String.t()
      }
      
  """
  @type run_task_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_container_instance_response() :: %{
        "containerInstance" => container_instance()
      }
      
  """
  @type deregister_container_instance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deployment_ephemeral_storage() :: %{
        "kmsKeyId" => String.t()
      }
      
  """
  @type deployment_ephemeral_storage() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_service_connect_defaults_request() :: %{
        "namespace" => String.t()
      }
      
  """
  @type cluster_service_connect_defaults_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_attributes_response() :: %{
        "attributes" => list(attribute()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      repository_credentials() :: %{
        "credentialsParameter" => String.t()
      }
      
  """
  @type repository_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      f_sx_windows_file_server_volume_configuration() :: %{
        "authorizationConfig" => f_sx_windows_file_server_authorization_config(),
        "fileSystemId" => String.t(),
        "rootDirectory" => String.t()
      }
      
  """
  @type f_sx_windows_file_server_volume_configuration() :: %{String.t() => any()}

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
      
      environment_file() :: %{
        "type" => list(any()),
        "value" => String.t()
      }
      
  """
  @type environment_file() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      placement_strategy() :: %{
        "field" => String.t(),
        "type" => list(any())
      }
      
  """
  @type placement_strategy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_cluster_response() :: %{
        "cluster" => cluster()
      }
      
  """
  @type update_cluster_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      container_dependency() :: %{
        "condition" => list(any()),
        "containerName" => String.t()
      }
      
  """
  @type container_dependency() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource() :: %{
        "doubleValue" => float(),
        "integerValue" => integer(),
        "longValue" => float(),
        "name" => String.t(),
        "stringSetValue" => list(String.t()()),
        "type" => String.t()
      }
      
  """
  @type resource() :: %{String.t() => any()}

  @type create_capacity_provider_errors() ::
          limit_exceeded_exception()
          | server_exception()
          | invalid_parameter_exception()
          | client_exception()
          | update_in_progress_exception()

  @type create_cluster_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | client_exception()
          | namespace_not_found_exception()

  @type create_service_errors() ::
          server_exception()
          | platform_task_definition_incompatibility_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | platform_unknown_exception()
          | client_exception()
          | unsupported_feature_exception()
          | namespace_not_found_exception()
          | cluster_not_found_exception()

  @type create_task_set_errors() ::
          server_exception()
          | platform_task_definition_incompatibility_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | platform_unknown_exception()
          | service_not_active_exception()
          | client_exception()
          | unsupported_feature_exception()
          | namespace_not_found_exception()
          | service_not_found_exception()
          | cluster_not_found_exception()

  @type delete_account_setting_errors() ::
          server_exception() | invalid_parameter_exception() | client_exception()

  @type delete_attributes_errors() ::
          target_not_found_exception()
          | invalid_parameter_exception()
          | cluster_not_found_exception()

  @type delete_capacity_provider_errors() ::
          server_exception() | invalid_parameter_exception() | client_exception()

  @type delete_cluster_errors() ::
          cluster_contains_services_exception()
          | server_exception()
          | invalid_parameter_exception()
          | cluster_contains_container_instances_exception()
          | cluster_contains_tasks_exception()
          | client_exception()
          | cluster_not_found_exception()
          | update_in_progress_exception()

  @type delete_service_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | client_exception()
          | service_not_found_exception()
          | cluster_not_found_exception()

  @type delete_task_definitions_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | client_exception()

  @type delete_task_set_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | task_set_not_found_exception()
          | service_not_active_exception()
          | client_exception()
          | unsupported_feature_exception()
          | service_not_found_exception()
          | cluster_not_found_exception()

  @type deregister_container_instance_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | client_exception()
          | cluster_not_found_exception()

  @type deregister_task_definition_errors() ::
          server_exception() | invalid_parameter_exception() | client_exception()

  @type describe_capacity_providers_errors() ::
          server_exception() | invalid_parameter_exception() | client_exception()

  @type describe_clusters_errors() ::
          server_exception() | invalid_parameter_exception() | client_exception()

  @type describe_container_instances_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | client_exception()
          | cluster_not_found_exception()

  @type describe_services_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | client_exception()
          | cluster_not_found_exception()

  @type describe_task_definition_errors() ::
          server_exception() | invalid_parameter_exception() | client_exception()

  @type describe_task_sets_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | service_not_active_exception()
          | client_exception()
          | unsupported_feature_exception()
          | service_not_found_exception()
          | cluster_not_found_exception()

  @type describe_tasks_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | client_exception()
          | cluster_not_found_exception()

  @type discover_poll_endpoint_errors() :: server_exception() | client_exception()

  @type execute_command_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | client_exception()
          | target_not_connected_exception()
          | cluster_not_found_exception()

  @type get_task_protection_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | client_exception()
          | unsupported_feature_exception()
          | cluster_not_found_exception()

  @type list_account_settings_errors() ::
          server_exception() | invalid_parameter_exception() | client_exception()

  @type list_attributes_errors() :: invalid_parameter_exception() | cluster_not_found_exception()

  @type list_clusters_errors() ::
          server_exception() | invalid_parameter_exception() | client_exception()

  @type list_container_instances_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | client_exception()
          | cluster_not_found_exception()

  @type list_services_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | client_exception()
          | cluster_not_found_exception()

  @type list_services_by_namespace_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | client_exception()
          | namespace_not_found_exception()

  @type list_tags_for_resource_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | client_exception()
          | cluster_not_found_exception()

  @type list_task_definition_families_errors() ::
          server_exception() | invalid_parameter_exception() | client_exception()

  @type list_task_definitions_errors() ::
          server_exception() | invalid_parameter_exception() | client_exception()

  @type list_tasks_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | client_exception()
          | service_not_found_exception()
          | cluster_not_found_exception()

  @type put_account_setting_errors() ::
          server_exception() | invalid_parameter_exception() | client_exception()

  @type put_account_setting_default_errors() ::
          server_exception() | invalid_parameter_exception() | client_exception()

  @type put_attributes_errors() ::
          target_not_found_exception()
          | invalid_parameter_exception()
          | cluster_not_found_exception()
          | attribute_limit_exceeded_exception()

  @type put_cluster_capacity_providers_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | client_exception()
          | cluster_not_found_exception()
          | resource_in_use_exception()
          | update_in_progress_exception()

  @type register_container_instance_errors() ::
          server_exception() | invalid_parameter_exception() | client_exception()

  @type register_task_definition_errors() ::
          server_exception() | invalid_parameter_exception() | client_exception()

  @type run_task_errors() ::
          blocked_exception()
          | server_exception()
          | platform_task_definition_incompatibility_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | platform_unknown_exception()
          | conflict_exception()
          | client_exception()
          | unsupported_feature_exception()
          | cluster_not_found_exception()

  @type start_task_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | client_exception()
          | unsupported_feature_exception()
          | cluster_not_found_exception()

  @type stop_task_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | client_exception()
          | cluster_not_found_exception()

  @type submit_attachment_state_changes_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | client_exception()

  @type submit_container_state_change_errors() ::
          server_exception() | access_denied_exception() | client_exception()

  @type submit_task_state_change_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | client_exception()

  @type tag_resource_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | client_exception()
          | cluster_not_found_exception()

  @type untag_resource_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | client_exception()
          | cluster_not_found_exception()

  @type update_capacity_provider_errors() ::
          server_exception() | invalid_parameter_exception() | client_exception()

  @type update_cluster_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | client_exception()
          | namespace_not_found_exception()
          | cluster_not_found_exception()

  @type update_cluster_settings_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | client_exception()
          | cluster_not_found_exception()

  @type update_container_agent_errors() ::
          server_exception()
          | missing_version_exception()
          | invalid_parameter_exception()
          | no_update_available_exception()
          | client_exception()
          | cluster_not_found_exception()
          | update_in_progress_exception()

  @type update_container_instances_state_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | client_exception()
          | cluster_not_found_exception()

  @type update_service_errors() ::
          server_exception()
          | platform_task_definition_incompatibility_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | platform_unknown_exception()
          | service_not_active_exception()
          | client_exception()
          | unsupported_feature_exception()
          | namespace_not_found_exception()
          | service_not_found_exception()
          | cluster_not_found_exception()

  @type update_service_primary_task_set_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | task_set_not_found_exception()
          | service_not_active_exception()
          | client_exception()
          | unsupported_feature_exception()
          | service_not_found_exception()
          | cluster_not_found_exception()

  @type update_task_protection_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | client_exception()
          | unsupported_feature_exception()
          | cluster_not_found_exception()

  @type update_task_set_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | task_set_not_found_exception()
          | service_not_active_exception()
          | client_exception()
          | unsupported_feature_exception()
          | service_not_found_exception()
          | cluster_not_found_exception()

  def metadata do
    %{
      api_version: "2014-11-13",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "ecs",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "ECS",
      signature_version: "v4",
      signing_name: "ecs",
      target_prefix: "AmazonEC2ContainerServiceV20141113"
    }
  end

  @doc """
  Creates a new capacity provider. Capacity providers are associated with an
  Amazon ECS cluster and are used in capacity provider strategies to facilitate
  cluster auto scaling.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20CreateCapacityProvider&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_capacity_provider_request`)
    %{
      optional("tags") => list(tag()()),
      required("autoScalingGroupProvider") => auto_scaling_group_provider(),
      required("name") => String.t()
    }
  """

  @spec create_capacity_provider(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_capacity_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_capacity_provider_errors()}

  def create_capacity_provider(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateCapacityProvider", input, options)
  end

  @doc """
  Creates a new Amazon ECS cluster. By default, your account receives a `default`
  cluster when you launch your first container instance. However, you can create
  your own cluster with a unique name with the `CreateCluster` action.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20CreateCluster&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_cluster_request`)
    %{
      optional("capacityProviders") => list(String.t()()),
      optional("clusterName") => String.t(),
      optional("configuration") => cluster_configuration(),
      optional("defaultCapacityProviderStrategy") => list(capacity_provider_strategy_item()()),
      optional("serviceConnectDefaults") => cluster_service_connect_defaults_request(),
      optional("settings") => list(cluster_setting()()),
      optional("tags") => list(tag()())
    }
  """

  @spec create_cluster(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_cluster_errors()}

  def create_cluster(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateCluster", input, options)
  end

  @doc """
  Runs and maintains your desired number of tasks from a specified task
  definition. If the number of tasks running in a service drops below the
  `desiredCount`, Amazon ECS runs another copy of the task in the specified
  cluster. To update an existing service, see the `UpdateService` action. On
  March 21, 2024, a change was made to resolve the task definition revision
  before authorization. When a task definition revision is not specified,
  authorization will occur using the latest revision of a task definition.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20CreateService&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_service_request`)
    %{
      optional("capacityProviderStrategy") => list(capacity_provider_strategy_item()()),
      optional("clientToken") => String.t(),
      optional("cluster") => String.t(),
      optional("deploymentConfiguration") => deployment_configuration(),
      optional("deploymentController") => deployment_controller(),
      optional("desiredCount") => integer(),
      optional("enableECSManagedTags") => boolean(),
      optional("enableExecuteCommand") => boolean(),
      optional("healthCheckGracePeriodSeconds") => integer(),
      optional("launchType") => list(any()),
      optional("loadBalancers") => list(load_balancer()()),
      optional("networkConfiguration") => network_configuration(),
      optional("placementConstraints") => list(placement_constraint()()),
      optional("placementStrategy") => list(placement_strategy()()),
      optional("platformVersion") => String.t(),
      optional("propagateTags") => list(any()),
      optional("role") => String.t(),
      optional("schedulingStrategy") => list(any()),
      optional("serviceConnectConfiguration") => service_connect_configuration(),
      optional("serviceRegistries") => list(service_registry()()),
      optional("tags") => list(tag()()),
      optional("taskDefinition") => String.t(),
      optional("volumeConfigurations") => list(service_volume_configuration()()),
      required("serviceName") => String.t()
    }
  """

  @spec create_service(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_service_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_service_errors()}

  def create_service(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateService", input, options)
  end

  @doc """
  Create a task set in the specified cluster and service. This is used when a
  service uses the `EXTERNAL` deployment controller type. For more information,
  see [Amazon ECS deployment
  types](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html)
  in the *Amazon Elastic Container Service Developer Guide*. On March 21, 2024,
  a change was made to resolve the task definition revision before
  authorization. When a task definition revision is not specified, authorization
  will occur using the latest revision of a task definition.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20CreateTaskSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_task_set_request`)
    %{
      optional("capacityProviderStrategy") => list(capacity_provider_strategy_item()()),
      optional("clientToken") => String.t(),
      optional("externalId") => String.t(),
      optional("launchType") => list(any()),
      optional("loadBalancers") => list(load_balancer()()),
      optional("networkConfiguration") => network_configuration(),
      optional("platformVersion") => String.t(),
      optional("scale") => scale(),
      optional("serviceRegistries") => list(service_registry()()),
      optional("tags") => list(tag()()),
      required("cluster") => String.t(),
      required("service") => String.t(),
      required("taskDefinition") => String.t()
    }
  """

  @spec create_task_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_task_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_task_set_errors()}

  def create_task_set(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateTaskSet", input, options)
  end

  @doc """
  Disables an account setting for a specified user, role, or the root user for an
  account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20DeleteAccountSetting&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_account_setting_request`)
    %{
      optional("principalArn") => String.t(),
      required("name") => list(any())
    }
  """

  @spec delete_account_setting(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_account_setting_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_account_setting_errors()}

  def delete_account_setting(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteAccountSetting", input, options)
  end

  @doc """
  Deletes one or more custom attributes from an Amazon ECS resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20DeleteAttributes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_attributes_request`)
    %{
      optional("cluster") => String.t(),
      required("attributes") => list(attribute()())
    }
  """

  @spec delete_attributes(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_attributes_errors()}

  def delete_attributes(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteAttributes", input, options)
  end

  @doc """
  Deletes the specified capacity provider. The `FARGATE` and `FARGATE_SPOT`
  capacity providers are reserved and can't be deleted. You can disassociate
  them from a cluster using either the `PutClusterCapacityProviders` API or by
  deleting the cluster.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20DeleteCapacityProvider&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_capacity_provider_request`)
    %{
      required("capacityProvider") => String.t()
    }
  """

  @spec delete_capacity_provider(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_capacity_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_capacity_provider_errors()}

  def delete_capacity_provider(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteCapacityProvider", input, options)
  end

  @doc """
  Deletes the specified cluster. The cluster transitions to the `INACTIVE` state.
  Clusters with an `INACTIVE` status might remain discoverable in your account
  for a period of time. However, this behavior is subject to change in the
  future. We don't recommend that you rely on `INACTIVE` clusters persisting.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20DeleteCluster&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_cluster_request`)
    %{
      required("cluster") => String.t()
    }
  """

  @spec delete_cluster(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_cluster_errors()}

  def delete_cluster(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteCluster", input, options)
  end

  @doc """
  Deletes a specified service within a cluster. You can delete a service if you
  have no running tasks in it and the desired task count is zero. If the service
  is actively maintaining tasks, you can't delete it, and you must update the
  service to a desired task count of zero. For more information, see
  `UpdateService`. When you delete a service, if there are still running tasks
  that require cleanup, the service status moves from `ACTIVE` to `DRAINING`,
  and the service is no longer visible in the console or in the `ListServices`
  API operation. After all tasks have transitioned to either `STOPPING` or
  `STOPPED` status, the service status moves from `DRAINING` to `INACTIVE`.
  Services in the `DRAINING` or `INACTIVE` status can still be viewed with the
  `DescribeServices` API operation. However, in the future, `INACTIVE` services
  may be cleaned up and purged from Amazon ECS record keeping, and
  `DescribeServices` calls on those services return a `ServiceNotFoundException`
  error.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20DeleteService&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_service_request`)
    %{
      optional("cluster") => String.t(),
      optional("force") => boolean(),
      required("service") => String.t()
    }
  """

  @spec delete_service(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_service_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_service_errors()}

  def delete_service(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteService", input, options)
  end

  @doc """
  Deletes one or more task definitions. You must deregister a task definition
  revision before you delete it. For more information, see
  [DeregisterTaskDefinition](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DeregisterTaskDefinition.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20DeleteTaskDefinitions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_task_definitions_request`)
    %{
      required("taskDefinitions") => list(String.t()())
    }
  """

  @spec delete_task_definitions(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_task_definitions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_task_definitions_errors()}

  def delete_task_definitions(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteTaskDefinitions", input, options)
  end

  @doc """
  Deletes a specified task set within a service. This is used when a service uses
  the `EXTERNAL` deployment controller type. For more information, see [Amazon
  ECS deployment
  types](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html)
  in the *Amazon Elastic Container Service Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20DeleteTaskSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_task_set_request`)
    %{
      optional("force") => boolean(),
      required("cluster") => String.t(),
      required("service") => String.t(),
      required("taskSet") => String.t()
    }
  """

  @spec delete_task_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_task_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_task_set_errors()}

  def delete_task_set(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteTaskSet", input, options)
  end

  @doc """
  Deregisters an Amazon ECS container instance from the specified cluster. This
  instance is no longer available to run tasks. If you intend to use the
  container instance for some other purpose after deregistration, we recommend
  that you stop all of the tasks running on the container instance before
  deregistration. That prevents any orphaned tasks from consuming resources.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20DeregisterContainerInstance&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:deregister_container_instance_request`)
    %{
      optional("cluster") => String.t(),
      optional("force") => boolean(),
      required("containerInstance") => String.t()
    }
  """

  @spec deregister_container_instance(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, deregister_container_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deregister_container_instance_errors()}

  def deregister_container_instance(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeregisterContainerInstance", input, options)
  end

  @doc """
  Deregisters the specified task definition by family and revision. Upon
  deregistration, the task definition is marked as `INACTIVE`. Existing tasks
  and services that reference an `INACTIVE` task definition continue to run
  without disruption. Existing services that reference an `INACTIVE` task
  definition can still scale up or down by modifying the service's desired
  count. If you want to delete a task definition revision, you must first
  deregister the task definition revision. You can't use an `INACTIVE` task
  definition to run new tasks or create new services, and you can't update an
  existing service to reference an `INACTIVE` task definition. However, there
  may be up to a 10-minute window following deregistration where these
  restrictions have not yet taken effect.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20DeregisterTaskDefinition&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:deregister_task_definition_request`)
    %{
      required("taskDefinition") => String.t()
    }
  """

  @spec deregister_task_definition(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, deregister_task_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deregister_task_definition_errors()}

  def deregister_task_definition(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeregisterTaskDefinition", input, options)
  end

  @doc """
  Describes one or more of your capacity providers.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20DescribeCapacityProviders&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_capacity_providers_request`)
    %{
      optional("capacityProviders") => list(String.t()()),
      optional("include") => list(list(any())()),
      optional("maxResults") => integer(),
      optional("nextToken") => String.t()
    }
  """

  @spec describe_capacity_providers(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_capacity_providers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_capacity_providers_errors()}

  def describe_capacity_providers(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeCapacityProviders", input, options)
  end

  @doc """
  Describes one or more of your clusters.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20DescribeClusters&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_clusters_request`)
    %{
      optional("clusters") => list(String.t()()),
      optional("include") => list(list(any())())
    }
  """

  @spec describe_clusters(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_clusters_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_clusters_errors()}

  def describe_clusters(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeClusters", input, options)
  end

  @doc """
  Describes one or more container instances. Returns metadata about each container
  instance requested.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20DescribeContainerInstances&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_container_instances_request`)
    %{
      optional("cluster") => String.t(),
      optional("include") => list(list(any())()),
      required("containerInstances") => list(String.t()())
    }
  """

  @spec describe_container_instances(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_container_instances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_container_instances_errors()}

  def describe_container_instances(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeContainerInstances", input, options)
  end

  @doc """
  Describes the specified services running in your cluster.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20DescribeServices&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_services_request`)
    %{
      optional("cluster") => String.t(),
      optional("include") => list(list(any())()),
      required("services") => list(String.t()())
    }
  """

  @spec describe_services(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_services_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_services_errors()}

  def describe_services(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeServices", input, options)
  end

  @doc """
  Describes a task definition. You can specify a `family` and `revision` to find
  information about a specific task definition, or you can simply specify the
  family to find the latest `ACTIVE` revision in that family.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20DescribeTaskDefinition&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_task_definition_request`)
    %{
      optional("include") => list(list(any())()),
      required("taskDefinition") => String.t()
    }
  """

  @spec describe_task_definition(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_task_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_task_definition_errors()}

  def describe_task_definition(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeTaskDefinition", input, options)
  end

  @doc """
  Describes the task sets in the specified cluster and service. This is used when
  a service uses the `EXTERNAL` deployment controller type. For more
  information, see [Amazon ECS Deployment
  Types](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html)
  in the *Amazon Elastic Container Service Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20DescribeTaskSets&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_task_sets_request`)
    %{
      optional("include") => list(list(any())()),
      optional("taskSets") => list(String.t()()),
      required("cluster") => String.t(),
      required("service") => String.t()
    }
  """

  @spec describe_task_sets(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_task_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_task_sets_errors()}

  def describe_task_sets(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeTaskSets", input, options)
  end

  @doc """
  Describes a specified task or tasks. Currently, stopped tasks appear in the
  returned results for at least one hour.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20DescribeTasks&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_tasks_request`)
    %{
      optional("cluster") => String.t(),
      optional("include") => list(list(any())()),
      required("tasks") => list(String.t()())
    }
  """

  @spec describe_tasks(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_tasks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_tasks_errors()}

  def describe_tasks(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeTasks", input, options)
  end

  @doc """
  This action is only used by the Amazon ECS agent, and it is not intended for use
  outside of the agent.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20DiscoverPollEndpoint&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:discover_poll_endpoint_request`)
    %{
      optional("cluster") => String.t(),
      optional("containerInstance") => String.t()
    }
  """

  @spec discover_poll_endpoint(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, discover_poll_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, discover_poll_endpoint_errors()}

  def discover_poll_endpoint(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DiscoverPollEndpoint", input, options)
  end

  @doc """
  Runs a command remotely on a container within a task. If you use a condition key
  in your IAM policy to refine the conditions for the policy statement, for
  example limit the actions to a specific cluster, you receive an
  `AccessDeniedException` when there is a mismatch between the condition key
  value and the corresponding parameter value.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20ExecuteCommand&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:execute_command_request`)
    %{
      optional("cluster") => String.t(),
      optional("container") => String.t(),
      required("command") => String.t(),
      required("interactive") => boolean(),
      required("task") => String.t()
    }
  """

  @spec execute_command(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, execute_command_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, execute_command_errors()}

  def execute_command(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ExecuteCommand", input, options)
  end

  @doc """
  Retrieves the protection status of tasks in an Amazon ECS service.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20GetTaskProtection&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_task_protection_request`)
    %{
      optional("tasks") => list(String.t()()),
      required("cluster") => String.t()
    }
  """

  @spec get_task_protection(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_task_protection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_task_protection_errors()}

  def get_task_protection(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetTaskProtection", input, options)
  end

  @doc """
  Lists the account settings for a specified principal.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20ListAccountSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_account_settings_request`)
    %{
      optional("effectiveSettings") => boolean(),
      optional("maxResults") => integer(),
      optional("name") => list(any()),
      optional("nextToken") => String.t(),
      optional("principalArn") => String.t(),
      optional("value") => String.t()
    }
  """

  @spec list_account_settings(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_account_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_account_settings_errors()}

  def list_account_settings(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAccountSettings", input, options)
  end

  @doc """
  Lists the attributes for Amazon ECS resources within a specified target type and
  cluster. When you specify a target type and cluster, `ListAttributes` returns
  a list of attribute objects, one for each attribute on each resource. You can
  filter the list of results to a single attribute name to only return results
  that have that name. You can also filter the results by attribute name and
  value. You can do this, for example, to see which container instances in a
  cluster are running a Linux AMI (`ecs.os-type=linux`).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20ListAttributes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_attributes_request`)
    %{
      optional("attributeName") => String.t(),
      optional("attributeValue") => String.t(),
      optional("cluster") => String.t(),
      optional("maxResults") => integer(),
      optional("nextToken") => String.t(),
      required("targetType") => list(any())
    }
  """

  @spec list_attributes(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_attributes_errors()}

  def list_attributes(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAttributes", input, options)
  end

  @doc """
  Returns a list of existing clusters.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20ListClusters&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_clusters_request`)
    %{
      optional("maxResults") => integer(),
      optional("nextToken") => String.t()
    }
  """

  @spec list_clusters(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_clusters_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_clusters_errors()}

  def list_clusters(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListClusters", input, options)
  end

  @doc """
  Returns a list of container instances in a specified cluster. You can filter the
  results of a `ListContainerInstances` operation with cluster query language
  statements inside the `filter` parameter. For more information, see [Cluster
  Query
  Language](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html)
  in the *Amazon Elastic Container Service Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20ListContainerInstances&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_container_instances_request`)
    %{
      optional("cluster") => String.t(),
      optional("filter") => String.t(),
      optional("maxResults") => integer(),
      optional("nextToken") => String.t(),
      optional("status") => list(any())
    }
  """

  @spec list_container_instances(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_container_instances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_container_instances_errors()}

  def list_container_instances(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListContainerInstances", input, options)
  end

  @doc """
  Returns a list of services. You can filter the results by cluster, launch type,
  and scheduling strategy.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20ListServices&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_services_request`)
    %{
      optional("cluster") => String.t(),
      optional("launchType") => list(any()),
      optional("maxResults") => integer(),
      optional("nextToken") => String.t(),
      optional("schedulingStrategy") => list(any())
    }
  """

  @spec list_services(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_services_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_services_errors()}

  def list_services(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListServices", input, options)
  end

  @doc """
  This operation lists all of the services that are associated with a Cloud Map
  namespace. This list might include services in different clusters. In
  contrast, `ListServices` can only list services in one cluster at a time. If
  you need to filter the list of services in a single cluster by various
  parameters, use `ListServices`. For more information, see [Service
  Connect](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html)
  in the *Amazon Elastic Container Service Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20ListServicesByNamespace&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_services_by_namespace_request`)
    %{
      optional("maxResults") => integer(),
      optional("nextToken") => String.t(),
      required("namespace") => String.t()
    }
  """

  @spec list_services_by_namespace(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_services_by_namespace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_services_by_namespace_errors()}

  def list_services_by_namespace(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListServicesByNamespace", input, options)
  end

  @doc """
  List the tags for an Amazon ECS resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_tags_for_resource_request`)
    %{
      required("resourceArn") => String.t()
    }
  """

  @spec list_tags_for_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}

  def list_tags_for_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Returns a list of task definition families that are registered to your account.
  This list includes task definition families that no longer have any `ACTIVE`
  task definition revisions.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20ListTaskDefinitionFamilies&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_task_definition_families_request`)
    %{
      optional("familyPrefix") => String.t(),
      optional("maxResults") => integer(),
      optional("nextToken") => String.t(),
      optional("status") => list(any())
    }
  """

  @spec list_task_definition_families(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_task_definition_families_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_task_definition_families_errors()}

  def list_task_definition_families(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTaskDefinitionFamilies", input, options)
  end

  @doc """
  Returns a list of task definitions that are registered to your account. You can
  filter the results by family name with the `familyPrefix` parameter or by
  status with the `status` parameter.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20ListTaskDefinitions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_task_definitions_request`)
    %{
      optional("familyPrefix") => String.t(),
      optional("maxResults") => integer(),
      optional("nextToken") => String.t(),
      optional("sort") => list(any()),
      optional("status") => list(any())
    }
  """

  @spec list_task_definitions(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_task_definitions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_task_definitions_errors()}

  def list_task_definitions(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTaskDefinitions", input, options)
  end

  @doc """
  Returns a list of tasks. You can filter the results by cluster, task definition
  family, container instance, launch type, what IAM principal started the task,
  or by the desired status of the task.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20ListTasks&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_tasks_request`)
    %{
      optional("cluster") => String.t(),
      optional("containerInstance") => String.t(),
      optional("desiredStatus") => list(any()),
      optional("family") => String.t(),
      optional("launchType") => list(any()),
      optional("maxResults") => integer(),
      optional("nextToken") => String.t(),
      optional("serviceName") => String.t(),
      optional("startedBy") => String.t()
    }
  """

  @spec list_tasks(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_tasks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tasks_errors()}

  def list_tasks(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTasks", input, options)
  end

  @doc """
  Modifies an account setting. Account settings are set on a per-Region basis.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20PutAccountSetting&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_account_setting_request`)
    %{
      optional("principalArn") => String.t(),
      required("name") => list(any()),
      required("value") => String.t()
    }
  """

  @spec put_account_setting(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_account_setting_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_account_setting_errors()}

  def put_account_setting(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutAccountSetting", input, options)
  end

  @doc """
  Modifies an account setting for all users on an account for whom no individual
  account setting has been specified. Account settings are set on a per-Region
  basis.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20PutAccountSettingDefault&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_account_setting_default_request`)
    %{
      required("name") => list(any()),
      required("value") => String.t()
    }
  """

  @spec put_account_setting_default(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_account_setting_default_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_account_setting_default_errors()}

  def put_account_setting_default(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutAccountSettingDefault", input, options)
  end

  @doc """
  Create or update an attribute on an Amazon ECS resource. If the attribute
  doesn't exist, it's created. If the attribute exists, its value is replaced
  with the specified value. To delete an attribute, use `DeleteAttributes`. For
  more information, see
  [Attributes](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html#attributes)
  in the *Amazon Elastic Container Service Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20PutAttributes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_attributes_request`)
    %{
      optional("cluster") => String.t(),
      required("attributes") => list(attribute()())
    }
  """

  @spec put_attributes(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_attributes_errors()}

  def put_attributes(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutAttributes", input, options)
  end

  @doc """
  Modifies the available capacity providers and the default capacity provider
  strategy for a cluster. You must specify both the available capacity providers
  and a default capacity provider strategy for the cluster. If the specified
  cluster has existing capacity providers associated with it, you must specify
  all existing capacity providers in addition to any new ones you want to add.
  Any existing capacity providers that are associated with a cluster that are
  omitted from a `PutClusterCapacityProviders` API call will be disassociated
  with the cluster. You can only disassociate an existing capacity provider from
  a cluster if it's not being used by any existing tasks.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20PutClusterCapacityProviders&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_cluster_capacity_providers_request`)
    %{
      required("capacityProviders") => list(String.t()()),
      required("cluster") => String.t(),
      required("defaultCapacityProviderStrategy") => list(capacity_provider_strategy_item()())
    }
  """

  @spec put_cluster_capacity_providers(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_cluster_capacity_providers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_cluster_capacity_providers_errors()}

  def put_cluster_capacity_providers(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutClusterCapacityProviders", input, options)
  end

  @doc """
  This action is only used by the Amazon ECS agent, and it is not intended for use
  outside of the agent.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20RegisterContainerInstance&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:register_container_instance_request`)
    %{
      optional("attributes") => list(attribute()()),
      optional("cluster") => String.t(),
      optional("containerInstanceArn") => String.t(),
      optional("instanceIdentityDocument") => String.t(),
      optional("instanceIdentityDocumentSignature") => String.t(),
      optional("platformDevices") => list(platform_device()()),
      optional("tags") => list(tag()()),
      optional("totalResources") => list(resource()()),
      optional("versionInfo") => version_info()
    }
  """

  @spec register_container_instance(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, register_container_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_container_instance_errors()}

  def register_container_instance(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "RegisterContainerInstance", input, options)
  end

  @doc """
  Registers a new task definition from the supplied `family` and
  `containerDefinitions`. Optionally, you can add data volumes to your
  containers with the `volumes` parameter. For more information about task
  definition parameters and defaults, see [Amazon ECS Task
  Definitions](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html)
  in the *Amazon Elastic Container Service Developer Guide*. You can specify a
  role for your task with the `taskRoleArn` parameter. When you specify a role
  for a task, its containers can then use the latest versions of the CLI or SDKs
  to make API requests to the Amazon Web Services services that are specified in
  the policy that's associated with the role. For more information, see [IAM
  Roles for
  Tasks](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html)
  in the *Amazon Elastic Container Service Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20RegisterTaskDefinition&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:register_task_definition_request`)
    %{
      optional("cpu") => String.t(),
      optional("ephemeralStorage") => ephemeral_storage(),
      optional("executionRoleArn") => String.t(),
      optional("inferenceAccelerators") => list(inference_accelerator()()),
      optional("ipcMode") => list(any()),
      optional("memory") => String.t(),
      optional("networkMode") => list(any()),
      optional("pidMode") => list(any()),
      optional("placementConstraints") => list(task_definition_placement_constraint()()),
      optional("proxyConfiguration") => proxy_configuration(),
      optional("requiresCompatibilities") => list(list(any())()),
      optional("runtimePlatform") => runtime_platform(),
      optional("tags") => list(tag()()),
      optional("taskRoleArn") => String.t(),
      optional("volumes") => list(volume()()),
      required("containerDefinitions") => list(container_definition()()),
      required("family") => String.t()
    }
  """

  @spec register_task_definition(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, register_task_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_task_definition_errors()}

  def register_task_definition(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "RegisterTaskDefinition", input, options)
  end

  @doc """
  Starts a new task using the specified task definition. On March 21, 2024, a
  change was made to resolve the task definition revision before authorization.
  When a task definition revision is not specified, authorization will occur
  using the latest revision of a task definition.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20RunTask&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:run_task_request`)
    %{
      optional("capacityProviderStrategy") => list(capacity_provider_strategy_item()()),
      optional("clientToken") => String.t(),
      optional("cluster") => String.t(),
      optional("count") => integer(),
      optional("enableECSManagedTags") => boolean(),
      optional("enableExecuteCommand") => boolean(),
      optional("group") => String.t(),
      optional("launchType") => list(any()),
      optional("networkConfiguration") => network_configuration(),
      optional("overrides") => task_override(),
      optional("placementConstraints") => list(placement_constraint()()),
      optional("placementStrategy") => list(placement_strategy()()),
      optional("platformVersion") => String.t(),
      optional("propagateTags") => list(any()),
      optional("referenceId") => String.t(),
      optional("startedBy") => String.t(),
      optional("tags") => list(tag()()),
      optional("volumeConfigurations") => list(task_volume_configuration()()),
      required("taskDefinition") => String.t()
    }
  """

  @spec run_task(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, run_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, run_task_errors()}

  def run_task(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "RunTask", input, options)
  end

  @doc """
  Starts a new task from the specified task definition on the specified container
  instance or instances. On March 21, 2024, a change was made to resolve the
  task definition revision before authorization. When a task definition revision
  is not specified, authorization will occur using the latest revision of a task
  definition.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20StartTask&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:start_task_request`)
    %{
      optional("cluster") => String.t(),
      optional("enableECSManagedTags") => boolean(),
      optional("enableExecuteCommand") => boolean(),
      optional("group") => String.t(),
      optional("networkConfiguration") => network_configuration(),
      optional("overrides") => task_override(),
      optional("propagateTags") => list(any()),
      optional("referenceId") => String.t(),
      optional("startedBy") => String.t(),
      optional("tags") => list(tag()()),
      optional("volumeConfigurations") => list(task_volume_configuration()()),
      required("containerInstances") => list(String.t()()),
      required("taskDefinition") => String.t()
    }
  """

  @spec start_task(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, start_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_task_errors()}

  def start_task(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartTask", input, options)
  end

  @doc """
  Stops a running task. Any tags associated with the task will be deleted. When
  `StopTask` is called on a task, the equivalent of ``` docker stop ``` is
  issued to the containers running in the task. This results in a `SIGTERM`
  value and a default 30-second timeout, after which the `SIGKILL` value is sent
  and the containers are forcibly stopped. If the container handles the
  `SIGTERM` value gracefully and exits within 30 seconds from receiving it, no
  `SIGKILL` value is sent.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20StopTask&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:stop_task_request`)
    %{
      optional("cluster") => String.t(),
      optional("reason") => String.t(),
      required("task") => String.t()
    }
  """

  @spec stop_task(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, stop_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_task_errors()}

  def stop_task(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopTask", input, options)
  end

  @doc """
  This action is only used by the Amazon ECS agent, and it is not intended for use
  outside of the agent.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20SubmitAttachmentStateChanges&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:submit_attachment_state_changes_request`)
    %{
      optional("cluster") => String.t(),
      required("attachments") => list(attachment_state_change()())
    }
  """

  @spec submit_attachment_state_changes(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, submit_attachment_state_changes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, submit_attachment_state_changes_errors()}

  def submit_attachment_state_changes(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SubmitAttachmentStateChanges", input, options)
  end

  @doc """
  This action is only used by the Amazon ECS agent, and it is not intended for use
  outside of the agent.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20SubmitContainerStateChange&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:submit_container_state_change_request`)
    %{
      optional("cluster") => String.t(),
      optional("containerName") => String.t(),
      optional("exitCode") => integer(),
      optional("networkBindings") => list(network_binding()()),
      optional("reason") => String.t(),
      optional("runtimeId") => String.t(),
      optional("status") => String.t(),
      optional("task") => String.t()
    }
  """

  @spec submit_container_state_change(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, submit_container_state_change_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, submit_container_state_change_errors()}

  def submit_container_state_change(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SubmitContainerStateChange", input, options)
  end

  @doc """
  This action is only used by the Amazon ECS agent, and it is not intended for use
  outside of the agent.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20SubmitTaskStateChange&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:submit_task_state_change_request`)
    %{
      optional("attachments") => list(attachment_state_change()()),
      optional("cluster") => String.t(),
      optional("containers") => list(container_state_change()()),
      optional("executionStoppedAt") => non_neg_integer(),
      optional("managedAgents") => list(managed_agent_state_change()()),
      optional("pullStartedAt") => non_neg_integer(),
      optional("pullStoppedAt") => non_neg_integer(),
      optional("reason") => String.t(),
      optional("status") => String.t(),
      optional("task") => String.t()
    }
  """

  @spec submit_task_state_change(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, submit_task_state_change_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, submit_task_state_change_errors()}

  def submit_task_state_change(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SubmitTaskStateChange", input, options)
  end

  @doc """
  Associates the specified tags to a resource with the specified `resourceArn`. If
  existing tags on a resource aren't specified in the request parameters, they
  aren't changed. When a resource is deleted, the tags that are associated with
  that resource are deleted as well.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:tag_resource_request`)
    %{
      required("resourceArn") => String.t(),
      required("tags") => list(tag()())
    }
  """

  @spec tag_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}

  def tag_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Deletes specified tags from a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:untag_resource_request`)
    %{
      required("resourceArn") => String.t(),
      required("tagKeys") => list(String.t()())
    }
  """

  @spec untag_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}

  def untag_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Modifies the parameters for a capacity provider.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20UpdateCapacityProvider&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_capacity_provider_request`)
    %{
      required("autoScalingGroupProvider") => auto_scaling_group_provider_update(),
      required("name") => String.t()
    }
  """

  @spec update_capacity_provider(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_capacity_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_capacity_provider_errors()}

  def update_capacity_provider(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateCapacityProvider", input, options)
  end

  @doc """
  Updates the cluster.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20UpdateCluster&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_cluster_request`)
    %{
      optional("configuration") => cluster_configuration(),
      optional("serviceConnectDefaults") => cluster_service_connect_defaults_request(),
      optional("settings") => list(cluster_setting()()),
      required("cluster") => String.t()
    }
  """

  @spec update_cluster(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_cluster_errors()}

  def update_cluster(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateCluster", input, options)
  end

  @doc """
  Modifies the settings to use for a cluster.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20UpdateClusterSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_cluster_settings_request`)
    %{
      required("cluster") => String.t(),
      required("settings") => list(cluster_setting()())
    }
  """

  @spec update_cluster_settings(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_cluster_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_cluster_settings_errors()}

  def update_cluster_settings(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateClusterSettings", input, options)
  end

  @doc """
  Updates the Amazon ECS container agent on a specified container instance.
  Updating the Amazon ECS container agent doesn't interrupt running tasks or
  services on the container instance. The process for updating the agent differs
  depending on whether your container instance was launched with the Amazon
  ECS-optimized AMI or another operating system. The `UpdateContainerAgent` API
  isn't supported for container instances using the Amazon ECS-optimized Amazon
  Linux 2 (arm64) AMI. To update the container agent, you can update the
  `ecs-init` package. This updates the agent. For more information, see
  [Updating the Amazon ECS container
  agent](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/agent-update-ecs-ami.html)
  in the *Amazon Elastic Container Service Developer Guide*. Agent updates with
  the `UpdateContainerAgent` API operation do not apply to Windows container
  instances. We recommend that you launch new container instances to update the
  agent version in your Windows clusters.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20UpdateContainerAgent&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_container_agent_request`)
    %{
      optional("cluster") => String.t(),
      required("containerInstance") => String.t()
    }
  """

  @spec update_container_agent(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_container_agent_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_container_agent_errors()}

  def update_container_agent(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateContainerAgent", input, options)
  end

  @doc """
  Modifies the status of an Amazon ECS container instance. Once a container
  instance has reached an `ACTIVE` state, you can change the status of a
  container instance to `DRAINING` to manually remove an instance from a
  cluster, for example to perform system updates, update the Docker daemon, or
  scale down the cluster size.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20UpdateContainerInstancesState&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_container_instances_state_request`)
    %{
      optional("cluster") => String.t(),
      required("containerInstances") => list(String.t()()),
      required("status") => list(any())
    }
  """

  @spec update_container_instances_state(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_container_instances_state_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_container_instances_state_errors()}

  def update_container_instances_state(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateContainerInstancesState", input, options)
  end

  @doc """
  Modifies the parameters of a service. On March 21, 2024, a change was made to
  resolve the task definition revision before authorization. When a task
  definition revision is not specified, authorization will occur using the
  latest revision of a task definition.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20UpdateService&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_service_request`)
    %{
      optional("capacityProviderStrategy") => list(capacity_provider_strategy_item()()),
      optional("cluster") => String.t(),
      optional("deploymentConfiguration") => deployment_configuration(),
      optional("desiredCount") => integer(),
      optional("enableECSManagedTags") => boolean(),
      optional("enableExecuteCommand") => boolean(),
      optional("forceNewDeployment") => boolean(),
      optional("healthCheckGracePeriodSeconds") => integer(),
      optional("loadBalancers") => list(load_balancer()()),
      optional("networkConfiguration") => network_configuration(),
      optional("placementConstraints") => list(placement_constraint()()),
      optional("placementStrategy") => list(placement_strategy()()),
      optional("platformVersion") => String.t(),
      optional("propagateTags") => list(any()),
      optional("serviceConnectConfiguration") => service_connect_configuration(),
      optional("serviceRegistries") => list(service_registry()()),
      optional("taskDefinition") => String.t(),
      optional("volumeConfigurations") => list(service_volume_configuration()()),
      required("service") => String.t()
    }
  """

  @spec update_service(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_service_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_service_errors()}

  def update_service(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateService", input, options)
  end

  @doc """
  Modifies which task set in a service is the primary task set. Any parameters
  that are updated on the primary task set in a service will transition to the
  service. This is used when a service uses the `EXTERNAL` deployment controller
  type. For more information, see [Amazon ECS Deployment
  Types](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html)
  in the *Amazon Elastic Container Service Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20UpdateServicePrimaryTaskSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_service_primary_task_set_request`)
    %{
      required("cluster") => String.t(),
      required("primaryTaskSet") => String.t(),
      required("service") => String.t()
    }
  """

  @spec update_service_primary_task_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_service_primary_task_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_service_primary_task_set_errors()}

  def update_service_primary_task_set(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateServicePrimaryTaskSet", input, options)
  end

  @doc """
  Updates the protection status of a task. You can set `protectionEnabled` to
  `true` to protect your task from termination during scale-in events from
  [Service
  Autoscaling](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-auto-scaling.html)
  or
  [deployments](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html).
  Task-protection, by default, expires after 2 hours at which point Amazon ECS
  clears the `protectionEnabled` property making the task eligible for
  termination by a subsequent scale-in event. You can specify a custom
  expiration period for task protection from 1 minute to up to 2,880 minutes (48
  hours). To specify the custom expiration period, set the `expiresInMinutes`
  property. The `expiresInMinutes` property is always reset when you invoke this
  operation for a task that already has `protectionEnabled` set to `true`. You
  can keep extending the protection expiration period of a task by invoking this
  operation repeatedly.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20UpdateTaskProtection&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_task_protection_request`)
    %{
      optional("expiresInMinutes") => integer(),
      required("cluster") => String.t(),
      required("protectionEnabled") => boolean(),
      required("tasks") => list(String.t()())
    }
  """

  @spec update_task_protection(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_task_protection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_task_protection_errors()}

  def update_task_protection(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateTaskProtection", input, options)
  end

  @doc """
  Modifies a task set. This is used when a service uses the `EXTERNAL` deployment
  controller type. For more information, see [Amazon ECS Deployment
  Types](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html)
  in the *Amazon Elastic Container Service Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecs%20UpdateTaskSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_task_set_request`)
    %{
      required("cluster") => String.t(),
      required("scale") => scale(),
      required("service") => String.t(),
      required("taskSet") => String.t()
    }
  """

  @spec update_task_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_task_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_task_set_errors()}

  def update_task_set(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateTaskSet", input, options)
  end
end
