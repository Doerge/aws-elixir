# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ApplicationSignals do
  @moduledoc """
  Use CloudWatch Application Signals for comprehensive observability of your
  cloud-based applications. It enables real-time service health dashboards and
  helps you track long-term performance trends against your business goals. The
  application-centric view provides you with unified visibility across your
  applications, services, and dependencies, so you can proactively monitor and
  efficiently triage any issues that may arise, ensuring optimal customer
  experience. Application Signals provides the following benefits:
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      list_service_operations_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("EndTime") => [non_neg_integer()],
        required("KeyAttributes") => map(),
        required("StartTime") => [non_neg_integer()]
      }
      
  """
  @type list_service_operations_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_service_input() :: %{
        required("EndTime") => [non_neg_integer()],
        required("KeyAttributes") => map(),
        required("StartTime") => [non_neg_integer()]
      }
      
  """
  @type get_service_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceArn") => String.t(),
        required("Tags") => list(tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_service_dependencies_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("EndTime") => [non_neg_integer()],
        required("KeyAttributes") => map(),
        required("StartTime") => [non_neg_integer()]
      }
      
  """
  @type list_service_dependencies_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_dependency() :: %{
        "DependencyKeyAttributes" => map(),
        "DependencyOperationName" => String.t(),
        "MetricReferences" => list(metric_reference()()),
        "OperationName" => String.t()
      }
      
  """
  @type service_dependency() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_service_dependencies_output() :: %{
        "EndTime" => [non_neg_integer()],
        "NextToken" => String.t(),
        "ServiceDependencies" => list(service_dependency()()),
        "StartTime" => [non_neg_integer()]
      }
      
  """
  @type list_service_dependencies_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_operation() :: %{
        "MetricReferences" => list(metric_reference()()),
        "Name" => String.t()
      }
      
  """
  @type service_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      calendar_interval() :: %{
        "Duration" => integer(),
        "DurationUnit" => list(any()),
        "StartTime" => [non_neg_integer()]
      }
      
  """
  @type calendar_interval() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      metric() :: %{
        "Dimensions" => list(dimension()()),
        "MetricName" => String.t(),
        "Namespace" => String.t()
      }
      
  """
  @type metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_level_objective_budget_report_error() :: %{
        "Arn" => String.t(),
        "ErrorCode" => String.t(),
        "ErrorMessage" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type service_level_objective_budget_report_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_level_objective_summary() :: %{
        "Arn" => String.t(),
        "CreatedTime" => [non_neg_integer()],
        "KeyAttributes" => map(),
        "Name" => String.t(),
        "OperationName" => String.t()
      }
      
  """
  @type service_level_objective_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_service_level_objective_input() :: %{}
      
  """
  @type delete_service_level_objective_input() :: %{}

  @typedoc """

  ## Example:
      
      service_level_indicator_metric_config() :: %{
        "KeyAttributes" => map(),
        "MetricDataQueries" => list(metric_data_query()()),
        "MetricType" => list(any()),
        "OperationName" => String.t(),
        "PeriodSeconds" => integer(),
        "Statistic" => String.t()
      }
      
  """
  @type service_level_indicator_metric_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_service_level_objectives_input() :: %{
        optional("KeyAttributes") => map(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("OperationName") => String.t()
      }
      
  """
  @type list_service_level_objectives_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_reference() :: %{
        "Dimensions" => list(dimension()()),
        "MetricName" => String.t(),
        "MetricType" => String.t(),
        "Namespace" => String.t()
      }
      
  """
  @type metric_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service() :: %{
        "AttributeMaps" => list(map()()),
        "KeyAttributes" => map(),
        "LogGroupReferences" => list(map()()),
        "MetricReferences" => list(metric_reference()())
      }
      
  """
  @type service() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_service_level_objective_input() :: %{
        optional("Description") => String.t(),
        optional("Goal") => goal(),
        optional("Tags") => list(tag()()),
        required("Name") => String.t(),
        required("SliConfig") => service_level_indicator_config()
      }
      
  """
  @type create_service_level_objective_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_level_objective() :: %{
        "Arn" => String.t(),
        "CreatedTime" => [non_neg_integer()],
        "Description" => String.t(),
        "Goal" => goal(),
        "LastUpdatedTime" => [non_neg_integer()],
        "Name" => String.t(),
        "Sli" => service_level_indicator()
      }
      
  """
  @type service_level_objective() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceArn") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      goal() :: %{
        "AttainmentGoal" => float(),
        "Interval" => list(),
        "WarningThreshold" => float()
      }
      
  """
  @type goal() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_service_level_objective_budget_report_output() :: %{
        "Errors" => list(service_level_objective_budget_report_error()()),
        "Reports" => list(service_level_objective_budget_report()()),
        "Timestamp" => [non_neg_integer()]
      }
      
  """
  @type batch_get_service_level_objective_budget_report_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_level_indicator_metric() :: %{
        "KeyAttributes" => map(),
        "MetricDataQueries" => list(metric_data_query()()),
        "MetricType" => list(any()),
        "OperationName" => String.t()
      }
      
  """
  @type service_level_indicator_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rolling_interval() :: %{
        "Duration" => integer(),
        "DurationUnit" => list(any())
      }
      
  """
  @type rolling_interval() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_service_level_objective_input() :: %{}
      
  """
  @type get_service_level_objective_input() :: %{}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Message" => [String.t()]
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_service_output() :: %{
        "EndTime" => [non_neg_integer()],
        "LogGroupReferences" => list(map()()),
        "Service" => service(),
        "StartTime" => [non_neg_integer()]
      }
      
  """
  @type get_service_output() :: %{String.t() => any()}

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
      
      service_quota_exceeded_exception() :: %{
        "Message" => [String.t()]
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_summary() :: %{
        "AttributeMaps" => list(map()()),
        "KeyAttributes" => map(),
        "MetricReferences" => list(metric_reference()())
      }
      
  """
  @type service_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_data_query() :: %{
        "AccountId" => String.t(),
        "Expression" => String.t(),
        "Id" => String.t(),
        "Label" => String.t(),
        "MetricStat" => metric_stat(),
        "Period" => integer(),
        "ReturnData" => boolean()
      }
      
  """
  @type metric_data_query() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_level_indicator() :: %{
        "ComparisonOperator" => list(any()),
        "MetricThreshold" => float(),
        "SliMetric" => service_level_indicator_metric()
      }
      
  """
  @type service_level_indicator() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_service_level_objective_output() :: %{
        "Slo" => service_level_objective()
      }
      
  """
  @type get_service_level_objective_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_dependent() :: %{
        "DependentKeyAttributes" => map(),
        "DependentOperationName" => String.t(),
        "MetricReferences" => list(metric_reference()()),
        "OperationName" => String.t()
      }
      
  """
  @type service_dependent() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_level_objective_budget_report() :: %{
        "Arn" => String.t(),
        "Attainment" => float(),
        "BudgetSecondsRemaining" => integer(),
        "BudgetStatus" => list(any()),
        "Goal" => goal(),
        "Name" => String.t(),
        "Sli" => service_level_indicator(),
        "TotalBudgetSeconds" => integer()
      }
      
  """
  @type service_level_objective_budget_report() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_service_level_objective_output() :: %{
        "Slo" => service_level_objective()
      }
      
  """
  @type update_service_level_objective_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_service_dependents_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("EndTime") => [non_neg_integer()],
        required("KeyAttributes") => map(),
        required("StartTime") => [non_neg_integer()]
      }
      
  """
  @type list_service_dependents_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_service_level_objectives_output() :: %{
        "NextToken" => String.t(),
        "SloSummaries" => list(service_level_objective_summary()())
      }
      
  """
  @type list_service_level_objectives_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_stat() :: %{
        "Metric" => metric(),
        "Period" => integer(),
        "Stat" => String.t(),
        "Unit" => list(any())
      }
      
  """
  @type metric_stat() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_service_level_objective_budget_report_input() :: %{
        required("SloIds") => list([String.t()]()),
        required("Timestamp") => [non_neg_integer()]
      }
      
  """
  @type batch_get_service_level_objective_budget_report_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      list_service_operations_output() :: %{
        "EndTime" => [non_neg_integer()],
        "NextToken" => String.t(),
        "ServiceOperations" => list(service_operation()()),
        "StartTime" => [non_neg_integer()]
      }
      
  """
  @type list_service_operations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_service_level_objective_input() :: %{
        optional("Description") => String.t(),
        optional("Goal") => goal(),
        optional("SliConfig") => service_level_indicator_config()
      }
      
  """
  @type update_service_level_objective_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_discovery_input() :: %{}
      
  """
  @type start_discovery_input() :: %{}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceArn") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Message" => [String.t()]
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dimension() :: %{
        "Name" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type dimension() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_level_indicator_config() :: %{
        "ComparisonOperator" => list(any()),
        "MetricThreshold" => float(),
        "SliMetricConfig" => service_level_indicator_metric_config()
      }
      
  """
  @type service_level_indicator_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_service_level_objective_output() :: %{
        "Slo" => service_level_objective()
      }
      
  """
  @type create_service_level_objective_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_service_level_objective_output() :: %{}
      
  """
  @type delete_service_level_objective_output() :: %{}

  @typedoc """

  ## Example:
      
      list_service_dependents_output() :: %{
        "EndTime" => [non_neg_integer()],
        "NextToken" => String.t(),
        "ServiceDependents" => list(service_dependent()()),
        "StartTime" => [non_neg_integer()]
      }
      
  """
  @type list_service_dependents_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_discovery_output() :: %{}
      
  """
  @type start_discovery_output() :: %{}

  @typedoc """

  ## Example:
      
      list_services_output() :: %{
        "EndTime" => [non_neg_integer()],
        "NextToken" => String.t(),
        "ServiceSummaries" => list(service_summary()()),
        "StartTime" => [non_neg_integer()]
      }
      
  """
  @type list_services_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_services_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("EndTime") => [non_neg_integer()],
        required("StartTime") => [non_neg_integer()]
      }
      
  """
  @type list_services_input() :: %{String.t() => any()}

  @type batch_get_service_level_objective_budget_report_errors() ::
          throttling_exception() | validation_exception()

  @type create_service_level_objective_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_service_level_objective_errors() ::
          throttling_exception() | validation_exception() | resource_not_found_exception()

  @type get_service_errors() :: throttling_exception() | validation_exception()

  @type get_service_level_objective_errors() ::
          throttling_exception() | validation_exception() | resource_not_found_exception()

  @type list_service_dependencies_errors() :: throttling_exception() | validation_exception()

  @type list_service_dependents_errors() :: throttling_exception() | validation_exception()

  @type list_service_level_objectives_errors() :: throttling_exception() | validation_exception()

  @type list_service_operations_errors() :: throttling_exception() | validation_exception()

  @type list_services_errors() :: throttling_exception() | validation_exception()

  @type list_tags_for_resource_errors() :: throttling_exception() | resource_not_found_exception()

  @type start_discovery_errors() ::
          throttling_exception() | validation_exception() | access_denied_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() :: throttling_exception() | resource_not_found_exception()

  @type update_service_level_objective_errors() ::
          throttling_exception() | validation_exception() | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2024-04-15",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "application-signals",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Application Signals",
      signature_version: "v4",
      signing_name: "application-signals",
      target_prefix: nil
    }
  end

  @doc """
  Use this operation to retrieve one or more *service level objective (SLO) budget
  reports*. An *error budget* is the amount of time in unhealthy periods that
  your service can accumulate during an interval before your overall SLO budget
  health is breached and the SLO is considered to be unmet. For example, an SLO
  with a threshold of 99.95% and a monthly interval translates to an error
  budget of 21.9 minutes of downtime in a 30-day month.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=applicationsignals%20BatchGetServiceLevelObjectiveBudgetReport&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec batch_get_service_level_objective_budget_report(AWS.Client.t(), Keyword.t()) ::
          {:ok, batch_get_service_level_objective_budget_report_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_get_service_level_objective_budget_report_errors()}

  def batch_get_service_level_objective_budget_report(%Client{} = client, options \\ []) do
    url_path = "/budget-report"

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
  Creates a service level objective (SLO), which can help you ensure that your
  critical business operations are meeting customer expectations. Use SLOs to
  set and track specific target levels for the reliability and availability of
  your applications and services. SLOs use service level indicators (SLIs) to
  calculate whether the application is performing at the level that you want.
  Create an SLO to set a target for a service or operation’s availability or
  latency. CloudWatch measures this target frequently you can find whether it
  has been breached.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=applicationsignals%20CreateServiceLevelObjective&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_service_level_objective(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_service_level_objective_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_service_level_objective_errors()}

  def create_service_level_objective(%Client{} = client, options \\ []) do
    url_path = "/slo"

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
  Deletes the specified service level objective.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=applicationsignals%20DeleteServiceLevelObjective&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The ARN or name of the service level objective to delete.

  ## Optional parameters:
  """

  @spec delete_service_level_objective(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_service_level_objective_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_service_level_objective_errors()}

  def delete_service_level_objective(%Client{} = client, id, options \\ []) do
    url_path = "/slo/#{AWS.Util.encode_uri(id)}"

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
  Returns information about a service discovered by Application Signals.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=applicationsignals%20GetService&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:end_time` (`t:string`) The end of the time period to retrieve information
  about. When used in a raw HTTP Query API, it is formatted as be epoch time
  in seconds. For example: 1698778057
  * `:start_time` (`t:string`) The start of the time period to retrieve
  information about. When used in a raw HTTP Query API, it is formatted as be
  epoch time in seconds. For example: 1698778057

  ## Optional parameters:
  """

  @spec get_service(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_service_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_service_errors()}

  def get_service(%Client{} = client, end_time, start_time, options \\ [])
      when is_binary(end_time) and is_binary(start_time) do
    url_path = "/service"

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
    query_params = [{"EndTime", end_time}, {"StartTime", start_time}]

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Returns information about one SLO created in the account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=applicationsignals%20GetServiceLevelObjective&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The ARN or name of the SLO that you want to retrieve
  information about. You can find the ARNs of SLOs by using the
  ListServiceLevelObjectives operation.

  ## Optional parameters:
  """

  @spec get_service_level_objective(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_service_level_objective_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_service_level_objective_errors()}

  def get_service_level_objective(%Client{} = client, id, options \\ []) do
    url_path = "/slo/#{AWS.Util.encode_uri(id)}"

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
  Returns a list of service dependencies of the service that you specify. A
  dependency is an infrastructure component that an operation of this service
  connects with. Dependencies can include Amazon Web Services services, Amazon
  Web Services resources, and third-party services.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=applicationsignals%20ListServiceDependencies&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:end_time` (`t:string`) The end of the time period to retrieve information
  about. When used in a raw HTTP Query API, it is formatted as be epoch time
  in seconds. For example: 1698778057
  * `:start_time` (`t:string`) The start of the time period to retrieve
  information about. When used in a raw HTTP Query API, it is formatted as be
  epoch time in seconds. For example: 1698778057

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return in one
  operation. If you omit this parameter, the default of 50 is used.
  * `:next_token` (`t:string`) Include this value, if it was returned by the
  previous operation, to get the next set of service dependencies.
  """

  @spec list_service_dependencies(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_service_dependencies_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_service_dependencies_errors()}

  def list_service_dependencies(%Client{} = client, end_time, start_time, options \\ [])
      when is_binary(end_time) and is_binary(start_time) do
    url_path = "/service-dependencies"

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
    query_params = [{"EndTime", end_time}, {"StartTime", start_time}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"NextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"MaxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Returns the list of dependents that invoked the specified service during the
  provided time range. Dependents include other services, CloudWatch Synthetics
  canaries, and clients that are instrumented with CloudWatch RUM app monitors.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=applicationsignals%20ListServiceDependents&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:end_time` (`t:string`) The end of the time period to retrieve information
  about. When used in a raw HTTP Query API, it is formatted as be epoch time
  in seconds. For example: 1698778057
  * `:start_time` (`t:string`) The start of the time period to retrieve
  information about. When used in a raw HTTP Query API, it is formatted as be
  epoch time in seconds. For example: 1698778057

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return in one
  operation. If you omit this parameter, the default of 50 is used.
  * `:next_token` (`t:string`) Include this value, if it was returned by the
  previous operation, to get the next set of service dependents.
  """

  @spec list_service_dependents(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_service_dependents_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_service_dependents_errors()}

  def list_service_dependents(%Client{} = client, end_time, start_time, options \\ [])
      when is_binary(end_time) and is_binary(start_time) do
    url_path = "/service-dependents"

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
    query_params = [{"EndTime", end_time}, {"StartTime", start_time}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"NextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"MaxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Returns a list of SLOs created in this account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=applicationsignals%20ListServiceLevelObjectives&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return in one
  operation. If you omit this parameter, the default of 50 is used.
  * `:next_token` (`t:string`) Include this value, if it was returned by the
  previous operation, to get the next set of service level objectives.
  * `:operation_name` (`t:string`) The name of the operation that this SLO is
  associated with.
  """

  @spec list_service_level_objectives(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_service_level_objectives_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_service_level_objectives_errors()}

  def list_service_level_objectives(%Client{} = client, options \\ []) do
    url_path = "/slos"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, operation_name: nil]

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
      if opt_val = Keyword.get(options, :operation_name) do
        [{"OperationName", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"NextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"MaxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token, :operation_name])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Returns a list of the *operations* of this service that have been discovered by
  Application Signals. Only the operations that were invoked during the
  specified time range are returned.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=applicationsignals%20ListServiceOperations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:end_time` (`t:string`) The end of the time period to retrieve information
  about. When used in a raw HTTP Query API, it is formatted as be epoch time
  in seconds. For example: 1698778057
  * `:start_time` (`t:string`) The start of the time period to retrieve
  information about. When used in a raw HTTP Query API, it is formatted as be
  epoch time in seconds. For example: 1698778057

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return in one
  operation. If you omit this parameter, the default of 50 is used.
  * `:next_token` (`t:string`) Include this value, if it was returned by the
  previous operation, to get the next set of service operations.
  """

  @spec list_service_operations(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_service_operations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_service_operations_errors()}

  def list_service_operations(%Client{} = client, end_time, start_time, options \\ [])
      when is_binary(end_time) and is_binary(start_time) do
    url_path = "/service-operations"

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
    query_params = [{"EndTime", end_time}, {"StartTime", start_time}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"NextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"MaxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Returns a list of services that have been discovered by Application Signals. A
  service represents a minimum logical and transactional unit that completes a
  business function. Services are discovered through Application Signals
  instrumentation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=applicationsignals%20ListServices&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:end_time` (`t:string`) The end of the time period to retrieve information
  about. When used in a raw HTTP Query API, it is formatted as be epoch time
  in seconds. For example: 1698778057
  * `:start_time` (`t:string`) The start of the time period to retrieve
  information about. When used in a raw HTTP Query API, it is formatted as be
  epoch time in seconds. For example: 1698778057

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return in one
  operation. If you omit this parameter, the default of 50 is used.
  * `:next_token` (`t:string`) Include this value, if it was returned by the
  previous operation, to get the next set of services.
  """

  @spec list_services(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_services_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_services_errors()}

  def list_services(%Client{} = client, end_time, start_time, options \\ [])
      when is_binary(end_time) and is_binary(start_time) do
    url_path = "/services"

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
    query_params = [{"EndTime", end_time}, {"StartTime", start_time}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"NextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"MaxResults", opt_val} | query_params]
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
  Displays the tags associated with a CloudWatch resource. Tags can be assigned to
  service level objectives.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=applicationsignals%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the CloudWatch
  resource that you want to view tags for.

  ## Optional parameters:
  """

  @spec list_tags_for_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}

  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ [])
      when is_binary(resource_arn) do
    url_path = "/tags"

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
    query_params = [{"ResourceArn", resource_arn}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Enables this Amazon Web Services account to be able to use CloudWatch
  Application Signals by creating the
  *AWSServiceRoleForCloudWatchApplicationSignals* service-linked role. This
  service- linked role has the following permissions:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=applicationsignals%20StartDiscovery&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec start_discovery(AWS.Client.t(), Keyword.t()) ::
          {:ok, start_discovery_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_discovery_errors()}

  def start_discovery(%Client{} = client, options \\ []) do
    url_path = "/start-discovery"

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
  Assigns one or more tags (key-value pairs) to the specified CloudWatch resource,
  such as a service level objective. Tags can help you organize and categorize
  your resources. You can also use them to scope user permissions by granting a
  user permission to access or change only resources with certain tag values.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=applicationsignals%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec tag_resource(AWS.Client.t(), Keyword.t()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}

  def tag_resource(%Client{} = client, options \\ []) do
    url_path = "/tag-resource"

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

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=applicationsignals%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec untag_resource(AWS.Client.t(), Keyword.t()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}

  def untag_resource(%Client{} = client, options \\ []) do
    url_path = "/untag-resource"

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
  Updates an existing service level objective (SLO). If you omit parameters, the
  previous values of those parameters are retained.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=applicationsignals%20UpdateServiceLevelObjective&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The Amazon Resource Name (ARN) or name of the service level
  objective that you want to update.

  ## Optional parameters:
  """

  @spec update_service_level_objective(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_service_level_objective_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_service_level_objective_errors()}

  def update_service_level_objective(%Client{} = client, id, options \\ []) do
    url_path = "/slo/#{AWS.Util.encode_uri(id)}"

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
