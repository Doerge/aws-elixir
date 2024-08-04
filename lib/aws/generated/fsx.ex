# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.FSx do
  @moduledoc """
  Amazon FSx is a fully managed service that makes it easy for storage and
  application administrators to launch and use shared file storage.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      disk_iops_configuration() :: %{
        "Iops" => float(),
        "Mode" => list(any())
      }
      
  """
  @type disk_iops_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      file_system() :: %{
        "AdministrativeActions" => list(administrative_action()()),
        "CreationTime" => non_neg_integer(),
        "DNSName" => String.t(),
        "FailureDetails" => file_system_failure_details(),
        "FileSystemId" => String.t(),
        "FileSystemType" => list(any()),
        "FileSystemTypeVersion" => String.t(),
        "KmsKeyId" => String.t(),
        "Lifecycle" => list(any()),
        "LustreConfiguration" => lustre_file_system_configuration(),
        "NetworkInterfaceIds" => list(String.t()()),
        "OntapConfiguration" => ontap_file_system_configuration(),
        "OpenZFSConfiguration" => open_z_f_s_file_system_configuration(),
        "OwnerId" => String.t(),
        "ResourceARN" => String.t(),
        "StorageCapacity" => integer(),
        "StorageType" => list(any()),
        "SubnetIds" => list(String.t()()),
        "Tags" => list(tag()()),
        "VpcId" => String.t(),
        "WindowsConfiguration" => windows_file_system_configuration()
      }
      
  """
  @type file_system() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_file_cache_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("CopyTagsToDataRepositoryAssociations") => boolean(),
        optional("DataRepositoryAssociations") => list(file_cache_data_repository_association()()),
        optional("KmsKeyId") => String.t(),
        optional("LustreConfiguration") => create_file_cache_lustre_configuration(),
        optional("SecurityGroupIds") => list(String.t()()),
        optional("Tags") => list(tag()()),
        required("FileCacheType") => list(any()),
        required("FileCacheTypeVersion") => String.t(),
        required("StorageCapacity") => integer(),
        required("SubnetIds") => list(String.t()())
      }
      
  """
  @type create_file_cache_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      copy_backup_response() :: %{
        "Backup" => backup()
      }
      
  """
  @type copy_backup_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_does_not_support_tagging() :: %{
        "Message" => String.t(),
        "ResourceARN" => String.t()
      }
      
  """
  @type resource_does_not_support_tagging() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_data_repository_association_response() :: %{
        "AssociationId" => String.t(),
        "DeleteDataInFileSystem" => boolean(),
        "Lifecycle" => list(any())
      }
      
  """
  @type delete_data_repository_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_snapshot_request() :: %{
        optional("ClientRequestToken") => String.t(),
        required("SnapshotId") => String.t()
      }
      
  """
  @type delete_snapshot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceARN") => String.t(),
        required("Tags") => list(tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_file_system_lustre_metadata_configuration() :: %{
        "Iops" => integer(),
        "Mode" => list(any())
      }
      
  """
  @type create_file_system_lustre_metadata_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      open_z_f_s_user_or_group_quota() :: %{
        "Id" => integer(),
        "StorageCapacityQuotaGiB" => integer(),
        "Type" => list(any())
      }
      
  """
  @type open_z_f_s_user_or_group_quota() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found() :: %{
        "Message" => String.t(),
        "ResourceARN" => String.t()
      }
      
  """
  @type resource_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snapshot_not_found() :: %{
        "Message" => String.t()
      }
      
  """
  @type snapshot_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_data_repository_association_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("ImportedFileChunkSize") => integer(),
        optional("S3") => s3_data_repository_configuration(),
        required("AssociationId") => String.t()
      }
      
  """
  @type update_data_repository_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      open_z_f_s_client_configuration() :: %{
        "Clients" => String.t(),
        "Options" => list(String.t()())
      }
      
  """
  @type open_z_f_s_client_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      storage_virtual_machine_not_found() :: %{
        "Message" => String.t()
      }
      
  """
  @type storage_virtual_machine_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_file_system_windows_configuration() :: %{
        "ActiveDirectoryId" => String.t(),
        "Aliases" => list(String.t()()),
        "AuditLogConfiguration" => windows_audit_log_create_configuration(),
        "AutomaticBackupRetentionDays" => integer(),
        "CopyTagsToBackups" => boolean(),
        "DailyAutomaticBackupStartTime" => String.t(),
        "DeploymentType" => list(any()),
        "DiskIopsConfiguration" => disk_iops_configuration(),
        "PreferredSubnetId" => String.t(),
        "SelfManagedActiveDirectoryConfiguration" => self_managed_active_directory_configuration(),
        "ThroughputCapacity" => integer(),
        "WeeklyMaintenanceStartTime" => String.t()
      }
      
  """
  @type create_file_system_windows_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_import_policy() :: %{
        "Events" => list(list(any())())
      }
      
  """
  @type auto_import_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      file_cache() :: %{
        "CreationTime" => non_neg_integer(),
        "DNSName" => String.t(),
        "DataRepositoryAssociationIds" => list(String.t()()),
        "FailureDetails" => file_cache_failure_details(),
        "FileCacheId" => String.t(),
        "FileCacheType" => list(any()),
        "FileCacheTypeVersion" => String.t(),
        "KmsKeyId" => String.t(),
        "Lifecycle" => list(any()),
        "LustreConfiguration" => file_cache_lustre_configuration(),
        "NetworkInterfaceIds" => list(String.t()()),
        "OwnerId" => String.t(),
        "ResourceARN" => String.t(),
        "StorageCapacity" => integer(),
        "SubnetIds" => list(String.t()()),
        "VpcId" => String.t()
      }
      
  """
  @type file_cache() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_region() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_region() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aggregate_configuration() :: %{
        "Aggregates" => list(String.t()()),
        "TotalConstituents" => integer()
      }
      
  """
  @type aggregate_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_volume_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("OntapConfiguration") => delete_volume_ontap_configuration(),
        optional("OpenZFSConfiguration") => delete_volume_open_z_f_s_configuration(),
        required("VolumeId") => String.t()
      }
      
  """
  @type delete_volume_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_file_caches_response() :: %{
        "FileCaches" => list(file_cache()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_file_caches_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_svm_active_directory_configuration() :: %{
        "NetBiosName" => String.t(),
        "SelfManagedActiveDirectoryConfiguration" => self_managed_active_directory_configuration_updates()
      }
      
  """
  @type update_svm_active_directory_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_export_path() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_export_path() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_file_system_open_z_f_s_configuration() :: %{
        "AutomaticBackupRetentionDays" => integer(),
        "CopyTagsToBackups" => boolean(),
        "CopyTagsToVolumes" => boolean(),
        "DailyAutomaticBackupStartTime" => String.t(),
        "DeploymentType" => list(any()),
        "DiskIopsConfiguration" => disk_iops_configuration(),
        "EndpointIpAddressRange" => String.t(),
        "PreferredSubnetId" => String.t(),
        "RootVolumeConfiguration" => open_z_f_s_create_root_volume_configuration(),
        "RouteTableIds" => list(String.t()()),
        "ThroughputCapacity" => integer(),
        "WeeklyMaintenanceStartTime" => String.t()
      }
      
  """
  @type create_file_system_open_z_f_s_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      start_misconfigured_state_recovery_request() :: %{
        optional("ClientRequestToken") => String.t(),
        required("FileSystemId") => String.t()
      }
      
  """
  @type start_misconfigured_state_recovery_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_snapshot_request() :: %{
        optional("ClientRequestToken") => String.t(),
        required("Name") => String.t(),
        required("SnapshotId") => String.t()
      }
      
  """
  @type update_snapshot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_file_system_ontap_configuration() :: %{
        "AutomaticBackupRetentionDays" => integer(),
        "DailyAutomaticBackupStartTime" => String.t(),
        "DeploymentType" => list(any()),
        "DiskIopsConfiguration" => disk_iops_configuration(),
        "EndpointIpAddressRange" => String.t(),
        "FsxAdminPassword" => String.t(),
        "HAPairs" => integer(),
        "PreferredSubnetId" => String.t(),
        "RouteTableIds" => list(String.t()()),
        "ThroughputCapacity" => integer(),
        "ThroughputCapacityPerHAPair" => integer(),
        "WeeklyMaintenanceStartTime" => String.t()
      }
      
  """
  @type create_file_system_ontap_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_file_system_response() :: %{
        "FileSystem" => file_system()
      }
      
  """
  @type update_file_system_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_snapshot_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("Tags") => list(tag()()),
        required("Name") => String.t(),
        required("VolumeId") => String.t()
      }
      
  """
  @type create_snapshot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_svm_active_directory_configuration() :: %{
        "NetBiosName" => String.t(),
        "SelfManagedActiveDirectoryConfiguration" => self_managed_active_directory_configuration()
      }
      
  """
  @type create_svm_active_directory_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      file_cache_failure_details() :: %{
        "Message" => String.t()
      }
      
  """
  @type file_cache_failure_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      nfs_data_repository_configuration() :: %{
        "AutoExportPolicy" => auto_export_policy(),
        "DnsIps" => list(String.t()()),
        "Version" => list(any())
      }
      
  """
  @type nfs_data_repository_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_network_settings() :: %{
        "InvalidRouteTableId" => String.t(),
        "InvalidSecurityGroupId" => String.t(),
        "InvalidSubnetId" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type invalid_network_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_snapshots_response() :: %{
        "NextToken" => String.t(),
        "Snapshots" => list(snapshot()())
      }
      
  """
  @type describe_snapshots_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_file_system_response() :: %{
        "FileSystem" => file_system()
      }
      
  """
  @type create_file_system_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      duration_since_last_access() :: %{
        "Unit" => list(any()),
        "Value" => float()
      }
      
  """
  @type duration_since_last_access() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      retention_period() :: %{
        "Type" => list(any()),
        "Value" => integer()
      }
      
  """
  @type retention_period() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_volumes_request() :: %{
        optional("Filters") => list(volume_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("VolumeIds") => list(String.t()())
      }
      
  """
  @type describe_volumes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_snapshot_response() :: %{
        "Snapshot" => snapshot()
      }
      
  """
  @type create_snapshot_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      autocommit_period() :: %{
        "Type" => list(any()),
        "Value" => integer()
      }
      
  """
  @type autocommit_period() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_volume_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("Name") => String.t(),
        optional("OntapConfiguration") => update_ontap_volume_configuration(),
        optional("OpenZFSConfiguration") => update_open_z_f_s_volume_configuration(),
        required("VolumeId") => String.t()
      }
      
  """
  @type update_volume_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_volume_ontap_configuration() :: %{
        "BypassSnaplockEnterpriseRetention" => boolean(),
        "FinalBackupTags" => list(tag()()),
        "SkipFinalBackup" => boolean()
      }
      
  """
  @type delete_volume_ontap_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      missing_volume_configuration() :: %{
        "Message" => String.t()
      }
      
  """
  @type missing_volume_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_repository_task_not_found() :: %{
        "Message" => String.t()
      }
      
  """
  @type data_repository_task_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      backup_in_progress() :: %{
        "Message" => String.t()
      }
      
  """
  @type backup_in_progress() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_storage_virtual_machines_response() :: %{
        "NextToken" => String.t(),
        "StorageVirtualMachines" => list(storage_virtual_machine()())
      }
      
  """
  @type describe_storage_virtual_machines_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      file_cache_nfs_configuration() :: %{
        "DnsIps" => list(String.t()()),
        "Version" => list(any())
      }
      
  """
  @type file_cache_nfs_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      windows_audit_log_configuration() :: %{
        "AuditLogDestination" => String.t(),
        "FileAccessAuditLogLevel" => list(any()),
        "FileShareAccessAuditLogLevel" => list(any())
      }
      
  """
  @type windows_audit_log_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      administrative_action() :: %{
        "AdministrativeActionType" => list(any()),
        "FailureDetails" => administrative_action_failure_details(),
        "ProgressPercent" => integer(),
        "RemainingTransferBytes" => float(),
        "RequestTime" => non_neg_integer(),
        "Status" => list(any()),
        "TargetFileSystemValues" => file_system(),
        "TargetSnapshotValues" => snapshot(),
        "TargetVolumeValues" => volume(),
        "TotalTransferBytes" => float()
      }
      
  """
  @type administrative_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      copy_backup_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("CopyTags") => boolean(),
        optional("KmsKeyId") => String.t(),
        optional("SourceRegion") => String.t(),
        optional("Tags") => list(tag()()),
        required("SourceBackupId") => String.t()
      }
      
  """
  @type copy_backup_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      release_file_system_nfs_v3_locks_request() :: %{
        optional("ClientRequestToken") => String.t(),
        required("FileSystemId") => String.t()
      }
      
  """
  @type release_file_system_nfs_v3_locks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_ontap_volume_configuration() :: %{
        "CopyTagsToBackups" => boolean(),
        "JunctionPath" => String.t(),
        "SecurityStyle" => list(any()),
        "SizeInBytes" => float(),
        "SizeInMegabytes" => integer(),
        "SnaplockConfiguration" => update_snaplock_configuration(),
        "SnapshotPolicy" => String.t(),
        "StorageEfficiencyEnabled" => boolean(),
        "TieringPolicy" => tiering_policy()
      }
      
  """
  @type update_ontap_volume_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceARN") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      file_cache_creating() :: %{
        "CopyTagsToDataRepositoryAssociations" => boolean(),
        "CreationTime" => non_neg_integer(),
        "DNSName" => String.t(),
        "DataRepositoryAssociationIds" => list(String.t()()),
        "FailureDetails" => file_cache_failure_details(),
        "FileCacheId" => String.t(),
        "FileCacheType" => list(any()),
        "FileCacheTypeVersion" => String.t(),
        "KmsKeyId" => String.t(),
        "Lifecycle" => list(any()),
        "LustreConfiguration" => file_cache_lustre_configuration(),
        "NetworkInterfaceIds" => list(String.t()()),
        "OwnerId" => String.t(),
        "ResourceARN" => String.t(),
        "StorageCapacity" => integer(),
        "SubnetIds" => list(String.t()()),
        "Tags" => list(tag()()),
        "VpcId" => String.t()
      }
      
  """
  @type file_cache_creating() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lustre_root_squash_configuration() :: %{
        "NoSquashNids" => list(String.t()()),
        "RootSquash" => String.t()
      }
      
  """
  @type lustre_root_squash_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      open_z_f_s_nfs_export() :: %{
        "ClientConfigurations" => list(open_z_f_s_client_configuration()())
      }
      
  """
  @type open_z_f_s_nfs_export() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      file_system_endpoints() :: %{
        "Intercluster" => file_system_endpoint(),
        "Management" => file_system_endpoint()
      }
      
  """
  @type file_system_endpoints() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      copy_snapshot_and_update_volume_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("CopyStrategy") => list(any()),
        optional("Options") => list(list(any())()),
        required("SourceSnapshotARN") => String.t(),
        required("VolumeId") => String.t()
      }
      
  """
  @type copy_snapshot_and_update_volume_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lifecycle_transition_reason() :: %{
        "Message" => String.t()
      }
      
  """
  @type lifecycle_transition_reason() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      file_system_failure_details() :: %{
        "Message" => String.t()
      }
      
  """
  @type file_system_failure_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_file_system_ontap_configuration() :: %{
        "AddRouteTableIds" => list(String.t()()),
        "AutomaticBackupRetentionDays" => integer(),
        "DailyAutomaticBackupStartTime" => String.t(),
        "DiskIopsConfiguration" => disk_iops_configuration(),
        "FsxAdminPassword" => String.t(),
        "HAPairs" => integer(),
        "RemoveRouteTableIds" => list(String.t()()),
        "ThroughputCapacity" => integer(),
        "ThroughputCapacityPerHAPair" => integer(),
        "WeeklyMaintenanceStartTime" => String.t()
      }
      
  """
  @type update_file_system_ontap_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      storage_virtual_machine_filter() :: %{
        "Name" => list(any()),
        "Values" => list(String.t()())
      }
      
  """
  @type storage_virtual_machine_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_file_system_aliases_request() :: %{
        optional("ClientRequestToken") => String.t(),
        required("Aliases") => list(String.t()()),
        required("FileSystemId") => String.t()
      }
      
  """
  @type associate_file_system_aliases_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_open_z_f_s_origin_snapshot_configuration() :: %{
        "CopyStrategy" => list(any()),
        "SnapshotARN" => String.t()
      }
      
  """
  @type create_open_z_f_s_origin_snapshot_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      release_configuration() :: %{
        "DurationSinceLastAccess" => duration_since_last_access()
      }
      
  """
  @type release_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      self_managed_active_directory_attributes() :: %{
        "DnsIps" => list(String.t()()),
        "DomainName" => String.t(),
        "FileSystemAdministratorsGroup" => String.t(),
        "OrganizationalUnitDistinguishedName" => String.t(),
        "UserName" => String.t()
      }
      
  """
  @type self_managed_active_directory_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_data_repository_task_request() :: %{
        required("TaskId") => String.t()
      }
      
  """
  @type cancel_data_repository_task_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_file_cache_response() :: %{
        "FileCacheId" => String.t(),
        "Lifecycle" => list(any())
      }
      
  """
  @type delete_file_cache_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_file_system_aliases_response() :: %{
        "Aliases" => list(alias()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_file_system_aliases_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_file_system_lustre_response() :: %{
        "FinalBackupId" => String.t(),
        "FinalBackupTags" => list(tag()())
      }
      
  """
  @type delete_file_system_lustre_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_repository_task_executing() :: %{
        "Message" => String.t()
      }
      
  """
  @type data_repository_task_executing() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      file_system_endpoint() :: %{
        "DNSName" => String.t(),
        "IpAddresses" => list(String.t()())
      }
      
  """
  @type file_system_endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_volume_open_z_f_s_configuration() :: %{
        "Options" => list(list(any())())
      }
      
  """
  @type delete_volume_open_z_f_s_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_volume_from_backup_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("OntapConfiguration") => create_ontap_volume_configuration(),
        optional("Tags") => list(tag()()),
        required("BackupId") => String.t(),
        required("Name") => String.t()
      }
      
  """
  @type create_volume_from_backup_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      self_managed_active_directory_configuration_updates() :: %{
        "DnsIps" => list(String.t()()),
        "DomainName" => String.t(),
        "FileSystemAdministratorsGroup" => String.t(),
        "OrganizationalUnitDistinguishedName" => String.t(),
        "Password" => String.t(),
        "UserName" => String.t()
      }
      
  """
  @type self_managed_active_directory_configuration_updates() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tiering_policy() :: %{
        "CoolingPeriod" => integer(),
        "Name" => list(any())
      }
      
  """
  @type tiering_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      svm_active_directory_configuration() :: %{
        "NetBiosName" => String.t(),
        "SelfManagedActiveDirectoryConfiguration" => self_managed_active_directory_attributes()
      }
      
  """
  @type svm_active_directory_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_repository_task_failure_details() :: %{
        "Message" => String.t()
      }
      
  """
  @type data_repository_task_failure_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      svm_endpoints() :: %{
        "Iscsi" => svm_endpoint(),
        "Management" => svm_endpoint(),
        "Nfs" => svm_endpoint(),
        "Smb" => svm_endpoint()
      }
      
  """
  @type svm_endpoints() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      backup_restoring() :: %{
        "FileSystemId" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type backup_restoring() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_operation() :: %{
        "Message" => String.t()
      }
      
  """
  @type unsupported_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_volume_ontap_response() :: %{
        "FinalBackupId" => String.t(),
        "FinalBackupTags" => list(tag()())
      }
      
  """
  @type delete_volume_ontap_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_storage_virtual_machine_request() :: %{
        optional("ActiveDirectoryConfiguration") => create_svm_active_directory_configuration(),
        optional("ClientRequestToken") => String.t(),
        optional("RootVolumeSecurityStyle") => list(any()),
        optional("SvmAdminPassword") => String.t(),
        optional("Tags") => list(tag()()),
        required("FileSystemId") => String.t(),
        required("Name") => String.t()
      }
      
  """
  @type create_storage_virtual_machine_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_file_system_aliases_response() :: %{
        "Aliases" => list(alias()())
      }
      
  """
  @type disassociate_file_system_aliases_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      copy_snapshot_and_update_volume_response() :: %{
        "AdministrativeActions" => list(administrative_action()()),
        "Lifecycle" => list(any()),
        "VolumeId" => String.t()
      }
      
  """
  @type copy_snapshot_and_update_volume_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_snaplock_configuration() :: %{
        "AuditLogVolume" => boolean(),
        "AutocommitPeriod" => autocommit_period(),
        "PrivilegedDelete" => list(any()),
        "RetentionPeriod" => snaplock_retention_period(),
        "VolumeAppendModeEnabled" => boolean()
      }
      
  """
  @type update_snaplock_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_aggregate_configuration() :: %{
        "Aggregates" => list(String.t()()),
        "ConstituentsPerAggregate" => integer()
      }
      
  """
  @type create_aggregate_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_backups_request() :: %{
        optional("BackupIds") => list(String.t()()),
        optional("Filters") => list(filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_backups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_open_z_f_s_volume_configuration() :: %{
        "DataCompressionType" => list(any()),
        "NfsExports" => list(open_z_f_s_nfs_export()()),
        "ReadOnly" => boolean(),
        "RecordSizeKiB" => integer(),
        "StorageCapacityQuotaGiB" => integer(),
        "StorageCapacityReservationGiB" => integer(),
        "UserAndGroupQuotas" => list(open_z_f_s_user_or_group_quota()())
      }
      
  """
  @type update_open_z_f_s_volume_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_repository_task_status() :: %{
        "FailedCount" => float(),
        "LastUpdatedTime" => non_neg_integer(),
        "ReleasedCapacity" => float(),
        "SucceededCount" => float(),
        "TotalCount" => float()
      }
      
  """
  @type data_repository_task_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_file_system_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("LustreConfiguration") => update_file_system_lustre_configuration(),
        optional("OntapConfiguration") => update_file_system_ontap_configuration(),
        optional("OpenZFSConfiguration") => update_file_system_open_z_f_s_configuration(),
        optional("StorageCapacity") => integer(),
        optional("StorageType") => list(any()),
        optional("WindowsConfiguration") => update_file_system_windows_configuration(),
        required("FileSystemId") => String.t()
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
      
      update_shared_vpc_configuration_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("EnableFsxRouteTableUpdatesFromParticipantAccounts") => String.t()
      }
      
  """
  @type update_shared_vpc_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_data_repository_association_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("DeleteDataInFileSystem") => boolean(),
        required("AssociationId") => String.t()
      }
      
  """
  @type delete_data_repository_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      active_directory_error() :: %{
        "ActiveDirectoryId" => String.t(),
        "Message" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type active_directory_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_file_system_response() :: %{
        "FileSystemId" => String.t(),
        "Lifecycle" => list(any()),
        "LustreResponse" => delete_file_system_lustre_response(),
        "OpenZFSResponse" => delete_file_system_open_z_f_s_response(),
        "WindowsResponse" => delete_file_system_windows_response()
      }
      
  """
  @type delete_file_system_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_data_repository_association_response() :: %{
        "Association" => data_repository_association()
      }
      
  """
  @type create_data_repository_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_file_system_aliases_response() :: %{
        "Aliases" => list(alias()())
      }
      
  """
  @type associate_file_system_aliases_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_source_kms_key() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_source_kms_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snaplock_configuration() :: %{
        "AuditLogVolume" => boolean(),
        "AutocommitPeriod" => autocommit_period(),
        "PrivilegedDelete" => list(any()),
        "RetentionPeriod" => snaplock_retention_period(),
        "SnaplockType" => list(any()),
        "VolumeAppendModeEnabled" => boolean()
      }
      
  """
  @type snaplock_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_file_system_open_z_f_s_configuration() :: %{
        "FinalBackupTags" => list(tag()()),
        "Options" => list(list(any())()),
        "SkipFinalBackup" => boolean()
      }
      
  """
  @type delete_file_system_open_z_f_s_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_file_system_lustre_configuration() :: %{
        "AutoImportPolicy" => list(any()),
        "AutomaticBackupRetentionDays" => integer(),
        "CopyTagsToBackups" => boolean(),
        "DailyAutomaticBackupStartTime" => String.t(),
        "DataCompressionType" => list(any()),
        "DeploymentType" => list(any()),
        "DriveCacheType" => list(any()),
        "ExportPath" => String.t(),
        "ImportPath" => String.t(),
        "ImportedFileChunkSize" => integer(),
        "LogConfiguration" => lustre_log_create_configuration(),
        "MetadataConfiguration" => create_file_system_lustre_metadata_configuration(),
        "PerUnitStorageThroughput" => integer(),
        "RootSquashConfiguration" => lustre_root_squash_configuration(),
        "WeeklyMaintenanceStartTime" => String.t()
      }
      
  """
  @type create_file_system_lustre_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_storage_virtual_machine_response() :: %{
        "Lifecycle" => list(any()),
        "StorageVirtualMachineId" => String.t()
      }
      
  """
  @type delete_storage_virtual_machine_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_data_repository_type() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_data_repository_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_file_system_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("FileSystemTypeVersion") => String.t(),
        optional("KmsKeyId") => String.t(),
        optional("LustreConfiguration") => create_file_system_lustre_configuration(),
        optional("OntapConfiguration") => create_file_system_ontap_configuration(),
        optional("OpenZFSConfiguration") => create_file_system_open_z_f_s_configuration(),
        optional("SecurityGroupIds") => list(String.t()()),
        optional("StorageType") => list(any()),
        optional("Tags") => list(tag()()),
        optional("WindowsConfiguration") => create_file_system_windows_configuration(),
        required("FileSystemType") => list(any()),
        required("StorageCapacity") => integer(),
        required("SubnetIds") => list(String.t()())
      }
      
  """
  @type create_file_system_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      not_service_resource_error() :: %{
        "Message" => String.t(),
        "ResourceARN" => String.t()
      }
      
  """
  @type not_service_resource_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_file_system_open_z_f_s_response() :: %{
        "FinalBackupId" => String.t(),
        "FinalBackupTags" => list(tag()())
      }
      
  """
  @type delete_file_system_open_z_f_s_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      storage_virtual_machine() :: %{
        "ActiveDirectoryConfiguration" => svm_active_directory_configuration(),
        "CreationTime" => non_neg_integer(),
        "Endpoints" => svm_endpoints(),
        "FileSystemId" => String.t(),
        "Lifecycle" => list(any()),
        "LifecycleTransitionReason" => lifecycle_transition_reason(),
        "Name" => String.t(),
        "ResourceARN" => String.t(),
        "RootVolumeSecurityStyle" => list(any()),
        "StorageVirtualMachineId" => String.t(),
        "Subtype" => list(any()),
        "Tags" => list(tag()()),
        "UUID" => String.t()
      }
      
  """
  @type storage_virtual_machine() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_file_system_lustre_configuration() :: %{
        "AutoImportPolicy" => list(any()),
        "AutomaticBackupRetentionDays" => integer(),
        "DailyAutomaticBackupStartTime" => String.t(),
        "DataCompressionType" => list(any()),
        "LogConfiguration" => lustre_log_create_configuration(),
        "MetadataConfiguration" => update_file_system_lustre_metadata_configuration(),
        "PerUnitStorageThroughput" => integer(),
        "RootSquashConfiguration" => lustre_root_squash_configuration(),
        "WeeklyMaintenanceStartTime" => String.t()
      }
      
  """
  @type update_file_system_lustre_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      release_file_system_nfs_v3_locks_response() :: %{
        "FileSystem" => file_system()
      }
      
  """
  @type release_file_system_nfs_v3_locks_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      svm_endpoint() :: %{
        "DNSName" => String.t(),
        "IpAddresses" => list(String.t()())
      }
      
  """
  @type svm_endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_backup_response() :: %{
        "BackupId" => String.t(),
        "Lifecycle" => list(any())
      }
      
  """
  @type delete_backup_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      open_z_f_s_file_system_configuration() :: %{
        "AutomaticBackupRetentionDays" => integer(),
        "CopyTagsToBackups" => boolean(),
        "CopyTagsToVolumes" => boolean(),
        "DailyAutomaticBackupStartTime" => String.t(),
        "DeploymentType" => list(any()),
        "DiskIopsConfiguration" => disk_iops_configuration(),
        "EndpointIpAddress" => String.t(),
        "EndpointIpAddressRange" => String.t(),
        "PreferredSubnetId" => String.t(),
        "RootVolumeId" => String.t(),
        "RouteTableIds" => list(String.t()()),
        "ThroughputCapacity" => integer(),
        "WeeklyMaintenanceStartTime" => String.t()
      }
      
  """
  @type open_z_f_s_file_system_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_storage_virtual_machine_request() :: %{
        optional("ActiveDirectoryConfiguration") => update_svm_active_directory_configuration(),
        optional("ClientRequestToken") => String.t(),
        optional("SvmAdminPassword") => String.t(),
        required("StorageVirtualMachineId") => String.t()
      }
      
  """
  @type update_storage_virtual_machine_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_data_repository_association_request() :: %{
        optional("BatchImportMetaDataOnCreate") => boolean(),
        optional("ClientRequestToken") => String.t(),
        optional("FileSystemPath") => String.t(),
        optional("ImportedFileChunkSize") => integer(),
        optional("S3") => s3_data_repository_configuration(),
        optional("Tags") => list(tag()()),
        required("DataRepositoryPath") => String.t(),
        required("FileSystemId") => String.t()
      }
      
  """
  @type create_data_repository_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_shared_vpc_configuration_request() :: %{}
      
  """
  @type describe_shared_vpc_configuration_request() :: %{}

  @typedoc """

  ## Example:
      
      invalid_per_unit_storage_throughput() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_per_unit_storage_throughput() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lustre_log_create_configuration() :: %{
        "Destination" => String.t(),
        "Level" => list(any())
      }
      
  """
  @type lustre_log_create_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_volume_response() :: %{
        "Volume" => volume()
      }
      
  """
  @type create_volume_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_storage_virtual_machine_response() :: %{
        "StorageVirtualMachine" => storage_virtual_machine()
      }
      
  """
  @type update_storage_virtual_machine_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      missing_file_cache_configuration() :: %{
        "Message" => String.t()
      }
      
  """
  @type missing_file_cache_configuration() :: %{String.t() => any()}

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
      
      update_file_cache_lustre_configuration() :: %{
        "WeeklyMaintenanceStartTime" => String.t()
      }
      
  """
  @type update_file_cache_lustre_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lustre_log_configuration() :: %{
        "Destination" => String.t(),
        "Level" => list(any())
      }
      
  """
  @type lustre_log_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_destination_kms_key() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_destination_kms_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lustre_file_system_configuration() :: %{
        "AutomaticBackupRetentionDays" => integer(),
        "CopyTagsToBackups" => boolean(),
        "DailyAutomaticBackupStartTime" => String.t(),
        "DataCompressionType" => list(any()),
        "DataRepositoryConfiguration" => data_repository_configuration(),
        "DeploymentType" => list(any()),
        "DriveCacheType" => list(any()),
        "LogConfiguration" => lustre_log_configuration(),
        "MetadataConfiguration" => file_system_lustre_metadata_configuration(),
        "MountName" => String.t(),
        "PerUnitStorageThroughput" => integer(),
        "RootSquashConfiguration" => lustre_root_squash_configuration(),
        "WeeklyMaintenanceStartTime" => String.t()
      }
      
  """
  @type lustre_file_system_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_volumes_response() :: %{
        "NextToken" => String.t(),
        "Volumes" => list(volume()())
      }
      
  """
  @type describe_volumes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_export_policy() :: %{
        "Events" => list(list(any())())
      }
      
  """
  @type auto_export_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_volume_from_snapshot_response() :: %{
        "AdministrativeActions" => list(administrative_action()()),
        "Lifecycle" => list(any()),
        "VolumeId" => String.t()
      }
      
  """
  @type restore_volume_from_snapshot_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      file_system_not_found() :: %{
        "Message" => String.t()
      }
      
  """
  @type file_system_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      file_cache_not_found() :: %{
        "Message" => String.t()
      }
      
  """
  @type file_cache_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      missing_file_system_configuration() :: %{
        "Message" => String.t()
      }
      
  """
  @type missing_file_system_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      filter() :: %{
        "Name" => list(any()),
        "Values" => list(String.t()())
      }
      
  """
  @type filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snaplock_retention_period() :: %{
        "DefaultRetention" => retention_period(),
        "MaximumRetention" => retention_period(),
        "MinimumRetention" => retention_period()
      }
      
  """
  @type snaplock_retention_period() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_data_repository_task_request() :: %{
        optional("CapacityToRelease") => float(),
        optional("ClientRequestToken") => String.t(),
        optional("Paths") => list(String.t()()),
        optional("ReleaseConfiguration") => release_configuration(),
        optional("Tags") => list(tag()()),
        required("FileSystemId") => String.t(),
        required("Report") => completion_report(),
        required("Type") => list(any())
      }
      
  """
  @type create_data_repository_task_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_storage_virtual_machine_response() :: %{
        "StorageVirtualMachine" => storage_virtual_machine()
      }
      
  """
  @type create_storage_virtual_machine_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_open_z_f_s_volume_configuration() :: %{
        "CopyTagsToSnapshots" => boolean(),
        "DataCompressionType" => list(any()),
        "NfsExports" => list(open_z_f_s_nfs_export()()),
        "OriginSnapshot" => create_open_z_f_s_origin_snapshot_configuration(),
        "ParentVolumeId" => String.t(),
        "ReadOnly" => boolean(),
        "RecordSizeKiB" => integer(),
        "StorageCapacityQuotaGiB" => integer(),
        "StorageCapacityReservationGiB" => integer(),
        "UserAndGroupQuotas" => list(open_z_f_s_user_or_group_quota()())
      }
      
  """
  @type create_open_z_f_s_volume_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      active_directory_backup_attributes() :: %{
        "ActiveDirectoryId" => String.t(),
        "DomainName" => String.t(),
        "ResourceARN" => String.t()
      }
      
  """
  @type active_directory_backup_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      backup_failure_details() :: %{
        "Message" => String.t()
      }
      
  """
  @type backup_failure_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      backup() :: %{
        "BackupId" => String.t(),
        "CreationTime" => non_neg_integer(),
        "DirectoryInformation" => active_directory_backup_attributes(),
        "FailureDetails" => backup_failure_details(),
        "FileSystem" => file_system(),
        "KmsKeyId" => String.t(),
        "Lifecycle" => list(any()),
        "OwnerId" => String.t(),
        "ProgressPercent" => integer(),
        "ResourceARN" => String.t(),
        "ResourceType" => list(any()),
        "SourceBackupId" => String.t(),
        "SourceBackupRegion" => String.t(),
        "Tags" => list(tag()()),
        "Type" => list(any()),
        "Volume" => volume()
      }
      
  """
  @type backup() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_repository_association_not_found() :: %{
        "Message" => String.t()
      }
      
  """
  @type data_repository_association_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_file_cache_lustre_configuration() :: %{
        "DeploymentType" => list(any()),
        "MetadataConfiguration" => file_cache_lustre_metadata_configuration(),
        "PerUnitStorageThroughput" => integer(),
        "WeeklyMaintenanceStartTime" => String.t()
      }
      
  """
  @type create_file_cache_lustre_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      completion_report() :: %{
        "Enabled" => boolean(),
        "Format" => list(any()),
        "Path" => String.t(),
        "Scope" => list(any())
      }
      
  """
  @type completion_report() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      backup_not_found() :: %{
        "Message" => String.t()
      }
      
  """
  @type backup_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_volume_response() :: %{
        "Lifecycle" => list(any()),
        "OntapResponse" => delete_volume_ontap_response(),
        "VolumeId" => String.t()
      }
      
  """
  @type delete_volume_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_repository_failure_details() :: %{
        "Message" => String.t()
      }
      
  """
  @type data_repository_failure_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snapshot_filter() :: %{
        "Name" => list(any()),
        "Values" => list(String.t()())
      }
      
  """
  @type snapshot_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_data_repository_configuration() :: %{
        "AutoExportPolicy" => auto_export_policy(),
        "AutoImportPolicy" => auto_import_policy()
      }
      
  """
  @type s3_data_repository_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_ontap_volume_configuration() :: %{
        "AggregateConfiguration" => create_aggregate_configuration(),
        "CopyTagsToBackups" => boolean(),
        "JunctionPath" => String.t(),
        "OntapVolumeType" => list(any()),
        "SecurityStyle" => list(any()),
        "SizeInBytes" => float(),
        "SizeInMegabytes" => integer(),
        "SnaplockConfiguration" => create_snaplock_configuration(),
        "SnapshotPolicy" => String.t(),
        "StorageEfficiencyEnabled" => boolean(),
        "StorageVirtualMachineId" => String.t(),
        "TieringPolicy" => tiering_policy(),
        "VolumeStyle" => list(any())
      }
      
  """
  @type create_ontap_volume_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_file_system_windows_configuration() :: %{
        "AuditLogConfiguration" => windows_audit_log_create_configuration(),
        "AutomaticBackupRetentionDays" => integer(),
        "DailyAutomaticBackupStartTime" => String.t(),
        "DiskIopsConfiguration" => disk_iops_configuration(),
        "SelfManagedActiveDirectoryConfiguration" => self_managed_active_directory_configuration_updates(),
        "ThroughputCapacity" => integer(),
        "WeeklyMaintenanceStartTime" => String.t()
      }
      
  """
  @type update_file_system_windows_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_file_systems_request() :: %{
        optional("FileSystemIds") => list(String.t()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_file_systems_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_data_repository_tasks_response() :: %{
        "DataRepositoryTasks" => list(data_repository_task()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_data_repository_tasks_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_data_repository_task_response() :: %{
        "DataRepositoryTask" => data_repository_task()
      }
      
  """
  @type create_data_repository_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ontap_volume_configuration() :: %{
        "AggregateConfiguration" => aggregate_configuration(),
        "CopyTagsToBackups" => boolean(),
        "FlexCacheEndpointType" => list(any()),
        "JunctionPath" => String.t(),
        "OntapVolumeType" => list(any()),
        "SecurityStyle" => list(any()),
        "SizeInBytes" => float(),
        "SizeInMegabytes" => integer(),
        "SnaplockConfiguration" => snaplock_configuration(),
        "SnapshotPolicy" => String.t(),
        "StorageEfficiencyEnabled" => boolean(),
        "StorageVirtualMachineId" => String.t(),
        "StorageVirtualMachineRoot" => boolean(),
        "TieringPolicy" => tiering_policy(),
        "UUID" => String.t(),
        "VolumeStyle" => list(any())
      }
      
  """
  @type ontap_volume_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_data_repository_associations_response() :: %{
        "Associations" => list(data_repository_association()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_data_repository_associations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bad_request() :: %{
        "Message" => String.t()
      }
      
  """
  @type bad_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snapshot() :: %{
        "AdministrativeActions" => list(administrative_action()()),
        "CreationTime" => non_neg_integer(),
        "Lifecycle" => list(any()),
        "LifecycleTransitionReason" => lifecycle_transition_reason(),
        "Name" => String.t(),
        "ResourceARN" => String.t(),
        "SnapshotId" => String.t(),
        "Tags" => list(tag()()),
        "VolumeId" => String.t()
      }
      
  """
  @type snapshot() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      alias() :: %{
        "Lifecycle" => list(any()),
        "Name" => String.t()
      }
      
  """
  @type alias() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_file_system_windows_configuration() :: %{
        "FinalBackupTags" => list(tag()()),
        "SkipFinalBackup" => boolean()
      }
      
  """
  @type delete_file_system_windows_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_error() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_server_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_file_system_open_z_f_s_configuration() :: %{
        "AddRouteTableIds" => list(String.t()()),
        "AutomaticBackupRetentionDays" => integer(),
        "CopyTagsToBackups" => boolean(),
        "CopyTagsToVolumes" => boolean(),
        "DailyAutomaticBackupStartTime" => String.t(),
        "DiskIopsConfiguration" => disk_iops_configuration(),
        "RemoveRouteTableIds" => list(String.t()()),
        "ThroughputCapacity" => integer(),
        "WeeklyMaintenanceStartTime" => String.t()
      }
      
  """
  @type update_file_system_open_z_f_s_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ontap_file_system_configuration() :: %{
        "AutomaticBackupRetentionDays" => integer(),
        "DailyAutomaticBackupStartTime" => String.t(),
        "DeploymentType" => list(any()),
        "DiskIopsConfiguration" => disk_iops_configuration(),
        "EndpointIpAddressRange" => String.t(),
        "Endpoints" => file_system_endpoints(),
        "FsxAdminPassword" => String.t(),
        "HAPairs" => integer(),
        "PreferredSubnetId" => String.t(),
        "RouteTableIds" => list(String.t()()),
        "ThroughputCapacity" => integer(),
        "ThroughputCapacityPerHAPair" => integer(),
        "WeeklyMaintenanceStartTime" => String.t()
      }
      
  """
  @type ontap_file_system_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      volume() :: %{
        "AdministrativeActions" => list(administrative_action()()),
        "CreationTime" => non_neg_integer(),
        "FileSystemId" => String.t(),
        "Lifecycle" => list(any()),
        "LifecycleTransitionReason" => lifecycle_transition_reason(),
        "Name" => String.t(),
        "OntapConfiguration" => ontap_volume_configuration(),
        "OpenZFSConfiguration" => open_z_f_s_volume_configuration(),
        "ResourceARN" => String.t(),
        "Tags" => list(tag()()),
        "VolumeId" => String.t(),
        "VolumeType" => list(any())
      }
      
  """
  @type volume() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_file_cache_response() :: %{
        "FileCache" => file_cache_creating()
      }
      
  """
  @type create_file_cache_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_file_system_from_backup_response() :: %{
        "FileSystem" => file_system()
      }
      
  """
  @type create_file_system_from_backup_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_file_cache_response() :: %{
        "FileCache" => file_cache()
      }
      
  """
  @type update_file_cache_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_file_caches_request() :: %{
        optional("FileCacheIds") => list(String.t()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_file_caches_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      volume_filter() :: %{
        "Name" => list(any()),
        "Values" => list(String.t()())
      }
      
  """
  @type volume_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      open_z_f_s_create_root_volume_configuration() :: %{
        "CopyTagsToSnapshots" => boolean(),
        "DataCompressionType" => list(any()),
        "NfsExports" => list(open_z_f_s_nfs_export()()),
        "ReadOnly" => boolean(),
        "RecordSizeKiB" => integer(),
        "UserAndGroupQuotas" => list(open_z_f_s_user_or_group_quota()())
      }
      
  """
  @type open_z_f_s_create_root_volume_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_volume_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("OntapConfiguration") => create_ontap_volume_configuration(),
        optional("OpenZFSConfiguration") => create_open_z_f_s_volume_configuration(),
        optional("Tags") => list(tag()()),
        required("Name") => String.t(),
        required("VolumeType") => list(any())
      }
      
  """
  @type create_volume_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_file_cache_request() :: %{
        optional("ClientRequestToken") => String.t(),
        required("FileCacheId") => String.t()
      }
      
  """
  @type delete_file_cache_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_data_repository_tasks_request() :: %{
        optional("Filters") => list(data_repository_task_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("TaskIds") => list(String.t()())
      }
      
  """
  @type describe_data_repository_tasks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_limit_exceeded() :: %{
        "Limit" => list(any()),
        "Message" => String.t()
      }
      
  """
  @type service_limit_exceeded() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      self_managed_active_directory_configuration() :: %{
        "DnsIps" => list(String.t()()),
        "DomainName" => String.t(),
        "FileSystemAdministratorsGroup" => String.t(),
        "OrganizationalUnitDistinguishedName" => String.t(),
        "Password" => String.t(),
        "UserName" => String.t()
      }
      
  """
  @type self_managed_active_directory_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      incompatible_region_for_multi_a_z() :: %{
        "Message" => String.t()
      }
      
  """
  @type incompatible_region_for_multi_a_z() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_data_repository_associations_request() :: %{
        optional("AssociationIds") => list(String.t()()),
        optional("Filters") => list(filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_data_repository_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_repository_task() :: %{
        "CapacityToRelease" => float(),
        "CreationTime" => non_neg_integer(),
        "EndTime" => non_neg_integer(),
        "FailureDetails" => data_repository_task_failure_details(),
        "FileCacheId" => String.t(),
        "FileSystemId" => String.t(),
        "Lifecycle" => list(any()),
        "Paths" => list(String.t()()),
        "ReleaseConfiguration" => release_configuration(),
        "Report" => completion_report(),
        "ResourceARN" => String.t(),
        "StartTime" => non_neg_integer(),
        "Status" => data_repository_task_status(),
        "Tags" => list(tag()()),
        "TaskId" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type data_repository_task() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ResourceARN") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      windows_audit_log_create_configuration() :: %{
        "AuditLogDestination" => String.t(),
        "FileAccessAuditLogLevel" => list(any()),
        "FileShareAccessAuditLogLevel" => list(any())
      }
      
  """
  @type windows_audit_log_create_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      windows_file_system_configuration() :: %{
        "ActiveDirectoryId" => String.t(),
        "Aliases" => list(alias()()),
        "AuditLogConfiguration" => windows_audit_log_configuration(),
        "AutomaticBackupRetentionDays" => integer(),
        "CopyTagsToBackups" => boolean(),
        "DailyAutomaticBackupStartTime" => String.t(),
        "DeploymentType" => list(any()),
        "DiskIopsConfiguration" => disk_iops_configuration(),
        "MaintenanceOperationsInProgress" => list(list(any())()),
        "PreferredFileServerIp" => String.t(),
        "PreferredSubnetId" => String.t(),
        "RemoteAdministrationEndpoint" => String.t(),
        "SelfManagedActiveDirectoryConfiguration" => self_managed_active_directory_attributes(),
        "ThroughputCapacity" => integer(),
        "WeeklyMaintenanceStartTime" => String.t()
      }
      
  """
  @type windows_file_system_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_repository_task_ended() :: %{
        "Message" => String.t()
      }
      
  """
  @type data_repository_task_ended() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_file_systems_response() :: %{
        "FileSystems" => list(file_system()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_file_systems_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_shared_vpc_configuration_response() :: %{
        "EnableFsxRouteTableUpdatesFromParticipantAccounts" => String.t()
      }
      
  """
  @type describe_shared_vpc_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_repository_task_filter() :: %{
        "Name" => list(any()),
        "Values" => list(String.t()())
      }
      
  """
  @type data_repository_task_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_snapshots_request() :: %{
        optional("Filters") => list(snapshot_filter()()),
        optional("IncludeShared") => boolean(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SnapshotIds") => list(String.t()())
      }
      
  """
  @type describe_snapshots_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      file_cache_lustre_metadata_configuration() :: %{
        "StorageCapacity" => integer()
      }
      
  """
  @type file_cache_lustre_metadata_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_snapshot_response() :: %{
        "Snapshot" => snapshot()
      }
      
  """
  @type update_snapshot_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      file_cache_data_repository_association() :: %{
        "DataRepositoryPath" => String.t(),
        "DataRepositorySubdirectories" => list(String.t()()),
        "FileCachePath" => String.t(),
        "NFS" => file_cache_nfs_configuration()
      }
      
  """
  @type file_cache_data_repository_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_volume_from_snapshot_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("Options") => list(list(any())()),
        required("SnapshotId") => String.t(),
        required("VolumeId") => String.t()
      }
      
  """
  @type restore_volume_from_snapshot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_misconfigured_state_recovery_response() :: %{
        "FileSystem" => file_system()
      }
      
  """
  @type start_misconfigured_state_recovery_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      volume_not_found() :: %{
        "Message" => String.t()
      }
      
  """
  @type volume_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_snaplock_configuration() :: %{
        "AuditLogVolume" => boolean(),
        "AutocommitPeriod" => autocommit_period(),
        "PrivilegedDelete" => list(any()),
        "RetentionPeriod" => snaplock_retention_period(),
        "SnaplockType" => list(any()),
        "VolumeAppendModeEnabled" => boolean()
      }
      
  """
  @type create_snaplock_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_backups_response() :: %{
        "Backups" => list(backup()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_backups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_backup_request() :: %{
        optional("ClientRequestToken") => String.t(),
        required("BackupId") => String.t()
      }
      
  """
  @type delete_backup_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      open_z_f_s_origin_snapshot_configuration() :: %{
        "CopyStrategy" => list(any()),
        "SnapshotARN" => String.t()
      }
      
  """
  @type open_z_f_s_origin_snapshot_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      administrative_action_failure_details() :: %{
        "Message" => String.t()
      }
      
  """
  @type administrative_action_failure_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_backup_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("FileSystemId") => String.t(),
        optional("Tags") => list(tag()()),
        optional("VolumeId") => String.t()
      }
      
  """
  @type create_backup_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      file_system_lustre_metadata_configuration() :: %{
        "Iops" => integer(),
        "Mode" => list(any())
      }
      
  """
  @type file_system_lustre_metadata_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_file_system_windows_response() :: %{
        "FinalBackupId" => String.t(),
        "FinalBackupTags" => list(tag()())
      }
      
  """
  @type delete_file_system_windows_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_shared_vpc_configuration_response() :: %{
        "EnableFsxRouteTableUpdatesFromParticipantAccounts" => String.t()
      }
      
  """
  @type update_shared_vpc_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      incompatible_parameter_error() :: %{
        "Message" => String.t(),
        "Parameter" => String.t()
      }
      
  """
  @type incompatible_parameter_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      backup_being_copied() :: %{
        "BackupId" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type backup_being_copied() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_volume_from_backup_response() :: %{
        "Volume" => volume()
      }
      
  """
  @type create_volume_from_backup_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_data_repository_association_response() :: %{
        "Association" => data_repository_association()
      }
      
  """
  @type update_data_repository_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_file_system_aliases_request() :: %{
        optional("ClientRequestToken") => String.t(),
        required("Aliases") => list(String.t()()),
        required("FileSystemId") => String.t()
      }
      
  """
  @type disassociate_file_system_aliases_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_storage_virtual_machine_request() :: %{
        optional("ClientRequestToken") => String.t(),
        required("StorageVirtualMachineId") => String.t()
      }
      
  """
  @type delete_storage_virtual_machine_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_file_system_aliases_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("FileSystemId") => String.t()
      }
      
  """
  @type describe_file_system_aliases_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_import_path() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_import_path() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      open_z_f_s_volume_configuration() :: %{
        "CopyStrategy" => list(any()),
        "CopyTagsToSnapshots" => boolean(),
        "DataCompressionType" => list(any()),
        "DeleteClonedVolumes" => boolean(),
        "DeleteIntermediateData" => boolean(),
        "DeleteIntermediateSnaphots" => boolean(),
        "DestinationSnapshot" => String.t(),
        "NfsExports" => list(open_z_f_s_nfs_export()()),
        "OriginSnapshot" => open_z_f_s_origin_snapshot_configuration(),
        "ParentVolumeId" => String.t(),
        "ReadOnly" => boolean(),
        "RecordSizeKiB" => integer(),
        "RestoreToSnapshot" => String.t(),
        "SourceSnapshotARN" => String.t(),
        "StorageCapacityQuotaGiB" => integer(),
        "StorageCapacityReservationGiB" => integer(),
        "UserAndGroupQuotas" => list(open_z_f_s_user_or_group_quota()()),
        "VolumePath" => String.t()
      }
      
  """
  @type open_z_f_s_volume_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_repository_configuration() :: %{
        "AutoImportPolicy" => list(any()),
        "ExportPath" => String.t(),
        "FailureDetails" => data_repository_failure_details(),
        "ImportPath" => String.t(),
        "ImportedFileChunkSize" => integer(),
        "Lifecycle" => list(any())
      }
      
  """
  @type data_repository_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_repository_association() :: %{
        "AssociationId" => String.t(),
        "BatchImportMetaDataOnCreate" => boolean(),
        "CreationTime" => non_neg_integer(),
        "DataRepositoryPath" => String.t(),
        "DataRepositorySubdirectories" => list(String.t()()),
        "FailureDetails" => data_repository_failure_details(),
        "FileCacheId" => String.t(),
        "FileCachePath" => String.t(),
        "FileSystemId" => String.t(),
        "FileSystemPath" => String.t(),
        "ImportedFileChunkSize" => integer(),
        "Lifecycle" => list(any()),
        "NFS" => nfs_data_repository_configuration(),
        "ResourceARN" => String.t(),
        "S3" => s3_data_repository_configuration(),
        "Tags" => list(tag()())
      }
      
  """
  @type data_repository_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      source_backup_unavailable() :: %{
        "BackupId" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type source_backup_unavailable() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_backup_response() :: %{
        "Backup" => backup()
      }
      
  """
  @type create_backup_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_file_cache_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("LustreConfiguration") => update_file_cache_lustre_configuration(),
        required("FileCacheId") => String.t()
      }
      
  """
  @type update_file_cache_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_volume_response() :: %{
        "Volume" => volume()
      }
      
  """
  @type update_volume_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_storage_virtual_machines_request() :: %{
        optional("Filters") => list(storage_virtual_machine_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("StorageVirtualMachineIds") => list(String.t()())
      }
      
  """
  @type describe_storage_virtual_machines_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_file_system_lustre_metadata_configuration() :: %{
        "Iops" => integer(),
        "Mode" => list(any())
      }
      
  """
  @type update_file_system_lustre_metadata_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_file_system_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("LustreConfiguration") => delete_file_system_lustre_configuration(),
        optional("OpenZFSConfiguration") => delete_file_system_open_z_f_s_configuration(),
        optional("WindowsConfiguration") => delete_file_system_windows_configuration(),
        required("FileSystemId") => String.t()
      }
      
  """
  @type delete_file_system_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_snapshot_response() :: %{
        "Lifecycle" => list(any()),
        "SnapshotId" => String.t()
      }
      
  """
  @type delete_snapshot_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      file_cache_lustre_configuration() :: %{
        "DeploymentType" => list(any()),
        "LogConfiguration" => lustre_log_configuration(),
        "MetadataConfiguration" => file_cache_lustre_metadata_configuration(),
        "MountName" => String.t(),
        "PerUnitStorageThroughput" => integer(),
        "WeeklyMaintenanceStartTime" => String.t()
      }
      
  """
  @type file_cache_lustre_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_file_system_lustre_configuration() :: %{
        "FinalBackupTags" => list(tag()()),
        "SkipFinalBackup" => boolean()
      }
      
  """
  @type delete_file_system_lustre_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_data_repository_task_response() :: %{
        "Lifecycle" => list(any()),
        "TaskId" => String.t()
      }
      
  """
  @type cancel_data_repository_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_file_system_from_backup_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("FileSystemTypeVersion") => String.t(),
        optional("KmsKeyId") => String.t(),
        optional("LustreConfiguration") => create_file_system_lustre_configuration(),
        optional("OpenZFSConfiguration") => create_file_system_open_z_f_s_configuration(),
        optional("SecurityGroupIds") => list(String.t()()),
        optional("StorageCapacity") => integer(),
        optional("StorageType") => list(any()),
        optional("Tags") => list(tag()()),
        optional("WindowsConfiguration") => create_file_system_windows_configuration(),
        required("BackupId") => String.t(),
        required("SubnetIds") => list(String.t()())
      }
      
  """
  @type create_file_system_from_backup_request() :: %{String.t() => any()}

  @type associate_file_system_aliases_errors() ::
          internal_server_error() | bad_request() | file_system_not_found()

  @type cancel_data_repository_task_errors() ::
          data_repository_task_ended()
          | internal_server_error()
          | bad_request()
          | unsupported_operation()
          | data_repository_task_not_found()

  @type copy_backup_errors() ::
          source_backup_unavailable()
          | incompatible_parameter_error()
          | incompatible_region_for_multi_a_z()
          | service_limit_exceeded()
          | internal_server_error()
          | bad_request()
          | backup_not_found()
          | invalid_destination_kms_key()
          | invalid_source_kms_key()
          | unsupported_operation()
          | invalid_region()

  @type copy_snapshot_and_update_volume_errors() ::
          incompatible_parameter_error()
          | service_limit_exceeded()
          | internal_server_error()
          | bad_request()

  @type create_backup_errors() ::
          incompatible_parameter_error()
          | volume_not_found()
          | service_limit_exceeded()
          | internal_server_error()
          | bad_request()
          | file_system_not_found()
          | unsupported_operation()
          | backup_in_progress()

  @type create_data_repository_association_errors() ::
          incompatible_parameter_error()
          | service_limit_exceeded()
          | internal_server_error()
          | bad_request()
          | file_system_not_found()
          | unsupported_operation()

  @type create_data_repository_task_errors() ::
          incompatible_parameter_error()
          | service_limit_exceeded()
          | internal_server_error()
          | bad_request()
          | file_system_not_found()
          | unsupported_operation()
          | data_repository_task_executing()

  @type create_file_cache_errors() ::
          incompatible_parameter_error()
          | service_limit_exceeded()
          | internal_server_error()
          | bad_request()
          | missing_file_cache_configuration()
          | invalid_per_unit_storage_throughput()
          | invalid_network_settings()

  @type create_file_system_errors() ::
          invalid_import_path()
          | incompatible_parameter_error()
          | service_limit_exceeded()
          | internal_server_error()
          | bad_request()
          | missing_file_system_configuration()
          | invalid_per_unit_storage_throughput()
          | active_directory_error()
          | invalid_network_settings()
          | invalid_export_path()

  @type create_file_system_from_backup_errors() ::
          incompatible_parameter_error()
          | service_limit_exceeded()
          | internal_server_error()
          | bad_request()
          | backup_not_found()
          | missing_file_system_configuration()
          | invalid_per_unit_storage_throughput()
          | active_directory_error()
          | invalid_network_settings()

  @type create_snapshot_errors() ::
          volume_not_found() | service_limit_exceeded() | internal_server_error() | bad_request()

  @type create_storage_virtual_machine_errors() ::
          incompatible_parameter_error()
          | service_limit_exceeded()
          | internal_server_error()
          | bad_request()
          | file_system_not_found()
          | active_directory_error()
          | unsupported_operation()

  @type create_volume_errors() ::
          incompatible_parameter_error()
          | service_limit_exceeded()
          | internal_server_error()
          | bad_request()
          | file_system_not_found()
          | unsupported_operation()
          | missing_volume_configuration()
          | storage_virtual_machine_not_found()

  @type create_volume_from_backup_errors() ::
          incompatible_parameter_error()
          | service_limit_exceeded()
          | internal_server_error()
          | bad_request()
          | backup_not_found()
          | file_system_not_found()
          | missing_volume_configuration()
          | storage_virtual_machine_not_found()

  @type delete_backup_errors() ::
          backup_being_copied()
          | incompatible_parameter_error()
          | internal_server_error()
          | bad_request()
          | backup_not_found()
          | backup_restoring()
          | backup_in_progress()

  @type delete_data_repository_association_errors() ::
          incompatible_parameter_error()
          | service_limit_exceeded()
          | internal_server_error()
          | bad_request()
          | data_repository_association_not_found()

  @type delete_file_cache_errors() ::
          incompatible_parameter_error()
          | service_limit_exceeded()
          | internal_server_error()
          | bad_request()
          | file_cache_not_found()

  @type delete_file_system_errors() ::
          incompatible_parameter_error()
          | service_limit_exceeded()
          | internal_server_error()
          | bad_request()
          | file_system_not_found()

  @type delete_snapshot_errors() :: internal_server_error() | bad_request() | snapshot_not_found()

  @type delete_storage_virtual_machine_errors() ::
          incompatible_parameter_error()
          | internal_server_error()
          | bad_request()
          | storage_virtual_machine_not_found()

  @type delete_volume_errors() ::
          incompatible_parameter_error()
          | volume_not_found()
          | service_limit_exceeded()
          | internal_server_error()
          | bad_request()

  @type describe_backups_errors() ::
          volume_not_found()
          | internal_server_error()
          | bad_request()
          | backup_not_found()
          | file_system_not_found()

  @type describe_data_repository_associations_errors() ::
          internal_server_error()
          | bad_request()
          | data_repository_association_not_found()
          | file_system_not_found()
          | invalid_data_repository_type()

  @type describe_data_repository_tasks_errors() ::
          internal_server_error()
          | bad_request()
          | file_system_not_found()
          | data_repository_task_not_found()

  @type describe_file_caches_errors() ::
          internal_server_error() | bad_request() | file_cache_not_found()

  @type describe_file_system_aliases_errors() ::
          internal_server_error() | bad_request() | file_system_not_found()

  @type describe_file_systems_errors() ::
          internal_server_error() | bad_request() | file_system_not_found()

  @type describe_shared_vpc_configuration_errors() :: internal_server_error() | bad_request()

  @type describe_snapshots_errors() ::
          internal_server_error() | bad_request() | snapshot_not_found()

  @type describe_storage_virtual_machines_errors() ::
          internal_server_error() | bad_request() | storage_virtual_machine_not_found()

  @type describe_volumes_errors() :: volume_not_found() | internal_server_error() | bad_request()

  @type disassociate_file_system_aliases_errors() ::
          internal_server_error() | bad_request() | file_system_not_found()

  @type list_tags_for_resource_errors() ::
          internal_server_error()
          | bad_request()
          | not_service_resource_error()
          | resource_not_found()
          | resource_does_not_support_tagging()

  @type release_file_system_nfs_v3_locks_errors() ::
          incompatible_parameter_error()
          | service_limit_exceeded()
          | internal_server_error()
          | bad_request()
          | file_system_not_found()

  @type restore_volume_from_snapshot_errors() ::
          volume_not_found() | internal_server_error() | bad_request()

  @type start_misconfigured_state_recovery_errors() ::
          internal_server_error() | bad_request() | file_system_not_found()

  @type tag_resource_errors() ::
          internal_server_error()
          | bad_request()
          | not_service_resource_error()
          | resource_not_found()
          | resource_does_not_support_tagging()

  @type untag_resource_errors() ::
          internal_server_error()
          | bad_request()
          | not_service_resource_error()
          | resource_not_found()
          | resource_does_not_support_tagging()

  @type update_data_repository_association_errors() ::
          incompatible_parameter_error()
          | service_limit_exceeded()
          | internal_server_error()
          | bad_request()
          | data_repository_association_not_found()

  @type update_file_cache_errors() ::
          incompatible_parameter_error()
          | service_limit_exceeded()
          | internal_server_error()
          | bad_request()
          | file_cache_not_found()
          | missing_file_cache_configuration()
          | unsupported_operation()

  @type update_file_system_errors() ::
          incompatible_parameter_error()
          | service_limit_exceeded()
          | internal_server_error()
          | bad_request()
          | missing_file_system_configuration()
          | file_system_not_found()
          | unsupported_operation()
          | invalid_network_settings()

  @type update_shared_vpc_configuration_errors() ::
          incompatible_parameter_error() | internal_server_error() | bad_request()

  @type update_snapshot_errors() :: internal_server_error() | bad_request() | snapshot_not_found()

  @type update_storage_virtual_machine_errors() ::
          incompatible_parameter_error()
          | internal_server_error()
          | bad_request()
          | unsupported_operation()
          | storage_virtual_machine_not_found()

  @type update_volume_errors() ::
          incompatible_parameter_error()
          | volume_not_found()
          | internal_server_error()
          | bad_request()
          | missing_volume_configuration()

  def metadata do
    %{
      api_version: "2018-03-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "fsx",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "FSx",
      signature_version: "v4",
      signing_name: "fsx",
      target_prefix: "AWSSimbaAPIService_v20180301"
    }
  end

  @doc """
   
  Use this action to associate one or more Domain Name Server (DNS) aliases with
  an existing Amazon FSx for Windows File Server file system. A file system can
  have a maximum of 50 DNS aliases associated with it at any one time. If you
  try to associate a DNS alias that is already associated with the file system,
  FSx takes no action on that alias in the request. For more information, see
  [Working with DNS
  Aliases](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-dns-aliases.html)
  and [Walkthrough 5: Using DNS aliases to access your file
  system](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/walkthrough05-file-system-custom-CNAME.html),
  including additional steps you must take to be able to access your file system
  using a DNS alias.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fsx%20AssociateFileSystemAliases&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:associate_file_system_aliases_request`)
    %{
      optional("ClientRequestToken") => String.t(),
      required("Aliases") => list(String.t()()),
      required("FileSystemId") => String.t()
    }
  """
  @spec associate_file_system_aliases(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, associate_file_system_aliases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_file_system_aliases_errors()}
  def associate_file_system_aliases(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssociateFileSystemAliases", input, options)
  end

  @doc """
   
  Cancels an existing Amazon FSx for Lustre data repository task if that task is
  in either the `PENDING` or `EXECUTING` state. When you cancel am export task,
  Amazon FSx does the following.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fsx%20CancelDataRepositoryTask&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:cancel_data_repository_task_request`)
    %{
      required("TaskId") => String.t()
    }
  """
  @spec cancel_data_repository_task(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, cancel_data_repository_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_data_repository_task_errors()}
  def cancel_data_repository_task(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CancelDataRepositoryTask", input, options)
  end

  @doc """
   
  Copies an existing backup within the same Amazon Web Services account to another
  Amazon Web Services Region (cross-Region copy) or within the same Amazon Web
  Services Region (in-Region copy). You can have up to five backup copy requests
  in progress to a single destination Region per account. You can use
  cross-Region backup copies for cross-Region disaster recovery. You can
  periodically take backups and copy them to another Region so that in the event
  of a disaster in the primary Region, you can restore from backup and recover
  availability quickly in the other Region. You can make cross-Region copies
  only within your Amazon Web Services partition. A partition is a grouping of
  Regions. Amazon Web Services currently has three partitions: `aws` (Standard
  Regions), `aws-cn` (China Regions), and `aws-us-gov` (Amazon Web Services
  GovCloud [US] Regions). You can also use backup copies to clone your file
  dataset to another Region or within the same Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fsx%20CopyBackup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:copy_backup_request`)
    %{
      optional("ClientRequestToken") => String.t(),
      optional("CopyTags") => boolean(),
      optional("KmsKeyId") => String.t(),
      optional("SourceRegion") => String.t(),
      optional("Tags") => list(tag()()),
      required("SourceBackupId") => String.t()
    }
  """
  @spec copy_backup(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, copy_backup_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, copy_backup_errors()}
  def copy_backup(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CopyBackup", input, options)
  end

  @doc """
   
  Updates an existing volume by using a snapshot from another Amazon FSx for
  OpenZFS file system. For more information, see [on-demand data
  replication](https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/on-demand-replication.html)
  in the Amazon FSx for OpenZFS User Guide.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fsx%20CopySnapshotAndUpdateVolume&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:copy_snapshot_and_update_volume_request`)
    %{
      optional("ClientRequestToken") => String.t(),
      optional("CopyStrategy") => list(any()),
      optional("Options") => list(list(any())()),
      required("SourceSnapshotARN") => String.t(),
      required("VolumeId") => String.t()
    }
  """
  @spec copy_snapshot_and_update_volume(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, copy_snapshot_and_update_volume_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, copy_snapshot_and_update_volume_errors()}
  def copy_snapshot_and_update_volume(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CopySnapshotAndUpdateVolume", input, options)
  end

  @doc """
   
  Creates a backup of an existing Amazon FSx for Windows File Server file system,
  Amazon FSx for Lustre file system, Amazon FSx for NetApp ONTAP volume, or
  Amazon FSx for OpenZFS file system. We recommend creating regular backups so
  that you can restore a file system or volume from a backup if an issue arises
  with the original file system or volume. For Amazon FSx for Lustre file
  systems, you can create a backup only for file systems that have the following
  configuration:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fsx%20CreateBackup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_backup_request`)
    %{
      optional("ClientRequestToken") => String.t(),
      optional("FileSystemId") => String.t(),
      optional("Tags") => list(tag()()),
      optional("VolumeId") => String.t()
    }
  """
  @spec create_backup(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_backup_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_backup_errors()}
  def create_backup(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateBackup", input, options)
  end

  @doc """
   
  Creates an Amazon FSx for Lustre data repository association (DRA). A data
  repository association is a link between a directory on the file system and an
  Amazon S3 bucket or prefix. You can have a maximum of 8 data repository
  associations on a file system. Data repository associations are supported on
  all FSx for Lustre 2.12 and 2.15 file systems, excluding `scratch_1`
  deployment type. Each data repository association must have a unique Amazon
  FSx file system directory and a unique S3 bucket or prefix associated with it.
  You can configure a data repository association for automatic import only, for
  automatic export only, or for both. To learn more about linking a data
  repository to your file system, see [Linking your file system to an S3
  bucket](https://docs.aws.amazon.com/fsx/latest/LustreGuide/create-dra-linked-data-repo.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fsx%20CreateDataRepositoryAssociation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_data_repository_association_request`)
    %{
      optional("BatchImportMetaDataOnCreate") => boolean(),
      optional("ClientRequestToken") => String.t(),
      optional("FileSystemPath") => String.t(),
      optional("ImportedFileChunkSize") => integer(),
      optional("S3") => s3_data_repository_configuration(),
      optional("Tags") => list(tag()()),
      required("DataRepositoryPath") => String.t(),
      required("FileSystemId") => String.t()
    }
  """
  @spec create_data_repository_association(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_data_repository_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_data_repository_association_errors()}
  def create_data_repository_association(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateDataRepositoryAssociation", input, options)
  end

  @doc """
   
  Creates an Amazon FSx for Lustre data repository task. A
  `CreateDataRepositoryTask` operation will fail if a data repository is not
  linked to the FSx file system. You use import and export data repository tasks
  to perform bulk operations between your FSx for Lustre file system and its
  linked data repositories. An example of a data repository task is exporting
  any data and metadata changes, including POSIX metadata, to files,
  directories, and symbolic links (symlinks) from your FSx file system to a
  linked data repository.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fsx%20CreateDataRepositoryTask&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_data_repository_task_request`)
    %{
      optional("CapacityToRelease") => float(),
      optional("ClientRequestToken") => String.t(),
      optional("Paths") => list(String.t()()),
      optional("ReleaseConfiguration") => release_configuration(),
      optional("Tags") => list(tag()()),
      required("FileSystemId") => String.t(),
      required("Report") => completion_report(),
      required("Type") => list(any())
    }
  """
  @spec create_data_repository_task(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_data_repository_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_data_repository_task_errors()}
  def create_data_repository_task(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateDataRepositoryTask", input, options)
  end

  @doc """
   
  Creates a new Amazon File Cache resource. You can use this operation with a
  client request token in the request that Amazon File Cache uses to ensure
  idempotent creation. If a cache with the specified client request token exists
  and the parameters match, `CreateFileCache` returns the description of the
  existing cache. If a cache with the specified client request token exists and
  the parameters don't match, this call returns `IncompatibleParameterError`. If
  a file cache with the specified client request token doesn't exist,
  `CreateFileCache` does the following:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fsx%20CreateFileCache&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_file_cache_request`)
    %{
      optional("ClientRequestToken") => String.t(),
      optional("CopyTagsToDataRepositoryAssociations") => boolean(),
      optional("DataRepositoryAssociations") => list(file_cache_data_repository_association()()),
      optional("KmsKeyId") => String.t(),
      optional("LustreConfiguration") => create_file_cache_lustre_configuration(),
      optional("SecurityGroupIds") => list(String.t()()),
      optional("Tags") => list(tag()()),
      required("FileCacheType") => list(any()),
      required("FileCacheTypeVersion") => String.t(),
      required("StorageCapacity") => integer(),
      required("SubnetIds") => list(String.t()())
    }
  """
  @spec create_file_cache(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_file_cache_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_file_cache_errors()}
  def create_file_cache(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateFileCache", input, options)
  end

  @doc """
   
  Creates a new, empty Amazon FSx file system. You can create the following
  supported Amazon FSx file systems using the `CreateFileSystem` API operation:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fsx%20CreateFileSystem&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_file_system_request`)
    %{
      optional("ClientRequestToken") => String.t(),
      optional("FileSystemTypeVersion") => String.t(),
      optional("KmsKeyId") => String.t(),
      optional("LustreConfiguration") => create_file_system_lustre_configuration(),
      optional("OntapConfiguration") => create_file_system_ontap_configuration(),
      optional("OpenZFSConfiguration") => create_file_system_open_z_f_s_configuration(),
      optional("SecurityGroupIds") => list(String.t()()),
      optional("StorageType") => list(any()),
      optional("Tags") => list(tag()()),
      optional("WindowsConfiguration") => create_file_system_windows_configuration(),
      required("FileSystemType") => list(any()),
      required("StorageCapacity") => integer(),
      required("SubnetIds") => list(String.t()())
    }
  """
  @spec create_file_system(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_file_system_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_file_system_errors()}
  def create_file_system(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateFileSystem", input, options)
  end

  @doc """
   
  Creates a new Amazon FSx for Lustre, Amazon FSx for Windows File Server, or
  Amazon FSx for OpenZFS file system from an existing Amazon FSx backup. If a
  file system with the specified client request token exists and the parameters
  match, this operation returns the description of the file system. If a file
  system with the specified client request token exists but the parameters don't
  match, this call returns `IncompatibleParameterError`. If a file system with
  the specified client request token doesn't exist, this operation does the
  following:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fsx%20CreateFileSystemFromBackup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_file_system_from_backup_request`)
    %{
      optional("ClientRequestToken") => String.t(),
      optional("FileSystemTypeVersion") => String.t(),
      optional("KmsKeyId") => String.t(),
      optional("LustreConfiguration") => create_file_system_lustre_configuration(),
      optional("OpenZFSConfiguration") => create_file_system_open_z_f_s_configuration(),
      optional("SecurityGroupIds") => list(String.t()()),
      optional("StorageCapacity") => integer(),
      optional("StorageType") => list(any()),
      optional("Tags") => list(tag()()),
      optional("WindowsConfiguration") => create_file_system_windows_configuration(),
      required("BackupId") => String.t(),
      required("SubnetIds") => list(String.t()())
    }
  """
  @spec create_file_system_from_backup(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_file_system_from_backup_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_file_system_from_backup_errors()}
  def create_file_system_from_backup(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateFileSystemFromBackup", input, options)
  end

  @doc """
   
  Creates a snapshot of an existing Amazon FSx for OpenZFS volume. With snapshots,
  you can easily undo file changes and compare file versions by restoring the
  volume to a previous version. If a snapshot with the specified client request
  token exists, and the parameters match, this operation returns the description
  of the existing snapshot. If a snapshot with the specified client request
  token exists, and the parameters don't match, this operation returns
  `IncompatibleParameterError`. If a snapshot with the specified client request
  token doesn't exist, `CreateSnapshot` does the following:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fsx%20CreateSnapshot&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_snapshot_request`)
    %{
      optional("ClientRequestToken") => String.t(),
      optional("Tags") => list(tag()()),
      required("Name") => String.t(),
      required("VolumeId") => String.t()
    }
  """
  @spec create_snapshot(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_snapshot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_snapshot_errors()}
  def create_snapshot(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateSnapshot", input, options)
  end

  @doc """
   
  Creates a storage virtual machine (SVM) for an Amazon FSx for ONTAP file system.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fsx%20CreateStorageVirtualMachine&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_storage_virtual_machine_request`)
    %{
      optional("ActiveDirectoryConfiguration") => create_svm_active_directory_configuration(),
      optional("ClientRequestToken") => String.t(),
      optional("RootVolumeSecurityStyle") => list(any()),
      optional("SvmAdminPassword") => String.t(),
      optional("Tags") => list(tag()()),
      required("FileSystemId") => String.t(),
      required("Name") => String.t()
    }
  """
  @spec create_storage_virtual_machine(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_storage_virtual_machine_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_storage_virtual_machine_errors()}
  def create_storage_virtual_machine(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateStorageVirtualMachine", input, options)
  end

  @doc """
   
  Creates an FSx for ONTAP or Amazon FSx for OpenZFS storage volume.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fsx%20CreateVolume&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_volume_request`)
    %{
      optional("ClientRequestToken") => String.t(),
      optional("OntapConfiguration") => create_ontap_volume_configuration(),
      optional("OpenZFSConfiguration") => create_open_z_f_s_volume_configuration(),
      optional("Tags") => list(tag()()),
      required("Name") => String.t(),
      required("VolumeType") => list(any())
    }
  """
  @spec create_volume(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_volume_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_volume_errors()}
  def create_volume(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateVolume", input, options)
  end

  @doc """
   
  Creates a new Amazon FSx for NetApp ONTAP volume from an existing Amazon FSx
  volume backup.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fsx%20CreateVolumeFromBackup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_volume_from_backup_request`)
    %{
      optional("ClientRequestToken") => String.t(),
      optional("OntapConfiguration") => create_ontap_volume_configuration(),
      optional("Tags") => list(tag()()),
      required("BackupId") => String.t(),
      required("Name") => String.t()
    }
  """
  @spec create_volume_from_backup(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_volume_from_backup_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_volume_from_backup_errors()}
  def create_volume_from_backup(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateVolumeFromBackup", input, options)
  end

  @doc """
   
  Deletes an Amazon FSx backup. After deletion, the backup no longer exists, and
  its data is gone. The `DeleteBackup` call returns instantly. The backup won't
  show up in later `DescribeBackups` calls.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fsx%20DeleteBackup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_backup_request`)
    %{
      optional("ClientRequestToken") => String.t(),
      required("BackupId") => String.t()
    }
  """
  @spec delete_backup(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_backup_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_backup_errors()}
  def delete_backup(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteBackup", input, options)
  end

  @doc """
   
  Deletes a data repository association on an Amazon FSx for Lustre file system.
  Deleting the data repository association unlinks the file system from the
  Amazon S3 bucket. When deleting a data repository association, you have the
  option of deleting the data in the file system that corresponds to the data
  repository association. Data repository associations are supported on all FSx
  for Lustre 2.12 and 2.15 file systems, excluding `scratch_1` deployment type.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fsx%20DeleteDataRepositoryAssociation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_data_repository_association_request`)
    %{
      optional("ClientRequestToken") => String.t(),
      optional("DeleteDataInFileSystem") => boolean(),
      required("AssociationId") => String.t()
    }
  """
  @spec delete_data_repository_association(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_data_repository_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_data_repository_association_errors()}
  def delete_data_repository_association(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteDataRepositoryAssociation", input, options)
  end

  @doc """
   
  Deletes an Amazon File Cache resource. After deletion, the cache no longer
  exists, and its data is gone. The `DeleteFileCache` operation returns while
  the cache has the `DELETING` status. You can check the cache deletion status
  by calling the
  [DescribeFileCaches](https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeFileCaches.html)
  operation, which returns a list of caches in your account. If you pass the
  cache ID for a deleted cache, the `DescribeFileCaches` operation returns a
  `FileCacheNotFound` error.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fsx%20DeleteFileCache&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_file_cache_request`)
    %{
      optional("ClientRequestToken") => String.t(),
      required("FileCacheId") => String.t()
    }
  """
  @spec delete_file_cache(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_file_cache_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_file_cache_errors()}
  def delete_file_cache(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteFileCache", input, options)
  end

  @doc """
   
  Deletes a file system. After deletion, the file system no longer exists, and its
  data is gone. Any existing automatic backups and snapshots are also deleted.
  To delete an Amazon FSx for NetApp ONTAP file system, first delete all the
  volumes and storage virtual machines (SVMs) on the file system. Then provide a
  `FileSystemId` value to the `DeleteFileSystem` operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fsx%20DeleteFileSystem&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_file_system_request`)
    %{
      optional("ClientRequestToken") => String.t(),
      optional("LustreConfiguration") => delete_file_system_lustre_configuration(),
      optional("OpenZFSConfiguration") => delete_file_system_open_z_f_s_configuration(),
      optional("WindowsConfiguration") => delete_file_system_windows_configuration(),
      required("FileSystemId") => String.t()
    }
  """
  @spec delete_file_system(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_file_system_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_file_system_errors()}
  def delete_file_system(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteFileSystem", input, options)
  end

  @doc """
   
  Deletes an Amazon FSx for OpenZFS snapshot. After deletion, the snapshot no
  longer exists, and its data is gone. Deleting a snapshot doesn't affect
  snapshots stored in a file system backup.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fsx%20DeleteSnapshot&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_snapshot_request`)
    %{
      optional("ClientRequestToken") => String.t(),
      required("SnapshotId") => String.t()
    }
  """
  @spec delete_snapshot(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_snapshot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_snapshot_errors()}
  def delete_snapshot(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteSnapshot", input, options)
  end

  @doc """
   
  Deletes an existing Amazon FSx for ONTAP storage virtual machine (SVM). Prior to
  deleting an SVM, you must delete all non-root volumes in the SVM, otherwise
  the operation will fail.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fsx%20DeleteStorageVirtualMachine&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_storage_virtual_machine_request`)
    %{
      optional("ClientRequestToken") => String.t(),
      required("StorageVirtualMachineId") => String.t()
    }
  """
  @spec delete_storage_virtual_machine(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_storage_virtual_machine_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_storage_virtual_machine_errors()}
  def delete_storage_virtual_machine(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteStorageVirtualMachine", input, options)
  end

  @doc """
   
  Deletes an Amazon FSx for NetApp ONTAP or Amazon FSx for OpenZFS volume.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fsx%20DeleteVolume&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_volume_request`)
    %{
      optional("ClientRequestToken") => String.t(),
      optional("OntapConfiguration") => delete_volume_ontap_configuration(),
      optional("OpenZFSConfiguration") => delete_volume_open_z_f_s_configuration(),
      required("VolumeId") => String.t()
    }
  """
  @spec delete_volume(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_volume_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_volume_errors()}
  def delete_volume(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteVolume", input, options)
  end

  @doc """
   
  Returns the description of a specific Amazon FSx backup, if a `BackupIds` value
  is provided for that backup. Otherwise, it returns all backups owned by your
  Amazon Web Services account in the Amazon Web Services Region of the endpoint
  that you're calling. When retrieving all backups, you can optionally specify
  the `MaxResults` parameter to limit the number of backups in a response. If
  more backups remain, Amazon FSx returns a `NextToken` value in the response.
  In this case, send a later request with the `NextToken` request parameter set
  to the value of the `NextToken` value from the last response.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fsx%20DescribeBackups&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_backups_request`)
    %{
      optional("BackupIds") => list(String.t()()),
      optional("Filters") => list(filter()()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """
  @spec describe_backups(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_backups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_backups_errors()}
  def describe_backups(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeBackups", input, options)
  end

  @doc """
   
  Returns the description of specific Amazon FSx for Lustre or Amazon File Cache
  data repository associations, if one or more `AssociationIds` values are
  provided in the request, or if filters are used in the request. Data
  repository associations are supported on Amazon File Cache resources and all
  FSx for Lustre 2.12 and 2,15 file systems, excluding `scratch_1` deployment
  type. You can use filters to narrow the response to include just data
  repository associations for specific file systems (use the `file-system-id`
  filter with the ID of the file system) or caches (use the `file-cache-id`
  filter with the ID of the cache), or data repository associations for a
  specific repository type (use the `data-repository-type` filter with a value
  of `S3` or `NFS`). If you don't use filters, the response returns all data
  repository associations owned by your Amazon Web Services account in the
  Amazon Web Services Region of the endpoint that you're calling.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fsx%20DescribeDataRepositoryAssociations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_data_repository_associations_request`)
    %{
      optional("AssociationIds") => list(String.t()()),
      optional("Filters") => list(filter()()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """
  @spec describe_data_repository_associations(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_data_repository_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_data_repository_associations_errors()}
  def describe_data_repository_associations(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeDataRepositoryAssociations", input, options)
  end

  @doc """
   
  Returns the description of specific Amazon FSx for Lustre or Amazon File Cache
  data repository tasks, if one or more `TaskIds` values are provided in the
  request, or if filters are used in the request. You can use filters to narrow
  the response to include just tasks for specific file systems or caches, or
  tasks in a specific lifecycle state. Otherwise, it returns all data repository
  tasks owned by your Amazon Web Services account in the Amazon Web Services
  Region of the endpoint that you're calling.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fsx%20DescribeDataRepositoryTasks&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_data_repository_tasks_request`)
    %{
      optional("Filters") => list(data_repository_task_filter()()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("TaskIds") => list(String.t()())
    }
  """
  @spec describe_data_repository_tasks(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_data_repository_tasks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_data_repository_tasks_errors()}
  def describe_data_repository_tasks(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeDataRepositoryTasks", input, options)
  end

  @doc """
   
  Returns the description of a specific Amazon File Cache resource, if a
  `FileCacheIds` value is provided for that cache. Otherwise, it returns
  descriptions of all caches owned by your Amazon Web Services account in the
  Amazon Web Services Region of the endpoint that you're calling. When
  retrieving all cache descriptions, you can optionally specify the `MaxResults`
  parameter to limit the number of descriptions in a response. If more cache
  descriptions remain, the operation returns a `NextToken` value in the
  response. In this case, send a later request with the `NextToken` request
  parameter set to the value of `NextToken` from the last response.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fsx%20DescribeFileCaches&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_file_caches_request`)
    %{
      optional("FileCacheIds") => list(String.t()()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """
  @spec describe_file_caches(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_file_caches_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_file_caches_errors()}
  def describe_file_caches(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeFileCaches", input, options)
  end

  @doc """
   
  Returns the DNS aliases that are associated with the specified Amazon FSx for
  Windows File Server file system. A history of all DNS aliases that have been
  associated with and disassociated from the file system is available in the
  list of `AdministrativeAction` provided in the `DescribeFileSystems` operation
  response.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fsx%20DescribeFileSystemAliases&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_file_system_aliases_request`)
    %{
      optional("ClientRequestToken") => String.t(),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("FileSystemId") => String.t()
    }
  """
  @spec describe_file_system_aliases(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_file_system_aliases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_file_system_aliases_errors()}
  def describe_file_system_aliases(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeFileSystemAliases", input, options)
  end

  @doc """
   
  Returns the description of specific Amazon FSx file systems, if a
  `FileSystemIds` value is provided for that file system. Otherwise, it returns
  descriptions of all file systems owned by your Amazon Web Services account in
  the Amazon Web Services Region of the endpoint that you're calling. When
  retrieving all file system descriptions, you can optionally specify the
  `MaxResults` parameter to limit the number of descriptions in a response. If
  more file system descriptions remain, Amazon FSx returns a `NextToken` value
  in the response. In this case, send a later request with the `NextToken`
  request parameter set to the value of `NextToken` from the last response.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fsx%20DescribeFileSystems&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_file_systems_request`)
    %{
      optional("FileSystemIds") => list(String.t()()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """
  @spec describe_file_systems(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_file_systems_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_file_systems_errors()}
  def describe_file_systems(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeFileSystems", input, options)
  end

  @doc """
   
  Indicates whether participant accounts in your organization can create Amazon
  FSx for NetApp ONTAP Multi-AZ file systems in subnets that are shared by a
  virtual private cloud (VPC) owner. For more information, see [Creating FSx for
  ONTAP file systems in shared
  subnets](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/creating-file-systems.html#fsxn-vpc-shared-subnets).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fsx%20DescribeSharedVpcConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_shared_vpc_configuration_request`)
    %{
      
    }
  """
  @spec describe_shared_vpc_configuration(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_shared_vpc_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_shared_vpc_configuration_errors()}
  def describe_shared_vpc_configuration(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeSharedVpcConfiguration", input, options)
  end

  @doc """
   
  Returns the description of specific Amazon FSx for OpenZFS snapshots, if a
  `SnapshotIds` value is provided. Otherwise, this operation returns all
  snapshots owned by your Amazon Web Services account in the Amazon Web Services
  Region of the endpoint that you're calling. When retrieving all snapshots, you
  can optionally specify the `MaxResults` parameter to limit the number of
  snapshots in a response. If more backups remain, Amazon FSx returns a
  `NextToken` value in the response. In this case, send a later request with the
  `NextToken` request parameter set to the value of `NextToken` from the last
  response.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fsx%20DescribeSnapshots&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_snapshots_request`)
    %{
      optional("Filters") => list(snapshot_filter()()),
      optional("IncludeShared") => boolean(),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("SnapshotIds") => list(String.t()())
    }
  """
  @spec describe_snapshots(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_snapshots_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_snapshots_errors()}
  def describe_snapshots(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeSnapshots", input, options)
  end

  @doc """
   
  Describes one or more Amazon FSx for NetApp ONTAP storage virtual machines
  (SVMs).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fsx%20DescribeStorageVirtualMachines&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_storage_virtual_machines_request`)
    %{
      optional("Filters") => list(storage_virtual_machine_filter()()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("StorageVirtualMachineIds") => list(String.t()())
    }
  """
  @spec describe_storage_virtual_machines(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_storage_virtual_machines_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_storage_virtual_machines_errors()}
  def describe_storage_virtual_machines(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeStorageVirtualMachines", input, options)
  end

  @doc """
   
  Describes one or more Amazon FSx for NetApp ONTAP or Amazon FSx for OpenZFS
  volumes.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fsx%20DescribeVolumes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_volumes_request`)
    %{
      optional("Filters") => list(volume_filter()()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("VolumeIds") => list(String.t()())
    }
  """
  @spec describe_volumes(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_volumes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_volumes_errors()}
  def describe_volumes(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeVolumes", input, options)
  end

  @doc """
   
  Use this action to disassociate, or remove, one or more Domain Name Service
  (DNS) aliases from an Amazon FSx for Windows File Server file system. If you
  attempt to disassociate a DNS alias that is not associated with the file
  system, Amazon FSx responds with an HTTP status code 400 (Bad Request). For
  more information, see [Working with DNS
  Aliases](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-dns-aliases.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fsx%20DisassociateFileSystemAliases&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:disassociate_file_system_aliases_request`)
    %{
      optional("ClientRequestToken") => String.t(),
      required("Aliases") => list(String.t()()),
      required("FileSystemId") => String.t()
    }
  """
  @spec disassociate_file_system_aliases(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, disassociate_file_system_aliases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_file_system_aliases_errors()}
  def disassociate_file_system_aliases(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisassociateFileSystemAliases", input, options)
  end

  @doc """
   
  Lists tags for Amazon FSx resources. When retrieving all tags, you can
  optionally specify the `MaxResults` parameter to limit the number of tags in a
  response. If more tags remain, Amazon FSx returns a `NextToken` value in the
  response. In this case, send a later request with the `NextToken` request
  parameter set to the value of `NextToken` from the last response.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fsx%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_tags_for_resource_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("ResourceARN") => String.t()
    }
  """
  @spec list_tags_for_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
   
  Releases the file system lock from an Amazon FSx for OpenZFS file system.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fsx%20ReleaseFileSystemNfsV3Locks&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:release_file_system_nfs_v3_locks_request`)
    %{
      optional("ClientRequestToken") => String.t(),
      required("FileSystemId") => String.t()
    }
  """
  @spec release_file_system_nfs_v3_locks(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, release_file_system_nfs_v3_locks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, release_file_system_nfs_v3_locks_errors()}
  def release_file_system_nfs_v3_locks(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ReleaseFileSystemNfsV3Locks", input, options)
  end

  @doc """
   
  Returns an Amazon FSx for OpenZFS volume to the state saved by the specified
  snapshot.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fsx%20RestoreVolumeFromSnapshot&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:restore_volume_from_snapshot_request`)
    %{
      optional("ClientRequestToken") => String.t(),
      optional("Options") => list(list(any())()),
      required("SnapshotId") => String.t(),
      required("VolumeId") => String.t()
    }
  """
  @spec restore_volume_from_snapshot(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, restore_volume_from_snapshot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, restore_volume_from_snapshot_errors()}
  def restore_volume_from_snapshot(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "RestoreVolumeFromSnapshot", input, options)
  end

  @doc """
   
  After performing steps to repair the Active Directory configuration of an FSx
  for Windows File Server file system, use this action to initiate the process
  of Amazon FSx attempting to reconnect to the file system.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fsx%20StartMisconfiguredStateRecovery&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:start_misconfigured_state_recovery_request`)
    %{
      optional("ClientRequestToken") => String.t(),
      required("FileSystemId") => String.t()
    }
  """
  @spec start_misconfigured_state_recovery(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, start_misconfigured_state_recovery_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_misconfigured_state_recovery_errors()}
  def start_misconfigured_state_recovery(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartMisconfiguredStateRecovery", input, options)
  end

  @doc """
   
  Tags an Amazon FSx resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fsx%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:tag_resource_request`)
    %{
      required("ResourceARN") => String.t(),
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
   
  This action removes a tag from an Amazon FSx resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fsx%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:untag_resource_request`)
    %{
      required("ResourceARN") => String.t(),
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
   
  Updates the configuration of an existing data repository association on an
  Amazon FSx for Lustre file system. Data repository associations are supported
  on all FSx for Lustre 2.12 and 2.15 file systems, excluding `scratch_1`
  deployment type.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fsx%20UpdateDataRepositoryAssociation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_data_repository_association_request`)
    %{
      optional("ClientRequestToken") => String.t(),
      optional("ImportedFileChunkSize") => integer(),
      optional("S3") => s3_data_repository_configuration(),
      required("AssociationId") => String.t()
    }
  """
  @spec update_data_repository_association(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_data_repository_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_data_repository_association_errors()}
  def update_data_repository_association(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateDataRepositoryAssociation", input, options)
  end

  @doc """
   
  Updates the configuration of an existing Amazon File Cache resource. You can
  update multiple properties in a single request.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fsx%20UpdateFileCache&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_file_cache_request`)
    %{
      optional("ClientRequestToken") => String.t(),
      optional("LustreConfiguration") => update_file_cache_lustre_configuration(),
      required("FileCacheId") => String.t()
    }
  """
  @spec update_file_cache(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_file_cache_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_file_cache_errors()}
  def update_file_cache(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateFileCache", input, options)
  end

  @doc """
   
  Use this operation to update the configuration of an existing Amazon FSx file
  system. You can update multiple properties in a single request. For FSx for
  Windows File Server file systems, you can update the following properties:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fsx%20UpdateFileSystem&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_file_system_request`)
    %{
      optional("ClientRequestToken") => String.t(),
      optional("LustreConfiguration") => update_file_system_lustre_configuration(),
      optional("OntapConfiguration") => update_file_system_ontap_configuration(),
      optional("OpenZFSConfiguration") => update_file_system_open_z_f_s_configuration(),
      optional("StorageCapacity") => integer(),
      optional("StorageType") => list(any()),
      optional("WindowsConfiguration") => update_file_system_windows_configuration(),
      required("FileSystemId") => String.t()
    }
  """
  @spec update_file_system(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_file_system_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_file_system_errors()}
  def update_file_system(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateFileSystem", input, options)
  end

  @doc """
   
  Configures whether participant accounts in your organization can create Amazon
  FSx for NetApp ONTAP Multi-AZ file systems in subnets that are shared by a
  virtual private cloud (VPC) owner. For more information, see the [Amazon FSx
  for NetApp ONTAP User
  Guide](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/maz-shared-vpc.html).
  We strongly recommend that participant-created Multi-AZ file systems in the
  shared VPC are deleted before you disable this feature. Once the feature is
  disabled, these file systems will enter a `MISCONFIGURED` state and behave
  like Single-AZ file systems. For more information, see [Important
  considerations before disabling shared VPC support for Multi-AZ file
  systems](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/maz-shared-vpc.html#disabling-maz-vpc-sharing).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fsx%20UpdateSharedVpcConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_shared_vpc_configuration_request`)
    %{
      optional("ClientRequestToken") => String.t(),
      optional("EnableFsxRouteTableUpdatesFromParticipantAccounts") => String.t()
    }
  """
  @spec update_shared_vpc_configuration(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_shared_vpc_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_shared_vpc_configuration_errors()}
  def update_shared_vpc_configuration(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateSharedVpcConfiguration", input, options)
  end

  @doc """
   
  Updates the name of an Amazon FSx for OpenZFS snapshot.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fsx%20UpdateSnapshot&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_snapshot_request`)
    %{
      optional("ClientRequestToken") => String.t(),
      required("Name") => String.t(),
      required("SnapshotId") => String.t()
    }
  """
  @spec update_snapshot(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_snapshot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_snapshot_errors()}
  def update_snapshot(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateSnapshot", input, options)
  end

  @doc """
   
  Updates an FSx for ONTAP storage virtual machine (SVM).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fsx%20UpdateStorageVirtualMachine&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_storage_virtual_machine_request`)
    %{
      optional("ActiveDirectoryConfiguration") => update_svm_active_directory_configuration(),
      optional("ClientRequestToken") => String.t(),
      optional("SvmAdminPassword") => String.t(),
      required("StorageVirtualMachineId") => String.t()
    }
  """
  @spec update_storage_virtual_machine(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_storage_virtual_machine_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_storage_virtual_machine_errors()}
  def update_storage_virtual_machine(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateStorageVirtualMachine", input, options)
  end

  @doc """
   
  Updates the configuration of an Amazon FSx for NetApp ONTAP or Amazon FSx for
  OpenZFS volume.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=fsx%20UpdateVolume&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_volume_request`)
    %{
      optional("ClientRequestToken") => String.t(),
      optional("Name") => String.t(),
      optional("OntapConfiguration") => update_ontap_volume_configuration(),
      optional("OpenZFSConfiguration") => update_open_z_f_s_volume_configuration(),
      required("VolumeId") => String.t()
    }
  """
  @spec update_volume(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_volume_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_volume_errors()}
  def update_volume(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateVolume", input, options)
  end
end
