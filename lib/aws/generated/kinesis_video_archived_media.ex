# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.KinesisVideoArchivedMedia do
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
      
      clip_fragment_selector() :: %{
        "FragmentSelectorType" => list(any()),
        "TimestampRange" => clip_timestamp_range()
      }
      
  """
  @type clip_fragment_selector() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      clip_timestamp_range() :: %{
        "EndTimestamp" => non_neg_integer(),
        "StartTimestamp" => non_neg_integer()
      }
      
  """
  @type clip_timestamp_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dash_fragment_selector() :: %{
        "FragmentSelectorType" => list(any()),
        "TimestampRange" => dash_timestamp_range()
      }
      
  """
  @type dash_fragment_selector() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dash_timestamp_range() :: %{
        "EndTimestamp" => non_neg_integer(),
        "StartTimestamp" => non_neg_integer()
      }
      
  """
  @type dash_timestamp_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      fragment() :: %{
        "FragmentLengthInMilliseconds" => float(),
        "FragmentNumber" => String.t(),
        "FragmentSizeInBytes" => float(),
        "ProducerTimestamp" => non_neg_integer(),
        "ServerTimestamp" => non_neg_integer()
      }
      
  """
  @type fragment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      fragment_selector() :: %{
        "FragmentSelectorType" => list(any()),
        "TimestampRange" => timestamp_range()
      }
      
  """
  @type fragment_selector() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_clip_input() :: %{
        optional("StreamARN") => String.t(),
        optional("StreamName") => String.t(),
        required("ClipFragmentSelector") => clip_fragment_selector()
      }
      
  """
  @type get_clip_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_clip_output() :: %{
        "ContentType" => String.t(),
        "Payload" => binary()
      }
      
  """
  @type get_clip_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_dash_streaming_session_url_input() :: %{
        optional("DASHFragmentSelector") => dash_fragment_selector(),
        optional("DisplayFragmentNumber") => list(any()),
        optional("DisplayFragmentTimestamp") => list(any()),
        optional("Expires") => integer(),
        optional("MaxManifestFragmentResults") => float(),
        optional("PlaybackMode") => list(any()),
        optional("StreamARN") => String.t(),
        optional("StreamName") => String.t()
      }
      
  """
  @type get_dash_streaming_session_url_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_dash_streaming_session_url_output() :: %{
        "DASHStreamingSessionURL" => String.t()
      }
      
  """
  @type get_dash_streaming_session_url_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_hls_streaming_session_url_input() :: %{
        optional("ContainerFormat") => list(any()),
        optional("DiscontinuityMode") => list(any()),
        optional("DisplayFragmentTimestamp") => list(any()),
        optional("Expires") => integer(),
        optional("HLSFragmentSelector") => hls_fragment_selector(),
        optional("MaxMediaPlaylistFragmentResults") => float(),
        optional("PlaybackMode") => list(any()),
        optional("StreamARN") => String.t(),
        optional("StreamName") => String.t()
      }
      
  """
  @type get_hls_streaming_session_url_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_hls_streaming_session_url_output() :: %{
        "HLSStreamingSessionURL" => String.t()
      }
      
  """
  @type get_hls_streaming_session_url_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_images_input() :: %{
        optional("FormatConfig") => map(),
        optional("HeightPixels") => integer(),
        optional("MaxResults") => float(),
        optional("NextToken") => String.t(),
        optional("SamplingInterval") => integer(),
        optional("StreamARN") => String.t(),
        optional("StreamName") => String.t(),
        optional("WidthPixels") => integer(),
        required("EndTimestamp") => non_neg_integer(),
        required("Format") => list(any()),
        required("ImageSelectorType") => list(any()),
        required("StartTimestamp") => non_neg_integer()
      }
      
  """
  @type get_images_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_images_output() :: %{
        "Images" => list(image()()),
        "NextToken" => String.t()
      }
      
  """
  @type get_images_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_media_for_fragment_list_input() :: %{
        optional("StreamARN") => String.t(),
        optional("StreamName") => String.t(),
        required("Fragments") => list(String.t()())
      }
      
  """
  @type get_media_for_fragment_list_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_media_for_fragment_list_output() :: %{
        "ContentType" => String.t(),
        "Payload" => binary()
      }
      
  """
  @type get_media_for_fragment_list_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hls_fragment_selector() :: %{
        "FragmentSelectorType" => list(any()),
        "TimestampRange" => hls_timestamp_range()
      }
      
  """
  @type hls_fragment_selector() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hls_timestamp_range() :: %{
        "EndTimestamp" => non_neg_integer(),
        "StartTimestamp" => non_neg_integer()
      }
      
  """
  @type hls_timestamp_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image() :: %{
        "Error" => list(any()),
        "ImageContent" => String.t(),
        "TimeStamp" => non_neg_integer()
      }
      
  """
  @type image() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_argument_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_argument_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_codec_private_data_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_codec_private_data_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_media_frame_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_media_frame_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_fragments_input() :: %{
        optional("FragmentSelector") => fragment_selector(),
        optional("MaxResults") => float(),
        optional("NextToken") => String.t(),
        optional("StreamARN") => String.t(),
        optional("StreamName") => String.t()
      }
      
  """
  @type list_fragments_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_fragments_output() :: %{
        "Fragments" => list(fragment()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_fragments_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      missing_codec_private_data_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type missing_codec_private_data_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      no_data_retention_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type no_data_retention_exception() :: %{String.t() => any()}

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
      
      timestamp_range() :: %{
        "EndTimestamp" => non_neg_integer(),
        "StartTimestamp" => non_neg_integer()
      }
      
  """
  @type timestamp_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_stream_media_type_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type unsupported_stream_media_type_exception() :: %{String.t() => any()}

  @type get_clip_errors() ::
          unsupported_stream_media_type_exception()
          | resource_not_found_exception()
          | not_authorized_exception()
          | no_data_retention_exception()
          | missing_codec_private_data_exception()
          | invalid_media_frame_exception()
          | invalid_codec_private_data_exception()
          | invalid_argument_exception()
          | client_limit_exceeded_exception()

  @type get_dash_streaming_session_url_errors() ::
          unsupported_stream_media_type_exception()
          | resource_not_found_exception()
          | not_authorized_exception()
          | no_data_retention_exception()
          | missing_codec_private_data_exception()
          | invalid_codec_private_data_exception()
          | invalid_argument_exception()
          | client_limit_exceeded_exception()

  @type get_hls_streaming_session_url_errors() ::
          unsupported_stream_media_type_exception()
          | resource_not_found_exception()
          | not_authorized_exception()
          | no_data_retention_exception()
          | missing_codec_private_data_exception()
          | invalid_codec_private_data_exception()
          | invalid_argument_exception()
          | client_limit_exceeded_exception()

  @type get_images_errors() ::
          resource_not_found_exception()
          | not_authorized_exception()
          | no_data_retention_exception()
          | invalid_argument_exception()
          | client_limit_exceeded_exception()

  @type get_media_for_fragment_list_errors() ::
          resource_not_found_exception()
          | not_authorized_exception()
          | invalid_argument_exception()
          | client_limit_exceeded_exception()

  @type list_fragments_errors() ::
          resource_not_found_exception()
          | not_authorized_exception()
          | invalid_argument_exception()
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
      service_id: "Kinesis Video Archived Media",
      signature_version: "v4",
      signing_name: "kinesisvideo",
      target_prefix: nil
    }
  end

  @doc """
  Downloads an MP4 file (clip) containing the archived, on-demand media from the
  specified video stream over the specified time range. Both the StreamName and
  the StreamARN parameters are optional, but you must specify either the
  StreamName or the StreamARN when invoking this API operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kinesisvideoarchivedmedia%20GetClip&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec get_clip(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_clip_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_clip_errors()}
  def get_clip(%Client{} = client, options \\ []) do
    url_path = "/getClip"

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

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Retrieves an MPEG Dynamic Adaptive Streaming over HTTP (DASH) URL for the
  stream. You can then open the URL in a media player to view the stream
  contents. Both the `StreamName` and the `StreamARN` parameters are optional,
  but you must specify either the `StreamName` or the `StreamARN` when invoking
  this API operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kinesisvideoarchivedmedia%20GetDASHStreamingSessionURL&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec get_dash_streaming_session_url(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_dash_streaming_session_url_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_dash_streaming_session_url_errors()}
  def get_dash_streaming_session_url(%Client{} = client, options \\ []) do
    url_path = "/getDASHStreamingSessionURL"

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
  Retrieves an HTTP Live Streaming (HLS) URL for the stream. You can then open the
  URL in a browser or media player to view the stream contents. Both the
  `StreamName` and the `StreamARN` parameters are optional, but you must specify
  either the `StreamName` or the `StreamARN` when invoking this API operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kinesisvideoarchivedmedia%20GetHLSStreamingSessionURL&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec get_hls_streaming_session_url(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_hls_streaming_session_url_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_hls_streaming_session_url_errors()}
  def get_hls_streaming_session_url(%Client{} = client, options \\ []) do
    url_path = "/getHLSStreamingSessionURL"

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
  Retrieves a list of images corresponding to each timestamp for a given time
  range, sampling interval, and image format configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kinesisvideoarchivedmedia%20GetImages&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec get_images(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_images_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_images_errors()}
  def get_images(%Client{} = client, options \\ []) do
    url_path = "/getImages"

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
  Gets media for a list of fragments (specified by fragment number) from the
  archived data in an Amazon Kinesis video stream. You must first call the
  `GetDataEndpoint` API to get an endpoint. Then send the
  `GetMediaForFragmentList` requests to this endpoint using the [--endpoint-url
  parameter](https://docs.aws.amazon.com/cli/latest/reference/). For limits, see
  [Kinesis Video Streams
  Limits](http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/limits.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kinesisvideoarchivedmedia%20GetMediaForFragmentList&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec get_media_for_fragment_list(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_media_for_fragment_list_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_media_for_fragment_list_errors()}
  def get_media_for_fragment_list(%Client{} = client, options \\ []) do
    url_path = "/getMediaForFragmentList"

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

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Returns a list of `Fragment` objects from the specified stream and timestamp
  range within the archived data. Listing fragments is eventually consistent.
  This means that even if the producer receives an acknowledgment that a
  fragment is persisted, the result might not be returned immediately from a
  request to `ListFragments`. However, results are typically available in less
  than one second.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kinesisvideoarchivedmedia%20ListFragments&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec list_fragments(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_fragments_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_fragments_errors()}
  def list_fragments(%Client{} = client, options \\ []) do
    url_path = "/listFragments"

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
end
