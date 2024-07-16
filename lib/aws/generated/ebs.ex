# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.EBS do
  @moduledoc """
  You can use the Amazon Elastic Block Store (Amazon EBS) direct APIs to create
  Amazon EBS snapshots, write data directly to your snapshots, read data on your
  snapshots, and identify the differences or changes between two snapshots. If
  you’re an independent software vendor (ISV) who offers backup services for
  Amazon EBS, the EBS direct APIs make it more efficient and cost-effective to
  track incremental changes on your Amazon EBS volumes through snapshots. This
  can be done without having to create new volumes from snapshots, and then use
  Amazon Elastic Compute Cloud (Amazon EC2) instances to compare the
  differences. You can create incremental snapshots directly from data
  on-premises into volumes and the cloud to use for quick disaster recovery.
  With the ability to write and read snapshots, you can write your on-premises
  data to an snapshot during a disaster. Then after recovery, you can restore it
  back to Amazon Web Services or on-premises from the snapshot. You no longer
  need to build and maintain complex mechanisms to copy data to and from Amazon
  EBS.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => String.t(),
        "Reason" => list(any())
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      block() :: %{
        "BlockIndex" => integer(),
        "BlockToken" => String.t()
      }

  """
  @type block() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      changed_block() :: %{
        "BlockIndex" => integer(),
        "FirstBlockToken" => String.t(),
        "SecondBlockToken" => String.t()
      }

  """
  @type changed_block() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      complete_snapshot_request() :: %{
        optional("Checksum") => String.t(),
        optional("ChecksumAggregationMethod") => list(any()),
        optional("ChecksumAlgorithm") => list(any()),
        required("ChangedBlocksCount") => integer()
      }

  """
  @type complete_snapshot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      complete_snapshot_response() :: %{
        "Status" => list(any())
      }

  """
  @type complete_snapshot_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      concurrent_limit_exceeded_exception() :: %{
        "Message" => String.t()
      }

  """
  @type concurrent_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_snapshot_block_request() :: %{
        required("BlockToken") => String.t()
      }

  """
  @type get_snapshot_block_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_snapshot_block_response() :: %{
        "BlockData" => binary(),
        "Checksum" => String.t(),
        "ChecksumAlgorithm" => list(any()),
        "DataLength" => integer()
      }

  """
  @type get_snapshot_block_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_changed_blocks_request() :: %{
        optional("FirstSnapshotId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("StartingBlockIndex") => integer()
      }

  """
  @type list_changed_blocks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_changed_blocks_response() :: %{
        "BlockSize" => integer(),
        "ChangedBlocks" => list(changed_block()()),
        "ExpiryTime" => non_neg_integer(),
        "NextToken" => String.t(),
        "VolumeSize" => float()
      }

  """
  @type list_changed_blocks_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_snapshot_blocks_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("StartingBlockIndex") => integer()
      }

  """
  @type list_snapshot_blocks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_snapshot_blocks_response() :: %{
        "BlockSize" => integer(),
        "Blocks" => list(block()()),
        "ExpiryTime" => non_neg_integer(),
        "NextToken" => String.t(),
        "VolumeSize" => float()
      }

  """
  @type list_snapshot_blocks_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_snapshot_block_request() :: %{
        optional("Progress") => integer(),
        required("BlockData") => binary(),
        required("Checksum") => String.t(),
        required("ChecksumAlgorithm") => list(any()),
        required("DataLength") => integer()
      }

  """
  @type put_snapshot_block_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_snapshot_block_response() :: %{
        "Checksum" => String.t(),
        "ChecksumAlgorithm" => list(any())
      }

  """
  @type put_snapshot_block_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      request_throttled_exception() :: %{
        "Message" => String.t(),
        "Reason" => list(any())
      }

  """
  @type request_throttled_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t(),
        "Reason" => list(any())
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "Message" => String.t(),
        "Reason" => list(any())
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_snapshot_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Description") => String.t(),
        optional("Encrypted") => boolean(),
        optional("KmsKeyArn") => String.t(),
        optional("ParentSnapshotId") => String.t(),
        optional("Tags") => list(tag()()),
        optional("Timeout") => integer(),
        required("VolumeSize") => float()
      }

  """
  @type start_snapshot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_snapshot_response() :: %{
        "BlockSize" => integer(),
        "Description" => String.t(),
        "KmsKeyArn" => String.t(),
        "OwnerId" => String.t(),
        "ParentSnapshotId" => String.t(),
        "SnapshotId" => String.t(),
        "SseType" => list(any()),
        "StartTime" => non_neg_integer(),
        "Status" => list(any()),
        "Tags" => list(tag()()),
        "VolumeSize" => float()
      }

  """
  @type start_snapshot_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }

  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Message" => String.t(),
        "Reason" => list(any())
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @type complete_snapshot_errors() ::
          validation_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | request_throttled_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_snapshot_block_errors() ::
          validation_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | request_throttled_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_changed_blocks_errors() ::
          validation_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | request_throttled_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_snapshot_blocks_errors() ::
          validation_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | request_throttled_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type put_snapshot_block_errors() ::
          validation_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | request_throttled_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type start_snapshot_errors() ::
          validation_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | request_throttled_exception()
          | internal_server_exception()
          | conflict_exception()
          | concurrent_limit_exceeded_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2019-11-02",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "ebs",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "EBS",
      signature_version: "v4",
      signing_name: "ebs",
      target_prefix: nil
    }
  end

  @doc """
  Seals and completes the snapshot after all of the required blocks of data have
  been written to it. Completing the snapshot changes the status to `completed`.
  You cannot write new blocks to a snapshot after it has been completed.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ebs%20CompleteSnapshot&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:snapshot_id` (`t:string`) The ID of the snapshot.
  * `:changed_blocks_count` (`t:integer`) The number of blocks that were written
    to the snapshot.

  ## Optional parameters:
  * `:checksum` (`t:string`) An aggregated Base-64 SHA256 checksum based on the
    checksums of each written block.
  * `:checksum_aggregation_method` (`t:enum["CHECKSUM_AGGREGATION_LINEAR"]`) The
    aggregation method used to generate the checksum. Currently, the only
    supported aggregation method is LINEAR.
  * `:checksum_algorithm` (`t:enum["CHECKSUM_ALGORITHM_SHA256"]`) The algorithm
    used to generate the checksum. Currently, the only supported algorithm is
    SHA256.
  """
  @spec complete_snapshot(AWS.Client.t(), String.t(), complete_snapshot_request(), Keyword.t()) ::
          {:ok, complete_snapshot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, complete_snapshot_errors()}
  def complete_snapshot(%Client{} = client, snapshot_id, input, options \\ []) do
    url_path = "/snapshots/completion/#{AWS.Util.encode_uri(snapshot_id)}"

    optional_params = [
      changed_blocks_count: nil,
      checksum: nil,
      checksum_aggregation_method: nil,
      checksum_algorithm: nil
    ]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    {headers, input} =
      [
        {"ChangedBlocksCount", "x-amz-ChangedBlocksCount"},
        {"Checksum", "x-amz-Checksum"},
        {"ChecksumAggregationMethod", "x-amz-Checksum-Aggregation-Method"},
        {"ChecksumAlgorithm", "x-amz-Checksum-Algorithm"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:checksum, :checksum_aggregation_method, :checksum_algorithm])

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
  Returns the data in a block in an Amazon Elastic Block Store snapshot.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ebs%20GetSnapshotBlock&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:block_index` (`t:integer`) The block index of the block in which to read the
    data. A block index is a logical index in units of 512 KiB blocks. To
    identify the block index, divide the logical offset of the data in the
    logical volume by the block size (logical offset of data/524288). The
    logical offset of the data must be 512 KiB aligned.
  * `:snapshot_id` (`t:string`) The ID of the snapshot containing the block from
    which to get data.
  * `:block_token` (`t:string`) The block token of the block from which to get
    data. You can obtain the BlockToken by running the ListChangedBlocks or
    ListSnapshotBlocks operations.

  ## Optional parameters:
  """
  @spec get_snapshot_block(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_snapshot_block_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_snapshot_block_errors()}
  def get_snapshot_block(%Client{} = client, block_index, snapshot_id, block_token, options \\ []) do
    url_path =
      "/snapshots/#{AWS.Util.encode_uri(snapshot_id)}/blocks/#{AWS.Util.encode_uri(block_index)}"

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
    query_params = [{"blockToken", block_token}]

    # Optional query params
    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amz-Checksum", "Checksum"},
          {"x-amz-Checksum-Algorithm", "ChecksumAlgorithm"},
          {"x-amz-Data-Length", "DataLength"}
        ]
      )

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about the blocks that are different between two Amazon
  Elastic Block Store snapshots of the same volume/snapshot lineage.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ebs%20ListChangedBlocks&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:second_snapshot_id` (`t:string`) The ID of the second snapshot to use for
    the comparison.

  ## Optional parameters:
  * `:first_snapshot_id` (`t:string`) The ID of the first snapshot to use for the
    comparison.
  * `:max_results` (`t:integer`) The maximum number of blocks to be returned by
    the request.
  * `:next_token` (`t:string`) The token to request the next page of results.
  * `:starting_block_index` (`t:integer`) The block index from which the
    comparison should start.
  """
  @spec list_changed_blocks(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_changed_blocks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_changed_blocks_errors()}
  def list_changed_blocks(%Client{} = client, second_snapshot_id, options \\ []) do
    url_path = "/snapshots/#{AWS.Util.encode_uri(second_snapshot_id)}/changedblocks"

    # Validate optional parameters
    optional_params = [
      first_snapshot_id: nil,
      max_results: nil,
      next_token: nil,
      starting_block_index: nil
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
      if opt_val = Keyword.get(options, :starting_block_index) do
        [{"startingBlockIndex", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"pageToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :first_snapshot_id) do
        [{"firstSnapshotId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:first_snapshot_id, :max_results, :next_token, :starting_block_index])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about the blocks in an Amazon Elastic Block Store snapshot.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ebs%20ListSnapshotBlocks&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:snapshot_id` (`t:string`) The ID of the snapshot from which to get block
    indexes and block tokens.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of blocks to be returned by
    the request.
  * `:next_token` (`t:string`) The token to request the next page of results.
  * `:starting_block_index` (`t:integer`) The block index from which the list
    should start. The list in the response will start from this block index or
    the next valid block index in the snapshot.
  """
  @spec list_snapshot_blocks(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_snapshot_blocks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_snapshot_blocks_errors()}
  def list_snapshot_blocks(%Client{} = client, snapshot_id, options \\ []) do
    url_path = "/snapshots/#{AWS.Util.encode_uri(snapshot_id)}/blocks"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, starting_block_index: nil]

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
      if opt_val = Keyword.get(options, :starting_block_index) do
        [{"startingBlockIndex", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"pageToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token, :starting_block_index])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Writes a block of data to a snapshot. If the specified block contains data, the
  existing data is overwritten. The target snapshot must be in the `pending`
  state. Data written to a snapshot must be aligned with 512-KiB sectors.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ebs%20PutSnapshotBlock&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:block_index` (`t:integer`) The block index of the block in which to write
    the data. A block index is a logical index in units of 512 KiB blocks. To
    identify the block index, divide the logical offset of the data in the
    logical volume by the block size (logical offset of data/524288). The
    logical offset of the data must be 512 KiB aligned.
  * `:snapshot_id` (`t:string`) The ID of the snapshot.
  * `:checksum` (`t:string`) A Base64-encoded SHA256 checksum of the data. Only
    SHA256 checksums are supported.
  * `:checksum_algorithm` (`t:enum["CHECKSUM_ALGORITHM_SHA256"]`) The algorithm
    used to generate the checksum. Currently, the only supported algorithm is
    SHA256.
  * `:data_length` (`t:integer`) The size of the data to write to the block, in
    bytes. Currently, the only supported size is 524288 bytes.

  ## Optional parameters:
  * `:progress` (`t:integer`) The progress of the write process, as a percentage.
  """
  @spec put_snapshot_block(
          AWS.Client.t(),
          String.t(),
          String.t(),
          put_snapshot_block_request(),
          Keyword.t()
        ) ::
          {:ok, put_snapshot_block_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_snapshot_block_errors()}
  def put_snapshot_block(%Client{} = client, block_index, snapshot_id, input, options \\ []) do
    url_path =
      "/snapshots/#{AWS.Util.encode_uri(snapshot_id)}/blocks/#{AWS.Util.encode_uri(block_index)}"

    optional_params = [checksum: nil, checksum_algorithm: nil, data_length: nil, progress: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    {headers, input} =
      [
        {"Checksum", "x-amz-Checksum"},
        {"ChecksumAlgorithm", "x-amz-Checksum-Algorithm"},
        {"DataLength", "x-amz-Data-Length"},
        {"Progress", "x-amz-Progress"}
      ]
      |> Request.build_params(input)

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amz-Checksum", "Checksum"},
          {"x-amz-Checksum-Algorithm", "ChecksumAlgorithm"}
        ]
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:progress])

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 201)
  end

  @doc """
  Creates a new Amazon EBS snapshot. The new snapshot enters the `pending` state
  after the request completes.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ebs%20StartSnapshot&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec start_snapshot(AWS.Client.t(), start_snapshot_request(), Keyword.t()) ::
          {:ok, start_snapshot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_snapshot_errors()}
  def start_snapshot(%Client{} = client, input, options \\ []) do
    url_path = "/snapshots"
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
      201
    )
  end
end
