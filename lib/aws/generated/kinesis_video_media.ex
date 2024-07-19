# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.KinesisVideoMedia do
  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      client_limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type client_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      connection_limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type connection_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_media_input() :: %{
        optional("StreamARN") => String.t(),
        optional("StreamName") => String.t(),
        required("StartSelector") => start_selector()
      }
      
  """
  @type get_media_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_media_output() :: %{
        "ContentType" => String.t(),
        "Payload" => binary()
      }
      
  """
  @type get_media_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_argument_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_argument_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_endpoint_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_endpoint_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      not_authorized_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type not_authorized_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_selector() :: %{
        "AfterFragmentNumber" => String.t(),
        "ContinuationToken" => String.t(),
        "StartSelectorType" => list(any()),
        "StartTimestamp" => non_neg_integer()
      }
      
  """
  @type start_selector() :: %{String.t() => any()}

  @type get_media_errors() ::
          resource_not_found_exception()
          | not_authorized_exception()
          | invalid_endpoint_exception()
          | invalid_argument_exception()
          | connection_limit_exceeded_exception()
          | client_limit_exceeded_exception()

  def metadata do
    %{
      api_version: "2017-09-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "kinesisvideo",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Kinesis Video Media",
      signature_version: "v4",
      signing_name: "kinesisvideo",
      target_prefix: nil
    }
  end

  @doc """
  Use this API to retrieve media content from a Kinesis video stream. In the
  request, you identify the stream name or stream Amazon Resource Name (ARN),
  and the starting chunk. Kinesis Video Streams then returns a stream of chunks
  in order by fragment number. You must first call the `GetDataEndpoint` API to
  get an endpoint. Then send the `GetMedia` requests to this endpoint using the
  [--endpoint-url parameter](https://docs.aws.amazon.com/cli/latest/reference/).
  When you put media data (fragments) on a stream, Kinesis Video Streams stores
  each incoming fragment and related metadata in what is called a "chunk." For
  more information, see
  [PutMedia](https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/API_dataplane_PutMedia.html).
  The `GetMedia` API returns a stream of these chunks starting from the chunk
  that you specify in the request.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kinesisvideomedia%20GetMedia&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec get_media(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_media_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_media_errors()}

  def get_media(%Client{} = client, options \\ []) do
    url_path = "/getMedia"

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
    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Content-Type", "ContentType"}]
      )

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Content-Type", "ContentType"}]
      )

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end
end
