# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SageMakerRuntime do
  @moduledoc """
  The Amazon SageMaker runtime API.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      internal_dependency_exception() :: %{
        "Message" => String.t()
      }

  """
  @type internal_dependency_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_failure() :: %{
        "Message" => String.t()
      }

  """
  @type internal_failure() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_stream_failure() :: %{
        "Message" => String.t()
      }

  """
  @type internal_stream_failure() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invoke_endpoint_async_input() :: %{
        optional("Accept") => String.t(),
        optional("ContentType") => String.t(),
        optional("CustomAttributes") => String.t(),
        optional("InferenceId") => String.t(),
        optional("InvocationTimeoutSeconds") => integer(),
        optional("RequestTTLSeconds") => integer(),
        required("InputLocation") => String.t()
      }

  """
  @type invoke_endpoint_async_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invoke_endpoint_async_output() :: %{
        "FailureLocation" => String.t(),
        "InferenceId" => String.t(),
        "OutputLocation" => String.t()
      }

  """
  @type invoke_endpoint_async_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invoke_endpoint_input() :: %{
        optional("Accept") => String.t(),
        optional("ContentType") => String.t(),
        optional("CustomAttributes") => String.t(),
        optional("EnableExplanations") => String.t(),
        optional("InferenceComponentName") => String.t(),
        optional("InferenceId") => String.t(),
        optional("TargetContainerHostname") => String.t(),
        optional("TargetModel") => String.t(),
        optional("TargetVariant") => String.t(),
        required("Body") => binary()
      }

  """
  @type invoke_endpoint_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invoke_endpoint_output() :: %{
        "Body" => binary(),
        "ContentType" => String.t(),
        "CustomAttributes" => String.t(),
        "InvokedProductionVariant" => String.t()
      }

  """
  @type invoke_endpoint_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invoke_endpoint_with_response_stream_input() :: %{
        optional("Accept") => String.t(),
        optional("ContentType") => String.t(),
        optional("CustomAttributes") => String.t(),
        optional("InferenceComponentName") => String.t(),
        optional("InferenceId") => String.t(),
        optional("TargetContainerHostname") => String.t(),
        optional("TargetVariant") => String.t(),
        required("Body") => binary()
      }

  """
  @type invoke_endpoint_with_response_stream_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invoke_endpoint_with_response_stream_output() :: %{
        "Body" => list(),
        "ContentType" => String.t(),
        "CustomAttributes" => String.t(),
        "InvokedProductionVariant" => String.t()
      }

  """
  @type invoke_endpoint_with_response_stream_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      model_error() :: %{
        "LogStreamArn" => String.t(),
        "Message" => String.t(),
        "OriginalMessage" => String.t(),
        "OriginalStatusCode" => integer()
      }

  """
  @type model_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      model_not_ready_exception() :: %{
        "Message" => String.t()
      }

  """
  @type model_not_ready_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      model_stream_error() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }

  """
  @type model_stream_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      payload_part() :: %{
        "Bytes" => binary()
      }

  """
  @type payload_part() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_unavailable() :: %{
        "Message" => String.t()
      }

  """
  @type service_unavailable() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_error() :: %{
        "Message" => String.t()
      }

  """
  @type validation_error() :: %{String.t() => any()}

  @type invoke_endpoint_errors() ::
          validation_error()
          | service_unavailable()
          | model_not_ready_exception()
          | model_error()
          | internal_failure()
          | internal_dependency_exception()

  @type invoke_endpoint_async_errors() ::
          validation_error() | service_unavailable() | internal_failure()

  @type invoke_endpoint_with_response_stream_errors() ::
          validation_error()
          | service_unavailable()
          | model_stream_error()
          | model_error()
          | internal_stream_failure()
          | internal_failure()

  def metadata do
    %{
      api_version: "2017-05-13",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "runtime.sagemaker",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "SageMaker Runtime",
      signature_version: "v4",
      signing_name: "sagemaker",
      target_prefix: nil
    }
  end

  @doc """
  After you deploy a model into production using Amazon SageMaker hosting
  services, your client applications use this API to get inferences from the
  model hosted at the specified endpoint. For an overview of Amazon SageMaker,
  see [How It
  Works](https://docs.aws.amazon.com/sagemaker/latest/dg/how-it-works.html).
  Amazon SageMaker strips all POST headers except those supported by the API.
  Amazon SageMaker might add additional headers. You should not rely on the
  behavior of headers outside those enumerated in the request syntax.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sagemakerruntime%20InvokeEndpoint&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:endpoint_name` (`t:string`) The name of the endpoint that you specified when
    you created the endpoint using the CreateEndpoint API.

  ## Optional parameters:
  * `:accept` (`t:string`) The desired MIME type of the inference response from
    the model container.
  * `:content_type` (`t:string`) The MIME type of the input data in the request
    body.
  * `:custom_attributes` (`t:string`) Provides additional information about a
    request for an inference submitted to a model hosted at an Amazon SageMaker
    endpoint. The information is an opaque value that is forwarded verbatim. You
    could use this value, for example, to provide an ID that you can use to
    track a request or to provide other metadata that a service endpoint was
    programmed to process. The value must consist of no more than 1024 visible
    US-ASCII characters as specified in Section 3.3.6. Field Value Components of
    the Hypertext Transfer Protocol (HTTP/1.1).
  * `:enable_explanations` (`t:string`) An optional JMESPath expression used to
    override the EnableExplanations parameter of the ClarifyExplainerConfig API.
    See the EnableExplanations section in the developer guide for more
    information.
  * `:inference_component_name` (`t:string`) If the endpoint hosts one or more
    inference components, this parameter specifies the name of inference
    component to invoke.
  * `:inference_id` (`t:string`) If you provide a value, it is added to the
    captured data when you enable data capture on the endpoint. For information
    about data capture, see Capture Data.
  * `:target_container_hostname` (`t:string`) If the endpoint hosts multiple
    containers and is configured to use direct invocation, this parameter
    specifies the host name of the container to invoke.
  * `:target_model` (`t:string`) The model to request for inference when invoking
    a multi-model endpoint.
  * `:target_variant` (`t:string`) Specify the production variant to send the
    inference request to when invoking an endpoint that is running two or more
    variants. Note that this parameter overrides the default behavior for the
    endpoint, which is to distribute the invocation traffic based on the variant
    weights.
  """
  @spec invoke_endpoint(AWS.Client.t(), String.t(), invoke_endpoint_input(), Keyword.t()) ::
          {:ok, invoke_endpoint_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invoke_endpoint_errors()}
  def invoke_endpoint(%Client{} = client, endpoint_name, input, options \\ []) do
    url_path = "/endpoints/#{AWS.Util.encode_uri(endpoint_name)}/invocations"

    optional_params = [
      accept: nil,
      content_type: nil,
      custom_attributes: nil,
      enable_explanations: nil,
      inference_component_name: nil,
      inference_id: nil,
      target_container_hostname: nil,
      target_model: nil,
      target_variant: nil
    ]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    {headers, input} =
      [
        {"Accept", "Accept"},
        {"ContentType", "Content-Type"},
        {"CustomAttributes", "X-Amzn-SageMaker-Custom-Attributes"},
        {"EnableExplanations", "X-Amzn-SageMaker-Enable-Explanations"},
        {"InferenceComponentName", "X-Amzn-SageMaker-Inference-Component"},
        {"InferenceId", "X-Amzn-SageMaker-Inference-Id"},
        {"TargetContainerHostname", "X-Amzn-SageMaker-Target-Container-Hostname"},
        {"TargetModel", "X-Amzn-SageMaker-Target-Model"},
        {"TargetVariant", "X-Amzn-SageMaker-Target-Variant"}
      ]
      |> Request.build_params(input)

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"Content-Type", "ContentType"},
          {"X-Amzn-SageMaker-Custom-Attributes", "CustomAttributes"},
          {"x-Amzn-Invoked-Production-Variant", "InvokedProductionVariant"}
        ]
      )

    options =
      Keyword.put(
        options,
        :send_body_as_binary?,
        true
      )

    options =
      Keyword.put(
        options,
        :receive_body_as_binary?,
        true
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :accept,
        :content_type,
        :custom_attributes,
        :enable_explanations,
        :inference_component_name,
        :inference_id,
        :target_container_hostname,
        :target_model,
        :target_variant
      ])

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
  After you deploy a model into production using Amazon SageMaker hosting
  services, your client applications use this API to get inferences from the
  model hosted at the specified endpoint in an asynchronous manner. Inference
  requests sent to this API are enqueued for asynchronous processing. The
  processing of the inference request may or may not complete before you receive
  a response from this API. The response from this API will not contain the
  result of the inference request but contain information about where you can
  locate it.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sagemakerruntime%20InvokeEndpointAsync&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:endpoint_name` (`t:string`) The name of the endpoint that you specified when
    you created the endpoint using the CreateEndpoint API.
  * `:input_location` (`t:string`) The Amazon S3 URI where the inference request
    payload is stored.

  ## Optional parameters:
  * `:accept` (`t:string`) The desired MIME type of the inference response from
    the model container.
  * `:content_type` (`t:string`) The MIME type of the input data in the request
    body.
  * `:custom_attributes` (`t:string`) Provides additional information about a
    request for an inference submitted to a model hosted at an Amazon SageMaker
    endpoint. The information is an opaque value that is forwarded verbatim. You
    could use this value, for example, to provide an ID that you can use to
    track a request or to provide other metadata that a service endpoint was
    programmed to process. The value must consist of no more than 1024 visible
    US-ASCII characters as specified in Section 3.3.6. Field Value Components of
    the Hypertext Transfer Protocol (HTTP/1.1).
  * `:inference_id` (`t:string`) The identifier for the inference request. Amazon
    SageMaker will generate an identifier for you if none is specified.
  * `:invocation_timeout_seconds` (`t:integer`) Maximum amount of time in seconds
    a request can be processed before it is marked as expired. The default is 15
    minutes, or 900 seconds.
  * `:request_t_t_l_seconds` (`t:integer`) Maximum age in seconds a request can be
    in the queue before it is marked as expired. The default is 6 hours, or
    21,600 seconds.
  """
  @spec invoke_endpoint_async(
          AWS.Client.t(),
          String.t(),
          invoke_endpoint_async_input(),
          Keyword.t()
        ) ::
          {:ok, invoke_endpoint_async_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invoke_endpoint_async_errors()}
  def invoke_endpoint_async(%Client{} = client, endpoint_name, input, options \\ []) do
    url_path = "/endpoints/#{AWS.Util.encode_uri(endpoint_name)}/async-invocations"

    optional_params = [
      accept: nil,
      content_type: nil,
      custom_attributes: nil,
      inference_id: nil,
      input_location: nil,
      invocation_timeout_seconds: nil,
      request_t_t_l_seconds: nil
    ]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    {headers, input} =
      [
        {"Accept", "X-Amzn-SageMaker-Accept"},
        {"ContentType", "X-Amzn-SageMaker-Content-Type"},
        {"CustomAttributes", "X-Amzn-SageMaker-Custom-Attributes"},
        {"InferenceId", "X-Amzn-SageMaker-Inference-Id"},
        {"InputLocation", "X-Amzn-SageMaker-InputLocation"},
        {"InvocationTimeoutSeconds", "X-Amzn-SageMaker-InvocationTimeoutSeconds"},
        {"RequestTTLSeconds", "X-Amzn-SageMaker-RequestTTLSeconds"}
      ]
      |> Request.build_params(input)

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"X-Amzn-SageMaker-FailureLocation", "FailureLocation"},
          {"X-Amzn-SageMaker-OutputLocation", "OutputLocation"}
        ]
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :accept,
        :content_type,
        :custom_attributes,
        :inference_id,
        :invocation_timeout_seconds,
        :request_t_t_l_seconds
      ])

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  Invokes a model at the specified endpoint to return the inference response as a
  stream. The inference stream provides the response payload incrementally as a
  series of parts. Before you can get an inference stream, you must have access
  to a model that's deployed using Amazon SageMaker hosting services, and the
  container for that model must support inference streaming. For more
  information that can help you use this API, see the following sections in the
  *Amazon SageMaker Developer Guide*:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sagemakerruntime%20InvokeEndpointWithResponseStream&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:endpoint_name` (`t:string`) The name of the endpoint that you specified when
    you created the endpoint using the CreateEndpoint API.

  ## Optional parameters:
  * `:accept` (`t:string`) The desired MIME type of the inference response from
    the model container.
  * `:content_type` (`t:string`) The MIME type of the input data in the request
    body.
  * `:custom_attributes` (`t:string`) Provides additional information about a
    request for an inference submitted to a model hosted at an Amazon SageMaker
    endpoint. The information is an opaque value that is forwarded verbatim. You
    could use this value, for example, to provide an ID that you can use to
    track a request or to provide other metadata that a service endpoint was
    programmed to process. The value must consist of no more than 1024 visible
    US-ASCII characters as specified in Section 3.3.6. Field Value Components of
    the Hypertext Transfer Protocol (HTTP/1.1).
  * `:inference_component_name` (`t:string`) If the endpoint hosts one or more
    inference components, this parameter specifies the name of inference
    component to invoke for a streaming response.
  * `:inference_id` (`t:string`) An identifier that you assign to your request.
  * `:target_container_hostname` (`t:string`) If the endpoint hosts multiple
    containers and is configured to use direct invocation, this parameter
    specifies the host name of the container to invoke.
  * `:target_variant` (`t:string`) Specify the production variant to send the
    inference request to when invoking an endpoint that is running two or more
    variants. Note that this parameter overrides the default behavior for the
    endpoint, which is to distribute the invocation traffic based on the variant
    weights.
  """
  @spec invoke_endpoint_with_response_stream(
          AWS.Client.t(),
          String.t(),
          invoke_endpoint_with_response_stream_input(),
          Keyword.t()
        ) ::
          {:ok, invoke_endpoint_with_response_stream_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invoke_endpoint_with_response_stream_errors()}
  def invoke_endpoint_with_response_stream(
        %Client{} = client,
        endpoint_name,
        input,
        options \\ []
      ) do
    url_path = "/endpoints/#{AWS.Util.encode_uri(endpoint_name)}/invocations-response-stream"

    optional_params = [
      accept: nil,
      content_type: nil,
      custom_attributes: nil,
      inference_component_name: nil,
      inference_id: nil,
      target_container_hostname: nil,
      target_variant: nil
    ]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    {headers, input} =
      [
        {"Accept", "X-Amzn-SageMaker-Accept"},
        {"ContentType", "Content-Type"},
        {"CustomAttributes", "X-Amzn-SageMaker-Custom-Attributes"},
        {"InferenceComponentName", "X-Amzn-SageMaker-Inference-Component"},
        {"InferenceId", "X-Amzn-SageMaker-Inference-Id"},
        {"TargetContainerHostname", "X-Amzn-SageMaker-Target-Container-Hostname"},
        {"TargetVariant", "X-Amzn-SageMaker-Target-Variant"}
      ]
      |> Request.build_params(input)

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"X-Amzn-SageMaker-Content-Type", "ContentType"},
          {"X-Amzn-SageMaker-Custom-Attributes", "CustomAttributes"},
          {"x-Amzn-Invoked-Production-Variant", "InvokedProductionVariant"}
        ]
      )

    options =
      Keyword.put(
        options,
        :send_body_as_binary?,
        true
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :accept,
        :content_type,
        :custom_attributes,
        :inference_component_name,
        :inference_id,
        :target_container_hostname,
        :target_variant
      ])

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
