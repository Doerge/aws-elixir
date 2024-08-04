# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoTDataPlane do
  @moduledoc """
  IoT data IoT data enables secure, bi-directional communication between
  Internet-connected things (such as sensors, actuators, embedded devices, or
  smart appliances) and the Amazon Web Services cloud. It implements a broker
  for applications and things to publish messages over HTTP (Publish) and
  retrieve, update, and delete shadows. A shadow is a persistent representation
  of your things and their state in the Amazon Web Services cloud.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_thing_shadow_request() :: %{
        optional("shadowName") => String.t()
      }
      
  """
  @type delete_thing_shadow_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_thing_shadow_response() :: %{
        "payload" => binary()
      }
      
  """
  @type delete_thing_shadow_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_retained_message_request() :: %{}
      
  """
  @type get_retained_message_request() :: %{}

  @typedoc """

  ## Example:
      
      get_retained_message_response() :: %{
        "lastModifiedTime" => float(),
        "payload" => binary(),
        "qos" => integer(),
        "topic" => String.t(),
        "userProperties" => binary()
      }
      
  """
  @type get_retained_message_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_thing_shadow_request() :: %{
        optional("shadowName") => String.t()
      }
      
  """
  @type get_thing_shadow_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_thing_shadow_response() :: %{
        "payload" => binary()
      }
      
  """
  @type get_thing_shadow_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_failure_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type internal_failure_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_request_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_named_shadows_for_thing_request() :: %{
        optional("nextToken") => String.t(),
        optional("pageSize") => integer()
      }
      
  """
  @type list_named_shadows_for_thing_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_named_shadows_for_thing_response() :: %{
        "nextToken" => String.t(),
        "results" => list(String.t()()),
        "timestamp" => float()
      }
      
  """
  @type list_named_shadows_for_thing_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_retained_messages_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_retained_messages_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_retained_messages_response() :: %{
        "nextToken" => String.t(),
        "retainedTopics" => list(retained_message_summary()())
      }
      
  """
  @type list_retained_messages_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      method_not_allowed_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type method_not_allowed_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      publish_request() :: %{
        optional("contentType") => String.t(),
        optional("correlationData") => String.t(),
        optional("messageExpiry") => float(),
        optional("payload") => binary(),
        optional("payloadFormatIndicator") => list(any()),
        optional("qos") => integer(),
        optional("responseTopic") => String.t(),
        optional("retain") => boolean(),
        optional("userProperties") => String.t()
      }
      
  """
  @type publish_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      request_entity_too_large_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type request_entity_too_large_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      retained_message_summary() :: %{
        "lastModifiedTime" => float(),
        "payloadSize" => float(),
        "qos" => integer(),
        "topic" => String.t()
      }
      
  """
  @type retained_message_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_unavailable_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unauthorized_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type unauthorized_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_document_encoding_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type unsupported_document_encoding_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_thing_shadow_request() :: %{
        optional("shadowName") => String.t(),
        required("payload") => binary()
      }
      
  """
  @type update_thing_shadow_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_thing_shadow_response() :: %{
        "payload" => binary()
      }
      
  """
  @type update_thing_shadow_response() :: %{String.t() => any()}

  @type delete_thing_shadow_errors() ::
          unsupported_document_encoding_exception()
          | unauthorized_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | method_not_allowed_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type get_retained_message_errors() ::
          unauthorized_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | method_not_allowed_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type get_thing_shadow_errors() ::
          unsupported_document_encoding_exception()
          | unauthorized_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | method_not_allowed_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type list_named_shadows_for_thing_errors() ::
          unauthorized_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | method_not_allowed_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type list_retained_messages_errors() ::
          unauthorized_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | method_not_allowed_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type publish_errors() ::
          unauthorized_exception()
          | throttling_exception()
          | method_not_allowed_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type update_thing_shadow_errors() ::
          unsupported_document_encoding_exception()
          | unauthorized_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | request_entity_too_large_exception()
          | method_not_allowed_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2015-05-28",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "data-ats.iot",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "IoT Data Plane",
      signature_version: "v4",
      signing_name: "iotdata",
      target_prefix: nil
    }
  end

  @doc """
  Deletes the shadow for the specified thing.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotdataplane%20DeleteThingShadow&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:thing_name` (`t:string` required) The name of the thing.

  ## Keyword parameters:
  * `:shadow_name` (`t:string`) The name of the shadow.
  """
  @spec delete_thing_shadow(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_thing_shadow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_thing_shadow_errors()}
  def delete_thing_shadow(%Client{} = client, thing_name, options \\ []) do
    url_path = "/things/#{AWS.Util.encode_uri(thing_name)}/shadow"

    # Validate optional parameters
    optional_params = [shadow_name: nil]

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
      if opt_val = Keyword.get(options, :shadow_name) do
        [{"name", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:shadow_name])

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
  Gets the details of a single retained message for the specified topic. This
  action returns the message payload of the retained message, which can incur
  messaging costs. To list only the topic names of the retained messages, call
  [ListRetainedMessages](https://docs.aws.amazon.com/iot/latest/apireference/API_iotdata_ListRetainedMessages.html).
  Requires permission to access the
  [GetRetainedMessage](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiotfleethubfordevicemanagement.html#awsiotfleethubfordevicemanagement-actions-as-permissions)
  action.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotdataplane%20GetRetainedMessage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:topic` (`t:string` required) The topic name of the retained message to
    retrieve.
  """
  @spec get_retained_message(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_retained_message_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_retained_message_errors()}
  def get_retained_message(%Client{} = client, topic, options \\ []) do
    url_path = "/retainedMessage/#{AWS.Util.encode_uri(topic)}"

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
  Gets the shadow for the specified thing.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotdataplane%20GetThingShadow&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:thing_name` (`t:string` required) The name of the thing.

  ## Keyword parameters:
  * `:shadow_name` (`t:string`) The name of the shadow.
  """
  @spec get_thing_shadow(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_thing_shadow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_thing_shadow_errors()}
  def get_thing_shadow(%Client{} = client, thing_name, options \\ []) do
    url_path = "/things/#{AWS.Util.encode_uri(thing_name)}/shadow"

    # Validate optional parameters
    optional_params = [shadow_name: nil]

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
      if opt_val = Keyword.get(options, :shadow_name) do
        [{"name", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:shadow_name])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the shadows for the specified thing.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotdataplane%20ListNamedShadowsForThing&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:thing_name` (`t:string` required) The name of the thing.

  ## Keyword parameters:
  * `:next_token` (`t:string`) The token to retrieve the next set of results.
  * `:page_size` (`t:integer`) The result page size.
  """
  @spec list_named_shadows_for_thing(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_named_shadows_for_thing_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_named_shadows_for_thing_errors()}
  def list_named_shadows_for_thing(%Client{} = client, thing_name, options \\ []) do
    url_path = "/api/things/shadow/ListNamedShadowsForThing/#{AWS.Util.encode_uri(thing_name)}"

    # Validate optional parameters
    optional_params = [next_token: nil, page_size: nil]

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
      if opt_val = Keyword.get(options, :page_size) do
        [{"pageSize", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:next_token, :page_size])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists summary information about the retained messages stored for the account.
  This action returns only the topic names of the retained messages. It doesn't
  return any message payloads. Although this action doesn't return a message
  payload, it can still incur messaging costs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotdataplane%20ListRetainedMessages&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return at one
    time.
  * `:next_token` (`t:string`) To retrieve the next set of results, the nextToken
    value from a previous response; otherwise null to receive the first set of
    results.
  """
  @spec list_retained_messages(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_retained_messages_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_retained_messages_errors()}
  def list_retained_messages(%Client{} = client, options \\ []) do
    url_path = "/retainedMessage"

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
  Publishes an MQTT message. Requires permission to access the
  [Publish](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action. For more information about MQTT messages, see [MQTT
  Protocol](http://docs.aws.amazon.com/iot/latest/developerguide/mqtt.html) in
  the IoT Developer Guide.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotdataplane%20Publish&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:topic` (`t:string` required) The name of the MQTT topic.
  * `:input` (`t:map | nil`):
    * `"payload" => t:blob` The message body. MQTT accepts text, binary, and empty
    (null) message payloads.

  ## Keyword parameters:
  * `:content_type` (`t:string`) A UTF-8 encoded string that describes the content
    of the publishing message.
  * `:message_expiry` (`t:long`) A user-defined integer value that represents the
    message expiry interval in seconds. If absent, the message doesn't expire.
    For more information about the limits of messageExpiry, see Amazon Web
    Services IoT Core message broker and protocol limits and quotas from the
    Amazon Web Services Reference Guide.
  * `:qos` (`t:integer`) The Quality of Service (QoS) level. The default QoS level
    is 0.
  * `:response_topic` (`t:string`) A UTF-8 encoded string that's used as the topic
    name for a response message. The response topic is used to describe the
    topic which the receiver should publish to as part of the request-response
    flow. The topic must not contain wildcard characters.
  * `:retain` (`t:boolean`) A Boolean value that determines whether to set the
    RETAIN flag when the message is published.
  * `:correlation_data` (`t:string`) The base64-encoded binary data used by the
    sender of the request message to identify which request the response message
    is for when it's received. correlationData is an HTTP header value in the
    API.
  * `:payload_format_indicator` (`t:enum["UNSPECIFIED_BYTES|UTF8_DATA"]`) An Enum
    string value that indicates whether the payload is formatted as UTF-8.
    payloadFormatIndicator is an HTTP header value in the API.
  * `:user_properties` (`t:string`) A JSON string that contains an array of JSON
    objects. If you don’t use Amazon Web Services SDK or CLI, you must encode
    the JSON string to base64 format before adding it to the HTTP header.
    userProperties is an HTTP header value in the API.
  """
  @spec publish(AWS.Client.t(), String.t(), input :: map() | nil, Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, publish_errors()}
  def publish(%Client{} = client, topic, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path = "/topics/#{AWS.Util.encode_uri(topic)}"

    # Validate optional parameters
    optional_params = [
      content_type: nil,
      message_expiry: nil,
      qos: nil,
      response_topic: nil,
      retain: nil,
      correlation_data: nil,
      payload_format_indicator: nil,
      user_properties: nil
    ]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :user_properties) do
        [{"x-amz-mqtt5-user-properties", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :payload_format_indicator) do
        [{"x-amz-mqtt5-payload-format-indicator", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :correlation_data) do
        [{"x-amz-mqtt5-correlation-data", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :retain) do
        [{"retain", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :response_topic) do
        [{"responseTopic", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :qos) do
        [{"qos", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :message_expiry) do
        [{"messageExpiry", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :content_type) do
        [{"contentType", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :content_type,
        :message_expiry,
        :qos,
        :response_topic,
        :retain,
        :correlation_data,
        :payload_format_indicator,
        :user_properties
      ])

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates the shadow for the specified thing.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotdataplane%20UpdateThingShadow&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:thing_name` (`t:string` required) The name of the thing.
  * `:input` (`t:map`):
    * `"payload" => t:blob` (required) The state information, in JSON format.

  ## Keyword parameters:
  * `:shadow_name` (`t:string`) The name of the shadow.
  """
  @spec update_thing_shadow(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, update_thing_shadow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_thing_shadow_errors()}
  def update_thing_shadow(%Client{} = client, thing_name, input, options \\ [])
      when is_map(input) do
    url_path = "/things/#{AWS.Util.encode_uri(thing_name)}/shadow"

    # Validate optional parameters
    optional_params = [shadow_name: nil]

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
      if opt_val = Keyword.get(options, :shadow_name) do
        [{"name", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:shadow_name])

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end
end
