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

      access_denied_exception() :: %{
        "message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

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

      invoke_model_response() :: %{
        "body" => binary(),
        "contentType" => String.t()
      }

  """
  @type invoke_model_response() :: %{String.t() => any()}

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

      invoke_model_with_response_stream_response() :: %{
        "body" => list(),
        "contentType" => String.t()
      }

  """
  @type invoke_model_with_response_stream_response() :: %{String.t() => any()}

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

      model_not_ready_exception() :: %{
        "message" => String.t()
      }

  """
  @type model_not_ready_exception() :: %{String.t() => any()}

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

      payload_part() :: %{
        "bytes" => binary()
      }

  """
  @type payload_part() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => String.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => String.t()
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @type invoke_model_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | model_timeout_exception()
          | model_not_ready_exception()
          | model_error_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type invoke_model_with_response_stream_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | model_timeout_exception()
          | model_stream_error_exception()
          | model_not_ready_exception()
          | model_error_exception()
          | internal_server_exception()
          | access_denied_exception()

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
  Invokes the specified Amazon Bedrock model to run inference using the prompt and
  inference parameters provided in the request body. You use model inference to
  generate text, images, and embeddings. For example code, see *Invoke model
  code examples* in the *Amazon Bedrock User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=bedrockruntime%20InvokeModel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:model_id` (`t:string`) The unique identifier of the model to invoke to run
    inference.

  ## Optional parameters:
  * `:accept` (`t:string`) The desired MIME type of the inference body in the
    response. The default value is application/json.
  * `:content_type` (`t:string`) The MIME type of the input data in the request.
    The default value is application/json.
  * `:guardrail_identifier` (`t:string`) The unique identifier of the guardrail
    that you want to use. If you don't provide a value, no guardrail is applied
    to the invocation.
  * `:guardrail_version` (`t:string`) The version number for the guardrail. The
    value can also be DRAFT.
  * `:trace` (`t:enum["DISABLED|ENABLED"]`) Specifies whether to enable or disable
    the Bedrock trace. If enabled, you can see the full Bedrock trace.
  """
  @spec invoke_model(AWS.Client.t(), String.t(), invoke_model_request(), Keyword.t()) ::
          {:ok, invoke_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invoke_model_errors()}
  def invoke_model(%Client{} = client, model_id, input, options \\ []) do
    url_path = "/model/#{AWS.Util.encode_uri(model_id)}/invoke"

    {headers, input} =
      [
        {"accept", "Accept"},
        {"contentType", "Content-Type"},
        {"guardrailIdentifier", "X-Amzn-Bedrock-GuardrailIdentifier"},
        {"guardrailVersion", "X-Amzn-Bedrock-GuardrailVersion"},
        {"trace", "X-Amzn-Bedrock-Trace"}
      ]
      |> Request.build_params(input)

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Content-Type", "contentType"}]
      )

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
  Invoke the specified Amazon Bedrock model to run inference using the prompt and
  inference parameters provided in the request body. The response is returned in
  a stream. To see if a model supports streaming, call
  [GetFoundationModel](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GetFoundationModel.html)
  and check the `responseStreamingSupported` field in the response.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=bedrockruntime%20InvokeModelWithResponseStream&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:model_id` (`t:string`) The unique identifier of the model to invoke to run
    inference.

  ## Optional parameters:
  * `:accept` (`t:string`) The desired MIME type of the inference body in the
    response. The default value is application/json.
  * `:content_type` (`t:string`) The MIME type of the input data in the request.
    The default value is application/json.
  * `:guardrail_identifier` (`t:string`) The unique identifier of the guardrail
    that you want to use. If you don't provide a value, no guardrail is applied
    to the invocation.
  * `:guardrail_version` (`t:string`) The version number for the guardrail. The
    value can also be DRAFT.
  * `:trace` (`t:enum["DISABLED|ENABLED"]`) Specifies whether to enable or disable
    the Bedrock trace. If enabled, you can see the full Bedrock trace.
  """
  @spec invoke_model_with_response_stream(
          AWS.Client.t(),
          String.t(),
          invoke_model_with_response_stream_request(),
          Keyword.t()
        ) ::
          {:ok, invoke_model_with_response_stream_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invoke_model_with_response_stream_errors()}
  def invoke_model_with_response_stream(%Client{} = client, model_id, input, options \\ []) do
    url_path = "/model/#{AWS.Util.encode_uri(model_id)}/invoke-with-response-stream"

    {headers, input} =
      [
        {"accept", "X-Amzn-Bedrock-Accept"},
        {"contentType", "Content-Type"},
        {"guardrailIdentifier", "X-Amzn-Bedrock-GuardrailIdentifier"},
        {"guardrailVersion", "X-Amzn-Bedrock-GuardrailVersion"},
        {"trace", "X-Amzn-Bedrock-Trace"}
      ]
      |> Request.build_params(input)

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"X-Amzn-Bedrock-Content-Type", "contentType"}]
      )

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
