# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.LexRuntimeV2 do
  @moduledoc """
  This section contains documentation for the Amazon Lex V2 Runtime V2 API
  operations.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      recognized_bot_member() :: %{
        "botId" => String.t(),
        "botName" => String.t()
      }
      
  """
  @type recognized_bot_member() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_session_response() :: %{
        "interpretations" => list(interpretation()()),
        "messages" => list(message()()),
        "sessionId" => String.t(),
        "sessionState" => session_state()
      }
      
  """
  @type get_session_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_session_request() :: %{
        optional("messages") => list(message()()),
        optional("requestAttributes") => map(),
        optional("responseContentType") => String.t(),
        required("sessionState") => session_state()
      }
      
  """
  @type put_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      elicit_sub_slot() :: %{
        "name" => String.t(),
        "subSlotToElicit" => elicit_sub_slot()
      }
      
  """
  @type elicit_sub_slot() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recognize_text_request() :: %{
        optional("requestAttributes") => map(),
        optional("sessionState") => session_state(),
        required("text") => String.t()
      }
      
  """
  @type recognize_text_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bad_gateway_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type bad_gateway_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      slot() :: %{
        "shape" => list(any()),
        "subSlots" => map(),
        "value" => value(),
        "values" => list(slot()())
      }
      
  """
  @type slot() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dependency_failed_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type dependency_failed_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      d_t_m_f_input_event() :: %{
        "clientTimestampMillis" => float(),
        "eventId" => String.t(),
        "inputCharacter" => String.t()
      }
      
  """
  @type d_t_m_f_input_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recognize_utterance_request() :: %{
        optional("inputStream") => binary(),
        optional("requestAttributes") => String.t(),
        optional("responseContentType") => String.t(),
        optional("sessionState") => String.t(),
        required("requestContentType") => String.t()
      }
      
  """
  @type recognize_utterance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      value() :: %{
        "interpretedValue" => String.t(),
        "originalValue" => String.t(),
        "resolvedValues" => list(String.t()())
      }
      
  """
  @type value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sentiment_response() :: %{
        "sentiment" => list(any()),
        "sentimentScore" => sentiment_score()
      }
      
  """
  @type sentiment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      active_context_time_to_live() :: %{
        "timeToLiveInSeconds" => integer(),
        "turnsToLive" => integer()
      }
      
  """
  @type active_context_time_to_live() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      text_input_event() :: %{
        "clientTimestampMillis" => float(),
        "eventId" => String.t(),
        "text" => String.t()
      }
      
  """
  @type text_input_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_response_card() :: %{
        "buttons" => list(button()()),
        "imageUrl" => String.t(),
        "subtitle" => String.t(),
        "title" => String.t()
      }
      
  """
  @type image_response_card() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_session_request() :: %{}
      
  """
  @type get_session_request() :: %{}

  @typedoc """

  ## Example:
      
      put_session_response() :: %{
        "audioStream" => binary(),
        "contentType" => String.t(),
        "messages" => String.t(),
        "requestAttributes" => String.t(),
        "sessionId" => String.t(),
        "sessionState" => String.t()
      }
      
  """
  @type put_session_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      intent() :: %{
        "confirmationState" => list(any()),
        "name" => String.t(),
        "slots" => map(),
        "state" => list(any())
      }
      
  """
  @type intent() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sentiment_score() :: %{
        "mixed" => float(),
        "negative" => float(),
        "neutral" => float(),
        "positive" => float()
      }
      
  """
  @type sentiment_score() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      intent_result_event() :: %{
        "eventId" => String.t(),
        "inputMode" => list(any()),
        "interpretations" => list(interpretation()()),
        "recognizedBotMember" => recognized_bot_member(),
        "requestAttributes" => map(),
        "sessionId" => String.t(),
        "sessionState" => session_state()
      }
      
  """
  @type intent_result_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_session_response() :: %{
        "botAliasId" => String.t(),
        "botId" => String.t(),
        "localeId" => String.t(),
        "sessionId" => String.t()
      }
      
  """
  @type delete_session_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      text_response_event() :: %{
        "eventId" => String.t(),
        "messages" => list(message()())
      }
      
  """
  @type text_response_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      active_context() :: %{
        "contextAttributes" => map(),
        "name" => String.t(),
        "timeToLive" => active_context_time_to_live()
      }
      
  """
  @type active_context() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      confidence_score() :: %{
        "score" => float()
      }
      
  """
  @type confidence_score() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disconnection_event() :: %{
        "clientTimestampMillis" => float(),
        "eventId" => String.t()
      }
      
  """
  @type disconnection_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      session_state() :: %{
        "activeContexts" => list(active_context()()),
        "dialogAction" => dialog_action(),
        "intent" => intent(),
        "originatingRequestId" => String.t(),
        "runtimeHints" => runtime_hints(),
        "sessionAttributes" => map()
      }
      
  """
  @type session_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recognize_text_response() :: %{
        "interpretations" => list(interpretation()()),
        "messages" => list(message()()),
        "recognizedBotMember" => recognized_bot_member(),
        "requestAttributes" => map(),
        "sessionId" => String.t(),
        "sessionState" => session_state()
      }
      
  """
  @type recognize_text_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      audio_response_event() :: %{
        "audioChunk" => binary(),
        "contentType" => String.t(),
        "eventId" => String.t()
      }
      
  """
  @type audio_response_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      runtime_hint_value() :: %{
        "phrase" => String.t()
      }
      
  """
  @type runtime_hint_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_conversation_request() :: %{
        optional("conversationMode") => list(any()),
        required("requestEventStream") => list()
      }
      
  """
  @type start_conversation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recognize_utterance_response() :: %{
        "audioStream" => binary(),
        "contentType" => String.t(),
        "inputMode" => String.t(),
        "inputTranscript" => String.t(),
        "interpretations" => String.t(),
        "messages" => String.t(),
        "recognizedBotMember" => String.t(),
        "requestAttributes" => String.t(),
        "sessionId" => String.t(),
        "sessionState" => String.t()
      }
      
  """
  @type recognize_utterance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      configuration_event() :: %{
        "clientTimestampMillis" => float(),
        "disablePlayback" => boolean(),
        "eventId" => String.t(),
        "requestAttributes" => map(),
        "responseContentType" => String.t(),
        "sessionState" => session_state(),
        "welcomeMessages" => list(message()())
      }
      
  """
  @type configuration_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      playback_interruption_event() :: %{
        "causedByEventId" => String.t(),
        "eventId" => String.t(),
        "eventReason" => list(any())
      }
      
  """
  @type playback_interruption_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      runtime_hints() :: %{
        "slotHints" => map()
      }
      
  """
  @type runtime_hints() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      playback_completion_event() :: %{
        "clientTimestampMillis" => float(),
        "eventId" => String.t()
      }
      
  """
  @type playback_completion_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      heartbeat_event() :: %{
        "eventId" => String.t()
      }
      
  """
  @type heartbeat_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_conversation_response() :: %{
        "responseEventStream" => list()
      }
      
  """
  @type start_conversation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      button() :: %{
        "text" => String.t(),
        "value" => String.t()
      }
      
  """
  @type button() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dialog_action() :: %{
        "slotElicitationStyle" => list(any()),
        "slotToElicit" => String.t(),
        "subSlotToElicit" => elicit_sub_slot(),
        "type" => list(any())
      }
      
  """
  @type dialog_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      runtime_hint_details() :: %{
        "runtimeHintValues" => list(runtime_hint_value()()),
        "subSlotHints" => map()
      }
      
  """
  @type runtime_hint_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      transcript_event() :: %{
        "eventId" => String.t(),
        "transcript" => String.t()
      }
      
  """
  @type transcript_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_session_request() :: %{}
      
  """
  @type delete_session_request() :: %{}

  @typedoc """

  ## Example:
      
      interpretation() :: %{
        "intent" => intent(),
        "interpretationSource" => list(any()),
        "nluConfidence" => confidence_score(),
        "sentimentResponse" => sentiment_response()
      }
      
  """
  @type interpretation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      audio_input_event() :: %{
        "audioChunk" => binary(),
        "clientTimestampMillis" => float(),
        "contentType" => String.t(),
        "eventId" => String.t()
      }
      
  """
  @type audio_input_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      message() :: %{
        "content" => String.t(),
        "contentType" => list(any()),
        "imageResponseCard" => image_response_card()
      }
      
  """
  @type message() :: %{String.t() => any()}

  @type delete_session_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_session_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type put_session_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | dependency_failed_exception()
          | bad_gateway_exception()

  @type recognize_text_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | dependency_failed_exception()
          | bad_gateway_exception()

  @type recognize_utterance_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | dependency_failed_exception()
          | bad_gateway_exception()

  @type start_conversation_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  def metadata do
    %{
      api_version: "2020-08-07",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "runtime-v2-lex",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Lex Runtime V2",
      signature_version: "v4",
      signing_name: "lex",
      target_prefix: nil
    }
  end

  @doc """
  Removes session information for a specified bot, alias, and user ID. You can use
  this operation to restart a conversation with a bot. When you remove a
  session, the entire history of the session is removed so that you can start
  again.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexruntimev2%20DeleteSession&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bot_alias_id` (`t:string`) The alias identifier in use for the bot that
  contains the session data.
  * `:bot_id` (`t:string`) The identifier of the bot that contains the session
  data.
  * `:locale_id` (`t:string`) The locale where the session is in use.
  * `:session_id` (`t:string`) The identifier of the session to delete.

  ## Optional parameters:
  """

  @spec delete_session(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, delete_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_session_errors()}

  def delete_session(
        %Client{} = client,
        bot_alias_id,
        bot_id,
        locale_id,
        session_id,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botAliases/#{AWS.Util.encode_uri(bot_alias_id)}/botLocales/#{AWS.Util.encode_uri(locale_id)}/sessions/#{AWS.Util.encode_uri(session_id)}"

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
  Returns session information for a specified bot, alias, and user. For example,
  you can use this operation to retrieve session information for a user that has
  left a long-running session in use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexruntimev2%20GetSession&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bot_alias_id` (`t:string`) The alias identifier in use for the bot that
  contains the session data.
  * `:bot_id` (`t:string`) The identifier of the bot that contains the session
  data.
  * `:locale_id` (`t:string`) The locale where the session is in use.
  * `:session_id` (`t:string`) The identifier of the session to return.

  ## Optional parameters:
  """

  @spec get_session(AWS.Client.t(), String.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_session_errors()}

  def get_session(%Client{} = client, bot_alias_id, bot_id, locale_id, session_id, options \\ []) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botAliases/#{AWS.Util.encode_uri(bot_alias_id)}/botLocales/#{AWS.Util.encode_uri(locale_id)}/sessions/#{AWS.Util.encode_uri(session_id)}"

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
  Creates a new session or modifies an existing session with an Amazon Lex V2 bot.
  Use this operation to enable your application to set the state of the bot.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexruntimev2%20PutSession&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bot_alias_id` (`t:string`) The alias identifier of the bot that receives the
  session data.
  * `:bot_id` (`t:string`) The identifier of the bot that receives the session
  data.
  * `:locale_id` (`t:string`) The locale where the session is in use.
  * `:session_id` (`t:string`) The identifier of the session that receives the
  session data.

  ## Optional parameters:
  * `:response_content_type` (`t:string`) The message that Amazon Lex V2 returns
  in the response can be either text or speech depending on the value of this
  parameter.
  """

  @spec put_session(AWS.Client.t(), String.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, put_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_session_errors()}

  def put_session(%Client{} = client, bot_alias_id, bot_id, locale_id, session_id, options \\ []) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botAliases/#{AWS.Util.encode_uri(bot_alias_id)}/botLocales/#{AWS.Util.encode_uri(locale_id)}/sessions/#{AWS.Util.encode_uri(session_id)}"

    # Validate optional parameters
    optional_params = [response_content_type: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :response_content_type) do
        [{"ResponseContentType", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params
    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"Content-Type", "contentType"},
          {"x-amz-lex-messages", "messages"},
          {"x-amz-lex-request-attributes", "requestAttributes"},
          {"x-amz-lex-session-id", "sessionId"},
          {"x-amz-lex-session-state", "sessionState"}
        ]
      )

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"Content-Type", "contentType"},
          {"x-amz-lex-messages", "messages"},
          {"x-amz-lex-request-attributes", "requestAttributes"},
          {"x-amz-lex-session-id", "sessionId"},
          {"x-amz-lex-session-state", "sessionState"}
        ]
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:response_content_type])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Sends user input to Amazon Lex V2. Client applications use this API to send
  requests to Amazon Lex V2 at runtime. Amazon Lex V2 then interprets the user
  input using the machine learning model that it build for the bot. In response,
  Amazon Lex V2 returns the next message to convey to the user and an optional
  response card to display.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexruntimev2%20RecognizeText&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bot_alias_id` (`t:string`) The alias identifier in use for the bot that
  processes the request.
  * `:bot_id` (`t:string`) The identifier of the bot that processes the request.
  * `:locale_id` (`t:string`) The locale where the session is in use.
  * `:session_id` (`t:string`) The identifier of the user session that is having
  the conversation.

  ## Optional parameters:
  """

  @spec recognize_text(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, recognize_text_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, recognize_text_errors()}

  def recognize_text(
        %Client{} = client,
        bot_alias_id,
        bot_id,
        locale_id,
        session_id,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botAliases/#{AWS.Util.encode_uri(bot_alias_id)}/botLocales/#{AWS.Util.encode_uri(locale_id)}/sessions/#{AWS.Util.encode_uri(session_id)}/text"

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
  Sends user input to Amazon Lex V2. You can send text or speech. Clients use this
  API to send text and audio requests to Amazon Lex V2 at runtime. Amazon Lex V2
  interprets the user input using the machine learning model built for the bot.
  The following request fields must be compressed with gzip and then base64
  encoded before you send them to Amazon Lex V2.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexruntimev2%20RecognizeUtterance&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bot_alias_id` (`t:string`) The alias identifier in use for the bot that
  should receive the request.
  * `:bot_id` (`t:string`) The identifier of the bot that should receive the
  request.
  * `:locale_id` (`t:string`) The locale where the session is in use.
  * `:session_id` (`t:string`) The identifier of the session in use.
  * `:request_content_type` (`t:string`) Indicates the format for audio input or
  that the content is text. The header must start with one of the following
  prefixes:
  * `:input` (`t:map | nil`):
    * `:input_stream` (`t:blob`) User input in PCM or Opus audio format or text
  format as described in the requestContentType parameter.

  ## Optional parameters:
  * `:request_attributes` (`t:string`) Request-specific information passed between
  the client application and Amazon Lex V2
  * `:response_content_type` (`t:string`) The message that Amazon Lex V2 returns
  in the response can be either text or speech based on the
  responseContentType value.
  * `:session_state` (`t:string`) Sets the state of the session with the user. You
  can use this to set the current intent, attributes, context, and dialog
  action. Use the dialog action to determine the next step that Amazon Lex V2
  should use in the conversation with the user.
  """

  @spec recognize_utterance(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          input :: map() | nil,
          Keyword.t()
        ) ::
          {:ok, recognize_utterance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, recognize_utterance_errors()}

  def recognize_utterance(
        %Client{} = client,
        bot_alias_id,
        bot_id,
        locale_id,
        session_id,
        request_content_type,
        input,
        options \\ []
      )
      when (is_map(input) or is_nil(input)) and is_binary(request_content_type) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botAliases/#{AWS.Util.encode_uri(bot_alias_id)}/botLocales/#{AWS.Util.encode_uri(locale_id)}/sessions/#{AWS.Util.encode_uri(session_id)}/utterance"

    # Validate optional parameters
    optional_params = [request_attributes: nil, response_content_type: nil, session_state: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"Content-Type", request_content_type}]

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :session_state) do
        [{"x-amz-lex-session-state", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :response_content_type) do
        [{"Response-Content-Type", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :request_attributes) do
        [{"x-amz-lex-request-attributes", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params
    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"Content-Type", "contentType"},
          {"x-amz-lex-input-mode", "inputMode"},
          {"x-amz-lex-input-transcript", "inputTranscript"},
          {"x-amz-lex-interpretations", "interpretations"},
          {"x-amz-lex-messages", "messages"},
          {"x-amz-lex-recognized-bot-member", "recognizedBotMember"},
          {"x-amz-lex-request-attributes", "requestAttributes"},
          {"x-amz-lex-session-id", "sessionId"},
          {"x-amz-lex-session-state", "sessionState"}
        ]
      )

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"Content-Type", "contentType"},
          {"x-amz-lex-input-mode", "inputMode"},
          {"x-amz-lex-input-transcript", "inputTranscript"},
          {"x-amz-lex-interpretations", "interpretations"},
          {"x-amz-lex-messages", "messages"},
          {"x-amz-lex-recognized-bot-member", "recognizedBotMember"},
          {"x-amz-lex-request-attributes", "requestAttributes"},
          {"x-amz-lex-session-id", "sessionId"},
          {"x-amz-lex-session-state", "sessionState"}
        ]
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:request_attributes, :response_content_type, :session_state])

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Starts an HTTP/2 bidirectional event stream that enables you to send audio,
  text, or DTMF input in real time. After your application starts a
  conversation, users send input to Amazon Lex V2 as a stream of events. Amazon
  Lex V2 processes the incoming events and responds with streaming text or audio
  events. Audio input must be in the following format: ``` audio/lpcm
  sample-rate=8000 sample-size-bits=16 channel-count=1; is-big-endian=false ```
  .

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexruntimev2%20StartConversation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bot_alias_id` (`t:string`) The alias identifier in use for the bot that
  processes the request.
  * `:bot_id` (`t:string`) The identifier of the bot to process the request.
  * `:locale_id` (`t:string`) The locale where the session is in use.
  * `:session_id` (`t:string`) The identifier of the user session that is having
  the conversation.
  * `:input` (`t:map`):
    * `:request_event_stream` (`t:union`) Represents the stream of events to Amazon
  Lex V2 from your application. The events are encoded as HTTP/2 data frames.

  ## Optional parameters:
  * `:conversation_mode` (`t:enum["AUDIO|TEXT"]`) The conversation type that you
  are using the Amazon Lex V2. If the conversation mode is AUDIO you can send
  both audio and DTMF information. If the mode is TEXT you can only send text.
  """

  @spec start_conversation(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          input :: map(),
          Keyword.t()
        ) ::
          {:ok, start_conversation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_conversation_errors()}

  def start_conversation(
        %Client{} = client,
        bot_alias_id,
        bot_id,
        locale_id,
        session_id,
        input,
        options \\ []
      )
      when is_map(input) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botAliases/#{AWS.Util.encode_uri(bot_alias_id)}/botLocales/#{AWS.Util.encode_uri(locale_id)}/sessions/#{AWS.Util.encode_uri(session_id)}/conversation"

    # Validate optional parameters
    optional_params = [conversation_mode: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :conversation_mode) do
        [{"x-amz-lex-conversation-mode", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:conversation_mode])

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end
end
