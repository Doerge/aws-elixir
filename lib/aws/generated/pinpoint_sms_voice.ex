# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.PinpointSMSVoice do
  @moduledoc """
  Pinpoint SMS and Voice Messaging public facing APIs
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      already_exists_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bad_request_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      call_instructions_message_type() :: %{
        "Text" => String.t()
      }
      
  """
  @type call_instructions_message_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_watch_logs_destination() :: %{
        "IamRoleArn" => String.t(),
        "LogGroupArn" => String.t()
      }
      
  """
  @type cloud_watch_logs_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_configuration_set_event_destination_request() :: %{
        optional("EventDestination") => event_destination_definition(),
        optional("EventDestinationName") => String.t()
      }
      
  """
  @type create_configuration_set_event_destination_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_configuration_set_event_destination_response() :: %{}
      
  """
  @type create_configuration_set_event_destination_response() :: %{}

  @typedoc """

  ## Example:
      
      create_configuration_set_request() :: %{
        optional("ConfigurationSetName") => String.t()
      }
      
  """
  @type create_configuration_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_configuration_set_response() :: %{}
      
  """
  @type create_configuration_set_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_configuration_set_event_destination_request() :: %{}
      
  """
  @type delete_configuration_set_event_destination_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_configuration_set_event_destination_response() :: %{}
      
  """
  @type delete_configuration_set_event_destination_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_configuration_set_request() :: %{}
      
  """
  @type delete_configuration_set_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_configuration_set_response() :: %{}
      
  """
  @type delete_configuration_set_response() :: %{}

  @typedoc """

  ## Example:
      
      event_destination() :: %{
        "CloudWatchLogsDestination" => cloud_watch_logs_destination(),
        "Enabled" => boolean(),
        "KinesisFirehoseDestination" => kinesis_firehose_destination(),
        "MatchingEventTypes" => list(list(any())()),
        "Name" => String.t(),
        "SnsDestination" => sns_destination()
      }
      
  """
  @type event_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_destination_definition() :: %{
        "CloudWatchLogsDestination" => cloud_watch_logs_destination(),
        "Enabled" => boolean(),
        "KinesisFirehoseDestination" => kinesis_firehose_destination(),
        "MatchingEventTypes" => list(list(any())()),
        "SnsDestination" => sns_destination()
      }
      
  """
  @type event_destination_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_configuration_set_event_destinations_request() :: %{}
      
  """
  @type get_configuration_set_event_destinations_request() :: %{}

  @typedoc """

  ## Example:
      
      get_configuration_set_event_destinations_response() :: %{
        "EventDestinations" => list(event_destination()())
      }
      
  """
  @type get_configuration_set_event_destinations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_service_error_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_service_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kinesis_firehose_destination() :: %{
        "DeliveryStreamArn" => String.t(),
        "IamRoleArn" => String.t()
      }
      
  """
  @type kinesis_firehose_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_configuration_sets_request() :: %{
        optional("NextToken") => String.t(),
        optional("PageSize") => String.t()
      }
      
  """
  @type list_configuration_sets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_configuration_sets_response() :: %{
        "ConfigurationSets" => list(String.t()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_configuration_sets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      plain_text_message_type() :: %{
        "LanguageCode" => String.t(),
        "Text" => String.t(),
        "VoiceId" => String.t()
      }
      
  """
  @type plain_text_message_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s_s_ml_message_type() :: %{
        "LanguageCode" => String.t(),
        "Text" => String.t(),
        "VoiceId" => String.t()
      }
      
  """
  @type s_s_ml_message_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_voice_message_request() :: %{
        optional("CallerId") => String.t(),
        optional("ConfigurationSetName") => String.t(),
        optional("Content") => voice_message_content(),
        optional("DestinationPhoneNumber") => String.t(),
        optional("OriginationPhoneNumber") => String.t()
      }
      
  """
  @type send_voice_message_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_voice_message_response() :: %{
        "MessageId" => String.t()
      }
      
  """
  @type send_voice_message_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sns_destination() :: %{
        "TopicArn" => String.t()
      }
      
  """
  @type sns_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_requests_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_configuration_set_event_destination_request() :: %{
        optional("EventDestination") => event_destination_definition()
      }
      
  """
  @type update_configuration_set_event_destination_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_configuration_set_event_destination_response() :: %{}
      
  """
  @type update_configuration_set_event_destination_response() :: %{}

  @typedoc """

  ## Example:
      
      voice_message_content() :: %{
        "CallInstructionsMessage" => call_instructions_message_type(),
        "PlainTextMessage" => plain_text_message_type(),
        "SSMLMessage" => s_s_ml_message_type()
      }
      
  """
  @type voice_message_content() :: %{String.t() => any()}

  @type create_configuration_set_errors() ::
          too_many_requests_exception()
          | limit_exceeded_exception()
          | internal_service_error_exception()
          | bad_request_exception()
          | already_exists_exception()

  @type create_configuration_set_event_destination_errors() ::
          too_many_requests_exception()
          | not_found_exception()
          | limit_exceeded_exception()
          | internal_service_error_exception()
          | bad_request_exception()
          | already_exists_exception()

  @type delete_configuration_set_errors() ::
          too_many_requests_exception()
          | not_found_exception()
          | internal_service_error_exception()
          | bad_request_exception()

  @type delete_configuration_set_event_destination_errors() ::
          too_many_requests_exception()
          | not_found_exception()
          | internal_service_error_exception()
          | bad_request_exception()

  @type get_configuration_set_event_destinations_errors() ::
          too_many_requests_exception()
          | not_found_exception()
          | internal_service_error_exception()
          | bad_request_exception()

  @type list_configuration_sets_errors() ::
          too_many_requests_exception()
          | internal_service_error_exception()
          | bad_request_exception()

  @type send_voice_message_errors() ::
          too_many_requests_exception()
          | internal_service_error_exception()
          | bad_request_exception()

  @type update_configuration_set_event_destination_errors() ::
          too_many_requests_exception()
          | not_found_exception()
          | internal_service_error_exception()
          | bad_request_exception()

  def metadata do
    %{
      api_version: "2018-09-05",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "sms-voice.pinpoint",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Pinpoint SMS Voice",
      signature_version: "v4",
      signing_name: "sms-voice",
      target_prefix: nil
    }
  end

  @doc """
  Create a new configuration set. After you create the configuration set, you can
  add one or more event destinations to it.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoice%20CreateConfigurationSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_configuration_set(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_configuration_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_configuration_set_errors()}
  def create_configuration_set(%Client{} = client, options \\ []) do
    url_path = "/v1/sms-voice/configuration-sets"

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
  Create a new event destination in a configuration set.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoice%20CreateConfigurationSetEventDestination&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:configuration_set_name` (`t:string` required)
  ## Keyword parameters:
  """
  @spec create_configuration_set_event_destination(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_configuration_set_event_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_configuration_set_event_destination_errors()}
  def create_configuration_set_event_destination(
        %Client{} = client,
        configuration_set_name,
        options \\ []
      ) do
    url_path =
      "/v1/sms-voice/configuration-sets/#{AWS.Util.encode_uri(configuration_set_name)}/event-destinations"

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
  Deletes an existing configuration set.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoice%20DeleteConfigurationSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:configuration_set_name` (`t:string` required)
  ## Keyword parameters:
  """
  @spec delete_configuration_set(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_configuration_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_configuration_set_errors()}
  def delete_configuration_set(%Client{} = client, configuration_set_name, options \\ []) do
    url_path = "/v1/sms-voice/configuration-sets/#{AWS.Util.encode_uri(configuration_set_name)}"

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
  Deletes an event destination in a configuration set.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoice%20DeleteConfigurationSetEventDestination&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:configuration_set_name` (`t:string` required)
  * `:event_destination_name` (`t:string` required)
  ## Keyword parameters:
  """
  @spec delete_configuration_set_event_destination(
          AWS.Client.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, delete_configuration_set_event_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_configuration_set_event_destination_errors()}
  def delete_configuration_set_event_destination(
        %Client{} = client,
        configuration_set_name,
        event_destination_name,
        options \\ []
      ) do
    url_path =
      "/v1/sms-voice/configuration-sets/#{AWS.Util.encode_uri(configuration_set_name)}/event-destinations/#{AWS.Util.encode_uri(event_destination_name)}"

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
  Obtain information about an event destination, including the types of events it
  reports, the Amazon Resource Name (ARN) of the destination, and the name of
  the event destination.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoice%20GetConfigurationSetEventDestinations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:configuration_set_name` (`t:string` required)
  ## Keyword parameters:
  """
  @spec get_configuration_set_event_destinations(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_configuration_set_event_destinations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_configuration_set_event_destinations_errors()}
  def get_configuration_set_event_destinations(
        %Client{} = client,
        configuration_set_name,
        options \\ []
      ) do
    url_path =
      "/v1/sms-voice/configuration-sets/#{AWS.Util.encode_uri(configuration_set_name)}/event-destinations"

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
  List all of the configuration sets associated with your Amazon Pinpoint account
  in the current region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoice%20ListConfigurationSets&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  * `:next_token` (`t:string`)
  * `:page_size` (`t:string`)
  """
  @spec list_configuration_sets(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_configuration_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_configuration_sets_errors()}
  def list_configuration_sets(%Client{} = client, options \\ []) do
    url_path = "/v1/sms-voice/configuration-sets"

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
        [{"PageSize", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"NextToken", opt_val} | query_params]
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
  Create a new voice message and send it to a recipient's phone number.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoice%20SendVoiceMessage&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec send_voice_message(AWS.Client.t(), Keyword.t()) ::
          {:ok, send_voice_message_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_voice_message_errors()}
  def send_voice_message(%Client{} = client, options \\ []) do
    url_path = "/v1/sms-voice/voice/message"

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
  Update an event destination in a configuration set. An event destination is a
  location that you publish information about your voice calls to. For example,
  you can log an event to an Amazon CloudWatch destination when a call fails.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoice%20UpdateConfigurationSetEventDestination&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:configuration_set_name` (`t:string` required)
  * `:event_destination_name` (`t:string` required)
  ## Keyword parameters:
  """
  @spec update_configuration_set_event_destination(
          AWS.Client.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, update_configuration_set_event_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_configuration_set_event_destination_errors()}
  def update_configuration_set_event_destination(
        %Client{} = client,
        configuration_set_name,
        event_destination_name,
        options \\ []
      ) do
    url_path =
      "/v1/sms-voice/configuration-sets/#{AWS.Util.encode_uri(configuration_set_name)}/event-destinations/#{AWS.Util.encode_uri(event_destination_name)}"

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

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end
end
