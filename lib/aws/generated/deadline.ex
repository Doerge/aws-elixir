# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Deadline do
  @moduledoc """
  The Amazon Web Services Deadline Cloud API provides infrastructure and
  centralized management for your
  projects.

  Use the Deadline Cloud API to onboard users, assign projects, and attach
  permissions
  specific to their job function.

  With Deadline Cloud, content production teams can deploy resources for their
  workforce securely
  in the cloud, reducing the costs of added physical infrastructure. Keep your
  content
  production operations secure, while allowing your contributors to access the
  tools they
  need, such as scalable high-speed storage, licenses, and cost management
  services.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      list_fleet_members_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_fleet_members_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_queue_fleet_association_response() :: %{}

  """
  @type update_queue_fleet_association_response() :: %{}

  @typedoc """

  ## Example:

      list_steps_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_steps_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      windows_user() :: %{
        "passwordArn" => String.t(),
        "user" => String.t()
      }

  """
  @type windows_user() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_sessions_statistics_aggregation_response() :: %{
        "aggregationId" => String.t()
      }

  """
  @type start_sessions_statistics_aggregation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assume_queue_role_for_user_request() :: %{}

  """
  @type assume_queue_role_for_user_request() :: %{}

  @typedoc """

  ## Example:

      fleet_attribute_capability() :: %{
        "name" => String.t(),
        "values" => list(String.t()())
      }

  """
  @type fleet_attribute_capability() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_details_error() :: %{
        "code" => list(any()),
        "jobId" => String.t(),
        "message" => String.t()
      }

  """
  @type job_details_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_queue_environment_response() :: %{
        "queueEnvironmentId" => String.t()
      }

  """
  @type create_queue_environment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_queue_environments_response() :: %{
        "environments" => list(queue_environment_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_queue_environments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      fixed_budget_schedule() :: %{
        "endTime" => non_neg_integer(),
        "startTime" => non_neg_integer()
      }

  """
  @type fixed_budget_schedule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assigned_sync_input_job_attachments_session_action_definition() :: %{
        "stepId" => String.t()
      }

  """
  @type assigned_sync_input_job_attachments_session_action_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_queue_response() :: %{
        "allowedStorageProfileIds" => list(String.t()()),
        "blockedReason" => list(any()),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "defaultBudgetAction" => list(any()),
        "description" => String.t(),
        "displayName" => String.t(),
        "farmId" => String.t(),
        "jobAttachmentSettings" => job_attachment_settings(),
        "jobRunAsUser" => job_run_as_user(),
        "queueId" => String.t(),
        "requiredFileSystemLocationNames" => list(String.t()()),
        "roleArn" => String.t(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type get_queue_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        optional("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_task_response() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "endedAt" => non_neg_integer(),
        "failureRetryCount" => integer(),
        "latestSessionActionId" => String.t(),
        "parameters" => map(),
        "runStatus" => list(any()),
        "startedAt" => non_neg_integer(),
        "targetRunStatus" => list(any()),
        "taskId" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type get_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_fleet_request() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type delete_fleet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      environment_enter_session_action_definition_summary() :: %{
        "environmentId" => String.t()
      }

  """
  @type environment_enter_session_action_definition_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_queues_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("principalId") => String.t(),
        optional("status") => list(any())
      }

  """
  @type list_queues_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_member_to_farm_response() :: %{}

  """
  @type associate_member_to_farm_response() :: %{}

  @typedoc """

  ## Example:

      budget_action_to_remove() :: %{
        "thresholdPercentage" => float(),
        "type" => list(any())
      }

  """
  @type budget_action_to_remove() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      task_run_session_action_definition_summary() :: %{
        "stepId" => String.t(),
        "taskId" => String.t()
      }

  """
  @type task_run_session_action_definition_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      session_summary() :: %{
        "endedAt" => non_neg_integer(),
        "fleetId" => String.t(),
        "lifecycleStatus" => list(any()),
        "sessionId" => String.t(),
        "startedAt" => non_neg_integer(),
        "targetLifecycleStatus" => list(any()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t(),
        "workerId" => String.t()
      }

  """
  @type session_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_monitor_request() :: %{}

  """
  @type delete_monitor_request() :: %{}

  @typedoc """

  ## Example:

      disassociate_member_from_farm_request() :: %{}

  """
  @type disassociate_member_from_farm_request() :: %{}

  @typedoc """

  ## Example:

      search_tasks_request() :: %{
        optional("filterExpressions") => search_grouped_filter_expressions(),
        optional("jobId") => String.t(),
        optional("pageSize") => integer(),
        optional("sortExpressions") => list(list()()),
        required("itemOffset") => integer(),
        required("queueIds") => list(String.t()())
      }

  """
  @type search_tasks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_session_response() :: %{
        "endedAt" => non_neg_integer(),
        "fleetId" => String.t(),
        "hostProperties" => host_properties_response(),
        "lifecycleStatus" => list(any()),
        "log" => log_configuration(),
        "sessionId" => String.t(),
        "startedAt" => non_neg_integer(),
        "targetLifecycleStatus" => list(any()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t(),
        "workerId" => String.t(),
        "workerLog" => log_configuration()
      }

  """
  @type get_session_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_budget_response() :: %{}

  """
  @type delete_budget_response() :: %{}

  @typedoc """

  ## Example:

      list_monitors_response() :: %{
        "monitors" => list(monitor_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_monitors_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_job_response() :: %{
        "jobId" => String.t()
      }

  """
  @type create_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_job_entity_request() :: %{
        required("identifiers") => list(list()())
      }

  """
  @type batch_get_job_entity_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_step_request() :: %{
        optional("clientToken") => String.t(),
        required("targetTaskRunStatus") => list(any())
      }

  """
  @type update_step_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_session_actions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("sessionId") => String.t(),
        optional("taskId") => String.t()
      }

  """
  @type list_session_actions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_queue_fleet_association_request() :: %{}

  """
  @type delete_queue_fleet_association_request() :: %{}

  @typedoc """

  ## Example:

      batch_get_job_entity_response() :: %{
        "entities" => list(list()()),
        "errors" => list(list()())
      }

  """
  @type batch_get_job_entity_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_budget_response() :: %{
        "budgetId" => String.t()
      }

  """
  @type create_budget_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      updated_session_action_info() :: %{
        "completedStatus" => list(any()),
        "endedAt" => non_neg_integer(),
        "processExitCode" => integer(),
        "progressMessage" => String.t(),
        "progressPercent" => float(),
        "startedAt" => non_neg_integer(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type updated_session_action_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_member_from_queue_response() :: %{}

  """
  @type disassociate_member_from_queue_response() :: %{}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_queue_fleet_associations_response() :: %{
        "nextToken" => String.t(),
        "queueFleetAssociations" => list(queue_fleet_association_summary()())
      }

  """
  @type list_queue_fleet_associations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_sessions_for_worker_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_sessions_for_worker_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_task_request() :: %{}

  """
  @type get_task_request() :: %{}

  @typedoc """

  ## Example:

      list_available_metered_products_response() :: %{
        "meteredProducts" => list(metered_product_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_available_metered_products_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_fleet_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("minWorkerCount") => integer(),
        optional("tags") => map(),
        required("configuration") => list(),
        required("displayName") => String.t(),
        required("maxWorkerCount") => integer(),
        required("roleArn") => String.t()
      }

  """
  @type create_fleet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_managed_ec2_instance_market_options() :: %{
        "type" => list(any())
      }

  """
  @type service_managed_ec2_instance_market_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      fleet_capabilities() :: %{
        "amounts" => list(fleet_amount_capability()()),
        "attributes" => list(fleet_attribute_capability()())
      }

  """
  @type fleet_capabilities() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      step_required_capabilities() :: %{
        "amounts" => list(step_amount_capability()()),
        "attributes" => list(step_attribute_capability()())
      }

  """
  @type step_required_capabilities() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_jobs_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("principalId") => String.t()
      }

  """
  @type list_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_storage_profile_request() :: %{
        optional("clientToken") => String.t(),
        optional("displayName") => String.t(),
        optional("fileSystemLocationsToAdd") => list(file_system_location()()),
        optional("fileSystemLocationsToRemove") => list(file_system_location()()),
        optional("osFamily") => list(any())
      }

  """
  @type update_storage_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      v_cpu_count_range() :: %{
        "max" => integer(),
        "min" => integer()
      }

  """
  @type v_cpu_count_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_member_from_fleet_response() :: %{}

  """
  @type disassociate_member_from_fleet_response() :: %{}

  @typedoc """

  ## Example:

      get_worker_request() :: %{}

  """
  @type get_worker_request() :: %{}

  @typedoc """

  ## Example:

      get_monitor_request() :: %{}

  """
  @type get_monitor_request() :: %{}

  @typedoc """

  ## Example:

      delete_fleet_response() :: %{}

  """
  @type delete_fleet_response() :: %{}

  @typedoc """

  ## Example:

      budget_summary() :: %{
        "approximateDollarLimit" => float(),
        "budgetId" => String.t(),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "displayName" => String.t(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t(),
        "usageTrackingResource" => list(),
        "usages" => consumed_usages()
      }

  """
  @type budget_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_worker_request() :: %{
        optional("capabilities") => worker_capabilities(),
        optional("hostProperties") => host_properties_request(),
        optional("status") => list(any())
      }

  """
  @type update_worker_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_workers_request() :: %{
        optional("filterExpressions") => search_grouped_filter_expressions(),
        optional("pageSize") => integer(),
        optional("sortExpressions") => list(list()()),
        required("fleetIds") => list(String.t()()),
        required("itemOffset") => integer()
      }

  """
  @type search_workers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_term_filter_expression() :: %{
        "searchTerm" => String.t()
      }

  """
  @type search_term_filter_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      customer_managed_fleet_configuration() :: %{
        "mode" => list(any()),
        "storageProfileId" => String.t(),
        "workerCapabilities" => customer_managed_worker_capabilities()
      }

  """
  @type customer_managed_fleet_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_license_endpoints_response() :: %{
        "licenseEndpoints" => list(license_endpoint_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_license_endpoints_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_managed_ec2_fleet_configuration() :: %{
        "instanceCapabilities" => service_managed_ec2_instance_capabilities(),
        "instanceMarketOptions" => service_managed_ec2_instance_market_options()
      }

  """
  @type service_managed_ec2_fleet_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      string_filter_expression() :: %{
        "name" => String.t(),
        "operator" => list(any()),
        "value" => String.t()
      }

  """
  @type string_filter_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      worker_summary() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "farmId" => String.t(),
        "fleetId" => String.t(),
        "hostProperties" => host_properties_response(),
        "log" => log_configuration(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t(),
        "workerId" => String.t()
      }

  """
  @type worker_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      memory_mi_b_range() :: %{
        "max" => integer(),
        "min" => integer()
      }

  """
  @type memory_mi_b_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      manifest_properties() :: %{
        "fileSystemLocationName" => String.t(),
        "inputManifestHash" => String.t(),
        "inputManifestPath" => String.t(),
        "outputRelativeDirectories" => list(String.t()()),
        "rootPath" => String.t(),
        "rootPathFormat" => list(any())
      }

  """
  @type manifest_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_sessions_for_worker_response() :: %{
        "nextToken" => String.t(),
        "sessions" => list(worker_session_summary()())
      }

  """
  @type list_sessions_for_worker_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_fleets_request() :: %{
        optional("displayName") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("principalId") => String.t(),
        optional("status") => list(any())
      }

  """
  @type list_fleets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_budgets_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("status") => list(any())
      }

  """
  @type list_budgets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      worker_attribute_capability() :: %{
        "name" => String.t(),
        "values" => list(String.t()())
      }

  """
  @type worker_attribute_capability() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      environment_exit_session_action_definition() :: %{
        "environmentId" => String.t()
      }

  """
  @type environment_exit_session_action_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      task_summary() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "endedAt" => non_neg_integer(),
        "failureRetryCount" => integer(),
        "latestSessionActionId" => String.t(),
        "parameters" => map(),
        "runStatus" => list(any()),
        "startedAt" => non_neg_integer(),
        "targetRunStatus" => list(any()),
        "taskId" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type task_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dependency_counts() :: %{
        "consumersResolved" => integer(),
        "consumersUnresolved" => integer(),
        "dependenciesResolved" => integer(),
        "dependenciesUnresolved" => integer()
      }

  """
  @type dependency_counts() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      step_search_summary() :: %{
        "createdAt" => non_neg_integer(),
        "endedAt" => non_neg_integer(),
        "jobId" => String.t(),
        "lifecycleStatus" => list(any()),
        "lifecycleStatusMessage" => String.t(),
        "name" => String.t(),
        "parameterSpace" => parameter_space(),
        "queueId" => String.t(),
        "startedAt" => non_neg_integer(),
        "stepId" => String.t(),
        "targetTaskRunStatus" => list(any()),
        "taskRunStatus" => list(any()),
        "taskRunStatusCounts" => map()
      }

  """
  @type step_search_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_steps_response() :: %{
        "nextItemOffset" => integer(),
        "steps" => list(step_search_summary()()),
        "totalResults" => integer()
      }

  """
  @type search_steps_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_monitor_response() :: %{}

  """
  @type delete_monitor_response() :: %{}

  @typedoc """

  ## Example:

      associate_member_to_fleet_response() :: %{}

  """
  @type associate_member_to_fleet_response() :: %{}

  @typedoc """

  ## Example:

      step_amount_capability() :: %{
        "max" => float(),
        "min" => float(),
        "name" => String.t(),
        "value" => float()
      }

  """
  @type step_amount_capability() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assume_queue_role_for_worker_response() :: %{
        "credentials" => aws_credentials()
      }

  """
  @type assume_queue_role_for_worker_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_member_from_queue_request() :: %{}

  """
  @type disassociate_member_from_queue_request() :: %{}

  @typedoc """

  ## Example:

      date_time_filter_expression() :: %{
        "dateTime" => non_neg_integer(),
        "name" => String.t(),
        "operator" => list(any())
      }

  """
  @type date_time_filter_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_workers_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_workers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_jobs_response() :: %{
        "jobs" => list(job_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_job_request() :: %{
        optional("attachments") => attachments(),
        optional("clientToken") => String.t(),
        optional("maxFailedTasksCount") => integer(),
        optional("maxRetriesPerTask") => integer(),
        optional("parameters") => map(),
        optional("storageProfileId") => String.t(),
        optional("targetTaskRunStatus") => list(any()),
        required("priority") => integer(),
        required("template") => String.t(),
        required("templateType") => list(any())
      }

  """
  @type create_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_monitors_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_monitors_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_step_dependencies_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_step_dependencies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_storage_profile_response() :: %{}

  """
  @type update_storage_profile_response() :: %{}

  @typedoc """

  ## Example:

      list_fleets_response() :: %{
        "fleets" => list(fleet_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_fleets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      license_endpoint_summary() :: %{
        "licenseEndpointId" => String.t(),
        "status" => list(any()),
        "statusMessage" => String.t(),
        "vpcId" => String.t()
      }

  """
  @type license_endpoint_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ec2_ebs_volume() :: %{
        "iops" => integer(),
        "sizeGiB" => integer(),
        "throughputMiB" => integer()
      }

  """
  @type ec2_ebs_volume() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_queue_request() :: %{
        optional("allowedStorageProfileIdsToAdd") => list(String.t()()),
        optional("allowedStorageProfileIdsToRemove") => list(String.t()()),
        optional("clientToken") => String.t(),
        optional("defaultBudgetAction") => list(any()),
        optional("description") => String.t(),
        optional("displayName") => String.t(),
        optional("jobAttachmentSettings") => job_attachment_settings(),
        optional("jobRunAsUser") => job_run_as_user(),
        optional("requiredFileSystemLocationNamesToAdd") => list(String.t()()),
        optional("requiredFileSystemLocationNamesToRemove") => list(String.t()()),
        optional("roleArn") => String.t()
      }

  """
  @type update_queue_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_worker_schedule_request() :: %{
        optional("updatedSessionActions") => map()
      }

  """
  @type update_worker_schedule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_job_members_response() :: %{
        "members" => list(job_member()()),
        "nextToken" => String.t()
      }

  """
  @type list_job_members_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_monitor_response() :: %{}

  """
  @type update_monitor_response() :: %{}

  @typedoc """

  ## Example:

      storage_profile_summary() :: %{
        "displayName" => String.t(),
        "osFamily" => list(any()),
        "storageProfileId" => String.t()
      }

  """
  @type storage_profile_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_monitor_response() :: %{
        "identityCenterApplicationArn" => String.t(),
        "monitorId" => String.t()
      }

  """
  @type create_monitor_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_metered_product_response() :: %{}

  """
  @type delete_metered_product_response() :: %{}

  @typedoc """

  ## Example:

      get_session_request() :: %{}

  """
  @type get_session_request() :: %{}

  @typedoc """

  ## Example:

      get_storage_profile_response() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "displayName" => String.t(),
        "fileSystemLocations" => list(file_system_location()()),
        "osFamily" => list(any()),
        "storageProfileId" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type get_storage_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_managed_ec2_instance_capabilities() :: %{
        "allowedInstanceTypes" => list(String.t()()),
        "cpuArchitectureType" => list(any()),
        "customAmounts" => list(fleet_amount_capability()()),
        "customAttributes" => list(fleet_attribute_capability()()),
        "excludedInstanceTypes" => list(String.t()()),
        "memoryMiB" => memory_mi_b_range(),
        "osFamily" => list(any()),
        "rootEbsVolume" => ec2_ebs_volume(),
        "vCpuCount" => v_cpu_count_range()
      }

  """
  @type service_managed_ec2_instance_capabilities() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      task_search_summary() :: %{
        "endedAt" => non_neg_integer(),
        "failureRetryCount" => integer(),
        "jobId" => String.t(),
        "parameters" => map(),
        "queueId" => String.t(),
        "runStatus" => list(any()),
        "startedAt" => non_neg_integer(),
        "stepId" => String.t(),
        "targetRunStatus" => list(any()),
        "taskId" => String.t()
      }

  """
  @type task_search_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_session_actions_response() :: %{
        "nextToken" => String.t(),
        "sessionActions" => list(session_action_summary()())
      }

  """
  @type list_session_actions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      response_budget_action() :: %{
        "description" => String.t(),
        "thresholdPercentage" => float(),
        "type" => list(any())
      }

  """
  @type response_budget_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_budget_request() :: %{
        optional("actionsToAdd") => list(budget_action_to_add()()),
        optional("actionsToRemove") => list(budget_action_to_remove()()),
        optional("approximateDollarLimit") => float(),
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("displayName") => String.t(),
        optional("schedule") => list(),
        optional("status") => list(any())
      }

  """
  @type update_budget_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      step_attribute_capability() :: %{
        "allOf" => list(String.t()()),
        "anyOf" => list(String.t()()),
        "name" => String.t()
      }

  """
  @type step_attribute_capability() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      step_details_entity() :: %{
        "dependencies" => list(String.t()()),
        "jobId" => String.t(),
        "schemaVersion" => String.t(),
        "stepId" => String.t(),
        "template" => any()
      }

  """
  @type step_details_entity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_step_response() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "dependencyCounts" => dependency_counts(),
        "description" => String.t(),
        "endedAt" => non_neg_integer(),
        "lifecycleStatus" => list(any()),
        "lifecycleStatusMessage" => String.t(),
        "name" => String.t(),
        "parameterSpace" => parameter_space(),
        "requiredCapabilities" => step_required_capabilities(),
        "startedAt" => non_neg_integer(),
        "stepId" => String.t(),
        "targetTaskRunStatus" => list(any()),
        "taskRunStatus" => list(any()),
        "taskRunStatusCounts" => map(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type get_step_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      queue_summary() :: %{
        "blockedReason" => list(any()),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "defaultBudgetAction" => list(any()),
        "displayName" => String.t(),
        "farmId" => String.t(),
        "queueId" => String.t(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type queue_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_metered_product_request() :: %{}

  """
  @type put_metered_product_request() :: %{}

  @typedoc """

  ## Example:

      delete_storage_profile_response() :: %{}

  """
  @type delete_storage_profile_response() :: %{}

  @typedoc """

  ## Example:

      update_worker_schedule_response() :: %{
        "assignedSessions" => map(),
        "cancelSessionActions" => map(),
        "desiredWorkerStatus" => list(any()),
        "updateIntervalSeconds" => integer()
      }

  """
  @type update_worker_schedule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assigned_task_run_session_action_definition() :: %{
        "parameters" => map(),
        "stepId" => String.t(),
        "taskId" => String.t()
      }

  """
  @type assigned_task_run_session_action_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_queue_fleet_association_response() :: %{}

  """
  @type create_queue_fleet_association_response() :: %{}

  @typedoc """

  ## Example:

      delete_queue_environment_request() :: %{}

  """
  @type delete_queue_environment_request() :: %{}

  @typedoc """

  ## Example:

      job_member() :: %{
        "farmId" => String.t(),
        "identityStoreId" => String.t(),
        "jobId" => String.t(),
        "membershipLevel" => list(any()),
        "principalId" => String.t(),
        "principalType" => list(any()),
        "queueId" => String.t()
      }

  """
  @type job_member() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_license_endpoint_request() :: %{
        optional("clientToken") => String.t(),
        optional("tags") => map(),
        required("securityGroupIds") => list(String.t()()),
        required("subnetIds") => list(String.t()()),
        required("vpcId") => String.t()
      }

  """
  @type create_license_endpoint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assume_queue_role_for_read_request() :: %{}

  """
  @type assume_queue_role_for_read_request() :: %{}

  @typedoc """

  ## Example:

      search_grouped_filter_expressions() :: %{
        "filters" => list(list()()),
        "operator" => list(any())
      }

  """
  @type search_grouped_filter_expressions() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_worker_request() :: %{}

  """
  @type delete_worker_request() :: %{}

  @typedoc """

  ## Example:

      job_summary() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "endedAt" => non_neg_integer(),
        "jobId" => String.t(),
        "lifecycleStatus" => list(any()),
        "lifecycleStatusMessage" => String.t(),
        "maxFailedTasksCount" => integer(),
        "maxRetriesPerTask" => integer(),
        "name" => String.t(),
        "priority" => integer(),
        "startedAt" => non_neg_integer(),
        "targetTaskRunStatus" => list(any()),
        "taskRunStatus" => list(any()),
        "taskRunStatusCounts" => map(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_farm_request() :: %{
        optional("description") => String.t(),
        optional("displayName") => String.t()
      }

  """
  @type update_farm_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_jobs_request() :: %{
        optional("filterExpressions") => search_grouped_filter_expressions(),
        optional("pageSize") => integer(),
        optional("sortExpressions") => list(list()()),
        required("itemOffset") => integer(),
        required("queueIds") => list(String.t()())
      }

  """
  @type search_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_storage_profile_response() :: %{
        "storageProfileId" => String.t()
      }

  """
  @type create_storage_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_sessions_response() :: %{
        "nextToken" => String.t(),
        "sessions" => list(session_summary()())
      }

  """
  @type list_sessions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_details_entity() :: %{
        "jobAttachmentSettings" => job_attachment_settings(),
        "jobId" => String.t(),
        "jobRunAsUser" => job_run_as_user(),
        "logGroupName" => String.t(),
        "parameters" => map(),
        "pathMappingRules" => list(path_mapping_rule()()),
        "queueRoleArn" => String.t(),
        "schemaVersion" => String.t()
      }

  """
  @type job_details_entity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_task_response() :: %{}

  """
  @type update_task_response() :: %{}

  @typedoc """

  ## Example:

      list_storage_profiles_response() :: %{
        "nextToken" => String.t(),
        "storageProfiles" => list(storage_profile_summary()())
      }

  """
  @type list_storage_profiles_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_worker_response() :: %{
        "workerId" => String.t()
      }

  """
  @type create_worker_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assigned_environment_enter_session_action_definition() :: %{
        "environmentId" => String.t()
      }

  """
  @type assigned_environment_enter_session_action_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "context" => map(),
        "message" => String.t(),
        "reason" => list(any()),
        "resourceId" => String.t(),
        "resourceType" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_worker_response() :: %{}

  """
  @type delete_worker_response() :: %{}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "context" => map(),
        "message" => String.t(),
        "resourceId" => String.t(),
        "resourceType" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      posix_user() :: %{
        "group" => String.t(),
        "user" => String.t()
      }

  """
  @type posix_user() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      environment_details_entity() :: %{
        "environmentId" => String.t(),
        "jobId" => String.t(),
        "schemaVersion" => String.t(),
        "template" => any()
      }

  """
  @type environment_details_entity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_queue_environment_request() :: %{}

  """
  @type get_queue_environment_request() :: %{}

  @typedoc """

  ## Example:

      host_properties_response() :: %{
        "ec2InstanceArn" => String.t(),
        "ec2InstanceType" => String.t(),
        "hostName" => String.t(),
        "ipAddresses" => ip_addresses()
      }

  """
  @type host_properties_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_job_request() :: %{
        optional("clientToken") => String.t(),
        optional("lifecycleStatus") => list(any()),
        optional("maxFailedTasksCount") => integer(),
        optional("maxRetriesPerTask") => integer(),
        optional("priority") => integer(),
        optional("targetTaskRunStatus") => list(any())
      }

  """
  @type update_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      consumed_usages() :: %{
        "approximateDollarUsage" => [float()]
      }

  """
  @type consumed_usages() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_storage_profiles_for_queue_response() :: %{
        "nextToken" => String.t(),
        "storageProfiles" => list(storage_profile_summary()())
      }

  """
  @type list_storage_profiles_for_queue_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_session_action_response() :: %{
        "definition" => list(),
        "endedAt" => non_neg_integer(),
        "processExitCode" => integer(),
        "progressMessage" => String.t(),
        "progressPercent" => float(),
        "sessionActionId" => String.t(),
        "sessionId" => String.t(),
        "startedAt" => non_neg_integer(),
        "status" => list(any()),
        "workerUpdatedAt" => non_neg_integer()
      }

  """
  @type get_session_action_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_queue_request() :: %{}

  """
  @type get_queue_request() :: %{}

  @typedoc """

  ## Example:

      get_sessions_statistics_aggregation_response() :: %{
        "nextToken" => String.t(),
        "statistics" => list(statistics()()),
        "status" => list(any()),
        "statusMessage" => String.t()
      }

  """
  @type get_sessions_statistics_aggregation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_fleet_request() :: %{
        optional("clientToken") => String.t(),
        optional("configuration") => list(),
        optional("description") => String.t(),
        optional("displayName") => String.t(),
        optional("maxWorkerCount") => integer(),
        optional("minWorkerCount") => integer(),
        optional("roleArn") => String.t()
      }

  """
  @type update_fleet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_metered_products_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_metered_products_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_fleet_request() :: %{}

  """
  @type get_fleet_request() :: %{}

  @typedoc """

  ## Example:

      search_workers_response() :: %{
        "nextItemOffset" => integer(),
        "totalResults" => integer(),
        "workers" => list(worker_search_summary()())
      }

  """
  @type search_workers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "context" => map(),
        "message" => String.t(),
        "quotaCode" => String.t(),
        "reason" => list(any()),
        "resourceId" => String.t(),
        "resourceType" => String.t(),
        "serviceCode" => String.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_details_identifiers() :: %{
        "jobId" => String.t()
      }

  """
  @type job_details_identifiers() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_farm_response() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "displayName" => String.t(),
        "farmId" => String.t(),
        "kmsKeyArn" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type get_farm_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      step_parameter() :: %{
        "name" => String.t(),
        "type" => list(any())
      }

  """
  @type step_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_attachment_details_entity() :: %{
        "attachments" => attachments(),
        "jobId" => String.t()
      }

  """
  @type job_attachment_details_entity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      session_action_summary() :: %{
        "definition" => list(),
        "endedAt" => non_neg_integer(),
        "progressPercent" => float(),
        "sessionActionId" => String.t(),
        "startedAt" => non_neg_integer(),
        "status" => list(any()),
        "workerUpdatedAt" => non_neg_integer()
      }

  """
  @type session_action_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_queue_fleet_association_response() :: %{}

  """
  @type delete_queue_fleet_association_response() :: %{}

  @typedoc """

  ## Example:

      delete_farm_response() :: %{}

  """
  @type delete_farm_response() :: %{}

  @typedoc """

  ## Example:

      stats() :: %{
        "avg" => float(),
        "max" => float(),
        "min" => float(),
        "sum" => float()
      }

  """
  @type stats() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_license_endpoint_response() :: %{
        "licenseEndpointId" => String.t()
      }

  """
  @type create_license_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assume_queue_role_for_worker_request() :: %{
        required("queueId") => String.t()
      }

  """
  @type assume_queue_role_for_worker_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_queue_environment_request() :: %{
        optional("clientToken") => String.t(),
        optional("priority") => integer(),
        optional("template") => String.t(),
        optional("templateType") => list(any())
      }

  """
  @type update_queue_environment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      fleet_summary() :: %{
        "autoScalingStatus" => list(any()),
        "configuration" => list(),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "displayName" => String.t(),
        "farmId" => String.t(),
        "fleetId" => String.t(),
        "maxWorkerCount" => integer(),
        "minWorkerCount" => integer(),
        "status" => list(any()),
        "targetWorkerCount" => integer(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t(),
        "workerCount" => integer()
      }

  """
  @type fleet_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_job_members_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_job_members_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_session_request() :: %{
        optional("clientToken") => String.t(),
        required("targetLifecycleStatus") => list(any())
      }

  """
  @type update_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assume_queue_role_for_read_response() :: %{
        "credentials" => aws_credentials()
      }

  """
  @type assume_queue_role_for_read_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_budget_request() :: %{}

  """
  @type get_budget_request() :: %{}

  @typedoc """

  ## Example:

      update_budget_response() :: %{}

  """
  @type update_budget_response() :: %{}

  @typedoc """

  ## Example:

      assume_queue_role_for_user_response() :: %{
        "credentials" => aws_credentials()
      }

  """
  @type assume_queue_role_for_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      field_sort_expression() :: %{
        "name" => String.t(),
        "sortOrder" => list(any())
      }

  """
  @type field_sort_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_member_to_job_request() :: %{
        required("identityStoreId") => String.t(),
        required("membershipLevel") => list(any()),
        required("principalType") => list(any())
      }

  """
  @type associate_member_to_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      parameter_space() :: %{
        "combination" => String.t(),
        "parameters" => list(step_parameter()())
      }

  """
  @type parameter_space() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_metered_products_response() :: %{
        "meteredProducts" => list(metered_product_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_metered_products_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_sessions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_sessions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assume_fleet_role_for_read_response() :: %{
        "credentials" => aws_credentials()
      }

  """
  @type assume_fleet_role_for_read_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assigned_session() :: %{
        "jobId" => String.t(),
        "logConfiguration" => log_configuration(),
        "queueId" => String.t(),
        "sessionActions" => list(assigned_session_action()())
      }

  """
  @type assigned_session() :: %{String.t() => any()}

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

      search_jobs_response() :: %{
        "jobs" => list(job_search_summary()()),
        "nextItemOffset" => integer(),
        "totalResults" => integer()
      }

  """
  @type search_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      environment_exit_session_action_definition_summary() :: %{
        "environmentId" => String.t()
      }

  """
  @type environment_exit_session_action_definition_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_task_request() :: %{
        optional("clientToken") => String.t(),
        required("targetRunStatus") => list(any())
      }

  """
  @type update_task_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_queue_request() :: %{
        optional("allowedStorageProfileIds") => list(String.t()()),
        optional("clientToken") => String.t(),
        optional("defaultBudgetAction") => list(any()),
        optional("description") => String.t(),
        optional("jobAttachmentSettings") => job_attachment_settings(),
        optional("jobRunAsUser") => job_run_as_user(),
        optional("requiredFileSystemLocationNames") => list(String.t()()),
        optional("roleArn") => String.t(),
        optional("tags") => map(),
        required("displayName") => String.t()
      }

  """
  @type create_queue_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_location() :: %{
        "bucketName" => String.t(),
        "key" => String.t()
      }

  """
  @type s3_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_storage_profiles_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_storage_profiles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sync_input_job_attachments_session_action_definition() :: %{
        "stepId" => String.t()
      }

  """
  @type sync_input_job_attachments_session_action_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_queue_members_response() :: %{
        "members" => list(queue_member()()),
        "nextToken" => String.t()
      }

  """
  @type list_queue_members_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_queue_environment_response() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "name" => String.t(),
        "priority" => integer(),
        "queueEnvironmentId" => String.t(),
        "template" => String.t(),
        "templateType" => list(any()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type get_queue_environment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_monitor_request() :: %{
        optional("displayName") => String.t(),
        optional("roleArn") => String.t(),
        optional("subdomain") => String.t()
      }

  """
  @type update_monitor_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_farm_request() :: %{}

  """
  @type get_farm_request() :: %{}

  @typedoc """

  ## Example:

      create_queue_environment_request() :: %{
        optional("clientToken") => String.t(),
        required("priority") => integer(),
        required("template") => String.t(),
        required("templateType") => list(any())
      }

  """
  @type create_queue_environment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      queue_environment_summary() :: %{
        "name" => String.t(),
        "priority" => integer(),
        "queueEnvironmentId" => String.t()
      }

  """
  @type queue_environment_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_farm_members_response() :: %{
        "members" => list(farm_member()()),
        "nextToken" => String.t()
      }

  """
  @type list_farm_members_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_member_from_job_request() :: %{}

  """
  @type disassociate_member_from_job_request() :: %{}

  @typedoc """

  ## Example:

      step_details_error() :: %{
        "code" => list(any()),
        "jobId" => String.t(),
        "message" => String.t(),
        "stepId" => String.t()
      }

  """
  @type step_details_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      environment_enter_session_action_definition() :: %{
        "environmentId" => String.t()
      }

  """
  @type environment_enter_session_action_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_steps_request() :: %{
        optional("filterExpressions") => search_grouped_filter_expressions(),
        optional("jobId") => String.t(),
        optional("pageSize") => integer(),
        optional("sortExpressions") => list(list()()),
        required("itemOffset") => integer(),
        required("queueIds") => list(String.t()())
      }

  """
  @type search_steps_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_fleet_response() :: %{}

  """
  @type update_fleet_response() :: %{}

  @typedoc """

  ## Example:

      update_job_response() :: %{}

  """
  @type update_job_response() :: %{}

  @typedoc """

  ## Example:

      get_license_endpoint_response() :: %{
        "dnsName" => String.t(),
        "licenseEndpointId" => String.t(),
        "securityGroupIds" => list(String.t()()),
        "status" => list(any()),
        "statusMessage" => String.t(),
        "subnetIds" => list(String.t()()),
        "vpcId" => String.t()
      }

  """
  @type get_license_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_farm_response() :: %{
        "farmId" => String.t()
      }

  """
  @type create_farm_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_worker_response() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "farmId" => String.t(),
        "fleetId" => String.t(),
        "hostProperties" => host_properties_response(),
        "log" => log_configuration(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t(),
        "workerId" => String.t()
      }

  """
  @type get_worker_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_run_as_user() :: %{
        "posix" => posix_user(),
        "runAs" => list(any()),
        "windows" => windows_user()
      }

  """
  @type job_run_as_user() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_queue_fleet_association_request() :: %{
        required("fleetId") => String.t(),
        required("queueId") => String.t()
      }

  """
  @type create_queue_fleet_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      attachments() :: %{
        "fileSystem" => list(any()),
        "manifests" => list(manifest_properties()())
      }

  """
  @type attachments() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      task_run_session_action_definition() :: %{
        "parameters" => map(),
        "stepId" => String.t(),
        "taskId" => String.t()
      }

  """
  @type task_run_session_action_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      accelerator_total_memory_mi_b_range() :: %{
        "max" => integer(),
        "min" => integer()
      }

  """
  @type accelerator_total_memory_mi_b_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_metered_product_response() :: %{}

  """
  @type put_metered_product_response() :: %{}

  @typedoc """

  ## Example:

      step_dependency() :: %{
        "status" => list(any()),
        "stepId" => String.t()
      }

  """
  @type step_dependency() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_member_to_fleet_request() :: %{
        required("identityStoreId") => String.t(),
        required("membershipLevel") => list(any()),
        required("principalType") => list(any())
      }

  """
  @type associate_member_to_fleet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user_jobs_first() :: %{
        "userIdentityId" => String.t()
      }

  """
  @type user_jobs_first() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_session_action_request() :: %{}

  """
  @type get_session_action_request() :: %{}

  @typedoc """

  ## Example:

      list_steps_response() :: %{
        "nextToken" => String.t(),
        "steps" => list(step_summary()())
      }

  """
  @type list_steps_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_workers_response() :: %{
        "nextToken" => String.t(),
        "workers" => list(worker_summary()())
      }

  """
  @type list_workers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_sessions_statistics_aggregation_request() :: %{
        optional("period") => list(any()),
        optional("timezone") => String.t(),
        required("endTime") => non_neg_integer(),
        required("groupBy") => list(list(any())()),
        required("resourceIds") => list(),
        required("startTime") => non_neg_integer(),
        required("statistics") => list(list(any())())
      }

  """
  @type start_sessions_statistics_aggregation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_farm_members_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_farm_members_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      environment_details_error() :: %{
        "code" => list(any()),
        "environmentId" => String.t(),
        "jobId" => String.t(),
        "message" => String.t()
      }

  """
  @type environment_details_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_step_consumers_response() :: %{
        "consumers" => list(step_consumer()()),
        "nextToken" => String.t()
      }

  """
  @type list_step_consumers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_member_to_queue_request() :: %{
        required("identityStoreId") => String.t(),
        required("membershipLevel") => list(any()),
        required("principalType") => list(any())
      }

  """
  @type associate_member_to_queue_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_storage_profile_request() :: %{
        optional("clientToken") => String.t(),
        optional("fileSystemLocations") => list(file_system_location()()),
        required("displayName") => String.t(),
        required("osFamily") => list(any())
      }

  """
  @type create_storage_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_tasks_response() :: %{
        "nextItemOffset" => integer(),
        "tasks" => list(task_search_summary()()),
        "totalResults" => integer()
      }

  """
  @type search_tasks_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      worker_amount_capability() :: %{
        "name" => String.t(),
        "value" => [float()]
      }

  """
  @type worker_amount_capability() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      customer_managed_worker_capabilities() :: %{
        "acceleratorCount" => accelerator_count_range(),
        "acceleratorTotalMemoryMiB" => accelerator_total_memory_mi_b_range(),
        "acceleratorTypes" => list(list(any())()),
        "cpuArchitectureType" => list(any()),
        "customAmounts" => list(fleet_amount_capability()()),
        "customAttributes" => list(fleet_attribute_capability()()),
        "memoryMiB" => memory_mi_b_range(),
        "osFamily" => list(any()),
        "vCpuCount" => v_cpu_count_range()
      }

  """
  @type customer_managed_worker_capabilities() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "context" => map(),
        "message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assigned_environment_exit_session_action_definition() :: %{
        "environmentId" => String.t()
      }

  """
  @type assigned_environment_exit_session_action_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ip_addresses() :: %{
        "ipV4Addresses" => list(String.t()()),
        "ipV6Addresses" => list(String.t()())
      }

  """
  @type ip_addresses() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sessions_statistics_aggregation_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("aggregationId") => String.t()
      }

  """
  @type get_sessions_statistics_aggregation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      copy_job_template_response() :: %{
        "templateType" => list(any())
      }

  """
  @type copy_job_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      aws_credentials() :: %{
        "accessKeyId" => String.t(),
        "expiration" => non_neg_integer(),
        "secretAccessKey" => String.t(),
        "sessionToken" => String.t()
      }

  """
  @type aws_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      fleet_amount_capability() :: %{
        "max" => [float()],
        "min" => [float()],
        "name" => String.t()
      }

  """
  @type fleet_amount_capability() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_queue_fleet_association_response() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "fleetId" => String.t(),
        "queueId" => String.t(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type get_queue_fleet_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_budget_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        required("actions") => list(budget_action_to_add()()),
        required("approximateDollarLimit") => float(),
        required("displayName") => String.t(),
        required("schedule") => list(),
        required("usageTrackingResource") => list()
      }

  """
  @type create_budget_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_budgets_response() :: %{
        "budgets" => list(budget_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_budgets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_storage_profile_request() :: %{}

  """
  @type delete_storage_profile_request() :: %{}

  @typedoc """

  ## Example:

      statistics() :: %{
        "aggregationEndTime" => non_neg_integer(),
        "aggregationStartTime" => non_neg_integer(),
        "costInUsd" => stats(),
        "count" => integer(),
        "fleetId" => String.t(),
        "instanceType" => String.t(),
        "jobId" => String.t(),
        "jobName" => String.t(),
        "licenseProduct" => String.t(),
        "queueId" => String.t(),
        "runtimeInSeconds" => stats(),
        "usageType" => list(any()),
        "userId" => String.t()
      }

  """
  @type statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_job_response() :: %{
        "attachments" => attachments(),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "endedAt" => non_neg_integer(),
        "jobId" => String.t(),
        "lifecycleStatus" => list(any()),
        "lifecycleStatusMessage" => String.t(),
        "maxFailedTasksCount" => integer(),
        "maxRetriesPerTask" => integer(),
        "name" => String.t(),
        "parameters" => map(),
        "priority" => integer(),
        "startedAt" => non_neg_integer(),
        "storageProfileId" => String.t(),
        "targetTaskRunStatus" => list(any()),
        "taskRunStatus" => list(any()),
        "taskRunStatusCounts" => map(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type get_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_storage_profile_request() :: %{}

  """
  @type get_storage_profile_request() :: %{}

  @typedoc """

  ## Example:

      update_queue_environment_response() :: %{}

  """
  @type update_queue_environment_response() :: %{}

  @typedoc """

  ## Example:

      queue_fleet_association_summary() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "fleetId" => String.t(),
        "queueId" => String.t(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type queue_fleet_association_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "context" => map(),
        "fieldList" => list(validation_exception_field()()),
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

      disassociate_member_from_fleet_request() :: %{}

  """
  @type disassociate_member_from_fleet_request() :: %{}

  @typedoc """

  ## Example:

      assume_fleet_role_for_read_request() :: %{}

  """
  @type assume_fleet_role_for_read_request() :: %{}

  @typedoc """

  ## Example:

      update_step_response() :: %{}

  """
  @type update_step_response() :: %{}

  @typedoc """

  ## Example:

      internal_server_error_exception() :: %{
        "message" => String.t(),
        "retryAfterSeconds" => integer()
      }

  """
  @type internal_server_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      environment_details_identifiers() :: %{
        "environmentId" => String.t(),
        "jobId" => String.t()
      }

  """
  @type environment_details_identifiers() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_step_request() :: %{}

  """
  @type get_step_request() :: %{}

  @typedoc """

  ## Example:

      get_job_request() :: %{}

  """
  @type get_job_request() :: %{}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "context" => map(),
        "message" => String.t(),
        "quotaCode" => String.t(),
        "retryAfterSeconds" => integer(),
        "serviceCode" => String.t()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assume_fleet_role_for_worker_response() :: %{
        "credentials" => aws_credentials()
      }

  """
  @type assume_fleet_role_for_worker_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_attachment_details_error() :: %{
        "code" => list(any()),
        "jobId" => String.t(),
        "message" => String.t()
      }

  """
  @type job_attachment_details_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_license_endpoint_response() :: %{}

  """
  @type delete_license_endpoint_response() :: %{}

  @typedoc """

  ## Example:

      update_farm_response() :: %{}

  """
  @type update_farm_response() :: %{}

  @typedoc """

  ## Example:

      associate_member_to_job_response() :: %{}

  """
  @type associate_member_to_job_response() :: %{}

  @typedoc """

  ## Example:

      list_queue_environments_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_queue_environments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_monitor_response() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "displayName" => String.t(),
        "identityCenterApplicationArn" => String.t(),
        "identityCenterInstanceArn" => String.t(),
        "monitorId" => String.t(),
        "roleArn" => String.t(),
        "subdomain" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t(),
        "url" => String.t()
      }

  """
  @type get_monitor_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assigned_session_action() :: %{
        "definition" => list(),
        "sessionActionId" => String.t()
      }

  """
  @type assigned_session_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      parameter_sort_expression() :: %{
        "name" => String.t(),
        "sortOrder" => list(any())
      }

  """
  @type parameter_sort_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_available_metered_products_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_available_metered_products_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_session_response() :: %{}

  """
  @type update_session_response() :: %{}

  @typedoc """

  ## Example:

      list_tasks_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_tasks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_queues_response() :: %{
        "nextToken" => String.t(),
        "queues" => list(queue_summary()())
      }

  """
  @type list_queues_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_queue_environment_response() :: %{}

  """
  @type delete_queue_environment_response() :: %{}

  @typedoc """

  ## Example:

      list_license_endpoints_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_license_endpoints_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_queue_fleet_associations_request() :: %{
        optional("fleetId") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("queueId") => String.t()
      }

  """
  @type list_queue_fleet_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_queue_fleet_association_request() :: %{
        required("status") => list(any())
      }

  """
  @type update_queue_fleet_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      metered_product_summary() :: %{
        "family" => String.t(),
        "port" => integer(),
        "productId" => String.t(),
        "vendor" => String.t()
      }

  """
  @type metered_product_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_queue_response() :: %{}

  """
  @type update_queue_response() :: %{}

  @typedoc """

  ## Example:

      queue_member() :: %{
        "farmId" => String.t(),
        "identityStoreId" => String.t(),
        "membershipLevel" => list(any()),
        "principalId" => String.t(),
        "principalType" => list(any()),
        "queueId" => String.t()
      }

  """
  @type queue_member() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_farm_request() :: %{}

  """
  @type delete_farm_request() :: %{}

  @typedoc """

  ## Example:

      delete_queue_request() :: %{}

  """
  @type delete_queue_request() :: %{}

  @typedoc """

  ## Example:

      delete_budget_request() :: %{}

  """
  @type delete_budget_request() :: %{}

  @typedoc """

  ## Example:

      update_worker_response() :: %{
        "log" => log_configuration()
      }

  """
  @type update_worker_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sync_input_job_attachments_session_action_definition_summary() :: %{
        "stepId" => String.t()
      }

  """
  @type sync_input_job_attachments_session_action_definition_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_search_summary() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "endedAt" => non_neg_integer(),
        "jobId" => String.t(),
        "jobParameters" => map(),
        "lifecycleStatus" => list(any()),
        "lifecycleStatusMessage" => String.t(),
        "maxFailedTasksCount" => integer(),
        "maxRetriesPerTask" => integer(),
        "name" => String.t(),
        "priority" => integer(),
        "queueId" => String.t(),
        "startedAt" => non_neg_integer(),
        "targetTaskRunStatus" => list(any()),
        "taskRunStatus" => list(any()),
        "taskRunStatusCounts" => map()
      }

  """
  @type job_search_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_storage_profile_for_queue_request() :: %{}

  """
  @type get_storage_profile_for_queue_request() :: %{}

  @typedoc """

  ## Example:

      copy_job_template_request() :: %{
        required("targetS3Location") => s3_location()
      }

  """
  @type copy_job_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      path_mapping_rule() :: %{
        "destinationPath" => String.t(),
        "sourcePath" => String.t(),
        "sourcePathFormat" => list(any())
      }

  """
  @type path_mapping_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_worker_request() :: %{
        optional("clientToken") => String.t(),
        optional("hostProperties") => host_properties_request()
      }

  """
  @type create_worker_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_member_from_job_response() :: %{}

  """
  @type disassociate_member_from_job_response() :: %{}

  @typedoc """

  ## Example:

      job_attachment_details_identifiers() :: %{
        "jobId" => String.t()
      }

  """
  @type job_attachment_details_identifiers() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_queue_fleet_association_request() :: %{}

  """
  @type get_queue_fleet_association_request() :: %{}

  @typedoc """

  ## Example:

      delete_license_endpoint_request() :: %{}

  """
  @type delete_license_endpoint_request() :: %{}

  @typedoc """

  ## Example:

      budget_action_to_add() :: %{
        "description" => String.t(),
        "thresholdPercentage" => float(),
        "type" => list(any())
      }

  """
  @type budget_action_to_add() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_monitor_request() :: %{
        optional("clientToken") => String.t(),
        required("displayName") => String.t(),
        required("identityCenterInstanceArn") => String.t(),
        required("roleArn") => String.t(),
        required("subdomain") => String.t()
      }

  """
  @type create_monitor_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_metered_product_request() :: %{}

  """
  @type delete_metered_product_request() :: %{}

  @typedoc """

  ## Example:

      list_tasks_response() :: %{
        "nextToken" => String.t(),
        "tasks" => list(task_summary()())
      }

  """
  @type list_tasks_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_budget_response() :: %{
        "actions" => list(response_budget_action()()),
        "approximateDollarLimit" => float(),
        "budgetId" => String.t(),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "displayName" => String.t(),
        "queueStoppedAt" => non_neg_integer(),
        "schedule" => list(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t(),
        "usageTrackingResource" => list(),
        "usages" => consumed_usages()
      }

  """
  @type get_budget_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_member_to_farm_request() :: %{
        required("identityStoreId") => String.t(),
        required("membershipLevel") => list(any()),
        required("principalType") => list(any())
      }

  """
  @type associate_member_to_farm_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      step_summary() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "dependencyCounts" => dependency_counts(),
        "endedAt" => non_neg_integer(),
        "lifecycleStatus" => list(any()),
        "lifecycleStatusMessage" => String.t(),
        "name" => String.t(),
        "startedAt" => non_neg_integer(),
        "stepId" => String.t(),
        "targetTaskRunStatus" => list(any()),
        "taskRunStatus" => list(any()),
        "taskRunStatusCounts" => map(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type step_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_farm_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("kmsKeyArn") => String.t(),
        optional("tags") => map(),
        required("displayName") => String.t()
      }

  """
  @type create_farm_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      host_properties_request() :: %{
        "hostName" => String.t(),
        "ipAddresses" => ip_addresses()
      }

  """
  @type host_properties_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      log_configuration() :: %{
        "error" => String.t(),
        "logDriver" => String.t(),
        "options" => map(),
        "parameters" => map()
      }

  """
  @type log_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_fleet_members_response() :: %{
        "members" => list(fleet_member()()),
        "nextToken" => String.t()
      }

  """
  @type list_fleet_members_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      file_system_location() :: %{
        "name" => String.t(),
        "path" => String.t(),
        "type" => list(any())
      }

  """
  @type file_system_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_queue_response() :: %{}

  """
  @type delete_queue_response() :: %{}

  @typedoc """

  ## Example:

      create_fleet_response() :: %{
        "fleetId" => String.t()
      }

  """
  @type create_fleet_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      worker_session_summary() :: %{
        "endedAt" => non_neg_integer(),
        "jobId" => String.t(),
        "lifecycleStatus" => list(any()),
        "queueId" => String.t(),
        "sessionId" => String.t(),
        "startedAt" => non_neg_integer(),
        "targetLifecycleStatus" => list(any())
      }

  """
  @type worker_session_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      step_consumer() :: %{
        "status" => list(any()),
        "stepId" => String.t()
      }

  """
  @type step_consumer() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_storage_profiles_for_queue_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_storage_profiles_for_queue_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_fleet_response() :: %{
        "autoScalingStatus" => list(any()),
        "capabilities" => fleet_capabilities(),
        "configuration" => list(),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "displayName" => String.t(),
        "farmId" => String.t(),
        "fleetId" => String.t(),
        "maxWorkerCount" => integer(),
        "minWorkerCount" => integer(),
        "roleArn" => String.t(),
        "status" => list(any()),
        "targetWorkerCount" => integer(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t(),
        "workerCount" => integer()
      }

  """
  @type get_fleet_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_member_to_queue_response() :: %{}

  """
  @type associate_member_to_queue_response() :: %{}

  @typedoc """

  ## Example:

      list_queue_members_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_queue_members_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      farm_summary() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "displayName" => String.t(),
        "farmId" => String.t(),
        "kmsKeyArn" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type farm_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      monitor_summary() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "displayName" => String.t(),
        "identityCenterApplicationArn" => String.t(),
        "identityCenterInstanceArn" => String.t(),
        "monitorId" => String.t(),
        "roleArn" => String.t(),
        "subdomain" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t(),
        "url" => String.t()
      }

  """
  @type monitor_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_member_from_farm_response() :: %{}

  """
  @type disassociate_member_from_farm_response() :: %{}

  @typedoc """

  ## Example:

      get_license_endpoint_request() :: %{}

  """
  @type get_license_endpoint_request() :: %{}

  @typedoc """

  ## Example:

      parameter_filter_expression() :: %{
        "name" => String.t(),
        "operator" => list(any()),
        "value" => String.t()
      }

  """
  @type parameter_filter_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_farms_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("principalId") => String.t()
      }

  """
  @type list_farms_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      accelerator_count_range() :: %{
        "max" => integer(),
        "min" => integer()
      }

  """
  @type accelerator_count_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_step_consumers_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_step_consumers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      step_details_identifiers() :: %{
        "jobId" => String.t(),
        "stepId" => String.t()
      }

  """
  @type step_details_identifiers() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assume_fleet_role_for_worker_request() :: %{}

  """
  @type assume_fleet_role_for_worker_request() :: %{}

  @typedoc """

  ## Example:

      farm_member() :: %{
        "farmId" => String.t(),
        "identityStoreId" => String.t(),
        "membershipLevel" => list(any()),
        "principalId" => String.t(),
        "principalType" => list(any())
      }

  """
  @type farm_member() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_queue_response() :: %{
        "queueId" => String.t()
      }

  """
  @type create_queue_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      worker_capabilities() :: %{
        "amounts" => list(worker_amount_capability()()),
        "attributes" => list(worker_attribute_capability()())
      }

  """
  @type worker_capabilities() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      worker_search_summary() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "fleetId" => String.t(),
        "hostProperties" => host_properties_response(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t(),
        "workerId" => String.t()
      }

  """
  @type worker_search_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_farms_response() :: %{
        "farms" => list(farm_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_farms_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_step_dependencies_response() :: %{
        "dependencies" => list(step_dependency()()),
        "nextToken" => String.t()
      }

  """
  @type list_step_dependencies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_attachment_settings() :: %{
        "rootPrefix" => String.t(),
        "s3BucketName" => String.t()
      }

  """
  @type job_attachment_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_storage_profile_for_queue_response() :: %{
        "displayName" => String.t(),
        "fileSystemLocations" => list(file_system_location()()),
        "osFamily" => list(any()),
        "storageProfileId" => String.t()
      }

  """
  @type get_storage_profile_for_queue_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      fleet_member() :: %{
        "farmId" => String.t(),
        "fleetId" => String.t(),
        "identityStoreId" => String.t(),
        "membershipLevel" => list(any()),
        "principalId" => String.t(),
        "principalType" => list(any())
      }

  """
  @type fleet_member() :: %{String.t() => any()}

  @type associate_member_to_farm_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type associate_member_to_fleet_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type associate_member_to_job_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type associate_member_to_queue_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type assume_fleet_role_for_read_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type assume_fleet_role_for_worker_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type assume_queue_role_for_read_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type assume_queue_role_for_user_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type assume_queue_role_for_worker_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type batch_get_job_entity_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type copy_job_template_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type create_budget_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type create_farm_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type create_fleet_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type create_job_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type create_license_endpoint_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_monitor_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()

  @type create_queue_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type create_queue_environment_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type create_queue_fleet_association_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type create_storage_profile_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type create_worker_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_budget_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type delete_farm_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type delete_fleet_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_license_endpoint_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_metered_product_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type delete_monitor_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type delete_queue_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_queue_environment_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()

  @type delete_queue_fleet_association_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_storage_profile_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()

  @type delete_worker_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_member_from_farm_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type disassociate_member_from_fleet_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_member_from_job_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type disassociate_member_from_queue_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_budget_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_farm_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_fleet_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_job_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_license_endpoint_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_monitor_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_queue_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_queue_environment_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_queue_fleet_association_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_session_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_session_action_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_sessions_statistics_aggregation_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_step_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_storage_profile_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_storage_profile_for_queue_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_task_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_worker_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_available_metered_products_errors() ::
          throttling_exception() | internal_server_error_exception()

  @type list_budgets_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_farm_members_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_farms_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()

  @type list_fleet_members_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_fleets_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_job_members_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_jobs_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_license_endpoints_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_metered_products_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_monitors_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()

  @type list_queue_environments_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_queue_fleet_associations_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_queue_members_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_queues_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_session_actions_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_sessions_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_sessions_for_worker_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_step_consumers_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_step_dependencies_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_steps_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_storage_profiles_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_storage_profiles_for_queue_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_tasks_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_workers_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type put_metered_product_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type search_jobs_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type search_steps_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type search_tasks_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type search_workers_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type start_sessions_statistics_aggregation_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_budget_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type update_farm_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type update_fleet_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type update_job_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_monitor_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type update_queue_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type update_queue_environment_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type update_queue_fleet_association_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type update_session_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_step_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_storage_profile_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type update_task_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_worker_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_worker_schedule_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2023-10-12",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "deadline",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "deadline",
      signature_version: "v4",
      signing_name: "deadline",
      target_prefix: nil
    }
  end

  @doc """
  Assigns a farm membership level to a member.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :principal_id (t:string String.t/0) (principalId)

  ## Optional parameters:
  """
  @spec associate_member_to_farm(
          AWS.Client.t(),
          String.t(),
          String.t(),
          associate_member_to_farm_request(),
          Keyword.t()
        ) ::
          {:ok, associate_member_to_farm_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_member_to_farm_errors()}
  def associate_member_to_farm(%Client{} = client, farm_id, principal_id, input, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/members/#{AWS.Util.encode_uri(principal_id)}"

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Assigns a fleet membership level to a member.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :fleet_id (t:string String.t/0) (fleetId)
   • :principal_id (t:string String.t/0) (principalId)

  ## Optional parameters:
  """
  @spec associate_member_to_fleet(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          associate_member_to_fleet_request(),
          Keyword.t()
        ) ::
          {:ok, associate_member_to_fleet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_member_to_fleet_errors()}
  def associate_member_to_fleet(
        %Client{} = client,
        farm_id,
        fleet_id,
        principal_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/fleets/#{AWS.Util.encode_uri(fleet_id)}/members/#{AWS.Util.encode_uri(principal_id)}"

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Assigns a job membership level to a member

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :job_id (t:string String.t/0) (jobId)
   • :principal_id (t:string String.t/0) (principalId)
   • :queue_id (t:string String.t/0) (queueId)

  ## Optional parameters:
  """
  @spec associate_member_to_job(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          associate_member_to_job_request(),
          Keyword.t()
        ) ::
          {:ok, associate_member_to_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_member_to_job_errors()}
  def associate_member_to_job(
        %Client{} = client,
        farm_id,
        job_id,
        principal_id,
        queue_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/jobs/#{AWS.Util.encode_uri(job_id)}/members/#{AWS.Util.encode_uri(principal_id)}"

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Assigns a queue membership level to a member

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :principal_id (t:string String.t/0) (principalId)
   • :queue_id (t:string String.t/0) (queueId)

  ## Optional parameters:
  """
  @spec associate_member_to_queue(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          associate_member_to_queue_request(),
          Keyword.t()
        ) ::
          {:ok, associate_member_to_queue_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_member_to_queue_errors()}
  def associate_member_to_queue(
        %Client{} = client,
        farm_id,
        principal_id,
        queue_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/members/#{AWS.Util.encode_uri(principal_id)}"

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Get Amazon Web Services credentials from the fleet role.

  The IAM permissions of the credentials are
  scoped down to have read-only access.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :fleet_id (t:string String.t/0) (fleetId)

  ## Optional parameters:
  """
  @spec assume_fleet_role_for_read(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, assume_fleet_role_for_read_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, assume_fleet_role_for_read_errors()}
  def assume_fleet_role_for_read(%Client{} = client, farm_id, fleet_id, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/fleets/#{AWS.Util.encode_uri(fleet_id)}/read-roles"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [
    # ])

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get credentials from the fleet role for a worker.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :fleet_id (t:string String.t/0) (fleetId)
   • :worker_id (t:string String.t/0) (workerId)

  ## Optional parameters:
  """
  @spec assume_fleet_role_for_worker(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, assume_fleet_role_for_worker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, assume_fleet_role_for_worker_errors()}
  def assume_fleet_role_for_worker(
        %Client{} = client,
        farm_id,
        fleet_id,
        worker_id,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/fleets/#{AWS.Util.encode_uri(fleet_id)}/workers/#{AWS.Util.encode_uri(worker_id)}/fleet-roles"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [
    # ])

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "scheduling.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets Amazon Web Services credentials from the queue role.

  The IAM permissions of the credentials are
  scoped down to have read-only access.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :queue_id (t:string String.t/0) (queueId)

  ## Optional parameters:
  """
  @spec assume_queue_role_for_read(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, assume_queue_role_for_read_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, assume_queue_role_for_read_errors()}
  def assume_queue_role_for_read(%Client{} = client, farm_id, queue_id, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/read-roles"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [
    # ])

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Allows a user to assume a role for a queue.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :queue_id (t:string String.t/0) (queueId)

  ## Optional parameters:
  """
  @spec assume_queue_role_for_user(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, assume_queue_role_for_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, assume_queue_role_for_user_errors()}
  def assume_queue_role_for_user(%Client{} = client, farm_id, queue_id, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/user-roles"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [
    # ])

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Allows a worker to assume a queue role.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :fleet_id (t:string String.t/0) (fleetId)
   • :worker_id (t:string String.t/0) (workerId)

  ## Optional parameters:
   • :queue_id (t:String.t/0) (queueId)
  """
  @spec assume_queue_role_for_worker(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, assume_queue_role_for_worker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, assume_queue_role_for_worker_errors()}
  def assume_queue_role_for_worker(
        %Client{} = client,
        farm_id,
        fleet_id,
        worker_id,
        queue_id,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/fleets/#{AWS.Util.encode_uri(fleet_id)}/workers/#{AWS.Util.encode_uri(worker_id)}/queue-roles"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [queue_id: nil
    # ])

    headers = []
    query_params = []

    {queue_id, options} = Keyword.pop(options, :queue_id, nil)

    query_params =
      if !is_nil(queue_id) do
        [{"queueId", queue_id} | query_params]
      else
        query_params
      end

    meta =
      metadata() |> Map.put_new(:host_prefix, "scheduling.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get batched job details for a worker.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :fleet_id (t:string String.t/0) (fleetId)
   • :worker_id (t:string String.t/0) (workerId)

  ## Optional parameters:
  """
  @spec batch_get_job_entity(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          batch_get_job_entity_request(),
          Keyword.t()
        ) ::
          {:ok, batch_get_job_entity_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_get_job_entity_errors()}
  def batch_get_job_entity(%Client{} = client, farm_id, fleet_id, worker_id, input, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/fleets/#{AWS.Util.encode_uri(fleet_id)}/workers/#{AWS.Util.encode_uri(worker_id)}/batchGetJobEntity"

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "scheduling.")

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
  Copies a job template to an Amazon S3 bucket.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :job_id (t:string String.t/0) (jobId)
   • :queue_id (t:string String.t/0) (queueId)

  ## Optional parameters:
  """
  @spec copy_job_template(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          copy_job_template_request(),
          Keyword.t()
        ) ::
          {:ok, copy_job_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, copy_job_template_errors()}
  def copy_job_template(%Client{} = client, farm_id, job_id, queue_id, input, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/jobs/#{AWS.Util.encode_uri(job_id)}/template"

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

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
  Creates a budget to set spending thresholds for your rendering activity.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)

  ## Optional parameters:
   • :client_token (t:String.t/0) (X-Amz-Client-Token)
  """
  @spec create_budget(AWS.Client.t(), String.t(), create_budget_request(), Keyword.t()) ::
          {:ok, create_budget_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_budget_errors()}
  def create_budget(%Client{} = client, farm_id, input, options \\ []) do
    url_path = "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/budgets"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

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
  Creates a farm to allow space for queues and fleets.

  Farms are the space where the
  components of your renders gather and are pieced together in the cloud. Farms
  contain
  budgets and allow you to enforce permissions. Deadline Cloud farms are a useful
  container for
  large projects.

  ## Required positional parameters:

  ## Optional parameters:
   • :client_token (t:String.t/0) (X-Amz-Client-Token)
  """
  @spec create_farm(AWS.Client.t(), create_farm_request(), Keyword.t()) ::
          {:ok, create_farm_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_farm_errors()}
  def create_farm(%Client{} = client, input, options \\ []) do
    url_path = "/2023-10-12/farms"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

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
  Creates a fleet.

  Fleets gather information relating to compute, or capacity, for renders
  within your farms. You can choose to manage your own capacity or opt to have
  fleets fully
  managed by Deadline Cloud.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)

  ## Optional parameters:
   • :client_token (t:String.t/0) (X-Amz-Client-Token)
  """
  @spec create_fleet(AWS.Client.t(), String.t(), create_fleet_request(), Keyword.t()) ::
          {:ok, create_fleet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_fleet_errors()}
  def create_fleet(%Client{} = client, farm_id, input, options \\ []) do
    url_path = "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/fleets"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

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
  Creates a job.

  A job is a render submission submitted by a user. It contains specific
  job properties outlined as steps and tasks.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :queue_id (t:string String.t/0) (queueId)

  ## Optional parameters:
   • :client_token (t:String.t/0) (X-Amz-Client-Token)
  """
  @spec create_job(AWS.Client.t(), String.t(), String.t(), create_job_request(), Keyword.t()) ::
          {:ok, create_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_job_errors()}
  def create_job(%Client{} = client, farm_id, queue_id, input, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/jobs"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a license endpoint to integrate your various licensed software used for
  rendering on Deadline Cloud.

  ## Required positional parameters:

  ## Optional parameters:
   • :client_token (t:String.t/0) (X-Amz-Client-Token)
  """
  @spec create_license_endpoint(AWS.Client.t(), create_license_endpoint_request(), Keyword.t()) ::
          {:ok, create_license_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_license_endpoint_errors()}
  def create_license_endpoint(%Client{} = client, input, options \\ []) do
    url_path = "/2023-10-12/license-endpoints"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

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
  Creates an Amazon Web Services Deadline Cloud monitor that you can use to view
  your farms, queues, and
  fleets.

  After you submit a job, you can track the progress of the tasks and steps that
  make
  up the job, and then download the job's results.

  ## Required positional parameters:

  ## Optional parameters:
   • :client_token (t:String.t/0) (X-Amz-Client-Token)
  """
  @spec create_monitor(AWS.Client.t(), create_monitor_request(), Keyword.t()) ::
          {:ok, create_monitor_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_monitor_errors()}
  def create_monitor(%Client{} = client, input, options \\ []) do
    url_path = "/2023-10-12/monitors"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

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
  Creates a queue to coordinate the order in which jobs run on a farm.

  A queue can also
  specify where to pull resources and indicate where to output completed jobs.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)

  ## Optional parameters:
   • :client_token (t:String.t/0) (X-Amz-Client-Token)
  """
  @spec create_queue(AWS.Client.t(), String.t(), create_queue_request(), Keyword.t()) ::
          {:ok, create_queue_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_queue_errors()}
  def create_queue(%Client{} = client, farm_id, input, options \\ []) do
    url_path = "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

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
  Creates an environment for a queue that defines how jobs in the queue run.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :queue_id (t:string String.t/0) (queueId)

  ## Optional parameters:
   • :client_token (t:String.t/0) (X-Amz-Client-Token)
  """
  @spec create_queue_environment(
          AWS.Client.t(),
          String.t(),
          String.t(),
          create_queue_environment_request(),
          Keyword.t()
        ) ::
          {:ok, create_queue_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_queue_environment_errors()}
  def create_queue_environment(%Client{} = client, farm_id, queue_id, input, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/environments"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

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
  Creates an association between a queue and a fleet.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)

  ## Optional parameters:
  """
  @spec create_queue_fleet_association(
          AWS.Client.t(),
          String.t(),
          create_queue_fleet_association_request(),
          Keyword.t()
        ) ::
          {:ok, create_queue_fleet_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_queue_fleet_association_errors()}
  def create_queue_fleet_association(%Client{} = client, farm_id, input, options \\ []) do
    url_path = "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queue-fleet-associations"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a storage profile that specifies the operating system, file type, and
  file
  location of resources used on a farm.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)

  ## Optional parameters:
   • :client_token (t:String.t/0) (X-Amz-Client-Token)
  """
  @spec create_storage_profile(
          AWS.Client.t(),
          String.t(),
          create_storage_profile_request(),
          Keyword.t()
        ) ::
          {:ok, create_storage_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_storage_profile_errors()}
  def create_storage_profile(%Client{} = client, farm_id, input, options \\ []) do
    url_path = "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/storage-profiles"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

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
  Creates a worker.

  A worker tells your instance how much processing power (vCPU), and
  memory (GiB) you’ll need to assemble the digital assets held within a particular
  instance.
  You can specify certain instance types to use, or let the worker know which
  instances types
  to exclude.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :fleet_id (t:string String.t/0) (fleetId)

  ## Optional parameters:
   • :client_token (t:String.t/0) (X-Amz-Client-Token)
  """
  @spec create_worker(
          AWS.Client.t(),
          String.t(),
          String.t(),
          create_worker_request(),
          Keyword.t()
        ) ::
          {:ok, create_worker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_worker_errors()}
  def create_worker(%Client{} = client, farm_id, fleet_id, input, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/fleets/#{AWS.Util.encode_uri(fleet_id)}/workers"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "scheduling.")

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
  Deletes a budget.

  ## Required positional parameters:
   • :budget_id (t:string String.t/0) (budgetId)
   • :farm_id (t:string String.t/0) (farmId)

  ## Optional parameters:
  """
  @spec delete_budget(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_budget_request(),
          Keyword.t()
        ) ::
          {:ok, delete_budget_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_budget_errors()}
  def delete_budget(%Client{} = client, budget_id, farm_id, input, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/budgets/#{AWS.Util.encode_uri(budget_id)}"

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

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
  Deletes a farm.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)

  ## Optional parameters:
  """
  @spec delete_farm(AWS.Client.t(), String.t(), delete_farm_request(), Keyword.t()) ::
          {:ok, delete_farm_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_farm_errors()}
  def delete_farm(%Client{} = client, farm_id, input, options \\ []) do
    url_path = "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

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
  Deletes a fleet.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :fleet_id (t:string String.t/0) (fleetId)

  ## Optional parameters:
   • :client_token (t:String.t/0) (X-Amz-Client-Token)
  """
  @spec delete_fleet(AWS.Client.t(), String.t(), String.t(), delete_fleet_request(), Keyword.t()) ::
          {:ok, delete_fleet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_fleet_errors()}
  def delete_fleet(%Client{} = client, farm_id, fleet_id, input, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/fleets/#{AWS.Util.encode_uri(fleet_id)}"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

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
  Deletes a license endpoint.

  ## Required positional parameters:
   • :license_endpoint_id (t:string String.t/0) (licenseEndpointId)

  ## Optional parameters:
  """
  @spec delete_license_endpoint(
          AWS.Client.t(),
          String.t(),
          delete_license_endpoint_request(),
          Keyword.t()
        ) ::
          {:ok, delete_license_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_license_endpoint_errors()}
  def delete_license_endpoint(%Client{} = client, license_endpoint_id, input, options \\ []) do
    url_path = "/2023-10-12/license-endpoints/#{AWS.Util.encode_uri(license_endpoint_id)}"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

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
  Deletes a metered product.

  ## Required positional parameters:
   • :license_endpoint_id (t:string String.t/0) (licenseEndpointId)
   • :product_id (t:string String.t/0) (productId)

  ## Optional parameters:
  """
  @spec delete_metered_product(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_metered_product_request(),
          Keyword.t()
        ) ::
          {:ok, delete_metered_product_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_metered_product_errors()}
  def delete_metered_product(
        %Client{} = client,
        license_endpoint_id,
        product_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/license-endpoints/#{AWS.Util.encode_uri(license_endpoint_id)}/metered-products/#{AWS.Util.encode_uri(product_id)}"

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

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
  Removes a Deadline Cloud monitor.

  After you delete a monitor, you can create a new one and
  attach farms to the monitor.

  ## Required positional parameters:
   • :monitor_id (t:string String.t/0) (monitorId)

  ## Optional parameters:
  """
  @spec delete_monitor(AWS.Client.t(), String.t(), delete_monitor_request(), Keyword.t()) ::
          {:ok, delete_monitor_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_monitor_errors()}
  def delete_monitor(%Client{} = client, monitor_id, input, options \\ []) do
    url_path = "/2023-10-12/monitors/#{AWS.Util.encode_uri(monitor_id)}"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

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
  Deletes a queue.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :queue_id (t:string String.t/0) (queueId)

  ## Optional parameters:
  """
  @spec delete_queue(AWS.Client.t(), String.t(), String.t(), delete_queue_request(), Keyword.t()) ::
          {:ok, delete_queue_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_queue_errors()}
  def delete_queue(%Client{} = client, farm_id, queue_id, input, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}"

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

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
  Deletes a queue environment.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :queue_environment_id (t:string String.t/0) (queueEnvironmentId)
   • :queue_id (t:string String.t/0) (queueId)

  ## Optional parameters:
  """
  @spec delete_queue_environment(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          delete_queue_environment_request(),
          Keyword.t()
        ) ::
          {:ok, delete_queue_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_queue_environment_errors()}
  def delete_queue_environment(
        %Client{} = client,
        farm_id,
        queue_environment_id,
        queue_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/environments/#{AWS.Util.encode_uri(queue_environment_id)}"

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

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
  Deletes a queue-fleet association.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :fleet_id (t:string String.t/0) (fleetId)
   • :queue_id (t:string String.t/0) (queueId)

  ## Optional parameters:
  """
  @spec delete_queue_fleet_association(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          delete_queue_fleet_association_request(),
          Keyword.t()
        ) ::
          {:ok, delete_queue_fleet_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_queue_fleet_association_errors()}
  def delete_queue_fleet_association(
        %Client{} = client,
        farm_id,
        fleet_id,
        queue_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queue-fleet-associations/#{AWS.Util.encode_uri(queue_id)}/#{AWS.Util.encode_uri(fleet_id)}"

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

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
  Deletes a storage profile.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :storage_profile_id (t:string String.t/0) (storageProfileId)

  ## Optional parameters:
  """
  @spec delete_storage_profile(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_storage_profile_request(),
          Keyword.t()
        ) ::
          {:ok, delete_storage_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_storage_profile_errors()}
  def delete_storage_profile(
        %Client{} = client,
        farm_id,
        storage_profile_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/storage-profiles/#{AWS.Util.encode_uri(storage_profile_id)}"

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

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
  Deletes a worker.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :fleet_id (t:string String.t/0) (fleetId)
   • :worker_id (t:string String.t/0) (workerId)

  ## Optional parameters:
  """
  @spec delete_worker(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          delete_worker_request(),
          Keyword.t()
        ) ::
          {:ok, delete_worker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_worker_errors()}
  def delete_worker(%Client{} = client, farm_id, fleet_id, worker_id, input, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/fleets/#{AWS.Util.encode_uri(fleet_id)}/workers/#{AWS.Util.encode_uri(worker_id)}"

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

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
  Disassociates a member from a farm.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :principal_id (t:string String.t/0) (principalId)

  ## Optional parameters:
  """
  @spec disassociate_member_from_farm(
          AWS.Client.t(),
          String.t(),
          String.t(),
          disassociate_member_from_farm_request(),
          Keyword.t()
        ) ::
          {:ok, disassociate_member_from_farm_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_member_from_farm_errors()}
  def disassociate_member_from_farm(
        %Client{} = client,
        farm_id,
        principal_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/members/#{AWS.Util.encode_uri(principal_id)}"

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

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
  Disassociates a member from a fleet.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :fleet_id (t:string String.t/0) (fleetId)
   • :principal_id (t:string String.t/0) (principalId)

  ## Optional parameters:
  """
  @spec disassociate_member_from_fleet(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          disassociate_member_from_fleet_request(),
          Keyword.t()
        ) ::
          {:ok, disassociate_member_from_fleet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_member_from_fleet_errors()}
  def disassociate_member_from_fleet(
        %Client{} = client,
        farm_id,
        fleet_id,
        principal_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/fleets/#{AWS.Util.encode_uri(fleet_id)}/members/#{AWS.Util.encode_uri(principal_id)}"

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

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
  Disassociates a member from a job.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :job_id (t:string String.t/0) (jobId)
   • :principal_id (t:string String.t/0) (principalId)
   • :queue_id (t:string String.t/0) (queueId)

  ## Optional parameters:
  """
  @spec disassociate_member_from_job(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          disassociate_member_from_job_request(),
          Keyword.t()
        ) ::
          {:ok, disassociate_member_from_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_member_from_job_errors()}
  def disassociate_member_from_job(
        %Client{} = client,
        farm_id,
        job_id,
        principal_id,
        queue_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/jobs/#{AWS.Util.encode_uri(job_id)}/members/#{AWS.Util.encode_uri(principal_id)}"

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

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
  Disassociates a member from a queue.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :principal_id (t:string String.t/0) (principalId)
   • :queue_id (t:string String.t/0) (queueId)

  ## Optional parameters:
  """
  @spec disassociate_member_from_queue(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          disassociate_member_from_queue_request(),
          Keyword.t()
        ) ::
          {:ok, disassociate_member_from_queue_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_member_from_queue_errors()}
  def disassociate_member_from_queue(
        %Client{} = client,
        farm_id,
        principal_id,
        queue_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/members/#{AWS.Util.encode_uri(principal_id)}"

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

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
  Get a budget.

  ## Required positional parameters:
   • :budget_id (t:string String.t/0) (budgetId)
   • :farm_id (t:string String.t/0) (farmId)

  ## Optional parameters:
  """
  @spec get_budget(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_budget_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_budget_errors()}
  def get_budget(%Client{} = client, budget_id, farm_id, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/budgets/#{AWS.Util.encode_uri(budget_id)}"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [
    # ])

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get a farm.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)

  ## Optional parameters:
  """
  @spec get_farm(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_farm_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_farm_errors()}
  def get_farm(%Client{} = client, farm_id, options \\ []) do
    url_path = "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [
    # ])

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get a fleet.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :fleet_id (t:string String.t/0) (fleetId)

  ## Optional parameters:
  """
  @spec get_fleet(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_fleet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_fleet_errors()}
  def get_fleet(%Client{} = client, farm_id, fleet_id, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/fleets/#{AWS.Util.encode_uri(fleet_id)}"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [
    # ])

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a Deadline Cloud job.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :job_id (t:string String.t/0) (jobId)
   • :queue_id (t:string String.t/0) (queueId)

  ## Optional parameters:
  """
  @spec get_job(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_job_errors()}
  def get_job(%Client{} = client, farm_id, job_id, queue_id, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/jobs/#{AWS.Util.encode_uri(job_id)}"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [
    # ])

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a licence endpoint.

  ## Required positional parameters:
   • :license_endpoint_id (t:string String.t/0) (licenseEndpointId)

  ## Optional parameters:
  """
  @spec get_license_endpoint(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_license_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_license_endpoint_errors()}
  def get_license_endpoint(%Client{} = client, license_endpoint_id, options \\ []) do
    url_path = "/2023-10-12/license-endpoints/#{AWS.Util.encode_uri(license_endpoint_id)}"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [
    # ])

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the specified monitor.

  ## Required positional parameters:
   • :monitor_id (t:string String.t/0) (monitorId)

  ## Optional parameters:
  """
  @spec get_monitor(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_monitor_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_monitor_errors()}
  def get_monitor(%Client{} = client, monitor_id, options \\ []) do
    url_path = "/2023-10-12/monitors/#{AWS.Util.encode_uri(monitor_id)}"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [
    # ])

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a queue.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :queue_id (t:string String.t/0) (queueId)

  ## Optional parameters:
  """
  @spec get_queue(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_queue_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_queue_errors()}
  def get_queue(%Client{} = client, farm_id, queue_id, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [
    # ])

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a queue environment.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :queue_environment_id (t:string String.t/0) (queueEnvironmentId)
   • :queue_id (t:string String.t/0) (queueId)

  ## Optional parameters:
  """
  @spec get_queue_environment(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_queue_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_queue_environment_errors()}
  def get_queue_environment(
        %Client{} = client,
        farm_id,
        queue_environment_id,
        queue_id,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/environments/#{AWS.Util.encode_uri(queue_environment_id)}"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [
    # ])

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a queue-fleet association.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :fleet_id (t:string String.t/0) (fleetId)
   • :queue_id (t:string String.t/0) (queueId)

  ## Optional parameters:
  """
  @spec get_queue_fleet_association(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, get_queue_fleet_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_queue_fleet_association_errors()}
  def get_queue_fleet_association(%Client{} = client, farm_id, fleet_id, queue_id, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queue-fleet-associations/#{AWS.Util.encode_uri(queue_id)}/#{AWS.Util.encode_uri(fleet_id)}"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [
    # ])

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a session.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :job_id (t:string String.t/0) (jobId)
   • :queue_id (t:string String.t/0) (queueId)
   • :session_id (t:string String.t/0) (sessionId)

  ## Optional parameters:
  """
  @spec get_session(AWS.Client.t(), String.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_session_errors()}
  def get_session(%Client{} = client, farm_id, job_id, queue_id, session_id, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/jobs/#{AWS.Util.encode_uri(job_id)}/sessions/#{AWS.Util.encode_uri(session_id)}"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [
    # ])

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a session action for the job.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :job_id (t:string String.t/0) (jobId)
   • :queue_id (t:string String.t/0) (queueId)
   • :session_action_id (t:string String.t/0) (sessionActionId)

  ## Optional parameters:
  """
  @spec get_session_action(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, get_session_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_session_action_errors()}
  def get_session_action(
        %Client{} = client,
        farm_id,
        job_id,
        queue_id,
        session_action_id,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/jobs/#{AWS.Util.encode_uri(job_id)}/session-actions/#{AWS.Util.encode_uri(session_action_id)}"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [
    # ])

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a set of statistics for queues or farms.

  Before you can call the
  `GetSessionStatisticsAggregation` operation, you must first call the
  `StartSessionsStatisticsAggregation` operation. Statistics are available for
  1 hour after you call the `StartSessionsStatisticsAggregation` operation.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)

  ## Optional parameters:
   • :aggregation_id (t:String.t/0) (aggregationId)
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec get_sessions_statistics_aggregation(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_sessions_statistics_aggregation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_sessions_statistics_aggregation_errors()}
  def get_sessions_statistics_aggregation(
        %Client{} = client,
        farm_id,
        aggregation_id,
        options \\ []
      ) do
    url_path = "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/sessions-statistics-aggregation"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [aggregation_id: nil, max_results: nil, next_token: nil
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

    {aggregation_id, options} = Keyword.pop(options, :aggregation_id, nil)

    query_params =
      if !is_nil(aggregation_id) do
        [{"aggregationId", aggregation_id} | query_params]
      else
        query_params
      end

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a step.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :job_id (t:string String.t/0) (jobId)
   • :queue_id (t:string String.t/0) (queueId)
   • :step_id (t:string String.t/0) (stepId)

  ## Optional parameters:
  """
  @spec get_step(AWS.Client.t(), String.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_step_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_step_errors()}
  def get_step(%Client{} = client, farm_id, job_id, queue_id, step_id, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/jobs/#{AWS.Util.encode_uri(job_id)}/steps/#{AWS.Util.encode_uri(step_id)}"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [
    # ])

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a storage profile.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :storage_profile_id (t:string String.t/0) (storageProfileId)

  ## Optional parameters:
  """
  @spec get_storage_profile(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_storage_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_storage_profile_errors()}
  def get_storage_profile(%Client{} = client, farm_id, storage_profile_id, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/storage-profiles/#{AWS.Util.encode_uri(storage_profile_id)}"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [
    # ])

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a storage profile for a queue.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :queue_id (t:string String.t/0) (queueId)
   • :storage_profile_id (t:string String.t/0) (storageProfileId)

  ## Optional parameters:
  """
  @spec get_storage_profile_for_queue(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, get_storage_profile_for_queue_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_storage_profile_for_queue_errors()}
  def get_storage_profile_for_queue(
        %Client{} = client,
        farm_id,
        queue_id,
        storage_profile_id,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/storage-profiles/#{AWS.Util.encode_uri(storage_profile_id)}"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [
    # ])

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a task.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :job_id (t:string String.t/0) (jobId)
   • :queue_id (t:string String.t/0) (queueId)
   • :step_id (t:string String.t/0) (stepId)
   • :task_id (t:string String.t/0) (taskId)

  ## Optional parameters:
  """
  @spec get_task(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, get_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_task_errors()}
  def get_task(%Client{} = client, farm_id, job_id, queue_id, step_id, task_id, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/jobs/#{AWS.Util.encode_uri(job_id)}/steps/#{AWS.Util.encode_uri(step_id)}/tasks/#{AWS.Util.encode_uri(task_id)}"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [
    # ])

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a worker.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :fleet_id (t:string String.t/0) (fleetId)
   • :worker_id (t:string String.t/0) (workerId)

  ## Optional parameters:
  """
  @spec get_worker(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_worker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_worker_errors()}
  def get_worker(%Client{} = client, farm_id, fleet_id, worker_id, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/fleets/#{AWS.Util.encode_uri(fleet_id)}/workers/#{AWS.Util.encode_uri(worker_id)}"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [
    # ])

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  A list of the available metered products.

  ## Required positional parameters:

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec list_available_metered_products(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_available_metered_products_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_available_metered_products_errors()}
  def list_available_metered_products(%Client{} = client, options \\ []) do
    url_path = "/2023-10-12/metered-products"

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
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  A list of budgets in a farm.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
   • :status (t:String.t/0) (status)
  """
  @spec list_budgets(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_budgets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_budgets_errors()}
  def list_budgets(%Client{} = client, farm_id, options \\ []) do
    url_path = "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/budgets"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, next_token: nil, status: nil
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
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the members of a farm.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec list_farm_members(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_farm_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_farm_members_errors()}
  def list_farm_members(%Client{} = client, farm_id, options \\ []) do
    url_path = "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/members"

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
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists farms.

  ## Required positional parameters:

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
   • :principal_id (t:String.t/0) (principalId)
  """
  @spec list_farms(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_farms_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_farms_errors()}
  def list_farms(%Client{} = client, options \\ []) do
    url_path = "/2023-10-12/farms"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, next_token: nil, principal_id: nil
    # ])

    headers = []
    query_params = []

    {principal_id, options} = Keyword.pop(options, :principal_id, nil)

    query_params =
      if !is_nil(principal_id) do
        [{"principalId", principal_id} | query_params]
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
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists fleet members.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :fleet_id (t:string String.t/0) (fleetId)

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec list_fleet_members(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_fleet_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_fleet_members_errors()}
  def list_fleet_members(%Client{} = client, farm_id, fleet_id, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/fleets/#{AWS.Util.encode_uri(fleet_id)}/members"

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
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists fleets.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)

  ## Optional parameters:
   • :display_name (t:String.t/0) (displayName)
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
   • :principal_id (t:String.t/0) (principalId)
   • :status (t:String.t/0) (status)
  """
  @spec list_fleets(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_fleets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_fleets_errors()}
  def list_fleets(%Client{} = client, farm_id, options \\ []) do
    url_path = "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/fleets"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [display_name: nil, max_results: nil, next_token: nil, principal_id: nil, status: nil
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

    {principal_id, options} = Keyword.pop(options, :principal_id, nil)

    query_params =
      if !is_nil(principal_id) do
        [{"principalId", principal_id} | query_params]
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

    {display_name, options} = Keyword.pop(options, :display_name, nil)

    query_params =
      if !is_nil(display_name) do
        [{"displayName", display_name} | query_params]
      else
        query_params
      end

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists members on a job.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :job_id (t:string String.t/0) (jobId)
   • :queue_id (t:string String.t/0) (queueId)

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec list_job_members(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_job_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_job_members_errors()}
  def list_job_members(%Client{} = client, farm_id, job_id, queue_id, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/jobs/#{AWS.Util.encode_uri(job_id)}/members"

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
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists jobs.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :queue_id (t:string String.t/0) (queueId)

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
   • :principal_id (t:String.t/0) (principalId)
  """
  @spec list_jobs(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_jobs_errors()}
  def list_jobs(%Client{} = client, farm_id, queue_id, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/jobs"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, next_token: nil, principal_id: nil
    # ])

    headers = []
    query_params = []

    {principal_id, options} = Keyword.pop(options, :principal_id, nil)

    query_params =
      if !is_nil(principal_id) do
        [{"principalId", principal_id} | query_params]
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
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists license endpoints.

  ## Required positional parameters:

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec list_license_endpoints(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_license_endpoints_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_license_endpoints_errors()}
  def list_license_endpoints(%Client{} = client, options \\ []) do
    url_path = "/2023-10-12/license-endpoints"

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
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists metered products.

  ## Required positional parameters:
   • :license_endpoint_id (t:string String.t/0) (licenseEndpointId)

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec list_metered_products(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_metered_products_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_metered_products_errors()}
  def list_metered_products(%Client{} = client, license_endpoint_id, options \\ []) do
    url_path =
      "/2023-10-12/license-endpoints/#{AWS.Util.encode_uri(license_endpoint_id)}/metered-products"

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
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a list of your monitors in Deadline Cloud.

  ## Required positional parameters:

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec list_monitors(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_monitors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_monitors_errors()}
  def list_monitors(%Client{} = client, options \\ []) do
    url_path = "/2023-10-12/monitors"

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
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists queue environments.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :queue_id (t:string String.t/0) (queueId)

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec list_queue_environments(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_queue_environments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_queue_environments_errors()}
  def list_queue_environments(%Client{} = client, farm_id, queue_id, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/environments"

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
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists queue-fleet associations.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)

  ## Optional parameters:
   • :fleet_id (t:String.t/0) (fleetId)
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
   • :queue_id (t:String.t/0) (queueId)
  """
  @spec list_queue_fleet_associations(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_queue_fleet_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_queue_fleet_associations_errors()}
  def list_queue_fleet_associations(%Client{} = client, farm_id, options \\ []) do
    url_path = "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queue-fleet-associations"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [fleet_id: nil, max_results: nil, next_token: nil, queue_id: nil
    # ])

    headers = []
    query_params = []

    {queue_id, options} = Keyword.pop(options, :queue_id, nil)

    query_params =
      if !is_nil(queue_id) do
        [{"queueId", queue_id} | query_params]
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

    {fleet_id, options} = Keyword.pop(options, :fleet_id, nil)

    query_params =
      if !is_nil(fleet_id) do
        [{"fleetId", fleet_id} | query_params]
      else
        query_params
      end

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the members in a queue.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :queue_id (t:string String.t/0) (queueId)

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec list_queue_members(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_queue_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_queue_members_errors()}
  def list_queue_members(%Client{} = client, farm_id, queue_id, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/members"

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
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists queues.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
   • :principal_id (t:String.t/0) (principalId)
   • :status (t:String.t/0) (status)
  """
  @spec list_queues(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_queues_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_queues_errors()}
  def list_queues(%Client{} = client, farm_id, options \\ []) do
    url_path = "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, next_token: nil, principal_id: nil, status: nil
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

    {principal_id, options} = Keyword.pop(options, :principal_id, nil)

    query_params =
      if !is_nil(principal_id) do
        [{"principalId", principal_id} | query_params]
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
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists session actions.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :job_id (t:string String.t/0) (jobId)
   • :queue_id (t:string String.t/0) (queueId)

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
   • :session_id (t:String.t/0) (sessionId)
   • :task_id (t:String.t/0) (taskId)
  """
  @spec list_session_actions(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_session_actions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_session_actions_errors()}
  def list_session_actions(%Client{} = client, farm_id, job_id, queue_id, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/jobs/#{AWS.Util.encode_uri(job_id)}/session-actions"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, next_token: nil, session_id: nil, task_id: nil
    # ])

    headers = []
    query_params = []

    {task_id, options} = Keyword.pop(options, :task_id, nil)

    query_params =
      if !is_nil(task_id) do
        [{"taskId", task_id} | query_params]
      else
        query_params
      end

    {session_id, options} = Keyword.pop(options, :session_id, nil)

    query_params =
      if !is_nil(session_id) do
        [{"sessionId", session_id} | query_params]
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
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists sessions.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :job_id (t:string String.t/0) (jobId)
   • :queue_id (t:string String.t/0) (queueId)

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec list_sessions(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_sessions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_sessions_errors()}
  def list_sessions(%Client{} = client, farm_id, job_id, queue_id, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/jobs/#{AWS.Util.encode_uri(job_id)}/sessions"

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
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists sessions for a worker.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :fleet_id (t:string String.t/0) (fleetId)
   • :worker_id (t:string String.t/0) (workerId)

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec list_sessions_for_worker(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_sessions_for_worker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_sessions_for_worker_errors()}
  def list_sessions_for_worker(%Client{} = client, farm_id, fleet_id, worker_id, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/fleets/#{AWS.Util.encode_uri(fleet_id)}/workers/#{AWS.Util.encode_uri(worker_id)}/sessions"

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
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists step consumers.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :job_id (t:string String.t/0) (jobId)
   • :queue_id (t:string String.t/0) (queueId)
   • :step_id (t:string String.t/0) (stepId)

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec list_step_consumers(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, list_step_consumers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_step_consumers_errors()}
  def list_step_consumers(%Client{} = client, farm_id, job_id, queue_id, step_id, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/jobs/#{AWS.Util.encode_uri(job_id)}/steps/#{AWS.Util.encode_uri(step_id)}/consumers"

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
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the dependencies for a step.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :job_id (t:string String.t/0) (jobId)
   • :queue_id (t:string String.t/0) (queueId)
   • :step_id (t:string String.t/0) (stepId)

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec list_step_dependencies(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, list_step_dependencies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_step_dependencies_errors()}
  def list_step_dependencies(
        %Client{} = client,
        farm_id,
        job_id,
        queue_id,
        step_id,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/jobs/#{AWS.Util.encode_uri(job_id)}/steps/#{AWS.Util.encode_uri(step_id)}/dependencies"

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
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists steps for a job.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :job_id (t:string String.t/0) (jobId)
   • :queue_id (t:string String.t/0) (queueId)

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec list_steps(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_steps_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_steps_errors()}
  def list_steps(%Client{} = client, farm_id, job_id, queue_id, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/jobs/#{AWS.Util.encode_uri(job_id)}/steps"

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
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists storage profiles.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec list_storage_profiles(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_storage_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_storage_profiles_errors()}
  def list_storage_profiles(%Client{} = client, farm_id, options \\ []) do
    url_path = "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/storage-profiles"

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
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists storage profiles for a queue.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :queue_id (t:string String.t/0) (queueId)

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec list_storage_profiles_for_queue(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_storage_profiles_for_queue_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_storage_profiles_for_queue_errors()}
  def list_storage_profiles_for_queue(%Client{} = client, farm_id, queue_id, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/storage-profiles"

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
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists tags for a resource.

  ## Required positional parameters:
   • :resource_arn (t:string String.t/0) (resourceArn)

  ## Optional parameters:
  """
  @spec list_tags_for_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/2023-10-12/tags/#{AWS.Util.encode_uri(resource_arn)}"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [
    # ])

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists tasks for a job.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :job_id (t:string String.t/0) (jobId)
   • :queue_id (t:string String.t/0) (queueId)
   • :step_id (t:string String.t/0) (stepId)

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec list_tasks(AWS.Client.t(), String.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_tasks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tasks_errors()}
  def list_tasks(%Client{} = client, farm_id, job_id, queue_id, step_id, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/jobs/#{AWS.Util.encode_uri(job_id)}/steps/#{AWS.Util.encode_uri(step_id)}/tasks"

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
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists workers.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :fleet_id (t:string String.t/0) (fleetId)

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec list_workers(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_workers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_workers_errors()}
  def list_workers(%Client{} = client, farm_id, fleet_id, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/fleets/#{AWS.Util.encode_uri(fleet_id)}/workers"

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
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Adds a metered product.

  ## Required positional parameters:
   • :license_endpoint_id (t:string String.t/0) (licenseEndpointId)
   • :product_id (t:string String.t/0) (productId)

  ## Optional parameters:
  """
  @spec put_metered_product(
          AWS.Client.t(),
          String.t(),
          String.t(),
          put_metered_product_request(),
          Keyword.t()
        ) ::
          {:ok, put_metered_product_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_metered_product_errors()}
  def put_metered_product(
        %Client{} = client,
        license_endpoint_id,
        product_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/license-endpoints/#{AWS.Util.encode_uri(license_endpoint_id)}/metered-products/#{AWS.Util.encode_uri(product_id)}"

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Searches for jobs.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)

  ## Optional parameters:
  """
  @spec search_jobs(AWS.Client.t(), String.t(), search_jobs_request(), Keyword.t()) ::
          {:ok, search_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_jobs_errors()}
  def search_jobs(%Client{} = client, farm_id, input, options \\ []) do
    url_path = "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/search/jobs"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

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
  Searches for steps.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)

  ## Optional parameters:
  """
  @spec search_steps(AWS.Client.t(), String.t(), search_steps_request(), Keyword.t()) ::
          {:ok, search_steps_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_steps_errors()}
  def search_steps(%Client{} = client, farm_id, input, options \\ []) do
    url_path = "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/search/steps"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

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
  Searches for tasks.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)

  ## Optional parameters:
  """
  @spec search_tasks(AWS.Client.t(), String.t(), search_tasks_request(), Keyword.t()) ::
          {:ok, search_tasks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_tasks_errors()}
  def search_tasks(%Client{} = client, farm_id, input, options \\ []) do
    url_path = "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/search/tasks"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

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
  Searches for workers.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)

  ## Optional parameters:
  """
  @spec search_workers(AWS.Client.t(), String.t(), search_workers_request(), Keyword.t()) ::
          {:ok, search_workers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_workers_errors()}
  def search_workers(%Client{} = client, farm_id, input, options \\ []) do
    url_path = "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/search/workers"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

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
  Starts an asynchronous request for getting aggregated statistics about queues
  and farms.

  Get the statistics using the `GetSessionsStatisticsAggregation` operation.
  Statistics are available for 1 hour after you call the
  `StartSessionsStatisticsAggregation` operation.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)

  ## Optional parameters:
  """
  @spec start_sessions_statistics_aggregation(
          AWS.Client.t(),
          String.t(),
          start_sessions_statistics_aggregation_request(),
          Keyword.t()
        ) ::
          {:ok, start_sessions_statistics_aggregation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_sessions_statistics_aggregation_errors()}
  def start_sessions_statistics_aggregation(%Client{} = client, farm_id, input, options \\ []) do
    url_path = "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/sessions-statistics-aggregation"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

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
  Tags a resource using the resource's ARN and desired tags.

  ## Required positional parameters:
   • :resource_arn (t:string String.t/0) (resourceArn)

  ## Optional parameters:
  """
  @spec tag_resource(AWS.Client.t(), String.t(), tag_resource_request(), Keyword.t()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/2023-10-12/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Removes a tag from a resource using the resource's ARN and tag to remove.

  ## Required positional parameters:
   • :resource_arn (t:string String.t/0) (resourceArn)

  ## Optional parameters:
   • :tag_keys (t:String.t/0) (tagKeys)
  """
  @spec untag_resource(AWS.Client.t(), String.t(), untag_resource_request(), Keyword.t()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/2023-10-12/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Updates a budget that sets spending thresholds for rendering activity.

  ## Required positional parameters:
   • :budget_id (t:string String.t/0) (budgetId)
   • :farm_id (t:string String.t/0) (farmId)

  ## Optional parameters:
   • :client_token (t:String.t/0) (X-Amz-Client-Token)
  """
  @spec update_budget(
          AWS.Client.t(),
          String.t(),
          String.t(),
          update_budget_request(),
          Keyword.t()
        ) ::
          {:ok, update_budget_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_budget_errors()}
  def update_budget(%Client{} = client, budget_id, farm_id, input, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/budgets/#{AWS.Util.encode_uri(budget_id)}"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a farm.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)

  ## Optional parameters:
  """
  @spec update_farm(AWS.Client.t(), String.t(), update_farm_request(), Keyword.t()) ::
          {:ok, update_farm_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_farm_errors()}
  def update_farm(%Client{} = client, farm_id, input, options \\ []) do
    url_path = "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a fleet.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :fleet_id (t:string String.t/0) (fleetId)

  ## Optional parameters:
   • :client_token (t:String.t/0) (X-Amz-Client-Token)
  """
  @spec update_fleet(AWS.Client.t(), String.t(), String.t(), update_fleet_request(), Keyword.t()) ::
          {:ok, update_fleet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_fleet_errors()}
  def update_fleet(%Client{} = client, farm_id, fleet_id, input, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/fleets/#{AWS.Util.encode_uri(fleet_id)}"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a job.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :job_id (t:string String.t/0) (jobId)
   • :queue_id (t:string String.t/0) (queueId)

  ## Optional parameters:
   • :client_token (t:String.t/0) (X-Amz-Client-Token)
  """
  @spec update_job(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          update_job_request(),
          Keyword.t()
        ) ::
          {:ok, update_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_job_errors()}
  def update_job(%Client{} = client, farm_id, job_id, queue_id, input, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/jobs/#{AWS.Util.encode_uri(job_id)}"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Modifies the settings for a Deadline Cloud monitor.

  You can modify one or all of the settings
  when you call `UpdateMonitor`.

  ## Required positional parameters:
   • :monitor_id (t:string String.t/0) (monitorId)

  ## Optional parameters:
  """
  @spec update_monitor(AWS.Client.t(), String.t(), update_monitor_request(), Keyword.t()) ::
          {:ok, update_monitor_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_monitor_errors()}
  def update_monitor(%Client{} = client, monitor_id, input, options \\ []) do
    url_path = "/2023-10-12/monitors/#{AWS.Util.encode_uri(monitor_id)}"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a queue.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :queue_id (t:string String.t/0) (queueId)

  ## Optional parameters:
   • :client_token (t:String.t/0) (X-Amz-Client-Token)
  """
  @spec update_queue(AWS.Client.t(), String.t(), String.t(), update_queue_request(), Keyword.t()) ::
          {:ok, update_queue_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_queue_errors()}
  def update_queue(%Client{} = client, farm_id, queue_id, input, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the queue environment.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :queue_environment_id (t:string String.t/0) (queueEnvironmentId)
   • :queue_id (t:string String.t/0) (queueId)

  ## Optional parameters:
   • :client_token (t:String.t/0) (X-Amz-Client-Token)
  """
  @spec update_queue_environment(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          update_queue_environment_request(),
          Keyword.t()
        ) ::
          {:ok, update_queue_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_queue_environment_errors()}
  def update_queue_environment(
        %Client{} = client,
        farm_id,
        queue_environment_id,
        queue_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/environments/#{AWS.Util.encode_uri(queue_environment_id)}"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a queue-fleet association.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :fleet_id (t:string String.t/0) (fleetId)
   • :queue_id (t:string String.t/0) (queueId)

  ## Optional parameters:
  """
  @spec update_queue_fleet_association(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          update_queue_fleet_association_request(),
          Keyword.t()
        ) ::
          {:ok, update_queue_fleet_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_queue_fleet_association_errors()}
  def update_queue_fleet_association(
        %Client{} = client,
        farm_id,
        fleet_id,
        queue_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queue-fleet-associations/#{AWS.Util.encode_uri(queue_id)}/#{AWS.Util.encode_uri(fleet_id)}"

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a session.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :job_id (t:string String.t/0) (jobId)
   • :queue_id (t:string String.t/0) (queueId)
   • :session_id (t:string String.t/0) (sessionId)

  ## Optional parameters:
   • :client_token (t:String.t/0) (X-Amz-Client-Token)
  """
  @spec update_session(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          update_session_request(),
          Keyword.t()
        ) ::
          {:ok, update_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_session_errors()}
  def update_session(
        %Client{} = client,
        farm_id,
        job_id,
        queue_id,
        session_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/jobs/#{AWS.Util.encode_uri(job_id)}/sessions/#{AWS.Util.encode_uri(session_id)}"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a step.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :job_id (t:string String.t/0) (jobId)
   • :queue_id (t:string String.t/0) (queueId)
   • :step_id (t:string String.t/0) (stepId)

  ## Optional parameters:
   • :client_token (t:String.t/0) (X-Amz-Client-Token)
  """
  @spec update_step(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          update_step_request(),
          Keyword.t()
        ) ::
          {:ok, update_step_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_step_errors()}
  def update_step(%Client{} = client, farm_id, job_id, queue_id, step_id, input, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/jobs/#{AWS.Util.encode_uri(job_id)}/steps/#{AWS.Util.encode_uri(step_id)}"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a storage profile.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :storage_profile_id (t:string String.t/0) (storageProfileId)

  ## Optional parameters:
   • :client_token (t:String.t/0) (X-Amz-Client-Token)
  """
  @spec update_storage_profile(
          AWS.Client.t(),
          String.t(),
          String.t(),
          update_storage_profile_request(),
          Keyword.t()
        ) ::
          {:ok, update_storage_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_storage_profile_errors()}
  def update_storage_profile(
        %Client{} = client,
        farm_id,
        storage_profile_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/storage-profiles/#{AWS.Util.encode_uri(storage_profile_id)}"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a task.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :job_id (t:string String.t/0) (jobId)
   • :queue_id (t:string String.t/0) (queueId)
   • :step_id (t:string String.t/0) (stepId)
   • :task_id (t:string String.t/0) (taskId)

  ## Optional parameters:
   • :client_token (t:String.t/0) (X-Amz-Client-Token)
  """
  @spec update_task(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          update_task_request(),
          Keyword.t()
        ) ::
          {:ok, update_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_task_errors()}
  def update_task(
        %Client{} = client,
        farm_id,
        job_id,
        queue_id,
        step_id,
        task_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/jobs/#{AWS.Util.encode_uri(job_id)}/steps/#{AWS.Util.encode_uri(step_id)}/tasks/#{AWS.Util.encode_uri(task_id)}"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a worker.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :fleet_id (t:string String.t/0) (fleetId)
   • :worker_id (t:string String.t/0) (workerId)

  ## Optional parameters:
  """
  @spec update_worker(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          update_worker_request(),
          Keyword.t()
        ) ::
          {:ok, update_worker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_worker_errors()}
  def update_worker(%Client{} = client, farm_id, fleet_id, worker_id, input, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/fleets/#{AWS.Util.encode_uri(fleet_id)}/workers/#{AWS.Util.encode_uri(worker_id)}"

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "scheduling.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the schedule for a worker.

  ## Required positional parameters:
   • :farm_id (t:string String.t/0) (farmId)
   • :fleet_id (t:string String.t/0) (fleetId)
   • :worker_id (t:string String.t/0) (workerId)

  ## Optional parameters:
  """
  @spec update_worker_schedule(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          update_worker_schedule_request(),
          Keyword.t()
        ) ::
          {:ok, update_worker_schedule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_worker_schedule_errors()}
  def update_worker_schedule(
        %Client{} = client,
        farm_id,
        fleet_id,
        worker_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/fleets/#{AWS.Util.encode_uri(fleet_id)}/workers/#{AWS.Util.encode_uri(worker_id)}/schedule"

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "scheduling.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
