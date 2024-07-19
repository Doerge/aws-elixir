# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.StorageGateway do
  @moduledoc """
  Storage Gateway Service Storage Gateway is the service that connects an
  on-premises software appliance with cloud-based storage to provide seamless
  and secure integration between an organization's on-premises IT environment
  and the Amazon Web Services storage infrastructure. The service enables you to
  securely upload data to the Amazon Web Services Cloud for cost effective
  backup and rapid disaster recovery.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      join_domain_output() :: %{
        "ActiveDirectoryStatus" => list(any()),
        "GatewayARN" => String.t()
      }
      
  """
  @type join_domain_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_stored_iscsi_volume_input() :: %{
        optional("KMSEncrypted") => boolean(),
        optional("KMSKey") => String.t(),
        optional("SnapshotId") => String.t(),
        optional("Tags") => list(tag()()),
        required("DiskId") => String.t(),
        required("GatewayARN") => String.t(),
        required("NetworkInterfaceId") => String.t(),
        required("PreserveExistingData") => boolean(),
        required("TargetName") => String.t()
      }
      
  """
  @type create_stored_iscsi_volume_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_file_system_output() :: %{
        "FileSystemAssociationARN" => String.t()
      }
      
  """
  @type associate_file_system_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_snapshot_schedule_input() :: %{
        optional("Description") => String.t(),
        optional("Tags") => list(tag()()),
        required("RecurrenceInHours") => integer(),
        required("StartAt") => integer(),
        required("VolumeARN") => String.t()
      }
      
  """
  @type update_snapshot_schedule_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_archival_input() :: %{
        required("GatewayARN") => String.t(),
        required("TapeARN") => String.t()
      }
      
  """
  @type cancel_archival_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_gateway_information_output() :: %{
        "CloudWatchLogGroupARN" => String.t(),
        "DeprecationDate" => String.t(),
        "Ec2InstanceId" => String.t(),
        "Ec2InstanceRegion" => String.t(),
        "EndpointType" => String.t(),
        "GatewayARN" => String.t(),
        "GatewayCapacity" => list(any()),
        "GatewayId" => String.t(),
        "GatewayName" => String.t(),
        "GatewayNetworkInterfaces" => list(network_interface()()),
        "GatewayState" => String.t(),
        "GatewayTimezone" => String.t(),
        "GatewayType" => String.t(),
        "HostEnvironment" => list(any()),
        "HostEnvironmentId" => String.t(),
        "LastSoftwareUpdate" => String.t(),
        "NextUpdateAvailabilityDate" => String.t(),
        "SoftwareUpdatesEndDate" => String.t(),
        "SoftwareVersion" => String.t(),
        "SupportedGatewayCapacities" => list(list(any())()),
        "Tags" => list(tag()()),
        "VPCEndpoint" => String.t()
      }
      
  """
  @type describe_gateway_information_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_volume_initiators_input() :: %{
        required("VolumeARN") => String.t()
      }
      
  """
  @type list_volume_initiators_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notify_when_uploaded_input() :: %{
        required("FileShareARN") => String.t()
      }
      
  """
  @type notify_when_uploaded_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_volume_recovery_points_input() :: %{
        required("GatewayARN") => String.t()
      }
      
  """
  @type list_volume_recovery_points_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_upload_buffer_input() :: %{
        required("GatewayARN") => String.t()
      }
      
  """
  @type describe_upload_buffer_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_cache_output() :: %{
        "CacheAllocatedInBytes" => float(),
        "CacheDirtyPercentage" => float(),
        "CacheHitPercentage" => float(),
        "CacheMissPercentage" => float(),
        "CacheUsedPercentage" => float(),
        "DiskIds" => list(String.t()()),
        "GatewayARN" => String.t()
      }
      
  """
  @type describe_cache_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      assign_tape_pool_output() :: %{
        "TapeARN" => String.t()
      }
      
  """
  @type assign_tape_pool_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_file_system_associations_output() :: %{
        "FileSystemAssociationInfoList" => list(file_system_association_info()())
      }
      
  """
  @type describe_file_system_associations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_tape_with_barcode_input() :: %{
        optional("KMSEncrypted") => boolean(),
        optional("KMSKey") => String.t(),
        optional("PoolId") => String.t(),
        optional("Tags") => list(tag()()),
        optional("Worm") => boolean(),
        required("GatewayARN") => String.t(),
        required("TapeBarcode") => String.t(),
        required("TapeSizeInBytes") => float()
      }
      
  """
  @type create_tape_with_barcode_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tape_info() :: %{
        "GatewayARN" => String.t(),
        "PoolEntryDate" => non_neg_integer(),
        "PoolId" => String.t(),
        "RetentionStartDate" => non_neg_integer(),
        "TapeARN" => String.t(),
        "TapeBarcode" => String.t(),
        "TapeSizeInBytes" => float(),
        "TapeStatus" => String.t()
      }
      
  """
  @type tape_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_file_share_input() :: %{
        optional("ForceDelete") => boolean(),
        required("FileShareARN") => String.t()
      }
      
  """
  @type delete_file_share_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      join_domain_input() :: %{
        optional("DomainControllers") => list(String.t()()),
        optional("OrganizationalUnit") => String.t(),
        optional("TimeoutInSeconds") => integer(),
        required("DomainName") => String.t(),
        required("GatewayARN") => String.t(),
        required("Password") => String.t(),
        required("UserName") => String.t()
      }
      
  """
  @type join_domain_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_file_system_association_input() :: %{
        optional("AuditDestinationARN") => String.t(),
        optional("CacheAttributes") => cache_attributes(),
        optional("Password") => String.t(),
        optional("UserName") => String.t(),
        required("FileSystemAssociationARN") => String.t()
      }
      
  """
  @type update_file_system_association_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_bandwidth_rate_limit_input() :: %{
        required("BandwidthType") => String.t(),
        required("GatewayARN") => String.t()
      }
      
  """
  @type delete_bandwidth_rate_limit_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_maintenance_start_time_input() :: %{
        optional("DayOfMonth") => integer(),
        optional("DayOfWeek") => integer(),
        optional("HourOfDay") => integer(),
        optional("MinuteOfHour") => integer(),
        optional("SoftwareUpdatePreferences") => software_update_preferences(),
        required("GatewayARN") => String.t()
      }
      
  """
  @type update_maintenance_start_time_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      volume_iscsi_attributes() :: %{
        "ChapEnabled" => boolean(),
        "LunNumber" => integer(),
        "NetworkInterfaceId" => String.t(),
        "NetworkInterfacePort" => integer(),
        "TargetARN" => String.t()
      }
      
  """
  @type volume_iscsi_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_maintenance_start_time_output() :: %{
        "DayOfMonth" => integer(),
        "DayOfWeek" => integer(),
        "GatewayARN" => String.t(),
        "HourOfDay" => integer(),
        "MinuteOfHour" => integer(),
        "SoftwareUpdatePreferences" => software_update_preferences(),
        "Timezone" => String.t()
      }
      
  """
  @type describe_maintenance_start_time_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_file_system_input() :: %{
        optional("AuditDestinationARN") => String.t(),
        optional("CacheAttributes") => cache_attributes(),
        optional("EndpointNetworkConfiguration") => endpoint_network_configuration(),
        optional("Tags") => list(tag()()),
        required("ClientToken") => String.t(),
        required("GatewayARN") => String.t(),
        required("LocationARN") => String.t(),
        required("Password") => String.t(),
        required("UserName") => String.t()
      }
      
  """
  @type associate_file_system_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_volume_recovery_points_output() :: %{
        "GatewayARN" => String.t(),
        "VolumeRecoveryPointInfos" => list(volume_recovery_point_info()())
      }
      
  """
  @type list_volume_recovery_points_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_smb_settings_input() :: %{
        required("GatewayARN") => String.t()
      }
      
  """
  @type describe_smb_settings_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      file_share_info() :: %{
        "FileShareARN" => String.t(),
        "FileShareId" => String.t(),
        "FileShareStatus" => String.t(),
        "FileShareType" => list(any()),
        "GatewayARN" => String.t()
      }
      
  """
  @type file_share_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_tape_archive_input() :: %{
        optional("BypassGovernanceRetention") => boolean(),
        required("TapeARN") => String.t()
      }
      
  """
  @type delete_tape_archive_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      volume_recovery_point_info() :: %{
        "VolumeARN" => String.t(),
        "VolumeRecoveryPointTime" => String.t(),
        "VolumeSizeInBytes" => float(),
        "VolumeUsageInBytes" => float()
      }
      
  """
  @type volume_recovery_point_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pool_info() :: %{
        "PoolARN" => String.t(),
        "PoolName" => String.t(),
        "PoolStatus" => list(any()),
        "RetentionLockTimeInDays" => integer(),
        "RetentionLockType" => list(any()),
        "StorageClass" => list(any())
      }
      
  """
  @type pool_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_tapes_output() :: %{
        "TapeARNs" => list(String.t()())
      }
      
  """
  @type create_tapes_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_interface() :: %{
        "Ipv4Address" => String.t(),
        "Ipv6Address" => String.t(),
        "MacAddress" => String.t()
      }
      
  """
  @type network_interface() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tape_recovery_point_info() :: %{
        "TapeARN" => String.t(),
        "TapeRecoveryPointTime" => non_neg_integer(),
        "TapeSizeInBytes" => float(),
        "TapeStatus" => String.t()
      }
      
  """
  @type tape_recovery_point_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_volume_input() :: %{
        required("VolumeARN") => String.t()
      }
      
  """
  @type delete_volume_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_cached_iscsi_volumes_input() :: %{
        required("VolumeARNs") => list(String.t()())
      }
      
  """
  @type describe_cached_iscsi_volumes_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_local_console_password_input() :: %{
        required("GatewayARN") => String.t(),
        required("LocalConsolePassword") => String.t()
      }
      
  """
  @type set_local_console_password_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_file_system_associations_output() :: %{
        "FileSystemAssociationSummaryList" => list(file_system_association_summary()()),
        "Marker" => String.t(),
        "NextMarker" => String.t()
      }
      
  """
  @type list_file_system_associations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_snapshot_schedule_output() :: %{
        "VolumeARN" => String.t()
      }
      
  """
  @type delete_snapshot_schedule_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tape_pools_output() :: %{
        "Marker" => String.t(),
        "PoolInfos" => list(pool_info()())
      }
      
  """
  @type list_tape_pools_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_tape_recovery_points_input() :: %{
        optional("Limit") => integer(),
        optional("Marker") => String.t(),
        required("GatewayARN") => String.t()
      }
      
  """
  @type describe_tape_recovery_points_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_vtl_devices_input() :: %{
        optional("Limit") => integer(),
        optional("Marker") => String.t(),
        optional("VTLDeviceARNs") => list(String.t()()),
        required("GatewayARN") => String.t()
      }
      
  """
  @type describe_vtl_devices_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_file_system_associations_input() :: %{
        optional("GatewayARN") => String.t(),
        optional("Limit") => integer(),
        optional("Marker") => String.t()
      }
      
  """
  @type list_file_system_associations_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_volumes_input() :: %{
        optional("GatewayARN") => String.t(),
        optional("Limit") => integer(),
        optional("Marker") => String.t()
      }
      
  """
  @type list_volumes_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      gateway_info() :: %{
        "DeprecationDate" => String.t(),
        "Ec2InstanceId" => String.t(),
        "Ec2InstanceRegion" => String.t(),
        "GatewayARN" => String.t(),
        "GatewayId" => String.t(),
        "GatewayName" => String.t(),
        "GatewayOperationalState" => String.t(),
        "GatewayType" => String.t(),
        "HostEnvironment" => list(any()),
        "HostEnvironmentId" => String.t(),
        "SoftwareVersion" => String.t()
      }
      
  """
  @type gateway_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_smb_file_share_input() :: %{
        optional("AccessBasedEnumeration") => boolean(),
        optional("AdminUserList") => list(String.t()()),
        optional("AuditDestinationARN") => String.t(),
        optional("CacheAttributes") => cache_attributes(),
        optional("CaseSensitivity") => list(any()),
        optional("DefaultStorageClass") => String.t(),
        optional("FileShareName") => String.t(),
        optional("GuessMIMETypeEnabled") => boolean(),
        optional("InvalidUserList") => list(String.t()()),
        optional("KMSEncrypted") => boolean(),
        optional("KMSKey") => String.t(),
        optional("NotificationPolicy") => String.t(),
        optional("ObjectACL") => list(any()),
        optional("OplocksEnabled") => boolean(),
        optional("ReadOnly") => boolean(),
        optional("RequesterPays") => boolean(),
        optional("SMBACLEnabled") => boolean(),
        optional("ValidUserList") => list(String.t()()),
        required("FileShareARN") => String.t()
      }
      
  """
  @type update_smb_file_share_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_local_disks_output() :: %{
        "Disks" => list(disk()()),
        "GatewayARN" => String.t()
      }
      
  """
  @type list_local_disks_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activate_gateway_output() :: %{
        "GatewayARN" => String.t()
      }
      
  """
  @type activate_gateway_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detach_volume_output() :: %{
        "VolumeARN" => String.t()
      }
      
  """
  @type detach_volume_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_local_console_password_output() :: %{
        "GatewayARN" => String.t()
      }
      
  """
  @type set_local_console_password_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_snapshot_from_volume_recovery_point_output() :: %{
        "SnapshotId" => String.t(),
        "VolumeARN" => String.t(),
        "VolumeRecoveryPointTime" => String.t()
      }
      
  """
  @type create_snapshot_from_volume_recovery_point_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_output() :: %{
        "Marker" => String.t(),
        "ResourceARN" => String.t(),
        "Tags" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cached_iscsi_volume() :: %{
        "CreatedDate" => non_neg_integer(),
        "KMSKey" => String.t(),
        "SourceSnapshotId" => String.t(),
        "TargetName" => String.t(),
        "VolumeARN" => String.t(),
        "VolumeAttachmentStatus" => String.t(),
        "VolumeId" => String.t(),
        "VolumeProgress" => float(),
        "VolumeSizeInBytes" => float(),
        "VolumeStatus" => String.t(),
        "VolumeType" => String.t(),
        "VolumeUsedInBytes" => float(),
        "VolumeiSCSIAttributes" => volume_iscsi_attributes()
      }
      
  """
  @type cached_iscsi_volume() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_bandwidth_rate_limit_output() :: %{
        "AverageDownloadRateLimitInBitsPerSec" => float(),
        "AverageUploadRateLimitInBitsPerSec" => float(),
        "GatewayARN" => String.t()
      }
      
  """
  @type describe_bandwidth_rate_limit_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_gateway_input() :: %{
        required("GatewayARN") => String.t()
      }
      
  """
  @type start_gateway_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_smb_file_share_output() :: %{
        "FileShareARN" => String.t()
      }
      
  """
  @type create_smb_file_share_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attach_volume_input() :: %{
        optional("DiskId") => String.t(),
        optional("TargetName") => String.t(),
        required("GatewayARN") => String.t(),
        required("NetworkInterfaceId") => String.t(),
        required("VolumeARN") => String.t()
      }
      
  """
  @type attach_volume_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_snapshot_schedule_input() :: %{
        required("VolumeARN") => String.t()
      }
      
  """
  @type delete_snapshot_schedule_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_snapshot_output() :: %{
        "SnapshotId" => String.t(),
        "VolumeARN" => String.t()
      }
      
  """
  @type create_snapshot_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_tags_from_resource_output() :: %{
        "ResourceARN" => String.t()
      }
      
  """
  @type remove_tags_from_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      nfs_file_share_defaults() :: %{
        "DirectoryMode" => String.t(),
        "FileMode" => String.t(),
        "GroupId" => float(),
        "OwnerId" => float()
      }
      
  """
  @type nfs_file_share_defaults() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_tape_with_barcode_output() :: %{
        "TapeARN" => String.t()
      }
      
  """
  @type create_tape_with_barcode_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disable_gateway_input() :: %{
        required("GatewayARN") => String.t()
      }
      
  """
  @type disable_gateway_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_tape_pool_output() :: %{
        "PoolARN" => String.t()
      }
      
  """
  @type delete_tape_pool_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_local_disks_input() :: %{
        required("GatewayARN") => String.t()
      }
      
  """
  @type list_local_disks_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_working_storage_output() :: %{
        "GatewayARN" => String.t()
      }
      
  """
  @type add_working_storage_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_smb_file_share_visibility_input() :: %{
        required("FileSharesVisible") => boolean(),
        required("GatewayARN") => String.t()
      }
      
  """
  @type update_smb_file_share_visibility_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_retrieval_input() :: %{
        required("GatewayARN") => String.t(),
        required("TapeARN") => String.t()
      }
      
  """
  @type cancel_retrieval_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notify_when_uploaded_output() :: %{
        "FileShareARN" => String.t(),
        "NotificationId" => String.t()
      }
      
  """
  @type notify_when_uploaded_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_unavailable_error() :: %{
        "error" => storage_gateway_error(),
        "message" => String.t()
      }
      
  """
  @type service_unavailable_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      retrieve_tape_recovery_point_output() :: %{
        "TapeARN" => String.t()
      }
      
  """
  @type retrieve_tape_recovery_point_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_vtl_device_type_input() :: %{
        required("DeviceType") => String.t(),
        required("VTLDeviceARN") => String.t()
      }
      
  """
  @type update_vtl_device_type_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_tags_to_resource_input() :: %{
        required("ResourceARN") => String.t(),
        required("Tags") => list(tag()())
      }
      
  """
  @type add_tags_to_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_smb_settings_output() :: %{
        "ActiveDirectoryStatus" => list(any()),
        "DomainName" => String.t(),
        "FileSharesVisible" => boolean(),
        "GatewayARN" => String.t(),
        "SMBGuestPasswordSet" => boolean(),
        "SMBLocalGroups" => smb_local_groups(),
        "SMBSecurityStrategy" => list(any())
      }
      
  """
  @type describe_smb_settings_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_gateway_information_output() :: %{
        "GatewayARN" => String.t(),
        "GatewayName" => String.t()
      }
      
  """
  @type update_gateway_information_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_tags_to_resource_output() :: %{
        "ResourceARN" => String.t()
      }
      
  """
  @type add_tags_to_resource_output() :: %{String.t() => any()}

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
      
      update_bandwidth_rate_limit_output() :: %{
        "GatewayARN" => String.t()
      }
      
  """
  @type update_bandwidth_rate_limit_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      device_iscsi_attributes() :: %{
        "ChapEnabled" => boolean(),
        "NetworkInterfaceId" => String.t(),
        "NetworkInterfacePort" => integer(),
        "TargetARN" => String.t()
      }
      
  """
  @type device_iscsi_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_vtl_devices_output() :: %{
        "GatewayARN" => String.t(),
        "Marker" => String.t(),
        "VTLDevices" => list(vtl_device()())
      }
      
  """
  @type describe_vtl_devices_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_archival_output() :: %{
        "TapeARN" => String.t()
      }
      
  """
  @type cancel_archival_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_availability_monitor_test_input() :: %{
        required("GatewayARN") => String.t()
      }
      
  """
  @type start_availability_monitor_test_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      retrieve_tape_recovery_point_input() :: %{
        required("GatewayARN") => String.t(),
        required("TapeARN") => String.t()
      }
      
  """
  @type retrieve_tape_recovery_point_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_bandwidth_rate_limit_schedule_output() :: %{
        "BandwidthRateLimitIntervals" => list(bandwidth_rate_limit_interval()()),
        "GatewayARN" => String.t()
      }
      
  """
  @type describe_bandwidth_rate_limit_schedule_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_gateway_information_input() :: %{
        required("GatewayARN") => String.t()
      }
      
  """
  @type describe_gateway_information_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_cache_output() :: %{
        "GatewayARN" => String.t()
      }
      
  """
  @type add_cache_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_gateway_output() :: %{
        "GatewayARN" => String.t()
      }
      
  """
  @type start_gateway_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      assign_tape_pool_input() :: %{
        optional("BypassGovernanceRetention") => boolean(),
        required("PoolId") => String.t(),
        required("TapeARN") => String.t()
      }
      
  """
  @type assign_tape_pool_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_nfs_file_shares_output() :: %{
        "NFSFileShareInfoList" => list(nfs_file_share_info()())
      }
      
  """
  @type describe_nfs_file_shares_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_snapshot_input() :: %{
        optional("Tags") => list(tag()()),
        required("SnapshotDescription") => String.t(),
        required("VolumeARN") => String.t()
      }
      
  """
  @type create_snapshot_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      storage_gateway_error() :: %{
        "errorCode" => list(any()),
        "errorDetails" => map()
      }
      
  """
  @type storage_gateway_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_file_shares_input() :: %{
        optional("GatewayARN") => String.t(),
        optional("Limit") => integer(),
        optional("Marker") => String.t()
      }
      
  """
  @type list_file_shares_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tape() :: %{
        "KMSKey" => String.t(),
        "PoolEntryDate" => non_neg_integer(),
        "PoolId" => String.t(),
        "Progress" => float(),
        "RetentionStartDate" => non_neg_integer(),
        "TapeARN" => String.t(),
        "TapeBarcode" => String.t(),
        "TapeCreatedDate" => non_neg_integer(),
        "TapeSizeInBytes" => float(),
        "TapeStatus" => String.t(),
        "TapeUsedInBytes" => float(),
        "VTLDevice" => String.t(),
        "Worm" => boolean()
      }
      
  """
  @type tape() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bandwidth_rate_limit_interval() :: %{
        "AverageDownloadRateLimitInBitsPerSec" => float(),
        "AverageUploadRateLimitInBitsPerSec" => float(),
        "DaysOfWeek" => list(integer()()),
        "EndHourOfDay" => integer(),
        "EndMinuteOfHour" => integer(),
        "StartHourOfDay" => integer(),
        "StartMinuteOfHour" => integer()
      }
      
  """
  @type bandwidth_rate_limit_interval() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_gateways_output() :: %{
        "Gateways" => list(gateway_info()()),
        "Marker" => String.t()
      }
      
  """
  @type list_gateways_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_tape_pool_input() :: %{
        required("PoolARN") => String.t()
      }
      
  """
  @type delete_tape_pool_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_bandwidth_rate_limit_input() :: %{
        optional("AverageDownloadRateLimitInBitsPerSec") => float(),
        optional("AverageUploadRateLimitInBitsPerSec") => float(),
        required("GatewayARN") => String.t()
      }
      
  """
  @type update_bandwidth_rate_limit_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_gateway_input() :: %{
        required("GatewayARN") => String.t()
      }
      
  """
  @type delete_gateway_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reset_cache_input() :: %{
        required("GatewayARN") => String.t()
      }
      
  """
  @type reset_cache_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tapes_output() :: %{
        "Marker" => String.t(),
        "TapeInfos" => list(tape_info()())
      }
      
  """
  @type list_tapes_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_tape_input() :: %{
        optional("BypassGovernanceRetention") => boolean(),
        required("GatewayARN") => String.t(),
        required("TapeARN") => String.t()
      }
      
  """
  @type delete_tape_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      endpoint_network_configuration() :: %{
        "IpAddresses" => list(String.t()())
      }
      
  """
  @type endpoint_network_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_stored_iscsi_volumes_output() :: %{
        "StorediSCSIVolumes" => list(stored_iscsi_volume()())
      }
      
  """
  @type describe_stored_iscsi_volumes_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_volume_initiators_output() :: %{
        "Initiators" => list(String.t()())
      }
      
  """
  @type list_volume_initiators_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_tags_from_resource_input() :: %{
        required("ResourceARN") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type remove_tags_from_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_smb_file_share_visibility_output() :: %{
        "GatewayARN" => String.t()
      }
      
  """
  @type update_smb_file_share_visibility_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      retrieve_tape_archive_output() :: %{
        "TapeARN" => String.t()
      }
      
  """
  @type retrieve_tape_archive_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_snapshot_schedule_output() :: %{
        "Description" => String.t(),
        "RecurrenceInHours" => integer(),
        "StartAt" => integer(),
        "Tags" => list(tag()()),
        "Timezone" => String.t(),
        "VolumeARN" => String.t()
      }
      
  """
  @type describe_snapshot_schedule_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_tape_pool_input() :: %{
        optional("RetentionLockTimeInDays") => integer(),
        optional("RetentionLockType") => list(any()),
        optional("Tags") => list(tag()()),
        required("PoolName") => String.t(),
        required("StorageClass") => list(any())
      }
      
  """
  @type create_tape_pool_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detach_volume_input() :: %{
        optional("ForceDetach") => boolean(),
        required("VolumeARN") => String.t()
      }
      
  """
  @type detach_volume_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      smb_file_share_info() :: %{
        "AccessBasedEnumeration" => boolean(),
        "AdminUserList" => list(String.t()()),
        "AuditDestinationARN" => String.t(),
        "Authentication" => String.t(),
        "BucketRegion" => String.t(),
        "CacheAttributes" => cache_attributes(),
        "CaseSensitivity" => list(any()),
        "DefaultStorageClass" => String.t(),
        "FileShareARN" => String.t(),
        "FileShareId" => String.t(),
        "FileShareName" => String.t(),
        "FileShareStatus" => String.t(),
        "GatewayARN" => String.t(),
        "GuessMIMETypeEnabled" => boolean(),
        "InvalidUserList" => list(String.t()()),
        "KMSEncrypted" => boolean(),
        "KMSKey" => String.t(),
        "LocationARN" => String.t(),
        "NotificationPolicy" => String.t(),
        "ObjectACL" => list(any()),
        "OplocksEnabled" => boolean(),
        "Path" => String.t(),
        "ReadOnly" => boolean(),
        "RequesterPays" => boolean(),
        "Role" => String.t(),
        "SMBACLEnabled" => boolean(),
        "Tags" => list(tag()()),
        "VPCEndpointDNSName" => String.t(),
        "ValidUserList" => list(String.t()())
      }
      
  """
  @type smb_file_share_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_cache_input() :: %{
        required("GatewayARN") => String.t()
      }
      
  """
  @type describe_cache_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_file_system_association_output() :: %{
        "FileSystemAssociationARN" => String.t()
      }
      
  """
  @type update_file_system_association_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vtl_device() :: %{
        "DeviceiSCSIAttributes" => device_iscsi_attributes(),
        "VTLDeviceARN" => String.t(),
        "VTLDeviceProductIdentifier" => String.t(),
        "VTLDeviceType" => String.t(),
        "VTLDeviceVendor" => String.t()
      }
      
  """
  @type vtl_device() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_tape_output() :: %{
        "TapeARN" => String.t()
      }
      
  """
  @type delete_tape_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_file_shares_output() :: %{
        "FileShareInfoList" => list(file_share_info()()),
        "Marker" => String.t(),
        "NextMarker" => String.t()
      }
      
  """
  @type list_file_shares_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_availability_monitor_test_output() :: %{
        "GatewayARN" => String.t()
      }
      
  """
  @type start_availability_monitor_test_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_maintenance_start_time_input() :: %{
        required("GatewayARN") => String.t()
      }
      
  """
  @type describe_maintenance_start_time_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_chap_credentials_input() :: %{
        required("InitiatorName") => String.t(),
        required("TargetARN") => String.t()
      }
      
  """
  @type delete_chap_credentials_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_availability_monitor_test_input() :: %{
        required("GatewayARN") => String.t()
      }
      
  """
  @type describe_availability_monitor_test_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_gateway_information_input() :: %{
        optional("CloudWatchLogGroupARN") => String.t(),
        optional("GatewayCapacity") => list(any()),
        optional("GatewayName") => String.t(),
        optional("GatewayTimezone") => String.t(),
        required("GatewayARN") => String.t()
      }
      
  """
  @type update_gateway_information_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_snapshot_from_volume_recovery_point_input() :: %{
        optional("Tags") => list(tag()()),
        required("SnapshotDescription") => String.t(),
        required("VolumeARN") => String.t()
      }
      
  """
  @type create_snapshot_from_volume_recovery_point_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_smb_file_share_input() :: %{
        optional("AccessBasedEnumeration") => boolean(),
        optional("AdminUserList") => list(String.t()()),
        optional("AuditDestinationARN") => String.t(),
        optional("Authentication") => String.t(),
        optional("BucketRegion") => String.t(),
        optional("CacheAttributes") => cache_attributes(),
        optional("CaseSensitivity") => list(any()),
        optional("DefaultStorageClass") => String.t(),
        optional("FileShareName") => String.t(),
        optional("GuessMIMETypeEnabled") => boolean(),
        optional("InvalidUserList") => list(String.t()()),
        optional("KMSEncrypted") => boolean(),
        optional("KMSKey") => String.t(),
        optional("NotificationPolicy") => String.t(),
        optional("ObjectACL") => list(any()),
        optional("OplocksEnabled") => boolean(),
        optional("ReadOnly") => boolean(),
        optional("RequesterPays") => boolean(),
        optional("SMBACLEnabled") => boolean(),
        optional("Tags") => list(tag()()),
        optional("VPCEndpointDNSName") => String.t(),
        optional("ValidUserList") => list(String.t()()),
        required("ClientToken") => String.t(),
        required("GatewayARN") => String.t(),
        required("LocationARN") => String.t(),
        required("Role") => String.t()
      }
      
  """
  @type create_smb_file_share_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_retrieval_output() :: %{
        "TapeARN" => String.t()
      }
      
  """
  @type cancel_retrieval_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_smb_local_groups_input() :: %{
        required("GatewayARN") => String.t(),
        required("SMBLocalGroups") => smb_local_groups()
      }
      
  """
  @type update_smb_local_groups_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reset_cache_output() :: %{
        "GatewayARN" => String.t()
      }
      
  """
  @type reset_cache_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_vtl_device_type_output() :: %{
        "VTLDeviceARN" => String.t()
      }
      
  """
  @type update_vtl_device_type_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_tape_archives_input() :: %{
        optional("Limit") => integer(),
        optional("Marker") => String.t(),
        optional("TapeARNs") => list(String.t()())
      }
      
  """
  @type describe_tape_archives_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      automatic_tape_creation_rule() :: %{
        "MinimumNumTapes" => integer(),
        "PoolId" => String.t(),
        "TapeBarcodePrefix" => String.t(),
        "TapeSizeInBytes" => float(),
        "Worm" => boolean()
      }
      
  """
  @type automatic_tape_creation_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_gateways_input() :: %{
        optional("Limit") => integer(),
        optional("Marker") => String.t()
      }
      
  """
  @type list_gateways_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_chap_credentials_output() :: %{
        "ChapCredentials" => list(chap_info()())
      }
      
  """
  @type describe_chap_credentials_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_smb_file_shares_output() :: %{
        "SMBFileShareInfoList" => list(smb_file_share_info()())
      }
      
  """
  @type describe_smb_file_shares_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_chap_credentials_output() :: %{
        "InitiatorName" => String.t(),
        "TargetARN" => String.t()
      }
      
  """
  @type delete_chap_credentials_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_tape_archive_output() :: %{
        "TapeARN" => String.t()
      }
      
  """
  @type delete_tape_archive_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      shutdown_gateway_input() :: %{
        required("GatewayARN") => String.t()
      }
      
  """
  @type shutdown_gateway_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_snapshot_schedule_input() :: %{
        required("VolumeARN") => String.t()
      }
      
  """
  @type describe_snapshot_schedule_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_nfs_file_share_input() :: %{
        optional("AuditDestinationARN") => String.t(),
        optional("BucketRegion") => String.t(),
        optional("CacheAttributes") => cache_attributes(),
        optional("ClientList") => list(String.t()()),
        optional("DefaultStorageClass") => String.t(),
        optional("FileShareName") => String.t(),
        optional("GuessMIMETypeEnabled") => boolean(),
        optional("KMSEncrypted") => boolean(),
        optional("KMSKey") => String.t(),
        optional("NFSFileShareDefaults") => nfs_file_share_defaults(),
        optional("NotificationPolicy") => String.t(),
        optional("ObjectACL") => list(any()),
        optional("ReadOnly") => boolean(),
        optional("RequesterPays") => boolean(),
        optional("Squash") => String.t(),
        optional("Tags") => list(tag()()),
        optional("VPCEndpointDNSName") => String.t(),
        required("ClientToken") => String.t(),
        required("GatewayARN") => String.t(),
        required("LocationARN") => String.t(),
        required("Role") => String.t()
      }
      
  """
  @type create_nfs_file_share_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_error() :: %{
        "error" => storage_gateway_error(),
        "message" => String.t()
      }
      
  """
  @type internal_server_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_smb_security_strategy_output() :: %{
        "GatewayARN" => String.t()
      }
      
  """
  @type update_smb_security_strategy_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_file_share_output() :: %{
        "FileShareARN" => String.t()
      }
      
  """
  @type delete_file_share_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_nfs_file_share_output() :: %{
        "FileShareARN" => String.t()
      }
      
  """
  @type create_nfs_file_share_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_tapes_input() :: %{
        optional("Limit") => integer(),
        optional("Marker") => String.t(),
        optional("TapeARNs") => list(String.t()()),
        required("GatewayARN") => String.t()
      }
      
  """
  @type describe_tapes_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_automatic_tape_creation_policies_input() :: %{
        optional("GatewayARN") => String.t()
      }
      
  """
  @type list_automatic_tape_creation_policies_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_snapshot_schedule_output() :: %{
        "VolumeARN" => String.t()
      }
      
  """
  @type update_snapshot_schedule_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stored_iscsi_volume() :: %{
        "CreatedDate" => non_neg_integer(),
        "KMSKey" => String.t(),
        "PreservedExistingData" => boolean(),
        "SourceSnapshotId" => String.t(),
        "TargetName" => String.t(),
        "VolumeARN" => String.t(),
        "VolumeAttachmentStatus" => String.t(),
        "VolumeDiskId" => String.t(),
        "VolumeId" => String.t(),
        "VolumeProgress" => float(),
        "VolumeSizeInBytes" => float(),
        "VolumeStatus" => String.t(),
        "VolumeType" => String.t(),
        "VolumeUsedInBytes" => float(),
        "VolumeiSCSIAttributes" => volume_iscsi_attributes()
      }
      
  """
  @type stored_iscsi_volume() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      volume_info() :: %{
        "GatewayARN" => String.t(),
        "GatewayId" => String.t(),
        "VolumeARN" => String.t(),
        "VolumeAttachmentStatus" => String.t(),
        "VolumeId" => String.t(),
        "VolumeSizeInBytes" => float(),
        "VolumeType" => String.t()
      }
      
  """
  @type volume_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_nfs_file_share_output() :: %{
        "FileShareARN" => String.t()
      }
      
  """
  @type update_nfs_file_share_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disable_gateway_output() :: %{
        "GatewayARN" => String.t()
      }
      
  """
  @type disable_gateway_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      software_update_preferences() :: %{
        "AutomaticUpdatePolicy" => list(any())
      }
      
  """
  @type software_update_preferences() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_stored_iscsi_volumes_input() :: %{
        required("VolumeARNs") => list(String.t()())
      }
      
  """
  @type describe_stored_iscsi_volumes_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_file_system_associations_input() :: %{
        required("FileSystemAssociationARNList") => list(String.t()())
      }
      
  """
  @type describe_file_system_associations_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disk() :: %{
        "DiskAllocationResource" => String.t(),
        "DiskAllocationType" => String.t(),
        "DiskAttributeList" => list(String.t()()),
        "DiskId" => String.t(),
        "DiskNode" => String.t(),
        "DiskPath" => String.t(),
        "DiskSizeInBytes" => float(),
        "DiskStatus" => String.t()
      }
      
  """
  @type disk() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_tapes_output() :: %{
        "Marker" => String.t(),
        "Tapes" => list(tape()())
      }
      
  """
  @type describe_tapes_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_automatic_tape_creation_policies_output() :: %{
        "AutomaticTapeCreationPolicyInfos" => list(automatic_tape_creation_policy_info()())
      }
      
  """
  @type list_automatic_tape_creation_policies_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_cache_input() :: %{
        required("DiskIds") => list(String.t()()),
        required("GatewayARN") => String.t()
      }
      
  """
  @type add_cache_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      shutdown_gateway_output() :: %{
        "GatewayARN" => String.t()
      }
      
  """
  @type shutdown_gateway_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_volumes_output() :: %{
        "GatewayARN" => String.t(),
        "Marker" => String.t(),
        "VolumeInfos" => list(volume_info()())
      }
      
  """
  @type list_volumes_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_input() :: %{
        optional("Limit") => integer(),
        optional("Marker") => String.t(),
        required("ResourceARN") => String.t()
      }
      
  """
  @type list_tags_for_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      chap_info() :: %{
        "InitiatorName" => String.t(),
        "SecretToAuthenticateInitiator" => String.t(),
        "SecretToAuthenticateTarget" => String.t(),
        "TargetARN" => String.t()
      }
      
  """
  @type chap_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_upload_buffer_input() :: %{
        required("DiskIds") => list(String.t()()),
        required("GatewayARN") => String.t()
      }
      
  """
  @type add_upload_buffer_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_cached_iscsi_volume_output() :: %{
        "TargetARN" => String.t(),
        "VolumeARN" => String.t()
      }
      
  """
  @type create_cached_iscsi_volume_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_automatic_tape_creation_policy_output() :: %{
        "GatewayARN" => String.t()
      }
      
  """
  @type update_automatic_tape_creation_policy_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      automatic_tape_creation_policy_info() :: %{
        "AutomaticTapeCreationRules" => list(automatic_tape_creation_rule()()),
        "GatewayARN" => String.t()
      }
      
  """
  @type automatic_tape_creation_policy_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_chap_credentials_output() :: %{
        "InitiatorName" => String.t(),
        "TargetARN" => String.t()
      }
      
  """
  @type update_chap_credentials_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      retrieve_tape_archive_input() :: %{
        required("GatewayARN") => String.t(),
        required("TapeARN") => String.t()
      }
      
  """
  @type retrieve_tape_archive_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_automatic_tape_creation_policy_output() :: %{
        "GatewayARN" => String.t()
      }
      
  """
  @type delete_automatic_tape_creation_policy_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_automatic_tape_creation_policy_input() :: %{
        required("AutomaticTapeCreationRules") => list(automatic_tape_creation_rule()()),
        required("GatewayARN") => String.t()
      }
      
  """
  @type update_automatic_tape_creation_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_tapes_input() :: %{
        optional("KMSEncrypted") => boolean(),
        optional("KMSKey") => String.t(),
        optional("PoolId") => String.t(),
        optional("Tags") => list(tag()()),
        optional("Worm") => boolean(),
        required("ClientToken") => String.t(),
        required("GatewayARN") => String.t(),
        required("NumTapesToCreate") => integer(),
        required("TapeBarcodePrefix") => String.t(),
        required("TapeSizeInBytes") => float()
      }
      
  """
  @type create_tapes_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_gateway_output() :: %{
        "GatewayARN" => String.t()
      }
      
  """
  @type delete_gateway_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      nfs_file_share_info() :: %{
        "AuditDestinationARN" => String.t(),
        "BucketRegion" => String.t(),
        "CacheAttributes" => cache_attributes(),
        "ClientList" => list(String.t()()),
        "DefaultStorageClass" => String.t(),
        "FileShareARN" => String.t(),
        "FileShareId" => String.t(),
        "FileShareName" => String.t(),
        "FileShareStatus" => String.t(),
        "GatewayARN" => String.t(),
        "GuessMIMETypeEnabled" => boolean(),
        "KMSEncrypted" => boolean(),
        "KMSKey" => String.t(),
        "LocationARN" => String.t(),
        "NFSFileShareDefaults" => nfs_file_share_defaults(),
        "NotificationPolicy" => String.t(),
        "ObjectACL" => list(any()),
        "Path" => String.t(),
        "ReadOnly" => boolean(),
        "RequesterPays" => boolean(),
        "Role" => String.t(),
        "Squash" => String.t(),
        "Tags" => list(tag()()),
        "VPCEndpointDNSName" => String.t()
      }
      
  """
  @type nfs_file_share_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      file_system_association_info() :: %{
        "AuditDestinationARN" => String.t(),
        "CacheAttributes" => cache_attributes(),
        "EndpointNetworkConfiguration" => endpoint_network_configuration(),
        "FileSystemAssociationARN" => String.t(),
        "FileSystemAssociationStatus" => String.t(),
        "FileSystemAssociationStatusDetails" => list(file_system_association_status_detail()()),
        "GatewayARN" => String.t(),
        "LocationARN" => String.t(),
        "Tags" => list(tag()())
      }
      
  """
  @type file_system_association_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_working_storage_output() :: %{
        "DiskIds" => list(String.t()()),
        "GatewayARN" => String.t(),
        "WorkingStorageAllocatedInBytes" => float(),
        "WorkingStorageUsedInBytes" => float()
      }
      
  """
  @type describe_working_storage_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_stored_iscsi_volume_output() :: %{
        "TargetARN" => String.t(),
        "VolumeARN" => String.t(),
        "VolumeSizeInBytes" => float()
      }
      
  """
  @type create_stored_iscsi_volume_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tape_archive() :: %{
        "CompletionTime" => non_neg_integer(),
        "KMSKey" => String.t(),
        "PoolEntryDate" => non_neg_integer(),
        "PoolId" => String.t(),
        "RetentionStartDate" => non_neg_integer(),
        "RetrievedTo" => String.t(),
        "TapeARN" => String.t(),
        "TapeBarcode" => String.t(),
        "TapeCreatedDate" => non_neg_integer(),
        "TapeSizeInBytes" => float(),
        "TapeStatus" => String.t(),
        "TapeUsedInBytes" => float(),
        "Worm" => boolean()
      }
      
  """
  @type tape_archive() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      file_system_association_summary() :: %{
        "FileSystemAssociationARN" => String.t(),
        "FileSystemAssociationId" => String.t(),
        "FileSystemAssociationStatus" => String.t(),
        "GatewayARN" => String.t()
      }
      
  """
  @type file_system_association_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attach_volume_output() :: %{
        "TargetARN" => String.t(),
        "VolumeARN" => String.t()
      }
      
  """
  @type attach_volume_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_maintenance_start_time_output() :: %{
        "GatewayARN" => String.t()
      }
      
  """
  @type update_maintenance_start_time_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_availability_monitor_test_output() :: %{
        "GatewayARN" => String.t(),
        "StartTime" => non_neg_integer(),
        "Status" => list(any())
      }
      
  """
  @type describe_availability_monitor_test_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tape_pools_input() :: %{
        optional("Limit") => integer(),
        optional("Marker") => String.t(),
        optional("PoolARNs") => list(String.t()())
      }
      
  """
  @type list_tape_pools_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_tape_archives_output() :: %{
        "Marker" => String.t(),
        "TapeArchives" => list(tape_archive()())
      }
      
  """
  @type describe_tape_archives_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_nfs_file_share_input() :: %{
        optional("AuditDestinationARN") => String.t(),
        optional("CacheAttributes") => cache_attributes(),
        optional("ClientList") => list(String.t()()),
        optional("DefaultStorageClass") => String.t(),
        optional("FileShareName") => String.t(),
        optional("GuessMIMETypeEnabled") => boolean(),
        optional("KMSEncrypted") => boolean(),
        optional("KMSKey") => String.t(),
        optional("NFSFileShareDefaults") => nfs_file_share_defaults(),
        optional("NotificationPolicy") => String.t(),
        optional("ObjectACL") => list(any()),
        optional("ReadOnly") => boolean(),
        optional("RequesterPays") => boolean(),
        optional("Squash") => String.t(),
        required("FileShareARN") => String.t()
      }
      
  """
  @type update_nfs_file_share_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_smb_guest_password_input() :: %{
        required("GatewayARN") => String.t(),
        required("Password") => String.t()
      }
      
  """
  @type set_smb_guest_password_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_gateway_software_now_output() :: %{
        "GatewayARN" => String.t()
      }
      
  """
  @type update_gateway_software_now_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_bandwidth_rate_limit_schedule_input() :: %{
        required("BandwidthRateLimitIntervals") => list(bandwidth_rate_limit_interval()()),
        required("GatewayARN") => String.t()
      }
      
  """
  @type update_bandwidth_rate_limit_schedule_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_file_system_output() :: %{
        "FileSystemAssociationARN" => String.t()
      }
      
  """
  @type disassociate_file_system_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      refresh_cache_output() :: %{
        "FileShareARN" => String.t(),
        "NotificationId" => String.t()
      }
      
  """
  @type refresh_cache_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      smb_local_groups() :: %{
        "GatewayAdmins" => list(String.t()())
      }
      
  """
  @type smb_local_groups() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_bandwidth_rate_limit_input() :: %{
        required("GatewayARN") => String.t()
      }
      
  """
  @type describe_bandwidth_rate_limit_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_bandwidth_rate_limit_schedule_output() :: %{
        "GatewayARN" => String.t()
      }
      
  """
  @type update_bandwidth_rate_limit_schedule_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_smb_file_shares_input() :: %{
        required("FileShareARNList") => list(String.t()())
      }
      
  """
  @type describe_smb_file_shares_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_chap_credentials_input() :: %{
        required("TargetARN") => String.t()
      }
      
  """
  @type describe_chap_credentials_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_gateway_software_now_input() :: %{
        required("GatewayARN") => String.t()
      }
      
  """
  @type update_gateway_software_now_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_smb_local_groups_output() :: %{
        "GatewayARN" => String.t()
      }
      
  """
  @type update_smb_local_groups_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_tape_recovery_points_output() :: %{
        "GatewayARN" => String.t(),
        "Marker" => String.t(),
        "TapeRecoveryPointInfos" => list(tape_recovery_point_info()())
      }
      
  """
  @type describe_tape_recovery_points_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cache_attributes() :: %{
        "CacheStaleTimeoutInSeconds" => integer()
      }
      
  """
  @type cache_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_tape_pool_output() :: %{
        "PoolARN" => String.t()
      }
      
  """
  @type create_tape_pool_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      file_system_association_status_detail() :: %{
        "ErrorCode" => String.t()
      }
      
  """
  @type file_system_association_status_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_smb_security_strategy_input() :: %{
        required("GatewayARN") => String.t(),
        required("SMBSecurityStrategy") => list(any())
      }
      
  """
  @type update_smb_security_strategy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_working_storage_input() :: %{
        required("GatewayARN") => String.t()
      }
      
  """
  @type describe_working_storage_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_upload_buffer_output() :: %{
        "DiskIds" => list(String.t()()),
        "GatewayARN" => String.t(),
        "UploadBufferAllocatedInBytes" => float(),
        "UploadBufferUsedInBytes" => float()
      }
      
  """
  @type describe_upload_buffer_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tapes_input() :: %{
        optional("Limit") => integer(),
        optional("Marker") => String.t(),
        optional("TapeARNs") => list(String.t()())
      }
      
  """
  @type list_tapes_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activate_gateway_input() :: %{
        optional("GatewayType") => String.t(),
        optional("MediumChangerType") => String.t(),
        optional("Tags") => list(tag()()),
        optional("TapeDriveType") => String.t(),
        required("ActivationKey") => String.t(),
        required("GatewayName") => String.t(),
        required("GatewayRegion") => String.t(),
        required("GatewayTimezone") => String.t()
      }
      
  """
  @type activate_gateway_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_cached_iscsi_volumes_output() :: %{
        "CachediSCSIVolumes" => list(cached_iscsi_volume()())
      }
      
  """
  @type describe_cached_iscsi_volumes_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_nfs_file_shares_input() :: %{
        required("FileShareARNList") => list(String.t()())
      }
      
  """
  @type describe_nfs_file_shares_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_file_system_input() :: %{
        optional("ForceDelete") => boolean(),
        required("FileSystemAssociationARN") => String.t()
      }
      
  """
  @type disassociate_file_system_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_automatic_tape_creation_policy_input() :: %{
        required("GatewayARN") => String.t()
      }
      
  """
  @type delete_automatic_tape_creation_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_upload_buffer_output() :: %{
        "GatewayARN" => String.t()
      }
      
  """
  @type add_upload_buffer_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_chap_credentials_input() :: %{
        optional("SecretToAuthenticateTarget") => String.t(),
        required("InitiatorName") => String.t(),
        required("SecretToAuthenticateInitiator") => String.t(),
        required("TargetARN") => String.t()
      }
      
  """
  @type update_chap_credentials_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_bandwidth_rate_limit_output() :: %{
        "GatewayARN" => String.t()
      }
      
  """
  @type delete_bandwidth_rate_limit_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_cached_iscsi_volume_input() :: %{
        optional("KMSEncrypted") => boolean(),
        optional("KMSKey") => String.t(),
        optional("SnapshotId") => String.t(),
        optional("SourceVolumeARN") => String.t(),
        optional("Tags") => list(tag()()),
        required("ClientToken") => String.t(),
        required("GatewayARN") => String.t(),
        required("NetworkInterfaceId") => String.t(),
        required("TargetName") => String.t(),
        required("VolumeSizeInBytes") => float()
      }
      
  """
  @type create_cached_iscsi_volume_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_bandwidth_rate_limit_schedule_input() :: %{
        required("GatewayARN") => String.t()
      }
      
  """
  @type describe_bandwidth_rate_limit_schedule_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_volume_output() :: %{
        "VolumeARN" => String.t()
      }
      
  """
  @type delete_volume_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_smb_guest_password_output() :: %{
        "GatewayARN" => String.t()
      }
      
  """
  @type set_smb_guest_password_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_working_storage_input() :: %{
        required("DiskIds") => list(String.t()()),
        required("GatewayARN") => String.t()
      }
      
  """
  @type add_working_storage_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_smb_file_share_output() :: %{
        "FileShareARN" => String.t()
      }
      
  """
  @type update_smb_file_share_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      refresh_cache_input() :: %{
        optional("FolderList") => list(String.t()()),
        optional("Recursive") => boolean(),
        required("FileShareARN") => String.t()
      }
      
  """
  @type refresh_cache_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_gateway_request_exception() :: %{
        "error" => storage_gateway_error(),
        "message" => String.t()
      }
      
  """
  @type invalid_gateway_request_exception() :: %{String.t() => any()}

  @type activate_gateway_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type add_cache_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type add_tags_to_resource_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type add_upload_buffer_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type add_working_storage_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type assign_tape_pool_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type associate_file_system_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type attach_volume_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type cancel_archival_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type cancel_retrieval_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type create_cached_iscsi_volume_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type create_nfs_file_share_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type create_smb_file_share_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type create_snapshot_errors() ::
          invalid_gateway_request_exception()
          | internal_server_error()
          | service_unavailable_error()

  @type create_snapshot_from_volume_recovery_point_errors() ::
          invalid_gateway_request_exception()
          | internal_server_error()
          | service_unavailable_error()

  @type create_stored_iscsi_volume_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type create_tape_pool_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type create_tape_with_barcode_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type create_tapes_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type delete_automatic_tape_creation_policy_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type delete_bandwidth_rate_limit_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type delete_chap_credentials_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type delete_file_share_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type delete_gateway_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type delete_snapshot_schedule_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type delete_tape_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type delete_tape_archive_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type delete_tape_pool_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type delete_volume_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type describe_availability_monitor_test_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type describe_bandwidth_rate_limit_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type describe_bandwidth_rate_limit_schedule_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type describe_cache_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type describe_cached_iscsi_volumes_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type describe_chap_credentials_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type describe_file_system_associations_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type describe_gateway_information_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type describe_maintenance_start_time_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type describe_nfs_file_shares_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type describe_smb_file_shares_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type describe_smb_settings_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type describe_snapshot_schedule_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type describe_stored_iscsi_volumes_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type describe_tape_archives_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type describe_tape_recovery_points_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type describe_tapes_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type describe_upload_buffer_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type describe_vtl_devices_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type describe_working_storage_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type detach_volume_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type disable_gateway_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type disassociate_file_system_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type join_domain_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type list_automatic_tape_creation_policies_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type list_file_shares_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type list_file_system_associations_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type list_gateways_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type list_local_disks_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type list_tags_for_resource_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type list_tape_pools_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type list_tapes_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type list_volume_initiators_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type list_volume_recovery_points_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type list_volumes_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type notify_when_uploaded_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type refresh_cache_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type remove_tags_from_resource_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type reset_cache_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type retrieve_tape_archive_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type retrieve_tape_recovery_point_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type set_local_console_password_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type set_smb_guest_password_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type shutdown_gateway_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type start_availability_monitor_test_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type start_gateway_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type update_automatic_tape_creation_policy_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type update_bandwidth_rate_limit_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type update_bandwidth_rate_limit_schedule_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type update_chap_credentials_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type update_file_system_association_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type update_gateway_information_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type update_gateway_software_now_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type update_maintenance_start_time_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type update_nfs_file_share_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type update_smb_file_share_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type update_smb_file_share_visibility_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type update_smb_local_groups_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type update_smb_security_strategy_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type update_snapshot_schedule_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type update_vtl_device_type_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  def metadata do
    %{
      api_version: "2013-06-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "storagegateway",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Storage Gateway",
      signature_version: "v4",
      signing_name: "storagegateway",
      target_prefix: "StorageGateway_20130630"
    }
  end

  @doc """
  Activates the gateway you previously deployed on your host. In the activation
  process, you specify information such as the Amazon Web Services Region that
  you want to use for storing snapshots or tapes, the time zone for scheduled
  snapshots the gateway snapshot schedule window, an activation key, and a name
  for your gateway. The activation process also associates your gateway with
  your account. For more information, see `UpdateGatewayInformation`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20ActivateGateway&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:activate_gateway_input`)
    %{
      optional("GatewayType") => String.t(),
      optional("MediumChangerType") => String.t(),
      optional("Tags") => list(tag()()),
      optional("TapeDriveType") => String.t(),
      required("ActivationKey") => String.t(),
      required("GatewayName") => String.t(),
      required("GatewayRegion") => String.t(),
      required("GatewayTimezone") => String.t()
    }
  """

  @spec activate_gateway(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, activate_gateway_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, activate_gateway_errors()}

  def activate_gateway(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ActivateGateway", input, options)
  end

  @doc """
  Configures one or more gateway local disks as cache for a gateway. This
  operation is only supported in the cached volume, tape, and file gateway type
  (see [How Storage Gateway works
  (architecture)](https://docs.aws.amazon.com/storagegateway/latest/userguide/StorageGatewayConcepts.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20AddCache&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:add_cache_input`)
    %{
      required("DiskIds") => list(String.t()()),
      required("GatewayARN") => String.t()
    }
  """

  @spec add_cache(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, add_cache_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, add_cache_errors()}

  def add_cache(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AddCache", input, options)
  end

  @doc """
  Adds one or more tags to the specified resource. You use tags to add metadata to
  resources, which you can use to categorize these resources. For example, you
  can categorize resources by purpose, owner, environment, or team. Each tag
  consists of a key and a value, which you define. You can add tags to the
  following Storage Gateway resources:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20AddTagsToResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:add_tags_to_resource_input`)
    %{
      required("ResourceARN") => String.t(),
      required("Tags") => list(tag()())
    }
  """

  @spec add_tags_to_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, add_tags_to_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, add_tags_to_resource_errors()}

  def add_tags_to_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AddTagsToResource", input, options)
  end

  @doc """
  Configures one or more gateway local disks as upload buffer for a specified
  gateway. This operation is supported for the stored volume, cached volume, and
  tape gateway types.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20AddUploadBuffer&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:add_upload_buffer_input`)
    %{
      required("DiskIds") => list(String.t()()),
      required("GatewayARN") => String.t()
    }
  """

  @spec add_upload_buffer(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, add_upload_buffer_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, add_upload_buffer_errors()}

  def add_upload_buffer(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AddUploadBuffer", input, options)
  end

  @doc """
  Configures one or more gateway local disks as working storage for a gateway.
  This operation is only supported in the stored volume gateway type. This
  operation is deprecated in cached volume API version 20120630. Use
  `AddUploadBuffer` instead. Working storage is also referred to as upload
  buffer. You can also use the `AddUploadBuffer` operation to add upload buffer
  to a stored volume gateway.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20AddWorkingStorage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:add_working_storage_input`)
    %{
      required("DiskIds") => list(String.t()()),
      required("GatewayARN") => String.t()
    }
  """

  @spec add_working_storage(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, add_working_storage_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, add_working_storage_errors()}

  def add_working_storage(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AddWorkingStorage", input, options)
  end

  @doc """
  Assigns a tape to a tape pool for archiving. The tape assigned to a pool is
  archived in the S3 storage class that is associated with the pool. When you
  use your backup application to eject the tape, the tape is archived directly
  into the S3 storage class (S3 Glacier or S3 Glacier Deep Archive) that
  corresponds to the pool.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20AssignTapePool&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:assign_tape_pool_input`)
    %{
      optional("BypassGovernanceRetention") => boolean(),
      required("PoolId") => String.t(),
      required("TapeARN") => String.t()
    }
  """

  @spec assign_tape_pool(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, assign_tape_pool_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, assign_tape_pool_errors()}

  def assign_tape_pool(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssignTapePool", input, options)
  end

  @doc """
  Associate an Amazon FSx file system with the FSx File Gateway. After the
  association process is complete, the file shares on the Amazon FSx file system
  are available for access through the gateway. This operation only supports the
  FSx File Gateway type.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20AssociateFileSystem&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:associate_file_system_input`)
    %{
      optional("AuditDestinationARN") => String.t(),
      optional("CacheAttributes") => cache_attributes(),
      optional("EndpointNetworkConfiguration") => endpoint_network_configuration(),
      optional("Tags") => list(tag()()),
      required("ClientToken") => String.t(),
      required("GatewayARN") => String.t(),
      required("LocationARN") => String.t(),
      required("Password") => String.t(),
      required("UserName") => String.t()
    }
  """

  @spec associate_file_system(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, associate_file_system_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_file_system_errors()}

  def associate_file_system(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssociateFileSystem", input, options)
  end

  @doc """
  Connects a volume to an iSCSI connection and then attaches the volume to the
  specified gateway. Detaching and attaching a volume enables you to recover
  your data from one gateway to a different gateway without creating a snapshot.
  It also makes it easier to move your volumes from an on-premises gateway to a
  gateway hosted on an Amazon EC2 instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20AttachVolume&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:attach_volume_input`)
    %{
      optional("DiskId") => String.t(),
      optional("TargetName") => String.t(),
      required("GatewayARN") => String.t(),
      required("NetworkInterfaceId") => String.t(),
      required("VolumeARN") => String.t()
    }
  """

  @spec attach_volume(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, attach_volume_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, attach_volume_errors()}

  def attach_volume(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AttachVolume", input, options)
  end

  @doc """
  Cancels archiving of a virtual tape to the virtual tape shelf (VTS) after the
  archiving process is initiated. This operation is only supported in the tape
  gateway type.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20CancelArchival&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:cancel_archival_input`)
    %{
      required("GatewayARN") => String.t(),
      required("TapeARN") => String.t()
    }
  """

  @spec cancel_archival(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, cancel_archival_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_archival_errors()}

  def cancel_archival(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CancelArchival", input, options)
  end

  @doc """
  Cancels retrieval of a virtual tape from the virtual tape shelf (VTS) to a
  gateway after the retrieval process is initiated. The virtual tape is returned
  to the VTS. This operation is only supported in the tape gateway type.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20CancelRetrieval&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:cancel_retrieval_input`)
    %{
      required("GatewayARN") => String.t(),
      required("TapeARN") => String.t()
    }
  """

  @spec cancel_retrieval(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, cancel_retrieval_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_retrieval_errors()}

  def cancel_retrieval(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CancelRetrieval", input, options)
  end

  @doc """
  Creates a cached volume on a specified cached volume gateway. This operation is
  only supported in the cached volume gateway type. Cache storage must be
  allocated to the gateway before you can create a cached volume. Use the
  `AddCache` operation to add cache storage to a gateway.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20CreateCachediSCSIVolume&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_cached_iscsi_volume_input`)
    %{
      optional("KMSEncrypted") => boolean(),
      optional("KMSKey") => String.t(),
      optional("SnapshotId") => String.t(),
      optional("SourceVolumeARN") => String.t(),
      optional("Tags") => list(tag()()),
      required("ClientToken") => String.t(),
      required("GatewayARN") => String.t(),
      required("NetworkInterfaceId") => String.t(),
      required("TargetName") => String.t(),
      required("VolumeSizeInBytes") => float()
    }
  """

  @spec create_cached_iscsi_volume(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_cached_iscsi_volume_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_cached_iscsi_volume_errors()}

  def create_cached_iscsi_volume(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateCachediSCSIVolume", input, options)
  end

  @doc """
  Creates a Network File System (NFS) file share on an existing S3 File Gateway.
  In Storage Gateway, a file share is a file system mount point backed by Amazon
  S3 cloud storage. Storage Gateway exposes file shares using an NFS interface.
  This operation is only supported for S3 File Gateways.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20CreateNFSFileShare&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_nfs_file_share_input`)
    %{
      optional("AuditDestinationARN") => String.t(),
      optional("BucketRegion") => String.t(),
      optional("CacheAttributes") => cache_attributes(),
      optional("ClientList") => list(String.t()()),
      optional("DefaultStorageClass") => String.t(),
      optional("FileShareName") => String.t(),
      optional("GuessMIMETypeEnabled") => boolean(),
      optional("KMSEncrypted") => boolean(),
      optional("KMSKey") => String.t(),
      optional("NFSFileShareDefaults") => nfs_file_share_defaults(),
      optional("NotificationPolicy") => String.t(),
      optional("ObjectACL") => list(any()),
      optional("ReadOnly") => boolean(),
      optional("RequesterPays") => boolean(),
      optional("Squash") => String.t(),
      optional("Tags") => list(tag()()),
      optional("VPCEndpointDNSName") => String.t(),
      required("ClientToken") => String.t(),
      required("GatewayARN") => String.t(),
      required("LocationARN") => String.t(),
      required("Role") => String.t()
    }
  """

  @spec create_nfs_file_share(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_nfs_file_share_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_nfs_file_share_errors()}

  def create_nfs_file_share(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateNFSFileShare", input, options)
  end

  @doc """
  Creates a Server Message Block (SMB) file share on an existing S3 File Gateway.
  In Storage Gateway, a file share is a file system mount point backed by Amazon
  S3 cloud storage. Storage Gateway exposes file shares using an SMB interface.
  This operation is only supported for S3 File Gateways.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20CreateSMBFileShare&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_smb_file_share_input`)
    %{
      optional("AccessBasedEnumeration") => boolean(),
      optional("AdminUserList") => list(String.t()()),
      optional("AuditDestinationARN") => String.t(),
      optional("Authentication") => String.t(),
      optional("BucketRegion") => String.t(),
      optional("CacheAttributes") => cache_attributes(),
      optional("CaseSensitivity") => list(any()),
      optional("DefaultStorageClass") => String.t(),
      optional("FileShareName") => String.t(),
      optional("GuessMIMETypeEnabled") => boolean(),
      optional("InvalidUserList") => list(String.t()()),
      optional("KMSEncrypted") => boolean(),
      optional("KMSKey") => String.t(),
      optional("NotificationPolicy") => String.t(),
      optional("ObjectACL") => list(any()),
      optional("OplocksEnabled") => boolean(),
      optional("ReadOnly") => boolean(),
      optional("RequesterPays") => boolean(),
      optional("SMBACLEnabled") => boolean(),
      optional("Tags") => list(tag()()),
      optional("VPCEndpointDNSName") => String.t(),
      optional("ValidUserList") => list(String.t()()),
      required("ClientToken") => String.t(),
      required("GatewayARN") => String.t(),
      required("LocationARN") => String.t(),
      required("Role") => String.t()
    }
  """

  @spec create_smb_file_share(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_smb_file_share_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_smb_file_share_errors()}

  def create_smb_file_share(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateSMBFileShare", input, options)
  end

  @doc """
  Initiates a snapshot of a volume. Storage Gateway provides the ability to back
  up point-in-time snapshots of your data to Amazon Simple Storage (Amazon S3)
  for durable off-site recovery, and also import the data to an Amazon Elastic
  Block Store (EBS) volume in Amazon Elastic Compute Cloud (EC2). You can take
  snapshots of your gateway volume on a scheduled or ad hoc basis. This API
  enables you to take an ad hoc snapshot. For more information, see [Editing a
  snapshot
  schedule](https://docs.aws.amazon.com/storagegateway/latest/userguide/managing-volumes.html#SchedulingSnapshot).
  In the `CreateSnapshot` request, you identify the volume by providing its
  Amazon Resource Name (ARN). You must also provide description for the
  snapshot. When Storage Gateway takes the snapshot of specified volume, the
  snapshot and description appears in the Storage Gateway console. In response,
  Storage Gateway returns you a snapshot ID. You can use this snapshot ID to
  check the snapshot progress or later use it when you want to create a volume
  from a snapshot. This operation is only supported in stored and cached volume
  gateway type.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20CreateSnapshot&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_snapshot_input`)
    %{
      optional("Tags") => list(tag()()),
      required("SnapshotDescription") => String.t(),
      required("VolumeARN") => String.t()
    }
  """

  @spec create_snapshot(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_snapshot_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_snapshot_errors()}

  def create_snapshot(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateSnapshot", input, options)
  end

  @doc """
  Initiates a snapshot of a gateway from a volume recovery point. This operation
  is only supported in the cached volume gateway type. A volume recovery point
  is a point in time at which all data of the volume is consistent and from
  which you can create a snapshot. To get a list of volume recovery point for
  cached volume gateway, use `ListVolumeRecoveryPoints`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20CreateSnapshotFromVolumeRecoveryPoint&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_snapshot_from_volume_recovery_point_input`)
    %{
      optional("Tags") => list(tag()()),
      required("SnapshotDescription") => String.t(),
      required("VolumeARN") => String.t()
    }
  """

  @spec create_snapshot_from_volume_recovery_point(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_snapshot_from_volume_recovery_point_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_snapshot_from_volume_recovery_point_errors()}

  def create_snapshot_from_volume_recovery_point(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateSnapshotFromVolumeRecoveryPoint", input, options)
  end

  @doc """
  Creates a volume on a specified gateway. This operation is only supported in the
  stored volume gateway type. The size of the volume to create is inferred from
  the disk size. You can choose to preserve existing data on the disk, create
  volume from an existing snapshot, or create an empty volume. If you choose to
  create an empty gateway volume, then any existing data on the disk is erased.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20CreateStorediSCSIVolume&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_stored_iscsi_volume_input`)
    %{
      optional("KMSEncrypted") => boolean(),
      optional("KMSKey") => String.t(),
      optional("SnapshotId") => String.t(),
      optional("Tags") => list(tag()()),
      required("DiskId") => String.t(),
      required("GatewayARN") => String.t(),
      required("NetworkInterfaceId") => String.t(),
      required("PreserveExistingData") => boolean(),
      required("TargetName") => String.t()
    }
  """

  @spec create_stored_iscsi_volume(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_stored_iscsi_volume_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_stored_iscsi_volume_errors()}

  def create_stored_iscsi_volume(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateStorediSCSIVolume", input, options)
  end

  @doc """
  Creates a new custom tape pool. You can use custom tape pool to enable tape
  retention lock on tapes that are archived in the custom pool.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20CreateTapePool&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_tape_pool_input`)
    %{
      optional("RetentionLockTimeInDays") => integer(),
      optional("RetentionLockType") => list(any()),
      optional("Tags") => list(tag()()),
      required("PoolName") => String.t(),
      required("StorageClass") => list(any())
    }
  """

  @spec create_tape_pool(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_tape_pool_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_tape_pool_errors()}

  def create_tape_pool(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateTapePool", input, options)
  end

  @doc """
  Creates a virtual tape by using your own barcode. You write data to the virtual
  tape and then archive the tape. A barcode is unique and cannot be reused if it
  has already been used on a tape. This applies to barcodes used on deleted
  tapes. This operation is only supported in the tape gateway type.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20CreateTapeWithBarcode&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_tape_with_barcode_input`)
    %{
      optional("KMSEncrypted") => boolean(),
      optional("KMSKey") => String.t(),
      optional("PoolId") => String.t(),
      optional("Tags") => list(tag()()),
      optional("Worm") => boolean(),
      required("GatewayARN") => String.t(),
      required("TapeBarcode") => String.t(),
      required("TapeSizeInBytes") => float()
    }
  """

  @spec create_tape_with_barcode(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_tape_with_barcode_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_tape_with_barcode_errors()}

  def create_tape_with_barcode(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateTapeWithBarcode", input, options)
  end

  @doc """
  Creates one or more virtual tapes. You write data to the virtual tapes and then
  archive the tapes. This operation is only supported in the tape gateway type.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20CreateTapes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_tapes_input`)
    %{
      optional("KMSEncrypted") => boolean(),
      optional("KMSKey") => String.t(),
      optional("PoolId") => String.t(),
      optional("Tags") => list(tag()()),
      optional("Worm") => boolean(),
      required("ClientToken") => String.t(),
      required("GatewayARN") => String.t(),
      required("NumTapesToCreate") => integer(),
      required("TapeBarcodePrefix") => String.t(),
      required("TapeSizeInBytes") => float()
    }
  """

  @spec create_tapes(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_tapes_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_tapes_errors()}

  def create_tapes(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateTapes", input, options)
  end

  @doc """
  Deletes the automatic tape creation policy of a gateway. If you delete this
  policy, new virtual tapes must be created manually. Use the Amazon Resource
  Name (ARN) of the gateway in your request to remove the policy.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20DeleteAutomaticTapeCreationPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_automatic_tape_creation_policy_input`)
    %{
      required("GatewayARN") => String.t()
    }
  """

  @spec delete_automatic_tape_creation_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_automatic_tape_creation_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_automatic_tape_creation_policy_errors()}

  def delete_automatic_tape_creation_policy(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteAutomaticTapeCreationPolicy", input, options)
  end

  @doc """
  Deletes the bandwidth rate limits of a gateway. You can delete either the upload
  and download bandwidth rate limit, or you can delete both. If you delete only
  one of the limits, the other limit remains unchanged. To specify which gateway
  to work with, use the Amazon Resource Name (ARN) of the gateway in your
  request. This operation is supported only for the stored volume, cached
  volume, and tape gateway types.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20DeleteBandwidthRateLimit&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_bandwidth_rate_limit_input`)
    %{
      required("BandwidthType") => String.t(),
      required("GatewayARN") => String.t()
    }
  """

  @spec delete_bandwidth_rate_limit(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_bandwidth_rate_limit_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_bandwidth_rate_limit_errors()}

  def delete_bandwidth_rate_limit(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteBandwidthRateLimit", input, options)
  end

  @doc """
  Deletes Challenge-Handshake Authentication Protocol (CHAP) credentials for a
  specified iSCSI target and initiator pair. This operation is supported in
  volume and tape gateway types.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20DeleteChapCredentials&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_chap_credentials_input`)
    %{
      required("InitiatorName") => String.t(),
      required("TargetARN") => String.t()
    }
  """

  @spec delete_chap_credentials(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_chap_credentials_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_chap_credentials_errors()}

  def delete_chap_credentials(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteChapCredentials", input, options)
  end

  @doc """
  Deletes a file share from an S3 File Gateway. This operation is only supported
  for S3 File Gateways.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20DeleteFileShare&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_file_share_input`)
    %{
      optional("ForceDelete") => boolean(),
      required("FileShareARN") => String.t()
    }
  """

  @spec delete_file_share(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_file_share_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_file_share_errors()}

  def delete_file_share(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteFileShare", input, options)
  end

  @doc """
  Deletes a gateway. To specify which gateway to delete, use the Amazon Resource
  Name (ARN) of the gateway in your request. The operation deletes the gateway;
  however, it does not delete the gateway virtual machine (VM) from your host
  computer. After you delete a gateway, you cannot reactivate it. Completed
  snapshots of the gateway volumes are not deleted upon deleting the gateway,
  however, pending snapshots will not complete. After you delete a gateway, your
  next step is to remove it from your environment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20DeleteGateway&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_gateway_input`)
    %{
      required("GatewayARN") => String.t()
    }
  """

  @spec delete_gateway(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_gateway_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_gateway_errors()}

  def delete_gateway(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteGateway", input, options)
  end

  @doc """
  Deletes a snapshot of a volume.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20DeleteSnapshotSchedule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_snapshot_schedule_input`)
    %{
      required("VolumeARN") => String.t()
    }
  """

  @spec delete_snapshot_schedule(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_snapshot_schedule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_snapshot_schedule_errors()}

  def delete_snapshot_schedule(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteSnapshotSchedule", input, options)
  end

  @doc """
  Deletes the specified virtual tape. This operation is only supported in the tape
  gateway type.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20DeleteTape&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_tape_input`)
    %{
      optional("BypassGovernanceRetention") => boolean(),
      required("GatewayARN") => String.t(),
      required("TapeARN") => String.t()
    }
  """

  @spec delete_tape(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_tape_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_tape_errors()}

  def delete_tape(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteTape", input, options)
  end

  @doc """
  Deletes the specified virtual tape from the virtual tape shelf (VTS). This
  operation is only supported in the tape gateway type.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20DeleteTapeArchive&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_tape_archive_input`)
    %{
      optional("BypassGovernanceRetention") => boolean(),
      required("TapeARN") => String.t()
    }
  """

  @spec delete_tape_archive(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_tape_archive_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_tape_archive_errors()}

  def delete_tape_archive(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteTapeArchive", input, options)
  end

  @doc """
  Delete a custom tape pool. A custom tape pool can only be deleted if there are
  no tapes in the pool and if there are no automatic tape creation policies that
  reference the custom tape pool.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20DeleteTapePool&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_tape_pool_input`)
    %{
      required("PoolARN") => String.t()
    }
  """

  @spec delete_tape_pool(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_tape_pool_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_tape_pool_errors()}

  def delete_tape_pool(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteTapePool", input, options)
  end

  @doc """
  Deletes the specified storage volume that you previously created using the
  `CreateCachediSCSIVolume` or `CreateStorediSCSIVolume` API. This operation is
  only supported in the cached volume and stored volume types. For stored volume
  gateways, the local disk that was configured as the storage volume is not
  deleted. You can reuse the local disk to create another storage volume. Before
  you delete a volume, make sure there are no iSCSI connections to the volume
  you are deleting. You should also make sure there is no snapshot in progress.
  You can use the Amazon Elastic Compute Cloud (Amazon EC2) API to query
  snapshots on the volume you are deleting and check the snapshot status. For
  more information, go to
  [DescribeSnapshots](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSnapshots.html)
  in the *Amazon Elastic Compute Cloud API Reference*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20DeleteVolume&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_volume_input`)
    %{
      required("VolumeARN") => String.t()
    }
  """

  @spec delete_volume(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_volume_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_volume_errors()}

  def delete_volume(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteVolume", input, options)
  end

  @doc """
  Returns information about the most recent high availability monitoring test that
  was performed on the host in a cluster. If a test isn't performed, the status
  and start time in the response would be null.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20DescribeAvailabilityMonitorTest&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_availability_monitor_test_input`)
    %{
      required("GatewayARN") => String.t()
    }
  """

  @spec describe_availability_monitor_test(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_availability_monitor_test_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_availability_monitor_test_errors()}

  def describe_availability_monitor_test(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeAvailabilityMonitorTest", input, options)
  end

  @doc """
  Returns the bandwidth rate limits of a gateway. By default, these limits are not
  set, which means no bandwidth rate limiting is in effect. This operation is
  supported only for the stored volume, cached volume, and tape gateway types.
  To describe bandwidth rate limits for S3 file gateways, use
  `DescribeBandwidthRateLimitSchedule`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20DescribeBandwidthRateLimit&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_bandwidth_rate_limit_input`)
    %{
      required("GatewayARN") => String.t()
    }
  """

  @spec describe_bandwidth_rate_limit(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_bandwidth_rate_limit_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_bandwidth_rate_limit_errors()}

  def describe_bandwidth_rate_limit(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeBandwidthRateLimit", input, options)
  end

  @doc """
  Returns information about the bandwidth rate limit schedule of a gateway. By
  default, gateways do not have bandwidth rate limit schedules, which means no
  bandwidth rate limiting is in effect. This operation is supported only for
  volume, tape and S3 file gateways. FSx file gateways do not support bandwidth
  rate limits. This operation returns information about a gateway's bandwidth
  rate limit schedule. A bandwidth rate limit schedule consists of one or more
  bandwidth rate limit intervals. A bandwidth rate limit interval defines a
  period of time on one or more days of the week, during which bandwidth rate
  limits are specified for uploading, downloading, or both.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20DescribeBandwidthRateLimitSchedule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_bandwidth_rate_limit_schedule_input`)
    %{
      required("GatewayARN") => String.t()
    }
  """

  @spec describe_bandwidth_rate_limit_schedule(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_bandwidth_rate_limit_schedule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_bandwidth_rate_limit_schedule_errors()}

  def describe_bandwidth_rate_limit_schedule(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeBandwidthRateLimitSchedule", input, options)
  end

  @doc """
  Returns information about the cache of a gateway. This operation is only
  supported in the cached volume, tape, and file gateway types.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20DescribeCache&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_cache_input`)
    %{
      required("GatewayARN") => String.t()
    }
  """

  @spec describe_cache(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_cache_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_cache_errors()}

  def describe_cache(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeCache", input, options)
  end

  @doc """
  Returns a description of the gateway volumes specified in the request. This
  operation is only supported in the cached volume gateway types.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20DescribeCachediSCSIVolumes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_cached_iscsi_volumes_input`)
    %{
      required("VolumeARNs") => list(String.t()())
    }
  """

  @spec describe_cached_iscsi_volumes(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_cached_iscsi_volumes_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_cached_iscsi_volumes_errors()}

  def describe_cached_iscsi_volumes(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeCachediSCSIVolumes", input, options)
  end

  @doc """
  Returns an array of Challenge-Handshake Authentication Protocol (CHAP)
  credentials information for a specified iSCSI target, one for each
  target-initiator pair. This operation is supported in the volume and tape
  gateway types.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20DescribeChapCredentials&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_chap_credentials_input`)
    %{
      required("TargetARN") => String.t()
    }
  """

  @spec describe_chap_credentials(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_chap_credentials_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_chap_credentials_errors()}

  def describe_chap_credentials(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeChapCredentials", input, options)
  end

  @doc """
  Gets the file system association information. This operation is only supported
  for FSx File Gateways.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20DescribeFileSystemAssociations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_file_system_associations_input`)
    %{
      required("FileSystemAssociationARNList") => list(String.t()())
    }
  """

  @spec describe_file_system_associations(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_file_system_associations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_file_system_associations_errors()}

  def describe_file_system_associations(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeFileSystemAssociations", input, options)
  end

  @doc """
  Returns metadata about a gateway such as its name, network interfaces, time
  zone, status, and software version. To specify which gateway to describe, use
  the Amazon Resource Name (ARN) of the gateway in your request.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20DescribeGatewayInformation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_gateway_information_input`)
    %{
      required("GatewayARN") => String.t()
    }
  """

  @spec describe_gateway_information(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_gateway_information_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_gateway_information_errors()}

  def describe_gateway_information(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeGatewayInformation", input, options)
  end

  @doc """
  Returns your gateway's maintenance window schedule information, with values for
  monthly or weekly cadence, specific day and time to begin maintenance, and
  which types of updates to apply. Time values returned are for the gateway's
  time zone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20DescribeMaintenanceStartTime&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_maintenance_start_time_input`)
    %{
      required("GatewayARN") => String.t()
    }
  """

  @spec describe_maintenance_start_time(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_maintenance_start_time_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_maintenance_start_time_errors()}

  def describe_maintenance_start_time(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeMaintenanceStartTime", input, options)
  end

  @doc """
  Gets a description for one or more Network File System (NFS) file shares from an
  S3 File Gateway. This operation is only supported for S3 File Gateways.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20DescribeNFSFileShares&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_nfs_file_shares_input`)
    %{
      required("FileShareARNList") => list(String.t()())
    }
  """

  @spec describe_nfs_file_shares(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_nfs_file_shares_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_nfs_file_shares_errors()}

  def describe_nfs_file_shares(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeNFSFileShares", input, options)
  end

  @doc """
  Gets a description for one or more Server Message Block (SMB) file shares from a
  S3 File Gateway. This operation is only supported for S3 File Gateways.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20DescribeSMBFileShares&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_smb_file_shares_input`)
    %{
      required("FileShareARNList") => list(String.t()())
    }
  """

  @spec describe_smb_file_shares(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_smb_file_shares_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_smb_file_shares_errors()}

  def describe_smb_file_shares(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeSMBFileShares", input, options)
  end

  @doc """
  Gets a description of a Server Message Block (SMB) file share settings from a
  file gateway. This operation is only supported for file gateways.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20DescribeSMBSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_smb_settings_input`)
    %{
      required("GatewayARN") => String.t()
    }
  """

  @spec describe_smb_settings(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_smb_settings_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_smb_settings_errors()}

  def describe_smb_settings(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeSMBSettings", input, options)
  end

  @doc """
  Describes the snapshot schedule for the specified gateway volume. The snapshot
  schedule information includes intervals at which snapshots are automatically
  initiated on the volume. This operation is only supported in the cached volume
  and stored volume types.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20DescribeSnapshotSchedule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_snapshot_schedule_input`)
    %{
      required("VolumeARN") => String.t()
    }
  """

  @spec describe_snapshot_schedule(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_snapshot_schedule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_snapshot_schedule_errors()}

  def describe_snapshot_schedule(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeSnapshotSchedule", input, options)
  end

  @doc """
  Returns the description of the gateway volumes specified in the request. The
  list of gateway volumes in the request must be from one gateway. In the
  response, Storage Gateway returns volume information sorted by volume ARNs.
  This operation is only supported in stored volume gateway type.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20DescribeStorediSCSIVolumes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_stored_iscsi_volumes_input`)
    %{
      required("VolumeARNs") => list(String.t()())
    }
  """

  @spec describe_stored_iscsi_volumes(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_stored_iscsi_volumes_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_stored_iscsi_volumes_errors()}

  def describe_stored_iscsi_volumes(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeStorediSCSIVolumes", input, options)
  end

  @doc """
  Returns a description of specified virtual tapes in the virtual tape shelf
  (VTS). This operation is only supported in the tape gateway type.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20DescribeTapeArchives&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_tape_archives_input`)
    %{
      optional("Limit") => integer(),
      optional("Marker") => String.t(),
      optional("TapeARNs") => list(String.t()())
    }
  """

  @spec describe_tape_archives(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_tape_archives_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_tape_archives_errors()}

  def describe_tape_archives(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeTapeArchives", input, options)
  end

  @doc """
  Returns a list of virtual tape recovery points that are available for the
  specified tape gateway.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20DescribeTapeRecoveryPoints&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_tape_recovery_points_input`)
    %{
      optional("Limit") => integer(),
      optional("Marker") => String.t(),
      required("GatewayARN") => String.t()
    }
  """

  @spec describe_tape_recovery_points(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_tape_recovery_points_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_tape_recovery_points_errors()}

  def describe_tape_recovery_points(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeTapeRecoveryPoints", input, options)
  end

  @doc """
  Returns a description of virtual tapes that correspond to the specified Amazon
  Resource Names (ARNs). If `TapeARN` is not specified, returns a description of
  the virtual tapes associated with the specified gateway. This operation is
  only supported for the tape gateway type.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20DescribeTapes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_tapes_input`)
    %{
      optional("Limit") => integer(),
      optional("Marker") => String.t(),
      optional("TapeARNs") => list(String.t()()),
      required("GatewayARN") => String.t()
    }
  """

  @spec describe_tapes(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_tapes_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_tapes_errors()}

  def describe_tapes(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeTapes", input, options)
  end

  @doc """
  Returns information about the upload buffer of a gateway. This operation is
  supported for the stored volume, cached volume, and tape gateway types.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20DescribeUploadBuffer&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_upload_buffer_input`)
    %{
      required("GatewayARN") => String.t()
    }
  """

  @spec describe_upload_buffer(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_upload_buffer_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_upload_buffer_errors()}

  def describe_upload_buffer(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeUploadBuffer", input, options)
  end

  @doc """
  Returns a description of virtual tape library (VTL) devices for the specified
  tape gateway. In the response, Storage Gateway returns VTL device information.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20DescribeVTLDevices&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_vtl_devices_input`)
    %{
      optional("Limit") => integer(),
      optional("Marker") => String.t(),
      optional("VTLDeviceARNs") => list(String.t()()),
      required("GatewayARN") => String.t()
    }
  """

  @spec describe_vtl_devices(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_vtl_devices_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_vtl_devices_errors()}

  def describe_vtl_devices(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeVTLDevices", input, options)
  end

  @doc """
  Returns information about the working storage of a gateway. This operation is
  only supported in the stored volumes gateway type. This operation is
  deprecated in cached volumes API version (20120630). Use DescribeUploadBuffer
  instead. Working storage is also referred to as upload buffer. You can also
  use the DescribeUploadBuffer operation to add upload buffer to a stored volume
  gateway.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20DescribeWorkingStorage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_working_storage_input`)
    %{
      required("GatewayARN") => String.t()
    }
  """

  @spec describe_working_storage(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_working_storage_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_working_storage_errors()}

  def describe_working_storage(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeWorkingStorage", input, options)
  end

  @doc """
  Disconnects a volume from an iSCSI connection and then detaches the volume from
  the specified gateway. Detaching and attaching a volume enables you to recover
  your data from one gateway to a different gateway without creating a snapshot.
  It also makes it easier to move your volumes from an on-premises gateway to a
  gateway hosted on an Amazon EC2 instance. This operation is only supported in
  the volume gateway type.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20DetachVolume&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:detach_volume_input`)
    %{
      optional("ForceDetach") => boolean(),
      required("VolumeARN") => String.t()
    }
  """

  @spec detach_volume(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, detach_volume_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, detach_volume_errors()}

  def detach_volume(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DetachVolume", input, options)
  end

  @doc """
  Disables a tape gateway when the gateway is no longer functioning. For example,
  if your gateway VM is damaged, you can disable the gateway so you can recover
  virtual tapes. Use this operation for a tape gateway that is not reachable or
  not functioning. This operation is only supported in the tape gateway type.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20DisableGateway&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:disable_gateway_input`)
    %{
      required("GatewayARN") => String.t()
    }
  """

  @spec disable_gateway(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, disable_gateway_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disable_gateway_errors()}

  def disable_gateway(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisableGateway", input, options)
  end

  @doc """
  Disassociates an Amazon FSx file system from the specified gateway. After the
  disassociation process finishes, the gateway can no longer access the Amazon
  FSx file system. This operation is only supported in the FSx File Gateway
  type.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20DisassociateFileSystem&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:disassociate_file_system_input`)
    %{
      optional("ForceDelete") => boolean(),
      required("FileSystemAssociationARN") => String.t()
    }
  """

  @spec disassociate_file_system(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, disassociate_file_system_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_file_system_errors()}

  def disassociate_file_system(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisassociateFileSystem", input, options)
  end

  @doc """
  Adds a file gateway to an Active Directory domain. This operation is only
  supported for file gateways that support the SMB file protocol.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20JoinDomain&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:join_domain_input`)
    %{
      optional("DomainControllers") => list(String.t()()),
      optional("OrganizationalUnit") => String.t(),
      optional("TimeoutInSeconds") => integer(),
      required("DomainName") => String.t(),
      required("GatewayARN") => String.t(),
      required("Password") => String.t(),
      required("UserName") => String.t()
    }
  """

  @spec join_domain(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, join_domain_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, join_domain_errors()}

  def join_domain(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "JoinDomain", input, options)
  end

  @doc """
  Lists the automatic tape creation policies for a gateway. If there are no
  automatic tape creation policies for the gateway, it returns an empty list.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20ListAutomaticTapeCreationPolicies&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_automatic_tape_creation_policies_input`)
    %{
      optional("GatewayARN") => String.t()
    }
  """

  @spec list_automatic_tape_creation_policies(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_automatic_tape_creation_policies_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_automatic_tape_creation_policies_errors()}

  def list_automatic_tape_creation_policies(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAutomaticTapeCreationPolicies", input, options)
  end

  @doc """
  Gets a list of the file shares for a specific S3 File Gateway, or the list of
  file shares that belong to the calling Amazon Web Services account. This
  operation is only supported for S3 File Gateways.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20ListFileShares&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_file_shares_input`)
    %{
      optional("GatewayARN") => String.t(),
      optional("Limit") => integer(),
      optional("Marker") => String.t()
    }
  """

  @spec list_file_shares(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_file_shares_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_file_shares_errors()}

  def list_file_shares(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListFileShares", input, options)
  end

  @doc """
  Gets a list of `FileSystemAssociationSummary` objects. Each object contains a
  summary of a file system association. This operation is only supported for FSx
  File Gateways.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20ListFileSystemAssociations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_file_system_associations_input`)
    %{
      optional("GatewayARN") => String.t(),
      optional("Limit") => integer(),
      optional("Marker") => String.t()
    }
  """

  @spec list_file_system_associations(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_file_system_associations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_file_system_associations_errors()}

  def list_file_system_associations(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListFileSystemAssociations", input, options)
  end

  @doc """
  Lists gateways owned by an Amazon Web Services account in an Amazon Web Services
  Region specified in the request. The returned list is ordered by gateway
  Amazon Resource Name (ARN). By default, the operation returns a maximum of 100
  gateways. This operation supports pagination that allows you to optionally
  reduce the number of gateways returned in a response.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20ListGateways&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_gateways_input`)
    %{
      optional("Limit") => integer(),
      optional("Marker") => String.t()
    }
  """

  @spec list_gateways(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_gateways_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_gateways_errors()}

  def list_gateways(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListGateways", input, options)
  end

  @doc """
  Returns a list of the gateway's local disks. To specify which gateway to
  describe, you use the Amazon Resource Name (ARN) of the gateway in the body of
  the request.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20ListLocalDisks&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_local_disks_input`)
    %{
      required("GatewayARN") => String.t()
    }
  """

  @spec list_local_disks(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_local_disks_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_local_disks_errors()}

  def list_local_disks(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListLocalDisks", input, options)
  end

  @doc """
  Lists the tags that have been added to the specified resource. This operation is
  supported in storage gateways of all types.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_tags_for_resource_input`)
    %{
      optional("Limit") => integer(),
      optional("Marker") => String.t(),
      required("ResourceARN") => String.t()
    }
  """

  @spec list_tags_for_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_tags_for_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}

  def list_tags_for_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Lists custom tape pools. You specify custom tape pools to list by specifying one
  or more custom tape pool Amazon Resource Names (ARNs). If you don't specify a
  custom tape pool ARN, the operation lists all custom tape pools.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20ListTapePools&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_tape_pools_input`)
    %{
      optional("Limit") => integer(),
      optional("Marker") => String.t(),
      optional("PoolARNs") => list(String.t()())
    }
  """

  @spec list_tape_pools(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_tape_pools_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tape_pools_errors()}

  def list_tape_pools(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTapePools", input, options)
  end

  @doc """
  Lists virtual tapes in your virtual tape library (VTL) and your virtual tape
  shelf (VTS). You specify the tapes to list by specifying one or more tape
  Amazon Resource Names (ARNs). If you don't specify a tape ARN, the operation
  lists all virtual tapes in both your VTL and VTS.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20ListTapes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_tapes_input`)
    %{
      optional("Limit") => integer(),
      optional("Marker") => String.t(),
      optional("TapeARNs") => list(String.t()())
    }
  """

  @spec list_tapes(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_tapes_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tapes_errors()}

  def list_tapes(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTapes", input, options)
  end

  @doc """
  Lists iSCSI initiators that are connected to a volume. You can use this
  operation to determine whether a volume is being used or not. This operation
  is only supported in the cached volume and stored volume gateway types.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20ListVolumeInitiators&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_volume_initiators_input`)
    %{
      required("VolumeARN") => String.t()
    }
  """

  @spec list_volume_initiators(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_volume_initiators_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_volume_initiators_errors()}

  def list_volume_initiators(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListVolumeInitiators", input, options)
  end

  @doc """
  Lists the recovery points for a specified gateway. This operation is only
  supported in the cached volume gateway type.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20ListVolumeRecoveryPoints&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_volume_recovery_points_input`)
    %{
      required("GatewayARN") => String.t()
    }
  """

  @spec list_volume_recovery_points(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_volume_recovery_points_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_volume_recovery_points_errors()}

  def list_volume_recovery_points(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListVolumeRecoveryPoints", input, options)
  end

  @doc """
  Lists the iSCSI stored volumes of a gateway. Results are sorted by volume ARN.
  The response includes only the volume ARNs. If you want additional volume
  information, use the `DescribeStorediSCSIVolumes` or the
  `DescribeCachediSCSIVolumes` API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20ListVolumes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_volumes_input`)
    %{
      optional("GatewayARN") => String.t(),
      optional("Limit") => integer(),
      optional("Marker") => String.t()
    }
  """

  @spec list_volumes(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_volumes_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_volumes_errors()}

  def list_volumes(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListVolumes", input, options)
  end

  @doc """
  Sends you notification through CloudWatch Events when all files written to your
  file share have been uploaded to Amazon S3. Storage Gateway can send a
  notification through Amazon CloudWatch Events when all files written to your
  file share up to that point in time have been uploaded to Amazon S3. These
  files include files written to the file share up to the time that you make a
  request for notification. When the upload is done, Storage Gateway sends you
  notification through an Amazon CloudWatch Event. You can configure CloudWatch
  Events to send the notification through event targets such as Amazon SNS or
  Lambda function. This operation is only supported for S3 File Gateways.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20NotifyWhenUploaded&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:notify_when_uploaded_input`)
    %{
      required("FileShareARN") => String.t()
    }
  """

  @spec notify_when_uploaded(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, notify_when_uploaded_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, notify_when_uploaded_errors()}

  def notify_when_uploaded(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "NotifyWhenUploaded", input, options)
  end

  @doc """
  Refreshes the cached inventory of objects for the specified file share. This
  operation finds objects in the Amazon S3 bucket that were added, removed, or
  replaced since the gateway last listed the bucket's contents and cached the
  results. This operation does not import files into the S3 File Gateway cache
  storage. It only updates the cached inventory to reflect changes in the
  inventory of the objects in the S3 bucket. This operation is only supported in
  the S3 File Gateway types. You can subscribe to be notified through an Amazon
  CloudWatch event when your `RefreshCache` operation completes. For more
  information, see [Getting notified about file
  operations](https://docs.aws.amazon.com/filegateway/latest/files3/monitoring-file-gateway.html#get-notification)
  in the *Amazon S3 File Gateway User Guide*. This operation is Only supported
  for S3 File Gateways. When this API is called, it only initiates the refresh
  operation. When the API call completes and returns a success code, it doesn't
  necessarily mean that the file refresh has completed. You should use the
  refresh-complete notification to determine that the operation has completed
  before you check for new files on the gateway file share. You can subscribe to
  be notified through a CloudWatch event when your `RefreshCache` operation
  completes.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20RefreshCache&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:refresh_cache_input`)
    %{
      optional("FolderList") => list(String.t()()),
      optional("Recursive") => boolean(),
      required("FileShareARN") => String.t()
    }
  """

  @spec refresh_cache(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, refresh_cache_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, refresh_cache_errors()}

  def refresh_cache(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "RefreshCache", input, options)
  end

  @doc """
  Removes one or more tags from the specified resource. This operation is
  supported in storage gateways of all types.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20RemoveTagsFromResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:remove_tags_from_resource_input`)
    %{
      required("ResourceARN") => String.t(),
      required("TagKeys") => list(String.t()())
    }
  """

  @spec remove_tags_from_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, remove_tags_from_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, remove_tags_from_resource_errors()}

  def remove_tags_from_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "RemoveTagsFromResource", input, options)
  end

  @doc """
  Resets all cache disks that have encountered an error and makes the disks
  available for reconfiguration as cache storage. If your cache disk encounters
  an error, the gateway prevents read and write operations on virtual tapes in
  the gateway. For example, an error can occur when a disk is corrupted or
  removed from the gateway. When a cache is reset, the gateway loses its cache
  storage. At this point, you can reconfigure the disks as cache disks. This
  operation is only supported in the cached volume and tape types.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20ResetCache&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:reset_cache_input`)
    %{
      required("GatewayARN") => String.t()
    }
  """

  @spec reset_cache(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, reset_cache_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reset_cache_errors()}

  def reset_cache(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ResetCache", input, options)
  end

  @doc """
  Retrieves an archived virtual tape from the virtual tape shelf (VTS) to a tape
  gateway. Virtual tapes archived in the VTS are not associated with any
  gateway. However after a tape is retrieved, it is associated with a gateway,
  even though it is also listed in the VTS, that is, archive. This operation is
  only supported in the tape gateway type.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20RetrieveTapeArchive&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:retrieve_tape_archive_input`)
    %{
      required("GatewayARN") => String.t(),
      required("TapeARN") => String.t()
    }
  """

  @spec retrieve_tape_archive(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, retrieve_tape_archive_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, retrieve_tape_archive_errors()}

  def retrieve_tape_archive(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "RetrieveTapeArchive", input, options)
  end

  @doc """
  Retrieves the recovery point for the specified virtual tape. This operation is
  only supported in the tape gateway type. A recovery point is a point in time
  view of a virtual tape at which all the data on the tape is consistent. If
  your gateway crashes, virtual tapes that have recovery points can be recovered
  to a new gateway.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20RetrieveTapeRecoveryPoint&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:retrieve_tape_recovery_point_input`)
    %{
      required("GatewayARN") => String.t(),
      required("TapeARN") => String.t()
    }
  """

  @spec retrieve_tape_recovery_point(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, retrieve_tape_recovery_point_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, retrieve_tape_recovery_point_errors()}

  def retrieve_tape_recovery_point(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "RetrieveTapeRecoveryPoint", input, options)
  end

  @doc """
  Sets the password for your VM local console. When you log in to the local
  console for the first time, you log in to the VM with the default credentials.
  We recommend that you set a new password. You don't need to know the default
  password to set a new password.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20SetLocalConsolePassword&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:set_local_console_password_input`)
    %{
      required("GatewayARN") => String.t(),
      required("LocalConsolePassword") => String.t()
    }
  """

  @spec set_local_console_password(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, set_local_console_password_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, set_local_console_password_errors()}

  def set_local_console_password(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetLocalConsolePassword", input, options)
  end

  @doc """
  Sets the password for the guest user `smbguest`. The `smbguest` user is the user
  when the authentication method for the file share is set to `GuestAccess`.
  This operation only supported for S3 File Gateways

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20SetSMBGuestPassword&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:set_smb_guest_password_input`)
    %{
      required("GatewayARN") => String.t(),
      required("Password") => String.t()
    }
  """

  @spec set_smb_guest_password(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, set_smb_guest_password_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, set_smb_guest_password_errors()}

  def set_smb_guest_password(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetSMBGuestPassword", input, options)
  end

  @doc """
  Shuts down a Tape Gateway or Volume Gateway. To specify which gateway to shut
  down, use the Amazon Resource Name (ARN) of the gateway in the body of your
  request. This API action cannot be used to shut down S3 File Gateway or FSx
  File Gateway.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20ShutdownGateway&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:shutdown_gateway_input`)
    %{
      required("GatewayARN") => String.t()
    }
  """

  @spec shutdown_gateway(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, shutdown_gateway_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, shutdown_gateway_errors()}

  def shutdown_gateway(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ShutdownGateway", input, options)
  end

  @doc """
  Start a test that verifies that the specified gateway is configured for High
  Availability monitoring in your host environment. This request only initiates
  the test and that a successful response only indicates that the test was
  started. It doesn't indicate that the test passed. For the status of the test,
  invoke the `DescribeAvailabilityMonitorTest` API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20StartAvailabilityMonitorTest&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:start_availability_monitor_test_input`)
    %{
      required("GatewayARN") => String.t()
    }
  """

  @spec start_availability_monitor_test(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, start_availability_monitor_test_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_availability_monitor_test_errors()}

  def start_availability_monitor_test(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartAvailabilityMonitorTest", input, options)
  end

  @doc """
  Starts a gateway that you previously shut down (see `ShutdownGateway`). After
  the gateway starts, you can then make other API calls, your applications can
  read from or write to the gateway's storage volumes and you will be able to
  take snapshot backups. When you make a request, you will get a 200 OK success
  response immediately. However, it might take some time for the gateway to be
  ready. You should call `DescribeGatewayInformation` and check the status
  before making any additional API calls. For more information, see
  `ActivateGateway`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20StartGateway&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:start_gateway_input`)
    %{
      required("GatewayARN") => String.t()
    }
  """

  @spec start_gateway(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, start_gateway_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_gateway_errors()}

  def start_gateway(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartGateway", input, options)
  end

  @doc """
  Updates the automatic tape creation policy of a gateway. Use this to update the
  policy with a new set of automatic tape creation rules. This is only supported
  for tape gateways. By default, there is no automatic tape creation policy.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20UpdateAutomaticTapeCreationPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_automatic_tape_creation_policy_input`)
    %{
      required("AutomaticTapeCreationRules") => list(automatic_tape_creation_rule()()),
      required("GatewayARN") => String.t()
    }
  """

  @spec update_automatic_tape_creation_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_automatic_tape_creation_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_automatic_tape_creation_policy_errors()}

  def update_automatic_tape_creation_policy(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateAutomaticTapeCreationPolicy", input, options)
  end

  @doc """
  Updates the bandwidth rate limits of a gateway. You can update both the upload
  and download bandwidth rate limit or specify only one of the two. If you don't
  set a bandwidth rate limit, the existing rate limit remains. This operation is
  supported only for the stored volume, cached volume, and tape gateway types.
  To update bandwidth rate limits for S3 file gateways, use
  `UpdateBandwidthRateLimitSchedule`. By default, a gateway's bandwidth rate
  limits are not set. If you don't set any limit, the gateway does not have any
  limitations on its bandwidth usage and could potentially use the maximum
  available bandwidth.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20UpdateBandwidthRateLimit&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_bandwidth_rate_limit_input`)
    %{
      optional("AverageDownloadRateLimitInBitsPerSec") => float(),
      optional("AverageUploadRateLimitInBitsPerSec") => float(),
      required("GatewayARN") => String.t()
    }
  """

  @spec update_bandwidth_rate_limit(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_bandwidth_rate_limit_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_bandwidth_rate_limit_errors()}

  def update_bandwidth_rate_limit(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateBandwidthRateLimit", input, options)
  end

  @doc """
  Updates the bandwidth rate limit schedule for a specified gateway. By default,
  gateways do not have bandwidth rate limit schedules, which means no bandwidth
  rate limiting is in effect. Use this to initiate or update a gateway's
  bandwidth rate limit schedule. This operation is supported for volume, tape,
  and S3 file gateways. S3 file gateways support bandwidth rate limits for
  upload only. FSx file gateways do not support bandwidth rate limits.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20UpdateBandwidthRateLimitSchedule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_bandwidth_rate_limit_schedule_input`)
    %{
      required("BandwidthRateLimitIntervals") => list(bandwidth_rate_limit_interval()()),
      required("GatewayARN") => String.t()
    }
  """

  @spec update_bandwidth_rate_limit_schedule(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_bandwidth_rate_limit_schedule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_bandwidth_rate_limit_schedule_errors()}

  def update_bandwidth_rate_limit_schedule(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateBandwidthRateLimitSchedule", input, options)
  end

  @doc """
  Updates the Challenge-Handshake Authentication Protocol (CHAP) credentials for a
  specified iSCSI target. By default, a gateway does not have CHAP enabled;
  however, for added security, you might use it. This operation is supported in
  the volume and tape gateway types.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20UpdateChapCredentials&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_chap_credentials_input`)
    %{
      optional("SecretToAuthenticateTarget") => String.t(),
      required("InitiatorName") => String.t(),
      required("SecretToAuthenticateInitiator") => String.t(),
      required("TargetARN") => String.t()
    }
  """

  @spec update_chap_credentials(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_chap_credentials_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_chap_credentials_errors()}

  def update_chap_credentials(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateChapCredentials", input, options)
  end

  @doc """
  Updates a file system association. This operation is only supported in the FSx
  File Gateways.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20UpdateFileSystemAssociation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_file_system_association_input`)
    %{
      optional("AuditDestinationARN") => String.t(),
      optional("CacheAttributes") => cache_attributes(),
      optional("Password") => String.t(),
      optional("UserName") => String.t(),
      required("FileSystemAssociationARN") => String.t()
    }
  """

  @spec update_file_system_association(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_file_system_association_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_file_system_association_errors()}

  def update_file_system_association(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateFileSystemAssociation", input, options)
  end

  @doc """
  Updates a gateway's metadata, which includes the gateway's name, time zone, and
  metadata cache size. To specify which gateway to update, use the Amazon
  Resource Name (ARN) of the gateway in your request.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20UpdateGatewayInformation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_gateway_information_input`)
    %{
      optional("CloudWatchLogGroupARN") => String.t(),
      optional("GatewayCapacity") => list(any()),
      optional("GatewayName") => String.t(),
      optional("GatewayTimezone") => String.t(),
      required("GatewayARN") => String.t()
    }
  """

  @spec update_gateway_information(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_gateway_information_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_gateway_information_errors()}

  def update_gateway_information(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateGatewayInformation", input, options)
  end

  @doc """
  Updates the gateway virtual machine (VM) software. The request immediately
  triggers the software update. When you make this request, you get a `200 OK`
  success response immediately. However, it might take some time for the update
  to complete. You can call `DescribeGatewayInformation` to verify the gateway
  is in the `STATE_RUNNING` state.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20UpdateGatewaySoftwareNow&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_gateway_software_now_input`)
    %{
      required("GatewayARN") => String.t()
    }
  """

  @spec update_gateway_software_now(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_gateway_software_now_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_gateway_software_now_errors()}

  def update_gateway_software_now(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateGatewaySoftwareNow", input, options)
  end

  @doc """
  Updates a gateway's maintenance window schedule, with settings for monthly or
  weekly cadence, specific day and time to begin maintenance, and which types of
  updates to apply. Time configuration uses the gateway's time zone. You can
  pass values for a complete maintenance schedule, or update policy, or both.
  Previous values will persist for whichever setting you choose not to modify.
  If an incomplete or invalid maintenance schedule is passed, the entire request
  will be rejected with an error and no changes will occur. A complete
  maintenance schedule must include values for *both* `MinuteOfHour` and
  `HourOfDay`, and *either* `DayOfMonth` *or* `DayOfWeek`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20UpdateMaintenanceStartTime&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_maintenance_start_time_input`)
    %{
      optional("DayOfMonth") => integer(),
      optional("DayOfWeek") => integer(),
      optional("HourOfDay") => integer(),
      optional("MinuteOfHour") => integer(),
      optional("SoftwareUpdatePreferences") => software_update_preferences(),
      required("GatewayARN") => String.t()
    }
  """

  @spec update_maintenance_start_time(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_maintenance_start_time_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_maintenance_start_time_errors()}

  def update_maintenance_start_time(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateMaintenanceStartTime", input, options)
  end

  @doc """
  Updates a Network File System (NFS) file share. This operation is only supported
  in S3 File Gateways. To leave a file share field unchanged, set the
  corresponding input field to null.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20UpdateNFSFileShare&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_nfs_file_share_input`)
    %{
      optional("AuditDestinationARN") => String.t(),
      optional("CacheAttributes") => cache_attributes(),
      optional("ClientList") => list(String.t()()),
      optional("DefaultStorageClass") => String.t(),
      optional("FileShareName") => String.t(),
      optional("GuessMIMETypeEnabled") => boolean(),
      optional("KMSEncrypted") => boolean(),
      optional("KMSKey") => String.t(),
      optional("NFSFileShareDefaults") => nfs_file_share_defaults(),
      optional("NotificationPolicy") => String.t(),
      optional("ObjectACL") => list(any()),
      optional("ReadOnly") => boolean(),
      optional("RequesterPays") => boolean(),
      optional("Squash") => String.t(),
      required("FileShareARN") => String.t()
    }
  """

  @spec update_nfs_file_share(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_nfs_file_share_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_nfs_file_share_errors()}

  def update_nfs_file_share(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateNFSFileShare", input, options)
  end

  @doc """
  Updates a Server Message Block (SMB) file share. This operation is only
  supported for S3 File Gateways. To leave a file share field unchanged, set the
  corresponding input field to null.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20UpdateSMBFileShare&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_smb_file_share_input`)
    %{
      optional("AccessBasedEnumeration") => boolean(),
      optional("AdminUserList") => list(String.t()()),
      optional("AuditDestinationARN") => String.t(),
      optional("CacheAttributes") => cache_attributes(),
      optional("CaseSensitivity") => list(any()),
      optional("DefaultStorageClass") => String.t(),
      optional("FileShareName") => String.t(),
      optional("GuessMIMETypeEnabled") => boolean(),
      optional("InvalidUserList") => list(String.t()()),
      optional("KMSEncrypted") => boolean(),
      optional("KMSKey") => String.t(),
      optional("NotificationPolicy") => String.t(),
      optional("ObjectACL") => list(any()),
      optional("OplocksEnabled") => boolean(),
      optional("ReadOnly") => boolean(),
      optional("RequesterPays") => boolean(),
      optional("SMBACLEnabled") => boolean(),
      optional("ValidUserList") => list(String.t()()),
      required("FileShareARN") => String.t()
    }
  """

  @spec update_smb_file_share(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_smb_file_share_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_smb_file_share_errors()}

  def update_smb_file_share(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateSMBFileShare", input, options)
  end

  @doc """
  Controls whether the shares on an S3 File Gateway are visible in a net view or
  browse list. The operation is only supported for S3 File Gateways.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20UpdateSMBFileShareVisibility&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_smb_file_share_visibility_input`)
    %{
      required("FileSharesVisible") => boolean(),
      required("GatewayARN") => String.t()
    }
  """

  @spec update_smb_file_share_visibility(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_smb_file_share_visibility_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_smb_file_share_visibility_errors()}

  def update_smb_file_share_visibility(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateSMBFileShareVisibility", input, options)
  end

  @doc """
  Updates the list of Active Directory users and groups that have special
  permissions for SMB file shares on the gateway.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20UpdateSMBLocalGroups&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_smb_local_groups_input`)
    %{
      required("GatewayARN") => String.t(),
      required("SMBLocalGroups") => smb_local_groups()
    }
  """

  @spec update_smb_local_groups(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_smb_local_groups_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_smb_local_groups_errors()}

  def update_smb_local_groups(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateSMBLocalGroups", input, options)
  end

  @doc """
  Updates the SMB security strategy level for an Amazon S3 file gateway. This
  action is only supported for Amazon S3 file gateways.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20UpdateSMBSecurityStrategy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_smb_security_strategy_input`)
    %{
      required("GatewayARN") => String.t(),
      required("SMBSecurityStrategy") => list(any())
    }
  """

  @spec update_smb_security_strategy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_smb_security_strategy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_smb_security_strategy_errors()}

  def update_smb_security_strategy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateSMBSecurityStrategy", input, options)
  end

  @doc """
  Updates a snapshot schedule configured for a gateway volume. This operation is
  only supported in the cached volume and stored volume gateway types. The
  default snapshot schedule for volume is once every 24 hours, starting at the
  creation time of the volume. You can use this API to change the snapshot
  schedule configured for the volume.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20UpdateSnapshotSchedule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_snapshot_schedule_input`)
    %{
      optional("Description") => String.t(),
      optional("Tags") => list(tag()()),
      required("RecurrenceInHours") => integer(),
      required("StartAt") => integer(),
      required("VolumeARN") => String.t()
    }
  """

  @spec update_snapshot_schedule(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_snapshot_schedule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_snapshot_schedule_errors()}

  def update_snapshot_schedule(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateSnapshotSchedule", input, options)
  end

  @doc """
  Updates the type of medium changer in a tape gateway. When you activate a tape
  gateway, you select a medium changer type for the tape gateway. This operation
  enables you to select a different type of medium changer after a tape gateway
  is activated. This operation is only supported in the tape gateway type.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=storagegateway%20UpdateVTLDeviceType&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_vtl_device_type_input`)
    %{
      required("DeviceType") => String.t(),
      required("VTLDeviceARN") => String.t()
    }
  """

  @spec update_vtl_device_type(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_vtl_device_type_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_vtl_device_type_errors()}

  def update_vtl_device_type(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateVTLDeviceType", input, options)
  end
end
