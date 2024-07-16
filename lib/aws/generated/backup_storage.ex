# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.BackupStorage do
  @moduledoc """
  The frontend service for Cryo Storage.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      backup_object() :: %{
        "ChunksCount" => float(),
        "MetadataString" => String.t(),
        "Name" => String.t(),
        "ObjectChecksum" => String.t(),
        "ObjectChecksumAlgorithm" => list(any()),
        "ObjectToken" => String.t()
      }

  """
  @type backup_object() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      chunk() :: %{
        "Checksum" => String.t(),
        "ChecksumAlgorithm" => list(any()),
        "ChunkToken" => String.t(),
        "Index" => float(),
        "Length" => float()
      }

  """
  @type chunk() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_already_exists_exception() :: %{
        "Checksum" => String.t(),
        "ChecksumAlgorithm" => String.t(),
        "Message" => String.t()
      }

  """
  @type data_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_object_input() :: %{}

  """
  @type delete_object_input() :: %{}

  @typedoc """

  ## Example:

      get_chunk_input() :: %{}

  """
  @type get_chunk_input() :: %{}

  @typedoc """

  ## Example:

      get_chunk_output() :: %{
        "Checksum" => String.t(),
        "ChecksumAlgorithm" => list(any()),
        "Data" => binary(),
        "Length" => float()
      }

  """
  @type get_chunk_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_object_metadata_input() :: %{}

  """
  @type get_object_metadata_input() :: %{}

  @typedoc """

  ## Example:

      get_object_metadata_output() :: %{
        "MetadataBlob" => binary(),
        "MetadataBlobChecksum" => String.t(),
        "MetadataBlobChecksumAlgorithm" => list(any()),
        "MetadataBlobLength" => float(),
        "MetadataString" => String.t()
      }

  """
  @type get_object_metadata_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      illegal_argument_exception() :: %{
        "Message" => String.t()
      }

  """
  @type illegal_argument_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kms_invalid_key_usage_exception() :: %{
        "Message" => String.t()
      }

  """
  @type kms_invalid_key_usage_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_chunks_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_chunks_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_chunks_output() :: %{
        "ChunkList" => list(chunk()()),
        "NextToken" => String.t()
      }

  """
  @type list_chunks_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_objects_input() :: %{
        optional("CreatedAfter") => non_neg_integer(),
        optional("CreatedBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("StartingObjectName") => String.t(),
        optional("StartingObjectPrefix") => String.t()
      }

  """
  @type list_objects_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_objects_output() :: %{
        "NextToken" => String.t(),
        "ObjectList" => list(backup_object()())
      }

  """
  @type list_objects_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      not_readable_input_stream_exception() :: %{
        "Message" => String.t()
      }

  """
  @type not_readable_input_stream_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      notify_object_complete_input() :: %{
        optional("MetadataBlob") => binary(),
        optional("MetadataBlobChecksum") => String.t(),
        optional("MetadataBlobChecksumAlgorithm") => list(any()),
        optional("MetadataBlobLength") => float(),
        optional("MetadataString") => String.t(),
        required("ObjectChecksum") => String.t(),
        required("ObjectChecksumAlgorithm") => list(any())
      }

  """
  @type notify_object_complete_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      notify_object_complete_output() :: %{
        "ObjectChecksum" => String.t(),
        "ObjectChecksumAlgorithm" => list(any())
      }

  """
  @type notify_object_complete_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_chunk_input() :: %{
        required("Checksum") => String.t(),
        required("ChecksumAlgorithm") => list(any()),
        required("Data") => binary(),
        required("Length") => float()
      }

  """
  @type put_chunk_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_chunk_output() :: %{
        "ChunkChecksum" => String.t(),
        "ChunkChecksumAlgorithm" => list(any())
      }

  """
  @type put_chunk_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_object_input() :: %{
        optional("InlineChunk") => binary(),
        optional("InlineChunkChecksum") => String.t(),
        optional("InlineChunkChecksumAlgorithm") => String.t(),
        optional("InlineChunkLength") => float(),
        optional("MetadataString") => String.t(),
        optional("ObjectChecksum") => String.t(),
        optional("ObjectChecksumAlgorithm") => list(any()),
        optional("ThrowOnDuplicate") => boolean()
      }

  """
  @type put_object_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_object_output() :: %{
        "InlineChunkChecksum" => String.t(),
        "InlineChunkChecksumAlgorithm" => list(any()),
        "ObjectChecksum" => String.t(),
        "ObjectChecksumAlgorithm" => list(any())
      }

  """
  @type put_object_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      retryable_exception() :: %{
        "Message" => String.t()
      }

  """
  @type retryable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_internal_exception() :: %{
        "Message" => String.t()
      }

  """
  @type service_internal_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_unavailable_exception() :: %{
        "Message" => String.t()
      }

  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_object_input() :: %{
        optional("ThrowOnDuplicate") => boolean()
      }

  """
  @type start_object_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_object_output() :: %{
        "UploadId" => String.t()
      }

  """
  @type start_object_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => String.t()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @type delete_object_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | service_internal_exception()
          | retryable_exception()
          | resource_not_found_exception()
          | illegal_argument_exception()
          | access_denied_exception()

  @type get_chunk_errors() ::
          throttling_exception()
          | service_internal_exception()
          | retryable_exception()
          | resource_not_found_exception()
          | kms_invalid_key_usage_exception()
          | illegal_argument_exception()
          | access_denied_exception()

  @type get_object_metadata_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | service_internal_exception()
          | retryable_exception()
          | resource_not_found_exception()
          | kms_invalid_key_usage_exception()
          | illegal_argument_exception()
          | access_denied_exception()

  @type list_chunks_errors() ::
          service_unavailable_exception()
          | service_internal_exception()
          | retryable_exception()
          | resource_not_found_exception()
          | illegal_argument_exception()
          | access_denied_exception()

  @type list_objects_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | service_internal_exception()
          | retryable_exception()
          | resource_not_found_exception()
          | kms_invalid_key_usage_exception()
          | illegal_argument_exception()
          | access_denied_exception()

  @type notify_object_complete_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | service_internal_exception()
          | retryable_exception()
          | not_readable_input_stream_exception()
          | kms_invalid_key_usage_exception()
          | illegal_argument_exception()
          | access_denied_exception()

  @type put_chunk_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | service_internal_exception()
          | retryable_exception()
          | not_readable_input_stream_exception()
          | kms_invalid_key_usage_exception()
          | illegal_argument_exception()
          | access_denied_exception()

  @type put_object_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | service_internal_exception()
          | retryable_exception()
          | not_readable_input_stream_exception()
          | kms_invalid_key_usage_exception()
          | illegal_argument_exception()
          | access_denied_exception()

  @type start_object_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | service_internal_exception()
          | retryable_exception()
          | resource_not_found_exception()
          | illegal_argument_exception()
          | data_already_exists_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2018-04-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "backupstorage",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "BackupStorage",
      signature_version: "v4",
      signing_name: "backup-storage",
      target_prefix: nil
    }
  end

  @doc """
  Delete Object from the incremental base Backup.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backupstorage%20DeleteObject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:backup_job_id` (`t:string`)
  * `:object_name` (`t:string`)

  ## Optional parameters:
  """
  @spec delete_object(AWS.Client.t(), String.t(), String.t(), delete_object_input(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_object_errors()}
  def delete_object(%Client{} = client, backup_job_id, object_name, input, options \\ []) do
    url_path =
      "/backup-jobs/#{AWS.Util.encode_uri(backup_job_id)}/object/#{AWS.Util.encode_uri(object_name)}"

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
  Gets the specified object's chunk.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backupstorage%20GetChunk&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:chunk_token` (`t:string`)
  * `:storage_job_id` (`t:string`)

  ## Optional parameters:
  """
  @spec get_chunk(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_chunk_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_chunk_errors()}
  def get_chunk(%Client{} = client, chunk_token, storage_job_id, options \\ []) do
    url_path =
      "/restore-jobs/#{AWS.Util.encode_uri(storage_job_id)}/chunk/#{AWS.Util.encode_uri(chunk_token)}"

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
        [
          {"x-amz-checksum", "Checksum"},
          {"x-amz-checksum-algorithm", "ChecksumAlgorithm"},
          {"x-amz-data-length", "Length"}
        ]
      )

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get metadata associated with an Object.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backupstorage%20GetObjectMetadata&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:object_token` (`t:string`)
  * `:storage_job_id` (`t:string`)

  ## Optional parameters:
  """
  @spec get_object_metadata(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_object_metadata_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_object_metadata_errors()}
  def get_object_metadata(%Client{} = client, object_token, storage_job_id, options \\ []) do
    url_path =
      "/restore-jobs/#{AWS.Util.encode_uri(storage_job_id)}/object/#{AWS.Util.encode_uri(object_token)}/metadata"

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
        [
          {"x-amz-checksum", "MetadataBlobChecksum"},
          {"x-amz-checksum-algorithm", "MetadataBlobChecksumAlgorithm"},
          {"x-amz-data-length", "MetadataBlobLength"},
          {"x-amz-metadata-string", "MetadataString"}
        ]
      )

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List chunks in a given Object

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backupstorage%20ListChunks&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:object_token` (`t:string`)
  * `:storage_job_id` (`t:string`)

  ## Optional parameters:
  * `:max_results` (`t:integer`)
  * `:next_token` (`t:string`)
  """
  @spec list_chunks(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_chunks_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_chunks_errors()}
  def list_chunks(%Client{} = client, object_token, storage_job_id, options \\ []) do
    url_path =
      "/restore-jobs/#{AWS.Util.encode_uri(storage_job_id)}/chunks/#{AWS.Util.encode_uri(object_token)}/list"

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
        [{"next-token", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"max-results", opt_val} | query_params]
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
  List all Objects in a given Backup.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backupstorage%20ListObjects&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:storage_job_id` (`t:string`)

  ## Optional parameters:
  * `:created_after` (`t:timestamp`)
  * `:created_before` (`t:timestamp`)
  * `:max_results` (`t:integer`)
  * `:next_token` (`t:string`)
  * `:starting_object_name` (`t:string`)
  * `:starting_object_prefix` (`t:string`)
  """
  @spec list_objects(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_objects_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_objects_errors()}
  def list_objects(%Client{} = client, storage_job_id, options \\ []) do
    url_path = "/restore-jobs/#{AWS.Util.encode_uri(storage_job_id)}/objects/list"

    # Validate optional parameters
    optional_params = [
      created_after: nil,
      created_before: nil,
      max_results: nil,
      next_token: nil,
      starting_object_name: nil,
      starting_object_prefix: nil
    ]

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
      if opt_val = Keyword.get(options, :starting_object_prefix) do
        [{"starting-object-prefix", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :starting_object_name) do
        [{"starting-object-name", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"next-token", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"max-results", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :created_before) do
        [{"created-before", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :created_after) do
        [{"created-after", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :created_after,
        :created_before,
        :max_results,
        :next_token,
        :starting_object_name,
        :starting_object_prefix
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Complete upload

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backupstorage%20NotifyObjectComplete&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:backup_job_id` (`t:string`)
  * `:upload_id` (`t:string`)
  * `:object_checksum` (`t:string`)
  * `:object_checksum_algorithm` (`t:enum["SUMMARY"]`)

  ## Optional parameters:
  * `:metadata_blob_checksum` (`t:string`)
  * `:metadata_blob_checksum_algorithm` (`t:enum["SHA256"]`)
  * `:metadata_blob_length` (`t:long`)
  * `:metadata_string` (`t:string`)
  """
  @spec notify_object_complete(
          AWS.Client.t(),
          String.t(),
          String.t(),
          notify_object_complete_input(),
          Keyword.t()
        ) ::
          {:ok, notify_object_complete_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, notify_object_complete_errors()}
  def notify_object_complete(%Client{} = client, backup_job_id, upload_id, input, options \\ []) do
    url_path =
      "/backup-jobs/#{AWS.Util.encode_uri(backup_job_id)}/object/#{AWS.Util.encode_uri(upload_id)}/complete"

    headers = []

    {query_params, input} =
      [
        {"MetadataBlobChecksum", "metadata-checksum"},
        {"MetadataBlobChecksumAlgorithm", "metadata-checksum-algorithm"},
        {"MetadataBlobLength", "metadata-blob-length"},
        {"MetadataString", "metadata-string"},
        {"ObjectChecksum", "checksum"},
        {"ObjectChecksumAlgorithm", "checksum-algorithm"}
      ]
      |> Request.build_params(input)

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :metadata_blob_checksum,
        :metadata_blob_checksum_algorithm,
        :metadata_blob_length,
        :metadata_string
      ])

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Upload chunk.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backupstorage%20PutChunk&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:backup_job_id` (`t:string`)
  * `:chunk_index` (`t:long`)
  * `:upload_id` (`t:string`)
  * `:checksum` (`t:string`)
  * `:checksum_algorithm` (`t:enum["SHA256"]`)
  * `:length` (`t:long`)

  ## Optional parameters:
  """
  @spec put_chunk(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          put_chunk_input(),
          Keyword.t()
        ) ::
          {:ok, put_chunk_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_chunk_errors()}
  def put_chunk(%Client{} = client, backup_job_id, chunk_index, upload_id, input, options \\ []) do
    url_path =
      "/backup-jobs/#{AWS.Util.encode_uri(backup_job_id)}/chunk/#{AWS.Util.encode_uri(upload_id)}/#{AWS.Util.encode_uri(chunk_index)}"

    headers = []

    {query_params, input} =
      [
        {"Checksum", "checksum"},
        {"ChecksumAlgorithm", "checksum-algorithm"},
        {"Length", "length"}
      ]
      |> Request.build_params(input)

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Upload object that can store object metadata String and data blob in single API
  call using inline chunk field.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backupstorage%20PutObject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:backup_job_id` (`t:string`)
  * `:object_name` (`t:string`)

  ## Optional parameters:
  * `:inline_chunk_checksum` (`t:string`)
  * `:inline_chunk_checksum_algorithm` (`t:string`)
  * `:inline_chunk_length` (`t:long`)
  * `:metadata_string` (`t:string`)
  * `:object_checksum` (`t:string`)
  * `:object_checksum_algorithm` (`t:enum["SUMMARY"]`)
  * `:throw_on_duplicate` (`t:boolean`)
  """
  @spec put_object(AWS.Client.t(), String.t(), String.t(), put_object_input(), Keyword.t()) ::
          {:ok, put_object_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_object_errors()}
  def put_object(%Client{} = client, backup_job_id, object_name, input, options \\ []) do
    url_path =
      "/backup-jobs/#{AWS.Util.encode_uri(backup_job_id)}/object/#{AWS.Util.encode_uri(object_name)}/put-object"

    headers = []

    {query_params, input} =
      [
        {"InlineChunkChecksum", "checksum"},
        {"InlineChunkChecksumAlgorithm", "checksum-algorithm"},
        {"InlineChunkLength", "length"},
        {"MetadataString", "metadata-string"},
        {"ObjectChecksum", "object-checksum"},
        {"ObjectChecksumAlgorithm", "object-checksum-algorithm"},
        {"ThrowOnDuplicate", "throwOnDuplicate"}
      ]
      |> Request.build_params(input)

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :inline_chunk_checksum,
        :inline_chunk_checksum_algorithm,
        :inline_chunk_length,
        :metadata_string,
        :object_checksum,
        :object_checksum_algorithm,
        :throw_on_duplicate
      ])

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Start upload containing one or many chunks.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=backupstorage%20StartObject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:backup_job_id` (`t:string`)
  * `:object_name` (`t:string`)

  ## Optional parameters:
  """
  @spec start_object(AWS.Client.t(), String.t(), String.t(), start_object_input(), Keyword.t()) ::
          {:ok, start_object_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_object_errors()}
  def start_object(%Client{} = client, backup_job_id, object_name, input, options \\ []) do
    url_path =
      "/backup-jobs/#{AWS.Util.encode_uri(backup_job_id)}/object/#{AWS.Util.encode_uri(object_name)}"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
