# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.NeptuneGraph do
  @moduledoc """
  Neptune Analytics is a new analytics database engine for Amazon Neptune that
  helps customers get to
  insights faster by quickly processing large amounts of graph data, invoking
  popular graph analytic
  algorithms in low-latency queries, and getting analytics results in seconds.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      list_graph_snapshots_output() :: %{
        "graphSnapshots" => list(graph_snapshot_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_graph_snapshots_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_graph_using_import_task_input() :: %{
        optional("deletionProtection") => [boolean()],
        optional("failOnError") => [boolean()],
        optional("format") => list(any()),
        optional("importOptions") => list(),
        optional("kmsKeyIdentifier") => String.t(),
        optional("maxProvisionedMemory") => integer(),
        optional("minProvisionedMemory") => integer(),
        optional("publicConnectivity") => [boolean()],
        optional("replicaCount") => integer(),
        optional("tags") => map(),
        optional("vectorSearchConfiguration") => vector_search_configuration(),
        required("graphName") => String.t(),
        required("roleArn") => String.t(),
        required("source") => [String.t()]
      }

  """
  @type create_graph_using_import_task_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_private_graph_endpoint_input() :: %{}

  """
  @type delete_private_graph_endpoint_input() :: %{}

  @typedoc """

  ## Example:

      create_private_graph_endpoint_output() :: %{
        "status" => list(any()),
        "subnetIds" => list(String.t()()),
        "vpcEndpointId" => String.t(),
        "vpcId" => String.t()
      }

  """
  @type create_private_graph_endpoint_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_private_graph_endpoint_input() :: %{}

  """
  @type get_private_graph_endpoint_input() :: %{}

  @typedoc """

  ## Example:

      delete_graph_snapshot_output() :: %{
        "arn" => [String.t()],
        "id" => String.t(),
        "kmsKeyIdentifier" => String.t(),
        "name" => String.t(),
        "snapshotCreateTime" => [non_neg_integer()],
        "sourceGraphId" => String.t(),
        "status" => list(any())
      }

  """
  @type delete_graph_snapshot_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_graph_using_import_task_output() :: %{
        "format" => list(any()),
        "graphId" => String.t(),
        "importOptions" => list(),
        "roleArn" => String.t(),
        "source" => [String.t()],
        "status" => list(any()),
        "taskId" => String.t()
      }

  """
  @type create_graph_using_import_task_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_graph_output() :: %{
        "arn" => [String.t()],
        "buildNumber" => [String.t()],
        "createTime" => [non_neg_integer()],
        "deletionProtection" => [boolean()],
        "endpoint" => [String.t()],
        "id" => String.t(),
        "kmsKeyIdentifier" => String.t(),
        "name" => String.t(),
        "provisionedMemory" => integer(),
        "publicConnectivity" => [boolean()],
        "replicaCount" => integer(),
        "sourceSnapshotId" => String.t(),
        "status" => list(any()),
        "statusReason" => [String.t()],
        "vectorSearchConfiguration" => vector_search_configuration()
      }

  """
  @type update_graph_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_import_task_input() :: %{
        optional("failOnError") => [boolean()],
        optional("format") => list(any()),
        optional("importOptions") => list(),
        required("roleArn") => String.t(),
        required("source") => [String.t()]
      }

  """
  @type start_import_task_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_import_task_output() :: %{
        "attemptNumber" => [integer()],
        "format" => list(any()),
        "graphId" => String.t(),
        "importOptions" => list(),
        "importTaskDetails" => import_task_details(),
        "roleArn" => String.t(),
        "source" => [String.t()],
        "status" => list(any()),
        "statusReason" => [String.t()],
        "taskId" => String.t()
      }

  """
  @type get_import_task_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_private_graph_endpoint_output() :: %{
        "status" => list(any()),
        "subnetIds" => list(String.t()()),
        "vpcEndpointId" => String.t(),
        "vpcId" => String.t()
      }

  """
  @type delete_private_graph_endpoint_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_import_task_output() :: %{
        "format" => list(any()),
        "graphId" => String.t(),
        "roleArn" => String.t(),
        "source" => [String.t()],
        "status" => list(any()),
        "taskId" => String.t()
      }

  """
  @type cancel_import_task_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unprocessable_exception() :: %{
        "message" => [String.t()],
        "reason" => list(any())
      }

  """
  @type unprocessable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_graphs_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_graphs_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      graph_snapshot_summary() :: %{
        "arn" => [String.t()],
        "id" => String.t(),
        "kmsKeyIdentifier" => String.t(),
        "name" => String.t(),
        "snapshotCreateTime" => [non_neg_integer()],
        "sourceGraphId" => String.t(),
        "status" => list(any())
      }

  """
  @type graph_snapshot_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_query_output() :: %{
        "elapsed" => [integer()],
        "id" => [String.t()],
        "queryString" => [String.t()],
        "state" => list(any()),
        "waited" => [integer()]
      }

  """
  @type get_query_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_output() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_queries_output() :: %{
        "queries" => list(query_summary()())
      }

  """
  @type list_queries_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vector_search_configuration() :: %{
        "dimension" => integer()
      }

  """
  @type vector_search_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      restore_graph_from_snapshot_input() :: %{
        optional("deletionProtection") => [boolean()],
        optional("provisionedMemory") => integer(),
        optional("publicConnectivity") => [boolean()],
        optional("replicaCount") => integer(),
        optional("tags") => map(),
        required("graphName") => String.t()
      }

  """
  @type restore_graph_from_snapshot_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      edge_structure() :: %{
        "count" => [float()],
        "edgeProperties" => list([String.t()]())
      }

  """
  @type edge_structure() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_graph_snapshot_output() :: %{
        "arn" => [String.t()],
        "id" => String.t(),
        "kmsKeyIdentifier" => String.t(),
        "name" => String.t(),
        "snapshotCreateTime" => [non_neg_integer()],
        "sourceGraphId" => String.t(),
        "status" => list(any())
      }

  """
  @type create_graph_snapshot_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_private_graph_endpoint_input() :: %{
        optional("subnetIds") => list(String.t()()),
        optional("vpcId") => String.t(),
        optional("vpcSecurityGroupIds") => list(String.t()())
      }

  """
  @type create_private_graph_endpoint_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_graph_input() :: %{
        required("skipSnapshot") => [boolean()]
      }

  """
  @type delete_graph_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_graphs_output() :: %{
        "graphs" => list(graph_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_graphs_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_graph_input() :: %{
        optional("deletionProtection") => [boolean()],
        optional("kmsKeyIdentifier") => String.t(),
        optional("publicConnectivity") => [boolean()],
        optional("replicaCount") => integer(),
        optional("tags") => map(),
        optional("vectorSearchConfiguration") => vector_search_configuration(),
        required("graphName") => String.t(),
        required("provisionedMemory") => integer()
      }

  """
  @type create_graph_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_graph_output() :: %{
        "arn" => [String.t()],
        "buildNumber" => [String.t()],
        "createTime" => [non_neg_integer()],
        "deletionProtection" => [boolean()],
        "endpoint" => [String.t()],
        "id" => String.t(),
        "kmsKeyIdentifier" => String.t(),
        "name" => String.t(),
        "provisionedMemory" => integer(),
        "publicConnectivity" => [boolean()],
        "replicaCount" => integer(),
        "sourceSnapshotId" => String.t(),
        "status" => list(any()),
        "statusReason" => [String.t()],
        "vectorSearchConfiguration" => vector_search_configuration()
      }

  """
  @type delete_graph_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t()],
        "reason" => list(any())
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_queries_input() :: %{
        optional("state") => list(any()),
        required("graphIdentifier") => String.t(),
        required("maxResults") => [integer()]
      }

  """
  @type list_queries_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t()],
        "quotaCode" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()],
        "serviceCode" => [String.t()]
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_import_task_input() :: %{}

  """
  @type cancel_import_task_input() :: %{}

  @typedoc """

  ## Example:

      restore_graph_from_snapshot_output() :: %{
        "arn" => [String.t()],
        "buildNumber" => [String.t()],
        "createTime" => [non_neg_integer()],
        "deletionProtection" => [boolean()],
        "endpoint" => [String.t()],
        "id" => String.t(),
        "kmsKeyIdentifier" => String.t(),
        "name" => String.t(),
        "provisionedMemory" => integer(),
        "publicConnectivity" => [boolean()],
        "replicaCount" => integer(),
        "sourceSnapshotId" => String.t(),
        "status" => list(any()),
        "statusReason" => [String.t()],
        "vectorSearchConfiguration" => vector_search_configuration()
      }

  """
  @type restore_graph_from_snapshot_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      graph_data_summary() :: %{
        "edgeLabels" => list([String.t()]()),
        "edgeProperties" => list(map()()),
        "edgeStructures" => list(edge_structure()()),
        "nodeLabels" => list([String.t()]()),
        "nodeProperties" => list(map()()),
        "nodeStructures" => list(node_structure()()),
        "numEdgeLabels" => [float()],
        "numEdgeProperties" => [float()],
        "numEdges" => [float()],
        "numNodeLabels" => [float()],
        "numNodeProperties" => [float()],
        "numNodes" => [float()],
        "totalEdgePropertyValues" => [float()],
        "totalNodePropertyValues" => [float()]
      }

  """
  @type graph_data_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_graph_output() :: %{
        "arn" => [String.t()],
        "buildNumber" => [String.t()],
        "createTime" => [non_neg_integer()],
        "deletionProtection" => [boolean()],
        "endpoint" => [String.t()],
        "id" => String.t(),
        "kmsKeyIdentifier" => String.t(),
        "name" => String.t(),
        "provisionedMemory" => integer(),
        "publicConnectivity" => [boolean()],
        "replicaCount" => integer(),
        "sourceSnapshotId" => String.t(),
        "status" => list(any()),
        "statusReason" => [String.t()],
        "vectorSearchConfiguration" => vector_search_configuration()
      }

  """
  @type create_graph_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_input() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      import_task_summary() :: %{
        "format" => list(any()),
        "graphId" => String.t(),
        "roleArn" => String.t(),
        "source" => [String.t()],
        "status" => list(any()),
        "taskId" => String.t()
      }

  """
  @type import_task_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_graph_snapshots_input() :: %{
        optional("graphIdentifier") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_graph_snapshots_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_output() :: %{}

  """
  @type tag_resource_output() :: %{}

  @typedoc """

  ## Example:

      graph_summary() :: %{
        "arn" => [String.t()],
        "deletionProtection" => [boolean()],
        "endpoint" => [String.t()],
        "id" => String.t(),
        "kmsKeyIdentifier" => [String.t()],
        "name" => String.t(),
        "provisionedMemory" => integer(),
        "publicConnectivity" => [boolean()],
        "replicaCount" => integer(),
        "status" => list(any())
      }

  """
  @type graph_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_private_graph_endpoint_output() :: %{
        "status" => list(any()),
        "subnetIds" => list(String.t()()),
        "vpcEndpointId" => String.t(),
        "vpcId" => String.t()
      }

  """
  @type get_private_graph_endpoint_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      query_summary() :: %{
        "elapsed" => [integer()],
        "id" => [String.t()],
        "queryString" => [String.t()],
        "state" => list(any()),
        "waited" => [integer()]
      }

  """
  @type query_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_query_input() :: %{
        required("graphIdentifier") => String.t()
      }

  """
  @type cancel_query_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_graph_input() :: %{
        optional("deletionProtection") => [boolean()],
        optional("provisionedMemory") => integer(),
        optional("publicConnectivity") => [boolean()]
      }

  """
  @type update_graph_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      neptune_import_options() :: %{
        "preserveDefaultVertexLabels" => [boolean()],
        "preserveEdgeIds" => [boolean()],
        "s3ExportKmsKeyId" => [String.t()],
        "s3ExportPath" => [String.t()]
      }

  """
  @type neptune_import_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      import_task_details() :: %{
        "dictionaryEntryCount" => [float()],
        "errorCount" => [integer()],
        "errorDetails" => [String.t()],
        "progressPercentage" => [integer()],
        "startTime" => [non_neg_integer()],
        "statementCount" => [float()],
        "status" => [String.t()],
        "timeElapsedSeconds" => [float()]
      }

  """
  @type import_task_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_query_input() :: %{
        required("graphIdentifier") => String.t()
      }

  """
  @type get_query_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_graph_output() :: %{
        "arn" => [String.t()],
        "buildNumber" => [String.t()],
        "createTime" => [non_neg_integer()],
        "deletionProtection" => [boolean()],
        "endpoint" => [String.t()],
        "id" => String.t(),
        "kmsKeyIdentifier" => String.t(),
        "name" => String.t(),
        "provisionedMemory" => integer(),
        "publicConnectivity" => [boolean()],
        "replicaCount" => integer(),
        "sourceSnapshotId" => String.t(),
        "status" => list(any()),
        "statusReason" => [String.t()],
        "vectorSearchConfiguration" => vector_search_configuration()
      }

  """
  @type get_graph_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_graph_snapshot_input() :: %{}

  """
  @type delete_graph_snapshot_input() :: %{}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_input() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_graph_summary_input() :: %{
        optional("mode") => list(any()),
        required("graphIdentifier") => String.t()
      }

  """
  @type get_graph_summary_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reset_graph_input() :: %{
        required("skipSnapshot") => [boolean()]
      }

  """
  @type reset_graph_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      execute_query_output() :: %{
        "payload" => binary()
      }

  """
  @type execute_query_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_graph_snapshot_input() :: %{}

  """
  @type get_graph_snapshot_input() :: %{}

  @typedoc """

  ## Example:

      start_import_task_output() :: %{
        "format" => list(any()),
        "graphId" => String.t(),
        "importOptions" => list(),
        "roleArn" => String.t(),
        "source" => [String.t()],
        "status" => list(any()),
        "taskId" => String.t()
      }

  """
  @type start_import_task_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_graph_snapshot_input() :: %{
        optional("tags") => map(),
        required("graphIdentifier") => String.t(),
        required("snapshotName") => String.t()
      }

  """
  @type create_graph_snapshot_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      node_structure() :: %{
        "count" => [float()],
        "distinctOutgoingEdgeLabels" => list([String.t()]()),
        "nodeProperties" => list([String.t()]())
      }

  """
  @type node_structure() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_graph_input() :: %{}

  """
  @type get_graph_input() :: %{}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => [String.t()],
        "reason" => list(any())
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_input() :: %{}

  """
  @type list_tags_for_resource_input() :: %{}

  @typedoc """

  ## Example:

      untag_resource_output() :: %{}

  """
  @type untag_resource_output() :: %{}

  @typedoc """

  ## Example:

      list_import_tasks_output() :: %{
        "nextToken" => String.t(),
        "tasks" => list(import_task_summary()())
      }

  """
  @type list_import_tasks_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_graph_summary_output() :: %{
        "graphSummary" => graph_data_summary(),
        "lastStatisticsComputationTime" => [non_neg_integer()],
        "version" => [String.t()]
      }

  """
  @type get_graph_summary_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_private_graph_endpoints_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_private_graph_endpoints_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_private_graph_endpoints_output() :: %{
        "nextToken" => String.t(),
        "privateGraphEndpoints" => list(private_graph_endpoint_summary()())
      }

  """
  @type list_private_graph_endpoints_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      execute_query_input() :: %{
        optional("explainMode") => list(any()),
        optional("parameters") => map(),
        optional("planCache") => list(any()),
        optional("queryTimeoutMilliseconds") => [integer()],
        required("graphIdentifier") => String.t(),
        required("language") => list(any()),
        required("queryString") => [String.t()]
      }

  """
  @type execute_query_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_import_task_input() :: %{}

  """
  @type get_import_task_input() :: %{}

  @typedoc """

  ## Example:

      private_graph_endpoint_summary() :: %{
        "status" => list(any()),
        "subnetIds" => list(String.t()()),
        "vpcEndpointId" => String.t(),
        "vpcId" => String.t()
      }

  """
  @type private_graph_endpoint_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_graph_snapshot_output() :: %{
        "arn" => [String.t()],
        "id" => String.t(),
        "kmsKeyIdentifier" => String.t(),
        "name" => String.t(),
        "snapshotCreateTime" => [non_neg_integer()],
        "sourceGraphId" => String.t(),
        "status" => list(any())
      }

  """
  @type get_graph_snapshot_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reset_graph_output() :: %{
        "arn" => [String.t()],
        "buildNumber" => [String.t()],
        "createTime" => [non_neg_integer()],
        "deletionProtection" => [boolean()],
        "endpoint" => [String.t()],
        "id" => String.t(),
        "kmsKeyIdentifier" => String.t(),
        "name" => String.t(),
        "provisionedMemory" => integer(),
        "publicConnectivity" => [boolean()],
        "replicaCount" => integer(),
        "sourceSnapshotId" => String.t(),
        "status" => list(any()),
        "statusReason" => [String.t()],
        "vectorSearchConfiguration" => vector_search_configuration()
      }

  """
  @type reset_graph_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_import_tasks_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_import_tasks_input() :: %{String.t() => any()}

  @type cancel_import_task_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type cancel_query_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_graph_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_graph_snapshot_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_graph_using_import_task_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_private_graph_endpoint_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_graph_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_graph_snapshot_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_private_graph_endpoint_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type execute_query_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()
          | unprocessable_exception()

  @type get_graph_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_graph_snapshot_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_graph_summary_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_import_task_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_private_graph_endpoint_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_query_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_graph_snapshots_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_graphs_errors() ::
          throttling_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_import_tasks_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_private_graph_endpoints_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_queries_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type reset_graph_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type restore_graph_from_snapshot_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_import_task_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

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

  @type update_graph_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2023-11-29",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "neptune-graph",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Neptune Graph",
      signature_version: "v4",
      signing_name: "neptune-graph",
      target_prefix: nil
    }
  end

  @doc """
  Deletes the specified import task.

  ## Required positional parameters:
   • :task_identifier (t:string String.t/0) (taskIdentifier)

  ## Optional parameters:
  """
  @spec cancel_import_task(AWS.Client.t(), String.t(), cancel_import_task_input(), Keyword.t()) ::
          {:ok, cancel_import_task_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_import_task_errors()}
  def cancel_import_task(%Client{} = client, task_identifier, input, options \\ []) do
    url_path = "/importtasks/#{AWS.Util.encode_uri(task_identifier)}"
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
  Cancels a specified query.

  ## Required positional parameters:
   • :query_id (t: String.t/0) (queryId)

  ## Optional parameters:
   • :graph_identifier (t:String.t/0) (graphIdentifier)
  """
  @spec cancel_query(AWS.Client.t(), String.t(), cancel_query_input(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_query_errors()}
  def cancel_query(%Client{} = client, query_id, input, options \\ []) do
    url_path = "/queries/#{AWS.Util.encode_uri(query_id)}"

    {headers, input} =
      [
        {"graphIdentifier", "graphIdentifier"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "{graphIdentifier}.")

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
  Creates a new Neptune Analytics graph.

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec create_graph(AWS.Client.t(), create_graph_input(), Keyword.t()) ::
          {:ok, create_graph_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_graph_errors()}
  def create_graph(%Client{} = client, input, options \\ []) do
    url_path = "/graphs"
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

  @doc """
  Creates a snapshot of the specific graph.

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec create_graph_snapshot(AWS.Client.t(), create_graph_snapshot_input(), Keyword.t()) ::
          {:ok, create_graph_snapshot_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_graph_snapshot_errors()}
  def create_graph_snapshot(%Client{} = client, input, options \\ []) do
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

  @doc """
  Creates a new Neptune Analytics graph and imports data into it, either from
  Amazon Simple Storage Service (S3) or from a Neptune database
  or a Neptune database snapshot.

  The data can be loaded from files in S3 that in either the [Gremlin CSV format](https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-gremlin.html)
  or the [openCypher load
  format](https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-opencypher.html).

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec create_graph_using_import_task(
          AWS.Client.t(),
          create_graph_using_import_task_input(),
          Keyword.t()
        ) ::
          {:ok, create_graph_using_import_task_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_graph_using_import_task_errors()}
  def create_graph_using_import_task(%Client{} = client, input, options \\ []) do
    url_path = "/importtasks"
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

  @doc """
  Create a private graph endpoint to allow private access from to the graph from
  within
  a VPC.

  You can attach security groups to the private graph endpoint.

  VPC endpoint charges apply.

  ## Required positional parameters:
   • :graph_identifier (t:string String.t/0) (graphIdentifier)

  ## Optional parameters:
  """
  @spec create_private_graph_endpoint(
          AWS.Client.t(),
          String.t(),
          create_private_graph_endpoint_input(),
          Keyword.t()
        ) ::
          {:ok, create_private_graph_endpoint_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_private_graph_endpoint_errors()}
  def create_private_graph_endpoint(%Client{} = client, graph_identifier, input, options \\ []) do
    url_path = "/graphs/#{AWS.Util.encode_uri(graph_identifier)}/endpoints/"
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

  @doc """
  Deletes the specified graph.

  Graphs cannot be deleted if delete-protection is enabled.

  ## Required positional parameters:
   • :graph_identifier (t:string String.t/0) (graphIdentifier)

  ## Optional parameters:
   • :skip_snapshot (t:String.t/0) (skipSnapshot)
  """
  @spec delete_graph(AWS.Client.t(), String.t(), delete_graph_input(), Keyword.t()) ::
          {:ok, delete_graph_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_graph_errors()}
  def delete_graph(%Client{} = client, graph_identifier, input, options \\ []) do
    url_path = "/graphs/#{AWS.Util.encode_uri(graph_identifier)}"
    headers = []

    {query_params, input} =
      [
        {"skipSnapshot", "skipSnapshot"}
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
  Deletes the specifed graph snapshot.

  ## Required positional parameters:
   • :snapshot_identifier (t:string String.t/0) (snapshotIdentifier)

  ## Optional parameters:
  """
  @spec delete_graph_snapshot(
          AWS.Client.t(),
          String.t(),
          delete_graph_snapshot_input(),
          Keyword.t()
        ) ::
          {:ok, delete_graph_snapshot_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_graph_snapshot_errors()}
  def delete_graph_snapshot(%Client{} = client, snapshot_identifier, input, options \\ []) do
    url_path = "/snapshots/#{AWS.Util.encode_uri(snapshot_identifier)}"
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
  Deletes a private graph endpoint.

  ## Required positional parameters:
   • :graph_identifier (t:string String.t/0) (graphIdentifier)
   • :vpc_id (t:string String.t/0) (vpcId)

  ## Optional parameters:
  """
  @spec delete_private_graph_endpoint(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_private_graph_endpoint_input(),
          Keyword.t()
        ) ::
          {:ok, delete_private_graph_endpoint_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_private_graph_endpoint_errors()}
  def delete_private_graph_endpoint(
        %Client{} = client,
        graph_identifier,
        vpc_id,
        input,
        options \\ []
      ) do
    url_path =
      "/graphs/#{AWS.Util.encode_uri(graph_identifier)}/endpoints/#{AWS.Util.encode_uri(vpc_id)}"

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
  Execute an openCypher query.

  When invoking this operation in a Neptune Analytics cluster, the IAM user or
  role making the request must have a policy attached
  that allows one of the following IAM actions in that cluster, depending on the
  query:

    *
  neptune-graph:ReadDataViaQuery

    *
  neptune-graph:WriteDataViaQuery

    *
  neptune-graph:DeleteDataViaQuery

  ## Required positional parameters:

  ## Optional parameters:
   • :graph_identifier (t:String.t/0) (graphIdentifier)
  """
  @spec execute_query(AWS.Client.t(), execute_query_input(), Keyword.t()) ::
          {:ok, execute_query_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, execute_query_errors()}
  def execute_query(%Client{} = client, input, options \\ []) do
    url_path = "/queries"

    {headers, input} =
      [
        {"graphIdentifier", "graphIdentifier"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "{graphIdentifier}.")

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
  Gets information about a specified graph.

  ## Required positional parameters:
   • :graph_identifier (t:string String.t/0) (graphIdentifier)

  ## Optional parameters:
  """
  @spec get_graph(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_graph_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_graph_errors()}
  def get_graph(%Client{} = client, graph_identifier, options \\ []) do
    url_path = "/graphs/#{AWS.Util.encode_uri(graph_identifier)}"

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
  Retrieves a specified graph snapshot.

  ## Required positional parameters:
   • :snapshot_identifier (t:string String.t/0) (snapshotIdentifier)

  ## Optional parameters:
  """
  @spec get_graph_snapshot(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_graph_snapshot_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_graph_snapshot_errors()}
  def get_graph_snapshot(%Client{} = client, snapshot_identifier, options \\ []) do
    url_path = "/snapshots/#{AWS.Util.encode_uri(snapshot_identifier)}"

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
  Gets a graph summary for a property graph.

  ## Required positional parameters:

  ## Optional parameters:
   • :mode (t:String.t/0) (mode)
   • :graph_identifier (t:String.t/0) (graphIdentifier)
  """
  @spec get_graph_summary(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_graph_summary_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_graph_summary_errors()}
  def get_graph_summary(%Client{} = client, graph_identifier, options \\ []) do
    url_path = "/summary"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [mode: nil, graph_identifier: nil
    # ])

    headers = []

    {graph_identifier, options} = Keyword.pop(options, :graph_identifier, nil)

    headers =
      if !is_nil(graph_identifier) do
        [{"graphIdentifier", graph_identifier} | headers]
      else
        headers
      end

    query_params = []

    {mode, options} = Keyword.pop(options, :mode, nil)

    query_params =
      if !is_nil(mode) do
        [{"mode", mode} | query_params]
      else
        query_params
      end

    meta =
      metadata() |> Map.put_new(:host_prefix, "{graphIdentifier}.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a specified import task.

  ## Required positional parameters:
   • :task_identifier (t:string String.t/0) (taskIdentifier)

  ## Optional parameters:
  """
  @spec get_import_task(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_import_task_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_import_task_errors()}
  def get_import_task(%Client{} = client, task_identifier, options \\ []) do
    url_path = "/importtasks/#{AWS.Util.encode_uri(task_identifier)}"

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
  Retrieves information about a specified private endpoint.

  ## Required positional parameters:
   • :graph_identifier (t:string String.t/0) (graphIdentifier)
   • :vpc_id (t:string String.t/0) (vpcId)

  ## Optional parameters:
  """
  @spec get_private_graph_endpoint(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_private_graph_endpoint_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_private_graph_endpoint_errors()}
  def get_private_graph_endpoint(%Client{} = client, graph_identifier, vpc_id, options \\ []) do
    url_path =
      "/graphs/#{AWS.Util.encode_uri(graph_identifier)}/endpoints/#{AWS.Util.encode_uri(vpc_id)}"

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
  Retrieves the status of a specified query.

  When invoking this operation in a Neptune Analytics cluster, the IAM user or
  role making the request must have the
  `neptune-graph:GetQueryStatus` IAM action attached.

  ## Required positional parameters:
   • :query_id (t: String.t/0) (queryId)

  ## Optional parameters:
   • :graph_identifier (t:String.t/0) (graphIdentifier)
  """
  @spec get_query(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_query_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_query_errors()}
  def get_query(%Client{} = client, query_id, graph_identifier, options \\ []) do
    url_path = "/queries/#{AWS.Util.encode_uri(query_id)}"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [graph_identifier: nil
    # ])

    headers = []

    {graph_identifier, options} = Keyword.pop(options, :graph_identifier, nil)

    headers =
      if !is_nil(graph_identifier) do
        [{"graphIdentifier", graph_identifier} | headers]
      else
        headers
      end

    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "{graphIdentifier}.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists available snapshots of a specified Neptune Analytics graph.

  ## Required positional parameters:

  ## Optional parameters:
   • :graph_identifier (t:String.t/0) (graphIdentifier)
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec list_graph_snapshots(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_graph_snapshots_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_graph_snapshots_errors()}
  def list_graph_snapshots(%Client{} = client, options \\ []) do
    url_path = "/snapshots"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [graph_identifier: nil, max_results: nil, next_token: nil
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

    {graph_identifier, options} = Keyword.pop(options, :graph_identifier, nil)

    query_params =
      if !is_nil(graph_identifier) do
        [{"graphIdentifier", graph_identifier} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists available Neptune Analytics graphs.

  ## Required positional parameters:

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec list_graphs(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_graphs_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_graphs_errors()}
  def list_graphs(%Client{} = client, options \\ []) do
    url_path = "/graphs"

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
  Lists import tasks.

  ## Required positional parameters:

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec list_import_tasks(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_import_tasks_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_import_tasks_errors()}
  def list_import_tasks(%Client{} = client, options \\ []) do
    url_path = "/importtasks"

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
  Lists private endpoints for a specified Neptune Analytics graph.

  ## Required positional parameters:
   • :graph_identifier (t:string String.t/0) (graphIdentifier)

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec list_private_graph_endpoints(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_private_graph_endpoints_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_private_graph_endpoints_errors()}
  def list_private_graph_endpoints(%Client{} = client, graph_identifier, options \\ []) do
    url_path = "/graphs/#{AWS.Util.encode_uri(graph_identifier)}/endpoints/"

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
  Lists active openCypher queries.

  ## Required positional parameters:

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :state (t:String.t/0) (state)
   • :graph_identifier (t:String.t/0) (graphIdentifier)
  """
  @spec list_queries(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_queries_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_queries_errors()}
  def list_queries(%Client{} = client, max_results, graph_identifier, options \\ []) do
    url_path = "/queries"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, state: nil, graph_identifier: nil
    # ])

    headers = []

    {graph_identifier, options} = Keyword.pop(options, :graph_identifier, nil)

    headers =
      if !is_nil(graph_identifier) do
        [{"graphIdentifier", graph_identifier} | headers]
      else
        headers
      end

    query_params = []

    {state, options} = Keyword.pop(options, :state, nil)

    query_params =
      if !is_nil(state) do
        [{"state", state} | query_params]
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
      metadata() |> Map.put_new(:host_prefix, "{graphIdentifier}.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists tags associated with a specified resource.

  ## Required positional parameters:
   • :resource_arn (t:string String.t/0) (resourceArn)

  ## Optional parameters:
  """
  @spec list_tags_for_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_output(), any()}
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
  Empties the data from a specified Neptune Analytics graph.

  ## Required positional parameters:
   • :graph_identifier (t:string String.t/0) (graphIdentifier)

  ## Optional parameters:
  """
  @spec reset_graph(AWS.Client.t(), String.t(), reset_graph_input(), Keyword.t()) ::
          {:ok, reset_graph_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reset_graph_errors()}
  def reset_graph(%Client{} = client, graph_identifier, input, options \\ []) do
    url_path = "/graphs/#{AWS.Util.encode_uri(graph_identifier)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Restores a graph from a snapshot.

  ## Required positional parameters:
   • :snapshot_identifier (t:string String.t/0) (snapshotIdentifier)

  ## Optional parameters:
  """
  @spec restore_graph_from_snapshot(
          AWS.Client.t(),
          String.t(),
          restore_graph_from_snapshot_input(),
          Keyword.t()
        ) ::
          {:ok, restore_graph_from_snapshot_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, restore_graph_from_snapshot_errors()}
  def restore_graph_from_snapshot(%Client{} = client, snapshot_identifier, input, options \\ []) do
    url_path = "/snapshots/#{AWS.Util.encode_uri(snapshot_identifier)}/restore"
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

  @doc """
  Import data into existing Neptune Analytics graph from Amazon Simple Storage
  Service (S3).

  The graph needs to be empty and in the AVAILABLE state.

  ## Required positional parameters:
   • :graph_identifier (t:string String.t/0) (graphIdentifier)

  ## Optional parameters:
  """
  @spec start_import_task(AWS.Client.t(), String.t(), start_import_task_input(), Keyword.t()) ::
          {:ok, start_import_task_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_import_task_errors()}
  def start_import_task(%Client{} = client, graph_identifier, input, options \\ []) do
    url_path = "/graphs/#{AWS.Util.encode_uri(graph_identifier)}/importtasks"
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

  @doc """
  Adds tags to the specified resource.

  ## Required positional parameters:
   • :resource_arn (t:string String.t/0) (resourceArn)

  ## Optional parameters:
  """
  @spec tag_resource(AWS.Client.t(), String.t(), tag_resource_input(), Keyword.t()) ::
          {:ok, tag_resource_output(), any()}
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
  Removes the specified tags from the specified resource.

  ## Required positional parameters:
   • :resource_arn (t:string String.t/0) (resourceArn)

  ## Optional parameters:
   • :tag_keys (t:String.t/0) (tagKeys)
  """
  @spec untag_resource(AWS.Client.t(), String.t(), untag_resource_input(), Keyword.t()) ::
          {:ok, untag_resource_output(), any()}
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
  Updates the configuration of a specified Neptune Analytics graph

  ## Required positional parameters:
   • :graph_identifier (t:string String.t/0) (graphIdentifier)

  ## Optional parameters:
  """
  @spec update_graph(AWS.Client.t(), String.t(), update_graph_input(), Keyword.t()) ::
          {:ok, update_graph_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_graph_errors()}
  def update_graph(%Client{} = client, graph_identifier, input, options \\ []) do
    url_path = "/graphs/#{AWS.Util.encode_uri(graph_identifier)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
