# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.EFS do
  @moduledoc """
  Amazon Elastic File System
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      update_file_system_protection_request() :: %{
        optional("ReplicationOverwriteProtection") => list(any())
      }
      
  """
  @type update_file_system_protection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      file_system_size() :: %{
        "Timestamp" => non_neg_integer(),
        "Value" => float(),
        "ValueInArchive" => float(),
        "ValueInIA" => float(),
        "ValueInStandard" => float()
      }
      
  """
  @type file_system_size() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_account_preferences_response() :: %{
        "NextToken" => String.t(),
        "ResourceIdPreference" => resource_id_preference()
      }
      
  """
  @type describe_account_preferences_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("Tags") => list(tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_tags_request() :: %{
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type delete_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      mount_target_description() :: %{
        "AvailabilityZoneId" => String.t(),
        "AvailabilityZoneName" => String.t(),
        "FileSystemId" => String.t(),
        "IpAddress" => String.t(),
        "LifeCycleState" => list(any()),
        "MountTargetId" => String.t(),
        "NetworkInterfaceId" => String.t(),
        "OwnerId" => String.t(),
        "SubnetId" => String.t(),
        "VpcId" => String.t()
      }
      
  """
  @type mount_target_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      backup_policy_description() :: %{
        optional("BackupPolicy") => backup_policy()
      }
      
  """
  @type backup_policy_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_account_preferences_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_account_preferences_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      file_system_limit_exceeded() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type file_system_limit_exceeded() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      root_directory() :: %{
        "CreationInfo" => creation_info(),
        "Path" => String.t()
      }
      
  """
  @type root_directory() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_availability_zone() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type unsupported_availability_zone() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_backup_policy_request() :: %{
        required("BackupPolicy") => backup_policy()
      }
      
  """
  @type put_backup_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_replication_configurations_response() :: %{
        "NextToken" => String.t(),
        "Replications" => list(replication_configuration_description()())
      }
      
  """
  @type describe_replication_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      file_system_already_exists() :: %{
        "ErrorCode" => String.t(),
        "FileSystemId" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type file_system_already_exists() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      incorrect_file_system_life_cycle_state() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type incorrect_file_system_life_cycle_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_mount_target_request() :: %{
        optional("IpAddress") => String.t(),
        optional("SecurityGroups") => list(String.t()()),
        required("FileSystemId") => String.t(),
        required("SubnetId") => String.t()
      }
      
  """
  @type create_mount_target_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_lifecycle_configuration_request() :: %{
        required("LifecyclePolicies") => list(lifecycle_policy()())
      }
      
  """
  @type put_lifecycle_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_account_preferences_response() :: %{
        "ResourceIdPreference" => resource_id_preference()
      }
      
  """
  @type put_account_preferences_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      file_system_in_use() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type file_system_in_use() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_tags_response() :: %{
        "Marker" => String.t(),
        "NextMarker" => String.t(),
        "Tags" => list(tag()())
      }
      
  """
  @type describe_tags_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      mount_target_conflict() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type mount_target_conflict() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      destination_to_create() :: %{
        "AvailabilityZoneName" => String.t(),
        "FileSystemId" => String.t(),
        "KmsKeyId" => String.t(),
        "Region" => String.t()
      }
      
  """
  @type destination_to_create() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      security_group_limit_exceeded() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type security_group_limit_exceeded() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_mount_targets_response() :: %{
        "Marker" => String.t(),
        "MountTargets" => list(mount_target_description()()),
        "NextMarker" => String.t()
      }
      
  """
  @type describe_mount_targets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_access_point_request() :: %{
        optional("PosixUser") => posix_user(),
        optional("RootDirectory") => root_directory(),
        optional("Tags") => list(tag()()),
        required("ClientToken") => String.t(),
        required("FileSystemId") => String.t()
      }
      
  """
  @type create_access_point_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_replication_configuration_request() :: %{}
      
  """
  @type delete_replication_configuration_request() :: %{}

  @typedoc """

  ## Example:
      
      file_system_policy_description() :: %{
        optional("FileSystemId") => String.t(),
        optional("Policy") => String.t()
      }
      
  """
  @type file_system_policy_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_tags_request() :: %{
        required("Tags") => list(tag()())
      }
      
  """
  @type create_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_policy_exception() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type invalid_policy_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_account_preferences_request() :: %{
        required("ResourceIdType") => list(any())
      }
      
  """
  @type put_account_preferences_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_mount_target_request() :: %{}
      
  """
  @type delete_mount_target_request() :: %{}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      posix_user() :: %{
        "Gid" => float(),
        "SecondaryGids" => list(float()()),
        "Uid" => float()
      }
      
  """
  @type posix_user() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      availability_zones_mismatch() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type availability_zones_mismatch() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_file_system_request() :: %{
        optional("ProvisionedThroughputInMibps") => float(),
        optional("ThroughputMode") => list(any())
      }
      
  """
  @type update_file_system_request() :: %{String.t() => any()}

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
      
      replication_already_exists() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type replication_already_exists() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      incorrect_mount_target_state() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type incorrect_mount_target_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      backup_policy() :: %{
        "Status" => list(any())
      }
      
  """
  @type backup_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_file_system_request() :: %{
        optional("AvailabilityZoneName") => String.t(),
        optional("Backup") => boolean(),
        optional("Encrypted") => boolean(),
        optional("KmsKeyId") => String.t(),
        optional("PerformanceMode") => list(any()),
        optional("ProvisionedThroughputInMibps") => float(),
        optional("Tags") => list(tag()()),
        optional("ThroughputMode") => list(any()),
        required("CreationToken") => String.t()
      }
      
  """
  @type create_file_system_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_mount_target_security_groups_response() :: %{
        "SecurityGroups" => list(String.t()())
      }
      
  """
  @type describe_mount_target_security_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      mount_target_not_found() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type mount_target_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      file_system_description() :: %{
        "AvailabilityZoneId" => String.t(),
        "AvailabilityZoneName" => String.t(),
        "CreationTime" => non_neg_integer(),
        "CreationToken" => String.t(),
        "Encrypted" => boolean(),
        "FileSystemArn" => String.t(),
        "FileSystemId" => String.t(),
        "FileSystemProtection" => file_system_protection_description(),
        "KmsKeyId" => String.t(),
        "LifeCycleState" => list(any()),
        "Name" => String.t(),
        "NumberOfMountTargets" => integer(),
        "OwnerId" => String.t(),
        "PerformanceMode" => list(any()),
        "ProvisionedThroughputInMibps" => float(),
        "SizeInBytes" => file_system_size(),
        "Tags" => list(tag()()),
        "ThroughputMode" => list(any())
      }
      
  """
  @type file_system_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_id_preference() :: %{
        "ResourceIdType" => list(any()),
        "Resources" => list(list(any())())
      }
      
  """
  @type resource_id_preference() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      file_system_protection_description() :: %{
        "ReplicationOverwriteProtection" => list(any())
      }
      
  """
  @type file_system_protection_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "NextToken" => String.t(),
        "Tags" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dependency_timeout() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type dependency_timeout() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_point_limit_exceeded() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type access_point_limit_exceeded() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_interface_limit_exceeded() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type network_interface_limit_exceeded() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_mount_target_security_groups_request() :: %{
        optional("SecurityGroups") => list(String.t()())
      }
      
  """
  @type modify_mount_target_security_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      file_system_not_found() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type file_system_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_file_system_policy_request() :: %{
        optional("BypassPolicyLockoutSafetyCheck") => boolean(),
        required("Policy") => String.t()
      }
      
  """
  @type put_file_system_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      insufficient_throughput_capacity() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type insufficient_throughput_capacity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_point_not_found() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type access_point_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_file_system_policy_request() :: %{}
      
  """
  @type delete_file_system_policy_request() :: %{}

  @typedoc """

  ## Example:
      
      access_point_already_exists() :: %{
        "AccessPointId" => String.t(),
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type access_point_already_exists() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replication_configuration_description() :: %{
        "CreationTime" => non_neg_integer(),
        "Destinations" => list(destination()()),
        "OriginalSourceFileSystemArn" => String.t(),
        "SourceFileSystemArn" => String.t(),
        "SourceFileSystemId" => String.t(),
        "SourceFileSystemRegion" => String.t()
      }
      
  """
  @type replication_configuration_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_access_point_request() :: %{}
      
  """
  @type delete_access_point_request() :: %{}

  @typedoc """

  ## Example:
      
      lifecycle_policy() :: %{
        "TransitionToArchive" => list(any()),
        "TransitionToIA" => list(any()),
        "TransitionToPrimaryStorageClass" => list(any())
      }
      
  """
  @type lifecycle_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      security_group_not_found() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type security_group_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_replication_configuration_request() :: %{
        required("Destinations") => list(destination_to_create()())
      }
      
  """
  @type create_replication_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_file_systems_request() :: %{
        optional("CreationToken") => String.t(),
        optional("FileSystemId") => String.t(),
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }
      
  """
  @type describe_file_systems_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bad_request() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type bad_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_mount_targets_request() :: %{
        optional("AccessPointId") => String.t(),
        optional("FileSystemId") => String.t(),
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        optional("MountTargetId") => String.t()
      }
      
  """
  @type describe_mount_targets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_error() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type internal_server_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_backup_policy_request() :: %{}
      
  """
  @type describe_backup_policy_request() :: %{}

  @typedoc """

  ## Example:
      
      describe_access_points_request() :: %{
        optional("AccessPointId") => String.t(),
        optional("FileSystemId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_access_points_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_mount_target_security_groups_request() :: %{}
      
  """
  @type describe_mount_target_security_groups_request() :: %{}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ip_address_in_use() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type ip_address_in_use() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_not_found() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type policy_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      destination() :: %{
        "FileSystemId" => String.t(),
        "LastReplicatedTimestamp" => non_neg_integer(),
        "Region" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_file_systems_response() :: %{
        "FileSystems" => list(file_system_description()()),
        "Marker" => String.t(),
        "NextMarker" => String.t()
      }
      
  """
  @type describe_file_systems_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_requests() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type too_many_requests() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replication_not_found() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type replication_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      creation_info() :: %{
        "OwnerGid" => float(),
        "OwnerUid" => float(),
        "Permissions" => String.t()
      }
      
  """
  @type creation_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throughput_limit_exceeded() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type throughput_limit_exceeded() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_tags_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }
      
  """
  @type describe_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      no_free_addresses_in_subnet() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type no_free_addresses_in_subnet() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_access_points_response() :: %{
        "AccessPoints" => list(access_point_description()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_access_points_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_lifecycle_configuration_request() :: %{}
      
  """
  @type describe_lifecycle_configuration_request() :: %{}

  @typedoc """

  ## Example:
      
      describe_replication_configurations_request() :: %{
        optional("FileSystemId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_replication_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_file_system_policy_request() :: %{}
      
  """
  @type describe_file_system_policy_request() :: %{}

  @typedoc """

  ## Example:
      
      lifecycle_configuration_description() :: %{
        optional("LifecyclePolicies") => list(lifecycle_policy()())
      }
      
  """
  @type lifecycle_configuration_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_point_description() :: %{
        "AccessPointArn" => String.t(),
        "AccessPointId" => String.t(),
        "ClientToken" => String.t(),
        "FileSystemId" => String.t(),
        "LifeCycleState" => list(any()),
        "Name" => String.t(),
        "OwnerId" => String.t(),
        "PosixUser" => posix_user(),
        "RootDirectory" => root_directory(),
        "Tags" => list(tag()())
      }
      
  """
  @type access_point_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subnet_not_found() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type subnet_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_file_system_request() :: %{}
      
  """
  @type delete_file_system_request() :: %{}

  @type create_access_point_errors() ::
          throttling_exception()
          | internal_server_error()
          | bad_request()
          | access_point_already_exists()
          | file_system_not_found()
          | access_point_limit_exceeded()
          | incorrect_file_system_life_cycle_state()

  @type create_file_system_errors() ::
          throughput_limit_exceeded()
          | internal_server_error()
          | bad_request()
          | insufficient_throughput_capacity()
          | file_system_already_exists()
          | unsupported_availability_zone()
          | file_system_limit_exceeded()

  @type create_mount_target_errors() ::
          subnet_not_found()
          | no_free_addresses_in_subnet()
          | ip_address_in_use()
          | internal_server_error()
          | bad_request()
          | security_group_not_found()
          | file_system_not_found()
          | network_interface_limit_exceeded()
          | availability_zones_mismatch()
          | security_group_limit_exceeded()
          | mount_target_conflict()
          | incorrect_file_system_life_cycle_state()
          | unsupported_availability_zone()

  @type create_replication_configuration_errors() ::
          throughput_limit_exceeded()
          | replication_not_found()
          | validation_exception()
          | internal_server_error()
          | bad_request()
          | insufficient_throughput_capacity()
          | file_system_not_found()
          | conflict_exception()
          | incorrect_file_system_life_cycle_state()
          | unsupported_availability_zone()
          | file_system_limit_exceeded()

  @type create_tags_errors() :: internal_server_error() | bad_request() | file_system_not_found()

  @type delete_access_point_errors() ::
          internal_server_error() | bad_request() | access_point_not_found()

  @type delete_file_system_errors() ::
          internal_server_error() | bad_request() | file_system_not_found() | file_system_in_use()

  @type delete_file_system_policy_errors() ::
          internal_server_error()
          | bad_request()
          | file_system_not_found()
          | incorrect_file_system_life_cycle_state()

  @type delete_mount_target_errors() ::
          internal_server_error()
          | bad_request()
          | dependency_timeout()
          | mount_target_not_found()

  @type delete_replication_configuration_errors() ::
          replication_not_found()
          | internal_server_error()
          | bad_request()
          | file_system_not_found()

  @type delete_tags_errors() :: internal_server_error() | bad_request() | file_system_not_found()

  @type describe_access_points_errors() ::
          internal_server_error()
          | bad_request()
          | access_point_not_found()
          | file_system_not_found()

  @type describe_account_preferences_errors() :: internal_server_error()

  @type describe_backup_policy_errors() ::
          policy_not_found()
          | validation_exception()
          | internal_server_error()
          | bad_request()
          | file_system_not_found()

  @type describe_file_system_policy_errors() ::
          policy_not_found() | internal_server_error() | bad_request() | file_system_not_found()

  @type describe_file_systems_errors() ::
          internal_server_error() | bad_request() | file_system_not_found()

  @type describe_lifecycle_configuration_errors() ::
          internal_server_error() | bad_request() | file_system_not_found()

  @type describe_mount_target_security_groups_errors() ::
          internal_server_error()
          | bad_request()
          | mount_target_not_found()
          | incorrect_mount_target_state()

  @type describe_mount_targets_errors() ::
          internal_server_error()
          | bad_request()
          | access_point_not_found()
          | file_system_not_found()
          | mount_target_not_found()

  @type describe_replication_configurations_errors() ::
          replication_not_found()
          | validation_exception()
          | internal_server_error()
          | bad_request()
          | file_system_not_found()

  @type describe_tags_errors() ::
          internal_server_error() | bad_request() | file_system_not_found()

  @type list_tags_for_resource_errors() ::
          internal_server_error()
          | bad_request()
          | access_point_not_found()
          | file_system_not_found()

  @type modify_mount_target_security_groups_errors() ::
          internal_server_error()
          | bad_request()
          | security_group_not_found()
          | mount_target_not_found()
          | incorrect_mount_target_state()
          | security_group_limit_exceeded()

  @type put_account_preferences_errors() :: internal_server_error() | bad_request()

  @type put_backup_policy_errors() ::
          validation_exception()
          | internal_server_error()
          | bad_request()
          | file_system_not_found()
          | incorrect_file_system_life_cycle_state()

  @type put_file_system_policy_errors() ::
          internal_server_error()
          | bad_request()
          | file_system_not_found()
          | invalid_policy_exception()
          | incorrect_file_system_life_cycle_state()

  @type put_lifecycle_configuration_errors() ::
          internal_server_error()
          | bad_request()
          | file_system_not_found()
          | incorrect_file_system_life_cycle_state()

  @type tag_resource_errors() ::
          internal_server_error()
          | bad_request()
          | access_point_not_found()
          | file_system_not_found()

  @type untag_resource_errors() ::
          internal_server_error()
          | bad_request()
          | access_point_not_found()
          | file_system_not_found()

  @type update_file_system_errors() ::
          throughput_limit_exceeded()
          | too_many_requests()
          | internal_server_error()
          | bad_request()
          | insufficient_throughput_capacity()
          | file_system_not_found()
          | incorrect_file_system_life_cycle_state()

  @type update_file_system_protection_errors() ::
          throughput_limit_exceeded()
          | too_many_requests()
          | internal_server_error()
          | bad_request()
          | insufficient_throughput_capacity()
          | file_system_not_found()
          | replication_already_exists()
          | incorrect_file_system_life_cycle_state()

  def metadata do
    %{
      api_version: "2015-02-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "elasticfilesystem",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "EFS",
      signature_version: "v4",
      signing_name: "elasticfilesystem",
      target_prefix: nil
    }
  end

  @doc """
  Creates an EFS access point. An access point is an application-specific view
  into an EFS file system that applies an operating system user and group, and a
  file system path, to any file system request made through the access point.
  The operating system user and group override any identity information provided
  by the NFS client. The file system path is exposed as the access point's root
  directory. Applications using the access point can only access data in the
  application's own directory and any subdirectories. To learn more, see
  [Mounting a file system using EFS access
  points](https://docs.aws.amazon.com/efs/latest/ug/efs-access-points.html). If
  multiple requests to create access points on the same file system are sent in
  quick succession, and the file system is near the limit of 1,000 access
  points, you may experience a throttling response for these requests. This is
  to ensure that the file system does not exceed the stated access point limit.
  This operation requires permissions for the
  `elasticfilesystem:CreateAccessPoint` action.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=efs%20CreateAccessPoint&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_access_point(AWS.Client.t(), Keyword.t()) ::
          {:ok, access_point_description(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_access_point_errors()}

  def create_access_point(%Client{} = client, options \\ []) do
    url_path = "/2015-02-01/access-points"

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
  Creates a new, empty file system. The operation requires a creation token in the
  request that Amazon EFS uses to ensure idempotent creation (calling the
  operation with same creation token has no effect). If a file system does not
  currently exist that is owned by the caller's Amazon Web Services account with
  the specified creation token, this operation does the following:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=efs%20CreateFileSystem&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_file_system(AWS.Client.t(), Keyword.t()) ::
          {:ok, file_system_description(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_file_system_errors()}

  def create_file_system(%Client{} = client, options \\ []) do
    url_path = "/2015-02-01/file-systems"

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
  Creates a mount target for a file system. You can then mount the file system on
  EC2 instances by using the mount target. You can create one mount target in
  each Availability Zone in your VPC. All EC2 instances in a VPC within a given
  Availability Zone share a single mount target for a given file system. If you
  have multiple subnets in an Availability Zone, you create a mount target in
  one of the subnets. EC2 instances do not need to be in the same subnet as the
  mount target in order to access their file system.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=efs%20CreateMountTarget&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_mount_target(AWS.Client.t(), Keyword.t()) ::
          {:ok, mount_target_description(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_mount_target_errors()}

  def create_mount_target(%Client{} = client, options \\ []) do
    url_path = "/2015-02-01/mount-targets"

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
  Creates a replication configuration that replicates an existing EFS file system
  to a new, read-only file system. For more information, see [Amazon EFS
  replication](https://docs.aws.amazon.com/efs/latest/ug/efs-replication.html)
  in the *Amazon EFS User Guide*. The replication configuration specifies the
  following: *

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=efs%20CreateReplicationConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:source_file_system_id` (`t:string`) Specifies the Amazon EFS file system
  that you want to replicate. This file system cannot already be a source or
  destination file system in another replication configuration.

  ## Optional parameters:
  """

  @spec create_replication_configuration(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, replication_configuration_description(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_replication_configuration_errors()}

  def create_replication_configuration(%Client{} = client, source_file_system_id, options \\ []) do
    url_path =
      "/2015-02-01/file-systems/#{AWS.Util.encode_uri(source_file_system_id)}/replication-configuration"

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
  DEPRECATED - `CreateTags` is deprecated and not maintained. To create tags for
  EFS resources, use the API action. Creates or overwrites tags associated with
  a file system. Each tag is a key-value pair. If a tag key specified in the
  request already exists on the file system, this operation overwrites its value
  with the value provided in the request. If you add the `Name` tag to your file
  system, Amazon EFS returns it in the response to the `DescribeFileSystems`
  operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=efs%20CreateTags&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:file_system_id` (`t:string`) The ID of the file system whose tags you want
  to modify (String). This operation modifies the tags only, not the file
  system.

  ## Optional parameters:
  """

  @spec create_tags(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_tags_errors()}

  def create_tags(%Client{} = client, file_system_id, options \\ []) do
    url_path = "/2015-02-01/create-tags/#{AWS.Util.encode_uri(file_system_id)}"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 204)
  end

  @doc """
  Deletes the specified access point. After deletion is complete, new clients can
  no longer connect to the access points. Clients connected to the access point
  at the time of deletion will continue to function until they terminate their
  connection.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=efs%20DeleteAccessPoint&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:access_point_id` (`t:string`) The ID of the access point that you want to
  delete.

  ## Optional parameters:
  """

  @spec delete_access_point(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_access_point_errors()}

  def delete_access_point(%Client{} = client, access_point_id, options \\ []) do
    url_path = "/2015-02-01/access-points/#{AWS.Util.encode_uri(access_point_id)}"

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
      204
    )
  end

  @doc """
  Deletes a file system, permanently severing access to its contents. Upon return,
  the file system no longer exists and you can't access any contents of the
  deleted file system. You need to manually delete mount targets attached to a
  file system before you can delete an EFS file system. This step is performed
  for you when you use the Amazon Web Services console to delete a file system.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=efs%20DeleteFileSystem&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:file_system_id` (`t:string`) The ID of the file system you want to delete.

  ## Optional parameters:
  """

  @spec delete_file_system(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_file_system_errors()}

  def delete_file_system(%Client{} = client, file_system_id, options \\ []) do
    url_path = "/2015-02-01/file-systems/#{AWS.Util.encode_uri(file_system_id)}"

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
      204
    )
  end

  @doc """
  Deletes the `FileSystemPolicy` for the specified file system. The default
  `FileSystemPolicy` goes into effect once the existing policy is deleted. For
  more information about the default file system policy, see [Using
  Resource-based Policies with
  EFS](https://docs.aws.amazon.com/efs/latest/ug/res-based-policies-efs.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=efs%20DeleteFileSystemPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:file_system_id` (`t:string`) Specifies the EFS file system for which to
  delete the FileSystemPolicy.

  ## Optional parameters:
  """

  @spec delete_file_system_policy(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_file_system_policy_errors()}

  def delete_file_system_policy(%Client{} = client, file_system_id, options \\ []) do
    url_path = "/2015-02-01/file-systems/#{AWS.Util.encode_uri(file_system_id)}/policy"

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
  Deletes the specified mount target. This operation forcibly breaks any mounts of
  the file system by using the mount target that is being deleted, which might
  disrupt instances or applications using those mounts. To avoid applications
  getting cut off abruptly, you might consider unmounting any mounts of the
  mount target, if feasible. The operation also deletes the associated network
  interface. Uncommitted writes might be lost, but breaking a mount target using
  this operation does not corrupt the file system itself. The file system you
  created remains. You can mount an EC2 instance in your VPC by using another
  mount target.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=efs%20DeleteMountTarget&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:mount_target_id` (`t:string`) The ID of the mount target to delete (String).

  ## Optional parameters:
  """

  @spec delete_mount_target(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_mount_target_errors()}

  def delete_mount_target(%Client{} = client, mount_target_id, options \\ []) do
    url_path = "/2015-02-01/mount-targets/#{AWS.Util.encode_uri(mount_target_id)}"

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
      204
    )
  end

  @doc """
  Deletes a replication configuration. Deleting a replication configuration ends
  the replication process. After a replication configuration is deleted, the
  destination file system becomes `Writeable` and its replication overwrite
  protection is re-enabled. For more information, see [Delete a replication
  configuration](https://docs.aws.amazon.com/efs/latest/ug/delete-replications.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=efs%20DeleteReplicationConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:source_file_system_id` (`t:string`) The ID of the source file system in the
  replication configuration.

  ## Optional parameters:
  """

  @spec delete_replication_configuration(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_replication_configuration_errors()}

  def delete_replication_configuration(%Client{} = client, source_file_system_id, options \\ []) do
    url_path =
      "/2015-02-01/file-systems/#{AWS.Util.encode_uri(source_file_system_id)}/replication-configuration"

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
      204
    )
  end

  @doc """
  DEPRECATED - `DeleteTags` is deprecated and not maintained. To remove tags from
  EFS resources, use the API action. Deletes the specified tags from a file
  system. If the `DeleteTags` request includes a tag key that doesn't exist,
  Amazon EFS ignores it and doesn't cause an error. For more information about
  tags and related restrictions, see [Tag
  restrictions](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html)
  in the *Billing and Cost Management User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=efs%20DeleteTags&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:file_system_id` (`t:string`) The ID of the file system whose tags you want
  to delete (String).

  ## Optional parameters:
  """

  @spec delete_tags(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_tags_errors()}

  def delete_tags(%Client{} = client, file_system_id, options \\ []) do
    url_path = "/2015-02-01/delete-tags/#{AWS.Util.encode_uri(file_system_id)}"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 204)
  end

  @doc """
  Returns the description of a specific Amazon EFS access point if the
  `AccessPointId` is provided. If you provide an EFS `FileSystemId`, it returns
  descriptions of all access points for that file system. You can provide either
  an `AccessPointId` or a `FileSystemId` in the request, but not both.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=efs%20DescribeAccessPoints&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:access_point_id` (`t:string`) (Optional) Specifies an EFS access point to
  describe in the response; mutually exclusive with FileSystemId.
  * `:file_system_id` (`t:string`) (Optional) If you provide a FileSystemId, EFS
  returns all access points for that file system; mutually exclusive with
  AccessPointId.
  * `:max_results` (`t:integer`) (Optional) When retrieving all access points for
  a file system, you can optionally specify the MaxItems parameter to limit
  the number of objects returned in a response. The default value is 100.
  * `:next_token` (`t:string`) NextToken is present if the response is paginated.
  You can use NextMarker in the subsequent request to fetch the next page of
  access point descriptions.
  """

  @spec describe_access_points(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_access_points_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_access_points_errors()}

  def describe_access_points(%Client{} = client, options \\ []) do
    url_path = "/2015-02-01/access-points"

    # Validate optional parameters
    optional_params = [
      access_point_id: nil,
      file_system_id: nil,
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

    query_params =
      if opt_val = Keyword.get(options, :file_system_id) do
        [{"FileSystemId", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :access_point_id) do
        [{"AccessPointId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:access_point_id, :file_system_id, :max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the account preferences settings for the Amazon Web Services account
  associated with the user making the request, in the current Amazon Web
  Services Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=efs%20DescribeAccountPreferences&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec describe_account_preferences(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_account_preferences_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_account_preferences_errors()}

  def describe_account_preferences(%Client{} = client, options \\ []) do
    url_path = "/2015-02-01/account-preferences"

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
  Returns the backup policy for the specified EFS file system.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=efs%20DescribeBackupPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:file_system_id` (`t:string`) Specifies which EFS file system for which to
  retrieve the BackupPolicy.

  ## Optional parameters:
  """

  @spec describe_backup_policy(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, backup_policy_description(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_backup_policy_errors()}

  def describe_backup_policy(%Client{} = client, file_system_id, options \\ []) do
    url_path = "/2015-02-01/file-systems/#{AWS.Util.encode_uri(file_system_id)}/backup-policy"

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
  Returns the `FileSystemPolicy` for the specified EFS file system.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=efs%20DescribeFileSystemPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:file_system_id` (`t:string`) Specifies which EFS file system to retrieve the
  FileSystemPolicy for.

  ## Optional parameters:
  """

  @spec describe_file_system_policy(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, file_system_policy_description(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_file_system_policy_errors()}

  def describe_file_system_policy(%Client{} = client, file_system_id, options \\ []) do
    url_path = "/2015-02-01/file-systems/#{AWS.Util.encode_uri(file_system_id)}/policy"

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
  Returns the description of a specific Amazon EFS file system if either the file
  system `CreationToken` or the `FileSystemId` is provided. Otherwise, it
  returns descriptions of all file systems owned by the caller's Amazon Web
  Services account in the Amazon Web Services Region of the endpoint that you're
  calling. When retrieving all file system descriptions, you can optionally
  specify the `MaxItems` parameter to limit the number of descriptions in a
  response. This number is automatically set to 100. If more file system
  descriptions remain, Amazon EFS returns a `NextMarker`, an opaque token, in
  the response. In this case, you should send a subsequent request with the
  `Marker` request parameter set to the value of `NextMarker`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=efs%20DescribeFileSystems&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:creation_token` (`t:string`) (Optional) Restricts the list to the file
  system with this creation token (String). You specify a creation token when
  you create an Amazon EFS file system.
  * `:file_system_id` (`t:string`) (Optional) ID of the file system whose
  description you want to retrieve (String).
  * `:marker` (`t:string`) (Optional) Opaque pagination token returned from a
  previous DescribeFileSystems operation (String). If present, specifies to
  continue the list from where the returning call had left off.
  * `:max_items` (`t:integer`) (Optional) Specifies the maximum number of file
  systems to return in the response (integer). This number is automatically
  set to 100. The response is paginated at 100 per page if you have more than
  100 file systems.
  """

  @spec describe_file_systems(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_file_systems_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_file_systems_errors()}

  def describe_file_systems(%Client{} = client, options \\ []) do
    url_path = "/2015-02-01/file-systems"

    # Validate optional parameters
    optional_params = [creation_token: nil, file_system_id: nil, marker: nil, max_items: nil]

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
      if opt_val = Keyword.get(options, :max_items) do
        [{"MaxItems", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :marker) do
        [{"Marker", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :file_system_id) do
        [{"FileSystemId", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :creation_token) do
        [{"CreationToken", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:creation_token, :file_system_id, :marker, :max_items])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the current `LifecycleConfiguration` object for the specified Amazon EFS
  file system. Lifecycle management uses the `LifecycleConfiguration` object to
  identify when to move files between storage classes. For a file system without
  a `LifecycleConfiguration` object, the call returns an empty array in the
  response.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=efs%20DescribeLifecycleConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:file_system_id` (`t:string`) The ID of the file system whose
  LifecycleConfiguration object you want to retrieve (String).

  ## Optional parameters:
  """

  @spec describe_lifecycle_configuration(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, lifecycle_configuration_description(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_lifecycle_configuration_errors()}

  def describe_lifecycle_configuration(%Client{} = client, file_system_id, options \\ []) do
    url_path =
      "/2015-02-01/file-systems/#{AWS.Util.encode_uri(file_system_id)}/lifecycle-configuration"

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
  Returns the security groups currently in effect for a mount target. This
  operation requires that the network interface of the mount target has been
  created and the lifecycle state of the mount target is not `deleted`. This
  operation requires permissions for the following actions:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=efs%20DescribeMountTargetSecurityGroups&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:mount_target_id` (`t:string`) The ID of the mount target whose security
  groups you want to retrieve.

  ## Optional parameters:
  """

  @spec describe_mount_target_security_groups(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_mount_target_security_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_mount_target_security_groups_errors()}

  def describe_mount_target_security_groups(%Client{} = client, mount_target_id, options \\ []) do
    url_path = "/2015-02-01/mount-targets/#{AWS.Util.encode_uri(mount_target_id)}/security-groups"

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
  Returns the descriptions of all the current mount targets, or a specific mount
  target, for a file system. When requesting all of the current mount targets,
  the order of mount targets returned in the response is unspecified.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=efs%20DescribeMountTargets&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:access_point_id` (`t:string`) (Optional) The ID of the access point whose
  mount targets that you want to list. It must be included in your request if
  a FileSystemId or MountTargetId is not included in your request. Accepts
  either an access point ID or ARN as input.
  * `:file_system_id` (`t:string`) (Optional) ID of the file system whose mount
  targets you want to list (String). It must be included in your request if an
  AccessPointId or MountTargetId is not included. Accepts either a file system
  ID or ARN as input.
  * `:marker` (`t:string`) (Optional) Opaque pagination token returned from a
  previous DescribeMountTargets operation (String). If present, it specifies
  to continue the list from where the previous returning call left off.
  * `:max_items` (`t:integer`) (Optional) Maximum number of mount targets to
  return in the response. Currently, this number is automatically set to 10,
  and other values are ignored. The response is paginated at 100 per page if
  you have more than 100 mount targets.
  * `:mount_target_id` (`t:string`) (Optional) ID of the mount target that you
  want to have described (String). It must be included in your request if
  FileSystemId is not included. Accepts either a mount target ID or ARN as
  input.
  """

  @spec describe_mount_targets(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_mount_targets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_mount_targets_errors()}

  def describe_mount_targets(%Client{} = client, options \\ []) do
    url_path = "/2015-02-01/mount-targets"

    # Validate optional parameters
    optional_params = [
      access_point_id: nil,
      file_system_id: nil,
      marker: nil,
      max_items: nil,
      mount_target_id: nil
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
      if opt_val = Keyword.get(options, :mount_target_id) do
        [{"MountTargetId", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_items) do
        [{"MaxItems", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :marker) do
        [{"Marker", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :file_system_id) do
        [{"FileSystemId", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :access_point_id) do
        [{"AccessPointId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:access_point_id, :file_system_id, :marker, :max_items, :mount_target_id])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the replication configuration for a specific file system. If a file
  system is not specified, all of the replication configurations for the Amazon
  Web Services account in an Amazon Web Services Region are retrieved.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=efs%20DescribeReplicationConfigurations&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:file_system_id` (`t:string`) You can retrieve the replication configuration
  for a specific file system by providing its file system ID.
  * `:max_results` (`t:integer`) (Optional) To limit the number of objects
  returned in a response, you can specify the MaxItems parameter. The default
  value is 100.
  * `:next_token` (`t:string`) NextToken is present if the response is paginated.
  You can use NextToken in a subsequent request to fetch the next page of
  output.
  """

  @spec describe_replication_configurations(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_replication_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_replication_configurations_errors()}

  def describe_replication_configurations(%Client{} = client, options \\ []) do
    url_path = "/2015-02-01/file-systems/replication-configurations"

    # Validate optional parameters
    optional_params = [file_system_id: nil, max_results: nil, next_token: nil]

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

    query_params =
      if opt_val = Keyword.get(options, :file_system_id) do
        [{"FileSystemId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:file_system_id, :max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  DEPRECATED - The `DescribeTags` action is deprecated and not maintained. To view
  tags associated with EFS resources, use the `ListTagsForResource` API action.
  Returns the tags associated with a file system. The order of tags returned in
  the response of one `DescribeTags` call and the order of tags returned across
  the responses of a multiple-call iteration (when using pagination) is
  unspecified.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=efs%20DescribeTags&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:file_system_id` (`t:string`) The ID of the file system whose tag set you
  want to retrieve.

  ## Optional parameters:
  * `:marker` (`t:string`) (Optional) An opaque pagination token returned from a
  previous DescribeTags operation (String). If present, it specifies to
  continue the list from where the previous call left off.
  * `:max_items` (`t:integer`) (Optional) The maximum number of file system tags
  to return in the response. Currently, this number is automatically set to
  100, and other values are ignored. The response is paginated at 100 per page
  if you have more than 100 tags.
  """

  @spec describe_tags(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_tags_errors()}

  def describe_tags(%Client{} = client, file_system_id, options \\ []) do
    url_path = "/2015-02-01/tags/#{AWS.Util.encode_uri(file_system_id)}"

    # Validate optional parameters
    optional_params = [marker: nil, max_items: nil]

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
      if opt_val = Keyword.get(options, :max_items) do
        [{"MaxItems", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :marker) do
        [{"Marker", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:marker, :max_items])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all tags for a top-level EFS resource. You must provide the ID of the
  resource that you want to retrieve the tags for.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=efs%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_id` (`t:string`) Specifies the EFS resource you want to retrieve
  tags for. You can retrieve tags for EFS file systems and access points using
  this API endpoint.

  ## Optional parameters:
  * `:max_results` (`t:integer`) (Optional) Specifies the maximum number of tag
  objects to return in the response. The default value is 100.
  * `:next_token` (`t:string`) (Optional) You can use NextToken in a subsequent
  request to fetch the next page of access point descriptions if the response
  payload was paginated.
  """

  @spec list_tags_for_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}

  def list_tags_for_resource(%Client{} = client, resource_id, options \\ []) do
    url_path = "/2015-02-01/resource-tags/#{AWS.Util.encode_uri(resource_id)}"

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
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Modifies the set of security groups in effect for a mount target. When you
  create a mount target, Amazon EFS also creates a new network interface. For
  more information, see `CreateMountTarget`. This operation replaces the
  security groups in effect for the network interface associated with a mount
  target, with the `SecurityGroups` provided in the request. This operation
  requires that the network interface of the mount target has been created and
  the lifecycle state of the mount target is not `deleted`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=efs%20ModifyMountTargetSecurityGroups&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:mount_target_id` (`t:string`) The ID of the mount target whose security
  groups you want to modify.

  ## Optional parameters:
  """

  @spec modify_mount_target_security_groups(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_mount_target_security_groups_errors()}

  def modify_mount_target_security_groups(%Client{} = client, mount_target_id, options \\ []) do
    url_path = "/2015-02-01/mount-targets/#{AWS.Util.encode_uri(mount_target_id)}/security-groups"

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

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 204)
  end

  @doc """
  Use this operation to set the account preference in the current Amazon Web
  Services Region to use long 17 character (63 bit) or short 8 character (32
  bit) resource IDs for new EFS file system and mount target resources. All
  existing resource IDs are not affected by any changes you make. You can set
  the ID preference during the opt-in period as EFS transitions to long resource
  IDs. For more information, see [Managing Amazon EFS resource
  IDs](https://docs.aws.amazon.com/efs/latest/ug/manage-efs-resource-ids.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=efs%20PutAccountPreferences&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec put_account_preferences(AWS.Client.t(), Keyword.t()) ::
          {:ok, put_account_preferences_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_account_preferences_errors()}

  def put_account_preferences(%Client{} = client, options \\ []) do
    url_path = "/2015-02-01/account-preferences"

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
  Updates the file system's backup policy. Use this action to start or stop
  automatic backups of the file system.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=efs%20PutBackupPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:file_system_id` (`t:string`) Specifies which EFS file system to update the
  backup policy for.

  ## Optional parameters:
  """

  @spec put_backup_policy(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, backup_policy_description(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_backup_policy_errors()}

  def put_backup_policy(%Client{} = client, file_system_id, options \\ []) do
    url_path = "/2015-02-01/file-systems/#{AWS.Util.encode_uri(file_system_id)}/backup-policy"

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
  Applies an Amazon EFS `FileSystemPolicy` to an Amazon EFS file system. A file
  system policy is an IAM resource-based policy and can contain multiple policy
  statements. A file system always has exactly one file system policy, which can
  be the default policy or an explicit policy set or updated using this API
  operation. EFS file system policies have a 20,000 character limit. When an
  explicit policy is set, it overrides the default policy. For more information
  about the default file system policy, see [Default EFS File System
  Policy](https://docs.aws.amazon.com/efs/latest/ug/iam-access-control-nfs-efs.html#default-filesystempolicy).
  EFS file system policies have a 20,000 character limit.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=efs%20PutFileSystemPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:file_system_id` (`t:string`) The ID of the EFS file system that you want to
  create or update the FileSystemPolicy for.

  ## Optional parameters:
  """

  @spec put_file_system_policy(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, file_system_policy_description(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_file_system_policy_errors()}

  def put_file_system_policy(%Client{} = client, file_system_id, options \\ []) do
    url_path = "/2015-02-01/file-systems/#{AWS.Util.encode_uri(file_system_id)}/policy"

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
  Use this action to manage storage for your file system. A
  `LifecycleConfiguration` consists of one or more `LifecyclePolicy` objects
  that define the following:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=efs%20PutLifecycleConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:file_system_id` (`t:string`) The ID of the file system for which you are
  creating the LifecycleConfiguration object (String).

  ## Optional parameters:
  """

  @spec put_lifecycle_configuration(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, lifecycle_configuration_description(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_lifecycle_configuration_errors()}

  def put_lifecycle_configuration(%Client{} = client, file_system_id, options \\ []) do
    url_path =
      "/2015-02-01/file-systems/#{AWS.Util.encode_uri(file_system_id)}/lifecycle-configuration"

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
  Creates a tag for an EFS resource. You can create tags for EFS file systems and
  access points using this API operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=efs%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_id` (`t:string`) The ID specifying the EFS resource that you want
  to create a tag for.

  ## Optional parameters:
  """

  @spec tag_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}

  def tag_resource(%Client{} = client, resource_id, options \\ []) do
    url_path = "/2015-02-01/resource-tags/#{AWS.Util.encode_uri(resource_id)}"

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
  Removes tags from an EFS resource. You can remove tags from EFS file systems and
  access points using this API operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=efs%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_id` (`t:string`) Specifies the EFS resource that you want to remove
  tags from.
  * `:tag_keys` (`t:list[com.amazonaws.efs#TagKey]`) The keys of the key-value tag
  pairs that you want to remove from the specified EFS resource.

  ## Optional parameters:
  """

  @spec untag_resource(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}

  def untag_resource(%Client{} = client, resource_id, tag_keys, options \\ [])
      when is_binary(tag_keys) do
    url_path = "/2015-02-01/resource-tags/#{AWS.Util.encode_uri(resource_id)}"

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
  Updates the throughput mode or the amount of provisioned throughput of an
  existing file system.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=efs%20UpdateFileSystem&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:file_system_id` (`t:string`) The ID of the file system that you want to
  update.

  ## Optional parameters:
  """

  @spec update_file_system(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, file_system_description(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_file_system_errors()}

  def update_file_system(%Client{} = client, file_system_id, options \\ []) do
    url_path = "/2015-02-01/file-systems/#{AWS.Util.encode_uri(file_system_id)}"

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

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 202)
  end

  @doc """
  Updates protection on the file system.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=efs%20UpdateFileSystemProtection&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:file_system_id` (`t:string`) The ID of the file system to update.

  ## Optional parameters:
  """

  @spec update_file_system_protection(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, file_system_protection_description(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_file_system_protection_errors()}

  def update_file_system_protection(%Client{} = client, file_system_id, options \\ []) do
    url_path = "/2015-02-01/file-systems/#{AWS.Util.encode_uri(file_system_id)}/protection"

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
end
