# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.EMRServerless do
  @moduledoc """
  Amazon EMR Serverless is a new deployment option for Amazon EMR. Amazon EMR
  Serverless provides a serverless runtime environment that simplifies running
  analytics applications using the latest open source frameworks such as Apache
  Spark and Apache Hive. With Amazon EMR Serverless, you don’t have to
  configure, optimize, secure, or operate clusters to run applications with
  these frameworks. The API reference to Amazon EMR Serverless is
  `emr-serverless`. The `emr-serverless` prefix is used in the following
  scenarios:
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      get_job_run_response() :: %{
        required("jobRun") => job_run()
      }

  """
  @type get_job_run_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      image_configuration_input() :: %{
        "imageUri" => String.t()
      }

  """
  @type image_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      worker_resource_config() :: %{
        "cpu" => String.t(),
        "disk" => String.t(),
        "diskType" => String.t(),
        "memory" => String.t()
      }

  """
  @type worker_resource_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_monitoring_configuration() :: %{
        "encryptionKeyArn" => String.t(),
        "logUri" => String.t()
      }

  """
  @type s3_monitoring_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_job_run_request() :: %{
        optional("attempt") => integer()
      }

  """
  @type get_job_run_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_utilization() :: %{
        "memoryGBHour" => [float()],
        "storageGBHour" => [float()],
        "vCPUHour" => [float()]
      }

  """
  @type resource_utilization() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_job_run_attempts_response() :: %{
        "jobRunAttempts" => list(job_run_attempt_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_job_run_attempts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_job_run_attempts_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t()
      }

  """
  @type list_job_run_attempts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      initial_capacity_config() :: %{
        "workerConfiguration" => worker_resource_config(),
        "workerCount" => float()
      }

  """
  @type initial_capacity_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_run() :: %{
        "applicationId" => String.t(),
        "arn" => String.t(),
        "attempt" => integer(),
        "attemptCreatedAt" => non_neg_integer(),
        "attemptUpdatedAt" => non_neg_integer(),
        "billedResourceUtilization" => resource_utilization(),
        "configurationOverrides" => configuration_overrides(),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "executionRole" => String.t(),
        "executionTimeoutMinutes" => float(),
        "jobDriver" => list(),
        "jobRunId" => String.t(),
        "mode" => String.t(),
        "name" => String.t(),
        "networkConfiguration" => network_configuration(),
        "releaseLabel" => String.t(),
        "retryPolicy" => retry_policy(),
        "state" => String.t(),
        "stateDetails" => String.t(),
        "tags" => map(),
        "totalExecutionDurationSeconds" => [integer()],
        "totalResourceUtilization" => total_resource_utilization(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type job_run() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      job_run_summary() :: %{
        "applicationId" => String.t(),
        "arn" => String.t(),
        "attempt" => integer(),
        "attemptCreatedAt" => non_neg_integer(),
        "attemptUpdatedAt" => non_neg_integer(),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "executionRole" => String.t(),
        "id" => String.t(),
        "mode" => String.t(),
        "name" => String.t(),
        "releaseLabel" => String.t(),
        "state" => String.t(),
        "stateDetails" => String.t(),
        "type" => String.t(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type job_run_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_job_runs_request() :: %{
        optional("createdAtAfter") => non_neg_integer(),
        optional("createdAtBefore") => non_neg_integer(),
        optional("maxResults") => [integer()],
        optional("mode") => String.t(),
        optional("nextToken") => String.t(),
        optional("states") => list(String.t()())
      }

  """
  @type list_job_runs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      maximum_allowed_resources() :: %{
        "cpu" => String.t(),
        "disk" => String.t(),
        "memory" => String.t()
      }

  """
  @type maximum_allowed_resources() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configuration() :: %{
        "classification" => String.t(),
        "configurations" => list(configuration()()),
        "properties" => map()
      }

  """
  @type configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_run_attempt_summary() :: %{
        "applicationId" => String.t(),
        "arn" => String.t(),
        "attempt" => integer(),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "executionRole" => String.t(),
        "id" => String.t(),
        "jobCreatedAt" => non_neg_integer(),
        "mode" => String.t(),
        "name" => String.t(),
        "releaseLabel" => String.t(),
        "state" => String.t(),
        "stateDetails" => String.t(),
        "type" => String.t(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type job_run_attempt_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      monitoring_configuration() :: %{
        "cloudWatchLoggingConfiguration" => cloud_watch_logging_configuration(),
        "managedPersistenceMonitoringConfiguration" => managed_persistence_monitoring_configuration(),
        "prometheusMonitoringConfiguration" => prometheus_monitoring_configuration(),
        "s3MonitoringConfiguration" => s3_monitoring_configuration()
      }

  """
  @type monitoring_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      auto_start_config() :: %{
        "enabled" => [boolean()]
      }

  """
  @type auto_start_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      auto_stop_config() :: %{
        "enabled" => [boolean()],
        "idleTimeoutMinutes" => [integer()]
      }

  """
  @type auto_stop_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      worker_type_specification() :: %{
        "imageConfiguration" => image_configuration()
      }

  """
  @type worker_type_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      spark_submit() :: %{
        "entryPoint" => String.t(),
        "entryPointArguments" => list(String.t()()),
        "sparkSubmitParameters" => String.t()
      }

  """
  @type spark_submit() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      prometheus_monitoring_configuration() :: %{
        "remoteWriteUrl" => String.t()
      }

  """
  @type prometheus_monitoring_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_job_run_response() :: %{
        required("applicationId") => String.t(),
        required("arn") => String.t(),
        required("jobRunId") => String.t()
      }

  """
  @type start_job_run_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_job_run_response() :: %{
        required("applicationId") => String.t(),
        required("jobRunId") => String.t()
      }

  """
  @type cancel_job_run_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_dashboard_for_job_run_response() :: %{
        optional("url") => String.t()
      }

  """
  @type get_dashboard_for_job_run_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => String.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_application_request() :: %{}

  """
  @type stop_application_request() :: %{}

  @typedoc """

  ## Example:

      list_job_runs_response() :: %{
        optional("nextToken") => String.t(),
        required("jobRuns") => list(job_run_summary()())
      }

  """
  @type list_job_runs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      application() :: %{
        "applicationId" => String.t(),
        "architecture" => String.t(),
        "arn" => String.t(),
        "autoStartConfiguration" => auto_start_config(),
        "autoStopConfiguration" => auto_stop_config(),
        "createdAt" => non_neg_integer(),
        "imageConfiguration" => image_configuration(),
        "initialCapacity" => map(),
        "interactiveConfiguration" => interactive_configuration(),
        "maximumCapacity" => maximum_allowed_resources(),
        "monitoringConfiguration" => monitoring_configuration(),
        "name" => String.t(),
        "networkConfiguration" => network_configuration(),
        "releaseLabel" => String.t(),
        "runtimeConfiguration" => list(configuration()()),
        "state" => String.t(),
        "stateDetails" => String.t(),
        "tags" => map(),
        "type" => String.t(),
        "updatedAt" => non_neg_integer(),
        "workerTypeSpecifications" => map()
      }

  """
  @type application() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        optional("tags") => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_application_request() :: %{
        optional("architecture") => String.t(),
        optional("autoStartConfiguration") => auto_start_config(),
        optional("autoStopConfiguration") => auto_stop_config(),
        optional("imageConfiguration") => image_configuration_input(),
        optional("initialCapacity") => map(),
        optional("interactiveConfiguration") => interactive_configuration(),
        optional("maximumCapacity") => maximum_allowed_resources(),
        optional("monitoringConfiguration") => monitoring_configuration(),
        optional("name") => String.t(),
        optional("networkConfiguration") => network_configuration(),
        optional("runtimeConfiguration") => list(configuration()()),
        optional("tags") => map(),
        optional("workerTypeSpecifications") => map(),
        required("clientToken") => String.t(),
        required("releaseLabel") => String.t(),
        required("type") => String.t()
      }

  """
  @type create_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_application_response() :: %{
        optional("name") => String.t(),
        required("applicationId") => String.t(),
        required("arn") => String.t()
      }

  """
  @type create_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      interactive_configuration() :: %{
        "livyEndpointEnabled" => [boolean()],
        "studioEnabled" => [boolean()]
      }

  """
  @type interactive_configuration() :: %{String.t() => any()}

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

      worker_type_specification_input() :: %{
        "imageConfiguration" => image_configuration_input()
      }

  """
  @type worker_type_specification_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hive() :: %{
        "initQueryFile" => String.t(),
        "parameters" => String.t(),
        "query" => String.t()
      }

  """
  @type hive() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_application_request() :: %{
        optional("architecture") => String.t(),
        optional("autoStartConfiguration") => auto_start_config(),
        optional("autoStopConfiguration") => auto_stop_config(),
        optional("imageConfiguration") => image_configuration_input(),
        optional("initialCapacity") => map(),
        optional("interactiveConfiguration") => interactive_configuration(),
        optional("maximumCapacity") => maximum_allowed_resources(),
        optional("monitoringConfiguration") => monitoring_configuration(),
        optional("networkConfiguration") => network_configuration(),
        optional("releaseLabel") => String.t(),
        optional("runtimeConfiguration") => list(configuration()()),
        optional("workerTypeSpecifications") => map(),
        required("clientToken") => String.t()
      }

  """
  @type update_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_application_response() :: %{
        required("application") => application()
      }

  """
  @type update_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_application_request() :: %{}

  """
  @type start_application_request() :: %{}

  @typedoc """

  ## Example:

      start_job_run_request() :: %{
        optional("configurationOverrides") => configuration_overrides(),
        optional("executionTimeoutMinutes") => float(),
        optional("jobDriver") => list(),
        optional("mode") => String.t(),
        optional("name") => String.t(),
        optional("retryPolicy") => retry_policy(),
        optional("tags") => map(),
        required("clientToken") => String.t(),
        required("executionRoleArn") => String.t()
      }

  """
  @type start_job_run_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_application_response() :: %{
        required("application") => application()
      }

  """
  @type get_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_applications_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t(),
        optional("states") => list(String.t()())
      }

  """
  @type list_applications_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      network_configuration() :: %{
        "securityGroupIds" => list(String.t()()),
        "subnetIds" => list(String.t()())
      }

  """
  @type network_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_application_response() :: %{}

  """
  @type stop_application_response() :: %{}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      get_dashboard_for_job_run_request() :: %{
        optional("attempt") => integer()
      }

  """
  @type get_dashboard_for_job_run_request() :: %{String.t() => any()}

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

      total_resource_utilization() :: %{
        "memoryGBHour" => [float()],
        "storageGBHour" => [float()],
        "vCPUHour" => [float()]
      }

  """
  @type total_resource_utilization() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configuration_overrides() :: %{
        "applicationConfiguration" => list(configuration()()),
        "monitoringConfiguration" => monitoring_configuration()
      }

  """
  @type configuration_overrides() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      application_summary() :: %{
        "architecture" => String.t(),
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "id" => String.t(),
        "name" => String.t(),
        "releaseLabel" => String.t(),
        "state" => String.t(),
        "stateDetails" => String.t(),
        "type" => String.t(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type application_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_applications_response() :: %{
        optional("nextToken") => String.t(),
        required("applications") => list(application_summary()())
      }

  """
  @type list_applications_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      managed_persistence_monitoring_configuration() :: %{
        "enabled" => [boolean()],
        "encryptionKeyArn" => String.t()
      }

  """
  @type managed_persistence_monitoring_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_job_run_request() :: %{}

  """
  @type cancel_job_run_request() :: %{}

  @typedoc """

  ## Example:

      image_configuration() :: %{
        "imageUri" => String.t(),
        "resolvedImageDigest" => String.t()
      }

  """
  @type image_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cloud_watch_logging_configuration() :: %{
        "enabled" => [boolean()],
        "encryptionKeyArn" => String.t(),
        "logGroupName" => String.t(),
        "logStreamNamePrefix" => String.t(),
        "logTypes" => map()
      }

  """
  @type cloud_watch_logging_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      retry_policy() :: %{
        "maxAttempts" => integer(),
        "maxFailedAttemptsPerHour" => [integer()]
      }

  """
  @type retry_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_application_request() :: %{}

  """
  @type get_application_request() :: %{}

  @typedoc """

  ## Example:

      delete_application_request() :: %{}

  """
  @type delete_application_request() :: %{}

  @type cancel_job_run_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type create_application_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_application_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_application_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_dashboard_for_job_run_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_job_run_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_applications_errors() :: validation_exception() | internal_server_exception()

  @type list_job_run_attempts_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_job_runs_errors() :: validation_exception() | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type start_application_errors() ::
          validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type start_job_run_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type stop_application_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type tag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type untag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type update_application_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2021-07-13",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "emr-serverless",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "EMR Serverless",
      signature_version: "v4",
      signing_name: "emr-serverless",
      target_prefix: nil
    }
  end

  @doc """
  Cancels a job run.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=emrserverless%20CancelJobRun&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The ID of the application on which the job run
    will be canceled.
  * `:job_run_id` (`t:string`) The ID of the job run to cancel.

  ## Optional parameters:
  """
  @spec cancel_job_run(
          AWS.Client.t(),
          String.t(),
          String.t(),
          cancel_job_run_request(),
          Keyword.t()
        ) ::
          {:ok, cancel_job_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_job_run_errors()}
  def cancel_job_run(%Client{} = client, application_id, job_run_id, input, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/jobruns/#{AWS.Util.encode_uri(job_run_id)}"

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
  Creates an application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=emrserverless%20CreateApplication&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_application(AWS.Client.t(), create_application_request(), Keyword.t()) ::
          {:ok, create_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_application_errors()}
  def create_application(%Client{} = client, input, options \\ []) do
    url_path = "/applications"
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
  Deletes an application. An application has to be in a stopped or created state
  in order to be deleted.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=emrserverless%20DeleteApplication&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The ID of the application that will be deleted.

  ## Optional parameters:
  """
  @spec delete_application(AWS.Client.t(), String.t(), delete_application_request(), Keyword.t()) ::
          {:ok, delete_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_application_errors()}
  def delete_application(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}"
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
  Displays detailed information about a specified application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=emrserverless%20GetApplication&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The ID of the application that will be
    described.

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
  Creates and returns a URL that you can use to access the application UIs for a
  job run. For jobs in a running state, the application UI is a live user
  interface such as the Spark or Tez web UI. For completed jobs, the application
  UI is a persistent application user interface such as the Spark History Server
  or persistent Tez UI.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=emrserverless%20GetDashboardForJobRun&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The ID of the application.
  * `:job_run_id` (`t:string`) The ID of the job run.

  ## Optional parameters:
  * `:attempt` (`t:integer`) An optimal parameter that indicates the amount of
    attempts for the job. If not specified, this value defaults to the attempt
    of the latest job.
  """
  @spec get_dashboard_for_job_run(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_dashboard_for_job_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_dashboard_for_job_run_errors()}
  def get_dashboard_for_job_run(%Client{} = client, application_id, job_run_id, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/jobruns/#{AWS.Util.encode_uri(job_run_id)}/dashboard"

    # Validate optional parameters
    optional_params = [attempt: nil]

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
      if opt_val = Keyword.get(options, :attempt) do
        [{"attempt", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:attempt])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Displays detailed information about a job run.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=emrserverless%20GetJobRun&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The ID of the application on which the job run
    is submitted.
  * `:job_run_id` (`t:string`) The ID of the job run.

  ## Optional parameters:
  * `:attempt` (`t:integer`) An optimal parameter that indicates the amount of
    attempts for the job. If not specified, this value defaults to the attempt
    of the latest job.
  """
  @spec get_job_run(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_job_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_job_run_errors()}
  def get_job_run(%Client{} = client, application_id, job_run_id, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/jobruns/#{AWS.Util.encode_uri(job_run_id)}"

    # Validate optional parameters
    optional_params = [attempt: nil]

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
      if opt_val = Keyword.get(options, :attempt) do
        [{"attempt", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:attempt])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists applications based on a set of parameters.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=emrserverless%20ListApplications&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:`) The maximum number of applications that can be listed.
  * `:next_token` (`t:string`) The token for the next set of application results.
  * `:states` (`t:list[com.amazonaws.emrserverless#ApplicationState]`) An optional
    filter for application states. Note that if this filter contains multiple
    states, the resulting list will be grouped by the state.
  """
  @spec list_applications(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_applications_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_applications_errors()}
  def list_applications(%Client{} = client, options \\ []) do
    url_path = "/applications"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, states: nil]

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
      if opt_val = Keyword.get(options, :states) do
        [{"states", opt_val} | query_params]
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
      |> Keyword.drop([:max_results, :next_token, :states])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all attempt of a job run.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=emrserverless%20ListJobRunAttempts&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The ID of the application for which to list job
    runs.
  * `:job_run_id` (`t:string`) The ID of the job run to list.

  ## Optional parameters:
  * `:max_results` (`t:`) The maximum number of job run attempts to list.
  * `:next_token` (`t:string`) The token for the next set of job run attempt
    results.
  """
  @spec list_job_run_attempts(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_job_run_attempts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_job_run_attempts_errors()}
  def list_job_run_attempts(%Client{} = client, application_id, job_run_id, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/jobruns/#{AWS.Util.encode_uri(job_run_id)}/attempts"

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
  Lists job runs based on a set of parameters.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=emrserverless%20ListJobRuns&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The ID of the application for which to list the
    job run.

  ## Optional parameters:
  * `:created_at_after` (`t:timestamp`) The lower bound of the option to filter by
    creation date and time.
  * `:created_at_before` (`t:timestamp`) The upper bound of the option to filter
    by creation date and time.
  * `:max_results` (`t:`) The maximum number of job runs that can be listed.
  * `:mode` (`t:string`) The mode of the job runs to list.
  * `:next_token` (`t:string`) The token for the next set of job run results.
  * `:states` (`t:list[com.amazonaws.emrserverless#JobRunState]`) An optional
    filter for job run states. Note that if this filter contains multiple
    states, the resulting list will be grouped by the state.
  """
  @spec list_job_runs(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_job_runs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_job_runs_errors()}
  def list_job_runs(%Client{} = client, application_id, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/jobruns"

    # Validate optional parameters
    optional_params = [
      created_at_after: nil,
      created_at_before: nil,
      max_results: nil,
      mode: nil,
      next_token: nil,
      states: nil
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
      if opt_val = Keyword.get(options, :states) do
        [{"states", opt_val} | query_params]
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
      if opt_val = Keyword.get(options, :mode) do
        [{"mode", opt_val} | query_params]
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
      if opt_val = Keyword.get(options, :created_at_before) do
        [{"createdAtBefore", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :created_at_after) do
        [{"createdAtAfter", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :created_at_after,
        :created_at_before,
        :max_results,
        :mode,
        :next_token,
        :states
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags assigned to the resources.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=emrserverless%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) that identifies
    the resource to list the tags for. Currently, the supported resources are
    Amazon EMR Serverless applications and job runs.

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
  Starts a specified application and initializes initial capacity if configured.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=emrserverless%20StartApplication&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The ID of the application to start.

  ## Optional parameters:
  """
  @spec start_application(AWS.Client.t(), String.t(), start_application_request(), Keyword.t()) ::
          {:ok, start_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_application_errors()}
  def start_application(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/start"
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
  Starts a job run.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=emrserverless%20StartJobRun&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The ID of the application on which to run the
    job.

  ## Optional parameters:
  """
  @spec start_job_run(AWS.Client.t(), String.t(), start_job_run_request(), Keyword.t()) ::
          {:ok, start_job_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_job_run_errors()}
  def start_job_run(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/jobruns"
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
  Stops a specified application and releases initial capacity if configured. All
  scheduled and running jobs must be completed or cancelled before stopping an
  application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=emrserverless%20StopApplication&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The ID of the application to stop.

  ## Optional parameters:
  """
  @spec stop_application(AWS.Client.t(), String.t(), stop_application_request(), Keyword.t()) ::
          {:ok, stop_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_application_errors()}
  def stop_application(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/stop"
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
  Assigns tags to resources. A tag is a label that you assign to an Amazon Web
  Services resource. Each tag consists of a key and an optional value, both of
  which you define. Tags enable you to categorize your Amazon Web Services
  resources by attributes such as purpose, owner, or environment. When you have
  many resources of the same type, you can quickly identify a specific resource
  based on the tags you've assigned to it.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=emrserverless%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) that identifies
    the resource to list the tags for. Currently, the supported resources are
    Amazon EMR Serverless applications and job runs.

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
  Removes tags from resources.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=emrserverless%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) that identifies
    the resource to list the tags for. Currently, the supported resources are
    Amazon EMR Serverless applications and job runs.
  * `:tag_keys` (`t:list[com.amazonaws.emrserverless#TagKey]`) The keys of the
    tags to be removed.

  ## Optional parameters:
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
  Updates a specified application. An application has to be in a stopped or
  created state in order to be updated.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=emrserverless%20UpdateApplication&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The ID of the application to update.

  ## Optional parameters:
  """
  @spec update_application(AWS.Client.t(), String.t(), update_application_request(), Keyword.t()) ::
          {:ok, update_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_application_errors()}
  def update_application(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}"
    headers = []
    query_params = []

    meta =
      metadata()

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
