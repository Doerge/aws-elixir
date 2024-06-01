# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DocDBElastic do
  @moduledoc """
  Amazon DocumentDB elastic clusters Amazon DocumentDB elastic-clusters support
  workloads with millions of reads/writes per second and petabytes of storage
  capacity. Amazon DocumentDB elastic clusters also simplify how developers
  interact with Amazon DocumentDB elastic-clusters by eliminating the need to
  choose, manage or upgrade instances.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      cluster_snapshot_in_list() :: %{
        "clusterArn" => [String.t()],
        "snapshotArn" => [String.t()],
        "snapshotCreationTime" => [String.t()],
        "snapshotName" => [String.t()],
        "status" => String.t()
      }

  """
  @type cluster_snapshot_in_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_cluster_input() :: %{
        optional("adminUserPassword") => String.t(),
        optional("authType") => String.t(),
        optional("backupRetentionPeriod") => [integer()],
        optional("clientToken") => [String.t()],
        optional("preferredBackupWindow") => [String.t()],
        optional("preferredMaintenanceWindow") => [String.t()],
        optional("shardCapacity") => [integer()],
        optional("shardCount") => [integer()],
        optional("shardInstanceCount") => [integer()],
        optional("subnetIds") => list([String.t()]()),
        optional("vpcSecurityGroupIds") => list([String.t()]())
      }

  """
  @type update_cluster_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_cluster_snapshot_output() :: %{
        required("snapshot") => cluster_snapshot()
      }

  """
  @type create_cluster_snapshot_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      restore_cluster_from_snapshot_output() :: %{
        required("cluster") => cluster()
      }

  """
  @type restore_cluster_from_snapshot_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_cluster_output() :: %{
        "cluster" => cluster()
      }

  """
  @type start_cluster_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_cluster_input() :: %{
        optional("backupRetentionPeriod") => [integer()],
        optional("clientToken") => [String.t()],
        optional("kmsKeyId") => [String.t()],
        optional("preferredBackupWindow") => [String.t()],
        optional("preferredMaintenanceWindow") => [String.t()],
        optional("shardInstanceCount") => [integer()],
        optional("subnetIds") => list([String.t()]()),
        optional("tags") => map(),
        optional("vpcSecurityGroupIds") => list([String.t()]()),
        required("adminUserName") => [String.t()],
        required("adminUserPassword") => String.t(),
        required("authType") => String.t(),
        required("clusterName") => [String.t()],
        required("shardCapacity") => [integer()],
        required("shardCount") => [integer()]
      }

  """
  @type create_cluster_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      copy_cluster_snapshot_input() :: %{
        optional("copyTags") => [boolean()],
        optional("kmsKeyId") => [String.t()],
        optional("tags") => map(),
        required("targetSnapshotName") => [String.t()]
      }

  """
  @type copy_cluster_snapshot_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_cluster_input() :: %{}

  """
  @type get_cluster_input() :: %{}

  @typedoc """

  ## Example:

      list_cluster_snapshots_input() :: %{
        optional("clusterArn") => [String.t()],
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t(),
        optional("snapshotType") => [String.t()]
      }

  """
  @type list_cluster_snapshots_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_cluster_input() :: %{}

  """
  @type stop_cluster_input() :: %{}

  @typedoc """

  ## Example:

      list_clusters_output() :: %{
        optional("clusters") => list(cluster_in_list()()),
        optional("nextToken") => String.t()
      }

  """
  @type list_clusters_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_cluster_output() :: %{
        "cluster" => cluster()
      }

  """
  @type stop_cluster_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_cluster_output() :: %{
        required("cluster") => cluster()
      }

  """
  @type delete_cluster_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cluster() :: %{
        "adminUserName" => [String.t()],
        "authType" => String.t(),
        "backupRetentionPeriod" => [integer()],
        "clusterArn" => [String.t()],
        "clusterEndpoint" => [String.t()],
        "clusterName" => [String.t()],
        "createTime" => [String.t()],
        "kmsKeyId" => [String.t()],
        "preferredBackupWindow" => [String.t()],
        "preferredMaintenanceWindow" => [String.t()],
        "shardCapacity" => [integer()],
        "shardCount" => [integer()],
        "shardInstanceCount" => [integer()],
        "shards" => list(shard()()),
        "status" => String.t(),
        "subnetIds" => list([String.t()]()),
        "vpcSecurityGroupIds" => list([String.t()]())
      }

  """
  @type cluster() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_cluster_output() :: %{
        required("cluster") => cluster()
      }

  """
  @type get_cluster_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_clusters_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t()
      }

  """
  @type list_clusters_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        optional("tags") => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "message" => [String.t()],
        "name" => [String.t()]
      }

  """
  @type validation_exception_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_cluster_output() :: %{
        required("cluster") => cluster()
      }

  """
  @type update_cluster_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cluster_snapshot() :: %{
        "adminUserName" => [String.t()],
        "clusterArn" => [String.t()],
        "clusterCreationTime" => [String.t()],
        "kmsKeyId" => [String.t()],
        "snapshotArn" => [String.t()],
        "snapshotCreationTime" => [String.t()],
        "snapshotName" => [String.t()],
        "snapshotType" => String.t(),
        "status" => String.t(),
        "subnetIds" => list([String.t()]()),
        "vpcSecurityGroupIds" => list([String.t()]())
      }

  """
  @type cluster_snapshot() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_cluster_input() :: %{}

  """
  @type delete_cluster_input() :: %{}

  @typedoc """

  ## Example:

      list_cluster_snapshots_output() :: %{
        optional("nextToken") => String.t(),
        optional("snapshots") => list(cluster_snapshot_in_list()())
      }

  """
  @type list_cluster_snapshots_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_cluster_output() :: %{
        required("cluster") => cluster()
      }

  """
  @type create_cluster_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      shard() :: %{
        "createTime" => [String.t()],
        "shardId" => [String.t()],
        "status" => String.t()
      }

  """
  @type shard() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      delete_cluster_snapshot_output() :: %{
        required("snapshot") => cluster_snapshot()
      }

  """
  @type delete_cluster_snapshot_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_cluster_snapshot_input() :: %{}

  """
  @type delete_cluster_snapshot_input() :: %{}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()()),
        "message" => [String.t()],
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

      throttling_exception() :: %{
        "message" => [String.t()],
        "retryAfterSeconds" => [integer()]
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_cluster_snapshot_input() :: %{
        optional("tags") => map(),
        required("clusterArn") => [String.t()],
        required("snapshotName") => [String.t()]
      }

  """
  @type create_cluster_snapshot_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      restore_cluster_from_snapshot_input() :: %{
        optional("kmsKeyId") => [String.t()],
        optional("shardCapacity") => [integer()],
        optional("shardInstanceCount") => [integer()],
        optional("subnetIds") => list([String.t()]()),
        optional("tags") => map(),
        optional("vpcSecurityGroupIds") => list([String.t()]()),
        required("clusterName") => [String.t()]
      }

  """
  @type restore_cluster_from_snapshot_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_cluster_input() :: %{}

  """
  @type start_cluster_input() :: %{}

  @typedoc """

  ## Example:

      cluster_in_list() :: %{
        "clusterArn" => [String.t()],
        "clusterName" => [String.t()],
        "status" => String.t()
      }

  """
  @type cluster_in_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_cluster_snapshot_input() :: %{}

  """
  @type get_cluster_snapshot_input() :: %{}

  @typedoc """

  ## Example:

      get_cluster_snapshot_output() :: %{
        required("snapshot") => cluster_snapshot()
      }

  """
  @type get_cluster_snapshot_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      copy_cluster_snapshot_output() :: %{
        "snapshot" => cluster_snapshot()
      }

  """
  @type copy_cluster_snapshot_output() :: %{String.t() => any()}

  @type copy_cluster_snapshot_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_cluster_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_cluster_snapshot_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_cluster_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_cluster_snapshot_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_cluster_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_cluster_snapshot_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_cluster_snapshots_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_clusters_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type restore_cluster_from_snapshot_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_cluster_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type stop_cluster_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_cluster_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2022-11-28",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "docdb-elastic",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "DocDB Elastic",
      signature_version: "v4",
      signing_name: "docdb-elastic",
      target_prefix: nil
    }
  end

  @doc """
  Copies a snapshot of an elastic cluster.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=docdbelastic%20CopyClusterSnapshot&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:snapshot_arn` (`t:`) The Amazon Resource Name (ARN) identifier of the
    elastic cluster snapshot.

  ## Optional parameters:
  """
  @spec copy_cluster_snapshot(
          AWS.Client.t(),
          String.t(),
          copy_cluster_snapshot_input(),
          Keyword.t()
        ) ::
          {:ok, copy_cluster_snapshot_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, copy_cluster_snapshot_errors()}
  def copy_cluster_snapshot(%Client{} = client, snapshot_arn, input, options \\ []) do
    url_path = "/cluster-snapshot/#{AWS.Util.encode_uri(snapshot_arn)}/copy"
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
  Creates a new Amazon DocumentDB elastic cluster and returns its cluster
  structure.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=docdbelastic%20CreateCluster&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_cluster(AWS.Client.t(), create_cluster_input(), Keyword.t()) ::
          {:ok, create_cluster_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_cluster_errors()}
  def create_cluster(%Client{} = client, input, options \\ []) do
    url_path = "/cluster"
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
  Creates a snapshot of an elastic cluster.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=docdbelastic%20CreateClusterSnapshot&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_cluster_snapshot(AWS.Client.t(), create_cluster_snapshot_input(), Keyword.t()) ::
          {:ok, create_cluster_snapshot_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_cluster_snapshot_errors()}
  def create_cluster_snapshot(%Client{} = client, input, options \\ []) do
    url_path = "/cluster-snapshot"
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
  Delete an elastic cluster.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=docdbelastic%20DeleteCluster&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:cluster_arn` (`t:`) The ARN identifier of the elastic cluster that is to be
    deleted.

  ## Optional parameters:
  """
  @spec delete_cluster(AWS.Client.t(), String.t(), delete_cluster_input(), Keyword.t()) ::
          {:ok, delete_cluster_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_cluster_errors()}
  def delete_cluster(%Client{} = client, cluster_arn, input, options \\ []) do
    url_path = "/cluster/#{AWS.Util.encode_uri(cluster_arn)}"
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
  Delete an elastic cluster snapshot.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=docdbelastic%20DeleteClusterSnapshot&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:snapshot_arn` (`t:`) The ARN identifier of the elastic cluster snapshot that
    is to be deleted.

  ## Optional parameters:
  """
  @spec delete_cluster_snapshot(
          AWS.Client.t(),
          String.t(),
          delete_cluster_snapshot_input(),
          Keyword.t()
        ) ::
          {:ok, delete_cluster_snapshot_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_cluster_snapshot_errors()}
  def delete_cluster_snapshot(%Client{} = client, snapshot_arn, input, options \\ []) do
    url_path = "/cluster-snapshot/#{AWS.Util.encode_uri(snapshot_arn)}"
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
  Returns information about a specific elastic cluster.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=docdbelastic%20GetCluster&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:cluster_arn` (`t:`) The ARN identifier of the elastic cluster.

  ## Optional parameters:
  """
  @spec get_cluster(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_cluster_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_cluster_errors()}
  def get_cluster(%Client{} = client, cluster_arn, options \\ []) do
    url_path = "/cluster/#{AWS.Util.encode_uri(cluster_arn)}"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [
    # ])

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a specific elastic cluster snapshot

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=docdbelastic%20GetClusterSnapshot&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:snapshot_arn` (`t:`) The ARN identifier of the elastic cluster snapshot.

  ## Optional parameters:
  """
  @spec get_cluster_snapshot(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_cluster_snapshot_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_cluster_snapshot_errors()}
  def get_cluster_snapshot(%Client{} = client, snapshot_arn, options \\ []) do
    url_path = "/cluster-snapshot/#{AWS.Util.encode_uri(snapshot_arn)}"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [
    # ])

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about snapshots for a specified elastic cluster.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=docdbelastic%20ListClusterSnapshots&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:cluster_arn` (`t:`) The ARN identifier of the elastic cluster.
  * `:max_results` (`t:`) The maximum number of elastic cluster snapshot results
    to receive in the response.
  * `:next_token` (`t:string`) A pagination token provided by a previous request.
    If this parameter is specified, the response includes only records beyond
    this token, up to the value specified by max-results.
  * `:snapshot_type` (`t:`) The type of cluster snapshots to be returned. You can
    specify one of the following values:
  """
  @spec list_cluster_snapshots(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_cluster_snapshots_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_cluster_snapshots_errors()}
  def list_cluster_snapshots(%Client{} = client, options \\ []) do
    url_path = "/cluster-snapshots"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [cluster_arn: nil, max_results: nil, next_token: nil, snapshot_type: nil
    # ])

    headers = []
    query_params = []

    {snapshot_type, options} = Keyword.pop(options, :snapshot_type, nil)

    query_params =
      if !is_nil(snapshot_type) do
        [{"snapshotType", snapshot_type} | query_params]
      else
        query_params
      end

    {next_token, options} = Keyword.pop(options, :next_token, nil)

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    {max_results, options} = Keyword.pop(options, :max_results, nil)

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    {cluster_arn, options} = Keyword.pop(options, :cluster_arn, nil)

    query_params =
      if !is_nil(cluster_arn) do
        [{"clusterArn", cluster_arn} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about provisioned Amazon DocumentDB elastic clusters.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=docdbelastic%20ListClusters&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:`) The maximum number of elastic cluster snapshot results
    to receive in the response.
  * `:next_token` (`t:string`) A pagination token provided by a previous request.
    If this parameter is specified, the response includes only records beyond
    this token, up to the value specified by max-results.
  """
  @spec list_clusters(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_clusters_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_clusters_errors()}
  def list_clusters(%Client{} = client, options \\ []) do
    url_path = "/clusters"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, next_token: nil
    # ])

    headers = []
    query_params = []

    {next_token, options} = Keyword.pop(options, :next_token, nil)

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    {max_results, options} = Keyword.pop(options, :max_results, nil)

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all tags on a elastic cluster resource

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=docdbelastic%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The ARN identifier of the elastic cluster
    resource.

  ## Optional parameters:
  """
  @spec list_tags_for_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [
    # ])

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Restores an elastic cluster from a snapshot.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=docdbelastic%20RestoreClusterFromSnapshot&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:snapshot_arn` (`t:`) The ARN identifier of the elastic cluster snapshot.

  ## Optional parameters:
  """
  @spec restore_cluster_from_snapshot(
          AWS.Client.t(),
          String.t(),
          restore_cluster_from_snapshot_input(),
          Keyword.t()
        ) ::
          {:ok, restore_cluster_from_snapshot_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, restore_cluster_from_snapshot_errors()}
  def restore_cluster_from_snapshot(%Client{} = client, snapshot_arn, input, options \\ []) do
    url_path = "/cluster-snapshot/#{AWS.Util.encode_uri(snapshot_arn)}/restore"
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
  Restarts the stopped elastic cluster that is specified by `clusterARN`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=docdbelastic%20StartCluster&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:cluster_arn` (`t:`) The ARN identifier of the elastic cluster.

  ## Optional parameters:
  """
  @spec start_cluster(AWS.Client.t(), String.t(), start_cluster_input(), Keyword.t()) ::
          {:ok, start_cluster_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_cluster_errors()}
  def start_cluster(%Client{} = client, cluster_arn, input, options \\ []) do
    url_path = "/cluster/#{AWS.Util.encode_uri(cluster_arn)}/start"
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
  Stops the running elastic cluster that is specified by `clusterArn`. The elastic
  cluster must be in the *available* state.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=docdbelastic%20StopCluster&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:cluster_arn` (`t:`) The ARN identifier of the elastic cluster.

  ## Optional parameters:
  """
  @spec stop_cluster(AWS.Client.t(), String.t(), stop_cluster_input(), Keyword.t()) ::
          {:ok, stop_cluster_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_cluster_errors()}
  def stop_cluster(%Client{} = client, cluster_arn, input, options \\ []) do
    url_path = "/cluster/#{AWS.Util.encode_uri(cluster_arn)}/stop"
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
  Adds metadata tags to an elastic cluster resource

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=docdbelastic%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The ARN identifier of the elastic cluster
    resource.

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
  Removes metadata tags from an elastic cluster resource

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=docdbelastic%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The ARN identifier of the elastic cluster
    resource.

  ## Optional parameters:
  * `:tag_keys` (`t:list[com.amazonaws.docdbelastic#TagKey]`) The tag keys to be
    removed from the elastic cluster resource.
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
  Modifies an elastic cluster. This includes updating admin-username/password,
  upgrading the API version, and setting up a backup window and maintenance
  window

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=docdbelastic%20UpdateCluster&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:cluster_arn` (`t:`) The ARN identifier of the elastic cluster.

  ## Optional parameters:
  """
  @spec update_cluster(AWS.Client.t(), String.t(), update_cluster_input(), Keyword.t()) ::
          {:ok, update_cluster_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_cluster_errors()}
  def update_cluster(%Client{} = client, cluster_arn, input, options \\ []) do
    url_path = "/cluster/#{AWS.Util.encode_uri(cluster_arn)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
