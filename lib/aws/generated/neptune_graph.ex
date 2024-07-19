# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.NeptuneGraph do
  @moduledoc """
  Neptune Analytics is a new analytics database engine for Amazon Neptune that
  helps customers get to insights faster by quickly processing large amounts of
  graph data, invoking popular graph analytic algorithms in low-latency queries,
  and getting analytics results in seconds.
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

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=neptunegraph%20CancelImportTask&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:task_identifier` (`t:string`) The unique identifier of the import task.

  ## Optional parameters:
  """

  @spec cancel_import_task(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, cancel_import_task_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_import_task_errors()}

  def cancel_import_task(%Client{} = client, task_identifier, options \\ []) do
    url_path = "/importtasks/#{AWS.Util.encode_uri(task_identifier)}"

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

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Cancels a specified query.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=neptunegraph%20CancelQuery&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:query_id` (`t:string`) The unique identifier of the query to cancel.
  * `:graph_identifier` (`t:string`) The unique identifier of the Neptune
  Analytics graph.

  ## Optional parameters:
  """

  @spec cancel_query(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_query_errors()}

  def cancel_query(%Client{} = client, query_id, graph_identifier, options \\ [])
      when is_binary(graph_identifier) do
    url_path = "/queries/#{AWS.Util.encode_uri(query_id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"graphIdentifier", graph_identifier}]

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata() |> Map.put_new(:host_prefix, "{graphIdentifier}.")

    body = nil

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Creates a new Neptune Analytics graph.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=neptunegraph%20CreateGraph&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_graph(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_graph_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_graph_errors()}

  def create_graph(%Client{} = client, options \\ []) do
    url_path = "/graphs"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Creates a snapshot of the specific graph.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=neptunegraph%20CreateGraphSnapshot&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_graph_snapshot(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_graph_snapshot_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_graph_snapshot_errors()}

  def create_graph_snapshot(%Client{} = client, options \\ []) do
    url_path = "/snapshots"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Creates a new Neptune Analytics graph and imports data into it, either from
  Amazon Simple Storage Service (S3) or from a Neptune database or a Neptune
  database snapshot.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=neptunegraph%20CreateGraphUsingImportTask&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_graph_using_import_task(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_graph_using_import_task_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_graph_using_import_task_errors()}

  def create_graph_using_import_task(%Client{} = client, options \\ []) do
    url_path = "/importtasks"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Create a private graph endpoint to allow private access from to the graph from
  within a VPC. You can attach security groups to the private graph endpoint.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=neptunegraph%20CreatePrivateGraphEndpoint&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:graph_identifier` (`t:string`) The unique identifier of the Neptune
  Analytics graph.

  ## Optional parameters:
  """

  @spec create_private_graph_endpoint(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_private_graph_endpoint_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_private_graph_endpoint_errors()}

  def create_private_graph_endpoint(%Client{} = client, graph_identifier, options \\ []) do
    url_path = "/graphs/#{AWS.Util.encode_uri(graph_identifier)}/endpoints/"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Deletes the specified graph. Graphs cannot be deleted if delete-protection is
  enabled.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=neptunegraph%20DeleteGraph&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:graph_identifier` (`t:string`) The unique identifier of the Neptune
  Analytics graph.
  * `:skip_snapshot` (`t:string`) Determines whether a final graph snapshot is
  created before the graph is deleted. If true is specified, no graph snapshot
  is created. If false is specified, a graph snapshot is created before the
  graph is deleted.

  ## Optional parameters:
  """

  @spec delete_graph(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_graph_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_graph_errors()}

  def delete_graph(%Client{} = client, graph_identifier, skip_snapshot, options \\ [])
      when is_binary(skip_snapshot) do
    url_path = "/graphs/#{AWS.Util.encode_uri(graph_identifier)}"

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
    query_params = [{"skipSnapshot", skip_snapshot}]

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Deletes the specifed graph snapshot.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=neptunegraph%20DeleteGraphSnapshot&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:snapshot_identifier` (`t:string`) ID of the graph snapshot to be deleted.

  ## Optional parameters:
  """

  @spec delete_graph_snapshot(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_graph_snapshot_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_graph_snapshot_errors()}

  def delete_graph_snapshot(%Client{} = client, snapshot_identifier, options \\ []) do
    url_path = "/snapshots/#{AWS.Util.encode_uri(snapshot_identifier)}"

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

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Deletes a private graph endpoint.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=neptunegraph%20DeletePrivateGraphEndpoint&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:graph_identifier` (`t:string`) The unique identifier of the Neptune
  Analytics graph.
  * `:vpc_id` (`t:string`) The ID of the VPC where the private endpoint is
  located.

  ## Optional parameters:
  """

  @spec delete_private_graph_endpoint(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_private_graph_endpoint_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_private_graph_endpoint_errors()}

  def delete_private_graph_endpoint(%Client{} = client, graph_identifier, vpc_id, options \\ []) do
    url_path =
      "/graphs/#{AWS.Util.encode_uri(graph_identifier)}/endpoints/#{AWS.Util.encode_uri(vpc_id)}"

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

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Execute an openCypher query. When invoking this operation in a Neptune Analytics
  cluster, the IAM user or role making the request must have a policy attached
  that allows one of the following IAM actions in that cluster, depending on the
  query:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=neptunegraph%20ExecuteQuery&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:graph_identifier` (`t:string`) The unique identifier of the Neptune
  Analytics graph.
  * `:input` (`t:map`):
    * `:query_string` (`t:string`) The query string to be executed.
    * `:explain_mode` (`t:enum["DETAILS|STATIC"]`) The explain mode parameter
  returns a query explain instead of the actual query results. A query explain
  can be used to gather insights about the query execution such as planning
  decisions, time spent on each operator, solutions flowing etc.

  ## Optional parameters:
  """

  @spec execute_query(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, execute_query_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, execute_query_errors()}

  def execute_query(%Client{} = client, graph_identifier, input, options \\ [])
      when is_map(input) and is_binary(graph_identifier) do
    url_path = "/queries"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"graphIdentifier", graph_identifier}]

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata() |> Map.put_new(:host_prefix, "{graphIdentifier}.")

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Gets information about a specified graph.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=neptunegraph%20GetGraph&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:graph_identifier` (`t:string`) The unique identifier of the Neptune
  Analytics graph.

  ## Optional parameters:
  """

  @spec get_graph(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_graph_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_graph_errors()}

  def get_graph(%Client{} = client, graph_identifier, options \\ []) do
    url_path = "/graphs/#{AWS.Util.encode_uri(graph_identifier)}"

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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a specified graph snapshot.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=neptunegraph%20GetGraphSnapshot&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:snapshot_identifier` (`t:string`) The ID of the snapshot to retrieve.

  ## Optional parameters:
  """

  @spec get_graph_snapshot(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_graph_snapshot_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_graph_snapshot_errors()}

  def get_graph_snapshot(%Client{} = client, snapshot_identifier, options \\ []) do
    url_path = "/snapshots/#{AWS.Util.encode_uri(snapshot_identifier)}"

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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a graph summary for a property graph.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=neptunegraph%20GetGraphSummary&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:graph_identifier` (`t:string`) The unique identifier of the Neptune
  Analytics graph.

  ## Optional parameters:
  * `:mode` (`t:enum["BASIC|DETAILED"]`) The summary mode can take one of two
  values: basic (the default), and detailed.
  """

  @spec get_graph_summary(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_graph_summary_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_graph_summary_errors()}

  def get_graph_summary(%Client{} = client, graph_identifier, options \\ [])
      when is_binary(graph_identifier) do
    url_path = "/summary"

    # Validate optional parameters
    optional_params = [mode: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"graphIdentifier", graph_identifier}]

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :mode) do
        [{"mode", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata() |> Map.put_new(:host_prefix, "{graphIdentifier}.")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:mode])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a specified import task.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=neptunegraph%20GetImportTask&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:task_identifier` (`t:string`) The unique identifier of the import task.

  ## Optional parameters:
  """

  @spec get_import_task(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_import_task_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_import_task_errors()}

  def get_import_task(%Client{} = client, task_identifier, options \\ []) do
    url_path = "/importtasks/#{AWS.Util.encode_uri(task_identifier)}"

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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a specified private endpoint.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=neptunegraph%20GetPrivateGraphEndpoint&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:graph_identifier` (`t:string`) The unique identifier of the Neptune
  Analytics graph.
  * `:vpc_id` (`t:string`) The ID of the VPC where the private endpoint is
  located.

  ## Optional parameters:
  """

  @spec get_private_graph_endpoint(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_private_graph_endpoint_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_private_graph_endpoint_errors()}

  def get_private_graph_endpoint(%Client{} = client, graph_identifier, vpc_id, options \\ []) do
    url_path =
      "/graphs/#{AWS.Util.encode_uri(graph_identifier)}/endpoints/#{AWS.Util.encode_uri(vpc_id)}"

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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the status of a specified query.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=neptunegraph%20GetQuery&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:query_id` (`t:string`) The ID of the query in question.
  * `:graph_identifier` (`t:string`) The unique identifier of the Neptune
  Analytics graph.

  ## Optional parameters:
  """

  @spec get_query(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_query_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_query_errors()}

  def get_query(%Client{} = client, query_id, graph_identifier, options \\ [])
      when is_binary(graph_identifier) do
    url_path = "/queries/#{AWS.Util.encode_uri(query_id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"graphIdentifier", graph_identifier}]

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata() |> Map.put_new(:host_prefix, "{graphIdentifier}.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists available snapshots of a specified Neptune Analytics graph.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=neptunegraph%20ListGraphSnapshots&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:graph_identifier` (`t:string`) The unique identifier of the Neptune
  Analytics graph.
  * `:max_results` (`t:integer`) The total number of records to return in the
  command's output.
  * `:next_token` (`t:string`) Pagination token used to paginate output.
  """

  @spec list_graph_snapshots(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_graph_snapshots_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_graph_snapshots_errors()}

  def list_graph_snapshots(%Client{} = client, options \\ []) do
    url_path = "/snapshots"

    # Validate optional parameters
    optional_params = [graph_identifier: nil, max_results: nil, next_token: nil]

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
        [{"nextToken", opt_val} | query_params]
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
      if opt_val = Keyword.get(options, :graph_identifier) do
        [{"graphIdentifier", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:graph_identifier, :max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists available Neptune Analytics graphs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=neptunegraph%20ListGraphs&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The total number of records to return in the
  command's output.
  * `:next_token` (`t:string`) Pagination token used to paginate output.
  """

  @spec list_graphs(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_graphs_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_graphs_errors()}

  def list_graphs(%Client{} = client, options \\ []) do
    url_path = "/graphs"

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
        [{"nextToken", opt_val} | query_params]
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
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists import tasks.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=neptunegraph%20ListImportTasks&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The total number of records to return in the
  command's output.
  * `:next_token` (`t:string`) Pagination token used to paginate output.
  """

  @spec list_import_tasks(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_import_tasks_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_import_tasks_errors()}

  def list_import_tasks(%Client{} = client, options \\ []) do
    url_path = "/importtasks"

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
        [{"nextToken", opt_val} | query_params]
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
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists private endpoints for a specified Neptune Analytics graph.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=neptunegraph%20ListPrivateGraphEndpoints&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:graph_identifier` (`t:string`) The unique identifier of the Neptune
  Analytics graph.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The total number of records to return in the
  command's output.
  * `:next_token` (`t:string`) Pagination token used to paginate output.
  """

  @spec list_private_graph_endpoints(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_private_graph_endpoints_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_private_graph_endpoints_errors()}

  def list_private_graph_endpoints(%Client{} = client, graph_identifier, options \\ []) do
    url_path = "/graphs/#{AWS.Util.encode_uri(graph_identifier)}/endpoints/"

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
        [{"nextToken", opt_val} | query_params]
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
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists active openCypher queries.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=neptunegraph%20ListQueries&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:max_results` (`t:string`) The maximum number of results to be fetched by the
  API.
  * `:graph_identifier` (`t:string`) The unique identifier of the Neptune
  Analytics graph.

  ## Optional parameters:
  * `:state` (`t:enum["ALL|CANCELLING|RUNNING|WAITING"]`) Filtered list of queries
  based on state.
  """

  @spec list_queries(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_queries_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_queries_errors()}

  def list_queries(%Client{} = client, max_results, graph_identifier, options \\ [])
      when is_binary(max_results) and is_binary(graph_identifier) do
    url_path = "/queries"

    # Validate optional parameters
    optional_params = [state: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"graphIdentifier", graph_identifier}]

    # Optional headers

    # Required query params
    query_params = [{"maxResults", max_results}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :state) do
        [{"state", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata() |> Map.put_new(:host_prefix, "{graphIdentifier}.")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:state])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists tags associated with a specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=neptunegraph%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The ARN of the resource.

  ## Optional parameters:
  """

  @spec list_tags_for_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}

  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"

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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Empties the data from a specified Neptune Analytics graph.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=neptunegraph%20ResetGraph&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:graph_identifier` (`t:string`) ID of the graph to reset.

  ## Optional parameters:
  """

  @spec reset_graph(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, reset_graph_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reset_graph_errors()}

  def reset_graph(%Client{} = client, graph_identifier, options \\ []) do
    url_path = "/graphs/#{AWS.Util.encode_uri(graph_identifier)}"

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

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Restores a graph from a snapshot.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=neptunegraph%20RestoreGraphFromSnapshot&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:snapshot_identifier` (`t:string`) The ID of the snapshot in question.

  ## Optional parameters:
  """

  @spec restore_graph_from_snapshot(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, restore_graph_from_snapshot_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, restore_graph_from_snapshot_errors()}

  def restore_graph_from_snapshot(%Client{} = client, snapshot_identifier, options \\ []) do
    url_path = "/snapshots/#{AWS.Util.encode_uri(snapshot_identifier)}/restore"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Import data into existing Neptune Analytics graph from Amazon Simple Storage
  Service (S3). The graph needs to be empty and in the AVAILABLE state.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=neptunegraph%20StartImportTask&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:graph_identifier` (`t:string`) The unique identifier of the Neptune
  Analytics graph.

  ## Optional parameters:
  """

  @spec start_import_task(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, start_import_task_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_import_task_errors()}

  def start_import_task(%Client{} = client, graph_identifier, options \\ []) do
    url_path = "/graphs/#{AWS.Util.encode_uri(graph_identifier)}/importtasks"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Adds tags to the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=neptunegraph%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) ARN of the resource for which tags need to be
  added.

  ## Optional parameters:
  """

  @spec tag_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, tag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}

  def tag_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"

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
  Removes the specified tags from the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=neptunegraph%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) ARN of the resource whose tag needs to be
  removed.
  * `:tag_keys` (`t:list[com.amazonaws.neptunegraph#TagKey]`) Tag keys for the
  tags to be removed.

  ## Optional parameters:
  """

  @spec untag_resource(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, untag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}

  def untag_resource(%Client{} = client, resource_arn, tag_keys, options \\ [])
      when is_binary(tag_keys) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"

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
    query_params = [{"tagKeys", tag_keys}]

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Updates the configuration of a specified Neptune Analytics graph

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=neptunegraph%20UpdateGraph&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:graph_identifier` (`t:string`) The unique identifier of the Neptune
  Analytics graph.

  ## Optional parameters:
  """

  @spec update_graph(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_graph_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_graph_errors()}

  def update_graph(%Client{} = client, graph_identifier, options \\ []) do
    url_path = "/graphs/#{AWS.Util.encode_uri(graph_identifier)}"

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

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end
end
