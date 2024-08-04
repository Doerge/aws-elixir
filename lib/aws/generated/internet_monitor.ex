# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.InternetMonitor do
  @moduledoc """
  Amazon CloudWatch Internet Monitor provides visibility into how internet issues
  impact the performance and availability between your applications hosted on
  Amazon Web Services and your end users. It can reduce the time it takes for
  you to diagnose internet issues from days to minutes. Internet Monitor uses
  the connectivity data that Amazon Web Services captures from its global
  networking footprint to calculate a baseline of performance and availability
  for internet traffic. This is the same data that Amazon Web Services uses to
  monitor internet uptime and availability. With those measurements as a
  baseline, Internet Monitor raises awareness for you when there are significant
  problems for your end users in the different geographic locations where your
  application runs. Internet Monitor publishes internet measurements to
  CloudWatch Logs and CloudWatch Metrics, to easily support using CloudWatch
  tools with health information for geographies and networks specific to your
  application. Internet Monitor sends health events to Amazon EventBridge so
  that you can set up notifications. If an issue is caused by the Amazon Web
  Services network, you also automatically receive an Amazon Web Services Health
  Dashboard notification with the steps that Amazon Web Services is taking to
  mitigate the problem.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      get_health_event_output() :: %{
        optional("CreatedAt") => [non_neg_integer()],
        optional("EndedAt") => [non_neg_integer()],
        optional("HealthScoreThreshold") => float(),
        optional("PercentOfTotalTrafficImpacted") => [float()],
        required("EventArn") => String.t(),
        required("EventId") => String.t(),
        required("ImpactType") => String.t(),
        required("ImpactedLocations") => list(impacted_location()()),
        required("LastUpdatedAt") => [non_neg_integer()],
        required("StartedAt") => [non_neg_integer()],
        required("Status") => String.t()
      }
      
  """
  @type get_health_event_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      health_events_config() :: %{
        "AvailabilityLocalHealthEventsConfig" => local_health_events_config(),
        "AvailabilityScoreThreshold" => float(),
        "PerformanceLocalHealthEventsConfig" => local_health_events_config(),
        "PerformanceScoreThreshold" => float()
      }
      
  """
  @type health_events_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_monitors_input() :: %{
        optional("IncludeLinkedAccounts") => [boolean()],
        optional("MaxResults") => integer(),
        optional("MonitorStatus") => [String.t()],
        optional("NextToken") => [String.t()]
      }
      
  """
  @type list_monitors_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_query_results_output() :: %{
        "Data" => list(list([String.t()]())()),
        "Fields" => list(query_field()()),
        "NextToken" => [String.t()]
      }
      
  """
  @type get_query_results_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_monitor_output() :: %{
        "CreatedAt" => [non_neg_integer()],
        "HealthEventsConfig" => health_events_config(),
        "InternetMeasurementsLogDelivery" => internet_measurements_log_delivery(),
        "MaxCityNetworksToMonitor" => integer(),
        "ModifiedAt" => [non_neg_integer()],
        "MonitorArn" => String.t(),
        "MonitorName" => String.t(),
        "ProcessingStatus" => String.t(),
        "ProcessingStatusInfo" => [String.t()],
        "Resources" => list(String.t()()),
        "Status" => String.t(),
        "Tags" => map(),
        "TrafficPercentageToMonitor" => integer()
      }
      
  """
  @type get_monitor_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_query_output() :: %{
        "QueryId" => [String.t()]
      }
      
  """
  @type start_query_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_monitors_output() :: %{
        "Monitors" => list(monitor()()),
        "NextToken" => [String.t()]
      }
      
  """
  @type list_monitors_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      filter_parameter() :: %{
        "Field" => [String.t()],
        "Operator" => String.t(),
        "Values" => list([String.t()]())
      }
      
  """
  @type filter_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_query_input() :: %{}
      
  """
  @type stop_query_input() :: %{}

  @typedoc """

  ## Example:
      
      network_impairment() :: %{
        "AsPath" => list(network()()),
        "NetworkEventType" => String.t(),
        "Networks" => list(network()())
      }
      
  """
  @type network_impairment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_monitor_output() :: %{}
      
  """
  @type delete_monitor_output() :: %{}

  @typedoc """

  ## Example:
      
      client_location() :: %{
        "ASName" => [String.t()],
        "ASNumber" => [float()],
        "City" => [String.t()],
        "Country" => [String.t()],
        "Latitude" => [float()],
        "Longitude" => [float()],
        "Metro" => [String.t()],
        "Subdivision" => [String.t()]
      }
      
  """
  @type client_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_internet_events_input() :: %{
        optional("EndTime") => [non_neg_integer()],
        optional("EventStatus") => [String.t()],
        optional("EventType") => [String.t()],
        optional("MaxResults") => integer(),
        optional("NextToken") => [String.t()],
        optional("StartTime") => [non_neg_integer()]
      }
      
  """
  @type list_internet_events_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_requests_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_output() :: %{
        optional("Tags") => map()
      }
      
  """
  @type list_tags_for_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      monitor() :: %{
        "MonitorArn" => String.t(),
        "MonitorName" => String.t(),
        "ProcessingStatus" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type monitor() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      impacted_location() :: %{
        "ASName" => [String.t()],
        "ASNumber" => [float()],
        "CausedBy" => network_impairment(),
        "City" => [String.t()],
        "Country" => [String.t()],
        "CountryCode" => [String.t()],
        "InternetHealth" => internet_health(),
        "Ipv4Prefixes" => list([String.t()]()),
        "Latitude" => [float()],
        "Longitude" => [float()],
        "Metro" => [String.t()],
        "ServiceLocation" => [String.t()],
        "Status" => String.t(),
        "Subdivision" => [String.t()],
        "SubdivisionCode" => [String.t()]
      }
      
  """
  @type impacted_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_query_status_output() :: %{
        "Status" => String.t()
      }
      
  """
  @type get_query_status_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_monitor_input() :: %{}
      
  """
  @type delete_monitor_input() :: %{}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_internet_event_input() :: %{}
      
  """
  @type get_internet_event_input() :: %{}

  @typedoc """

  ## Example:
      
      internet_measurements_log_delivery() :: %{
        "S3Config" => s3_config()
      }
      
  """
  @type internet_measurements_log_delivery() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      local_health_events_config() :: %{
        "HealthScoreThreshold" => float(),
        "MinTrafficImpact" => float(),
        "Status" => String.t()
      }
      
  """
  @type local_health_events_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_config() :: %{
        "BucketName" => [String.t()],
        "BucketPrefix" => [String.t()],
        "LogDeliveryStatus" => String.t()
      }
      
  """
  @type s3_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_internet_event_output() :: %{
        "ClientLocation" => client_location(),
        "EndedAt" => [non_neg_integer()],
        "EventArn" => String.t(),
        "EventId" => String.t(),
        "EventStatus" => String.t(),
        "EventType" => String.t(),
        "StartedAt" => [non_neg_integer()]
      }
      
  """
  @type get_internet_event_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      not_found_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      performance_measurement() :: %{
        "ExperienceScore" => [float()],
        "PercentOfClientLocationImpacted" => [float()],
        "PercentOfTotalTrafficImpacted" => [float()],
        "RoundTripTime" => round_trip_time()
      }
      
  """
  @type performance_measurement() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_query_status_input() :: %{}
      
  """
  @type get_query_status_input() :: %{}

  @typedoc """

  ## Example:
      
      get_monitor_input() :: %{
        optional("LinkedAccountId") => String.t()
      }
      
  """
  @type get_monitor_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_query_output() :: %{}
      
  """
  @type stop_query_output() :: %{}

  @typedoc """

  ## Example:
      
      tag_resource_input() :: %{
        "Tags" => map()
      }
      
  """
  @type tag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_health_events_output() :: %{
        optional("NextToken") => [String.t()],
        required("HealthEvents") => list(health_event()())
      }
      
  """
  @type list_health_events_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_health_event_input() :: %{
        optional("LinkedAccountId") => String.t()
      }
      
  """
  @type get_health_event_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_output() :: %{}
      
  """
  @type tag_resource_output() :: %{}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      availability_measurement() :: %{
        "ExperienceScore" => [float()],
        "PercentOfClientLocationImpacted" => [float()],
        "PercentOfTotalTrafficImpacted" => [float()]
      }
      
  """
  @type availability_measurement() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_health_events_input() :: %{
        optional("EndTime") => [non_neg_integer()],
        optional("EventStatus") => String.t(),
        optional("LinkedAccountId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => [String.t()],
        optional("StartTime") => [non_neg_integer()]
      }
      
  """
  @type list_health_events_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      query_field() :: %{
        "Name" => [String.t()],
        "Type" => [String.t()]
      }
      
  """
  @type query_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_input() :: %{
        "TagKeys" => list(String.t()())
      }
      
  """
  @type untag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_monitor_input() :: %{
        optional("ClientToken") => [String.t()],
        optional("HealthEventsConfig") => health_events_config(),
        optional("InternetMeasurementsLogDelivery") => internet_measurements_log_delivery(),
        optional("MaxCityNetworksToMonitor") => integer(),
        optional("ResourcesToAdd") => list(String.t()()),
        optional("ResourcesToRemove") => list(String.t()()),
        optional("Status") => String.t(),
        optional("TrafficPercentageToMonitor") => integer()
      }
      
  """
  @type update_monitor_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      health_event() :: %{
        "CreatedAt" => [non_neg_integer()],
        "EndedAt" => [non_neg_integer()],
        "EventArn" => String.t(),
        "EventId" => String.t(),
        "HealthScoreThreshold" => float(),
        "ImpactType" => String.t(),
        "ImpactedLocations" => list(impacted_location()()),
        "LastUpdatedAt" => [non_neg_integer()],
        "PercentOfTotalTrafficImpacted" => [float()],
        "StartedAt" => [non_neg_integer()],
        "Status" => String.t()
      }
      
  """
  @type health_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_query_results_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => [String.t()]
      }
      
  """
  @type get_query_results_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network() :: %{
        "ASName" => [String.t()],
        "ASNumber" => [float()]
      }
      
  """
  @type network() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      round_trip_time() :: %{
        "P50" => [float()],
        "P90" => [float()],
        "P95" => [float()]
      }
      
  """
  @type round_trip_time() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_input() :: %{}
      
  """
  @type list_tags_for_resource_input() :: %{}

  @typedoc """

  ## Example:
      
      untag_resource_output() :: %{}
      
  """
  @type untag_resource_output() :: %{}

  @typedoc """

  ## Example:
      
      internal_server_error_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type internal_server_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_monitor_output() :: %{
        "Arn" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type create_monitor_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bad_request_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internet_health() :: %{
        "Availability" => availability_measurement(),
        "Performance" => performance_measurement()
      }
      
  """
  @type internet_health() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_internet_events_output() :: %{
        "InternetEvents" => list(internet_event_summary()()),
        "NextToken" => [String.t()]
      }
      
  """
  @type list_internet_events_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internet_event_summary() :: %{
        "ClientLocation" => client_location(),
        "EndedAt" => [non_neg_integer()],
        "EventArn" => String.t(),
        "EventId" => String.t(),
        "EventStatus" => String.t(),
        "EventType" => String.t(),
        "StartedAt" => [non_neg_integer()]
      }
      
  """
  @type internet_event_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_query_input() :: %{
        optional("FilterParameters") => list(filter_parameter()()),
        optional("LinkedAccountId") => String.t(),
        required("EndTime") => [non_neg_integer()],
        required("QueryType") => String.t(),
        required("StartTime") => [non_neg_integer()]
      }
      
  """
  @type start_query_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_monitor_output() :: %{
        "MonitorArn" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type update_monitor_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_monitor_input() :: %{
        optional("ClientToken") => [String.t()],
        optional("HealthEventsConfig") => health_events_config(),
        optional("InternetMeasurementsLogDelivery") => internet_measurements_log_delivery(),
        optional("MaxCityNetworksToMonitor") => integer(),
        optional("Resources") => list(String.t()()),
        optional("Tags") => map(),
        optional("TrafficPercentageToMonitor") => integer(),
        required("MonitorName") => String.t()
      }
      
  """
  @type create_monitor_input() :: %{String.t() => any()}

  @type create_monitor_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_monitor_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type get_health_event_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type get_internet_event_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type get_monitor_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type get_query_results_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type get_query_status_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_health_events_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_internet_events_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_monitors_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | access_denied_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type start_query_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type stop_query_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type tag_resource_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | access_denied_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type untag_resource_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | access_denied_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type update_monitor_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2021-06-03",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "internetmonitor",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "InternetMonitor",
      signature_version: "v4",
      signing_name: "internetmonitor",
      target_prefix: nil
    }
  end

  @doc """
  Creates a monitor in Amazon CloudWatch Internet Monitor. A monitor is built
  based on information from the application resources that you add: VPCs,
  Network Load Balancers (NLBs), Amazon CloudFront distributions, and Amazon
  WorkSpaces directories. Internet Monitor then publishes internet measurements
  from Amazon Web Services that are specific to the *city-networks*. That is,
  the locations and ASNs (typically internet service providers or ISPs), where
  clients access your application. For more information, see [Using Amazon
  CloudWatch Internet
  Monitor](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-InternetMonitor.html)
  in the *Amazon CloudWatch User Guide*. When you create a monitor, you choose
  the percentage of traffic that you want to monitor. You can also set a maximum
  limit for the number of city-networks where client traffic is monitored, that
  caps the total traffic that Internet Monitor monitors. A city-network maximum
  is the limit of city-networks, but you only pay for the number of
  city-networks that are actually monitored. You can update your monitor at any
  time to change the percentage of traffic to monitor or the city-networks
  maximum. For more information, see [Choosing a city-network maximum
  value](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/IMCityNetworksMaximum.html)
  in the *Amazon CloudWatch User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=internetmonitor%20CreateMonitor&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_monitor(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_monitor_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_monitor_errors()}
  def create_monitor(%Client{} = client, options \\ []) do
    url_path = "/v20210603/Monitors"

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
  Deletes a monitor in Amazon CloudWatch Internet Monitor.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=internetmonitor%20DeleteMonitor&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:monitor_name` (`t:string` required) The name of the monitor to delete.
  ## Keyword parameters:
  """
  @spec delete_monitor(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_monitor_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_monitor_errors()}
  def delete_monitor(%Client{} = client, monitor_name, options \\ []) do
    url_path = "/v20210603/Monitors/#{AWS.Util.encode_uri(monitor_name)}"

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
  Gets information that Amazon CloudWatch Internet Monitor has created and stored
  about a health event for a specified monitor. This information includes the
  impacted locations, and all the information related to the event, by location.
  The information returned includes the impact on performance, availability, and
  round-trip time, information about the network providers (ASNs), the event
  type, and so on.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=internetmonitor%20GetHealthEvent&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:event_id` (`t:string` required) The internally-generated identifier of a
  health event. Because EventID contains the forward slash (“/”) character,
  you must URL-encode the EventID field in the request URL.
  * `:monitor_name` (`t:string` required) The name of the monitor.
  ## Keyword parameters:
  * `:linked_account_id` (`t:string`) The account ID for an account that you've
  set up cross-account sharing for in Amazon CloudWatch Internet Monitor. You
  configure cross-account sharing by using Amazon CloudWatch Observability
  Access Manager. For more information, see Internet Monitor cross-account
  observability in the Amazon CloudWatch Internet Monitor User Guide.
  """
  @spec get_health_event(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_health_event_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_health_event_errors()}
  def get_health_event(%Client{} = client, event_id, monitor_name, options \\ []) do
    url_path =
      "/v20210603/Monitors/#{AWS.Util.encode_uri(monitor_name)}/HealthEvents/#{AWS.Util.encode_uri(event_id)}"

    # Validate optional parameters
    optional_params = [linked_account_id: nil]

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
      if opt_val = Keyword.get(options, :linked_account_id) do
        [{"LinkedAccountId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:linked_account_id])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information that Amazon CloudWatch Internet Monitor has generated about an
  internet event. Internet Monitor displays information about recent global
  health events, called internet events, on a global outages map that is
  available to all Amazon Web Services customers.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=internetmonitor%20GetInternetEvent&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:event_id` (`t:string` required) The EventId of the internet event to return
  information for.
  ## Keyword parameters:
  """
  @spec get_internet_event(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_internet_event_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_internet_event_errors()}
  def get_internet_event(%Client{} = client, event_id, options \\ []) do
    url_path = "/v20210603/InternetEvents/#{AWS.Util.encode_uri(event_id)}"

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
  Gets information about a monitor in Amazon CloudWatch Internet Monitor based on
  a monitor name. The information returned includes the Amazon Resource Name
  (ARN), create time, modified time, resources included in the monitor, and
  status information.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=internetmonitor%20GetMonitor&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:monitor_name` (`t:string` required) The name of the monitor.
  ## Keyword parameters:
  * `:linked_account_id` (`t:string`) The account ID for an account that you've
  set up cross-account sharing for in Amazon CloudWatch Internet Monitor. You
  configure cross-account sharing by using Amazon CloudWatch Observability
  Access Manager. For more information, see Internet Monitor cross-account
  observability in the Amazon CloudWatch Internet Monitor User Guide.
  """
  @spec get_monitor(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_monitor_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_monitor_errors()}
  def get_monitor(%Client{} = client, monitor_name, options \\ []) do
    url_path = "/v20210603/Monitors/#{AWS.Util.encode_uri(monitor_name)}"

    # Validate optional parameters
    optional_params = [linked_account_id: nil]

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
      if opt_val = Keyword.get(options, :linked_account_id) do
        [{"LinkedAccountId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:linked_account_id])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Return the data for a query with the Amazon CloudWatch Internet Monitor query
  interface. Specify the query that you want to return results for by providing
  a `QueryId` and a monitor name.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=internetmonitor%20GetQueryResults&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:monitor_name` (`t:string` required) The name of the monitor to return data
  for.
  * `:query_id` (`t:string` required) The ID of the query that you want to return
  data results for. A QueryId is an internally-generated identifier for a
  specific query.
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The number of query results that you want to
  return with this call.
  * `:next_token` (`t:string`) The token for the next set of results. You receive
  this token from a previous call.
  """
  @spec get_query_results(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_query_results_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_query_results_errors()}
  def get_query_results(%Client{} = client, monitor_name, query_id, options \\ []) do
    url_path =
      "/v20210603/Monitors/#{AWS.Util.encode_uri(monitor_name)}/Queries/#{AWS.Util.encode_uri(query_id)}/Results"

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
  Returns the current status of a query for the Amazon CloudWatch Internet Monitor
  query interface, for a specified query ID and monitor. When you run a query,
  check the status to make sure that the query has `SUCCEEDED` before you review
  the results.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=internetmonitor%20GetQueryStatus&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:monitor_name` (`t:string` required) The name of the monitor.
  * `:query_id` (`t:string` required) The ID of the query that you want to return
  the status for. A QueryId is an internally-generated dentifier for a
  specific query.
  ## Keyword parameters:
  """
  @spec get_query_status(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_query_status_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_query_status_errors()}
  def get_query_status(%Client{} = client, monitor_name, query_id, options \\ []) do
    url_path =
      "/v20210603/Monitors/#{AWS.Util.encode_uri(monitor_name)}/Queries/#{AWS.Util.encode_uri(query_id)}/Status"

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
  Lists all health events for a monitor in Amazon CloudWatch Internet Monitor.
  Returns information for health events including the event start and end times,
  and the status.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=internetmonitor%20ListHealthEvents&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:monitor_name` (`t:string` required) The name of the monitor.
  ## Keyword parameters:
  * `:end_time` (`t:string`) The time when a health event ended. If the health
  event is still ongoing, then the end time is not set.
  * `:event_status` (`t:string`) The status of a health event.
  * `:linked_account_id` (`t:string`) The account ID for an account that you've
  set up cross-account sharing for in Amazon CloudWatch Internet Monitor. You
  configure cross-account sharing by using Amazon CloudWatch Observability
  Access Manager. For more information, see Internet Monitor cross-account
  observability in the Amazon CloudWatch Internet Monitor User Guide.
  * `:max_results` (`t:integer`) The number of health event objects that you want
  to return with this call.
  * `:next_token` (`t:string`) The token for the next set of results. You receive
  this token from a previous call.
  * `:start_time` (`t:string`) The time when a health event started.
  """
  @spec list_health_events(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_health_events_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_health_events_errors()}
  def list_health_events(%Client{} = client, monitor_name, options \\ []) do
    url_path = "/v20210603/Monitors/#{AWS.Util.encode_uri(monitor_name)}/HealthEvents"

    # Validate optional parameters
    optional_params = [
      end_time: nil,
      event_status: nil,
      linked_account_id: nil,
      max_results: nil,
      next_token: nil,
      start_time: nil
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
      if opt_val = Keyword.get(options, :start_time) do
        [{"StartTime", opt_val} | query_params]
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

    query_params =
      if opt_val = Keyword.get(options, :linked_account_id) do
        [{"LinkedAccountId", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :event_status) do
        [{"EventStatus", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :end_time) do
        [{"EndTime", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :end_time,
        :event_status,
        :linked_account_id,
        :max_results,
        :next_token,
        :start_time
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists internet events that cause performance or availability issues for client
  locations. Amazon CloudWatch Internet Monitor displays information about
  recent global health events, called internet events, on a global outages map
  that is available to all Amazon Web Services customers. You can constrain the
  list of internet events returned by providing a start time and end time to
  define a total time frame for events you want to list. Both start time and end
  time specify the time when an event started. End time is optional. If you
  don't include it, the default end time is the current time.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=internetmonitor%20ListInternetEvents&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  * `:end_time` (`t:string`) The end time of the time window that you want to get
  a list of internet events for.
  * `:event_status` (`t:string`) The status of an internet event.
  * `:event_type` (`t:string`) The type of network impairment.
  * `:max_results` (`t:integer`) The number of query results that you want to
  return with this call.
  * `:next_token` (`t:string`) The token for the next set of results. You receive
  this token from a previous call.
  * `:start_time` (`t:string`) The start time of the time window that you want to
  get a list of internet events for.
  """
  @spec list_internet_events(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_internet_events_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_internet_events_errors()}
  def list_internet_events(%Client{} = client, options \\ []) do
    url_path = "/v20210603/InternetEvents"

    # Validate optional parameters
    optional_params = [
      end_time: nil,
      event_status: nil,
      event_type: nil,
      max_results: nil,
      next_token: nil,
      start_time: nil
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
      if opt_val = Keyword.get(options, :start_time) do
        [{"StartTime", opt_val} | query_params]
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
        [{"InternetEventMaxResults", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :event_type) do
        [{"EventType", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :event_status) do
        [{"EventStatus", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :end_time) do
        [{"EndTime", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :end_time,
        :event_status,
        :event_type,
        :max_results,
        :next_token,
        :start_time
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all of your monitors for Amazon CloudWatch Internet Monitor and their
  statuses, along with the Amazon Resource Name (ARN) and name of each monitor.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=internetmonitor%20ListMonitors&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  * `:include_linked_accounts` (`t:string`) A boolean option that you can set to
  TRUE to include monitors for linked accounts in a list of monitors, when
  you've set up cross-account sharing in Amazon CloudWatch Internet Monitor.
  You configure cross-account sharing by using Amazon CloudWatch Observability
  Access Manager. For more information, see Internet Monitor cross-account
  observability in the Amazon CloudWatch Internet Monitor User Guide.
  * `:max_results` (`t:integer`) The number of monitor objects that you want to
  return with this call.
  * `:monitor_status` (`t:string`) The status of a monitor. This includes the
  status of the data processing for the monitor and the status of the monitor
  itself.
  * `:next_token` (`t:string`) The token for the next set of results. You receive
  this token from a previous call.
  """
  @spec list_monitors(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_monitors_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_monitors_errors()}
  def list_monitors(%Client{} = client, options \\ []) do
    url_path = "/v20210603/Monitors"

    # Validate optional parameters
    optional_params = [
      include_linked_accounts: nil,
      max_results: nil,
      monitor_status: nil,
      next_token: nil
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
      if opt_val = Keyword.get(options, :next_token) do
        [{"NextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :monitor_status) do
        [{"MonitorStatus", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"MaxResults", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :include_linked_accounts) do
        [{"IncludeLinkedAccounts", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:include_linked_accounts, :max_results, :monitor_status, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags for a resource. Tags are supported only for monitors in Amazon
  CloudWatch Internet Monitor.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=internetmonitor%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The Amazon Resource Name (ARN) for a
  resource.
  ## Keyword parameters:
  """
  @spec list_tags_for_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_output(), any()}
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
  Start a query to return data for a specific query type for the Amazon CloudWatch
  Internet Monitor query interface. Specify a time period for the data that you
  want returned by using `StartTime` and `EndTime`. You filter the query results
  to return by providing parameters that you specify with `FilterParameters`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=internetmonitor%20StartQuery&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:monitor_name` (`t:string` required) The name of the monitor to query.
  ## Keyword parameters:
  """
  @spec start_query(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, start_query_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_query_errors()}
  def start_query(%Client{} = client, monitor_name, options \\ []) do
    url_path = "/v20210603/Monitors/#{AWS.Util.encode_uri(monitor_name)}/Queries"

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
  Stop a query that is progress for a specific monitor.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=internetmonitor%20StopQuery&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:monitor_name` (`t:string` required) The name of the monitor.
  * `:query_id` (`t:string` required) The ID of the query that you want to stop. A
  QueryId is an internally-generated identifier for a specific query.
  ## Keyword parameters:
  """
  @spec stop_query(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, stop_query_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_query_errors()}
  def stop_query(%Client{} = client, monitor_name, query_id, options \\ []) do
    url_path =
      "/v20210603/Monitors/#{AWS.Util.encode_uri(monitor_name)}/Queries/#{AWS.Util.encode_uri(query_id)}"

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
  Adds a tag to a resource. Tags are supported only for monitors in Amazon
  CloudWatch Internet Monitor. You can add a maximum of 50 tags in Internet
  Monitor.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=internetmonitor%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The Amazon Resource Name (ARN) for a tag
  that you add to a resource. Tags are supported only for monitors in Amazon
  CloudWatch Internet Monitor.
  ## Keyword parameters:
  """
  @spec tag_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, tag_resource_output(), any()}
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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 204)
  end

  @doc """
  Removes a tag from a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=internetmonitor%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The Amazon Resource Name (ARN) for a tag
  you remove a resource from.
  * `:tag_keys` (`t:list[com.amazonaws.internetmonitor#TagKey]` required) Tag keys
  that you remove from a resource.
  ## Keyword parameters:
  """
  @spec untag_resource(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, untag_resource_output(), any()}
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
      204
    )
  end

  @doc """
  Updates a monitor. You can update a monitor to change the percentage of traffic
  to monitor or the maximum number of city-networks (locations and ASNs), to add
  or remove resources, or to change the status of the monitor. Note that you
  can't change the name of a monitor.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=internetmonitor%20UpdateMonitor&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:monitor_name` (`t:string` required) The name of the monitor.
  ## Keyword parameters:
  """
  @spec update_monitor(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_monitor_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_monitor_errors()}
  def update_monitor(%Client{} = client, monitor_name, options \\ []) do
    url_path = "/v20210603/Monitors/#{AWS.Util.encode_uri(monitor_name)}"

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
