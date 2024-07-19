# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Kafka do
  @moduledoc """
  The operations for managing an Amazon MSK cluster.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      amazon_msk_cluster() :: %{
        "MskClusterArn" => String.t()
      }
      
  """
  @type amazon_msk_cluster() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_cluster_request() :: %{}
      
  """
  @type describe_cluster_request() :: %{}

  @typedoc """

  ## Example:
      
      describe_vpc_connection_response() :: %{
        "Authentication" => String.t(),
        "CreationTime" => non_neg_integer(),
        "SecurityGroups" => list(String.t()()),
        "State" => list(any()),
        "Subnets" => list(String.t()()),
        "Tags" => map(),
        "TargetClusterArn" => String.t(),
        "VpcConnectionArn" => String.t(),
        "VpcId" => String.t()
      }
      
  """
  @type describe_vpc_connection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_client_vpc_connections_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_client_vpc_connections_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_cluster_v2_request() :: %{}
      
  """
  @type describe_cluster_v2_request() :: %{}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("Tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      provisioned_request() :: %{
        "BrokerNodeGroupInfo" => broker_node_group_info(),
        "ClientAuthentication" => client_authentication(),
        "ConfigurationInfo" => configuration_info(),
        "EncryptionInfo" => encryption_info(),
        "EnhancedMonitoring" => list(any()),
        "KafkaVersion" => String.t(),
        "LoggingInfo" => logging_info(),
        "NumberOfBrokerNodes" => integer(),
        "OpenMonitoring" => open_monitoring_info(),
        "StorageMode" => list(any())
      }
      
  """
  @type provisioned_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compatible_kafka_version() :: %{
        "SourceVersion" => String.t(),
        "TargetVersions" => list(String.t()())
      }
      
  """
  @type compatible_kafka_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_compatible_kafka_versions_response() :: %{
        "CompatibleKafkaVersions" => list(compatible_kafka_version()())
      }
      
  """
  @type get_compatible_kafka_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      topic_replication_update() :: %{
        "CopyAccessControlListsForTopics" => boolean(),
        "CopyTopicConfigurations" => boolean(),
        "DetectAndCopyNewTopics" => boolean(),
        "TopicsToExclude" => list(String.t()()),
        "TopicsToReplicate" => list(String.t()())
      }
      
  """
  @type topic_replication_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_vpc_connection_response() :: %{
        "Authentication" => String.t(),
        "ClientSubnets" => list(String.t()()),
        "CreationTime" => non_neg_integer(),
        "SecurityGroups" => list(String.t()()),
        "State" => list(any()),
        "Tags" => map(),
        "VpcConnectionArn" => String.t(),
        "VpcId" => String.t()
      }
      
  """
  @type create_vpc_connection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_broker_storage_response() :: %{
        "ClusterArn" => String.t(),
        "ClusterOperationArn" => String.t()
      }
      
  """
  @type update_broker_storage_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_broker_type_response() :: %{
        "ClusterArn" => String.t(),
        "ClusterOperationArn" => String.t()
      }
      
  """
  @type update_broker_type_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unauthorized_exception() :: %{
        "InvalidParameter" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type unauthorized_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_storage_request() :: %{
        optional("ProvisionedThroughput") => provisioned_throughput(),
        optional("StorageMode") => list(any()),
        optional("VolumeSizeGB") => integer(),
        required("CurrentVersion") => String.t()
      }
      
  """
  @type update_storage_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_vpc_connections_response() :: %{
        "NextToken" => String.t(),
        "VpcConnections" => list(vpc_connection()())
      }
      
  """
  @type list_vpc_connections_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_configuration_request() :: %{
        optional("Description") => String.t(),
        required("ServerProperties") => binary()
      }
      
  """
  @type update_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      prometheus() :: %{
        "JmxExporter" => jmx_exporter(),
        "NodeExporter" => node_exporter()
      }
      
  """
  @type prometheus() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_cluster_response() :: %{
        "ClusterInfo" => cluster_info()
      }
      
  """
  @type describe_cluster_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      serverless_client_authentication() :: %{
        "Sasl" => serverless_sasl()
      }
      
  """
  @type serverless_client_authentication() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      open_monitoring() :: %{
        "Prometheus" => prometheus()
      }
      
  """
  @type open_monitoring() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_info() :: %{
        "ActiveOperationArn" => String.t(),
        "BrokerNodeGroupInfo" => broker_node_group_info(),
        "ClientAuthentication" => client_authentication(),
        "ClusterArn" => String.t(),
        "ClusterName" => String.t(),
        "CreationTime" => non_neg_integer(),
        "CurrentBrokerSoftwareInfo" => broker_software_info(),
        "CurrentVersion" => String.t(),
        "CustomerActionStatus" => list(any()),
        "EncryptionInfo" => encryption_info(),
        "EnhancedMonitoring" => list(any()),
        "LoggingInfo" => logging_info(),
        "NumberOfBrokerNodes" => integer(),
        "OpenMonitoring" => open_monitoring(),
        "State" => list(any()),
        "StateInfo" => state_info(),
        "StorageMode" => list(any()),
        "Tags" => map(),
        "ZookeeperConnectString" => String.t(),
        "ZookeeperConnectStringTls" => String.t()
      }
      
  """
  @type cluster_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_operation_step() :: %{
        "StepInfo" => cluster_operation_step_info(),
        "StepName" => String.t()
      }
      
  """
  @type cluster_operation_step() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_cluster_response() :: %{
        "ClusterArn" => String.t(),
        "ClusterName" => String.t(),
        "State" => list(any())
      }
      
  """
  @type create_cluster_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_operation_v2_summary() :: %{
        "ClusterArn" => String.t(),
        "ClusterType" => list(any()),
        "EndTime" => non_neg_integer(),
        "OperationArn" => String.t(),
        "OperationState" => String.t(),
        "OperationType" => String.t(),
        "StartTime" => non_neg_integer()
      }
      
  """
  @type cluster_operation_v2_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_replication_info_request() :: %{
        optional("ConsumerGroupReplication") => consumer_group_replication_update(),
        optional("TopicReplication") => topic_replication_update(),
        required("CurrentVersion") => String.t(),
        required("SourceKafkaClusterArn") => String.t(),
        required("TargetKafkaClusterArn") => String.t()
      }
      
  """
  @type update_replication_info_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      forbidden_exception() :: %{
        "InvalidParameter" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type forbidden_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      logging_info() :: %{
        required("BrokerLogs") => broker_logs()
      }
      
  """
  @type logging_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_configurations_response() :: %{
        "Configurations" => list(configuration()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_client_vpc_connections_response() :: %{
        "ClientVpcConnections" => list(client_vpc_connection()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_client_vpc_connections_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_security_response() :: %{
        "ClusterArn" => String.t(),
        "ClusterOperationArn" => String.t()
      }
      
  """
  @type update_security_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reboot_broker_response() :: %{
        "ClusterArn" => String.t(),
        "ClusterOperationArn" => String.t()
      }
      
  """
  @type reboot_broker_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_connectivity_response() :: %{
        "ClusterArn" => String.t(),
        "ClusterOperationArn" => String.t()
      }
      
  """
  @type update_connectivity_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_cluster_operations_v2_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_cluster_operations_v2_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kafka_cluster_summary() :: %{
        "AmazonMskCluster" => amazon_msk_cluster(),
        "KafkaClusterAlias" => String.t()
      }
      
  """
  @type kafka_cluster_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      broker_logs() :: %{
        optional("CloudWatchLogs") => cloud_watch_logs(),
        optional("Firehose") => firehose(),
        optional("S3") => s3()
      }
      
  """
  @type broker_logs() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_cluster_configuration_request() :: %{
        required("ConfigurationInfo") => configuration_info(),
        required("CurrentVersion") => String.t()
      }
      
  """
  @type update_cluster_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_storage_response() :: %{
        "ClusterArn" => String.t(),
        "ClusterOperationArn" => String.t()
      }
      
  """
  @type update_storage_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kafka_cluster_client_vpc_config() :: %{
        "SecurityGroupIds" => list(String.t()()),
        "SubnetIds" => list(String.t()())
      }
      
  """
  @type kafka_cluster_client_vpc_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      configuration() :: %{
        "Arn" => String.t(),
        "CreationTime" => non_neg_integer(),
        "Description" => String.t(),
        "KafkaVersions" => list(String.t()()),
        "LatestRevision" => configuration_revision(),
        "Name" => String.t(),
        "State" => list(any())
      }
      
  """
  @type configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_replicator_response() :: %{
        "ReplicatorArn" => String.t(),
        "ReplicatorName" => String.t(),
        "ReplicatorState" => list(any())
      }
      
  """
  @type create_replicator_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      client_vpc_connection() :: %{
        "Authentication" => String.t(),
        "CreationTime" => non_neg_integer(),
        "Owner" => String.t(),
        "State" => list(any()),
        "VpcConnectionArn" => String.t()
      }
      
  """
  @type client_vpc_connection() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_identity() :: %{
        "PrincipalId" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type user_identity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_clusters_v2_request() :: %{
        optional("ClusterNameFilter") => String.t(),
        optional("ClusterTypeFilter") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_clusters_v2_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_replication_info_response() :: %{
        "ReplicatorArn" => String.t(),
        "ReplicatorState" => list(any())
      }
      
  """
  @type update_replication_info_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replication_state_info() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type replication_state_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      public_access() :: %{
        "Type" => String.t()
      }
      
  """
  @type public_access() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      configuration_info() :: %{
        "Arn" => String.t(),
        "Revision" => float()
      }
      
  """
  @type configuration_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      error_info() :: %{
        "ErrorCode" => String.t(),
        "ErrorString" => String.t()
      }
      
  """
  @type error_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_cluster_policy_response() :: %{}
      
  """
  @type delete_cluster_policy_response() :: %{}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_connection() :: %{
        "Authentication" => String.t(),
        "CreationTime" => non_neg_integer(),
        "State" => list(any()),
        "TargetClusterArn" => String.t(),
        "VpcConnectionArn" => String.t(),
        "VpcId" => String.t()
      }
      
  """
  @type vpc_connection() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replication_info_summary() :: %{
        "SourceKafkaClusterAlias" => String.t(),
        "TargetKafkaClusterAlias" => String.t()
      }
      
  """
  @type replication_info_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_vpc_connection_request() :: %{
        optional("Tags") => map(),
        required("Authentication") => String.t(),
        required("ClientSubnets") => list(String.t()()),
        required("SecurityGroups") => list(String.t()()),
        required("TargetClusterArn") => String.t(),
        required("VpcId") => String.t()
      }
      
  """
  @type create_vpc_connection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      serverless_sasl() :: %{
        "Iam" => iam()
      }
      
  """
  @type serverless_sasl() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_requests_exception() :: %{
        "InvalidParameter" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      node_exporter_info() :: %{
        "EnabledInBroker" => boolean()
      }
      
  """
  @type node_exporter_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_replicator_request() :: %{
        optional("CurrentVersion") => String.t()
      }
      
  """
  @type delete_replicator_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_associate_scram_secret_request() :: %{
        required("SecretArnList") => list(String.t()())
      }
      
  """
  @type batch_associate_scram_secret_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_replicator_request() :: %{
        optional("Description") => String.t(),
        optional("Tags") => map(),
        required("KafkaClusters") => list(kafka_cluster()()),
        required("ReplicationInfoList") => list(replication_info()()),
        required("ReplicatorName") => String.t(),
        required("ServiceExecutionRoleArn") => String.t()
      }
      
  """
  @type create_replicator_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_replicator_request() :: %{}
      
  """
  @type describe_replicator_request() :: %{}

  @typedoc """

  ## Example:
      
      list_cluster_operations_response() :: %{
        "ClusterOperationInfoList" => list(cluster_operation_info()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_cluster_operations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_configurations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      consumer_group_replication() :: %{
        "ConsumerGroupsToExclude" => list(String.t()()),
        "ConsumerGroupsToReplicate" => list(String.t()()),
        "DetectAndCopyNewConsumerGroups" => boolean(),
        "SynchroniseConsumerGroupOffsets" => boolean()
      }
      
  """
  @type consumer_group_replication() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replication_info_description() :: %{
        "ConsumerGroupReplication" => consumer_group_replication(),
        "SourceKafkaClusterAlias" => String.t(),
        "TargetCompressionType" => list(any()),
        "TargetKafkaClusterAlias" => String.t(),
        "TopicReplication" => topic_replication()
      }
      
  """
  @type replication_info_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      node_info() :: %{
        "AddedToClusterTime" => String.t(),
        "BrokerNodeInfo" => broker_node_info(),
        "ControllerNodeInfo" => controller_node_info(),
        "InstanceType" => String.t(),
        "NodeARN" => String.t(),
        "NodeType" => list(any()),
        "ZookeeperNodeInfo" => zookeeper_node_info()
      }
      
  """
  @type node_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kafka_cluster() :: %{
        "AmazonMskCluster" => amazon_msk_cluster(),
        "VpcConfig" => kafka_cluster_client_vpc_config()
      }
      
  """
  @type kafka_cluster() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_broker_count_request() :: %{
        required("CurrentVersion") => String.t(),
        required("TargetNumberOfBrokerNodes") => integer()
      }
      
  """
  @type update_broker_count_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_configuration_response() :: %{
        "Arn" => String.t(),
        "State" => list(any())
      }
      
  """
  @type delete_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_cluster_configuration_response() :: %{
        "ClusterArn" => String.t(),
        "ClusterOperationArn" => String.t()
      }
      
  """
  @type update_cluster_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      topic_replication() :: %{
        "CopyAccessControlListsForTopics" => boolean(),
        "CopyTopicConfigurations" => boolean(),
        "DetectAndCopyNewTopics" => boolean(),
        "StartingPosition" => replication_starting_position(),
        "TopicsToExclude" => list(String.t()()),
        "TopicsToReplicate" => list(String.t()())
      }
      
  """
  @type topic_replication() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_vpc_connection_request() :: %{}
      
  """
  @type delete_vpc_connection_request() :: %{}

  @typedoc """

  ## Example:
      
      update_cluster_kafka_version_response() :: %{
        "ClusterArn" => String.t(),
        "ClusterOperationArn" => String.t()
      }
      
  """
  @type update_cluster_kafka_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_vpc_connections_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_vpc_connections_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_operation_v2_provisioned() :: %{
        "OperationSteps" => list(cluster_operation_step()()),
        "SourceClusterInfo" => mutable_cluster_info(),
        "TargetClusterInfo" => mutable_cluster_info(),
        "VpcConnectionInfo" => vpc_connection_info()
      }
      
  """
  @type cluster_operation_v2_provisioned() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replication_starting_position() :: %{
        "Type" => list(any())
      }
      
  """
  @type replication_starting_position() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_cluster_v2_response() :: %{
        "ClusterArn" => String.t(),
        "ClusterName" => String.t(),
        "ClusterType" => list(any()),
        "State" => list(any())
      }
      
  """
  @type create_cluster_v2_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      node_exporter() :: %{
        "EnabledInBroker" => boolean()
      }
      
  """
  @type node_exporter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      jmx_exporter() :: %{
        "EnabledInBroker" => boolean()
      }
      
  """
  @type jmx_exporter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      connectivity_info() :: %{
        "PublicAccess" => public_access(),
        "VpcConnectivity" => vpc_connectivity()
      }
      
  """
  @type connectivity_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tls() :: %{
        "CertificateAuthorityArnList" => list(String.t()()),
        "Enabled" => boolean()
      }
      
  """
  @type tls() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      broker_node_group_info() :: %{
        "BrokerAZDistribution" => list(any()),
        "ClientSubnets" => list(String.t()()),
        "ConnectivityInfo" => connectivity_info(),
        "InstanceType" => String.t(),
        "SecurityGroups" => list(String.t()()),
        "StorageInfo" => storage_info(),
        "ZoneIds" => list(String.t()())
      }
      
  """
  @type broker_node_group_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      controller_node_info() :: %{
        "Endpoints" => list(String.t()())
      }
      
  """
  @type controller_node_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_cluster_request() :: %{
        optional("ClientAuthentication") => client_authentication(),
        optional("ConfigurationInfo") => configuration_info(),
        optional("EncryptionInfo") => encryption_info(),
        optional("EnhancedMonitoring") => list(any()),
        optional("LoggingInfo") => logging_info(),
        optional("OpenMonitoring") => open_monitoring_info(),
        optional("StorageMode") => list(any()),
        optional("Tags") => map(),
        required("BrokerNodeGroupInfo") => broker_node_group_info(),
        required("ClusterName") => String.t(),
        required("KafkaVersion") => String.t(),
        required("NumberOfBrokerNodes") => integer()
      }
      
  """
  @type create_cluster_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "InvalidParameter" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_configuration_request() :: %{}
      
  """
  @type delete_configuration_request() :: %{}

  @typedoc """

  ## Example:
      
      describe_cluster_operation_v2_response() :: %{
        "ClusterOperationInfo" => cluster_operation_v2()
      }
      
  """
  @type describe_cluster_operation_v2_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_cluster_policy_request() :: %{}
      
  """
  @type get_cluster_policy_request() :: %{}

  @typedoc """

  ## Example:
      
      open_monitoring_info() :: %{
        "Prometheus" => prometheus_info()
      }
      
  """
  @type open_monitoring_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster() :: %{
        "ActiveOperationArn" => String.t(),
        "ClusterArn" => String.t(),
        "ClusterName" => String.t(),
        "ClusterType" => list(any()),
        "CreationTime" => non_neg_integer(),
        "CurrentVersion" => String.t(),
        "Provisioned" => provisioned(),
        "Serverless" => serverless(),
        "State" => list(any()),
        "StateInfo" => state_info(),
        "Tags" => map()
      }
      
  """
  @type cluster() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_connection_info_serverless() :: %{
        "CreationTime" => non_neg_integer(),
        "Owner" => String.t(),
        "UserIdentity" => user_identity(),
        "VpcConnectionArn" => String.t()
      }
      
  """
  @type vpc_connection_info_serverless() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_connectivity_scram() :: %{
        "Enabled" => boolean()
      }
      
  """
  @type vpc_connectivity_scram() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reboot_broker_request() :: %{
        required("BrokerIds") => list(String.t()())
      }
      
  """
  @type reboot_broker_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      encryption_in_transit() :: %{
        "ClientBroker" => list(any()),
        "InCluster" => boolean()
      }
      
  """
  @type encryption_in_transit() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_compatible_kafka_versions_request() :: %{
        optional("ClusterArn") => String.t()
      }
      
  """
  @type get_compatible_kafka_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bootstrap_brokers_response() :: %{
        "BootstrapBrokerString" => String.t(),
        "BootstrapBrokerStringPublicSaslIam" => String.t(),
        "BootstrapBrokerStringPublicSaslScram" => String.t(),
        "BootstrapBrokerStringPublicTls" => String.t(),
        "BootstrapBrokerStringSaslIam" => String.t(),
        "BootstrapBrokerStringSaslScram" => String.t(),
        "BootstrapBrokerStringTls" => String.t(),
        "BootstrapBrokerStringVpcConnectivitySaslIam" => String.t(),
        "BootstrapBrokerStringVpcConnectivitySaslScram" => String.t(),
        "BootstrapBrokerStringVpcConnectivityTls" => String.t()
      }
      
  """
  @type get_bootstrap_brokers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      jmx_exporter_info() :: %{
        "EnabledInBroker" => boolean()
      }
      
  """
  @type jmx_exporter_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_configuration_revision_request() :: %{}
      
  """
  @type describe_configuration_revision_request() :: %{}

  @typedoc """

  ## Example:
      
      vpc_connectivity_iam() :: %{
        "Enabled" => boolean()
      }
      
  """
  @type vpc_connectivity_iam() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_broker_storage_request() :: %{
        required("CurrentVersion") => String.t(),
        required("TargetBrokerEBSVolumeInfo") => list(broker_ebs_volume_info()())
      }
      
  """
  @type update_broker_storage_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      not_found_exception() :: %{
        "InvalidParameter" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_kafka_versions_response() :: %{
        "KafkaVersions" => list(kafka_version()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_kafka_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_replicator_response() :: %{
        "ReplicatorArn" => String.t(),
        "ReplicatorState" => list(any())
      }
      
  """
  @type delete_replicator_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_cluster_kafka_version_request() :: %{
        optional("ConfigurationInfo") => configuration_info(),
        required("CurrentVersion") => String.t(),
        required("TargetKafkaVersion") => String.t()
      }
      
  """
  @type update_cluster_kafka_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_config() :: %{
        "SecurityGroupIds" => list(String.t()()),
        "SubnetIds" => list(String.t()())
      }
      
  """
  @type vpc_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_nodes_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_nodes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_clusters_v2_response() :: %{
        "ClusterInfoList" => list(cluster()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_clusters_v2_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_security_request() :: %{
        optional("ClientAuthentication") => client_authentication(),
        optional("EncryptionInfo") => encryption_info(),
        required("CurrentVersion") => String.t()
      }
      
  """
  @type update_security_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_configuration_request() :: %{
        optional("Description") => String.t(),
        optional("KafkaVersions") => list(String.t()()),
        required("Name") => String.t(),
        required("ServerProperties") => binary()
      }
      
  """
  @type create_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_connectivity_client_authentication() :: %{
        "Sasl" => vpc_connectivity_sasl(),
        "Tls" => vpc_connectivity_tls()
      }
      
  """
  @type vpc_connectivity_client_authentication() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      serverless_request() :: %{
        "ClientAuthentication" => serverless_client_authentication(),
        "VpcConfigs" => list(vpc_config()())
      }
      
  """
  @type serverless_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_cluster_policy_request() :: %{}
      
  """
  @type delete_cluster_policy_request() :: %{}

  @typedoc """

  ## Example:
      
      list_replicators_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ReplicatorNameFilter") => String.t()
      }
      
  """
  @type list_replicators_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_unavailable_exception() :: %{
        "InvalidParameter" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_connectivity_tls() :: %{
        "Enabled" => boolean()
      }
      
  """
  @type vpc_connectivity_tls() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_clusters_response() :: %{
        "ClusterInfoList" => list(cluster_info()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_clusters_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_cluster_policy_response() :: %{
        "CurrentVersion" => String.t()
      }
      
  """
  @type put_cluster_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_cluster_response() :: %{
        "ClusterArn" => String.t(),
        "State" => list(any())
      }
      
  """
  @type delete_cluster_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_configuration_revisions_response() :: %{
        "NextToken" => String.t(),
        "Revisions" => list(configuration_revision()())
      }
      
  """
  @type list_configuration_revisions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      storage_info() :: %{
        "EbsStorageInfo" => ebs_storage_info()
      }
      
  """
  @type storage_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_configuration_response() :: %{
        "Arn" => String.t(),
        "CreationTime" => non_neg_integer(),
        "LatestRevision" => configuration_revision(),
        "Name" => String.t(),
        "State" => list(any())
      }
      
  """
  @type create_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_kafka_versions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_kafka_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_monitoring_request() :: %{
        optional("EnhancedMonitoring") => list(any()),
        optional("LoggingInfo") => logging_info(),
        optional("OpenMonitoring") => open_monitoring_info(),
        required("CurrentVersion") => String.t()
      }
      
  """
  @type update_monitoring_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      iam() :: %{
        "Enabled" => boolean()
      }
      
  """
  @type iam() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_cluster_operation_response() :: %{
        "ClusterOperationInfo" => cluster_operation_info()
      }
      
  """
  @type describe_cluster_operation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_cluster_policy_response() :: %{
        "CurrentVersion" => String.t(),
        "Policy" => String.t()
      }
      
  """
  @type get_cluster_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      consumer_group_replication_update() :: %{
        "ConsumerGroupsToExclude" => list(String.t()()),
        "ConsumerGroupsToReplicate" => list(String.t()()),
        "DetectAndCopyNewConsumerGroups" => boolean(),
        "SynchroniseConsumerGroupOffsets" => boolean()
      }
      
  """
  @type consumer_group_replication_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reject_client_vpc_connection_request() :: %{
        required("VpcConnectionArn") => String.t()
      }
      
  """
  @type reject_client_vpc_connection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unauthenticated() :: %{
        optional("Enabled") => boolean()
      }
      
  """
  @type unauthenticated() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      firehose() :: %{
        optional("DeliveryStream") => String.t(),
        required("Enabled") => boolean()
      }
      
  """
  @type firehose() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_cluster_operation_request() :: %{}
      
  """
  @type describe_cluster_operation_request() :: %{}

  @typedoc """

  ## Example:
      
      list_clusters_request() :: %{
        optional("ClusterNameFilter") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_clusters_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_configuration_response() :: %{
        "Arn" => String.t(),
        "LatestRevision" => configuration_revision()
      }
      
  """
  @type update_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_watch_logs() :: %{
        optional("LogGroup") => String.t(),
        required("Enabled") => boolean()
      }
      
  """
  @type cloud_watch_logs() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_configuration_revision_response() :: %{
        "Arn" => String.t(),
        "CreationTime" => non_neg_integer(),
        "Description" => String.t(),
        "Revision" => float(),
        "ServerProperties" => binary()
      }
      
  """
  @type describe_configuration_revision_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_connection_info() :: %{
        "CreationTime" => non_neg_integer(),
        "Owner" => String.t(),
        "UserIdentity" => user_identity(),
        "VpcConnectionArn" => String.t()
      }
      
  """
  @type vpc_connection_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_connectivity_request() :: %{
        required("ConnectivityInfo") => connectivity_info(),
        required("CurrentVersion") => String.t()
      }
      
  """
  @type update_connectivity_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_vpc_connection_request() :: %{}
      
  """
  @type describe_vpc_connection_request() :: %{}

  @typedoc """

  ## Example:
      
      broker_node_info() :: %{
        "AttachedENIId" => String.t(),
        "BrokerId" => float(),
        "ClientSubnet" => String.t(),
        "ClientVpcIpAddress" => String.t(),
        "CurrentBrokerSoftwareInfo" => broker_software_info(),
        "Endpoints" => list(String.t()())
      }
      
  """
  @type broker_node_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      zookeeper_node_info() :: %{
        "AttachedENIId" => String.t(),
        "ClientVpcIpAddress" => String.t(),
        "Endpoints" => list(String.t()()),
        "ZookeeperId" => float(),
        "ZookeeperVersion" => String.t()
      }
      
  """
  @type zookeeper_node_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ebs_storage_info() :: %{
        "ProvisionedThroughput" => provisioned_throughput(),
        "VolumeSize" => integer()
      }
      
  """
  @type ebs_storage_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_cluster_request() :: %{
        optional("CurrentVersion") => String.t()
      }
      
  """
  @type delete_cluster_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      provisioned_throughput() :: %{
        "Enabled" => boolean(),
        "VolumeThroughput" => integer()
      }
      
  """
  @type provisioned_throughput() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      encryption_at_rest() :: %{
        "DataVolumeKMSKeyId" => String.t()
      }
      
  """
  @type encryption_at_rest() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_broker_count_response() :: %{
        "ClusterArn" => String.t(),
        "ClusterOperationArn" => String.t()
      }
      
  """
  @type update_broker_count_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_cluster_policy_request() :: %{
        optional("CurrentVersion") => String.t(),
        required("Policy") => String.t()
      }
      
  """
  @type put_cluster_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_configuration_response() :: %{
        "Arn" => String.t(),
        "CreationTime" => non_neg_integer(),
        "Description" => String.t(),
        "KafkaVersions" => list(String.t()()),
        "LatestRevision" => configuration_revision(),
        "Name" => String.t(),
        "State" => list(any())
      }
      
  """
  @type describe_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      client_authentication() :: %{
        "Sasl" => sasl(),
        "Tls" => tls(),
        "Unauthenticated" => unauthenticated()
      }
      
  """
  @type client_authentication() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      provisioned() :: %{
        "BrokerNodeGroupInfo" => broker_node_group_info(),
        "ClientAuthentication" => client_authentication(),
        "CurrentBrokerSoftwareInfo" => broker_software_info(),
        "CustomerActionStatus" => list(any()),
        "EncryptionInfo" => encryption_info(),
        "EnhancedMonitoring" => list(any()),
        "LoggingInfo" => logging_info(),
        "NumberOfBrokerNodes" => integer(),
        "OpenMonitoring" => open_monitoring_info(),
        "StorageMode" => list(any()),
        "ZookeeperConnectString" => String.t(),
        "ZookeeperConnectStringTls" => String.t()
      }
      
  """
  @type provisioned() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sasl() :: %{
        "Iam" => iam(),
        "Scram" => scram()
      }
      
  """
  @type sasl() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3() :: %{
        optional("Bucket") => String.t(),
        optional("Prefix") => String.t(),
        required("Enabled") => boolean()
      }
      
  """
  @type s3() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_cluster_operations_v2_response() :: %{
        "ClusterOperationInfoList" => list(cluster_operation_v2_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_cluster_operations_v2_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{}
      
  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:
      
      internal_server_error_exception() :: %{
        "InvalidParameter" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type internal_server_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_replicators_response() :: %{
        "NextToken" => String.t(),
        "Replicators" => list(replicator_summary()())
      }
      
  """
  @type list_replicators_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_cluster_operations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_cluster_operations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_replicator_response() :: %{
        "CreationTime" => non_neg_integer(),
        "CurrentVersion" => String.t(),
        "IsReplicatorReference" => boolean(),
        "KafkaClusters" => list(kafka_cluster_description()()),
        "ReplicationInfoList" => list(replication_info_description()()),
        "ReplicatorArn" => String.t(),
        "ReplicatorDescription" => String.t(),
        "ReplicatorName" => String.t(),
        "ReplicatorResourceArn" => String.t(),
        "ReplicatorState" => list(any()),
        "ServiceExecutionRoleArn" => String.t(),
        "StateInfo" => replication_state_info(),
        "Tags" => map()
      }
      
  """
  @type describe_replicator_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kafka_cluster_description() :: %{
        "AmazonMskCluster" => amazon_msk_cluster(),
        "KafkaClusterAlias" => String.t(),
        "VpcConfig" => kafka_cluster_client_vpc_config()
      }
      
  """
  @type kafka_cluster_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kafka_version() :: %{
        optional("Status") => list(any()),
        optional("Version") => String.t()
      }
      
  """
  @type kafka_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_vpc_connection_response() :: %{
        "State" => list(any()),
        "VpcConnectionArn" => String.t()
      }
      
  """
  @type delete_vpc_connection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      encryption_info() :: %{
        "EncryptionAtRest" => encryption_at_rest(),
        "EncryptionInTransit" => encryption_in_transit()
      }
      
  """
  @type encryption_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_configuration_request() :: %{}
      
  """
  @type describe_configuration_request() :: %{}

  @typedoc """

  ## Example:
      
      cluster_operation_info() :: %{
        "ClientRequestId" => String.t(),
        "ClusterArn" => String.t(),
        "CreationTime" => non_neg_integer(),
        "EndTime" => non_neg_integer(),
        "ErrorInfo" => error_info(),
        "OperationArn" => String.t(),
        "OperationState" => String.t(),
        "OperationSteps" => list(cluster_operation_step()()),
        "OperationType" => String.t(),
        "SourceClusterInfo" => mutable_cluster_info(),
        "TargetClusterInfo" => mutable_cluster_info(),
        "VpcConnectionInfo" => vpc_connection_info()
      }
      
  """
  @type cluster_operation_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bad_request_exception() :: %{
        "InvalidParameter" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bootstrap_brokers_request() :: %{}
      
  """
  @type get_bootstrap_brokers_request() :: %{}

  @typedoc """

  ## Example:
      
      batch_disassociate_scram_secret_response() :: %{
        "ClusterArn" => String.t(),
        "UnprocessedScramSecrets" => list(unprocessed_scram_secret()())
      }
      
  """
  @type batch_disassociate_scram_secret_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_cluster_v2_response() :: %{
        "ClusterInfo" => cluster()
      }
      
  """
  @type describe_cluster_v2_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      prometheus_info() :: %{
        "JmxExporter" => jmx_exporter_info(),
        "NodeExporter" => node_exporter_info()
      }
      
  """
  @type prometheus_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_cluster_operation_v2_request() :: %{}
      
  """
  @type describe_cluster_operation_v2_request() :: %{}

  @typedoc """

  ## Example:
      
      configuration_revision() :: %{
        "CreationTime" => non_neg_integer(),
        "Description" => String.t(),
        "Revision" => float()
      }
      
  """
  @type configuration_revision() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scram() :: %{
        "Enabled" => boolean()
      }
      
  """
  @type scram() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      mutable_cluster_info() :: %{
        "BrokerCountUpdateInfo" => broker_count_update_info(),
        "BrokerEBSVolumeInfo" => list(broker_ebs_volume_info()()),
        "ClientAuthentication" => client_authentication(),
        "ConfigurationInfo" => configuration_info(),
        "ConnectivityInfo" => connectivity_info(),
        "EncryptionInfo" => encryption_info(),
        "EnhancedMonitoring" => list(any()),
        "InstanceType" => String.t(),
        "KafkaVersion" => String.t(),
        "LoggingInfo" => logging_info(),
        "NumberOfBrokerNodes" => integer(),
        "OpenMonitoring" => open_monitoring(),
        "StorageMode" => list(any())
      }
      
  """
  @type mutable_cluster_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      broker_ebs_volume_info() :: %{
        "KafkaBrokerNodeId" => String.t(),
        "ProvisionedThroughput" => provisioned_throughput(),
        "VolumeSizeGB" => integer()
      }
      
  """
  @type broker_ebs_volume_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_scram_secrets_response() :: %{
        "NextToken" => String.t(),
        "SecretArnList" => list(String.t()())
      }
      
  """
  @type list_scram_secrets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_associate_scram_secret_response() :: %{
        "ClusterArn" => String.t(),
        "UnprocessedScramSecrets" => list(unprocessed_scram_secret()())
      }
      
  """
  @type batch_associate_scram_secret_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_monitoring_response() :: %{
        "ClusterArn" => String.t(),
        "ClusterOperationArn" => String.t()
      }
      
  """
  @type update_monitoring_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_connectivity() :: %{
        "ClientAuthentication" => vpc_connectivity_client_authentication()
      }
      
  """
  @type vpc_connectivity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reject_client_vpc_connection_response() :: %{}
      
  """
  @type reject_client_vpc_connection_response() :: %{}

  @typedoc """

  ## Example:
      
      replicator_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "CurrentVersion" => String.t(),
        "IsReplicatorReference" => boolean(),
        "KafkaClustersSummary" => list(kafka_cluster_summary()()),
        "ReplicationInfoSummaryList" => list(replication_info_summary()()),
        "ReplicatorArn" => String.t(),
        "ReplicatorName" => String.t(),
        "ReplicatorResourceArn" => String.t(),
        "ReplicatorState" => list(any())
      }
      
  """
  @type replicator_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      state_info() :: %{
        optional("Code") => String.t(),
        optional("Message") => String.t()
      }
      
  """
  @type state_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_scram_secrets_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_scram_secrets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_disassociate_scram_secret_request() :: %{
        required("SecretArnList") => list(String.t()())
      }
      
  """
  @type batch_disassociate_scram_secret_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_broker_type_request() :: %{
        required("CurrentVersion") => String.t(),
        required("TargetInstanceType") => String.t()
      }
      
  """
  @type update_broker_type_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unprocessed_scram_secret() :: %{
        "ErrorCode" => String.t(),
        "ErrorMessage" => String.t(),
        "SecretArn" => String.t()
      }
      
  """
  @type unprocessed_scram_secret() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_connectivity_sasl() :: %{
        "Iam" => vpc_connectivity_iam(),
        "Scram" => vpc_connectivity_scram()
      }
      
  """
  @type vpc_connectivity_sasl() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replication_info() :: %{
        "ConsumerGroupReplication" => consumer_group_replication(),
        "SourceKafkaClusterArn" => String.t(),
        "TargetCompressionType" => list(any()),
        "TargetKafkaClusterArn" => String.t(),
        "TopicReplication" => topic_replication()
      }
      
  """
  @type replication_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_operation_v2() :: %{
        "ClusterArn" => String.t(),
        "ClusterType" => list(any()),
        "EndTime" => non_neg_integer(),
        "ErrorInfo" => error_info(),
        "OperationArn" => String.t(),
        "OperationState" => String.t(),
        "OperationType" => String.t(),
        "Provisioned" => cluster_operation_v2_provisioned(),
        "Serverless" => cluster_operation_v2_serverless(),
        "StartTime" => non_neg_integer()
      }
      
  """
  @type cluster_operation_v2() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      broker_count_update_info() :: %{
        "CreatedBrokerIds" => list(float()()),
        "DeletedBrokerIds" => list(float()())
      }
      
  """
  @type broker_count_update_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_nodes_response() :: %{
        "NextToken" => String.t(),
        "NodeInfoList" => list(node_info()())
      }
      
  """
  @type list_nodes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_configuration_revisions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_configuration_revisions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_operation_v2_serverless() :: %{
        "VpcConnectionInfo" => vpc_connection_info_serverless()
      }
      
  """
  @type cluster_operation_v2_serverless() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_cluster_v2_request() :: %{
        optional("Provisioned") => provisioned_request(),
        optional("Serverless") => serverless_request(),
        optional("Tags") => map(),
        required("ClusterName") => String.t()
      }
      
  """
  @type create_cluster_v2_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_operation_step_info() :: %{
        "StepStatus" => String.t()
      }
      
  """
  @type cluster_operation_step_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      serverless() :: %{
        "ClientAuthentication" => serverless_client_authentication(),
        "VpcConfigs" => list(vpc_config()())
      }
      
  """
  @type serverless() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      broker_software_info() :: %{
        "ConfigurationArn" => String.t(),
        "ConfigurationRevision" => float(),
        "KafkaVersion" => String.t()
      }
      
  """
  @type broker_software_info() :: %{String.t() => any()}

  @type batch_associate_scram_secret_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type batch_disassociate_scram_secret_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type create_cluster_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type create_cluster_v2_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type create_configuration_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type create_replicator_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type create_vpc_connection_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type delete_cluster_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | forbidden_exception()

  @type delete_cluster_policy_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | forbidden_exception()

  @type delete_configuration_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | forbidden_exception()

  @type delete_replicator_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type delete_vpc_connection_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | forbidden_exception()

  @type describe_cluster_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type describe_cluster_operation_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type describe_cluster_operation_v2_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type describe_cluster_v2_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type describe_configuration_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type describe_configuration_revision_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type describe_replicator_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type describe_vpc_connection_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type get_bootstrap_brokers_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | conflict_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type get_cluster_policy_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | forbidden_exception()

  @type get_compatible_kafka_versions_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type list_client_vpc_connections_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type list_cluster_operations_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type list_cluster_operations_v2_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type list_clusters_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type list_clusters_v2_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type list_configuration_revisions_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type list_configurations_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type list_kafka_versions_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type list_nodes_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | forbidden_exception()

  @type list_replicators_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type list_scram_secrets_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type list_tags_for_resource_errors() ::
          bad_request_exception() | internal_server_error_exception() | not_found_exception()

  @type list_vpc_connections_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type put_cluster_policy_errors() ::
          bad_request_exception() | internal_server_error_exception() | forbidden_exception()

  @type reboot_broker_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type reject_client_vpc_connection_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type tag_resource_errors() ::
          bad_request_exception() | internal_server_error_exception() | not_found_exception()

  @type untag_resource_errors() ::
          bad_request_exception() | internal_server_error_exception() | not_found_exception()

  @type update_broker_count_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type update_broker_storage_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type update_broker_type_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type update_cluster_configuration_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type update_cluster_kafka_version_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type update_configuration_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type update_connectivity_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type update_monitoring_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type update_replication_info_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type update_security_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type update_storage_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  def metadata do
    %{
      api_version: "2018-11-14",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "kafka",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Kafka",
      signature_version: "v4",
      signing_name: "kafka",
      target_prefix: nil
    }
  end

  @doc """
  Associates one or more Scram Secrets with an Amazon MSK cluster.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20BatchAssociateScramSecret&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:cluster_arn` (`t:string`) The Amazon Resource Name (ARN) of the cluster to
  be updated.
  * `:input` (`t:map`):
    * `:secret_arn_list` (`t:list[com.amazonaws.kafka#__string]`) List of AWS
  Secrets Manager secret ARNs.

  ## Optional parameters:
  """

  @spec batch_associate_scram_secret(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, batch_associate_scram_secret_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_associate_scram_secret_errors()}

  def batch_associate_scram_secret(%Client{} = client, cluster_arn, input, options \\ [])
      when is_map(input) do
    url_path = "/v1/clusters/#{AWS.Util.encode_uri(cluster_arn)}/scram-secrets"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Disassociates one or more Scram Secrets from an Amazon MSK cluster.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20BatchDisassociateScramSecret&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:cluster_arn` (`t:string`) The Amazon Resource Name (ARN) of the cluster to
  be updated.
  * `:input` (`t:map`):
    * `:secret_arn_list` (`t:list[com.amazonaws.kafka#__string]`) List of AWS
  Secrets Manager secret ARNs.

  ## Optional parameters:
  """

  @spec batch_disassociate_scram_secret(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, batch_disassociate_scram_secret_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_disassociate_scram_secret_errors()}

  def batch_disassociate_scram_secret(%Client{} = client, cluster_arn, input, options \\ [])
      when is_map(input) do
    url_path = "/v1/clusters/#{AWS.Util.encode_uri(cluster_arn)}/scram-secrets"

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

    body = input

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

  @doc """
  Creates a new MSK cluster.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20CreateCluster&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:map`):
    * `:broker_node_group_info` (`t:structure`) Information about the broker nodes
  in the cluster.
    * `:cluster_name` (`t:string`) The name of the cluster.
    * `:kafka_version` (`t:string`) The version of Apache Kafka.
    * `:number_of_broker_nodes` (`t:integer`) The number of broker nodes in the
  cluster.
    * `:client_authentication` (`t:structure`) Includes all client authentication
  related information.
    * `:configuration_info` (`t:structure`) Represents the configuration that you
  want MSK to use for the brokers in a cluster.
    * `:encryption_info` (`t:structure`) Includes all encryption-related
  information.
    * `:enhanced_monitoring`
  (`t:enum["DEFAULT|PER_BROKER|PER_TOPIC_PER_BROKER|PER_TOPIC_PER_PARTITION"]`)
  Specifies the level of monitoring for the MSK cluster. The possible values
  are DEFAULT, PER_BROKER, PER_TOPIC_PER_BROKER, and PER_TOPIC_PER_PARTITION.
    * `:logging_info` (`t:structure`)
    * `:open_monitoring` (`t:structure`) The settings for open monitoring.
    * `:storage_mode` (`t:enum["LOCAL|TIERED"]`) This controls storage mode for
  supported storage tiers.
    * `:tags` (`t:map`) Create tags when creating the cluster.

  ## Optional parameters:
  """

  @spec create_cluster(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_cluster_errors()}

  def create_cluster(%Client{} = client, input, options \\ []) when is_map(input) do
    url_path = "/v1/clusters"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates a new MSK cluster.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20CreateClusterV2&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:map`):
    * `:cluster_name` (`t:string`) The name of the cluster.
    * `:provisioned` (`t:structure`) Information about the provisioned cluster.
    * `:serverless` (`t:structure`) Information about the serverless cluster.
    * `:tags` (`t:map`) A map of tags that you want the cluster to have.

  ## Optional parameters:
  """

  @spec create_cluster_v2(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_cluster_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_cluster_v2_errors()}

  def create_cluster_v2(%Client{} = client, input, options \\ []) when is_map(input) do
    url_path = "/api/v2/clusters"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates a new MSK configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20CreateConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:map`):
    * `:name` (`t:string`) The name of the configuration.
    * `:server_properties` (`t:blob`) Contents of the server.properties file. When
  using the API, you must ensure that the contents of the file are base64
  encoded. When using the AWS Management Console, the SDK, or the AWS CLI, the
  contents of server.properties can be in plaintext.
    * `:description` (`t:string`) The description of the configuration.
    * `:kafka_versions` (`t:list[com.amazonaws.kafka#__string]`) The versions of
  Apache Kafka with which you can use this MSK configuration.

  ## Optional parameters:
  """

  @spec create_configuration(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_configuration_errors()}

  def create_configuration(%Client{} = client, input, options \\ []) when is_map(input) do
    url_path = "/v1/configurations"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates the replicator.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20CreateReplicator&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:map`):
    * `:kafka_clusters` (`t:list[com.amazonaws.kafka#KafkaCluster]`) Kafka Clusters
  to use in setting up sources / targets for replication.
    * `:replication_info_list` (`t:list[com.amazonaws.kafka#ReplicationInfo]`) A
  list of replication configurations, where each configuration targets a given
  source cluster to target cluster replication flow.
    * `:replicator_name` (`t:string`) The name of the replicator. Alpha-numeric
  characters with '-' are allowed.
    * `:service_execution_role_arn` (`t:string`) The ARN of the IAM role used by the
  replicator to access resources in the customer's account (e.g source and
  target clusters)
    * `:description` (`t:string`) A summary description of the replicator.
    * `:tags` (`t:map`) List of tags to attach to created Replicator.

  ## Optional parameters:
  """

  @spec create_replicator(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_replicator_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_replicator_errors()}

  def create_replicator(%Client{} = client, input, options \\ []) when is_map(input) do
    url_path = "/replication/v1/replicators"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates a new MSK VPC connection.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20CreateVpcConnection&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:map`):
    * `:authentication` (`t:string`) The authentication type of VPC connection.
    * `:client_subnets` (`t:list[com.amazonaws.kafka#__string]`) The list of client
  subnets.
    * `:security_groups` (`t:list[com.amazonaws.kafka#__string]`) The list of
  security groups.
    * `:target_cluster_arn` (`t:string`) The cluster Amazon Resource Name (ARN) for
  the VPC connection.
    * `:vpc_id` (`t:string`) The VPC ID of VPC connection.
    * `:tags` (`t:map`) A map of tags for the VPC connection.

  ## Optional parameters:
  """

  @spec create_vpc_connection(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_vpc_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_vpc_connection_errors()}

  def create_vpc_connection(%Client{} = client, input, options \\ []) when is_map(input) do
    url_path = "/v1/vpc-connection"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Deletes the MSK cluster specified by the Amazon Resource Name (ARN) in the
  request.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20DeleteCluster&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:cluster_arn` (`t:string`) The Amazon Resource Name (ARN) that uniquely
  identifies the cluster.

  ## Optional parameters:
  * `:current_version` (`t:string`) The current version of the MSK cluster.
  """

  @spec delete_cluster(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_cluster_errors()}

  def delete_cluster(%Client{} = client, cluster_arn, options \\ []) do
    url_path = "/v1/clusters/#{AWS.Util.encode_uri(cluster_arn)}"

    # Validate optional parameters
    optional_params = [current_version: nil]

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
      if opt_val = Keyword.get(options, :current_version) do
        [{"currentVersion", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:current_version])

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
  Deletes the MSK cluster policy specified by the Amazon Resource Name (ARN) in
  the request.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20DeleteClusterPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:cluster_arn` (`t:string`) The Amazon Resource Name (ARN) of the cluster.

  ## Optional parameters:
  """

  @spec delete_cluster_policy(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_cluster_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_cluster_policy_errors()}

  def delete_cluster_policy(%Client{} = client, cluster_arn, options \\ []) do
    url_path = "/v1/clusters/#{AWS.Util.encode_uri(cluster_arn)}/policy"

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
  Deletes an MSK Configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20DeleteConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:arn` (`t:string`) The Amazon Resource Name (ARN) that uniquely identifies an
  MSK configuration.

  ## Optional parameters:
  """

  @spec delete_configuration(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_configuration_errors()}

  def delete_configuration(%Client{} = client, arn, options \\ []) do
    url_path = "/v1/configurations/#{AWS.Util.encode_uri(arn)}"

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
  Deletes a replicator.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20DeleteReplicator&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:replicator_arn` (`t:string`) The Amazon Resource Name (ARN) of the
  replicator to be deleted.

  ## Optional parameters:
  * `:current_version` (`t:string`) The current version of the replicator.
  """

  @spec delete_replicator(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_replicator_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_replicator_errors()}

  def delete_replicator(%Client{} = client, replicator_arn, options \\ []) do
    url_path = "/replication/v1/replicators/#{AWS.Util.encode_uri(replicator_arn)}"

    # Validate optional parameters
    optional_params = [current_version: nil]

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
      if opt_val = Keyword.get(options, :current_version) do
        [{"currentVersion", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:current_version])

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
  Deletes a MSK VPC connection.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20DeleteVpcConnection&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:arn` (`t:string`) The Amazon Resource Name (ARN) that uniquely identifies an
  MSK VPC connection.

  ## Optional parameters:
  """

  @spec delete_vpc_connection(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_vpc_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_vpc_connection_errors()}

  def delete_vpc_connection(%Client{} = client, arn, options \\ []) do
    url_path = "/v1/vpc-connection/#{AWS.Util.encode_uri(arn)}"

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
  Returns a description of the MSK cluster whose Amazon Resource Name (ARN) is
  specified in the request.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20DescribeCluster&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:cluster_arn` (`t:string`) The Amazon Resource Name (ARN) that uniquely
  identifies the cluster.

  ## Optional parameters:
  """

  @spec describe_cluster(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_cluster_errors()}

  def describe_cluster(%Client{} = client, cluster_arn, options \\ []) do
    url_path = "/v1/clusters/#{AWS.Util.encode_uri(cluster_arn)}"

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
  Returns a description of the cluster operation specified by the ARN.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20DescribeClusterOperation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:cluster_operation_arn` (`t:string`) The Amazon Resource Name (ARN) that
  uniquely identifies the MSK cluster operation.

  ## Optional parameters:
  """

  @spec describe_cluster_operation(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_cluster_operation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_cluster_operation_errors()}

  def describe_cluster_operation(%Client{} = client, cluster_operation_arn, options \\ []) do
    url_path = "/v1/operations/#{AWS.Util.encode_uri(cluster_operation_arn)}"

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
  Returns a description of the cluster operation specified by the ARN.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20DescribeClusterOperationV2&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:cluster_operation_arn` (`t:string`)

  ## Optional parameters:
  """

  @spec describe_cluster_operation_v2(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_cluster_operation_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_cluster_operation_v2_errors()}

  def describe_cluster_operation_v2(%Client{} = client, cluster_operation_arn, options \\ []) do
    url_path = "/api/v2/operations/#{AWS.Util.encode_uri(cluster_operation_arn)}"

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
  Returns a description of the MSK cluster whose Amazon Resource Name (ARN) is
  specified in the request.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20DescribeClusterV2&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:cluster_arn` (`t:string`) The Amazon Resource Name (ARN) that uniquely
  identifies the cluster.

  ## Optional parameters:
  """

  @spec describe_cluster_v2(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_cluster_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_cluster_v2_errors()}

  def describe_cluster_v2(%Client{} = client, cluster_arn, options \\ []) do
    url_path = "/api/v2/clusters/#{AWS.Util.encode_uri(cluster_arn)}"

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
  Returns a description of this MSK configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20DescribeConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:arn` (`t:string`) The Amazon Resource Name (ARN) that uniquely identifies an
  MSK configuration and all of its revisions.

  ## Optional parameters:
  """

  @spec describe_configuration(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_configuration_errors()}

  def describe_configuration(%Client{} = client, arn, options \\ []) do
    url_path = "/v1/configurations/#{AWS.Util.encode_uri(arn)}"

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
  Returns a description of this revision of the configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20DescribeConfigurationRevision&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:arn` (`t:string`) The Amazon Resource Name (ARN) that uniquely identifies an
  MSK configuration and all of its revisions.
  * `:revision` (`t:long`) A string that uniquely identifies a revision of an MSK
  configuration.

  ## Optional parameters:
  """

  @spec describe_configuration_revision(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_configuration_revision_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_configuration_revision_errors()}

  def describe_configuration_revision(%Client{} = client, arn, revision, options \\ []) do
    url_path =
      "/v1/configurations/#{AWS.Util.encode_uri(arn)}/revisions/#{AWS.Util.encode_uri(revision)}"

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
  Describes a replicator.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20DescribeReplicator&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:replicator_arn` (`t:string`) The Amazon Resource Name (ARN) of the
  replicator to be described.

  ## Optional parameters:
  """

  @spec describe_replicator(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_replicator_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_replicator_errors()}

  def describe_replicator(%Client{} = client, replicator_arn, options \\ []) do
    url_path = "/replication/v1/replicators/#{AWS.Util.encode_uri(replicator_arn)}"

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
  Returns a description of this MSK VPC connection.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20DescribeVpcConnection&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:arn` (`t:string`) The Amazon Resource Name (ARN) that uniquely identifies a
  MSK VPC connection.

  ## Optional parameters:
  """

  @spec describe_vpc_connection(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_vpc_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_vpc_connection_errors()}

  def describe_vpc_connection(%Client{} = client, arn, options \\ []) do
    url_path = "/v1/vpc-connection/#{AWS.Util.encode_uri(arn)}"

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
  A list of brokers that a client application can use to bootstrap.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20GetBootstrapBrokers&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:cluster_arn` (`t:string`) The Amazon Resource Name (ARN) that uniquely
  identifies the cluster.

  ## Optional parameters:
  """

  @spec get_bootstrap_brokers(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_bootstrap_brokers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_bootstrap_brokers_errors()}

  def get_bootstrap_brokers(%Client{} = client, cluster_arn, options \\ []) do
    url_path = "/v1/clusters/#{AWS.Util.encode_uri(cluster_arn)}/bootstrap-brokers"

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
  Get the MSK cluster policy specified by the Amazon Resource Name (ARN) in the
  request.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20GetClusterPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:cluster_arn` (`t:string`) The Amazon Resource Name (ARN) of the cluster.

  ## Optional parameters:
  """

  @spec get_cluster_policy(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_cluster_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_cluster_policy_errors()}

  def get_cluster_policy(%Client{} = client, cluster_arn, options \\ []) do
    url_path = "/v1/clusters/#{AWS.Util.encode_uri(cluster_arn)}/policy"

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
  Gets the Apache Kafka versions to which you can update the MSK cluster.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20GetCompatibleKafkaVersions&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:cluster_arn` (`t:string`) The Amazon Resource Name (ARN) of the cluster
  check.
  """

  @spec get_compatible_kafka_versions(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_compatible_kafka_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_compatible_kafka_versions_errors()}

  def get_compatible_kafka_versions(%Client{} = client, options \\ []) do
    url_path = "/v1/compatible-kafka-versions"

    # Validate optional parameters
    optional_params = [cluster_arn: nil]

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
      if opt_val = Keyword.get(options, :cluster_arn) do
        [{"clusterArn", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:cluster_arn])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of all the VPC connections in this Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20ListClientVpcConnections&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:cluster_arn` (`t:string`) The Amazon Resource Name (ARN) of the cluster.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return in the
  response. If there are more results, the response includes a NextToken
  parameter.
  * `:next_token` (`t:string`) The paginated results marker. When the result of
  the operation is truncated, the call returns NextToken in the response. To
  get the next batch, provide this token in your next request.
  """

  @spec list_client_vpc_connections(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_client_vpc_connections_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_client_vpc_connections_errors()}

  def list_client_vpc_connections(%Client{} = client, cluster_arn, options \\ []) do
    url_path = "/v1/clusters/#{AWS.Util.encode_uri(cluster_arn)}/client-vpc-connections"

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
  Returns a list of all the operations that have been performed on the specified
  MSK cluster.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20ListClusterOperations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:cluster_arn` (`t:string`) The Amazon Resource Name (ARN) that uniquely
  identifies the cluster.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return in the
  response. If there are more results, the response includes a NextToken
  parameter.
  * `:next_token` (`t:string`) The paginated results marker. When the result of
  the operation is truncated, the call returns NextToken in the response. To
  get the next batch, provide this token in your next request.
  """

  @spec list_cluster_operations(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_cluster_operations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_cluster_operations_errors()}

  def list_cluster_operations(%Client{} = client, cluster_arn, options \\ []) do
    url_path = "/v1/clusters/#{AWS.Util.encode_uri(cluster_arn)}/operations"

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
  Returns a list of all the operations that have been performed on the specified
  MSK cluster.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20ListClusterOperationsV2&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:cluster_arn` (`t:string`)

  ## Optional parameters:
  * `:max_results` (`t:integer`)
  * `:next_token` (`t:string`)
  """

  @spec list_cluster_operations_v2(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_cluster_operations_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_cluster_operations_v2_errors()}

  def list_cluster_operations_v2(%Client{} = client, cluster_arn, options \\ []) do
    url_path = "/api/v2/clusters/#{AWS.Util.encode_uri(cluster_arn)}/operations"

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
  Returns a list of all the MSK clusters in the current Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20ListClusters&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:cluster_name_filter` (`t:string`) Specify a prefix of the name of the
  clusters that you want to list. The service lists all the clusters whose
  names start with this prefix.
  * `:max_results` (`t:integer`) The maximum number of results to return in the
  response. If there are more results, the response includes a NextToken
  parameter.
  * `:next_token` (`t:string`) The paginated results marker. When the result of
  the operation is truncated, the call returns NextToken in the response. To
  get the next batch, provide this token in your next request.
  """

  @spec list_clusters(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_clusters_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_clusters_errors()}

  def list_clusters(%Client{} = client, options \\ []) do
    url_path = "/v1/clusters"

    # Validate optional parameters
    optional_params = [cluster_name_filter: nil, max_results: nil, next_token: nil]

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
      if opt_val = Keyword.get(options, :cluster_name_filter) do
        [{"clusterNameFilter", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:cluster_name_filter, :max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of all the MSK clusters in the current Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20ListClustersV2&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:cluster_name_filter` (`t:string`) Specify a prefix of the names of the
  clusters that you want to list. The service lists all the clusters whose
  names start with this prefix.
  * `:cluster_type_filter` (`t:string`) Specify either PROVISIONED or SERVERLESS.
  * `:max_results` (`t:integer`) The maximum number of results to return in the
  response. If there are more results, the response includes a NextToken
  parameter.
  * `:next_token` (`t:string`) The paginated results marker. When the result of
  the operation is truncated, the call returns NextToken in the response. To
  get the next batch, provide this token in your next request.
  """

  @spec list_clusters_v2(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_clusters_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_clusters_v2_errors()}

  def list_clusters_v2(%Client{} = client, options \\ []) do
    url_path = "/api/v2/clusters"

    # Validate optional parameters
    optional_params = [
      cluster_name_filter: nil,
      cluster_type_filter: nil,
      max_results: nil,
      next_token: nil
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
      if opt_val = Keyword.get(options, :cluster_type_filter) do
        [{"clusterTypeFilter", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :cluster_name_filter) do
        [{"clusterNameFilter", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:cluster_name_filter, :cluster_type_filter, :max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of all the MSK configurations in this Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20ListConfigurationRevisions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:arn` (`t:string`) The Amazon Resource Name (ARN) that uniquely identifies an
  MSK configuration and all of its revisions.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return in the
  response. If there are more results, the response includes a NextToken
  parameter.
  * `:next_token` (`t:string`) The paginated results marker. When the result of
  the operation is truncated, the call returns NextToken in the response. To
  get the next batch, provide this token in your next request.
  """

  @spec list_configuration_revisions(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_configuration_revisions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_configuration_revisions_errors()}

  def list_configuration_revisions(%Client{} = client, arn, options \\ []) do
    url_path = "/v1/configurations/#{AWS.Util.encode_uri(arn)}/revisions"

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
  Returns a list of all the MSK configurations in this Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20ListConfigurations&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return in the
  response. If there are more results, the response includes a NextToken
  parameter.
  * `:next_token` (`t:string`) The paginated results marker. When the result of
  the operation is truncated, the call returns NextToken in the response. To
  get the next batch, provide this token in your next request.
  """

  @spec list_configurations(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_configurations_errors()}

  def list_configurations(%Client{} = client, options \\ []) do
    url_path = "/v1/configurations"

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
  Returns a list of Apache Kafka versions.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20ListKafkaVersions&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return in the
  response. If there are more results, the response includes a NextToken
  parameter.
  * `:next_token` (`t:string`) The paginated results marker. When the result of
  the operation is truncated, the call returns NextToken in the response. To
  get the next batch, provide this token in your next request.
  """

  @spec list_kafka_versions(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_kafka_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_kafka_versions_errors()}

  def list_kafka_versions(%Client{} = client, options \\ []) do
    url_path = "/v1/kafka-versions"

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
  Returns a list of the broker nodes in the cluster.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20ListNodes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:cluster_arn` (`t:string`) The Amazon Resource Name (ARN) that uniquely
  identifies the cluster.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return in the
  response. If there are more results, the response includes a NextToken
  parameter.
  * `:next_token` (`t:string`) The paginated results marker. When the result of
  the operation is truncated, the call returns NextToken in the response. To
  get the next batch, provide this token in your next request.
  """

  @spec list_nodes(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_nodes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_nodes_errors()}

  def list_nodes(%Client{} = client, cluster_arn, options \\ []) do
    url_path = "/v1/clusters/#{AWS.Util.encode_uri(cluster_arn)}/nodes"

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
  Lists the replicators.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20ListReplicators&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return in the
  response. If there are more results, the response includes a NextToken
  parameter.
  * `:next_token` (`t:string`) If the response of ListReplicators is truncated, it
  returns a NextToken in the response. This NextToken should be sent in the
  subsequent request to ListReplicators.
  * `:replicator_name_filter` (`t:string`) Returns replicators starting with given
  name.
  """

  @spec list_replicators(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_replicators_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_replicators_errors()}

  def list_replicators(%Client{} = client, options \\ []) do
    url_path = "/replication/v1/replicators"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, replicator_name_filter: nil]

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
      if opt_val = Keyword.get(options, :replicator_name_filter) do
        [{"replicatorNameFilter", opt_val} | query_params]
      else
        query_params
      end

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
      |> Keyword.drop([:max_results, :next_token, :replicator_name_filter])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of the Scram Secrets associated with an Amazon MSK cluster.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20ListScramSecrets&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:cluster_arn` (`t:string`) The arn of the cluster.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maxResults of the query.
  * `:next_token` (`t:string`) The nextToken of the query.
  """

  @spec list_scram_secrets(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_scram_secrets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_scram_secrets_errors()}

  def list_scram_secrets(%Client{} = client, cluster_arn, options \\ []) do
    url_path = "/v1/clusters/#{AWS.Util.encode_uri(cluster_arn)}/scram-secrets"

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
  Returns a list of the tags associated with the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) that uniquely
  identifies the resource that's associated with the tags.

  ## Optional parameters:
  """

  @spec list_tags_for_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}

  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"

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
  Returns a list of all the VPC connections in this Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20ListVpcConnections&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return in the
  response. If there are more results, the response includes a NextToken
  parameter.
  * `:next_token` (`t:string`) The paginated results marker. When the result of
  the operation is truncated, the call returns NextToken in the response. To
  get the next batch, provide this token in your next request.
  """

  @spec list_vpc_connections(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_vpc_connections_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_vpc_connections_errors()}

  def list_vpc_connections(%Client{} = client, options \\ []) do
    url_path = "/v1/vpc-connections"

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
  Creates or updates the MSK cluster policy specified by the cluster Amazon
  Resource Name (ARN) in the request.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20PutClusterPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:cluster_arn` (`t:string`) The Amazon Resource Name (ARN) of the cluster.
  * `:input` (`t:map`):
    * `:policy` (`t:string`) The policy.
    * `:current_version` (`t:string`) The policy version.

  ## Optional parameters:
  """

  @spec put_cluster_policy(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, put_cluster_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_cluster_policy_errors()}

  def put_cluster_policy(%Client{} = client, cluster_arn, input, options \\ [])
      when is_map(input) do
    url_path = "/v1/clusters/#{AWS.Util.encode_uri(cluster_arn)}/policy"

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

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Reboots brokers.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20RebootBroker&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:cluster_arn` (`t:string`) The Amazon Resource Name (ARN) of the cluster to
  be updated.
  * `:input` (`t:map`):
    * `:broker_ids` (`t:list[com.amazonaws.kafka#__string]`) The list of broker IDs
  to be rebooted. The reboot-broker operation supports rebooting one broker at
  a time.

  ## Optional parameters:
  """

  @spec reboot_broker(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, reboot_broker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reboot_broker_errors()}

  def reboot_broker(%Client{} = client, cluster_arn, input, options \\ []) when is_map(input) do
    url_path = "/v1/clusters/#{AWS.Util.encode_uri(cluster_arn)}/reboot-broker"

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

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Returns empty response.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20RejectClientVpcConnection&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:cluster_arn` (`t:string`) The Amazon Resource Name (ARN) of the cluster.
  * `:input` (`t:map`):
    * `:vpc_connection_arn` (`t:string`) The VPC connection ARN.

  ## Optional parameters:
  """

  @spec reject_client_vpc_connection(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, reject_client_vpc_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reject_client_vpc_connection_errors()}

  def reject_client_vpc_connection(%Client{} = client, cluster_arn, input, options \\ [])
      when is_map(input) do
    url_path = "/v1/clusters/#{AWS.Util.encode_uri(cluster_arn)}/client-vpc-connection"

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

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Adds tags to the specified MSK resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) that uniquely
  identifies the resource that's associated with the tags.
  * `:input` (`t:map`):
    * `:tags` (`t:map`) The key-value pair for the resource tag.

  ## Optional parameters:
  """

  @spec tag_resource(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}

  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) when is_map(input) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 204)
  end

  @doc """
  Removes the tags associated with the keys that are provided in the query.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) that uniquely
  identifies the resource that's associated with the tags.
  * `:tag_keys` (`t:list[com.amazonaws.kafka#__string]`) Tag keys must be unique
  for a given cluster. In addition, the following restrictions apply:

  ## Optional parameters:
  """

  @spec untag_resource(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}

  def untag_resource(%Client{} = client, resource_arn, tag_keys, options \\ [])
      when is_binary(tag_keys) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"

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
      204
    )
  end

  @doc """
  Updates the number of broker nodes in the cluster.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20UpdateBrokerCount&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:cluster_arn` (`t:string`) The Amazon Resource Name (ARN) that uniquely
  identifies the cluster.
  * `:input` (`t:map`):
    * `:current_version` (`t:string`) The version of cluster to update from. A
  successful operation will then generate a new version.
    * `:target_number_of_broker_nodes` (`t:integer`) The number of broker nodes that
  you want the cluster to have after this operation completes successfully.

  ## Optional parameters:
  """

  @spec update_broker_count(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, update_broker_count_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_broker_count_errors()}

  def update_broker_count(%Client{} = client, cluster_arn, input, options \\ [])
      when is_map(input) do
    url_path = "/v1/clusters/#{AWS.Util.encode_uri(cluster_arn)}/nodes/count"

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

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates the EBS storage associated with MSK brokers.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20UpdateBrokerStorage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:cluster_arn` (`t:string`) The Amazon Resource Name (ARN) that uniquely
  identifies the cluster.
  * `:input` (`t:map`):
    * `:current_version` (`t:string`) The version of cluster to update from. A
  successful operation will then generate a new version.
    * `:target_broker_ebs_volume_info`
  (`t:list[com.amazonaws.kafka#BrokerEBSVolumeInfo]`) Describes the target
  volume size and the ID of the broker to apply the update to.

  ## Optional parameters:
  """

  @spec update_broker_storage(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, update_broker_storage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_broker_storage_errors()}

  def update_broker_storage(%Client{} = client, cluster_arn, input, options \\ [])
      when is_map(input) do
    url_path = "/v1/clusters/#{AWS.Util.encode_uri(cluster_arn)}/nodes/storage"

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

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates EC2 instance type.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20UpdateBrokerType&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:cluster_arn` (`t:string`) The Amazon Resource Name (ARN) that uniquely
  identifies the cluster.
  * `:input` (`t:map`):
    * `:current_version` (`t:string`) The cluster version that you want to change.
  After this operation completes successfully, the cluster will have a new
  version.
    * `:target_instance_type` (`t:string`) The Amazon MSK broker type that you want
  all of the brokers in this cluster to be.

  ## Optional parameters:
  """

  @spec update_broker_type(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, update_broker_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_broker_type_errors()}

  def update_broker_type(%Client{} = client, cluster_arn, input, options \\ [])
      when is_map(input) do
    url_path = "/v1/clusters/#{AWS.Util.encode_uri(cluster_arn)}/nodes/type"

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

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates the cluster with the configuration that is specified in the request
  body.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20UpdateClusterConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:cluster_arn` (`t:string`) The Amazon Resource Name (ARN) that uniquely
  identifies the cluster.
  * `:input` (`t:map`):
    * `:configuration_info` (`t:structure`) Represents the configuration that you
  want MSK to use for the brokers in a cluster.
    * `:current_version` (`t:string`) The version of the cluster that needs to be
  updated.

  ## Optional parameters:
  """

  @spec update_cluster_configuration(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, update_cluster_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_cluster_configuration_errors()}

  def update_cluster_configuration(%Client{} = client, cluster_arn, input, options \\ [])
      when is_map(input) do
    url_path = "/v1/clusters/#{AWS.Util.encode_uri(cluster_arn)}/configuration"

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

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates the Apache Kafka version for the cluster.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20UpdateClusterKafkaVersion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:cluster_arn` (`t:string`) The Amazon Resource Name (ARN) of the cluster to
  be updated.
  * `:input` (`t:map`):
    * `:current_version` (`t:string`) Current cluster version.
    * `:target_kafka_version` (`t:string`) Target Kafka version.
    * `:configuration_info` (`t:structure`) The custom configuration that should be
  applied on the new version of cluster.

  ## Optional parameters:
  """

  @spec update_cluster_kafka_version(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, update_cluster_kafka_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_cluster_kafka_version_errors()}

  def update_cluster_kafka_version(%Client{} = client, cluster_arn, input, options \\ [])
      when is_map(input) do
    url_path = "/v1/clusters/#{AWS.Util.encode_uri(cluster_arn)}/version"

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

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates an MSK configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20UpdateConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:arn` (`t:string`) The Amazon Resource Name (ARN) of the configuration.
  * `:input` (`t:map`):
    * `:server_properties` (`t:blob`) Contents of the server.properties file. When
  using the API, you must ensure that the contents of the file are base64
  encoded. When using the AWS Management Console, the SDK, or the AWS CLI, the
  contents of server.properties can be in plaintext.
    * `:description` (`t:string`) The description of the configuration revision.

  ## Optional parameters:
  """

  @spec update_configuration(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, update_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_configuration_errors()}

  def update_configuration(%Client{} = client, arn, input, options \\ []) when is_map(input) do
    url_path = "/v1/configurations/#{AWS.Util.encode_uri(arn)}"

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

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates the cluster's connectivity configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20UpdateConnectivity&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:cluster_arn` (`t:string`) The Amazon Resource Name (ARN) of the
  configuration.
  * `:input` (`t:map`):
    * `:connectivity_info` (`t:structure`) Information about the broker access
  configuration.
    * `:current_version` (`t:string`) The version of the MSK cluster to update.
  Cluster versions aren't simple numbers. You can describe an MSK cluster to
  find its version. When this update operation is successful, it generates a
  new cluster version.

  ## Optional parameters:
  """

  @spec update_connectivity(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, update_connectivity_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_connectivity_errors()}

  def update_connectivity(%Client{} = client, cluster_arn, input, options \\ [])
      when is_map(input) do
    url_path = "/v1/clusters/#{AWS.Util.encode_uri(cluster_arn)}/connectivity"

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

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates the monitoring settings for the cluster. You can use this operation to
  specify which Apache Kafka metrics you want Amazon MSK to send to Amazon
  CloudWatch. You can also specify settings for open monitoring with Prometheus.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20UpdateMonitoring&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:cluster_arn` (`t:string`) The Amazon Resource Name (ARN) that uniquely
  identifies the cluster.
  * `:input` (`t:map`):
    * `:current_version` (`t:string`) The version of the MSK cluster to update.
  Cluster versions aren't simple numbers. You can describe an MSK cluster to
  find its version. When this update operation is successful, it generates a
  new cluster version.
    * `:enhanced_monitoring`
  (`t:enum["DEFAULT|PER_BROKER|PER_TOPIC_PER_BROKER|PER_TOPIC_PER_PARTITION"]`)
  Specifies which Apache Kafka metrics Amazon MSK gathers and sends to Amazon
  CloudWatch for this cluster.
    * `:logging_info` (`t:structure`)
    * `:open_monitoring` (`t:structure`) The settings for open monitoring.

  ## Optional parameters:
  """

  @spec update_monitoring(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, update_monitoring_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_monitoring_errors()}

  def update_monitoring(%Client{} = client, cluster_arn, input, options \\ [])
      when is_map(input) do
    url_path = "/v1/clusters/#{AWS.Util.encode_uri(cluster_arn)}/monitoring"

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

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates replication info of a replicator.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20UpdateReplicationInfo&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:replicator_arn` (`t:string`) The Amazon Resource Name (ARN) of the
  replicator to be updated.
  * `:input` (`t:map`):
    * `:current_version` (`t:string`) Current replicator version.
    * `:source_kafka_cluster_arn` (`t:string`) The ARN of the source Kafka cluster.
    * `:target_kafka_cluster_arn` (`t:string`) The ARN of the target Kafka cluster.
    * `:consumer_group_replication` (`t:structure`) Updated consumer group
  replication information.
    * `:topic_replication` (`t:structure`) Updated topic replication information.

  ## Optional parameters:
  """

  @spec update_replication_info(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, update_replication_info_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_replication_info_errors()}

  def update_replication_info(%Client{} = client, replicator_arn, input, options \\ [])
      when is_map(input) do
    url_path =
      "/replication/v1/replicators/#{AWS.Util.encode_uri(replicator_arn)}/replication-info"

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

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates the security settings for the cluster. You can use this operation to
  specify encryption and authentication on existing clusters.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20UpdateSecurity&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:cluster_arn` (`t:string`) The Amazon Resource Name (ARN) that uniquely
  identifies the cluster.
  * `:input` (`t:map`):
    * `:current_version` (`t:string`) The version of the MSK cluster to update.
  Cluster versions aren't simple numbers. You can describe an MSK cluster to
  find its version. When this update operation is successful, it generates a
  new cluster version.
    * `:client_authentication` (`t:structure`) Includes all client authentication
  related information.
    * `:encryption_info` (`t:structure`) Includes all encryption-related
  information.

  ## Optional parameters:
  """

  @spec update_security(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, update_security_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_security_errors()}

  def update_security(%Client{} = client, cluster_arn, input, options \\ []) when is_map(input) do
    url_path = "/v1/clusters/#{AWS.Util.encode_uri(cluster_arn)}/security"

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

    body = input

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

  @doc """
  Updates cluster broker volume size (or) sets cluster storage mode to TIERED.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=kafka%20UpdateStorage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:cluster_arn` (`t:string`) The Amazon Resource Name (ARN) of the cluster to
  be updated.
  * `:input` (`t:map`):
    * `:current_version` (`t:string`) The version of cluster to update from. A
  successful operation will then generate a new version.
    * `:provisioned_throughput` (`t:structure`) EBS volume provisioned throughput
  information.
    * `:storage_mode` (`t:enum["LOCAL|TIERED"]`) Controls storage mode for supported
  storage tiers.
    * `:volume_size_g_b` (`t:integer`) size of the EBS volume to update.

  ## Optional parameters:
  """

  @spec update_storage(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, update_storage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_storage_errors()}

  def update_storage(%Client{} = client, cluster_arn, input, options \\ []) when is_map(input) do
    url_path = "/v1/clusters/#{AWS.Util.encode_uri(cluster_arn)}/storage"

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

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end
end
