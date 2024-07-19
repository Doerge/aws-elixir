# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DAX do
  @moduledoc """
  DAX is a managed caching service engineered for Amazon DynamoDB. DAX
  dramatically speeds up database reads by caching frequently-accessed data from
  DynamoDB, so applications can access that data with sub-millisecond latency.
  You can create a DAX cluster easily, using the AWS Management Console. With a
  few simple modifications to your code, your application can begin taking
  advantage of the DAX cluster and realize significant improvements in read
  performance.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      sse_description() :: %{
        "Status" => list(any())
      }
      
  """
  @type sse_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      node_quota_for_customer_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type node_quota_for_customer_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reboot_node_response() :: %{
        "Cluster" => cluster()
      }
      
  """
  @type reboot_node_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_subnet_group_response() :: %{
        "SubnetGroup" => subnet_group()
      }
      
  """
  @type create_subnet_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceName") => String.t(),
        required("Tags") => list(tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_parameter_group_request() :: %{
        optional("Description") => String.t(),
        required("ParameterGroupName") => String.t()
      }
      
  """
  @type create_parameter_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_parameter_groups_response() :: %{
        "NextToken" => String.t(),
        "ParameterGroups" => list(parameter_group()())
      }
      
  """
  @type describe_parameter_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{
        "Tags" => list(tag()())
      }
      
  """
  @type untag_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_cluster_response() :: %{
        "Cluster" => cluster()
      }
      
  """
  @type create_cluster_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subnet_group_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type subnet_group_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_parameter_group_response() :: %{
        "ParameterGroup" => parameter_group()
      }
      
  """
  @type create_parameter_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_parameters_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Source") => String.t(),
        required("ParameterGroupName") => String.t()
      }
      
  """
  @type describe_parameters_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      security_group_membership() :: %{
        "SecurityGroupIdentifier" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type security_group_membership() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type cluster_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subnet() :: %{
        "SubnetAvailabilityZone" => String.t(),
        "SubnetIdentifier" => String.t()
      }
      
  """
  @type subnet() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_subnet() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_subnet() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parameter_name_value() :: %{
        "ParameterName" => String.t(),
        "ParameterValue" => String.t()
      }
      
  """
  @type parameter_name_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_response() :: %{
        "NextToken" => String.t(),
        "Tags" => list(tag()())
      }
      
  """
  @type list_tags_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_parameters_response() :: %{
        "NextToken" => String.t(),
        "Parameters" => list(parameter()())
      }
      
  """
  @type describe_parameters_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_group_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_parameter_group_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subnet_group_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type subnet_group_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceName") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_parameter_group_request() :: %{
        required("ParameterGroupName") => String.t()
      }
      
  """
  @type delete_parameter_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parameter_group_status() :: %{
        "NodeIdsToReboot" => list(String.t()()),
        "ParameterApplyStatus" => String.t(),
        "ParameterGroupName" => String.t()
      }
      
  """
  @type parameter_group_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type tag_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_cluster_request() :: %{
        optional("Description") => String.t(),
        optional("NotificationTopicArn") => String.t(),
        optional("NotificationTopicStatus") => String.t(),
        optional("ParameterGroupName") => String.t(),
        optional("PreferredMaintenanceWindow") => String.t(),
        optional("SecurityGroupIds") => list(String.t()()),
        required("ClusterName") => String.t()
      }
      
  """
  @type update_cluster_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_combination_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_parameter_combination_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_vpc_network_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_vpc_network_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_quota_per_resource_exceeded() :: %{
        "message" => String.t()
      }
      
  """
  @type tag_quota_per_resource_exceeded() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_subnet_group_request() :: %{
        required("SubnetGroupName") => String.t()
      }
      
  """
  @type delete_subnet_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subnet_group() :: %{
        "Description" => String.t(),
        "SubnetGroupName" => String.t(),
        "Subnets" => list(subnet()()),
        "VpcId" => String.t()
      }
      
  """
  @type subnet_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      decrease_replication_factor_response() :: %{
        "Cluster" => cluster()
      }
      
  """
  @type decrease_replication_factor_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_cluster_request() :: %{
        optional("AvailabilityZones") => list(String.t()()),
        optional("ClusterEndpointEncryptionType") => list(any()),
        optional("Description") => String.t(),
        optional("NotificationTopicArn") => String.t(),
        optional("ParameterGroupName") => String.t(),
        optional("PreferredMaintenanceWindow") => String.t(),
        optional("SSESpecification") => sse_specification(),
        optional("SecurityGroupIds") => list(String.t()()),
        optional("SubnetGroupName") => String.t(),
        optional("Tags") => list(tag()()),
        required("ClusterName") => String.t(),
        required("IamRoleArn") => String.t(),
        required("NodeType") => String.t(),
        required("ReplicationFactor") => integer()
      }
      
  """
  @type create_cluster_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_default_parameters_response() :: %{
        "NextToken" => String.t(),
        "Parameters" => list(parameter()())
      }
      
  """
  @type describe_default_parameters_response() :: %{String.t() => any()}

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
      
      cluster() :: %{
        "ActiveNodes" => integer(),
        "ClusterArn" => String.t(),
        "ClusterDiscoveryEndpoint" => endpoint(),
        "ClusterEndpointEncryptionType" => list(any()),
        "ClusterName" => String.t(),
        "Description" => String.t(),
        "IamRoleArn" => String.t(),
        "NodeIdsToRemove" => list(String.t()()),
        "NodeType" => String.t(),
        "Nodes" => list(dax_node()()),
        "NotificationConfiguration" => notification_configuration(),
        "ParameterGroup" => parameter_group_status(),
        "PreferredMaintenanceWindow" => String.t(),
        "SSEDescription" => sse_description(),
        "SecurityGroups" => list(security_group_membership()()),
        "Status" => String.t(),
        "SubnetGroup" => String.t(),
        "TotalNodes" => integer()
      }
      
  """
  @type cluster() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subnet_group_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type subnet_group_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{}
      
  """
  @type service_quota_exceeded_exception() :: %{}

  @typedoc """

  ## Example:
      
      invalid_parameter_value_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_parameter_value_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      increase_replication_factor_request() :: %{
        optional("AvailabilityZones") => list(String.t()()),
        required("ClusterName") => String.t(),
        required("NewReplicationFactor") => integer()
      }
      
  """
  @type increase_replication_factor_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_subnet_groups_response() :: %{
        "NextToken" => String.t(),
        "SubnetGroups" => list(subnet_group()())
      }
      
  """
  @type describe_subnet_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parameter() :: %{
        "AllowedValues" => String.t(),
        "ChangeType" => list(any()),
        "DataType" => String.t(),
        "Description" => String.t(),
        "IsModifiable" => list(any()),
        "NodeTypeSpecificValues" => list(node_type_specific_value()()),
        "ParameterName" => String.t(),
        "ParameterType" => list(any()),
        "ParameterValue" => String.t(),
        "Source" => String.t()
      }
      
  """
  @type parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_subnet_group_request() :: %{
        optional("Description") => String.t(),
        optional("SubnetIds") => list(String.t()()),
        required("SubnetGroupName") => String.t()
      }
      
  """
  @type update_subnet_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_arn_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_arn_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_default_parameters_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_default_parameters_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_subnet_group_request() :: %{
        optional("Description") => String.t(),
        required("SubnetGroupName") => String.t(),
        required("SubnetIds") => list(String.t()())
      }
      
  """
  @type create_subnet_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parameter_group_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type parameter_group_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      node_type_specific_value() :: %{
        "NodeType" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type node_type_specific_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_cluster_response() :: %{
        "Cluster" => cluster()
      }
      
  """
  @type delete_cluster_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_subnet_group_response() :: %{
        "DeletionMessage" => String.t()
      }
      
  """
  @type delete_subnet_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      decrease_replication_factor_request() :: %{
        optional("AvailabilityZones") => list(String.t()()),
        optional("NodeIdsToRemove") => list(String.t()()),
        required("ClusterName") => String.t(),
        required("NewReplicationFactor") => integer()
      }
      
  """
  @type decrease_replication_factor_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_quota_for_customer_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type cluster_quota_for_customer_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notification_configuration() :: %{
        "TopicArn" => String.t(),
        "TopicStatus" => String.t()
      }
      
  """
  @type notification_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_parameter_group_response() :: %{
        "DeletionMessage" => String.t()
      }
      
  """
  @type delete_parameter_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      endpoint() :: %{
        "Address" => String.t(),
        "Port" => integer(),
        "URL" => String.t()
      }
      
  """
  @type endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dax_node() :: %{
        "AvailabilityZone" => String.t(),
        "Endpoint" => endpoint(),
        "NodeCreateTime" => non_neg_integer(),
        "NodeId" => String.t(),
        "NodeStatus" => String.t(),
        "ParameterGroupStatus" => String.t()
      }
      
  """
  @type dax_node() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event() :: %{
        "Date" => non_neg_integer(),
        "Message" => String.t(),
        "SourceName" => String.t(),
        "SourceType" => list(any())
      }
      
  """
  @type event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_cluster_request() :: %{
        required("ClusterName") => String.t()
      }
      
  """
  @type delete_cluster_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parameter_group_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type parameter_group_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_events_request() :: %{
        optional("Duration") => integer(),
        optional("EndTime") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SourceName") => String.t(),
        optional("SourceType") => list(any()),
        optional("StartTime") => non_neg_integer()
      }
      
  """
  @type describe_events_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_subnet_groups_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SubnetGroupNames") => list(String.t()())
      }
      
  """
  @type describe_subnet_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subnet_in_use() :: %{
        "message" => String.t()
      }
      
  """
  @type subnet_in_use() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_linked_role_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type service_linked_role_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      increase_replication_factor_response() :: %{
        "Cluster" => cluster()
      }
      
  """
  @type increase_replication_factor_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sse_specification() :: %{
        "Enabled" => boolean()
      }
      
  """
  @type sse_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{
        "Tags" => list(tag()())
      }
      
  """
  @type tag_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_parameter_groups_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ParameterGroupNames") => list(String.t()())
      }
      
  """
  @type describe_parameter_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_clusters_response() :: %{
        "Clusters" => list(cluster()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_clusters_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reboot_node_request() :: %{
        required("ClusterName") => String.t(),
        required("NodeId") => String.t()
      }
      
  """
  @type reboot_node_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_cluster_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_cluster_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_parameter_group_response() :: %{
        "ParameterGroup" => parameter_group()
      }
      
  """
  @type update_parameter_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subnet_group_in_use_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type subnet_group_in_use_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_parameter_group_request() :: %{
        required("ParameterGroupName") => String.t(),
        required("ParameterNameValues") => list(parameter_name_value()())
      }
      
  """
  @type update_parameter_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parameter_group() :: %{
        "Description" => String.t(),
        "ParameterGroupName" => String.t()
      }
      
  """
  @type parameter_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      insufficient_cluster_capacity_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type insufficient_cluster_capacity_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type cluster_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_request() :: %{
        optional("NextToken") => String.t(),
        required("ResourceName") => String.t()
      }
      
  """
  @type list_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subnet_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type subnet_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      node_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type node_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parameter_group_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type parameter_group_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_clusters_request() :: %{
        optional("ClusterNames") => list(String.t()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_clusters_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_events_response() :: %{
        "Events" => list(event()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_events_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_subnet_group_response() :: %{
        "SubnetGroup" => subnet_group()
      }
      
  """
  @type update_subnet_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      node_quota_for_cluster_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type node_quota_for_cluster_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_cluster_response() :: %{
        "Cluster" => cluster()
      }
      
  """
  @type update_cluster_response() :: %{String.t() => any()}

  @type create_cluster_errors() ::
          node_quota_for_cluster_exceeded_fault()
          | parameter_group_not_found_fault()
          | cluster_already_exists_fault()
          | insufficient_cluster_capacity_fault()
          | invalid_cluster_state_fault()
          | service_linked_role_not_found_fault()
          | cluster_quota_for_customer_exceeded_fault()
          | invalid_parameter_value_exception()
          | service_quota_exceeded_exception()
          | tag_quota_per_resource_exceeded()
          | invalid_vpc_network_state_fault()
          | invalid_parameter_combination_exception()
          | subnet_group_not_found_fault()
          | invalid_parameter_group_state_fault()
          | node_quota_for_customer_exceeded_fault()

  @type create_parameter_group_errors() ::
          service_linked_role_not_found_fault()
          | parameter_group_quota_exceeded_fault()
          | parameter_group_already_exists_fault()
          | invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()
          | invalid_parameter_group_state_fault()

  @type create_subnet_group_errors() ::
          subnet_quota_exceeded_fault()
          | service_linked_role_not_found_fault()
          | subnet_group_quota_exceeded_fault()
          | invalid_subnet()
          | subnet_group_already_exists_fault()

  @type decrease_replication_factor_errors() ::
          node_not_found_fault()
          | invalid_cluster_state_fault()
          | service_linked_role_not_found_fault()
          | invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()
          | cluster_not_found_fault()

  @type delete_cluster_errors() ::
          invalid_cluster_state_fault()
          | service_linked_role_not_found_fault()
          | invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()
          | cluster_not_found_fault()

  @type delete_parameter_group_errors() ::
          parameter_group_not_found_fault()
          | service_linked_role_not_found_fault()
          | invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()
          | invalid_parameter_group_state_fault()

  @type delete_subnet_group_errors() ::
          subnet_group_in_use_fault()
          | service_linked_role_not_found_fault()
          | subnet_group_not_found_fault()

  @type describe_clusters_errors() ::
          service_linked_role_not_found_fault()
          | invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()
          | cluster_not_found_fault()

  @type describe_default_parameters_errors() ::
          service_linked_role_not_found_fault()
          | invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()

  @type describe_events_errors() ::
          service_linked_role_not_found_fault()
          | invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()

  @type describe_parameter_groups_errors() ::
          parameter_group_not_found_fault()
          | service_linked_role_not_found_fault()
          | invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()

  @type describe_parameters_errors() ::
          parameter_group_not_found_fault()
          | service_linked_role_not_found_fault()
          | invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()

  @type describe_subnet_groups_errors() ::
          service_linked_role_not_found_fault() | subnet_group_not_found_fault()

  @type increase_replication_factor_errors() ::
          node_quota_for_cluster_exceeded_fault()
          | insufficient_cluster_capacity_fault()
          | invalid_cluster_state_fault()
          | service_linked_role_not_found_fault()
          | invalid_parameter_value_exception()
          | invalid_vpc_network_state_fault()
          | invalid_parameter_combination_exception()
          | cluster_not_found_fault()
          | node_quota_for_customer_exceeded_fault()

  @type list_tags_errors() ::
          invalid_cluster_state_fault()
          | service_linked_role_not_found_fault()
          | invalid_arn_fault()
          | invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()
          | cluster_not_found_fault()

  @type reboot_node_errors() ::
          node_not_found_fault()
          | invalid_cluster_state_fault()
          | service_linked_role_not_found_fault()
          | invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()
          | cluster_not_found_fault()

  @type tag_resource_errors() ::
          invalid_cluster_state_fault()
          | service_linked_role_not_found_fault()
          | invalid_arn_fault()
          | invalid_parameter_value_exception()
          | tag_quota_per_resource_exceeded()
          | invalid_parameter_combination_exception()
          | cluster_not_found_fault()

  @type untag_resource_errors() ::
          invalid_cluster_state_fault()
          | service_linked_role_not_found_fault()
          | invalid_arn_fault()
          | invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()
          | tag_not_found_fault()
          | cluster_not_found_fault()

  @type update_cluster_errors() ::
          parameter_group_not_found_fault()
          | invalid_cluster_state_fault()
          | service_linked_role_not_found_fault()
          | invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()
          | invalid_parameter_group_state_fault()
          | cluster_not_found_fault()

  @type update_parameter_group_errors() ::
          parameter_group_not_found_fault()
          | service_linked_role_not_found_fault()
          | invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()
          | invalid_parameter_group_state_fault()

  @type update_subnet_group_errors() ::
          subnet_quota_exceeded_fault()
          | service_linked_role_not_found_fault()
          | subnet_in_use()
          | subnet_group_not_found_fault()
          | invalid_subnet()

  def metadata do
    %{
      api_version: "2017-04-19",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "dax",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "DAX",
      signature_version: "v4",
      signing_name: "dax",
      target_prefix: "AmazonDAXV3"
    }
  end

  @doc """
  Creates a DAX cluster. All nodes in the cluster run the same DAX caching
  software.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dax%20CreateCluster&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_cluster_request`)
    %{
      optional("AvailabilityZones") => list(String.t()()),
      optional("ClusterEndpointEncryptionType") => list(any()),
      optional("Description") => String.t(),
      optional("NotificationTopicArn") => String.t(),
      optional("ParameterGroupName") => String.t(),
      optional("PreferredMaintenanceWindow") => String.t(),
      optional("SSESpecification") => sse_specification(),
      optional("SecurityGroupIds") => list(String.t()()),
      optional("SubnetGroupName") => String.t(),
      optional("Tags") => list(tag()()),
      required("ClusterName") => String.t(),
      required("IamRoleArn") => String.t(),
      required("NodeType") => String.t(),
      required("ReplicationFactor") => integer()
    }
  """

  @spec create_cluster(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_cluster_errors()}

  def create_cluster(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateCluster", input, options)
  end

  @doc """
  Creates a new parameter group. A parameter group is a collection of parameters
  that you apply to all of the nodes in a DAX cluster.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dax%20CreateParameterGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_parameter_group_request`)
    %{
      optional("Description") => String.t(),
      required("ParameterGroupName") => String.t()
    }
  """

  @spec create_parameter_group(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_parameter_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_parameter_group_errors()}

  def create_parameter_group(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateParameterGroup", input, options)
  end

  @doc """
  Creates a new subnet group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dax%20CreateSubnetGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_subnet_group_request`)
    %{
      optional("Description") => String.t(),
      required("SubnetGroupName") => String.t(),
      required("SubnetIds") => list(String.t()())
    }
  """

  @spec create_subnet_group(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_subnet_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_subnet_group_errors()}

  def create_subnet_group(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateSubnetGroup", input, options)
  end

  @doc """
  Removes one or more nodes from a DAX cluster.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dax%20DecreaseReplicationFactor&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:decrease_replication_factor_request`)
    %{
      optional("AvailabilityZones") => list(String.t()()),
      optional("NodeIdsToRemove") => list(String.t()()),
      required("ClusterName") => String.t(),
      required("NewReplicationFactor") => integer()
    }
  """

  @spec decrease_replication_factor(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, decrease_replication_factor_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, decrease_replication_factor_errors()}

  def decrease_replication_factor(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DecreaseReplicationFactor", input, options)
  end

  @doc """
  Deletes a previously provisioned DAX cluster. *DeleteCluster* deletes all
  associated nodes, node endpoints and the DAX cluster itself. When you receive
  a successful response from this action, DAX immediately begins deleting the
  cluster; you cannot cancel or revert this action.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dax%20DeleteCluster&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_cluster_request`)
    %{
      required("ClusterName") => String.t()
    }
  """

  @spec delete_cluster(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_cluster_errors()}

  def delete_cluster(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteCluster", input, options)
  end

  @doc """
  Deletes the specified parameter group. You cannot delete a parameter group if it
  is associated with any DAX clusters.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dax%20DeleteParameterGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_parameter_group_request`)
    %{
      required("ParameterGroupName") => String.t()
    }
  """

  @spec delete_parameter_group(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_parameter_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_parameter_group_errors()}

  def delete_parameter_group(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteParameterGroup", input, options)
  end

  @doc """
  Deletes a subnet group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dax%20DeleteSubnetGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_subnet_group_request`)
    %{
      required("SubnetGroupName") => String.t()
    }
  """

  @spec delete_subnet_group(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_subnet_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_subnet_group_errors()}

  def delete_subnet_group(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteSubnetGroup", input, options)
  end

  @doc """
  Returns information about all provisioned DAX clusters if no cluster identifier
  is specified, or about a specific DAX cluster if a cluster identifier is
  supplied. If the cluster is in the CREATING state, only cluster level
  information will be displayed until all of the nodes are successfully
  provisioned.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dax%20DescribeClusters&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_clusters_request`)
    %{
      optional("ClusterNames") => list(String.t()()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec describe_clusters(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_clusters_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_clusters_errors()}

  def describe_clusters(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeClusters", input, options)
  end

  @doc """
  Returns the default system parameter information for the DAX caching software.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dax%20DescribeDefaultParameters&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_default_parameters_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec describe_default_parameters(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_default_parameters_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_default_parameters_errors()}

  def describe_default_parameters(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeDefaultParameters", input, options)
  end

  @doc """
  Returns events related to DAX clusters and parameter groups. You can obtain
  events specific to a particular DAX cluster or parameter group by providing
  the name as a parameter.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dax%20DescribeEvents&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_events_request`)
    %{
      optional("Duration") => integer(),
      optional("EndTime") => non_neg_integer(),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("SourceName") => String.t(),
      optional("SourceType") => list(any()),
      optional("StartTime") => non_neg_integer()
    }
  """

  @spec describe_events(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_events_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_events_errors()}

  def describe_events(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeEvents", input, options)
  end

  @doc """
  Returns a list of parameter group descriptions. If a parameter group name is
  specified, the list will contain only the descriptions for that group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dax%20DescribeParameterGroups&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_parameter_groups_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("ParameterGroupNames") => list(String.t()())
    }
  """

  @spec describe_parameter_groups(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_parameter_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_parameter_groups_errors()}

  def describe_parameter_groups(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeParameterGroups", input, options)
  end

  @doc """
  Returns the detailed parameter list for a particular parameter group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dax%20DescribeParameters&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_parameters_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("Source") => String.t(),
      required("ParameterGroupName") => String.t()
    }
  """

  @spec describe_parameters(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_parameters_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_parameters_errors()}

  def describe_parameters(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeParameters", input, options)
  end

  @doc """
  Returns a list of subnet group descriptions. If a subnet group name is
  specified, the list will contain only the description of that group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dax%20DescribeSubnetGroups&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_subnet_groups_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("SubnetGroupNames") => list(String.t()())
    }
  """

  @spec describe_subnet_groups(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_subnet_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_subnet_groups_errors()}

  def describe_subnet_groups(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeSubnetGroups", input, options)
  end

  @doc """
  Adds one or more nodes to a DAX cluster.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dax%20IncreaseReplicationFactor&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:increase_replication_factor_request`)
    %{
      optional("AvailabilityZones") => list(String.t()()),
      required("ClusterName") => String.t(),
      required("NewReplicationFactor") => integer()
    }
  """

  @spec increase_replication_factor(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, increase_replication_factor_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, increase_replication_factor_errors()}

  def increase_replication_factor(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "IncreaseReplicationFactor", input, options)
  end

  @doc """
  List all of the tags for a DAX cluster. You can call `ListTags` up to 10 times
  per second, per account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dax%20ListTags&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_tags_request`)
    %{
      optional("NextToken") => String.t(),
      required("ResourceName") => String.t()
    }
  """

  @spec list_tags(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_errors()}

  def list_tags(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTags", input, options)
  end

  @doc """
  Reboots a single node of a DAX cluster. The reboot action takes place as soon as
  possible. During the reboot, the node status is set to REBOOTING.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dax%20RebootNode&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:reboot_node_request`)
    %{
      required("ClusterName") => String.t(),
      required("NodeId") => String.t()
    }
  """

  @spec reboot_node(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, reboot_node_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reboot_node_errors()}

  def reboot_node(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "RebootNode", input, options)
  end

  @doc """
  Associates a set of tags with a DAX resource. You can call `TagResource` up to 5
  times per second, per account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dax%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:tag_resource_request`)
    %{
      required("ResourceName") => String.t(),
      required("Tags") => list(tag()())
    }
  """

  @spec tag_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}

  def tag_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes the association of tags from a DAX resource. You can call
  `UntagResource` up to 5 times per second, per account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dax%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:untag_resource_request`)
    %{
      required("ResourceName") => String.t(),
      required("TagKeys") => list(String.t()())
    }
  """

  @spec untag_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}

  def untag_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Modifies the settings for a DAX cluster. You can use this action to change one
  or more cluster configuration parameters by specifying the parameters and the
  new values.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dax%20UpdateCluster&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_cluster_request`)
    %{
      optional("Description") => String.t(),
      optional("NotificationTopicArn") => String.t(),
      optional("NotificationTopicStatus") => String.t(),
      optional("ParameterGroupName") => String.t(),
      optional("PreferredMaintenanceWindow") => String.t(),
      optional("SecurityGroupIds") => list(String.t()()),
      required("ClusterName") => String.t()
    }
  """

  @spec update_cluster(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_cluster_errors()}

  def update_cluster(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateCluster", input, options)
  end

  @doc """
  Modifies the parameters of a parameter group. You can modify up to 20 parameters
  in a single request by submitting a list parameter name and value pairs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dax%20UpdateParameterGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_parameter_group_request`)
    %{
      required("ParameterGroupName") => String.t(),
      required("ParameterNameValues") => list(parameter_name_value()())
    }
  """

  @spec update_parameter_group(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_parameter_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_parameter_group_errors()}

  def update_parameter_group(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateParameterGroup", input, options)
  end

  @doc """
  Modifies an existing subnet group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dax%20UpdateSubnetGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_subnet_group_request`)
    %{
      optional("Description") => String.t(),
      optional("SubnetIds") => list(String.t()()),
      required("SubnetGroupName") => String.t()
    }
  """

  @spec update_subnet_group(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_subnet_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_subnet_group_errors()}

  def update_subnet_group(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateSubnetGroup", input, options)
  end
end
