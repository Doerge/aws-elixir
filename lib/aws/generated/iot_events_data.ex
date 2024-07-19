# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoTEventsData do
  @moduledoc """
  IoT Events monitors your equipment or device fleets for failures or changes in
  operation, and triggers actions when such events occur. You can use IoT Events
  Data API commands to send inputs to detectors, list detectors, and view or
  update a detector's status.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      internal_failure_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type internal_failure_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_reset_alarm_response() :: %{
        "errorEntries" => list(batch_alarm_action_error_entry()())
      }
      
  """
  @type batch_reset_alarm_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_alarm_action_error_entry() :: %{
        "errorCode" => list(any()),
        "errorMessage" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type batch_alarm_action_error_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detector_state() :: %{
        "stateName" => String.t(),
        "timers" => list(timer()()),
        "variables" => list(variable()())
      }
      
  """
  @type detector_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_snooze_alarm_request() :: %{
        required("snoozeActionRequests") => list(snooze_alarm_action_request()())
      }
      
  """
  @type batch_snooze_alarm_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      alarm() :: %{
        "alarmModelName" => String.t(),
        "alarmModelVersion" => String.t(),
        "alarmState" => alarm_state(),
        "creationTime" => non_neg_integer(),
        "keyValue" => String.t(),
        "lastUpdateTime" => non_neg_integer(),
        "severity" => integer()
      }
      
  """
  @type alarm() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_alarms_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_alarms_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      acknowledge_action_configuration() :: %{
        "note" => String.t()
      }
      
  """
  @type acknowledge_action_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      timer() :: %{
        "name" => String.t(),
        "timestamp" => non_neg_integer()
      }
      
  """
  @type timer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_detectors_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("stateName") => String.t()
      }
      
  """
  @type list_detectors_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disable_alarm_action_request() :: %{
        "alarmModelName" => String.t(),
        "keyValue" => String.t(),
        "note" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type disable_alarm_action_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_acknowledge_alarm_response() :: %{
        "errorEntries" => list(batch_alarm_action_error_entry()())
      }
      
  """
  @type batch_acknowledge_alarm_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reset_alarm_action_request() :: %{
        "alarmModelName" => String.t(),
        "keyValue" => String.t(),
        "note" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type reset_alarm_action_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_put_message_request() :: %{
        required("messages") => list(message()())
      }
      
  """
  @type batch_put_message_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_action_configuration() :: %{
        "note" => String.t()
      }
      
  """
  @type enable_action_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_delete_detector_response() :: %{
        "batchDeleteDetectorErrorEntries" => list(batch_delete_detector_error_entry()())
      }
      
  """
  @type batch_delete_detector_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_detector_request() :: %{
        optional("keyValue") => String.t()
      }
      
  """
  @type describe_detector_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      alarm_summary() :: %{
        "alarmModelName" => String.t(),
        "alarmModelVersion" => String.t(),
        "creationTime" => non_neg_integer(),
        "keyValue" => String.t(),
        "lastUpdateTime" => non_neg_integer(),
        "stateName" => list(any())
      }
      
  """
  @type alarm_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      simple_rule_evaluation() :: %{
        "inputPropertyValue" => String.t(),
        "operator" => list(any()),
        "thresholdValue" => String.t()
      }
      
  """
  @type simple_rule_evaluation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_acknowledge_alarm_request() :: %{
        required("acknowledgeActionRequests") => list(acknowledge_alarm_action_request()())
      }
      
  """
  @type batch_acknowledge_alarm_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      acknowledge_alarm_action_request() :: %{
        "alarmModelName" => String.t(),
        "keyValue" => String.t(),
        "note" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type acknowledge_alarm_action_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detector_state_summary() :: %{
        "stateName" => String.t()
      }
      
  """
  @type detector_state_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      timer_definition() :: %{
        "name" => String.t(),
        "seconds" => integer()
      }
      
  """
  @type timer_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_request_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_update_detector_request() :: %{
        required("detectors") => list(update_detector_request()())
      }
      
  """
  @type batch_update_detector_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_snooze_alarm_response() :: %{
        "errorEntries" => list(batch_alarm_action_error_entry()())
      }
      
  """
  @type batch_snooze_alarm_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      customer_action() :: %{
        "acknowledgeActionConfiguration" => acknowledge_action_configuration(),
        "actionName" => list(any()),
        "disableActionConfiguration" => disable_action_configuration(),
        "enableActionConfiguration" => enable_action_configuration(),
        "resetActionConfiguration" => reset_action_configuration(),
        "snoozeActionConfiguration" => snooze_action_configuration()
      }
      
  """
  @type customer_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disable_action_configuration() :: %{
        "note" => String.t()
      }
      
  """
  @type disable_action_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detector_state_definition() :: %{
        "stateName" => String.t(),
        "timers" => list(timer_definition()()),
        "variables" => list(variable_definition()())
      }
      
  """
  @type detector_state_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_update_detector_error_entry() :: %{
        "errorCode" => list(any()),
        "errorMessage" => String.t(),
        "messageId" => String.t()
      }
      
  """
  @type batch_update_detector_error_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detector_summary() :: %{
        "creationTime" => non_neg_integer(),
        "detectorModelName" => String.t(),
        "detectorModelVersion" => String.t(),
        "keyValue" => String.t(),
        "lastUpdateTime" => non_neg_integer(),
        "state" => detector_state_summary()
      }
      
  """
  @type detector_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_unavailable_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      variable() :: %{
        "name" => String.t(),
        "value" => String.t()
      }
      
  """
  @type variable() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_disable_alarm_request() :: %{
        required("disableActionRequests") => list(disable_alarm_action_request()())
      }
      
  """
  @type batch_disable_alarm_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_alarms_response() :: %{
        "alarmSummaries" => list(alarm_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_alarms_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reset_action_configuration() :: %{
        "note" => String.t()
      }
      
  """
  @type reset_action_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_alarm_response() :: %{
        "alarm" => alarm()
      }
      
  """
  @type describe_alarm_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_enable_alarm_request() :: %{
        required("enableActionRequests") => list(enable_alarm_action_request()())
      }
      
  """
  @type batch_enable_alarm_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_reset_alarm_request() :: %{
        required("resetActionRequests") => list(reset_alarm_action_request()())
      }
      
  """
  @type batch_reset_alarm_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_detector_response() :: %{
        "detector" => detector()
      }
      
  """
  @type describe_detector_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_delete_detector_request() :: %{
        required("detectors") => list(delete_detector_request()())
      }
      
  """
  @type batch_delete_detector_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_detectors_response() :: %{
        "detectorSummaries" => list(detector_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_detectors_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      alarm_state() :: %{
        "customerAction" => customer_action(),
        "ruleEvaluation" => rule_evaluation(),
        "stateName" => list(any()),
        "systemEvent" => system_event()
      }
      
  """
  @type alarm_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      variable_definition() :: %{
        "name" => String.t(),
        "value" => String.t()
      }
      
  """
  @type variable_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_alarm_request() :: %{
        optional("keyValue") => String.t()
      }
      
  """
  @type describe_alarm_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      state_change_configuration() :: %{
        "triggerType" => list(any())
      }
      
  """
  @type state_change_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_put_message_error_entry() :: %{
        "errorCode" => list(any()),
        "errorMessage" => String.t(),
        "messageId" => String.t()
      }
      
  """
  @type batch_put_message_error_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snooze_action_configuration() :: %{
        "note" => String.t(),
        "snoozeDuration" => integer()
      }
      
  """
  @type snooze_action_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snooze_alarm_action_request() :: %{
        "alarmModelName" => String.t(),
        "keyValue" => String.t(),
        "note" => String.t(),
        "requestId" => String.t(),
        "snoozeDuration" => integer()
      }
      
  """
  @type snooze_alarm_action_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      system_event() :: %{
        "eventType" => list(any()),
        "stateChangeConfiguration" => state_change_configuration()
      }
      
  """
  @type system_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_update_detector_response() :: %{
        "batchUpdateDetectorErrorEntries" => list(batch_update_detector_error_entry()())
      }
      
  """
  @type batch_update_detector_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_enable_alarm_response() :: %{
        "errorEntries" => list(batch_alarm_action_error_entry()())
      }
      
  """
  @type batch_enable_alarm_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_delete_detector_error_entry() :: %{
        "errorCode" => list(any()),
        "errorMessage" => String.t(),
        "messageId" => String.t()
      }
      
  """
  @type batch_delete_detector_error_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_detector_request() :: %{
        "detectorModelName" => String.t(),
        "keyValue" => String.t(),
        "messageId" => String.t(),
        "state" => detector_state_definition()
      }
      
  """
  @type update_detector_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_put_message_response() :: %{
        "BatchPutMessageErrorEntries" => list(batch_put_message_error_entry()())
      }
      
  """
  @type batch_put_message_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rule_evaluation() :: %{
        "simpleRuleEvaluation" => simple_rule_evaluation()
      }
      
  """
  @type rule_evaluation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detector() :: %{
        "creationTime" => non_neg_integer(),
        "detectorModelName" => String.t(),
        "detectorModelVersion" => String.t(),
        "keyValue" => String.t(),
        "lastUpdateTime" => non_neg_integer(),
        "state" => detector_state()
      }
      
  """
  @type detector() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      timestamp_value() :: %{
        "timeInMillis" => float()
      }
      
  """
  @type timestamp_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_disable_alarm_response() :: %{
        "errorEntries" => list(batch_alarm_action_error_entry()())
      }
      
  """
  @type batch_disable_alarm_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      message() :: %{
        "inputName" => String.t(),
        "messageId" => String.t(),
        "payload" => binary(),
        "timestamp" => timestamp_value()
      }
      
  """
  @type message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_detector_request() :: %{
        "detectorModelName" => String.t(),
        "keyValue" => String.t(),
        "messageId" => String.t()
      }
      
  """
  @type delete_detector_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_alarm_action_request() :: %{
        "alarmModelName" => String.t(),
        "keyValue" => String.t(),
        "note" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type enable_alarm_action_request() :: %{String.t() => any()}

  @type batch_acknowledge_alarm_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type batch_delete_detector_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type batch_disable_alarm_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type batch_enable_alarm_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type batch_put_message_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type batch_reset_alarm_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type batch_snooze_alarm_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type batch_update_detector_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type describe_alarm_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_detector_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_alarms_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_detectors_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  def metadata do
    %{
      api_version: "2018-10-23",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "data.iotevents",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "IoT Events Data",
      signature_version: "v4",
      signing_name: "ioteventsdata",
      target_prefix: nil
    }
  end

  @doc """
  Acknowledges one or more alarms. The alarms change to the `ACKNOWLEDGED` state
  after you acknowledge them.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ioteventsdata%20BatchAcknowledgeAlarm&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec batch_acknowledge_alarm(AWS.Client.t(), Keyword.t()) ::
          {:ok, batch_acknowledge_alarm_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_acknowledge_alarm_errors()}

  def batch_acknowledge_alarm(%Client{} = client, options \\ []) do
    url_path = "/alarms/acknowledge"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 202)
  end

  @doc """
  Deletes one or more detectors that were created. When a detector is deleted, its
  state will be cleared and the detector will be removed from the list of
  detectors. The deleted detector will no longer appear if referenced in the
  [ListDetectors](https://docs.aws.amazon.com/iotevents/latest/apireference/API_iotevents-data_ListDetectors.html)
  API call.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ioteventsdata%20BatchDeleteDetector&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec batch_delete_detector(AWS.Client.t(), Keyword.t()) ::
          {:ok, batch_delete_detector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_delete_detector_errors()}

  def batch_delete_detector(%Client{} = client, options \\ []) do
    url_path = "/detectors/delete"

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
  Disables one or more alarms. The alarms change to the `DISABLED` state after you
  disable them.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ioteventsdata%20BatchDisableAlarm&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec batch_disable_alarm(AWS.Client.t(), Keyword.t()) ::
          {:ok, batch_disable_alarm_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_disable_alarm_errors()}

  def batch_disable_alarm(%Client{} = client, options \\ []) do
    url_path = "/alarms/disable"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 202)
  end

  @doc """
  Enables one or more alarms. The alarms change to the `NORMAL` state after you
  enable them.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ioteventsdata%20BatchEnableAlarm&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec batch_enable_alarm(AWS.Client.t(), Keyword.t()) ::
          {:ok, batch_enable_alarm_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_enable_alarm_errors()}

  def batch_enable_alarm(%Client{} = client, options \\ []) do
    url_path = "/alarms/enable"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 202)
  end

  @doc """
  Sends a set of messages to the IoT Events system. Each message payload is
  transformed into the input you specify (`"inputName"`) and ingested into any
  detectors that monitor that input. If multiple messages are sent, the order in
  which the messages are processed isn't guaranteed. To guarantee ordering, you
  must send messages one at a time and wait for a successful response.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ioteventsdata%20BatchPutMessage&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec batch_put_message(AWS.Client.t(), Keyword.t()) ::
          {:ok, batch_put_message_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_put_message_errors()}

  def batch_put_message(%Client{} = client, options \\ []) do
    url_path = "/inputs/messages"

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
  Resets one or more alarms. The alarms return to the `NORMAL` state after you
  reset them.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ioteventsdata%20BatchResetAlarm&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec batch_reset_alarm(AWS.Client.t(), Keyword.t()) ::
          {:ok, batch_reset_alarm_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_reset_alarm_errors()}

  def batch_reset_alarm(%Client{} = client, options \\ []) do
    url_path = "/alarms/reset"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 202)
  end

  @doc """
  Changes one or more alarms to the snooze mode. The alarms change to the
  `SNOOZE_DISABLED` state after you set them to the snooze mode.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ioteventsdata%20BatchSnoozeAlarm&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec batch_snooze_alarm(AWS.Client.t(), Keyword.t()) ::
          {:ok, batch_snooze_alarm_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_snooze_alarm_errors()}

  def batch_snooze_alarm(%Client{} = client, options \\ []) do
    url_path = "/alarms/snooze"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 202)
  end

  @doc """
  Updates the state, variable values, and timer settings of one or more detectors
  (instances) of a specified detector model.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ioteventsdata%20BatchUpdateDetector&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec batch_update_detector(AWS.Client.t(), Keyword.t()) ::
          {:ok, batch_update_detector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_update_detector_errors()}

  def batch_update_detector(%Client{} = client, options \\ []) do
    url_path = "/detectors"

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
  Retrieves information about an alarm.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ioteventsdata%20DescribeAlarm&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:alarm_model_name` (`t:string`) The name of the alarm model.

  ## Optional parameters:
  * `:key_value` (`t:string`) The value of the key used as a filter to select only
  the alarms associated with the key.
  """

  @spec describe_alarm(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_alarm_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_alarm_errors()}

  def describe_alarm(%Client{} = client, alarm_model_name, options \\ []) do
    url_path = "/alarms/#{AWS.Util.encode_uri(alarm_model_name)}/keyValues"

    # Validate optional parameters
    optional_params = [key_value: nil]

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
      if opt_val = Keyword.get(options, :key_value) do
        [{"keyValue", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:key_value])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about the specified detector (instance).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ioteventsdata%20DescribeDetector&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:detector_model_name` (`t:string`) The name of the detector model whose
  detectors (instances) you want information about.

  ## Optional parameters:
  * `:key_value` (`t:string`) A filter used to limit results to detectors
  (instances) created because of the given key ID.
  """

  @spec describe_detector(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_detector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_detector_errors()}

  def describe_detector(%Client{} = client, detector_model_name, options \\ []) do
    url_path = "/detectors/#{AWS.Util.encode_uri(detector_model_name)}/keyValues"

    # Validate optional parameters
    optional_params = [key_value: nil]

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
      if opt_val = Keyword.get(options, :key_value) do
        [{"keyValue", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:key_value])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists one or more alarms. The operation returns only the metadata associated
  with each alarm.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ioteventsdata%20ListAlarms&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:alarm_model_name` (`t:string`) The name of the alarm model.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to be returned per
  request.
  * `:next_token` (`t:string`) The token that you can use to return the next set
  of results.
  """

  @spec list_alarms(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_alarms_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_alarms_errors()}

  def list_alarms(%Client{} = client, alarm_model_name, options \\ []) do
    url_path = "/alarms/#{AWS.Util.encode_uri(alarm_model_name)}"

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
  Lists detectors (the instances of a detector model).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ioteventsdata%20ListDetectors&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:detector_model_name` (`t:string`) The name of the detector model whose
  detectors (instances) are listed.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to be returned per
  request.
  * `:next_token` (`t:string`) The token that you can use to return the next set
  of results.
  * `:state_name` (`t:string`) A filter that limits results to those detectors
  (instances) in the given state.
  """

  @spec list_detectors(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_detectors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_detectors_errors()}

  def list_detectors(%Client{} = client, detector_model_name, options \\ []) do
    url_path = "/detectors/#{AWS.Util.encode_uri(detector_model_name)}"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, state_name: nil]

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
      if opt_val = Keyword.get(options, :state_name) do
        [{"stateName", opt_val} | query_params]
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
      |> Keyword.drop([:max_results, :next_token, :state_name])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end
end
