# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DeviceFarm do
  @moduledoc """
  Welcome to the AWS Device Farm API documentation, which contains APIs for:
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      update_test_grid_project_request() :: %{
        optional("description") => String.t(),
        optional("name") => String.t(),
        optional("vpcConfig") => test_grid_vpc_config(),
        required("projectArn") => String.t()
      }
      
  """
  @type update_test_grid_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      device_pool() :: %{
        "arn" => String.t(),
        "description" => String.t(),
        "maxDevices" => integer(),
        "name" => String.t(),
        "rules" => list(rule()()),
        "type" => list(any())
      }
      
  """
  @type device_pool() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_vpce_configuration_result() :: %{
        "vpceConfiguration" => vpce_configuration()
      }
      
  """
  @type create_vpce_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_remote_access_session_configuration() :: %{
        "billingMethod" => list(any()),
        "vpceConfigurationArns" => list(String.t()())
      }
      
  """
  @type create_remote_access_session_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_network_profile_request() :: %{
        optional("description") => String.t(),
        optional("downlinkBandwidthBits") => float(),
        optional("downlinkDelayMs") => float(),
        optional("downlinkJitterMs") => float(),
        optional("downlinkLossPercent") => integer(),
        optional("type") => list(any()),
        optional("uplinkBandwidthBits") => float(),
        optional("uplinkDelayMs") => float(),
        optional("uplinkJitterMs") => float(),
        optional("uplinkLossPercent") => integer(),
        required("name") => String.t(),
        required("projectArn") => String.t()
      }
      
  """
  @type create_network_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tests_result() :: %{
        "nextToken" => String.t(),
        "tests" => list(test()())
      }
      
  """
  @type list_tests_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_instance_profiles_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_instance_profiles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_device_pool_request() :: %{
        optional("description") => String.t(),
        optional("maxDevices") => integer(),
        required("name") => String.t(),
        required("projectArn") => String.t(),
        required("rules") => list(rule()())
      }
      
  """
  @type create_device_pool_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_suite_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type get_suite_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_upload_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type get_upload_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_devices_request() :: %{
        optional("arn") => String.t(),
        optional("filters") => list(device_filter()()),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_devices_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceARN") => String.t(),
        required("Tags") => list(tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_remote_access_session_request() :: %{
        optional("clientId") => String.t(),
        optional("configuration") => create_remote_access_session_configuration(),
        optional("instanceArn") => String.t(),
        optional("interactionMode") => list(any()),
        optional("name") => String.t(),
        optional("remoteDebugEnabled") => boolean(),
        optional("remoteRecordAppArn") => String.t(),
        optional("remoteRecordEnabled") => boolean(),
        optional("skipAppResign") => boolean(),
        optional("sshPublicKey") => String.t(),
        required("deviceArn") => String.t(),
        required("projectArn") => String.t()
      }
      
  """
  @type create_remote_access_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_profile() :: %{
        "arn" => String.t(),
        "description" => String.t(),
        "excludeAppPackagesFromCleanup" => list(String.t()()),
        "name" => String.t(),
        "packageCleanup" => boolean(),
        "rebootAfterUse" => boolean()
      }
      
  """
  @type instance_profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_test_grid_session_actions_request() :: %{
        optional("maxResult") => integer(),
        optional("nextToken") => String.t(),
        required("sessionArn") => String.t()
      }
      
  """
  @type list_test_grid_session_actions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_test_grid_session_artifacts_request() :: %{
        optional("maxResult") => integer(),
        optional("nextToken") => String.t(),
        optional("type") => list(any()),
        required("sessionArn") => String.t()
      }
      
  """
  @type list_test_grid_session_artifacts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_upload_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type delete_upload_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_run_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type get_run_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_remote_access_session_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type delete_remote_access_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      suite() :: %{
        "arn" => String.t(),
        "counters" => counters(),
        "created" => non_neg_integer(),
        "deviceMinutes" => device_minutes(),
        "message" => String.t(),
        "name" => String.t(),
        "result" => list(any()),
        "started" => non_neg_integer(),
        "status" => list(any()),
        "stopped" => non_neg_integer(),
        "type" => list(any())
      }
      
  """
  @type suite() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_operation_exception() :: %{
        "message" => String.t(),
        "resourceName" => String.t()
      }
      
  """
  @type tag_operation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_unique_problems_request() :: %{
        optional("nextToken") => String.t(),
        required("arn") => String.t()
      }
      
  """
  @type list_unique_problems_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_jobs_result() :: %{
        "jobs" => list(job()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_jobs_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_vpce_configuration_request() :: %{
        optional("vpceConfigurationDescription") => String.t(),
        required("serviceDnsName") => String.t(),
        required("vpceConfigurationName") => String.t(),
        required("vpceServiceName") => String.t()
      }
      
  """
  @type create_vpce_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      not_eligible_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type not_eligible_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      schedule_run_request() :: %{
        optional("appArn") => String.t(),
        optional("configuration") => schedule_run_configuration(),
        optional("devicePoolArn") => String.t(),
        optional("deviceSelectionConfiguration") => device_selection_configuration(),
        optional("executionConfiguration") => execution_configuration(),
        optional("name") => String.t(),
        required("projectArn") => String.t(),
        required("test") => schedule_run_test()
      }
      
  """
  @type schedule_run_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      renew_offering_request() :: %{
        required("offeringId") => String.t(),
        required("quantity") => integer()
      }
      
  """
  @type renew_offering_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_upload_result() :: %{
        "upload" => upload()
      }
      
  """
  @type update_upload_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_network_profiles_result() :: %{
        "networkProfiles" => list(network_profile()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_network_profiles_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_account_settings_request() :: %{}
      
  """
  @type get_account_settings_request() :: %{}

  @typedoc """

  ## Example:
      
      list_offering_promotions_result() :: %{
        "nextToken" => String.t(),
        "offeringPromotions" => list(offering_promotion()())
      }
      
  """
  @type list_offering_promotions_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      monetary_amount() :: %{
        "amount" => float(),
        "currencyCode" => list(any())
      }
      
  """
  @type monetary_amount() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_jobs_request() :: %{
        optional("nextToken") => String.t(),
        required("arn") => String.t()
      }
      
  """
  @type list_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      schedule_run_result() :: %{
        "run" => run()
      }
      
  """
  @type schedule_run_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_devices_result() :: %{
        "devices" => list(device()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_devices_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_upload_result() :: %{}
      
  """
  @type delete_upload_result() :: %{}

  @typedoc """

  ## Example:
      
      device_selection_configuration() :: %{
        "filters" => list(device_filter()()),
        "maxDevices" => integer()
      }
      
  """
  @type device_selection_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_test_grid_session_request() :: %{
        optional("projectArn") => String.t(),
        optional("sessionArn") => String.t(),
        optional("sessionId") => String.t()
      }
      
  """
  @type get_test_grid_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_offerings_request() :: %{
        optional("nextToken") => String.t()
      }
      
  """
  @type list_offerings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_project_result() :: %{}
      
  """
  @type delete_project_result() :: %{}

  @typedoc """

  ## Example:
      
      get_remote_access_session_result() :: %{
        "remoteAccessSession" => remote_access_session()
      }
      
  """
  @type get_remote_access_session_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_network_profile_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type delete_network_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_vpce_configuration_result() :: %{
        "vpceConfiguration" => vpce_configuration()
      }
      
  """
  @type get_vpce_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_project_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type get_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recurring_charge() :: %{
        "cost" => monetary_amount(),
        "frequency" => list(any())
      }
      
  """
  @type recurring_charge() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_instance_profile_result() :: %{}
      
  """
  @type delete_instance_profile_result() :: %{}

  @typedoc """

  ## Example:
      
      update_device_instance_request() :: %{
        optional("labels") => list(String.t()()),
        optional("profileArn") => String.t(),
        required("arn") => String.t()
      }
      
  """
  @type update_device_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_instance_profile_result() :: %{
        "instanceProfile" => instance_profile()
      }
      
  """
  @type get_instance_profile_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_instance_profile_result() :: %{
        "instanceProfile" => instance_profile()
      }
      
  """
  @type create_instance_profile_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_operation_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_operation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_device_instance_result() :: %{
        "deviceInstance" => device_instance()
      }
      
  """
  @type get_device_instance_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_job_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type stop_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpce_configuration() :: %{
        "arn" => String.t(),
        "serviceDnsName" => String.t(),
        "vpceConfigurationDescription" => String.t(),
        "vpceConfigurationName" => String.t(),
        "vpceServiceName" => String.t()
      }
      
  """
  @type vpce_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      install_to_remote_access_session_request() :: %{
        required("appArn") => String.t(),
        required("remoteAccessSessionArn") => String.t()
      }
      
  """
  @type install_to_remote_access_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_offering_status_result() :: %{
        "current" => map(),
        "nextPeriod" => map(),
        "nextToken" => String.t()
      }
      
  """
  @type get_offering_status_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_vpce_configuration_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type delete_vpce_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_uploads_request() :: %{
        optional("nextToken") => String.t(),
        optional("type") => list(any()),
        required("arn") => String.t()
      }
      
  """
  @type list_uploads_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      offering_status() :: %{
        "effectiveOn" => non_neg_integer(),
        "offering" => offering(),
        "quantity" => integer(),
        "type" => list(any())
      }
      
  """
  @type offering_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_unique_problems_result() :: %{
        "nextToken" => String.t(),
        "uniqueProblems" => map()
      }
      
  """
  @type list_unique_problems_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_remote_access_sessions_request() :: %{
        optional("nextToken") => String.t(),
        required("arn") => String.t()
      }
      
  """
  @type list_remote_access_sessions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_policy_exception() :: %{
        "message" => String.t(),
        "resourceName" => String.t()
      }
      
  """
  @type tag_policy_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_instance_profiles_result() :: %{
        "instanceProfiles" => list(instance_profile()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_instance_profiles_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_device_pool_result() :: %{
        "devicePool" => device_pool()
      }
      
  """
  @type create_device_pool_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_service_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type internal_service_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceARN") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_upload_result() :: %{
        "upload" => upload()
      }
      
  """
  @type get_upload_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test() :: %{
        "arn" => String.t(),
        "counters" => counters(),
        "created" => non_neg_integer(),
        "deviceMinutes" => device_minutes(),
        "message" => String.t(),
        "name" => String.t(),
        "result" => list(any()),
        "started" => non_neg_integer(),
        "status" => list(any()),
        "stopped" => non_neg_integer(),
        "type" => list(any())
      }
      
  """
  @type test() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_device_pool_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type delete_device_pool_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test_grid_vpc_config() :: %{
        "securityGroupIds" => list(String.t()()),
        "subnetIds" => list(String.t()()),
        "vpcId" => String.t()
      }
      
  """
  @type test_grid_vpc_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      upload() :: %{
        "arn" => String.t(),
        "category" => list(any()),
        "contentType" => String.t(),
        "created" => non_neg_integer(),
        "message" => String.t(),
        "metadata" => String.t(),
        "name" => String.t(),
        "status" => list(any()),
        "type" => list(any()),
        "url" => String.t()
      }
      
  """
  @type upload() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_profile() :: %{
        "arn" => String.t(),
        "description" => String.t(),
        "downlinkBandwidthBits" => float(),
        "downlinkDelayMs" => float(),
        "downlinkJitterMs" => float(),
        "downlinkLossPercent" => integer(),
        "name" => String.t(),
        "type" => list(any()),
        "uplinkBandwidthBits" => float(),
        "uplinkDelayMs" => float(),
        "uplinkJitterMs" => float(),
        "uplinkLossPercent" => integer()
      }
      
  """
  @type network_profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_instance_profile_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type delete_instance_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      schedule_run_configuration() :: %{
        "auxiliaryApps" => list(String.t()()),
        "billingMethod" => list(any()),
        "customerArtifactPaths" => customer_artifact_paths(),
        "extraDataPackageArn" => String.t(),
        "locale" => String.t(),
        "location" => location(),
        "networkProfileArn" => String.t(),
        "radios" => radios(),
        "vpceConfigurationArns" => list(String.t()())
      }
      
  """
  @type schedule_run_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_instance_profile_request() :: %{
        optional("description") => String.t(),
        optional("excludeAppPackagesFromCleanup") => list(String.t()()),
        optional("packageCleanup") => boolean(),
        optional("rebootAfterUse") => boolean(),
        required("name") => String.t()
      }
      
  """
  @type create_instance_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_device_pools_request() :: %{
        optional("nextToken") => String.t(),
        optional("type") => list(any()),
        required("arn") => String.t()
      }
      
  """
  @type list_device_pools_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unique_problem() :: %{
        "message" => String.t(),
        "problems" => list(problem()())
      }
      
  """
  @type unique_problem() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_network_profiles_request() :: %{
        optional("nextToken") => String.t(),
        optional("type") => list(any()),
        required("arn") => String.t()
      }
      
  """
  @type list_network_profiles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_job_result() :: %{
        "job" => job()
      }
      
  """
  @type get_job_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_vpce_configuration_result() :: %{}
      
  """
  @type delete_vpce_configuration_result() :: %{}

  @typedoc """

  ## Example:
      
      list_tests_request() :: %{
        optional("nextToken") => String.t(),
        required("arn") => String.t()
      }
      
  """
  @type list_tests_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      counters() :: %{
        "errored" => integer(),
        "failed" => integer(),
        "passed" => integer(),
        "skipped" => integer(),
        "stopped" => integer(),
        "total" => integer(),
        "warned" => integer()
      }
      
  """
  @type counters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_network_profile_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type get_network_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      radios() :: %{
        "bluetooth" => boolean(),
        "gps" => boolean(),
        "nfc" => boolean(),
        "wifi" => boolean()
      }
      
  """
  @type radios() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_vpce_configuration_request() :: %{
        optional("serviceDnsName") => String.t(),
        optional("vpceConfigurationDescription") => String.t(),
        optional("vpceConfigurationName") => String.t(),
        optional("vpceServiceName") => String.t(),
        required("arn") => String.t()
      }
      
  """
  @type update_vpce_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      schedule_run_test() :: %{
        "filter" => String.t(),
        "parameters" => map(),
        "testPackageArn" => String.t(),
        "testSpecArn" => String.t(),
        "type" => list(any())
      }
      
  """
  @type schedule_run_test() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_instance_profile_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type get_instance_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_device_pool_result() :: %{}
      
  """
  @type delete_device_pool_result() :: %{}

  @typedoc """

  ## Example:
      
      get_project_result() :: %{
        "project" => project()
      }
      
  """
  @type get_project_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      trial_minutes() :: %{
        "remaining" => float(),
        "total" => float()
      }
      
  """
  @type trial_minutes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_instance_profile_result() :: %{
        "instanceProfile" => instance_profile()
      }
      
  """
  @type update_instance_profile_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_samples_result() :: %{
        "nextToken" => String.t(),
        "samples" => list(sample()())
      }
      
  """
  @type list_samples_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_suite_result() :: %{
        "suite" => suite()
      }
      
  """
  @type get_suite_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_test_grid_projects_result() :: %{
        "nextToken" => String.t(),
        "testGridProjects" => list(test_grid_project()())
      }
      
  """
  @type list_test_grid_projects_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_offering_status_request() :: %{
        optional("nextToken") => String.t()
      }
      
  """
  @type get_offering_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_offering_transactions_result() :: %{
        "nextToken" => String.t(),
        "offeringTransactions" => list(offering_transaction()())
      }
      
  """
  @type list_offering_transactions_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      project() :: %{
        "arn" => String.t(),
        "created" => non_neg_integer(),
        "defaultJobTimeoutMinutes" => integer(),
        "name" => String.t(),
        "vpcConfig" => vpc_config()
      }
      
  """
  @type project() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test_grid_session_action() :: %{
        "action" => String.t(),
        "duration" => float(),
        "requestMethod" => String.t(),
        "started" => non_neg_integer(),
        "statusCode" => String.t()
      }
      
  """
  @type test_grid_session_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cannot_delete_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type cannot_delete_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_device_pool_compatibility_result() :: %{
        "compatibleDevices" => list(device_pool_compatibility_result()()),
        "incompatibleDevices" => list(device_pool_compatibility_result()())
      }
      
  """
  @type get_device_pool_compatibility_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_device_pool_compatibility_request() :: %{
        optional("appArn") => String.t(),
        optional("configuration") => schedule_run_configuration(),
        optional("test") => schedule_run_test(),
        optional("testType") => list(any()),
        required("devicePoolArn") => String.t()
      }
      
  """
  @type get_device_pool_compatibility_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      offering_transaction() :: %{
        "cost" => monetary_amount(),
        "createdOn" => non_neg_integer(),
        "offeringPromotionId" => String.t(),
        "offeringStatus" => offering_status(),
        "transactionId" => String.t()
      }
      
  """
  @type offering_transaction() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test_grid_project() :: %{
        "arn" => String.t(),
        "created" => non_neg_integer(),
        "description" => String.t(),
        "name" => String.t(),
        "vpcConfig" => test_grid_vpc_config()
      }
      
  """
  @type test_grid_project() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      purchase_offering_result() :: %{
        "offeringTransaction" => offering_transaction()
      }
      
  """
  @type purchase_offering_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_vpce_configuration_result() :: %{
        "vpceConfiguration" => vpce_configuration()
      }
      
  """
  @type update_vpce_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_remote_access_session_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type get_remote_access_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      c_p_u() :: %{
        "architecture" => String.t(),
        "clock" => float(),
        "frequency" => String.t()
      }
      
  """
  @type c_p_u() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_run_result() :: %{
        "run" => run()
      }
      
  """
  @type get_run_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_test_grid_project_result() :: %{
        "testGridProject" => test_grid_project()
      }
      
  """
  @type create_test_grid_project_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_device_instances_result() :: %{
        "deviceInstances" => list(device_instance()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_device_instances_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_runs_result() :: %{
        "nextToken" => String.t(),
        "runs" => list(run()())
      }
      
  """
  @type list_runs_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      renew_offering_result() :: %{
        "offeringTransaction" => offering_transaction()
      }
      
  """
  @type renew_offering_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_test_grid_project_request() :: %{
        required("projectArn") => String.t()
      }
      
  """
  @type delete_test_grid_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sample() :: %{
        "arn" => String.t(),
        "type" => list(any()),
        "url" => String.t()
      }
      
  """
  @type sample() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_device_pool_request() :: %{
        optional("clearMaxDevices") => boolean(),
        optional("description") => String.t(),
        optional("maxDevices") => integer(),
        optional("name") => String.t(),
        optional("rules") => list(rule()()),
        required("arn") => String.t()
      }
      
  """
  @type update_device_pool_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_config() :: %{
        "securityGroupIds" => list(String.t()()),
        "subnetIds" => list(String.t()()),
        "vpcId" => String.t()
      }
      
  """
  @type vpc_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_test_grid_session_artifacts_result() :: %{
        "artifacts" => list(test_grid_session_artifact()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_test_grid_session_artifacts_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_device_result() :: %{
        "device" => device()
      }
      
  """
  @type get_device_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      problem_detail() :: %{
        "arn" => String.t(),
        "name" => String.t()
      }
      
  """
  @type problem_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_network_profile_result() :: %{
        "networkProfile" => network_profile()
      }
      
  """
  @type create_network_profile_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      location() :: %{
        "latitude" => float(),
        "longitude" => float()
      }
      
  """
  @type location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execution_configuration() :: %{
        "accountsCleanup" => boolean(),
        "appPackagesCleanup" => boolean(),
        "jobTimeoutMinutes" => integer(),
        "skipAppResign" => boolean(),
        "videoCapture" => boolean()
      }
      
  """
  @type execution_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_offering_transactions_request() :: %{
        optional("nextToken") => String.t()
      }
      
  """
  @type list_offering_transactions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_account_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type service_account_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_test_grid_project_request() :: %{
        required("projectArn") => String.t()
      }
      
  """
  @type get_test_grid_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      install_to_remote_access_session_result() :: %{
        "appUpload" => upload()
      }
      
  """
  @type install_to_remote_access_session_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_samples_request() :: %{
        optional("nextToken") => String.t(),
        required("arn") => String.t()
      }
      
  """
  @type list_samples_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test_grid_session_artifact() :: %{
        "filename" => String.t(),
        "type" => list(any()),
        "url" => String.t()
      }
      
  """
  @type test_grid_session_artifact() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rule() :: %{
        "attribute" => list(any()),
        "operator" => list(any()),
        "value" => String.t()
      }
      
  """
  @type rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_run_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type delete_run_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      device_pool_compatibility_result() :: %{
        "compatible" => boolean(),
        "device" => device(),
        "incompatibilityMessages" => list(incompatibility_message()())
      }
      
  """
  @type device_pool_compatibility_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_device_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type get_device_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      device_selection_result() :: %{
        "filters" => list(device_filter()()),
        "matchedDevicesCount" => integer(),
        "maxDevices" => integer()
      }
      
  """
  @type device_selection_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_upload_result() :: %{
        "upload" => upload()
      }
      
  """
  @type create_upload_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_test_grid_url_result() :: %{
        "expires" => non_neg_integer(),
        "url" => String.t()
      }
      
  """
  @type create_test_grid_url_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_network_profile_result() :: %{
        "networkProfile" => network_profile()
      }
      
  """
  @type get_network_profile_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_remote_access_session_result() :: %{
        "remoteAccessSession" => remote_access_session()
      }
      
  """
  @type stop_remote_access_session_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_device_instance_result() :: %{
        "deviceInstance" => device_instance()
      }
      
  """
  @type update_device_instance_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_remote_access_session_result() :: %{}
      
  """
  @type delete_remote_access_session_result() :: %{}

  @typedoc """

  ## Example:
      
      stop_run_result() :: %{
        "run" => run()
      }
      
  """
  @type stop_run_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_offering_promotions_request() :: %{
        optional("nextToken") => String.t()
      }
      
  """
  @type list_offering_promotions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_project_request() :: %{
        optional("defaultJobTimeoutMinutes") => integer(),
        optional("name") => String.t(),
        optional("vpcConfig") => vpc_config(),
        required("arn") => String.t()
      }
      
  """
  @type update_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test_grid_session() :: %{
        "arn" => String.t(),
        "billingMinutes" => float(),
        "created" => non_neg_integer(),
        "ended" => non_neg_integer(),
        "seleniumProperties" => String.t(),
        "status" => list(any())
      }
      
  """
  @type test_grid_session() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_upload_request() :: %{
        optional("contentType") => String.t(),
        optional("editContent") => boolean(),
        optional("name") => String.t(),
        required("arn") => String.t()
      }
      
  """
  @type update_upload_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_run_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type stop_run_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_test_grid_project_result() :: %{}
      
  """
  @type delete_test_grid_project_result() :: %{}

  @typedoc """

  ## Example:
      
      incompatibility_message() :: %{
        "message" => String.t(),
        "type" => list(any())
      }
      
  """
  @type incompatibility_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      problem() :: %{
        "device" => device(),
        "job" => problem_detail(),
        "message" => String.t(),
        "result" => list(any()),
        "run" => problem_detail(),
        "suite" => problem_detail(),
        "test" => problem_detail()
      }
      
  """
  @type problem() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_run_result() :: %{}
      
  """
  @type delete_run_result() :: %{}

  @typedoc """

  ## Example:
      
      update_test_grid_project_result() :: %{
        "testGridProject" => test_grid_project()
      }
      
  """
  @type update_test_grid_project_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remote_access_session() :: %{
        "arn" => String.t(),
        "billingMethod" => list(any()),
        "clientId" => String.t(),
        "created" => non_neg_integer(),
        "device" => device(),
        "deviceMinutes" => device_minutes(),
        "deviceUdid" => String.t(),
        "endpoint" => String.t(),
        "hostAddress" => String.t(),
        "instanceArn" => String.t(),
        "interactionMode" => list(any()),
        "message" => String.t(),
        "name" => String.t(),
        "remoteDebugEnabled" => boolean(),
        "remoteRecordAppArn" => String.t(),
        "remoteRecordEnabled" => boolean(),
        "result" => list(any()),
        "skipAppResign" => boolean(),
        "started" => non_neg_integer(),
        "status" => list(any()),
        "stopped" => non_neg_integer(),
        "vpcConfig" => vpc_config()
      }
      
  """
  @type remote_access_session() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_test_grid_sessions_result() :: %{
        "nextToken" => String.t(),
        "testGridSessions" => list(test_grid_session()())
      }
      
  """
  @type list_test_grid_sessions_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      customer_artifact_paths() :: %{
        "androidPaths" => list(String.t()()),
        "deviceHostPaths" => list(String.t()()),
        "iosPaths" => list(String.t()())
      }
      
  """
  @type customer_artifact_paths() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      device_instance() :: %{
        "arn" => String.t(),
        "deviceArn" => String.t(),
        "instanceProfile" => instance_profile(),
        "labels" => list(String.t()()),
        "status" => list(any()),
        "udid" => String.t()
      }
      
  """
  @type device_instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_remote_access_session_result() :: %{
        "remoteAccessSession" => remote_access_session()
      }
      
  """
  @type create_remote_access_session_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      get_device_pool_result() :: %{
        "devicePool" => device_pool()
      }
      
  """
  @type get_device_pool_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_device_pool_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type get_device_pool_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_network_profile_result() :: %{
        "networkProfile" => network_profile()
      }
      
  """
  @type update_network_profile_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_settings() :: %{
        "awsAccountNumber" => String.t(),
        "defaultJobTimeoutMinutes" => integer(),
        "maxJobTimeoutMinutes" => integer(),
        "maxSlots" => map(),
        "skipAppResign" => boolean(),
        "trialMinutes" => trial_minutes(),
        "unmeteredDevices" => map(),
        "unmeteredRemoteAccessDevices" => map()
      }
      
  """
  @type account_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_device_pool_result() :: %{
        "devicePool" => device_pool()
      }
      
  """
  @type update_device_pool_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_network_profile_request() :: %{
        optional("description") => String.t(),
        optional("downlinkBandwidthBits") => float(),
        optional("downlinkDelayMs") => float(),
        optional("downlinkJitterMs") => float(),
        optional("downlinkLossPercent") => integer(),
        optional("name") => String.t(),
        optional("type") => list(any()),
        optional("uplinkBandwidthBits") => float(),
        optional("uplinkDelayMs") => float(),
        optional("uplinkJitterMs") => float(),
        optional("uplinkLossPercent") => integer(),
        required("arn") => String.t()
      }
      
  """
  @type update_network_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_upload_request() :: %{
        optional("contentType") => String.t(),
        required("name") => String.t(),
        required("projectArn") => String.t(),
        required("type") => list(any())
      }
      
  """
  @type create_upload_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceARN") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      idempotency_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type idempotency_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      job() :: %{
        "arn" => String.t(),
        "counters" => counters(),
        "created" => non_neg_integer(),
        "device" => device(),
        "deviceMinutes" => device_minutes(),
        "instanceArn" => String.t(),
        "message" => String.t(),
        "name" => String.t(),
        "result" => list(any()),
        "started" => non_neg_integer(),
        "status" => list(any()),
        "stopped" => non_neg_integer(),
        "type" => list(any()),
        "videoCapture" => boolean(),
        "videoEndpoint" => String.t()
      }
      
  """
  @type job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_artifacts_request() :: %{
        optional("nextToken") => String.t(),
        required("arn") => String.t(),
        required("type") => list(any())
      }
      
  """
  @type list_artifacts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_network_profile_result() :: %{}
      
  """
  @type delete_network_profile_result() :: %{}

  @typedoc """

  ## Example:
      
      list_device_instances_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_device_instances_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_job_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type get_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_project_request() :: %{
        optional("defaultJobTimeoutMinutes") => integer(),
        optional("vpcConfig") => vpc_config(),
        required("name") => String.t()
      }
      
  """
  @type create_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_vpce_configurations_result() :: %{
        "nextToken" => String.t(),
        "vpceConfigurations" => list(vpce_configuration()())
      }
      
  """
  @type list_vpce_configurations_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_suites_request() :: %{
        optional("nextToken") => String.t(),
        required("arn") => String.t()
      }
      
  """
  @type list_suites_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_projects_request() :: %{
        optional("arn") => String.t(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_projects_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_account_settings_result() :: %{
        "accountSettings" => account_settings()
      }
      
  """
  @type get_account_settings_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_vpce_configurations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_vpce_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      offering() :: %{
        "description" => String.t(),
        "id" => String.t(),
        "platform" => list(any()),
        "recurringCharges" => list(recurring_charge()()),
        "type" => list(any())
      }
      
  """
  @type offering() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      device_minutes() :: %{
        "metered" => float(),
        "total" => float(),
        "unmetered" => float()
      }
      
  """
  @type device_minutes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resolution() :: %{
        "height" => integer(),
        "width" => integer()
      }
      
  """
  @type resolution() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_instance_profile_request() :: %{
        optional("description") => String.t(),
        optional("excludeAppPackagesFromCleanup") => list(String.t()()),
        optional("name") => String.t(),
        optional("packageCleanup") => boolean(),
        optional("rebootAfterUse") => boolean(),
        required("arn") => String.t()
      }
      
  """
  @type update_instance_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_test_grid_url_request() :: %{
        required("expiresInSeconds") => integer(),
        required("projectArn") => String.t()
      }
      
  """
  @type create_test_grid_url_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_test_result() :: %{
        "test" => test()
      }
      
  """
  @type get_test_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_device_pools_result() :: %{
        "devicePools" => list(device_pool()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_device_pools_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_suites_result() :: %{
        "nextToken" => String.t(),
        "suites" => list(suite()())
      }
      
  """
  @type list_suites_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_test_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type get_test_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_test_grid_project_request() :: %{
        optional("description") => String.t(),
        optional("vpcConfig") => test_grid_vpc_config(),
        required("name") => String.t()
      }
      
  """
  @type create_test_grid_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_remote_access_session_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type stop_remote_access_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      artifact() :: %{
        "arn" => String.t(),
        "extension" => String.t(),
        "name" => String.t(),
        "type" => list(any()),
        "url" => String.t()
      }
      
  """
  @type artifact() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_artifacts_result() :: %{
        "artifacts" => list(artifact()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_artifacts_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      device() :: %{
        "arn" => String.t(),
        "availability" => list(any()),
        "carrier" => String.t(),
        "cpu" => c_p_u(),
        "fleetName" => String.t(),
        "fleetType" => String.t(),
        "formFactor" => list(any()),
        "heapSize" => float(),
        "image" => String.t(),
        "instances" => list(device_instance()()),
        "manufacturer" => String.t(),
        "memory" => float(),
        "model" => String.t(),
        "modelId" => String.t(),
        "name" => String.t(),
        "os" => String.t(),
        "platform" => list(any()),
        "radio" => String.t(),
        "remoteAccessEnabled" => boolean(),
        "remoteDebugEnabled" => boolean(),
        "resolution" => resolution()
      }
      
  """
  @type device() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_projects_result() :: %{
        "nextToken" => String.t(),
        "projects" => list(project()())
      }
      
  """
  @type list_projects_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_project_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type delete_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_remote_access_sessions_result() :: %{
        "nextToken" => String.t(),
        "remoteAccessSessions" => list(remote_access_session()())
      }
      
  """
  @type list_remote_access_sessions_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_test_grid_project_result() :: %{
        "testGridProject" => test_grid_project()
      }
      
  """
  @type get_test_grid_project_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      offering_promotion() :: %{
        "description" => String.t(),
        "id" => String.t()
      }
      
  """
  @type offering_promotion() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_offerings_result() :: %{
        "nextToken" => String.t(),
        "offerings" => list(offering()())
      }
      
  """
  @type list_offerings_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_test_grid_session_actions_result() :: %{
        "actions" => list(test_grid_session_action()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_test_grid_session_actions_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_project_result() :: %{
        "project" => project()
      }
      
  """
  @type create_project_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_job_result() :: %{
        "job" => job()
      }
      
  """
  @type stop_job_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_runs_request() :: %{
        optional("nextToken") => String.t(),
        required("arn") => String.t()
      }
      
  """
  @type list_runs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_vpce_configuration_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type get_vpce_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      device_filter() :: %{
        "attribute" => list(any()),
        "operator" => list(any()),
        "values" => list(String.t()())
      }
      
  """
  @type device_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_test_grid_sessions_request() :: %{
        optional("creationTimeAfter") => non_neg_integer(),
        optional("creationTimeBefore") => non_neg_integer(),
        optional("endTimeAfter") => non_neg_integer(),
        optional("endTimeBefore") => non_neg_integer(),
        optional("maxResult") => integer(),
        optional("nextToken") => String.t(),
        optional("status") => list(any()),
        required("projectArn") => String.t()
      }
      
  """
  @type list_test_grid_sessions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_uploads_result() :: %{
        "nextToken" => String.t(),
        "uploads" => list(upload()())
      }
      
  """
  @type list_uploads_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_tags_exception() :: %{
        "message" => String.t(),
        "resourceName" => String.t()
      }
      
  """
  @type too_many_tags_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_test_grid_session_result() :: %{
        "testGridSession" => test_grid_session()
      }
      
  """
  @type get_test_grid_session_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_device_instance_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type get_device_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      purchase_offering_request() :: %{
        optional("offeringPromotionId") => String.t(),
        required("offeringId") => String.t(),
        required("quantity") => integer()
      }
      
  """
  @type purchase_offering_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      run() :: %{
        "appUpload" => String.t(),
        "arn" => String.t(),
        "billingMethod" => list(any()),
        "completedJobs" => integer(),
        "counters" => counters(),
        "created" => non_neg_integer(),
        "customerArtifactPaths" => customer_artifact_paths(),
        "deviceMinutes" => device_minutes(),
        "devicePoolArn" => String.t(),
        "deviceSelectionResult" => device_selection_result(),
        "eventCount" => integer(),
        "jobTimeoutMinutes" => integer(),
        "locale" => String.t(),
        "location" => location(),
        "message" => String.t(),
        "name" => String.t(),
        "networkProfile" => network_profile(),
        "parsingResultUrl" => String.t(),
        "platform" => list(any()),
        "radios" => radios(),
        "result" => list(any()),
        "resultCode" => list(any()),
        "seed" => integer(),
        "skipAppResign" => boolean(),
        "started" => non_neg_integer(),
        "status" => list(any()),
        "stopped" => non_neg_integer(),
        "testSpecArn" => String.t(),
        "totalJobs" => integer(),
        "type" => list(any()),
        "vpcConfig" => vpc_config(),
        "webUrl" => String.t()
      }
      
  """
  @type run() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      argument_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type argument_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_test_grid_projects_request() :: %{
        optional("maxResult") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_test_grid_projects_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_project_result() :: %{
        "project" => project()
      }
      
  """
  @type update_project_result() :: %{String.t() => any()}

  @type create_device_pool_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type create_instance_profile_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type create_network_profile_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type create_project_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()
          | tag_operation_exception()

  @type create_remote_access_session_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type create_test_grid_project_errors() ::
          argument_exception() | limit_exceeded_exception() | internal_service_exception()

  @type create_test_grid_url_errors() ::
          argument_exception() | not_found_exception() | internal_service_exception()

  @type create_upload_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type create_vpce_configuration_errors() ::
          argument_exception() | limit_exceeded_exception() | service_account_exception()

  @type delete_device_pool_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type delete_instance_profile_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type delete_network_profile_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type delete_project_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type delete_remote_access_session_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type delete_run_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type delete_test_grid_project_errors() ::
          argument_exception()
          | not_found_exception()
          | cannot_delete_exception()
          | internal_service_exception()

  @type delete_upload_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type delete_vpce_configuration_errors() ::
          argument_exception()
          | service_account_exception()
          | not_found_exception()
          | invalid_operation_exception()

  @type get_account_settings_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type get_device_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type get_device_instance_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type get_device_pool_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type get_device_pool_compatibility_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type get_instance_profile_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type get_job_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type get_network_profile_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type get_offering_status_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()
          | not_eligible_exception()

  @type get_project_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type get_remote_access_session_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type get_run_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type get_suite_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type get_test_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type get_test_grid_project_errors() ::
          argument_exception() | not_found_exception() | internal_service_exception()

  @type get_test_grid_session_errors() ::
          argument_exception() | not_found_exception() | internal_service_exception()

  @type get_upload_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type get_vpce_configuration_errors() ::
          argument_exception() | service_account_exception() | not_found_exception()

  @type install_to_remote_access_session_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type list_artifacts_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type list_device_instances_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type list_device_pools_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type list_devices_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type list_instance_profiles_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type list_jobs_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type list_network_profiles_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type list_offering_promotions_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()
          | not_eligible_exception()

  @type list_offering_transactions_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()
          | not_eligible_exception()

  @type list_offerings_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()
          | not_eligible_exception()

  @type list_projects_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type list_remote_access_sessions_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type list_runs_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type list_samples_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type list_suites_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type list_tags_for_resource_errors() ::
          argument_exception() | not_found_exception() | tag_operation_exception()

  @type list_test_grid_projects_errors() :: argument_exception() | internal_service_exception()

  @type list_test_grid_session_actions_errors() ::
          argument_exception() | not_found_exception() | internal_service_exception()

  @type list_test_grid_session_artifacts_errors() ::
          argument_exception() | not_found_exception() | internal_service_exception()

  @type list_test_grid_sessions_errors() ::
          argument_exception() | not_found_exception() | internal_service_exception()

  @type list_tests_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type list_unique_problems_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type list_uploads_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type list_vpce_configurations_errors() :: argument_exception() | service_account_exception()

  @type purchase_offering_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()
          | not_eligible_exception()

  @type renew_offering_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()
          | not_eligible_exception()

  @type schedule_run_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | idempotency_exception()
          | service_account_exception()
          | not_found_exception()

  @type stop_job_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type stop_remote_access_session_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type stop_run_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type tag_resource_errors() ::
          argument_exception()
          | too_many_tags_exception()
          | not_found_exception()
          | tag_policy_exception()
          | tag_operation_exception()

  @type untag_resource_errors() ::
          argument_exception() | not_found_exception() | tag_operation_exception()

  @type update_device_instance_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type update_device_pool_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type update_instance_profile_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type update_network_profile_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type update_project_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type update_test_grid_project_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_service_exception()

  @type update_upload_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type update_vpce_configuration_errors() ::
          argument_exception()
          | service_account_exception()
          | not_found_exception()
          | invalid_operation_exception()

  def metadata do
    %{
      api_version: "2015-06-23",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "devicefarm",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Device Farm",
      signature_version: "v4",
      signing_name: "devicefarm",
      target_prefix: "DeviceFarm_20150623"
    }
  end

  @doc """
   
  Creates a device pool.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20CreateDevicePool&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_device_pool_request`)
    %{
      optional("description") => String.t(),
      optional("maxDevices") => integer(),
      required("name") => String.t(),
      required("projectArn") => String.t(),
      required("rules") => list(rule()())
    }
  """
  @spec create_device_pool(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_device_pool_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_device_pool_errors()}
  def create_device_pool(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateDevicePool", input, options)
  end

  @doc """
   
  Creates a profile that can be applied to one or more private fleet device
  instances.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20CreateInstanceProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_instance_profile_request`)
    %{
      optional("description") => String.t(),
      optional("excludeAppPackagesFromCleanup") => list(String.t()()),
      optional("packageCleanup") => boolean(),
      optional("rebootAfterUse") => boolean(),
      required("name") => String.t()
    }
  """
  @spec create_instance_profile(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_instance_profile_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_instance_profile_errors()}
  def create_instance_profile(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateInstanceProfile", input, options)
  end

  @doc """
   
  Creates a network profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20CreateNetworkProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_network_profile_request`)
    %{
      optional("description") => String.t(),
      optional("downlinkBandwidthBits") => float(),
      optional("downlinkDelayMs") => float(),
      optional("downlinkJitterMs") => float(),
      optional("downlinkLossPercent") => integer(),
      optional("type") => list(any()),
      optional("uplinkBandwidthBits") => float(),
      optional("uplinkDelayMs") => float(),
      optional("uplinkJitterMs") => float(),
      optional("uplinkLossPercent") => integer(),
      required("name") => String.t(),
      required("projectArn") => String.t()
    }
  """
  @spec create_network_profile(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_network_profile_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_network_profile_errors()}
  def create_network_profile(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateNetworkProfile", input, options)
  end

  @doc """
   
  Creates a project.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20CreateProject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_project_request`)
    %{
      optional("defaultJobTimeoutMinutes") => integer(),
      optional("vpcConfig") => vpc_config(),
      required("name") => String.t()
    }
  """
  @spec create_project(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_project_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_project_errors()}
  def create_project(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateProject", input, options)
  end

  @doc """
   
  Specifies and starts a remote access session.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20CreateRemoteAccessSession&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_remote_access_session_request`)
    %{
      optional("clientId") => String.t(),
      optional("configuration") => create_remote_access_session_configuration(),
      optional("instanceArn") => String.t(),
      optional("interactionMode") => list(any()),
      optional("name") => String.t(),
      optional("remoteDebugEnabled") => boolean(),
      optional("remoteRecordAppArn") => String.t(),
      optional("remoteRecordEnabled") => boolean(),
      optional("skipAppResign") => boolean(),
      optional("sshPublicKey") => String.t(),
      required("deviceArn") => String.t(),
      required("projectArn") => String.t()
    }
  """
  @spec create_remote_access_session(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_remote_access_session_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_remote_access_session_errors()}
  def create_remote_access_session(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateRemoteAccessSession", input, options)
  end

  @doc """
   
  Creates a Selenium testing project. Projects are used to track `TestGridSession`
  instances.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20CreateTestGridProject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_test_grid_project_request`)
    %{
      optional("description") => String.t(),
      optional("vpcConfig") => test_grid_vpc_config(),
      required("name") => String.t()
    }
  """
  @spec create_test_grid_project(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_test_grid_project_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_test_grid_project_errors()}
  def create_test_grid_project(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateTestGridProject", input, options)
  end

  @doc """
   
  Creates a signed, short-term URL that can be passed to a Selenium
  `RemoteWebDriver` constructor.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20CreateTestGridUrl&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_test_grid_url_request`)
    %{
      required("expiresInSeconds") => integer(),
      required("projectArn") => String.t()
    }
  """
  @spec create_test_grid_url(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_test_grid_url_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_test_grid_url_errors()}
  def create_test_grid_url(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateTestGridUrl", input, options)
  end

  @doc """
   
  Uploads an app or test scripts.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20CreateUpload&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_upload_request`)
    %{
      optional("contentType") => String.t(),
      required("name") => String.t(),
      required("projectArn") => String.t(),
      required("type") => list(any())
    }
  """
  @spec create_upload(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_upload_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_upload_errors()}
  def create_upload(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateUpload", input, options)
  end

  @doc """
   
  Creates a configuration record in Device Farm for your Amazon Virtual Private
  Cloud (VPC) endpoint.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20CreateVPCEConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_vpce_configuration_request`)
    %{
      optional("vpceConfigurationDescription") => String.t(),
      required("serviceDnsName") => String.t(),
      required("vpceConfigurationName") => String.t(),
      required("vpceServiceName") => String.t()
    }
  """
  @spec create_vpce_configuration(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_vpce_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_vpce_configuration_errors()}
  def create_vpce_configuration(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateVPCEConfiguration", input, options)
  end

  @doc """
   
  Deletes a device pool given the pool ARN. Does not allow deletion of curated
  pools owned by the system.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20DeleteDevicePool&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_device_pool_request`)
    %{
      required("arn") => String.t()
    }
  """
  @spec delete_device_pool(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_device_pool_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_device_pool_errors()}
  def delete_device_pool(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteDevicePool", input, options)
  end

  @doc """
   
  Deletes a profile that can be applied to one or more private device instances.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20DeleteInstanceProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_instance_profile_request`)
    %{
      required("arn") => String.t()
    }
  """
  @spec delete_instance_profile(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_instance_profile_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_instance_profile_errors()}
  def delete_instance_profile(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteInstanceProfile", input, options)
  end

  @doc """
   
  Deletes a network profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20DeleteNetworkProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_network_profile_request`)
    %{
      required("arn") => String.t()
    }
  """
  @spec delete_network_profile(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_network_profile_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_network_profile_errors()}
  def delete_network_profile(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteNetworkProfile", input, options)
  end

  @doc """
   
  Deletes an AWS Device Farm project, given the project ARN.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20DeleteProject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_project_request`)
    %{
      required("arn") => String.t()
    }
  """
  @spec delete_project(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_project_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_project_errors()}
  def delete_project(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteProject", input, options)
  end

  @doc """
   
  Deletes a completed remote access session and its results.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20DeleteRemoteAccessSession&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_remote_access_session_request`)
    %{
      required("arn") => String.t()
    }
  """
  @spec delete_remote_access_session(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_remote_access_session_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_remote_access_session_errors()}
  def delete_remote_access_session(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteRemoteAccessSession", input, options)
  end

  @doc """
   
  Deletes the run, given the run ARN.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20DeleteRun&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_run_request`)
    %{
      required("arn") => String.t()
    }
  """
  @spec delete_run(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_run_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_run_errors()}
  def delete_run(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteRun", input, options)
  end

  @doc """
   
  Deletes a Selenium testing project and all content generated under it. You
  cannot undo this operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20DeleteTestGridProject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_test_grid_project_request`)
    %{
      required("projectArn") => String.t()
    }
  """
  @spec delete_test_grid_project(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_test_grid_project_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_test_grid_project_errors()}
  def delete_test_grid_project(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteTestGridProject", input, options)
  end

  @doc """
   
  Deletes an upload given the upload ARN.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20DeleteUpload&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_upload_request`)
    %{
      required("arn") => String.t()
    }
  """
  @spec delete_upload(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_upload_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_upload_errors()}
  def delete_upload(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteUpload", input, options)
  end

  @doc """
   
  Deletes a configuration for your Amazon Virtual Private Cloud (VPC) endpoint.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20DeleteVPCEConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_vpce_configuration_request`)
    %{
      required("arn") => String.t()
    }
  """
  @spec delete_vpce_configuration(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_vpce_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_vpce_configuration_errors()}
  def delete_vpce_configuration(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteVPCEConfiguration", input, options)
  end

  @doc """
   
  Returns the number of unmetered iOS or unmetered Android devices that have been
  purchased by the account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20GetAccountSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_account_settings_request`)
    %{
      
    }
  """
  @spec get_account_settings(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_account_settings_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_account_settings_errors()}
  def get_account_settings(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetAccountSettings", input, options)
  end

  @doc """
   
  Gets information about a unique device type.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20GetDevice&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_device_request`)
    %{
      required("arn") => String.t()
    }
  """
  @spec get_device(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_device_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_device_errors()}
  def get_device(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDevice", input, options)
  end

  @doc """
   
  Returns information about a device instance that belongs to a private device
  fleet.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20GetDeviceInstance&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_device_instance_request`)
    %{
      required("arn") => String.t()
    }
  """
  @spec get_device_instance(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_device_instance_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_device_instance_errors()}
  def get_device_instance(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDeviceInstance", input, options)
  end

  @doc """
   
  Gets information about a device pool.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20GetDevicePool&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_device_pool_request`)
    %{
      required("arn") => String.t()
    }
  """
  @spec get_device_pool(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_device_pool_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_device_pool_errors()}
  def get_device_pool(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDevicePool", input, options)
  end

  @doc """
   
  Gets information about compatibility with a device pool.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20GetDevicePoolCompatibility&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_device_pool_compatibility_request`)
    %{
      optional("appArn") => String.t(),
      optional("configuration") => schedule_run_configuration(),
      optional("test") => schedule_run_test(),
      optional("testType") => list(any()),
      required("devicePoolArn") => String.t()
    }
  """
  @spec get_device_pool_compatibility(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_device_pool_compatibility_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_device_pool_compatibility_errors()}
  def get_device_pool_compatibility(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDevicePoolCompatibility", input, options)
  end

  @doc """
   
  Returns information about the specified instance profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20GetInstanceProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_instance_profile_request`)
    %{
      required("arn") => String.t()
    }
  """
  @spec get_instance_profile(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_instance_profile_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_instance_profile_errors()}
  def get_instance_profile(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetInstanceProfile", input, options)
  end

  @doc """
   
  Gets information about a job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20GetJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_job_request`)
    %{
      required("arn") => String.t()
    }
  """
  @spec get_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_job_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_job_errors()}
  def get_job(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetJob", input, options)
  end

  @doc """
   
  Returns information about a network profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20GetNetworkProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_network_profile_request`)
    %{
      required("arn") => String.t()
    }
  """
  @spec get_network_profile(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_network_profile_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_network_profile_errors()}
  def get_network_profile(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetNetworkProfile", input, options)
  end

  @doc """
   
  Gets the current status and future status of all offerings purchased by an AWS
  account. The response indicates how many offerings are currently available and
  the offerings that will be available in the next period. The API returns a
  `NotEligible` error if the user is not permitted to invoke the operation. If
  you must be able to invoke this operation, contact
  [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20GetOfferingStatus&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_offering_status_request`)
    %{
      optional("nextToken") => String.t()
    }
  """
  @spec get_offering_status(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_offering_status_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_offering_status_errors()}
  def get_offering_status(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetOfferingStatus", input, options)
  end

  @doc """
   
  Gets information about a project.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20GetProject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_project_request`)
    %{
      required("arn") => String.t()
    }
  """
  @spec get_project(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_project_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_project_errors()}
  def get_project(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetProject", input, options)
  end

  @doc """
   
  Returns a link to a currently running remote access session.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20GetRemoteAccessSession&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_remote_access_session_request`)
    %{
      required("arn") => String.t()
    }
  """
  @spec get_remote_access_session(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_remote_access_session_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_remote_access_session_errors()}
  def get_remote_access_session(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetRemoteAccessSession", input, options)
  end

  @doc """
   
  Gets information about a run.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20GetRun&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_run_request`)
    %{
      required("arn") => String.t()
    }
  """
  @spec get_run(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_run_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_run_errors()}
  def get_run(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetRun", input, options)
  end

  @doc """
   
  Gets information about a suite.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20GetSuite&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_suite_request`)
    %{
      required("arn") => String.t()
    }
  """
  @spec get_suite(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_suite_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_suite_errors()}
  def get_suite(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetSuite", input, options)
  end

  @doc """
   
  Gets information about a test.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20GetTest&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_test_request`)
    %{
      required("arn") => String.t()
    }
  """
  @spec get_test(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_test_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_test_errors()}
  def get_test(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetTest", input, options)
  end

  @doc """
   
  Retrieves information about a Selenium testing project.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20GetTestGridProject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_test_grid_project_request`)
    %{
      required("projectArn") => String.t()
    }
  """
  @spec get_test_grid_project(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_test_grid_project_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_test_grid_project_errors()}
  def get_test_grid_project(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetTestGridProject", input, options)
  end

  @doc """
   
  A session is an instance of a browser created through a `RemoteWebDriver` with
  the URL from `CreateTestGridUrlResult$url`. You can use the following to look
  up sessions:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20GetTestGridSession&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_test_grid_session_request`)
    %{
      optional("projectArn") => String.t(),
      optional("sessionArn") => String.t(),
      optional("sessionId") => String.t()
    }
  """
  @spec get_test_grid_session(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_test_grid_session_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_test_grid_session_errors()}
  def get_test_grid_session(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetTestGridSession", input, options)
  end

  @doc """
   
  Gets information about an upload.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20GetUpload&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_upload_request`)
    %{
      required("arn") => String.t()
    }
  """
  @spec get_upload(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_upload_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_upload_errors()}
  def get_upload(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetUpload", input, options)
  end

  @doc """
   
  Returns information about the configuration settings for your Amazon Virtual
  Private Cloud (VPC) endpoint.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20GetVPCEConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_vpce_configuration_request`)
    %{
      required("arn") => String.t()
    }
  """
  @spec get_vpce_configuration(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_vpce_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_vpce_configuration_errors()}
  def get_vpce_configuration(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetVPCEConfiguration", input, options)
  end

  @doc """
   
  Installs an application to the device in a remote access session. For Android
  applications, the file must be in .apk format. For iOS applications, the file
  must be in .ipa format.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20InstallToRemoteAccessSession&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:install_to_remote_access_session_request`)
    %{
      required("appArn") => String.t(),
      required("remoteAccessSessionArn") => String.t()
    }
  """
  @spec install_to_remote_access_session(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, install_to_remote_access_session_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, install_to_remote_access_session_errors()}
  def install_to_remote_access_session(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "InstallToRemoteAccessSession", input, options)
  end

  @doc """
   
  Gets information about artifacts.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20ListArtifacts&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_artifacts_request`)
    %{
      optional("nextToken") => String.t(),
      required("arn") => String.t(),
      required("type") => list(any())
    }
  """
  @spec list_artifacts(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_artifacts_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_artifacts_errors()}
  def list_artifacts(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListArtifacts", input, options)
  end

  @doc """
   
  Returns information about the private device instances associated with one or
  more AWS accounts.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20ListDeviceInstances&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_device_instances_request`)
    %{
      optional("maxResults") => integer(),
      optional("nextToken") => String.t()
    }
  """
  @spec list_device_instances(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_device_instances_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_device_instances_errors()}
  def list_device_instances(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListDeviceInstances", input, options)
  end

  @doc """
   
  Gets information about device pools.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20ListDevicePools&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_device_pools_request`)
    %{
      optional("nextToken") => String.t(),
      optional("type") => list(any()),
      required("arn") => String.t()
    }
  """
  @spec list_device_pools(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_device_pools_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_device_pools_errors()}
  def list_device_pools(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListDevicePools", input, options)
  end

  @doc """
   
  Gets information about unique device types.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20ListDevices&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_devices_request`)
    %{
      optional("arn") => String.t(),
      optional("filters") => list(device_filter()()),
      optional("nextToken") => String.t()
    }
  """
  @spec list_devices(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_devices_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_devices_errors()}
  def list_devices(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListDevices", input, options)
  end

  @doc """
   
  Returns information about all the instance profiles in an AWS account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20ListInstanceProfiles&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_instance_profiles_request`)
    %{
      optional("maxResults") => integer(),
      optional("nextToken") => String.t()
    }
  """
  @spec list_instance_profiles(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_instance_profiles_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_instance_profiles_errors()}
  def list_instance_profiles(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListInstanceProfiles", input, options)
  end

  @doc """
   
  Gets information about jobs for a given test run.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20ListJobs&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_jobs_request`)
    %{
      optional("nextToken") => String.t(),
      required("arn") => String.t()
    }
  """
  @spec list_jobs(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_jobs_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_jobs_errors()}
  def list_jobs(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListJobs", input, options)
  end

  @doc """
   
  Returns the list of available network profiles.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20ListNetworkProfiles&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_network_profiles_request`)
    %{
      optional("nextToken") => String.t(),
      optional("type") => list(any()),
      required("arn") => String.t()
    }
  """
  @spec list_network_profiles(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_network_profiles_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_network_profiles_errors()}
  def list_network_profiles(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListNetworkProfiles", input, options)
  end

  @doc """
   
  Returns a list of offering promotions. Each offering promotion record contains
  the ID and description of the promotion. The API returns a `NotEligible` error
  if the caller is not permitted to invoke the operation. Contact
  [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com)
  if you must be able to invoke this operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20ListOfferingPromotions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_offering_promotions_request`)
    %{
      optional("nextToken") => String.t()
    }
  """
  @spec list_offering_promotions(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_offering_promotions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_offering_promotions_errors()}
  def list_offering_promotions(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListOfferingPromotions", input, options)
  end

  @doc """
   
  Returns a list of all historical purchases, renewals, and system renewal
  transactions for an AWS account. The list is paginated and ordered by a
  descending timestamp (most recent transactions are first). The API returns a
  `NotEligible` error if the user is not permitted to invoke the operation. If
  you must be able to invoke this operation, contact
  [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20ListOfferingTransactions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_offering_transactions_request`)
    %{
      optional("nextToken") => String.t()
    }
  """
  @spec list_offering_transactions(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_offering_transactions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_offering_transactions_errors()}
  def list_offering_transactions(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListOfferingTransactions", input, options)
  end

  @doc """
   
  Returns a list of products or offerings that the user can manage through the
  API. Each offering record indicates the recurring price per unit and the
  frequency for that offering. The API returns a `NotEligible` error if the user
  is not permitted to invoke the operation. If you must be able to invoke this
  operation, contact
  [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20ListOfferings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_offerings_request`)
    %{
      optional("nextToken") => String.t()
    }
  """
  @spec list_offerings(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_offerings_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_offerings_errors()}
  def list_offerings(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListOfferings", input, options)
  end

  @doc """
   
  Gets information about projects.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20ListProjects&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_projects_request`)
    %{
      optional("arn") => String.t(),
      optional("nextToken") => String.t()
    }
  """
  @spec list_projects(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_projects_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_projects_errors()}
  def list_projects(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListProjects", input, options)
  end

  @doc """
   
  Returns a list of all currently running remote access sessions.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20ListRemoteAccessSessions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_remote_access_sessions_request`)
    %{
      optional("nextToken") => String.t(),
      required("arn") => String.t()
    }
  """
  @spec list_remote_access_sessions(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_remote_access_sessions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_remote_access_sessions_errors()}
  def list_remote_access_sessions(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListRemoteAccessSessions", input, options)
  end

  @doc """
   
  Gets information about runs, given an AWS Device Farm project ARN.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20ListRuns&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_runs_request`)
    %{
      optional("nextToken") => String.t(),
      required("arn") => String.t()
    }
  """
  @spec list_runs(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_runs_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_runs_errors()}
  def list_runs(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListRuns", input, options)
  end

  @doc """
   
  Gets information about samples, given an AWS Device Farm job ARN.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20ListSamples&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_samples_request`)
    %{
      optional("nextToken") => String.t(),
      required("arn") => String.t()
    }
  """
  @spec list_samples(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_samples_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_samples_errors()}
  def list_samples(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListSamples", input, options)
  end

  @doc """
   
  Gets information about test suites for a given job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20ListSuites&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_suites_request`)
    %{
      optional("nextToken") => String.t(),
      required("arn") => String.t()
    }
  """
  @spec list_suites(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_suites_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_suites_errors()}
  def list_suites(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListSuites", input, options)
  end

  @doc """
   
  List the tags for an AWS Device Farm resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_tags_for_resource_request`)
    %{
      required("ResourceARN") => String.t()
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
   
  Gets a list of all Selenium testing projects in your account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20ListTestGridProjects&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_test_grid_projects_request`)
    %{
      optional("maxResult") => integer(),
      optional("nextToken") => String.t()
    }
  """
  @spec list_test_grid_projects(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_test_grid_projects_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_test_grid_projects_errors()}
  def list_test_grid_projects(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTestGridProjects", input, options)
  end

  @doc """
   
  Returns a list of the actions taken in a `TestGridSession`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20ListTestGridSessionActions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_test_grid_session_actions_request`)
    %{
      optional("maxResult") => integer(),
      optional("nextToken") => String.t(),
      required("sessionArn") => String.t()
    }
  """
  @spec list_test_grid_session_actions(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_test_grid_session_actions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_test_grid_session_actions_errors()}
  def list_test_grid_session_actions(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTestGridSessionActions", input, options)
  end

  @doc """
   
  Retrieves a list of artifacts created during the session.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20ListTestGridSessionArtifacts&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_test_grid_session_artifacts_request`)
    %{
      optional("maxResult") => integer(),
      optional("nextToken") => String.t(),
      optional("type") => list(any()),
      required("sessionArn") => String.t()
    }
  """
  @spec list_test_grid_session_artifacts(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_test_grid_session_artifacts_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_test_grid_session_artifacts_errors()}
  def list_test_grid_session_artifacts(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTestGridSessionArtifacts", input, options)
  end

  @doc """
   
  Retrieves a list of sessions for a `TestGridProject`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20ListTestGridSessions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_test_grid_sessions_request`)
    %{
      optional("creationTimeAfter") => non_neg_integer(),
      optional("creationTimeBefore") => non_neg_integer(),
      optional("endTimeAfter") => non_neg_integer(),
      optional("endTimeBefore") => non_neg_integer(),
      optional("maxResult") => integer(),
      optional("nextToken") => String.t(),
      optional("status") => list(any()),
      required("projectArn") => String.t()
    }
  """
  @spec list_test_grid_sessions(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_test_grid_sessions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_test_grid_sessions_errors()}
  def list_test_grid_sessions(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTestGridSessions", input, options)
  end

  @doc """
   
  Gets information about tests in a given test suite.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20ListTests&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_tests_request`)
    %{
      optional("nextToken") => String.t(),
      required("arn") => String.t()
    }
  """
  @spec list_tests(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_tests_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tests_errors()}
  def list_tests(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTests", input, options)
  end

  @doc """
   
  Gets information about unique problems, such as exceptions or crashes.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20ListUniqueProblems&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_unique_problems_request`)
    %{
      optional("nextToken") => String.t(),
      required("arn") => String.t()
    }
  """
  @spec list_unique_problems(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_unique_problems_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_unique_problems_errors()}
  def list_unique_problems(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListUniqueProblems", input, options)
  end

  @doc """
   
  Gets information about uploads, given an AWS Device Farm project ARN.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20ListUploads&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_uploads_request`)
    %{
      optional("nextToken") => String.t(),
      optional("type") => list(any()),
      required("arn") => String.t()
    }
  """
  @spec list_uploads(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_uploads_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_uploads_errors()}
  def list_uploads(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListUploads", input, options)
  end

  @doc """
   
  Returns information about all Amazon Virtual Private Cloud (VPC) endpoint
  configurations in the AWS account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20ListVPCEConfigurations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_vpce_configurations_request`)
    %{
      optional("maxResults") => integer(),
      optional("nextToken") => String.t()
    }
  """
  @spec list_vpce_configurations(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_vpce_configurations_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_vpce_configurations_errors()}
  def list_vpce_configurations(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListVPCEConfigurations", input, options)
  end

  @doc """
   
  Immediately purchases offerings for an AWS account. Offerings renew with the
  latest total purchased quantity for an offering, unless the renewal was
  overridden. The API returns a `NotEligible` error if the user is not permitted
  to invoke the operation. If you must be able to invoke this operation, contact
  [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20PurchaseOffering&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:purchase_offering_request`)
    %{
      optional("offeringPromotionId") => String.t(),
      required("offeringId") => String.t(),
      required("quantity") => integer()
    }
  """
  @spec purchase_offering(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, purchase_offering_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, purchase_offering_errors()}
  def purchase_offering(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PurchaseOffering", input, options)
  end

  @doc """
   
  Explicitly sets the quantity of devices to renew for an offering, starting from
  the `effectiveDate` of the next period. The API returns a `NotEligible` error
  if the user is not permitted to invoke the operation. If you must be able to
  invoke this operation, contact
  [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20RenewOffering&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:renew_offering_request`)
    %{
      required("offeringId") => String.t(),
      required("quantity") => integer()
    }
  """
  @spec renew_offering(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, renew_offering_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, renew_offering_errors()}
  def renew_offering(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "RenewOffering", input, options)
  end

  @doc """
   
  Schedules a run.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20ScheduleRun&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:schedule_run_request`)
    %{
      optional("appArn") => String.t(),
      optional("configuration") => schedule_run_configuration(),
      optional("devicePoolArn") => String.t(),
      optional("deviceSelectionConfiguration") => device_selection_configuration(),
      optional("executionConfiguration") => execution_configuration(),
      optional("name") => String.t(),
      required("projectArn") => String.t(),
      required("test") => schedule_run_test()
    }
  """
  @spec schedule_run(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, schedule_run_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, schedule_run_errors()}
  def schedule_run(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ScheduleRun", input, options)
  end

  @doc """
   
  Initiates a stop request for the current job. AWS Device Farm immediately stops
  the job on the device where tests have not started. You are not billed for
  this device. On the device where tests have started, setup suite and teardown
  suite tests run to completion on the device. You are billed for setup,
  teardown, and any tests that were in progress or already completed.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20StopJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:stop_job_request`)
    %{
      required("arn") => String.t()
    }
  """
  @spec stop_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, stop_job_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_job_errors()}
  def stop_job(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopJob", input, options)
  end

  @doc """
   
  Ends a specified remote access session.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20StopRemoteAccessSession&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:stop_remote_access_session_request`)
    %{
      required("arn") => String.t()
    }
  """
  @spec stop_remote_access_session(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, stop_remote_access_session_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_remote_access_session_errors()}
  def stop_remote_access_session(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopRemoteAccessSession", input, options)
  end

  @doc """
   
  Initiates a stop request for the current test run. AWS Device Farm immediately
  stops the run on devices where tests have not started. You are not billed for
  these devices. On devices where tests have started executing, setup suite and
  teardown suite tests run to completion on those devices. You are billed for
  setup, teardown, and any tests that were in progress or already completed.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20StopRun&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:stop_run_request`)
    %{
      required("arn") => String.t()
    }
  """
  @spec stop_run(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, stop_run_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_run_errors()}
  def stop_run(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopRun", input, options)
  end

  @doc """
   
  Associates the specified tags to a resource with the specified `resourceArn`. If
  existing tags on a resource are not specified in the request parameters, they
  are not changed. When a resource is deleted, the tags associated with that
  resource are also deleted.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:tag_resource_request`)
    %{
      required("ResourceARN") => String.t(),
      required("Tags") => list(tag()())
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
   
  Deletes the specified tags from a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:untag_resource_request`)
    %{
      required("ResourceARN") => String.t(),
      required("TagKeys") => list(String.t()())
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
   
  Updates information about a private device instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20UpdateDeviceInstance&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_device_instance_request`)
    %{
      optional("labels") => list(String.t()()),
      optional("profileArn") => String.t(),
      required("arn") => String.t()
    }
  """
  @spec update_device_instance(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_device_instance_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_device_instance_errors()}
  def update_device_instance(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateDeviceInstance", input, options)
  end

  @doc """
   
  Modifies the name, description, and rules in a device pool given the attributes
  and the pool ARN. Rule updates are all-or-nothing, meaning they can only be
  updated as a whole (or not at all).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20UpdateDevicePool&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_device_pool_request`)
    %{
      optional("clearMaxDevices") => boolean(),
      optional("description") => String.t(),
      optional("maxDevices") => integer(),
      optional("name") => String.t(),
      optional("rules") => list(rule()()),
      required("arn") => String.t()
    }
  """
  @spec update_device_pool(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_device_pool_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_device_pool_errors()}
  def update_device_pool(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateDevicePool", input, options)
  end

  @doc """
   
  Updates information about an existing private device instance profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20UpdateInstanceProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_instance_profile_request`)
    %{
      optional("description") => String.t(),
      optional("excludeAppPackagesFromCleanup") => list(String.t()()),
      optional("name") => String.t(),
      optional("packageCleanup") => boolean(),
      optional("rebootAfterUse") => boolean(),
      required("arn") => String.t()
    }
  """
  @spec update_instance_profile(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_instance_profile_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_instance_profile_errors()}
  def update_instance_profile(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateInstanceProfile", input, options)
  end

  @doc """
   
  Updates the network profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20UpdateNetworkProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_network_profile_request`)
    %{
      optional("description") => String.t(),
      optional("downlinkBandwidthBits") => float(),
      optional("downlinkDelayMs") => float(),
      optional("downlinkJitterMs") => float(),
      optional("downlinkLossPercent") => integer(),
      optional("name") => String.t(),
      optional("type") => list(any()),
      optional("uplinkBandwidthBits") => float(),
      optional("uplinkDelayMs") => float(),
      optional("uplinkJitterMs") => float(),
      optional("uplinkLossPercent") => integer(),
      required("arn") => String.t()
    }
  """
  @spec update_network_profile(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_network_profile_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_network_profile_errors()}
  def update_network_profile(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateNetworkProfile", input, options)
  end

  @doc """
   
  Modifies the specified project name, given the project ARN and a new name.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20UpdateProject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_project_request`)
    %{
      optional("defaultJobTimeoutMinutes") => integer(),
      optional("name") => String.t(),
      optional("vpcConfig") => vpc_config(),
      required("arn") => String.t()
    }
  """
  @spec update_project(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_project_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_project_errors()}
  def update_project(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateProject", input, options)
  end

  @doc """
   
  Change details of a project.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20UpdateTestGridProject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_test_grid_project_request`)
    %{
      optional("description") => String.t(),
      optional("name") => String.t(),
      optional("vpcConfig") => test_grid_vpc_config(),
      required("projectArn") => String.t()
    }
  """
  @spec update_test_grid_project(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_test_grid_project_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_test_grid_project_errors()}
  def update_test_grid_project(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateTestGridProject", input, options)
  end

  @doc """
   
  Updates an uploaded test spec.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20UpdateUpload&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_upload_request`)
    %{
      optional("contentType") => String.t(),
      optional("editContent") => boolean(),
      optional("name") => String.t(),
      required("arn") => String.t()
    }
  """
  @spec update_upload(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_upload_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_upload_errors()}
  def update_upload(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateUpload", input, options)
  end

  @doc """
   
  Updates information about an Amazon Virtual Private Cloud (VPC) endpoint
  configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=devicefarm%20UpdateVPCEConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_vpce_configuration_request`)
    %{
      optional("serviceDnsName") => String.t(),
      optional("vpceConfigurationDescription") => String.t(),
      optional("vpceConfigurationName") => String.t(),
      optional("vpceServiceName") => String.t(),
      required("arn") => String.t()
    }
  """
  @spec update_vpce_configuration(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_vpce_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_vpce_configuration_errors()}
  def update_vpce_configuration(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateVPCEConfiguration", input, options)
  end
end
