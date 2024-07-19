# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AppTest do
  @moduledoc """
  AWS Mainframe Modernization Application Testing provides tools and resources for
  automated functional equivalence testing for your migration projects.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      create_test_configuration_response() :: %{
        "testConfigurationId" => String.t(),
        "testConfigurationVersion" => integer()
      }
      
  """
  @type create_test_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_test_configuration_request() :: %{
        optional("testConfigurationVersion") => integer()
      }
      
  """
  @type get_test_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_test_suite_request() :: %{}
      
  """
  @type delete_test_suite_request() :: %{}

  @typedoc """

  ## Example:
      
      update_test_configuration_response() :: %{
        "testConfigurationId" => String.t(),
        "testConfigurationVersion" => integer()
      }
      
  """
  @type update_test_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_test_case_response() :: %{}
      
  """
  @type delete_test_case_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_test_run_response() :: %{}
      
  """
  @type delete_test_run_response() :: %{}

  @typedoc """

  ## Example:
      
      m2_non_managed_application_step_input() :: %{
        "actionType" => list(any()),
        "listenerPort" => [integer()],
        "runtime" => list(any()),
        "vpcEndpointServiceName" => [String.t()],
        "webAppName" => [String.t()]
      }
      
  """
  @type m2_non_managed_application_step_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_step_output() :: %{
        "dataSetDetails" => list(data_set()()),
        "dataSetExportLocation" => String.t(),
        "dmsOutputLocation" => String.t()
      }
      
  """
  @type batch_step_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      create_cloud_formation_summary() :: %{
        "stepInput" => create_cloud_formation_step_input(),
        "stepOutput" => create_cloud_formation_step_output()
      }
      
  """
  @type create_cloud_formation_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_test_run_test_cases_response() :: %{
        "nextToken" => String.t(),
        "testRunTestCases" => list(test_case_run_summary()())
      }
      
  """
  @type list_test_run_test_cases_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_cloud_formation_step_output() :: %{}
      
  """
  @type delete_cloud_formation_step_output() :: %{}

  @typedoc """

  ## Example:
      
      data_set() :: %{
        "ccsid" => String.t(),
        "format" => list(any()),
        "length" => [integer()],
        "name" => String.t(),
        "type" => list(any())
      }
      
  """
  @type data_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      input_file() :: %{
        "fileMetadata" => list(),
        "sourceLocation" => String.t(),
        "targetLocation" => String.t()
      }
      
  """
  @type input_file() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_cloud_formation_step_input() :: %{
        "stackId" => [String.t()]
      }
      
  """
  @type delete_cloud_formation_step_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_test_suite_response() :: %{}
      
  """
  @type delete_test_suite_response() :: %{}

  @typedoc """

  ## Example:
      
      m2_non_managed_application() :: %{
        "listenerPort" => String.t(),
        "runtime" => list(any()),
        "vpcEndpointServiceName" => String.t(),
        "webAppName" => String.t()
      }
      
  """
  @type m2_non_managed_application() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compare_data_sets_summary() :: %{
        "stepInput" => compare_data_sets_step_input(),
        "stepOutput" => compare_data_sets_step_output()
      }
      
  """
  @type compare_data_sets_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_formation() :: %{
        "parameters" => map(),
        "templateLocation" => String.t()
      }
      
  """
  @type cloud_formation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_test_suite_request() :: %{
        optional("afterSteps") => list(step()()),
        optional("beforeSteps") => list(step()()),
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("tags") => map(),
        required("name") => String.t(),
        required("testCases") => list()
      }
      
  """
  @type create_test_suite_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_test_suites_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("testSuiteIds") => list(String.t()())
      }
      
  """
  @type list_test_suites_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      script_summary() :: %{
        "scriptLocation" => String.t(),
        "type" => list(any())
      }
      
  """
  @type script_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_test_run_request() :: %{}
      
  """
  @type delete_test_run_request() :: %{}

  @typedoc """

  ## Example:
      
      compare_database_c_d_c_step_output() :: %{
        "comparisonOutputLocation" => [String.t()],
        "comparisonStatus" => list(any())
      }
      
  """
  @type compare_database_c_d_c_step_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      m2_non_managed_application_step_output() :: %{}
      
  """
  @type m2_non_managed_application_step_output() :: %{}

  @typedoc """

  ## Example:
      
      m2_managed_application() :: %{
        "applicationId" => String.t(),
        "listenerPort" => String.t(),
        "runtime" => list(any()),
        "vpcEndpointServiceName" => String.t()
      }
      
  """
  @type m2_managed_application() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_test_run_steps_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("testCaseId") => String.t(),
        optional("testSuiteId") => String.t()
      }
      
  """
  @type list_test_run_steps_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compare_database_c_d_c_step_input() :: %{
        "outputLocation" => [String.t()],
        "sourceLocation" => [String.t()],
        "sourceMetadata" => source_database_metadata(),
        "targetLocation" => [String.t()],
        "targetMetadata" => target_database_metadata()
      }
      
  """
  @type compare_database_c_d_c_step_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_test_configuration_response() :: %{}
      
  """
  @type delete_test_configuration_response() :: %{}

  @typedoc """

  ## Example:
      
      test_case_summary() :: %{
        "creationTime" => [non_neg_integer()],
        "lastUpdateTime" => [non_neg_integer()],
        "latestVersion" => integer(),
        "name" => String.t(),
        "status" => list(any()),
        "statusReason" => [String.t()],
        "testCaseArn" => String.t(),
        "testCaseId" => String.t()
      }
      
  """
  @type test_case_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compare_action_summary() :: %{
        "type" => list()
      }
      
  """
  @type compare_action_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_test_cases_response() :: %{
        "nextToken" => String.t(),
        "testCases" => list(test_case_summary()())
      }
      
  """
  @type list_test_cases_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_test_case_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("tags") => map(),
        required("name") => String.t(),
        required("steps") => list(step()())
      }
      
  """
  @type create_test_case_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      m2_non_managed_application_action() :: %{
        "actionType" => list(any()),
        "resource" => String.t()
      }
      
  """
  @type m2_non_managed_application_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test_suite_latest_version() :: %{
        "status" => list(any()),
        "statusReason" => [String.t()],
        "version" => integer()
      }
      
  """
  @type test_suite_latest_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_test_run_step_response() :: %{
        "afterStep" => [boolean()],
        "beforeStep" => [boolean()],
        "runEndTime" => [non_neg_integer()],
        "runStartTime" => [non_neg_integer()],
        "status" => list(any()),
        "statusReason" => [String.t()],
        "stepName" => String.t(),
        "stepRunSummary" => list(),
        "testCaseId" => String.t(),
        "testCaseVersion" => integer(),
        "testRunId" => String.t(),
        "testSuiteId" => String.t(),
        "testSuiteVersion" => integer()
      }
      
  """
  @type get_test_run_step_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test_configuration_latest_version() :: %{
        "status" => list(any()),
        "statusReason" => [String.t()],
        "version" => integer()
      }
      
  """
  @type test_configuration_latest_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_test_configurations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("testConfigurationIds") => list(String.t()())
      }
      
  """
  @type list_test_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_test_run_step_request() :: %{
        optional("testCaseId") => String.t(),
        optional("testSuiteId") => String.t()
      }
      
  """
  @type get_test_run_step_request() :: %{String.t() => any()}

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
      
      m2_managed_application_step_input() :: %{
        "actionType" => list(any()),
        "applicationId" => [String.t()],
        "listenerPort" => [integer()],
        "properties" => m2_managed_action_properties(),
        "runtime" => [String.t()],
        "vpcEndpointServiceName" => [String.t()]
      }
      
  """
  @type m2_managed_application_step_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test_suite_summary() :: %{
        "creationTime" => [non_neg_integer()],
        "lastUpdateTime" => [non_neg_integer()],
        "latestVersion" => integer(),
        "name" => String.t(),
        "status" => list(any()),
        "statusReason" => [String.t()],
        "testSuiteArn" => String.t(),
        "testSuiteId" => String.t()
      }
      
  """
  @type test_suite_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      m2_managed_application_action() :: %{
        "actionType" => list(any()),
        "properties" => m2_managed_action_properties(),
        "resource" => String.t()
      }
      
  """
  @type m2_managed_application_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test_case_run_summary() :: %{
        "runEndTime" => [non_neg_integer()],
        "runStartTime" => [non_neg_integer()],
        "status" => list(any()),
        "statusReason" => [String.t()],
        "testCaseId" => String.t(),
        "testCaseVersion" => integer(),
        "testRunId" => String.t()
      }
      
  """
  @type test_case_run_summary() :: %{String.t() => any()}

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
      
      create_test_suite_response() :: %{
        "testSuiteId" => String.t(),
        "testSuiteVersion" => integer()
      }
      
  """
  @type create_test_suite_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      mainframe_action() :: %{
        "actionType" => list(),
        "properties" => mainframe_action_properties(),
        "resource" => String.t()
      }
      
  """
  @type mainframe_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      source_database_metadata() :: %{
        "captureTool" => list(any()),
        "type" => list(any())
      }
      
  """
  @type source_database_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_test_suite_request() :: %{
        optional("testSuiteVersion") => integer()
      }
      
  """
  @type get_test_suite_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_test_suites_response() :: %{
        "nextToken" => String.t(),
        "testSuites" => list(test_suite_summary()())
      }
      
  """
  @type list_test_suites_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_cloud_formation_summary() :: %{
        "stepInput" => delete_cloud_formation_step_input(),
        "stepOutput" => delete_cloud_formation_step_output()
      }
      
  """
  @type delete_cloud_formation_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "tags" => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

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
      
      test_configuration_summary() :: %{
        "creationTime" => [non_neg_integer()],
        "lastUpdateTime" => [non_neg_integer()],
        "latestVersion" => integer(),
        "name" => String.t(),
        "status" => list(any()),
        "statusReason" => [String.t()],
        "testConfigurationArn" => String.t(),
        "testConfigurationId" => String.t()
      }
      
  """
  @type test_configuration_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_test_run_response() :: %{
        "testRunId" => String.t(),
        "testRunStatus" => list(any())
      }
      
  """
  @type start_test_run_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      target_database_metadata() :: %{
        "captureTool" => list(any()),
        "type" => list(any())
      }
      
  """
  @type target_database_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_test_case_request() :: %{}
      
  """
  @type delete_test_case_request() :: %{}

  @typedoc """

  ## Example:
      
      t_n3270_summary() :: %{
        "stepInput" => t_n3270_step_input(),
        "stepOutput" => t_n3270_step_output()
      }
      
  """
  @type t_n3270_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_test_suite_request() :: %{
        optional("afterSteps") => list(step()()),
        optional("beforeSteps") => list(step()()),
        optional("description") => String.t(),
        optional("testCases") => list()
      }
      
  """
  @type update_test_suite_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_cloud_formation_step_input() :: %{
        "parameters" => map(),
        "templateLocation" => String.t()
      }
      
  """
  @type create_cloud_formation_step_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      m2_managed_application_summary() :: %{
        "applicationId" => String.t(),
        "listenerPort" => [integer()],
        "runtime" => list(any())
      }
      
  """
  @type m2_managed_application_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      output_file() :: %{
        "fileLocation" => String.t()
      }
      
  """
  @type output_file() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => [String.t()],
        "retryAfterSeconds" => [integer()]
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_summary() :: %{
        "stepInput" => batch_step_input(),
        "stepOutput" => batch_step_output()
      }
      
  """
  @type batch_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      m2_managed_application_step_summary() :: %{
        "stepInput" => m2_managed_application_step_input(),
        "stepOutput" => m2_managed_application_step_output()
      }
      
  """
  @type m2_managed_application_step_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_step_input() :: %{
        "batchJobName" => String.t(),
        "batchJobParameters" => map(),
        "exportDataSetNames" => list(String.t()()),
        "properties" => mainframe_action_properties(),
        "resource" => list()
      }
      
  """
  @type batch_step_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_test_case_request() :: %{
        optional("description") => String.t(),
        optional("steps") => list(step()())
      }
      
  """
  @type update_test_case_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_test_cases_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("testCaseIds") => list(String.t()())
      }
      
  """
  @type list_test_cases_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      database_c_d_c() :: %{
        "sourceMetadata" => source_database_metadata(),
        "targetMetadata" => target_database_metadata()
      }
      
  """
  @type database_c_d_c() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      mainframe_action_properties() :: %{
        "dmsTaskArn" => String.t()
      }
      
  """
  @type mainframe_action_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test_case_latest_version() :: %{
        "status" => list(any()),
        "statusReason" => [String.t()],
        "version" => integer()
      }
      
  """
  @type test_case_latest_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_test_suite_response() :: %{
        "testSuiteId" => String.t(),
        "testSuiteVersion" => integer()
      }
      
  """
  @type update_test_suite_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_settings() :: %{
        "kmsKeyId" => [String.t()]
      }
      
  """
  @type service_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_test_run_steps_response() :: %{
        "nextToken" => String.t(),
        "testRunSteps" => list(test_run_step_summary()())
      }
      
  """
  @type list_test_run_steps_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_test_configuration_response() :: %{
        "creationTime" => [non_neg_integer()],
        "description" => String.t(),
        "lastUpdateTime" => [non_neg_integer()],
        "latestVersion" => test_configuration_latest_version(),
        "name" => String.t(),
        "properties" => map(),
        "resources" => list(resource()()),
        "serviceSettings" => service_settings(),
        "status" => list(any()),
        "statusReason" => [String.t()],
        "tags" => map(),
        "testConfigurationArn" => String.t(),
        "testConfigurationId" => String.t(),
        "testConfigurationVersion" => integer()
      }
      
  """
  @type get_test_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch() :: %{
        "batchJobName" => String.t(),
        "batchJobParameters" => map(),
        "exportDataSetNames" => list(String.t()())
      }
      
  """
  @type batch() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()()),
        "message" => [String.t()],
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
      
      m2_non_managed_application_step_summary() :: %{
        "stepInput" => m2_non_managed_application_step_input(),
        "stepOutput" => m2_non_managed_application_step_output()
      }
      
  """
  @type m2_non_managed_application_step_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_test_run_test_cases_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_test_run_test_cases_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compare_action() :: %{
        "input" => list(),
        "output" => list()
      }
      
  """
  @type compare_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_test_suite_response() :: %{
        "afterSteps" => list(step()()),
        "beforeSteps" => list(step()()),
        "creationTime" => [non_neg_integer()],
        "description" => String.t(),
        "lastUpdateTime" => [non_neg_integer()],
        "latestVersion" => test_suite_latest_version(),
        "name" => String.t(),
        "status" => list(any()),
        "statusReason" => [String.t()],
        "tags" => map(),
        "testCases" => list(),
        "testSuiteArn" => String.t(),
        "testSuiteId" => String.t(),
        "testSuiteVersion" => integer()
      }
      
  """
  @type get_test_suite_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      script() :: %{
        "scriptLocation" => String.t(),
        "type" => list(any())
      }
      
  """
  @type script() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => [String.t()],
        "quotaCode" => [String.t()],
        "retryAfterSeconds" => [integer()],
        "serviceCode" => [String.t()]
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      t_n3270() :: %{
        "exportDataSetNames" => list(String.t()()),
        "script" => script()
      }
      
  """
  @type t_n3270() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compare_database_c_d_c_summary() :: %{
        "stepInput" => compare_database_c_d_c_step_input(),
        "stepOutput" => compare_database_c_d_c_step_output()
      }
      
  """
  @type compare_database_c_d_c_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compare_data_sets_step_input() :: %{
        "sourceDataSets" => list(data_set()()),
        "sourceLocation" => String.t(),
        "targetDataSets" => list(data_set()()),
        "targetLocation" => String.t()
      }
      
  """
  @type compare_data_sets_step_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      m2_non_managed_application_summary() :: %{
        "listenerPort" => [integer()],
        "runtime" => list(any()),
        "vpcEndpointServiceName" => [String.t()],
        "webAppName" => [String.t()]
      }
      
  """
  @type m2_non_managed_application_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_test_runs_response() :: %{
        "nextToken" => String.t(),
        "testRuns" => list(test_run_summary()())
      }
      
  """
  @type list_test_runs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test_run_step_summary() :: %{
        "afterStep" => [boolean()],
        "beforeStep" => [boolean()],
        "runEndTime" => [non_neg_integer()],
        "runStartTime" => [non_neg_integer()],
        "status" => list(any()),
        "statusReason" => [String.t()],
        "stepName" => String.t(),
        "testCaseId" => String.t(),
        "testCaseVersion" => integer(),
        "testRunId" => String.t(),
        "testSuiteId" => String.t(),
        "testSuiteVersion" => integer()
      }
      
  """
  @type test_run_step_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_formation_action() :: %{
        "actionType" => list(any()),
        "resource" => String.t()
      }
      
  """
  @type cloud_formation_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_test_case_response() :: %{
        "testCaseId" => String.t(),
        "testCaseVersion" => integer()
      }
      
  """
  @type create_test_case_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      m2_managed_application_step_output() :: %{
        "importDataSetSummary" => map()
      }
      
  """
  @type m2_managed_application_step_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      m2_managed_action_properties() :: %{
        "forceStop" => [boolean()],
        "importDataSetLocation" => String.t()
      }
      
  """
  @type m2_managed_action_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      t_n3270_step_output() :: %{
        "dataSetDetails" => list(data_set()()),
        "dataSetExportLocation" => String.t(),
        "dmsOutputLocation" => String.t(),
        "scriptOutputLocation" => String.t()
      }
      
  """
  @type t_n3270_step_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_cloud_formation_step_output() :: %{
        "exports" => map(),
        "stackId" => [String.t()]
      }
      
  """
  @type create_cloud_formation_step_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      step() :: %{
        "action" => list(),
        "description" => String.t(),
        "name" => String.t()
      }
      
  """
  @type step() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      t_n3270_step_input() :: %{
        "exportDataSetNames" => list(String.t()()),
        "properties" => mainframe_action_properties(),
        "resource" => list(),
        "script" => script_summary()
      }
      
  """
  @type t_n3270_step_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_test_case_response() :: %{
        "testCaseId" => String.t(),
        "testCaseVersion" => integer()
      }
      
  """
  @type update_test_case_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_test_configurations_response() :: %{
        "nextToken" => String.t(),
        "testConfigurations" => list(test_configuration_summary()())
      }
      
  """
  @type list_test_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_test_case_request() :: %{
        optional("testCaseVersion") => integer()
      }
      
  """
  @type get_test_case_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compare_data_sets_step_output() :: %{
        "comparisonOutputLocation" => String.t(),
        "comparisonStatus" => list(any())
      }
      
  """
  @type compare_data_sets_step_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test_run_summary() :: %{
        "runEndTime" => [non_neg_integer()],
        "runStartTime" => [non_neg_integer()],
        "status" => list(any()),
        "statusReason" => [String.t()],
        "testConfigurationId" => String.t(),
        "testConfigurationVersion" => integer(),
        "testRunArn" => String.t(),
        "testRunId" => String.t(),
        "testSuiteId" => String.t(),
        "testSuiteVersion" => integer()
      }
      
  """
  @type test_run_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_test_configuration_request() :: %{}
      
  """
  @type delete_test_configuration_request() :: %{}

  @typedoc """

  ## Example:
      
      create_test_configuration_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("properties") => map(),
        optional("serviceSettings") => service_settings(),
        optional("tags") => map(),
        required("name") => String.t(),
        required("resources") => list(resource()())
      }
      
  """
  @type create_test_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_test_case_response() :: %{
        "creationTime" => [non_neg_integer()],
        "description" => String.t(),
        "lastUpdateTime" => [non_neg_integer()],
        "latestVersion" => test_case_latest_version(),
        "name" => String.t(),
        "status" => list(any()),
        "statusReason" => [String.t()],
        "steps" => list(step()()),
        "tags" => map(),
        "testCaseArn" => String.t(),
        "testCaseId" => String.t(),
        "testCaseVersion" => integer()
      }
      
  """
  @type get_test_case_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_test_runs_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("testRunIds") => list(String.t()()),
        optional("testSuiteId") => String.t()
      }
      
  """
  @type list_test_runs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_test_configuration_request() :: %{
        optional("description") => String.t(),
        optional("properties") => map(),
        optional("resources") => list(resource()()),
        optional("serviceSettings") => service_settings()
      }
      
  """
  @type update_test_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource() :: %{
        "name" => String.t(),
        "type" => list()
      }
      
  """
  @type resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_test_run_request() :: %{
        optional("clientToken") => String.t(),
        optional("tags") => map(),
        optional("testConfigurationId") => String.t(),
        required("testSuiteId") => String.t()
      }
      
  """
  @type start_test_run_request() :: %{String.t() => any()}

  @type create_test_case_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_test_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_test_suite_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_test_case_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_test_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_test_run_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_test_suite_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type get_test_case_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_test_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_test_run_step_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_test_suite_errors() ::
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

  @type list_test_cases_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_test_configurations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_test_run_steps_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_test_run_test_cases_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_test_runs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_test_suites_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type start_test_run_errors() ::
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
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_test_case_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_test_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_test_suite_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2022-12-06",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "apptest",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "AppTest",
      signature_version: "v4",
      signing_name: "apptest",
      target_prefix: nil
    }
  end

  @doc """
  Creates a test case.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apptest%20CreateTestCase&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_test_case(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_test_case_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_test_case_errors()}

  def create_test_case(%Client{} = client, options \\ []) do
    url_path = "/testcase"

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
  Creates a test configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apptest%20CreateTestConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_test_configuration(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_test_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_test_configuration_errors()}

  def create_test_configuration(%Client{} = client, options \\ []) do
    url_path = "/testconfiguration"

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
  Creates a test suite.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apptest%20CreateTestSuite&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_test_suite(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_test_suite_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_test_suite_errors()}

  def create_test_suite(%Client{} = client, options \\ []) do
    url_path = "/testsuite"

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
  Deletes a test case.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apptest%20DeleteTestCase&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:test_case_id` (`t:string`) The test case ID of the test case.

  ## Optional parameters:
  """

  @spec delete_test_case(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_test_case_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_test_case_errors()}

  def delete_test_case(%Client{} = client, test_case_id, options \\ []) do
    url_path = "/testcases/#{AWS.Util.encode_uri(test_case_id)}"

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
  Deletes a test configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apptest%20DeleteTestConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:test_configuration_id` (`t:string`) The test ID of the test configuration.

  ## Optional parameters:
  """

  @spec delete_test_configuration(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_test_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_test_configuration_errors()}

  def delete_test_configuration(%Client{} = client, test_configuration_id, options \\ []) do
    url_path = "/testconfigurations/#{AWS.Util.encode_uri(test_configuration_id)}"

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
  Deletes a test run.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apptest%20DeleteTestRun&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:test_run_id` (`t:string`) The run ID of the test run.

  ## Optional parameters:
  """

  @spec delete_test_run(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_test_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_test_run_errors()}

  def delete_test_run(%Client{} = client, test_run_id, options \\ []) do
    url_path = "/testruns/#{AWS.Util.encode_uri(test_run_id)}"

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
  Deletes a test suite.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apptest%20DeleteTestSuite&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:test_suite_id` (`t:string`) The test ID of the test suite.

  ## Optional parameters:
  """

  @spec delete_test_suite(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_test_suite_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_test_suite_errors()}

  def delete_test_suite(%Client{} = client, test_suite_id, options \\ []) do
    url_path = "/testsuites/#{AWS.Util.encode_uri(test_suite_id)}"

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
  Gets a test case.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apptest%20GetTestCase&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:test_case_id` (`t:string`) The request test ID of the test case.

  ## Optional parameters:
  * `:test_case_version` (`t:integer`) The test case version of the test case.
  """

  @spec get_test_case(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_test_case_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_test_case_errors()}

  def get_test_case(%Client{} = client, test_case_id, options \\ []) do
    url_path = "/testcases/#{AWS.Util.encode_uri(test_case_id)}"

    # Validate optional parameters
    optional_params = [test_case_version: nil]

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
      if opt_val = Keyword.get(options, :test_case_version) do
        [{"testCaseVersion", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:test_case_version])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a test configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apptest%20GetTestConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:test_configuration_id` (`t:string`) The request test configuration ID.

  ## Optional parameters:
  * `:test_configuration_version` (`t:integer`) The test configuration version.
  """

  @spec get_test_configuration(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_test_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_test_configuration_errors()}

  def get_test_configuration(%Client{} = client, test_configuration_id, options \\ []) do
    url_path = "/testconfigurations/#{AWS.Util.encode_uri(test_configuration_id)}"

    # Validate optional parameters
    optional_params = [test_configuration_version: nil]

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
      if opt_val = Keyword.get(options, :test_configuration_version) do
        [{"testConfigurationVersion", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:test_configuration_version])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a test run step.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apptest%20GetTestRunStep&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:step_name` (`t:string`) The step name of the test run step.
  * `:test_run_id` (`t:string`) The test run ID of the test run step.

  ## Optional parameters:
  * `:test_case_id` (`t:string`) The test case ID of a test run step.
  * `:test_suite_id` (`t:string`) The test suite ID of a test run step.
  """

  @spec get_test_run_step(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_test_run_step_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_test_run_step_errors()}

  def get_test_run_step(%Client{} = client, step_name, test_run_id, options \\ []) do
    url_path =
      "/testruns/#{AWS.Util.encode_uri(test_run_id)}/steps/#{AWS.Util.encode_uri(step_name)}"

    # Validate optional parameters
    optional_params = [test_case_id: nil, test_suite_id: nil]

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
      if opt_val = Keyword.get(options, :test_suite_id) do
        [{"testSuiteId", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :test_case_id) do
        [{"testCaseId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:test_case_id, :test_suite_id])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a test suite.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apptest%20GetTestSuite&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:test_suite_id` (`t:string`) The ID of the test suite.

  ## Optional parameters:
  * `:test_suite_version` (`t:integer`) The version of the test suite.
  """

  @spec get_test_suite(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_test_suite_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_test_suite_errors()}

  def get_test_suite(%Client{} = client, test_suite_id, options \\ []) do
    url_path = "/testsuites/#{AWS.Util.encode_uri(test_suite_id)}"

    # Validate optional parameters
    optional_params = [test_suite_version: nil]

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
      if opt_val = Keyword.get(options, :test_suite_version) do
        [{"testSuiteVersion", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:test_suite_version])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists tags for a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apptest%20ListTagsForResource&this_doc_guide=API%2520Reference)

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
  Lists test cases.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apptest%20ListTestCases&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum results of the test case.
  * `:next_token` (`t:string`) The next token of the test cases.
  * `:test_case_ids` (`t:list[com.amazonaws.apptest#Identifier]`) The IDs of the
  test cases.
  """

  @spec list_test_cases(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_test_cases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_test_cases_errors()}

  def list_test_cases(%Client{} = client, options \\ []) do
    url_path = "/testcases"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, test_case_ids: nil]

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
      if opt_val = Keyword.get(options, :test_case_ids) do
        [{"testCaseIds", opt_val} | query_params]
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
      |> Keyword.drop([:max_results, :next_token, :test_case_ids])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists test configurations.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apptest%20ListTestConfigurations&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum results of the test configuration.
  * `:next_token` (`t:string`) The next token for the test configurations.
  * `:test_configuration_ids` (`t:list[com.amazonaws.apptest#Identifier]`) The
  configuration IDs of the test configurations.
  """

  @spec list_test_configurations(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_test_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_test_configurations_errors()}

  def list_test_configurations(%Client{} = client, options \\ []) do
    url_path = "/testconfigurations"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, test_configuration_ids: nil]

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
      if opt_val = Keyword.get(options, :test_configuration_ids) do
        [{"testConfigurationIds", opt_val} | query_params]
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
      |> Keyword.drop([:max_results, :next_token, :test_configuration_ids])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists test run steps.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apptest%20ListTestRunSteps&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:test_run_id` (`t:string`) The test run ID of the test run steps.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of test run steps to return in
  one page of results.
  * `:next_token` (`t:string`) The token from a previous step to retrieve the next
  page of results.
  * `:test_case_id` (`t:string`) The test case ID of the test run steps.
  * `:test_suite_id` (`t:string`) The test suite ID of the test run steps.
  """

  @spec list_test_run_steps(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_test_run_steps_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_test_run_steps_errors()}

  def list_test_run_steps(%Client{} = client, test_run_id, options \\ []) do
    url_path = "/testruns/#{AWS.Util.encode_uri(test_run_id)}/steps"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, test_case_id: nil, test_suite_id: nil]

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
      if opt_val = Keyword.get(options, :test_suite_id) do
        [{"testSuiteId", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :test_case_id) do
        [{"testCaseId", opt_val} | query_params]
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
      |> Keyword.drop([:max_results, :next_token, :test_case_id, :test_suite_id])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists test run test cases.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apptest%20ListTestRunTestCases&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:test_run_id` (`t:string`) The test run ID of the test cases.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of test run test cases to
  return in one page of results.
  * `:next_token` (`t:string`) The token from a previous request to retrieve the
  next page of results.
  """

  @spec list_test_run_test_cases(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_test_run_test_cases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_test_run_test_cases_errors()}

  def list_test_run_test_cases(%Client{} = client, test_run_id, options \\ []) do
    url_path = "/testruns/#{AWS.Util.encode_uri(test_run_id)}/testcases"

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
  Lists test runs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apptest%20ListTestRuns&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of test runs to return in one
  page of results.
  * `:next_token` (`t:string`) The token from the previous request to retrieve the
  next page of test run results.
  * `:test_run_ids` (`t:list[com.amazonaws.apptest#Identifier]`) The test run IDs
  of the test runs.
  * `:test_suite_id` (`t:string`) The test suite ID of the test runs.
  """

  @spec list_test_runs(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_test_runs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_test_runs_errors()}

  def list_test_runs(%Client{} = client, options \\ []) do
    url_path = "/testruns"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, test_run_ids: nil, test_suite_id: nil]

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
      if opt_val = Keyword.get(options, :test_suite_id) do
        [{"testSuiteId", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :test_run_ids) do
        [{"testrunIds", opt_val} | query_params]
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
      |> Keyword.drop([:max_results, :next_token, :test_run_ids, :test_suite_id])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists test suites.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apptest%20ListTestSuites&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of test suites to return in
  one page of results.
  * `:next_token` (`t:string`) The token from a previous request to retrieve the
  next page of results.
  * `:test_suite_ids` (`t:list[com.amazonaws.apptest#Identifier]`) The suite ID of
  the test suites.
  """

  @spec list_test_suites(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_test_suites_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_test_suites_errors()}

  def list_test_suites(%Client{} = client, options \\ []) do
    url_path = "/testsuites"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, test_suite_ids: nil]

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
      if opt_val = Keyword.get(options, :test_suite_ids) do
        [{"testSuiteIds", opt_val} | query_params]
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
      |> Keyword.drop([:max_results, :next_token, :test_suite_ids])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Starts a test run.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apptest%20StartTestRun&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec start_test_run(AWS.Client.t(), Keyword.t()) ::
          {:ok, start_test_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_test_run_errors()}

  def start_test_run(%Client{} = client, options \\ []) do
    url_path = "/testrun"

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
  Specifies tags of a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apptest%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the tag
  resource.

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
  Untags a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apptest%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the resource.
  * `:tag_keys` (`t:list[com.amazonaws.apptest#TagKey]`) The tag keys of the
  resource.

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
  Updates a test case.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apptest%20UpdateTestCase&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:test_case_id` (`t:string`) The test case ID of the test case.

  ## Optional parameters:
  """

  @spec update_test_case(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_test_case_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_test_case_errors()}

  def update_test_case(%Client{} = client, test_case_id, options \\ []) do
    url_path = "/testcases/#{AWS.Util.encode_uri(test_case_id)}"

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
  Updates a test configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apptest%20UpdateTestConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:test_configuration_id` (`t:string`) The test configuration ID of the test
  configuration.

  ## Optional parameters:
  """

  @spec update_test_configuration(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_test_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_test_configuration_errors()}

  def update_test_configuration(%Client{} = client, test_configuration_id, options \\ []) do
    url_path = "/testconfigurations/#{AWS.Util.encode_uri(test_configuration_id)}"

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
  Updates a test suite.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=apptest%20UpdateTestSuite&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:test_suite_id` (`t:string`) The test suite ID of the test suite.

  ## Optional parameters:
  """

  @spec update_test_suite(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_test_suite_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_test_suite_errors()}

  def update_test_suite(%Client{} = client, test_suite_id, options \\ []) do
    url_path = "/testsuites/#{AWS.Util.encode_uri(test_suite_id)}"

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
