# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MediaStoreData do
  @moduledoc """
  An AWS Elemental MediaStore asset is an object, similar to an object in the
  Amazon S3 service. Objects are the fundamental entities that are stored in AWS
  Elemental MediaStore.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      container_not_found_exception() :: %{
        "Message" => String.t()
      }

  """
  @type container_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_object_request() :: %{}

  """
  @type delete_object_request() :: %{}

  @typedoc """

  ## Example:

      delete_object_response() :: %{}

  """
  @type delete_object_response() :: %{}

  @typedoc """

  ## Example:

      describe_object_request() :: %{}

  """
  @type describe_object_request() :: %{}

  @typedoc """

  ## Example:

      describe_object_response() :: %{
        "CacheControl" => String.t(),
        "ContentLength" => float(),
        "ContentType" => String.t(),
        "ETag" => String.t(),
        "LastModified" => non_neg_integer()
      }

  """
  @type describe_object_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_object_request() :: %{
        optional("Range") => String.t()
      }

  """
  @type get_object_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_object_response() :: %{
        "Body" => binary(),
        "CacheControl" => String.t(),
        "ContentLength" => float(),
        "ContentRange" => String.t(),
        "ContentType" => String.t(),
        "ETag" => String.t(),
        "LastModified" => non_neg_integer(),
        "StatusCode" => integer()
      }

  """
  @type get_object_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_error() :: %{
        "Message" => String.t()
      }

  """
  @type internal_server_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      item() :: %{
        "ContentLength" => float(),
        "ContentType" => String.t(),
        "ETag" => String.t(),
        "LastModified" => non_neg_integer(),
        "Name" => String.t(),
        "Type" => list(any())
      }

  """
  @type item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_items_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Path") => String.t()
      }

  """
  @type list_items_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_items_response() :: %{
        "Items" => list(item()()),
        "NextToken" => String.t()
      }

  """
  @type list_items_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      object_not_found_exception() :: %{
        "Message" => String.t()
      }

  """
  @type object_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_object_request() :: %{
        optional("CacheControl") => String.t(),
        optional("ContentType") => String.t(),
        optional("StorageClass") => list(any()),
        optional("UploadAvailability") => list(any()),
        required("Body") => binary()
      }

  """
  @type put_object_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_object_response() :: %{
        "ContentSHA256" => String.t(),
        "ETag" => String.t(),
        "StorageClass" => list(any())
      }

  """
  @type put_object_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      requested_range_not_satisfiable_exception() :: %{
        "Message" => String.t()
      }

  """
  @type requested_range_not_satisfiable_exception() :: %{String.t() => any()}

  @type delete_object_errors() ::
          object_not_found_exception() | internal_server_error() | container_not_found_exception()

  @type describe_object_errors() ::
          object_not_found_exception() | internal_server_error() | container_not_found_exception()

  @type get_object_errors() ::
          requested_range_not_satisfiable_exception()
          | object_not_found_exception()
          | internal_server_error()
          | container_not_found_exception()

  @type list_items_errors() :: internal_server_error() | container_not_found_exception()

  @type put_object_errors() :: internal_server_error() | container_not_found_exception()

  def metadata do
    %{
      api_version: "2017-09-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "data.mediastore",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "MediaStore Data",
      signature_version: "v4",
      signing_name: "mediastore",
      target_prefix: nil
    }
  end

  @doc """
  Deletes an object at the specified path.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediastoredata%20DeleteObject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:path` (`t:string`) The path (including the file name) where the object is
    stored in the container. Format: //

  ## Optional parameters:
  """
  @spec delete_object(AWS.Client.t(), String.t(), delete_object_request(), Keyword.t()) ::
          {:ok, delete_object_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_object_errors()}
  def delete_object(%Client{} = client, path, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_multi_segment_uri(path)}"
    headers = []
    query_params = []

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
  Gets the headers for an object at the specified path.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediastoredata%20DescribeObject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:path` (`t:string`) The path (including the file name) where the object is
    stored in the container. Format: //

  ## Optional parameters:
  """
  @spec describe_object(AWS.Client.t(), String.t(), describe_object_request(), Keyword.t()) ::
          {:ok, describe_object_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_object_errors()}
  def describe_object(%Client{} = client, path, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_multi_segment_uri(path)}"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"Cache-Control", "CacheControl"},
          {"Content-Length", "ContentLength"},
          {"Content-Type", "ContentType"},
          {"ETag", "ETag"},
          {"Last-Modified", "LastModified"}
        ]
      )

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :head,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Downloads the object at the specified path. If the object’s upload availability
  is set to `streaming`, AWS Elemental MediaStore downloads the object even if
  it’s still uploading the object.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediastoredata%20GetObject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:path` (`t:string`) The path (including the file name) where the object is
    stored in the container. Format: //

  ## Optional parameters:
  * `:range` (`t:string`) The range bytes of an object to retrieve. For more
    information about the Range header, see
    http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35. AWS
    Elemental MediaStore ignores this header for partially uploaded objects that
    have streaming upload availability.
  """
  @spec get_object(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_object_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_object_errors()}
  def get_object(%Client{} = client, path, options \\ []) do
    url_path = "/#{AWS.Util.encode_multi_segment_uri(path)}"

    # Validate optional parameters
    optional_params = [range: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :range) do
        [{"Range", opt_val} | headers]
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
          {"Cache-Control", "CacheControl"},
          {"Content-Length", "ContentLength"},
          {"Content-Range", "ContentRange"},
          {"Content-Type", "ContentType"},
          {"ETag", "ETag"},
          {"Last-Modified", "LastModified"}
        ]
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
      |> Keyword.drop([:range])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides a list of metadata entries about folders and objects in the specified
  folder.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediastoredata%20ListItems&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per API
    request. For example, you submit a ListItems request with MaxResults set at
    500. Although 2,000 items match your request, the service returns no more
    than the first 500 items. (The service also returns a NextToken value that
    you can use to fetch the next batch of results.) The service might return
    fewer results than the MaxResults value.
  * `:next_token` (`t:string`) The token that identifies which batch of results
    that you want to see. For example, you submit a ListItems request with
    MaxResults set at 500. The service returns the first batch of results (up to
    500) and a NextToken value. To see the next batch of results, you can submit
    the ListItems request a second time and specify the NextToken value.
  * `:path` (`t:string`) The path in the container from which to retrieve items.
    Format: //
  """
  @spec list_items(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_items_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_items_errors()}
  def list_items(%Client{} = client, options \\ []) do
    url_path = "/"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, path: nil]

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
      if opt_val = Keyword.get(options, :path) do
        [{"Path", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"NextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"MaxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token, :path])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Uploads an object to the specified path. Object sizes are limited to 25 MB for
  standard upload availability and 10 MB for streaming upload availability.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediastoredata%20PutObject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:path` (`t:string`) The path (including the file name) where the object is
    stored in the container. Format: //

  ## Optional parameters:
  * `:cache_control` (`t:string`) An optional CacheControl header that allows the
    caller to control the object's cache behavior. Headers can be passed in as
    specified in the HTTP at
    https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9.
  * `:content_type` (`t:string`) The content type of the object.
  * `:storage_class` (`t:enum["TEMPORAL"]`) Indicates the storage class of a Put
    request. Defaults to high-performance temporal storage class, and objects
    are persisted into durable storage shortly after being received.
  * `:upload_availability` (`t:enum["STANDARD|STREAMING"]`) Indicates the
    availability of an object while it is still uploading. If the value is set
    to streaming, the object is available for downloading after some initial
    buffering but before the object is uploaded completely. If the value is set
    to standard, the object is available for downloading only when it is
    uploaded completely. The default value for this header is standard.
  """
  @spec put_object(AWS.Client.t(), String.t(), put_object_request(), Keyword.t()) ::
          {:ok, put_object_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_object_errors()}
  def put_object(%Client{} = client, path, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_multi_segment_uri(path)}"

    optional_params = [
      cache_control: nil,
      content_type: nil,
      storage_class: nil,
      upload_availability: nil
    ]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    {headers, input} =
      [
        {"CacheControl", "Cache-Control"},
        {"ContentType", "Content-Type"},
        {"StorageClass", "x-amz-storage-class"},
        {"UploadAvailability", "x-amz-upload-availability"}
      ]
      |> Request.build_params(input)

    query_params = []

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
      |> Keyword.drop([:cache_control, :content_type, :storage_class, :upload_availability])

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
