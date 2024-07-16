# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Ivschat do
  @moduledoc """
  **Introduction** The Amazon IVS Chat control-plane API enables you to create and
  manage Amazon IVS Chat resources. You also need to integrate with the [ Amazon
  IVS Chat Messaging
  API](https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/chat-messaging-api.html),
  to enable users to interact with chat rooms in real time. The API is an AWS
  regional service. For a list of supported regions and Amazon IVS Chat HTTPS
  service endpoints, see the Amazon IVS Chat information on the [Amazon IVS
  page](https://docs.aws.amazon.com/general/latest/gr/ivs.html) in the *AWS
  General Reference*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_room_request() :: %{
        required("identifier") => String.t()
      }

  """
  @type delete_room_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_message_response() :: %{
        optional("id") => String.t()
      }

  """
  @type delete_message_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_rooms_response() :: %{
        optional("nextToken") => String.t(),
        required("rooms") => list(room_summary()())
      }

  """
  @type list_rooms_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      disconnect_user_response() :: %{}

  """
  @type disconnect_user_response() :: %{}

  @typedoc """

  ## Example:

      create_chat_token_request() :: %{
        optional("attributes") => map(),
        optional("capabilities") => list(String.t()()),
        optional("sessionDurationInMinutes") => integer(),
        required("roomIdentifier") => String.t(),
        required("userId") => String.t()
      }

  """
  @type create_chat_token_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_message_request() :: %{
        optional("reason") => String.t(),
        required("id") => String.t(),
        required("roomIdentifier") => String.t()
      }

  """
  @type delete_message_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disconnect_user_request() :: %{
        optional("reason") => String.t(),
        required("roomIdentifier") => String.t(),
        required("userId") => String.t()
      }

  """
  @type disconnect_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_logging_configuration_request() :: %{
        optional("destinationConfiguration") => list(),
        optional("name") => String.t(),
        required("identifier") => String.t()
      }

  """
  @type update_logging_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_room_response() :: %{
        optional("arn") => String.t(),
        optional("createTime") => non_neg_integer(),
        optional("id") => String.t(),
        optional("loggingConfigurationIdentifiers") => list(String.t()()),
        optional("maximumMessageLength") => integer(),
        optional("maximumMessageRatePerSecond") => integer(),
        optional("messageReviewHandler") => message_review_handler(),
        optional("name") => String.t(),
        optional("tags") => map(),
        optional("updateTime") => non_neg_integer()
      }

  """
  @type update_room_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_logging_configuration_request() :: %{
        optional("name") => String.t(),
        optional("tags") => map(),
        required("destinationConfiguration") => list()
      }

  """
  @type create_logging_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      send_event_request() :: %{
        optional("attributes") => map(),
        required("eventName") => String.t(),
        required("roomIdentifier") => String.t()
      }

  """
  @type send_event_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t(),
        "resourceId" => String.t(),
        "resourceType" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_logging_configuration_response() :: %{
        optional("arn") => String.t(),
        optional("createTime") => non_neg_integer(),
        optional("destinationConfiguration") => list(),
        optional("id") => String.t(),
        optional("name") => String.t(),
        optional("state") => String.t(),
        optional("tags") => map(),
        optional("updateTime") => non_neg_integer()
      }

  """
  @type create_logging_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t(),
        "resourceId" => String.t(),
        "resourceType" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      send_event_response() :: %{
        optional("id") => String.t()
      }

  """
  @type send_event_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "limit" => integer(),
        "message" => String.t(),
        "resourceId" => String.t(),
        "resourceType" => String.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_logging_configuration_response() :: %{
        optional("arn") => String.t(),
        optional("createTime") => non_neg_integer(),
        optional("destinationConfiguration") => list(),
        optional("id") => String.t(),
        optional("name") => String.t(),
        optional("state") => String.t(),
        optional("tags") => map(),
        optional("updateTime") => non_neg_integer()
      }

  """
  @type get_logging_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_destination_configuration() :: %{
        "bucketName" => String.t()
      }

  """
  @type s3_destination_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        required("tags") => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_chat_token_response() :: %{
        optional("sessionExpirationTime") => non_neg_integer(),
        optional("token") => String.t(),
        optional("tokenExpirationTime") => non_neg_integer()
      }

  """
  @type create_chat_token_response() :: %{String.t() => any()}

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

      get_logging_configuration_request() :: %{
        required("identifier") => String.t()
      }

  """
  @type get_logging_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_room_request() :: %{
        required("identifier") => String.t()
      }

  """
  @type get_room_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_logging_configurations_response() :: %{
        optional("nextToken") => String.t(),
        required("loggingConfigurations") => list(logging_configuration_summary()())
      }

  """
  @type list_logging_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_room_response() :: %{
        optional("arn") => String.t(),
        optional("createTime") => non_neg_integer(),
        optional("id") => String.t(),
        optional("loggingConfigurationIdentifiers") => list(String.t()()),
        optional("maximumMessageLength") => integer(),
        optional("maximumMessageRatePerSecond") => integer(),
        optional("messageReviewHandler") => message_review_handler(),
        optional("name") => String.t(),
        optional("tags") => map(),
        optional("updateTime") => non_neg_integer()
      }

  """
  @type get_room_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()()),
        "message" => String.t(),
        "reason" => String.t()
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

      create_room_request() :: %{
        optional("loggingConfigurationIdentifiers") => list(String.t()()),
        optional("maximumMessageLength") => integer(),
        optional("maximumMessageRatePerSecond") => integer(),
        optional("messageReviewHandler") => message_review_handler(),
        optional("name") => String.t(),
        optional("tags") => map()
      }

  """
  @type create_room_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "limit" => integer(),
        "message" => String.t(),
        "resourceId" => String.t(),
        "resourceType" => String.t()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_rooms_request() :: %{
        optional("loggingConfigurationIdentifier") => String.t(),
        optional("maxResults") => integer(),
        optional("messageReviewHandlerUri") => String.t(),
        optional("name") => String.t(),
        optional("nextToken") => String.t()
      }

  """
  @type list_rooms_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_logging_configurations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_logging_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cloud_watch_logs_destination_configuration() :: %{
        "logGroupName" => String.t()
      }

  """
  @type cloud_watch_logs_destination_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      firehose_destination_configuration() :: %{
        "deliveryStreamName" => String.t()
      }

  """
  @type firehose_destination_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_logging_configuration_request() :: %{
        required("identifier") => String.t()
      }

  """
  @type delete_logging_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      room_summary() :: %{
        "arn" => String.t(),
        "createTime" => non_neg_integer(),
        "id" => String.t(),
        "loggingConfigurationIdentifiers" => list(String.t()()),
        "messageReviewHandler" => message_review_handler(),
        "name" => String.t(),
        "tags" => map(),
        "updateTime" => non_neg_integer()
      }

  """
  @type room_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_logging_configuration_response() :: %{
        optional("arn") => String.t(),
        optional("createTime") => non_neg_integer(),
        optional("destinationConfiguration") => list(),
        optional("id") => String.t(),
        optional("name") => String.t(),
        optional("state") => String.t(),
        optional("tags") => map(),
        optional("updateTime") => non_neg_integer()
      }

  """
  @type update_logging_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      logging_configuration_summary() :: %{
        "arn" => String.t(),
        "createTime" => non_neg_integer(),
        "destinationConfiguration" => list(),
        "id" => String.t(),
        "name" => String.t(),
        "state" => String.t(),
        "tags" => map(),
        "updateTime" => non_neg_integer()
      }

  """
  @type logging_configuration_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_room_request() :: %{
        optional("loggingConfigurationIdentifiers") => list(String.t()()),
        optional("maximumMessageLength") => integer(),
        optional("maximumMessageRatePerSecond") => integer(),
        optional("messageReviewHandler") => message_review_handler(),
        optional("name") => String.t(),
        required("identifier") => String.t()
      }

  """
  @type update_room_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_room_response() :: %{
        optional("arn") => String.t(),
        optional("createTime") => non_neg_integer(),
        optional("id") => String.t(),
        optional("loggingConfigurationIdentifiers") => list(String.t()()),
        optional("maximumMessageLength") => integer(),
        optional("maximumMessageRatePerSecond") => integer(),
        optional("messageReviewHandler") => message_review_handler(),
        optional("name") => String.t(),
        optional("tags") => map(),
        optional("updateTime") => non_neg_integer()
      }

  """
  @type create_room_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pending_verification() :: %{
        "message" => String.t()
      }

  """
  @type pending_verification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      message_review_handler() :: %{
        "fallbackResult" => String.t(),
        "uri" => String.t()
      }

  """
  @type message_review_handler() :: %{String.t() => any()}

  @type create_chat_token_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type create_logging_configuration_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_room_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_logging_configuration_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_message_errors() ::
          pending_verification()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type delete_room_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type disconnect_user_errors() ::
          pending_verification()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_logging_configuration_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type get_room_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type list_logging_configurations_errors() :: validation_exception() | access_denied_exception()

  @type list_rooms_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type send_event_errors() ::
          pending_verification()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type untag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type update_logging_configuration_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_room_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2020-07-14",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "ivschat",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "ivschat",
      signature_version: "v4",
      signing_name: "ivschat",
      target_prefix: nil
    }
  end

  @doc """
  Creates an encrypted token that is used by a chat participant to establish an
  individual WebSocket chat connection to a room. When the token is used to
  connect to chat, the connection is valid for the session duration specified in
  the request. The token becomes invalid at the token-expiration timestamp
  included in the response. Use the `capabilities` field to permit an end user
  to send messages or moderate a room.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivschat%20CreateChatToken&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_chat_token(AWS.Client.t(), create_chat_token_request(), Keyword.t()) ::
          {:ok, create_chat_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_chat_token_errors()}
  def create_chat_token(%Client{} = client, input, options \\ []) do
    url_path = "/CreateChatToken"
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
  Creates a logging configuration that allows clients to store and record sent
  messages.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivschat%20CreateLoggingConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_logging_configuration(
          AWS.Client.t(),
          create_logging_configuration_request(),
          Keyword.t()
        ) ::
          {:ok, create_logging_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_logging_configuration_errors()}
  def create_logging_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/CreateLoggingConfiguration"
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
  Creates a room that allows clients to connect and pass messages.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivschat%20CreateRoom&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_room(AWS.Client.t(), create_room_request(), Keyword.t()) ::
          {:ok, create_room_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_room_errors()}
  def create_room(%Client{} = client, input, options \\ []) do
    url_path = "/CreateRoom"
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
  Deletes the specified logging configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivschat%20DeleteLoggingConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec delete_logging_configuration(
          AWS.Client.t(),
          delete_logging_configuration_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_logging_configuration_errors()}
  def delete_logging_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteLoggingConfiguration"
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
      204
    )
  end

  @doc """
  Sends an event to a specific room which directs clients to delete a specific
  message; that is, unrender it from view and delete it from the client’s chat
  history. This event’s `EventName` is `aws:DELETE_MESSAGE`. This replicates the
  [
  DeleteMessage](https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/actions-deletemessage-publish.html)
  WebSocket operation in the Amazon IVS Chat Messaging API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivschat%20DeleteMessage&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec delete_message(AWS.Client.t(), delete_message_request(), Keyword.t()) ::
          {:ok, delete_message_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_message_errors()}
  def delete_message(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteMessage"
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
  Deletes the specified room.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivschat%20DeleteRoom&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec delete_room(AWS.Client.t(), delete_room_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_room_errors()}
  def delete_room(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteRoom"
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
      204
    )
  end

  @doc """
  Disconnects all connections using a specified user ID from a room. This
  replicates the [
  DisconnectUser](https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/actions-disconnectuser-publish.html)
  WebSocket operation in the Amazon IVS Chat Messaging API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivschat%20DisconnectUser&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec disconnect_user(AWS.Client.t(), disconnect_user_request(), Keyword.t()) ::
          {:ok, disconnect_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disconnect_user_errors()}
  def disconnect_user(%Client{} = client, input, options \\ []) do
    url_path = "/DisconnectUser"
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
  Gets the specified logging configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivschat%20GetLoggingConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec get_logging_configuration(
          AWS.Client.t(),
          get_logging_configuration_request(),
          Keyword.t()
        ) ::
          {:ok, get_logging_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_logging_configuration_errors()}
  def get_logging_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/GetLoggingConfiguration"
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
  Gets the specified room.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivschat%20GetRoom&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec get_room(AWS.Client.t(), get_room_request(), Keyword.t()) ::
          {:ok, get_room_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_room_errors()}
  def get_room(%Client{} = client, input, options \\ []) do
    url_path = "/GetRoom"
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
  Gets summary information about all your logging configurations in the AWS region
  where the API request is processed.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivschat%20ListLoggingConfigurations&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec list_logging_configurations(
          AWS.Client.t(),
          list_logging_configurations_request(),
          Keyword.t()
        ) ::
          {:ok, list_logging_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_logging_configurations_errors()}
  def list_logging_configurations(%Client{} = client, input, options \\ []) do
    url_path = "/ListLoggingConfigurations"
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
  Gets summary information about all your rooms in the AWS region where the API
  request is processed. Results are sorted in descending order of `updateTime`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivschat%20ListRooms&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec list_rooms(AWS.Client.t(), list_rooms_request(), Keyword.t()) ::
          {:ok, list_rooms_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_rooms_errors()}
  def list_rooms(%Client{} = client, input, options \\ []) do
    url_path = "/ListRooms"
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
  Gets information about AWS tags for the specified ARN.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivschat%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The ARN of the resource to be retrieved. The ARN
    must be URL-encoded.

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
  Sends an event to a room. Use this within your application’s business logic to
  send events to clients of a room; e.g., to notify clients to change the way
  the chat UI is rendered.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivschat%20SendEvent&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec send_event(AWS.Client.t(), send_event_request(), Keyword.t()) ::
          {:ok, send_event_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_event_errors()}
  def send_event(%Client{} = client, input, options \\ []) do
    url_path = "/SendEvent"
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
  Adds or updates tags for the AWS resource with the specified ARN.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivschat%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The ARN of the resource to be tagged. The ARN
    must be URL-encoded.

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
  Removes tags from the resource with the specified ARN.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivschat%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The ARN of the resource to be untagged. The ARN
    must be URL-encoded.
  * `:tag_keys` (`t:list[com.amazonaws.ivschat#TagKey]`) Array of tags to be
    removed. Array of maps, each of the form string:string (key:value). See
    Tagging AWS Resources for details, including restrictions that apply to tags
    and "Tag naming limits and requirements"; Amazon IVS Chat has no constraints
    beyond what is documented there.

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
  Updates a specified logging configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivschat%20UpdateLoggingConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec update_logging_configuration(
          AWS.Client.t(),
          update_logging_configuration_request(),
          Keyword.t()
        ) ::
          {:ok, update_logging_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_logging_configuration_errors()}
  def update_logging_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateLoggingConfiguration"
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
  Updates a room’s configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivschat%20UpdateRoom&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec update_room(AWS.Client.t(), update_room_request(), Keyword.t()) ::
          {:ok, update_room_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_room_errors()}
  def update_room(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateRoom"
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
end
