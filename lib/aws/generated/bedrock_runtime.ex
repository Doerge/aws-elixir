# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.BedrockRuntime do
  @moduledoc """
  Describes the API operations for running inference using Amazon Bedrock models.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      specific_tool_choice() :: %{
        "name" => String.t()
      }
      
  """
  @type specific_tool_choice() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      guardrail_content_policy_assessment() :: %{
        "filters" => list(guardrail_content_filter()())
      }
      
  """
  @type guardrail_content_policy_assessment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document_block() :: %{
        "format" => list(any()),
        "name" => [String.t()],
        "source" => list()
      }
      
  """
  @type document_block() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      apply_guardrail_response() :: %{
        "action" => list(any()),
        "assessments" => list(guardrail_assessment()()),
        "outputs" => list(guardrail_output_content()()),
        "usage" => guardrail_usage()
      }
      
  """
  @type apply_guardrail_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_not_ready_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type model_not_ready_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      content_block_stop_event() :: %{
        "contentBlockIndex" => integer()
      }
      
  """
  @type content_block_stop_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      any_tool_choice() :: %{}
      
  """
  @type any_tool_choice() :: %{}

  @typedoc """

  ## Example:
      
      inference_configuration() :: %{
        "maxTokens" => [integer()],
        "stopSequences" => list(String.t()()),
        "temperature" => [float()],
        "topP" => [float()]
      }
      
  """
  @type inference_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_tool_choice() :: %{}
      
  """
  @type auto_tool_choice() :: %{}

  @typedoc """

  ## Example:
      
      apply_guardrail_request() :: %{
        required("content") => list(list()()),
        required("source") => list(any())
      }
      
  """
  @type apply_guardrail_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      converse_request() :: %{
        optional("additionalModelRequestFields") => [any()],
        optional("additionalModelResponseFieldPaths") => list([String.t()]()),
        optional("guardrailConfig") => guardrail_configuration(),
        optional("inferenceConfig") => inference_configuration(),
        optional("system") => list(list()()),
        optional("toolConfig") => tool_configuration(),
        required("messages") => list(message()())
      }
      
  """
  @type converse_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      guardrail_trace_assessment() :: %{
        "inputAssessment" => map(),
        "modelOutput" => list(String.t()()),
        "outputAssessments" => map()
      }
      
  """
  @type guardrail_trace_assessment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      payload_part() :: %{
        "bytes" => binary()
      }
      
  """
  @type payload_part() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      message_stop_event() :: %{
        "additionalModelResponseFields" => [any()],
        "stopReason" => list(any())
      }
      
  """
  @type message_stop_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      guardrail_managed_word() :: %{
        "action" => list(any()),
        "match" => [String.t()],
        "type" => list(any())
      }
      
  """
  @type guardrail_managed_word() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invoke_model_with_response_stream_response() :: %{
        "body" => list(),
        "contentType" => String.t()
      }
      
  """
  @type invoke_model_with_response_stream_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      guardrail_text_block() :: %{
        "qualifiers" => list(list(any())()),
        "text" => [String.t()]
      }
      
  """
  @type guardrail_text_block() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_block() :: %{
        "format" => list(any()),
        "source" => list()
      }
      
  """
  @type image_block() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      content_block_start_event() :: %{
        "contentBlockIndex" => integer(),
        "start" => list()
      }
      
  """
  @type content_block_start_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      content_block_delta_event() :: %{
        "contentBlockIndex" => integer(),
        "delta" => list()
      }
      
  """
  @type content_block_delta_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      guardrail_custom_word() :: %{
        "action" => list(any()),
        "match" => [String.t()]
      }
      
  """
  @type guardrail_custom_word() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      message_start_event() :: %{
        "role" => list(any())
      }
      
  """
  @type message_start_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      guardrail_word_policy_assessment() :: %{
        "customWords" => list(guardrail_custom_word()()),
        "managedWordLists" => list(guardrail_managed_word()())
      }
      
  """
  @type guardrail_word_policy_assessment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invoke_model_request() :: %{
        optional("accept") => String.t(),
        optional("contentType") => String.t(),
        optional("guardrailIdentifier") => String.t(),
        optional("guardrailVersion") => String.t(),
        optional("trace") => list(any()),
        required("body") => binary()
      }
      
  """
  @type invoke_model_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invoke_model_with_response_stream_request() :: %{
        optional("accept") => String.t(),
        optional("contentType") => String.t(),
        optional("guardrailIdentifier") => String.t(),
        optional("guardrailVersion") => String.t(),
        optional("trace") => list(any()),
        required("body") => binary()
      }
      
  """
  @type invoke_model_with_response_stream_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      guardrail_sensitive_information_policy_assessment() :: %{
        "piiEntities" => list(guardrail_pii_entity_filter()()),
        "regexes" => list(guardrail_regex_filter()())
      }
      
  """
  @type guardrail_sensitive_information_policy_assessment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      converse_stream_metrics() :: %{
        "latencyMs" => [float()]
      }
      
  """
  @type converse_stream_metrics() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tool_use_block_start() :: %{
        "name" => String.t(),
        "toolUseId" => String.t()
      }
      
  """
  @type tool_use_block_start() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invoke_model_response() :: %{
        "body" => binary(),
        "contentType" => String.t()
      }
      
  """
  @type invoke_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      guardrail_content_filter() :: %{
        "action" => list(any()),
        "confidence" => list(any()),
        "type" => list(any())
      }
      
  """
  @type guardrail_content_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      converse_trace() :: %{
        "guardrail" => guardrail_trace_assessment()
      }
      
  """
  @type converse_trace() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      guardrail_contextual_grounding_filter() :: %{
        "action" => list(any()),
        "score" => [float()],
        "threshold" => [float()],
        "type" => list(any())
      }
      
  """
  @type guardrail_contextual_grounding_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tool_specification() :: %{
        "description" => String.t(),
        "inputSchema" => list(),
        "name" => String.t()
      }
      
  """
  @type tool_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      converse_stream_response() :: %{
        "stream" => list()
      }
      
  """
  @type converse_stream_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_unavailable_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      guardrail_contextual_grounding_policy_assessment() :: %{
        "filters" => list(guardrail_contextual_grounding_filter()())
      }
      
  """
  @type guardrail_contextual_grounding_policy_assessment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      converse_stream_metadata_event() :: %{
        "metrics" => converse_stream_metrics(),
        "trace" => converse_stream_trace(),
        "usage" => token_usage()
      }
      
  """
  @type converse_stream_metadata_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      guardrail_stream_configuration() :: %{
        "guardrailIdentifier" => String.t(),
        "guardrailVersion" => String.t(),
        "streamProcessingMode" => list(any()),
        "trace" => list(any())
      }
      
  """
  @type guardrail_stream_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      guardrail_assessment() :: %{
        "contentPolicy" => guardrail_content_policy_assessment(),
        "contextualGroundingPolicy" => guardrail_contextual_grounding_policy_assessment(),
        "sensitiveInformationPolicy" => guardrail_sensitive_information_policy_assessment(),
        "topicPolicy" => guardrail_topic_policy_assessment(),
        "wordPolicy" => guardrail_word_policy_assessment()
      }
      
  """
  @type guardrail_assessment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      converse_metrics() :: %{
        "latencyMs" => [float()]
      }
      
  """
  @type converse_metrics() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_error_exception() :: %{
        "message" => String.t(),
        "originalStatusCode" => integer(),
        "resourceName" => String.t()
      }
      
  """
  @type model_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tool_configuration() :: %{
        "toolChoice" => list(),
        "tools" => list(list()())
      }
      
  """
  @type tool_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      converse_stream_request() :: %{
        optional("additionalModelRequestFields") => [any()],
        optional("additionalModelResponseFieldPaths") => list([String.t()]()),
        optional("guardrailConfig") => guardrail_stream_configuration(),
        optional("inferenceConfig") => inference_configuration(),
        optional("system") => list(list()()),
        optional("toolConfig") => tool_configuration(),
        required("messages") => list(message()())
      }
      
  """
  @type converse_stream_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tool_result_block() :: %{
        "content" => list(list()()),
        "status" => list(any()),
        "toolUseId" => String.t()
      }
      
  """
  @type tool_result_block() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tool_use_block() :: %{
        "input" => [any()],
        "name" => String.t(),
        "toolUseId" => String.t()
      }
      
  """
  @type tool_use_block() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      token_usage() :: %{
        "inputTokens" => [integer()],
        "outputTokens" => [integer()],
        "totalTokens" => [integer()]
      }
      
  """
  @type token_usage() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      guardrail_topic_policy_assessment() :: %{
        "topics" => list(guardrail_topic()())
      }
      
  """
  @type guardrail_topic_policy_assessment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      guardrail_usage() :: %{
        "contentPolicyUnits" => integer(),
        "contextualGroundingPolicyUnits" => integer(),
        "sensitiveInformationPolicyFreeUnits" => integer(),
        "sensitiveInformationPolicyUnits" => integer(),
        "topicPolicyUnits" => integer(),
        "wordPolicyUnits" => integer()
      }
      
  """
  @type guardrail_usage() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_stream_error_exception() :: %{
        "message" => String.t(),
        "originalMessage" => String.t(),
        "originalStatusCode" => integer()
      }
      
  """
  @type model_stream_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_timeout_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type model_timeout_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      guardrail_configuration() :: %{
        "guardrailIdentifier" => String.t(),
        "guardrailVersion" => String.t(),
        "trace" => list(any())
      }
      
  """
  @type guardrail_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      guardrail_regex_filter() :: %{
        "action" => list(any()),
        "match" => [String.t()],
        "name" => [String.t()],
        "regex" => [String.t()]
      }
      
  """
  @type guardrail_regex_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      guardrail_output_content() :: %{
        "text" => String.t()
      }
      
  """
  @type guardrail_output_content() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      guardrail_pii_entity_filter() :: %{
        "action" => list(any()),
        "match" => [String.t()],
        "type" => list(any())
      }
      
  """
  @type guardrail_pii_entity_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      guardrail_converse_text_block() :: %{
        "qualifiers" => list(list(any())()),
        "text" => [String.t()]
      }
      
  """
  @type guardrail_converse_text_block() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      converse_stream_trace() :: %{
        "guardrail" => guardrail_trace_assessment()
      }
      
  """
  @type converse_stream_trace() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tool_use_block_delta() :: %{
        "input" => [String.t()]
      }
      
  """
  @type tool_use_block_delta() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      guardrail_topic() :: %{
        "action" => list(any()),
        "name" => [String.t()],
        "type" => list(any())
      }
      
  """
  @type guardrail_topic() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      message() :: %{
        "content" => list(list()()),
        "role" => list(any())
      }
      
  """
  @type message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      converse_response() :: %{
        "additionalModelResponseFields" => [any()],
        "metrics" => converse_metrics(),
        "output" => list(),
        "stopReason" => list(any()),
        "trace" => converse_trace(),
        "usage" => token_usage()
      }
      
  """
  @type converse_response() :: %{String.t() => any()}

  @type apply_guardrail_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type converse_errors() ::
          throttling_exception()
          | validation_exception()
          | model_timeout_exception()
          | access_denied_exception()
          | model_error_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | model_not_ready_exception()

  @type converse_stream_errors() ::
          throttling_exception()
          | validation_exception()
          | model_timeout_exception()
          | access_denied_exception()
          | model_error_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | model_not_ready_exception()

  @type invoke_model_errors() ::
          throttling_exception()
          | validation_exception()
          | model_timeout_exception()
          | access_denied_exception()
          | model_error_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | model_not_ready_exception()

  @type invoke_model_with_response_stream_errors() ::
          throttling_exception()
          | validation_exception()
          | model_timeout_exception()
          | model_stream_error_exception()
          | access_denied_exception()
          | model_error_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | model_not_ready_exception()

  def metadata do
    %{
      api_version: "2023-09-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "bedrock-runtime",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Bedrock Runtime",
      signature_version: "v4",
      signing_name: "bedrock",
      target_prefix: nil
    }
  end

  @doc """
  The action to apply a guardrail.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=bedrockruntime%20ApplyGuardrail&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:guardrail_identifier` (`t:string` required) The guardrail identifier used in
  the request to apply the guardrail.
  * `:guardrail_version` (`t:string` required) The guardrail version used in the
  request to apply the guardrail.
  ## Keyword parameters:
  """
  @spec apply_guardrail(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, apply_guardrail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, apply_guardrail_errors()}
  def apply_guardrail(%Client{} = client, guardrail_identifier, guardrail_version, options \\ []) do
    url_path =
      "/guardrail/#{AWS.Util.encode_uri(guardrail_identifier)}/version/#{AWS.Util.encode_uri(guardrail_version)}/apply"

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
  Sends messages to the specified Amazon Bedrock model. `Converse` provides a
  consistent interface that works with all models that support messages. This
  allows you to write code once and use it with different models. If a model has
  unique inference parameters, you can also pass those unique parameters to the
  model. Amazon Bedrock doesn't store any text, images, or documents that you
  provide as content. The data is only used to generate the response.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=bedrockruntime%20Converse&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:model_id` (`t:string` required) The identifier for the model that you want
  to call.
  ## Keyword parameters:
  """
  @spec converse(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, converse_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, converse_errors()}
  def converse(%Client{} = client, model_id, options \\ []) do
    url_path = "/model/#{AWS.Util.encode_uri(model_id)}/converse"

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
  Sends messages to the specified Amazon Bedrock model and returns the response in
  a stream. `ConverseStream` provides a consistent API that works with all
  Amazon Bedrock models that support messages. This allows you to write code
  once and use it with different models. Should a model have unique inference
  parameters, you can also pass those unique parameters to the model. To find
  out if a model supports streaming, call
  [GetFoundationModel](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GetFoundationModel.html)
  and check the `responseStreamingSupported` field in the response.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=bedrockruntime%20ConverseStream&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:model_id` (`t:string` required) The ID for the model.
  ## Keyword parameters:
  """
  @spec converse_stream(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, converse_stream_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, converse_stream_errors()}
  def converse_stream(%Client{} = client, model_id, options \\ []) do
    url_path = "/model/#{AWS.Util.encode_uri(model_id)}/converse-stream"

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
  Invokes the specified Amazon Bedrock model to run inference using the prompt and
  inference parameters provided in the request body. You use model inference to
  generate text, images, and embeddings. For example code, see *Invoke model
  code examples* in the *Amazon Bedrock User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=bedrockruntime%20InvokeModel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:model_id` (`t:string` required) The unique identifier of the model to invoke
  to run inference.
  * `:input` (`t:map`):
    * `:body` (`t:blob` required) The prompt and inference parameters in the format
  specified in the contentType in the header. You must provide the body in
  JSON format. To see the format and content of the request and response
  bodies for different models, refer to Inference parameters. For more
  information, see Run inference in the Bedrock User Guide.
  ## Keyword parameters:
  * `:accept` (`t:string`) The desired MIME type of the inference body in the
  response. The default value is application/json.
  * `:content_type` (`t:string`) The MIME type of the input data in the request.
  You must specify application/json.
  * `:guardrail_identifier` (`t:string`) The unique identifier of the guardrail
  that you want to use. If you don't provide a value, no guardrail is applied
  to the invocation.
  * `:guardrail_version` (`t:string`) The version number for the guardrail. The
  value can also be DRAFT.
  * `:trace` (`t:enum["DISABLED|ENABLED"]`) Specifies whether to enable or disable
  the Bedrock trace. If enabled, you can see the full Bedrock trace.
  """
  @spec invoke_model(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, invoke_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invoke_model_errors()}
  def invoke_model(%Client{} = client, model_id, input, options \\ []) when is_map(input) do
    url_path = "/model/#{AWS.Util.encode_uri(model_id)}/invoke"

    # Validate optional parameters
    optional_params = [
      accept: nil,
      content_type: nil,
      guardrail_identifier: nil,
      guardrail_version: nil,
      trace: nil
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
      if opt_val = Keyword.get(options, :trace) do
        [{"X-Amzn-Bedrock-Trace", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :guardrail_version) do
        [{"X-Amzn-Bedrock-GuardrailVersion", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :guardrail_identifier) do
        [{"X-Amzn-Bedrock-GuardrailIdentifier", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :content_type) do
        [{"Content-Type", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :accept) do
        [{"Accept", opt_val} | headers]
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
        [{"Content-Type", "contentType"}]
      )

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Content-Type", "contentType"}]
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:accept, :content_type, :guardrail_identifier, :guardrail_version, :trace])

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Invoke the specified Amazon Bedrock model to run inference using the prompt and
  inference parameters provided in the request body. The response is returned in
  a stream. To see if a model supports streaming, call
  [GetFoundationModel](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GetFoundationModel.html)
  and check the `responseStreamingSupported` field in the response.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=bedrockruntime%20InvokeModelWithResponseStream&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:model_id` (`t:string` required) The unique identifier of the model to invoke
  to run inference.
  * `:input` (`t:map`):
    * `:body` (`t:blob` required) The prompt and inference parameters in the format
  specified in the contentType in the header. You must provide the body in
  JSON format. To see the format and content of the request and response
  bodies for different models, refer to Inference parameters. For more
  information, see Run inference in the Bedrock User Guide.
  ## Keyword parameters:
  * `:accept` (`t:string`) The desired MIME type of the inference body in the
  response. The default value is application/json.
  * `:content_type` (`t:string`) The MIME type of the input data in the request.
  You must specify application/json.
  * `:guardrail_identifier` (`t:string`) The unique identifier of the guardrail
  that you want to use. If you don't provide a value, no guardrail is applied
  to the invocation.
  * `:guardrail_version` (`t:string`) The version number for the guardrail. The
  value can also be DRAFT.
  * `:trace` (`t:enum["DISABLED|ENABLED"]`) Specifies whether to enable or disable
  the Bedrock trace. If enabled, you can see the full Bedrock trace.
  """
  @spec invoke_model_with_response_stream(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, invoke_model_with_response_stream_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invoke_model_with_response_stream_errors()}
  def invoke_model_with_response_stream(%Client{} = client, model_id, input, options \\ [])
      when is_map(input) do
    url_path = "/model/#{AWS.Util.encode_uri(model_id)}/invoke-with-response-stream"

    # Validate optional parameters
    optional_params = [
      accept: nil,
      content_type: nil,
      guardrail_identifier: nil,
      guardrail_version: nil,
      trace: nil
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
      if opt_val = Keyword.get(options, :trace) do
        [{"X-Amzn-Bedrock-Trace", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :guardrail_version) do
        [{"X-Amzn-Bedrock-GuardrailVersion", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :guardrail_identifier) do
        [{"X-Amzn-Bedrock-GuardrailIdentifier", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :content_type) do
        [{"Content-Type", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :accept) do
        [{"X-Amzn-Bedrock-Accept", opt_val} | headers]
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
        [{"X-Amzn-Bedrock-Content-Type", "contentType"}]
      )

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"X-Amzn-Bedrock-Content-Type", "contentType"}]
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:accept, :content_type, :guardrail_identifier, :guardrail_version, :trace])

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end
end
