# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.WorkSpaces do
  @moduledoc """
  Amazon WorkSpaces Service Amazon WorkSpaces enables you to provision virtual,
  cloud-based Microsoft Windows or Amazon Linux desktops for your users, known
  as *WorkSpaces*. WorkSpaces eliminates the need to procure and deploy hardware
  or install complex software. You can quickly add or remove users as your needs
  change. Users can access their virtual desktops from multiple devices or web
  browsers.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      create_connect_client_add_in_result() :: %{
        "AddInId" => String.t()
      }
      
  """
  @type create_connect_client_add_in_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      association_state_reason() :: %{
        "ErrorCode" => list(any()),
        "ErrorMessage" => String.t()
      }
      
  """
  @type association_state_reason() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_account_modifications_result() :: %{
        "AccountModifications" => list(account_modification()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_account_modifications_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_selfservice_permissions_result() :: %{}
      
  """
  @type modify_selfservice_permissions_result() :: %{}

  @typedoc """

  ## Example:
      
      update_workspace_bundle_result() :: %{}
      
  """
  @type update_workspace_bundle_result() :: %{}

  @typedoc """

  ## Example:
      
      start_workspaces_result() :: %{
        "FailedRequests" => list(failed_workspace_change_request()())
      }
      
  """
  @type start_workspaces_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_workspaces_request() :: %{
        required("StartWorkspaceRequests") => list(start_request()())
      }
      
  """
  @type start_workspaces_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_account_link_invitation_result() :: %{
        "AccountLink" => account_link()
      }
      
  """
  @type delete_account_link_invitation_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_workspace_result() :: %{}
      
  """
  @type restore_workspace_result() :: %{}

  @typedoc """

  ## Example:
      
      describe_image_associations_request() :: %{
        required("AssociatedResourceTypes") => list(list(any())()),
        required("ImageId") => String.t()
      }
      
  """
  @type describe_image_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_account_request() :: %{
        optional("DedicatedTenancyManagementCidrRange") => String.t(),
        optional("DedicatedTenancySupport") => list(any())
      }
      
  """
  @type modify_account_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_workspace_state_request() :: %{
        required("WorkspaceId") => String.t(),
        required("WorkspaceState") => list(any())
      }
      
  """
  @type modify_workspace_state_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_workspace_directory_result() :: %{
        "DirectoryId" => String.t(),
        "State" => list(any())
      }
      
  """
  @type register_workspace_directory_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_tags_request() :: %{
        required("ResourceId") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type delete_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_workspaces_request() :: %{
        optional("BundleId") => String.t(),
        optional("DirectoryId") => String.t(),
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        optional("UserName") => String.t(),
        optional("WorkspaceIds") => list(String.t()()),
        optional("WorkspaceName") => String.t()
      }
      
  """
  @type describe_workspaces_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_account_request() :: %{}
      
  """
  @type describe_account_request() :: %{}

  @typedoc """

  ## Example:
      
      workspace_bundle() :: %{
        "BundleId" => String.t(),
        "BundleType" => list(any()),
        "ComputeType" => compute_type(),
        "CreationTime" => non_neg_integer(),
        "Description" => String.t(),
        "ImageId" => String.t(),
        "LastUpdatedTime" => non_neg_integer(),
        "Name" => String.t(),
        "Owner" => String.t(),
        "RootStorage" => root_storage(),
        "State" => list(any()),
        "UserStorage" => user_storage()
      }
      
  """
  @type workspace_bundle() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      standby_workspaces_properties() :: %{
        "DataReplication" => list(any()),
        "RecoverySnapshotTime" => non_neg_integer(),
        "StandbyWorkspaceId" => String.t()
      }
      
  """
  @type standby_workspaces_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modification_state() :: %{
        "Resource" => list(any()),
        "State" => list(any())
      }
      
  """
  @type modification_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_connection_alias_permissions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("AliasId") => String.t()
      }
      
  """
  @type describe_connection_alias_permissions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workspace_image() :: %{
        "Created" => non_neg_integer(),
        "Description" => String.t(),
        "ErrorCode" => String.t(),
        "ErrorDetails" => list(error_details()()),
        "ErrorMessage" => String.t(),
        "ImageId" => String.t(),
        "Name" => String.t(),
        "OperatingSystem" => operating_system(),
        "OwnerAccountId" => String.t(),
        "RequiredTenancy" => list(any()),
        "State" => list(any()),
        "Updates" => update_result()
      }
      
  """
  @type workspace_image() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_workspace_associations_request() :: %{
        required("AssociatedResourceTypes") => list(list(any())()),
        required("WorkspaceId") => String.t()
      }
      
  """
  @type describe_workspace_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_in_use_exception() :: %{
        "ResourceId" => String.t(),
        "message" => String.t()
      }
      
  """
  @type resource_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_workspace_access_properties_result() :: %{}
      
  """
  @type modify_workspace_access_properties_result() :: %{}

  @typedoc """

  ## Example:
      
      disassociate_ip_groups_result() :: %{}
      
  """
  @type disassociate_ip_groups_result() :: %{}

  @typedoc """

  ## Example:
      
      delete_workspace_bundle_request() :: %{
        optional("BundleId") => String.t()
      }
      
  """
  @type delete_workspace_bundle_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_connect_client_add_in_result() :: %{}
      
  """
  @type update_connect_client_add_in_result() :: %{}

  @typedoc """

  ## Example:
      
      modify_client_properties_request() :: %{
        required("ClientProperties") => client_properties(),
        required("ResourceId") => String.t()
      }
      
  """
  @type modify_client_properties_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_result() :: %{
        "Description" => String.t(),
        "UpdateAvailable" => boolean()
      }
      
  """
  @type update_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_workspace_application_request() :: %{
        required("ApplicationId") => String.t(),
        required("WorkspaceId") => String.t()
      }
      
  """
  @type associate_workspace_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      saml_properties() :: %{
        "RelayStateParameterName" => String.t(),
        "Status" => list(any()),
        "UserAccessUrl" => String.t()
      }
      
  """
  @type saml_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rebuild_workspaces_request() :: %{
        required("RebuildWorkspaceRequests") => list(rebuild_request()())
      }
      
  """
  @type rebuild_workspaces_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_access_configuration() :: %{
        "EniId" => String.t(),
        "EniPrivateIpAddress" => String.t()
      }
      
  """
  @type network_access_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      accept_account_link_invitation_result() :: %{
        "AccountLink" => account_link()
      }
      
  """
  @type accept_account_link_invitation_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_unavailable_exception() :: %{
        "ResourceId" => String.t(),
        "message" => String.t()
      }
      
  """
  @type resource_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_workspace_images_request() :: %{
        optional("ImageIds") => list(String.t()()),
        optional("ImageType") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_workspace_images_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      copy_workspace_image_request() :: %{
        optional("Description") => String.t(),
        optional("Tags") => list(tag()()),
        required("Name") => String.t(),
        required("SourceImageId") => String.t(),
        required("SourceRegion") => String.t()
      }
      
  """
  @type copy_workspace_image_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      revoke_ip_rules_request() :: %{
        required("GroupId") => String.t(),
        required("UserRules") => list(String.t()())
      }
      
  """
  @type revoke_ip_rules_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reboot_request() :: %{
        "WorkspaceId" => String.t()
      }
      
  """
  @type reboot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reboot_workspaces_request() :: %{
        required("RebootWorkspaceRequests") => list(reboot_request()())
      }
      
  """
  @type reboot_workspaces_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      failed_create_standby_workspaces_request() :: %{
        "ErrorCode" => String.t(),
        "ErrorMessage" => String.t(),
        "StandbyWorkspaceRequest" => standby_workspace()
      }
      
  """
  @type failed_create_standby_workspaces_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_connection_aliases_result() :: %{
        "ConnectionAliases" => list(connection_alias()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_connection_aliases_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_workspace_image_permissions_result() :: %{
        "ImageId" => String.t(),
        "ImagePermissions" => list(image_permission()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_workspace_image_permissions_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_client_branding_result() :: %{}
      
  """
  @type delete_client_branding_result() :: %{}

  @typedoc """

  ## Example:
      
      ios_client_branding_attributes() :: %{
        "ForgotPasswordLink" => String.t(),
        "LoginMessage" => map(),
        "Logo2xUrl" => String.t(),
        "Logo3xUrl" => String.t(),
        "LogoUrl" => String.t(),
        "SupportEmail" => String.t(),
        "SupportLink" => String.t()
      }
      
  """
  @type ios_client_branding_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_resource_association() :: %{
        "AssociatedResourceId" => String.t(),
        "AssociatedResourceType" => list(any()),
        "Created" => non_neg_integer(),
        "ImageId" => String.t(),
        "LastUpdatedTime" => non_neg_integer(),
        "State" => list(any()),
        "StateReason" => association_state_reason()
      }
      
  """
  @type image_resource_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      operating_system() :: %{
        "Type" => list(any())
      }
      
  """
  @type operating_system() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_workspaces_pool_request() :: %{
        required("PoolId") => String.t()
      }
      
  """
  @type start_workspaces_pool_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_application_associations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ApplicationId") => String.t(),
        required("AssociatedResourceTypes") => list(list(any())())
      }
      
  """
  @type describe_application_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_workspace_bundle_request() :: %{
        optional("RootStorage") => root_storage(),
        optional("Tags") => list(tag()()),
        required("BundleDescription") => String.t(),
        required("BundleName") => String.t(),
        required("ComputeType") => compute_type(),
        required("ImageId") => String.t(),
        required("UserStorage") => user_storage()
      }
      
  """
  @type create_workspace_bundle_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      related_workspace_properties() :: %{
        "Region" => String.t(),
        "State" => list(any()),
        "Type" => list(any()),
        "WorkspaceId" => String.t()
      }
      
  """
  @type related_workspace_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workspace_resource_association() :: %{
        "AssociatedResourceId" => String.t(),
        "AssociatedResourceType" => list(any()),
        "Created" => non_neg_integer(),
        "LastUpdatedTime" => non_neg_integer(),
        "State" => list(any()),
        "StateReason" => association_state_reason(),
        "WorkspaceId" => String.t()
      }
      
  """
  @type workspace_resource_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_connection_alias_request() :: %{
        required("AliasId") => String.t()
      }
      
  """
  @type disassociate_connection_alias_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_workspace_creation_properties_result() :: %{}
      
  """
  @type modify_workspace_creation_properties_result() :: %{}

  @typedoc """

  ## Example:
      
      capacity() :: %{
        "DesiredUserSessions" => integer()
      }
      
  """
  @type capacity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_client_branding_result() :: %{
        "DeviceTypeAndroid" => default_client_branding_attributes(),
        "DeviceTypeIos" => ios_client_branding_attributes(),
        "DeviceTypeLinux" => default_client_branding_attributes(),
        "DeviceTypeOsx" => default_client_branding_attributes(),
        "DeviceTypeWeb" => default_client_branding_attributes(),
        "DeviceTypeWindows" => default_client_branding_attributes()
      }
      
  """
  @type describe_client_branding_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_workspace_image_request() :: %{
        required("ImageId") => String.t()
      }
      
  """
  @type delete_workspace_image_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_available_management_cidr_ranges_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ManagementCidrRangeConstraint") => String.t()
      }
      
  """
  @type list_available_management_cidr_ranges_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_account_link_invitation_result() :: %{
        "AccountLink" => account_link()
      }
      
  """
  @type create_account_link_invitation_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      client_properties() :: %{
        "LogUploadEnabled" => list(any()),
        "ReconnectEnabled" => list(any())
      }
      
  """
  @type client_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workspace_properties() :: %{
        "ComputeTypeName" => list(any()),
        "OperatingSystemName" => list(any()),
        "Protocols" => list(list(any())()),
        "RootVolumeSizeGib" => integer(),
        "RunningMode" => list(any()),
        "RunningModeAutoStopTimeoutInMinutes" => integer(),
        "UserVolumeSizeGib" => integer()
      }
      
  """
  @type workspace_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_account_link_invitation_request() :: %{
        optional("ClientToken") => String.t(),
        required("TargetAccountId") => String.t()
      }
      
  """
  @type create_account_link_invitation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_ip_groups_request() :: %{
        required("DirectoryId") => String.t(),
        required("GroupIds") => list(String.t()())
      }
      
  """
  @type associate_ip_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_account_modifications_request() :: %{
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_account_modifications_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      terminate_workspaces_pool_result() :: %{}
      
  """
  @type terminate_workspaces_pool_result() :: %{}

  @typedoc """

  ## Example:
      
      unsupported_network_configuration_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type unsupported_network_configuration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_account_link_invitation_request() :: %{
        optional("ClientToken") => String.t(),
        required("LinkId") => String.t()
      }
      
  """
  @type delete_account_link_invitation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rebuild_workspaces_result() :: %{
        "FailedRequests" => list(failed_workspace_change_request()())
      }
      
  """
  @type rebuild_workspaces_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_workspace_bundle_result() :: %{
        "WorkspaceBundle" => workspace_bundle()
      }
      
  """
  @type create_workspace_bundle_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_account_links_request() :: %{
        optional("LinkStatusFilter") => list(list(any())()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_account_links_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_workspaces_pool_result() :: %{
        "WorkspacesPool" => workspaces_pool()
      }
      
  """
  @type update_workspaces_pool_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      failed_workspace_change_request() :: %{
        "ErrorCode" => String.t(),
        "ErrorMessage" => String.t(),
        "WorkspaceId" => String.t()
      }
      
  """
  @type failed_workspace_change_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_available_management_cidr_ranges_result() :: %{
        "ManagementCidrRanges" => list(String.t()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_available_management_cidr_ranges_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_certificate_based_auth_properties_result() :: %{}
      
  """
  @type modify_certificate_based_auth_properties_result() :: %{}

  @typedoc """

  ## Example:
      
      describe_workspaces_pool_sessions_result() :: %{
        "NextToken" => String.t(),
        "Sessions" => list(workspaces_pool_session()())
      }
      
  """
  @type describe_workspaces_pool_sessions_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_ip_groups_result() :: %{}
      
  """
  @type associate_ip_groups_result() :: %{}

  @typedoc """

  ## Example:
      
      create_tags_request() :: %{
        required("ResourceId") => String.t(),
        required("Tags") => list(tag()())
      }
      
  """
  @type create_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      terminate_workspaces_result() :: %{
        "FailedRequests" => list(failed_workspace_change_request()())
      }
      
  """
  @type terminate_workspaces_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_workspaces_request() :: %{
        required("Workspaces") => list(workspace_request()())
      }
      
  """
  @type create_workspaces_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      connection_alias_permission() :: %{
        "AllowAssociation" => boolean(),
        "SharedAccountId" => String.t()
      }
      
  """
  @type connection_alias_permission() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_streaming_properties_request() :: %{
        optional("StreamingProperties") => streaming_properties(),
        required("ResourceId") => String.t()
      }
      
  """
  @type modify_streaming_properties_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_account_link_request() :: %{
        optional("LinkId") => String.t(),
        optional("LinkedAccountId") => String.t()
      }
      
  """
  @type get_account_link_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_standby_workspaces_request() :: %{
        required("PrimaryRegion") => String.t(),
        required("StandbyWorkspaces") => list(standby_workspace()())
      }
      
  """
  @type create_standby_workspaces_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pending_create_standby_workspaces_request() :: %{
        "DirectoryId" => String.t(),
        "State" => list(any()),
        "UserName" => String.t(),
        "WorkspaceId" => String.t()
      }
      
  """
  @type pending_create_standby_workspaces_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_modification() :: %{
        "DedicatedTenancyManagementCidrRange" => String.t(),
        "DedicatedTenancySupport" => list(any()),
        "ErrorCode" => String.t(),
        "ErrorMessage" => String.t(),
        "ModificationState" => list(any()),
        "StartTime" => non_neg_integer()
      }
      
  """
  @type account_modification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      certificate_based_auth_properties() :: %{
        "CertificateAuthorityArn" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type certificate_based_auth_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workspaces_ip_group() :: %{
        "groupDesc" => String.t(),
        "groupId" => String.t(),
        "groupName" => String.t(),
        "userRules" => list(ip_rule_item()())
      }
      
  """
  @type workspaces_ip_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "ResourceId" => String.t(),
        "message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      accept_account_link_invitation_request() :: %{
        optional("ClientToken") => String.t(),
        required("LinkId") => String.t()
      }
      
  """
  @type accept_account_link_invitation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_workspace_application_result() :: %{
        "Association" => workspace_resource_association()
      }
      
  """
  @type disassociate_workspace_application_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      root_storage() :: %{
        "Capacity" => String.t()
      }
      
  """
  @type root_storage() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      timeout_settings() :: %{
        "DisconnectTimeoutInSeconds" => integer(),
        "IdleDisconnectTimeoutInSeconds" => integer(),
        "MaxUserDurationInSeconds" => integer()
      }
      
  """
  @type timeout_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_ip_group_request() :: %{
        required("GroupId") => String.t()
      }
      
  """
  @type delete_ip_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workspaces_pool_error() :: %{
        "ErrorCode" => list(any()),
        "ErrorMessage" => String.t()
      }
      
  """
  @type workspaces_pool_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      default_workspace_creation_properties() :: %{
        "CustomSecurityGroupId" => String.t(),
        "DefaultOu" => String.t(),
        "EnableInternetAccess" => boolean(),
        "EnableMaintenanceMode" => boolean(),
        "EnableWorkDocs" => boolean(),
        "InstanceIamRoleArn" => String.t(),
        "UserEnabledAsLocalAdministrator" => boolean()
      }
      
  """
  @type default_workspace_creation_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bundle_resource_association() :: %{
        "AssociatedResourceId" => String.t(),
        "AssociatedResourceType" => list(any()),
        "BundleId" => String.t(),
        "Created" => non_neg_integer(),
        "LastUpdatedTime" => non_neg_integer(),
        "State" => list(any()),
        "StateReason" => association_state_reason()
      }
      
  """
  @type bundle_resource_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      connect_client_add_in() :: %{
        "AddInId" => String.t(),
        "Name" => String.t(),
        "ResourceId" => String.t(),
        "URL" => String.t()
      }
      
  """
  @type connect_client_add_in() :: %{String.t() => any()}

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
      
      describe_bundle_associations_request() :: %{
        required("AssociatedResourceTypes") => list(list(any())()),
        required("BundleId") => String.t()
      }
      
  """
  @type describe_bundle_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      operation_in_progress_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type operation_in_progress_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_workspace_image_result() :: %{
        "ImageId" => String.t()
      }
      
  """
  @type import_workspace_image_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_workspaces_pool_result() :: %{
        "WorkspacesPool" => workspaces_pool()
      }
      
  """
  @type create_workspaces_pool_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      terminate_workspaces_request() :: %{
        required("TerminateWorkspaceRequests") => list(terminate_request()())
      }
      
  """
  @type terminate_workspaces_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_rules_of_ip_group_request() :: %{
        required("GroupId") => String.t(),
        required("UserRules") => list(ip_rule_item()())
      }
      
  """
  @type update_rules_of_ip_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deploy_workspace_applications_request() :: %{
        optional("Force") => boolean(),
        required("WorkspaceId") => String.t()
      }
      
  """
  @type deploy_workspace_applications_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_account_result() :: %{}
      
  """
  @type modify_account_result() :: %{}

  @typedoc """

  ## Example:
      
      describe_workspace_bundles_request() :: %{
        optional("BundleIds") => list(String.t()()),
        optional("NextToken") => String.t(),
        optional("Owner") => String.t()
      }
      
  """
  @type describe_workspace_bundles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_request() :: %{
        "WorkspaceId" => String.t()
      }
      
  """
  @type stop_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_connection_aliases_request() :: %{
        optional("AliasIds") => list(String.t()()),
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        optional("ResourceId") => String.t()
      }
      
  """
  @type describe_connection_aliases_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_workspace_bundle_request() :: %{
        optional("BundleId") => String.t(),
        optional("ImageId") => String.t()
      }
      
  """
  @type update_workspace_bundle_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_link() :: %{
        "AccountLinkId" => String.t(),
        "AccountLinkStatus" => list(any()),
        "SourceAccountId" => String.t(),
        "TargetAccountId" => String.t()
      }
      
  """
  @type account_link() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_workspace_image_permission_result() :: %{}
      
  """
  @type update_workspace_image_permission_result() :: %{}

  @typedoc """

  ## Example:
      
      authorize_ip_rules_request() :: %{
        required("GroupId") => String.t(),
        required("UserRules") => list(ip_rule_item()())
      }
      
  """
  @type authorize_ip_rules_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_connection_alias_permissions_result() :: %{
        "AliasId" => String.t(),
        "ConnectionAliasPermissions" => list(connection_alias_permission()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_connection_alias_permissions_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_setting() :: %{
        "Action" => list(any()),
        "MaximumLength" => integer(),
        "Permission" => list(any())
      }
      
  """
  @type user_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reject_account_link_invitation_request() :: %{
        optional("ClientToken") => String.t(),
        required("LinkId") => String.t()
      }
      
  """
  @type reject_account_link_invitation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deploy_workspace_applications_result() :: %{
        "Deployment" => work_space_application_deployment()
      }
      
  """
  @type deploy_workspace_applications_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_workspace_bundle_result() :: %{}
      
  """
  @type delete_workspace_bundle_result() :: %{}

  @typedoc """

  ## Example:
      
      describe_workspace_associations_result() :: %{
        "Associations" => list(workspace_resource_association()())
      }
      
  """
  @type describe_workspace_associations_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_workspace_creation_properties_request() :: %{
        required("ResourceId") => String.t(),
        required("WorkspaceCreationProperties") => workspace_creation_properties()
      }
      
  """
  @type modify_workspace_creation_properties_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      storage_connector() :: %{
        "ConnectorType" => list(any()),
        "Status" => list(any())
      }
      
  """
  @type storage_connector() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_permission() :: %{
        "SharedAccountId" => String.t()
      }
      
  """
  @type image_permission() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workspace_creation_properties() :: %{
        "CustomSecurityGroupId" => String.t(),
        "DefaultOu" => String.t(),
        "EnableInternetAccess" => boolean(),
        "EnableMaintenanceMode" => boolean(),
        "EnableWorkDocs" => boolean(),
        "InstanceIamRoleArn" => String.t(),
        "UserEnabledAsLocalAdministrator" => boolean()
      }
      
  """
  @type workspace_creation_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      error_details() :: %{
        "ErrorCode" => list(any()),
        "ErrorMessage" => String.t()
      }
      
  """
  @type error_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_applications_request() :: %{
        optional("ApplicationIds") => list(String.t()()),
        optional("ComputeTypeNames") => list(list(any())()),
        optional("LicenseType") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("OperatingSystemNames") => list(list(any())()),
        optional("Owner") => String.t()
      }
      
  """
  @type describe_applications_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_account_link_result() :: %{
        "AccountLink" => account_link()
      }
      
  """
  @type get_account_link_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_workspaces_pool_result() :: %{}
      
  """
  @type start_workspaces_pool_result() :: %{}

  @typedoc """

  ## Example:
      
      describe_application_associations_result() :: %{
        "Associations" => list(application_resource_association()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_application_associations_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_updated_workspace_image_request() :: %{
        optional("Tags") => list(tag()()),
        required("Description") => String.t(),
        required("Name") => String.t(),
        required("SourceImageId") => String.t()
      }
      
  """
  @type create_updated_workspace_image_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ios_import_client_branding_attributes() :: %{
        "ForgotPasswordLink" => String.t(),
        "LoginMessage" => map(),
        "Logo" => binary(),
        "Logo2x" => binary(),
        "Logo3x" => binary(),
        "SupportEmail" => String.t(),
        "SupportLink" => String.t()
      }
      
  """
  @type ios_import_client_branding_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_workspace_image_result() :: %{
        "Created" => non_neg_integer(),
        "Description" => String.t(),
        "ImageId" => String.t(),
        "Name" => String.t(),
        "OperatingSystem" => operating_system(),
        "OwnerAccountId" => String.t(),
        "RequiredTenancy" => list(any()),
        "State" => list(any())
      }
      
  """
  @type create_workspace_image_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workspace_access_properties() :: %{
        "DeviceTypeAndroid" => list(any()),
        "DeviceTypeChromeOs" => list(any()),
        "DeviceTypeIos" => list(any()),
        "DeviceTypeLinux" => list(any()),
        "DeviceTypeOsx" => list(any()),
        "DeviceTypeWeb" => list(any()),
        "DeviceTypeWindows" => list(any()),
        "DeviceTypeZeroClient" => list(any())
      }
      
  """
  @type workspace_access_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_account_links_result() :: %{
        "AccountLinks" => list(account_link()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_account_links_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_workspace_directories_request() :: %{
        optional("DirectoryIds") => list(String.t()()),
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        optional("WorkspaceDirectoryNames") => list(String.t()())
      }
      
  """
  @type describe_workspace_directories_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_saml_properties_result() :: %{}
      
  """
  @type modify_saml_properties_result() :: %{}

  @typedoc """

  ## Example:
      
      describe_image_associations_result() :: %{
        "Associations" => list(image_resource_association()())
      }
      
  """
  @type describe_image_associations_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_workspaces_connection_status_result() :: %{
        "NextToken" => String.t(),
        "WorkspacesConnectionStatus" => list(workspace_connection_status()())
      }
      
  """
  @type describe_workspaces_connection_status_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      work_space_application() :: %{
        "ApplicationId" => String.t(),
        "Created" => non_neg_integer(),
        "Description" => String.t(),
        "LicenseType" => list(any()),
        "Name" => String.t(),
        "Owner" => String.t(),
        "State" => list(any()),
        "SupportedComputeTypeNames" => list(list(any())()),
        "SupportedOperatingSystemNames" => list(list(any())())
      }
      
  """
  @type work_space_application() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_connect_client_add_in_result() :: %{}
      
  """
  @type delete_connect_client_add_in_result() :: %{}

  @typedoc """

  ## Example:
      
      default_import_client_branding_attributes() :: %{
        "ForgotPasswordLink" => String.t(),
        "LoginMessage" => map(),
        "Logo" => binary(),
        "SupportEmail" => String.t(),
        "SupportLink" => String.t()
      }
      
  """
  @type default_import_client_branding_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_connection_alias_result() :: %{
        "AliasId" => String.t()
      }
      
  """
  @type create_connection_alias_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_saml_properties_request() :: %{
        optional("PropertiesToDelete") => list(list(any())()),
        optional("SamlProperties") => saml_properties(),
        required("ResourceId") => String.t()
      }
      
  """
  @type modify_saml_properties_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ip_rule_item() :: %{
        "ipRule" => String.t(),
        "ruleDesc" => String.t()
      }
      
  """
  @type ip_rule_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_workspace_images_result() :: %{
        "Images" => list(workspace_image()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_workspace_images_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_workspace_request() :: %{
        required("WorkspaceId") => String.t()
      }
      
  """
  @type restore_workspace_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_resource_state_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_resource_state_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_creation_failed_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_creation_failed_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_updated_workspace_image_result() :: %{
        "ImageId" => String.t()
      }
      
  """
  @type create_updated_workspace_image_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_connect_client_add_in_request() :: %{
        required("Name") => String.t(),
        required("ResourceId") => String.t(),
        required("URL") => String.t()
      }
      
  """
  @type create_connect_client_add_in_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_workspace_properties_result() :: %{}
      
  """
  @type modify_workspace_properties_result() :: %{}

  @typedoc """

  ## Example:
      
      application_resource_association() :: %{
        "ApplicationId" => String.t(),
        "AssociatedResourceId" => String.t(),
        "AssociatedResourceType" => list(any()),
        "Created" => non_neg_integer(),
        "LastUpdatedTime" => non_neg_integer(),
        "State" => list(any()),
        "StateReason" => association_state_reason()
      }
      
  """
  @type application_resource_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_workspaces_pool_sessions_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        optional("UserId") => String.t(),
        required("PoolId") => String.t()
      }
      
  """
  @type describe_workspaces_pool_sessions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_client_branding_request() :: %{
        required("Platforms") => list(list(any())()),
        required("ResourceId") => String.t()
      }
      
  """
  @type delete_client_branding_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_streaming_properties_result() :: %{}
      
  """
  @type modify_streaming_properties_result() :: %{}

  @typedoc """

  ## Example:
      
      data_replication_settings() :: %{
        "DataReplication" => list(any()),
        "RecoverySnapshotTime" => non_neg_integer()
      }
      
  """
  @type data_replication_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_workspaces_result() :: %{
        "NextToken" => String.t(),
        "Workspaces" => list(workspace()())
      }
      
  """
  @type describe_workspaces_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_workspaces_result() :: %{
        "FailedRequests" => list(failed_create_workspace_request()()),
        "PendingRequests" => list(workspace()())
      }
      
  """
  @type create_workspaces_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_values_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_parameter_values_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      default_client_branding_attributes() :: %{
        "ForgotPasswordLink" => String.t(),
        "LoginMessage" => map(),
        "LogoUrl" => String.t(),
        "SupportEmail" => String.t(),
        "SupportLink" => String.t()
      }
      
  """
  @type default_client_branding_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      active_directory_config() :: %{
        "DomainName" => String.t(),
        "ServiceAccountSecretArn" => String.t()
      }
      
  """
  @type active_directory_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_workspace_application_request() :: %{
        required("ApplicationId") => String.t(),
        required("WorkspaceId") => String.t()
      }
      
  """
  @type disassociate_workspace_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_workspace_properties_request() :: %{
        optional("DataReplication") => list(any()),
        optional("WorkspaceProperties") => workspace_properties(),
        required("WorkspaceId") => String.t()
      }
      
  """
  @type modify_workspace_properties_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_tags_result() :: %{}
      
  """
  @type create_tags_result() :: %{}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workspace() :: %{
        "BundleId" => String.t(),
        "ComputerName" => String.t(),
        "DataReplicationSettings" => data_replication_settings(),
        "DirectoryId" => String.t(),
        "ErrorCode" => String.t(),
        "ErrorMessage" => String.t(),
        "IpAddress" => String.t(),
        "ModificationStates" => list(modification_state()()),
        "RelatedWorkspaces" => list(related_workspace_properties()()),
        "RootVolumeEncryptionEnabled" => boolean(),
        "StandbyWorkspacesProperties" => list(standby_workspaces_properties()()),
        "State" => list(any()),
        "SubnetId" => String.t(),
        "UserName" => String.t(),
        "UserVolumeEncryptionEnabled" => boolean(),
        "VolumeEncryptionKey" => String.t(),
        "WorkspaceId" => String.t(),
        "WorkspaceName" => String.t(),
        "WorkspaceProperties" => workspace_properties()
      }
      
  """
  @type workspace() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      selfservice_permissions() :: %{
        "ChangeComputeType" => list(any()),
        "IncreaseVolumeSize" => list(any()),
        "RebuildWorkspace" => list(any()),
        "RestartWorkspace" => list(any()),
        "SwitchRunningMode" => list(any())
      }
      
  """
  @type selfservice_permissions() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workspaces_default_role_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type workspaces_default_role_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_client_properties_result() :: %{
        "ClientPropertiesList" => list(client_properties_result()())
      }
      
  """
  @type describe_client_properties_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      terminate_workspaces_pool_request() :: %{
        required("PoolId") => String.t()
      }
      
  """
  @type terminate_workspaces_pool_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_connection_alias_permission_request() :: %{
        required("AliasId") => String.t(),
        required("ConnectionAliasPermission") => connection_alias_permission()
      }
      
  """
  @type update_connection_alias_permission_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_workspace_snapshots_result() :: %{
        "RebuildSnapshots" => list(snapshot()()),
        "RestoreSnapshots" => list(snapshot()())
      }
      
  """
  @type describe_workspace_snapshots_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_ip_groups_result() :: %{
        "NextToken" => String.t(),
        "Result" => list(workspaces_ip_group()())
      }
      
  """
  @type describe_ip_groups_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_workspace_image_request() :: %{
        optional("Applications") => list(list(any())()),
        optional("Tags") => list(tag()()),
        required("Ec2ImageId") => String.t(),
        required("ImageDescription") => String.t(),
        required("ImageName") => String.t(),
        required("IngestionProcess") => list(any())
      }
      
  """
  @type import_workspace_image_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_connection_alias_request() :: %{
        optional("Tags") => list(tag()()),
        required("ConnectionString") => String.t()
      }
      
  """
  @type create_connection_alias_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      revoke_ip_rules_result() :: %{}
      
  """
  @type revoke_ip_rules_result() :: %{}

  @typedoc """

  ## Example:
      
      snapshot() :: %{
        "SnapshotTime" => non_neg_integer()
      }
      
  """
  @type snapshot() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_workspaces_pools_filter() :: %{
        "Name" => list(any()),
        "Operator" => list(any()),
        "Values" => list(String.t()())
      }
      
  """
  @type describe_workspaces_pools_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_client_branding_result() :: %{
        "DeviceTypeAndroid" => default_client_branding_attributes(),
        "DeviceTypeIos" => ios_client_branding_attributes(),
        "DeviceTypeLinux" => default_client_branding_attributes(),
        "DeviceTypeOsx" => default_client_branding_attributes(),
        "DeviceTypeWeb" => default_client_branding_attributes(),
        "DeviceTypeWindows" => default_client_branding_attributes()
      }
      
  """
  @type import_client_branding_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_ip_group_request() :: %{
        optional("GroupDesc") => String.t(),
        optional("Tags") => list(tag()()),
        optional("UserRules") => list(ip_rule_item()()),
        required("GroupName") => String.t()
      }
      
  """
  @type create_ip_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workspace_connection_status() :: %{
        "ConnectionState" => list(any()),
        "ConnectionStateCheckTimestamp" => non_neg_integer(),
        "LastKnownUserConnectionTimestamp" => non_neg_integer(),
        "WorkspaceId" => String.t()
      }
      
  """
  @type workspace_connection_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_tags_result() :: %{}
      
  """
  @type delete_tags_result() :: %{}

  @typedoc """

  ## Example:
      
      register_workspace_directory_request() :: %{
        optional("ActiveDirectoryConfig") => active_directory_config(),
        optional("DirectoryId") => String.t(),
        optional("EnableSelfService") => boolean(),
        optional("EnableWorkDocs") => boolean(),
        optional("SubnetIds") => list(String.t()()),
        optional("Tags") => list(tag()()),
        optional("Tenancy") => list(any()),
        optional("UserIdentityType") => list(any()),
        optional("WorkspaceDirectoryDescription") => String.t(),
        optional("WorkspaceDirectoryName") => String.t(),
        optional("WorkspaceType") => list(any())
      }
      
  """
  @type register_workspace_directory_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compute_type() :: %{
        "Name" => list(any())
      }
      
  """
  @type compute_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_workspace_image_permission_request() :: %{
        required("AllowCopyImage") => boolean(),
        required("ImageId") => String.t(),
        required("SharedAccountId") => String.t()
      }
      
  """
  @type update_workspace_image_permission_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_connection_alias_result() :: %{}
      
  """
  @type delete_connection_alias_result() :: %{}

  @typedoc """

  ## Example:
      
      create_workspace_image_request() :: %{
        optional("Tags") => list(tag()()),
        required("Description") => String.t(),
        required("Name") => String.t(),
        required("WorkspaceId") => String.t()
      }
      
  """
  @type create_workspace_image_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      application_settings_request() :: %{
        "SettingsGroup" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type application_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      copy_workspace_image_result() :: %{
        "ImageId" => String.t()
      }
      
  """
  @type copy_workspace_image_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_workspace_access_properties_request() :: %{
        required("ResourceId") => String.t(),
        required("WorkspaceAccessProperties") => workspace_access_properties()
      }
      
  """
  @type modify_workspace_access_properties_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_storage() :: %{
        "Capacity" => String.t()
      }
      
  """
  @type user_storage() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      migrate_workspace_request() :: %{
        required("BundleId") => String.t(),
        required("SourceWorkspaceId") => String.t()
      }
      
  """
  @type migrate_workspace_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      capacity_status() :: %{
        "ActiveUserSessions" => integer(),
        "ActualUserSessions" => integer(),
        "AvailableUserSessions" => integer(),
        "DesiredUserSessions" => integer()
      }
      
  """
  @type capacity_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_workspace_application_result() :: %{
        "Association" => workspace_resource_association()
      }
      
  """
  @type associate_workspace_application_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_workspace_directory_result() :: %{}
      
  """
  @type deregister_workspace_directory_result() :: %{}

  @typedoc """

  ## Example:
      
      resource_associated_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_associated_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_workspaces_pool_request() :: %{
        optional("ApplicationSettings") => application_settings_request(),
        optional("BundleId") => String.t(),
        optional("Capacity") => capacity(),
        optional("Description") => String.t(),
        optional("DirectoryId") => String.t(),
        optional("TimeoutSettings") => timeout_settings(),
        required("PoolId") => String.t()
      }
      
  """
  @type update_workspaces_pool_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      terminate_workspaces_pool_session_result() :: %{}
      
  """
  @type terminate_workspaces_pool_session_result() :: %{}

  @typedoc """

  ## Example:
      
      workspace_directory() :: %{
        "ActiveDirectoryConfig" => active_directory_config(),
        "Alias" => String.t(),
        "CertificateBasedAuthProperties" => certificate_based_auth_properties(),
        "CustomerUserName" => String.t(),
        "DirectoryId" => String.t(),
        "DirectoryName" => String.t(),
        "DirectoryType" => list(any()),
        "DnsIpAddresses" => list(String.t()()),
        "ErrorMessage" => String.t(),
        "IamRoleId" => String.t(),
        "RegistrationCode" => String.t(),
        "SamlProperties" => saml_properties(),
        "SelfservicePermissions" => selfservice_permissions(),
        "State" => list(any()),
        "StreamingProperties" => streaming_properties(),
        "SubnetIds" => list(String.t()()),
        "Tenancy" => list(any()),
        "UserIdentityType" => list(any()),
        "WorkspaceAccessProperties" => workspace_access_properties(),
        "WorkspaceCreationProperties" => default_workspace_creation_properties(),
        "WorkspaceDirectoryDescription" => String.t(),
        "WorkspaceDirectoryName" => String.t(),
        "WorkspaceSecurityGroupId" => String.t(),
        "WorkspaceType" => list(any()),
        "ipGroupIds" => list(String.t()())
      }
      
  """
  @type workspace_directory() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_workspaces_result() :: %{
        "FailedRequests" => list(failed_workspace_change_request()())
      }
      
  """
  @type stop_workspaces_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_client_properties_result() :: %{}
      
  """
  @type modify_client_properties_result() :: %{}

  @typedoc """

  ## Example:
      
      standby_workspace() :: %{
        "DataReplication" => list(any()),
        "DirectoryId" => String.t(),
        "PrimaryWorkspaceId" => String.t(),
        "Tags" => list(tag()()),
        "VolumeEncryptionKey" => String.t()
      }
      
  """
  @type standby_workspace() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_standby_workspaces_result() :: %{
        "FailedStandbyRequests" => list(failed_create_standby_workspaces_request()()),
        "PendingStandbyRequests" => list(pending_create_standby_workspaces_request()())
      }
      
  """
  @type create_standby_workspaces_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_account_result() :: %{
        "DedicatedTenancyAccountType" => list(any()),
        "DedicatedTenancyManagementCidrRange" => String.t(),
        "DedicatedTenancySupport" => list(any())
      }
      
  """
  @type describe_account_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_connection_alias_result() :: %{
        "ConnectionIdentifier" => String.t()
      }
      
  """
  @type associate_connection_alias_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_workspace_image_result() :: %{}
      
  """
  @type delete_workspace_image_result() :: %{}

  @typedoc """

  ## Example:
      
      delete_ip_group_result() :: %{}
      
  """
  @type delete_ip_group_result() :: %{}

  @typedoc """

  ## Example:
      
      delete_connect_client_add_in_request() :: %{
        required("AddInId") => String.t(),
        required("ResourceId") => String.t()
      }
      
  """
  @type delete_connect_client_add_in_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_certificate_based_auth_properties_request() :: %{
        optional("CertificateBasedAuthProperties") => certificate_based_auth_properties(),
        optional("PropertiesToDelete") => list(list(any())()),
        required("ResourceId") => String.t()
      }
      
  """
  @type modify_certificate_based_auth_properties_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_bundle_associations_result() :: %{
        "Associations" => list(bundle_resource_association()())
      }
      
  """
  @type describe_bundle_associations_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_connect_client_add_in_request() :: %{
        optional("Name") => String.t(),
        optional("URL") => String.t(),
        required("AddInId") => String.t(),
        required("ResourceId") => String.t()
      }
      
  """
  @type update_connect_client_add_in_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workspaces_pool() :: %{
        "ApplicationSettings" => application_settings_response(),
        "BundleId" => String.t(),
        "CapacityStatus" => capacity_status(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "DirectoryId" => String.t(),
        "Errors" => list(workspaces_pool_error()()),
        "PoolArn" => String.t(),
        "PoolId" => String.t(),
        "PoolName" => String.t(),
        "State" => list(any()),
        "TimeoutSettings" => timeout_settings()
      }
      
  """
  @type workspaces_pool() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      streaming_properties() :: %{
        "StorageConnectors" => list(storage_connector()()),
        "StreamingExperiencePreferredProtocol" => list(any()),
        "UserSettings" => list(user_setting()())
      }
      
  """
  @type streaming_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      incompatible_applications_exception() :: %{}
      
  """
  @type incompatible_applications_exception() :: %{}

  @typedoc """

  ## Example:
      
      terminate_request() :: %{
        "WorkspaceId" => String.t()
      }
      
  """
  @type terminate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_workspaces_pool_request() :: %{
        optional("ApplicationSettings") => application_settings_request(),
        optional("Tags") => list(tag()()),
        optional("TimeoutSettings") => timeout_settings(),
        required("BundleId") => String.t(),
        required("Capacity") => capacity(),
        required("Description") => String.t(),
        required("DirectoryId") => String.t(),
        required("PoolName") => String.t()
      }
      
  """
  @type create_workspaces_pool_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compute_not_compatible_exception() :: %{}
      
  """
  @type compute_not_compatible_exception() :: %{}

  @typedoc """

  ## Example:
      
      rebuild_request() :: %{
        "WorkspaceId" => String.t()
      }
      
  """
  @type rebuild_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_client_properties_request() :: %{
        required("ResourceIds") => list(String.t()())
      }
      
  """
  @type describe_client_properties_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_workspace_directory_request() :: %{
        required("DirectoryId") => String.t()
      }
      
  """
  @type deregister_workspace_directory_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      operating_system_not_compatible_exception() :: %{}
      
  """
  @type operating_system_not_compatible_exception() :: %{}

  @typedoc """

  ## Example:
      
      update_rules_of_ip_group_result() :: %{}
      
  """
  @type update_rules_of_ip_group_result() :: %{}

  @typedoc """

  ## Example:
      
      describe_tags_result() :: %{
        "TagList" => list(tag()())
      }
      
  """
  @type describe_tags_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_selfservice_permissions_request() :: %{
        required("ResourceId") => String.t(),
        required("SelfservicePermissions") => selfservice_permissions()
      }
      
  """
  @type modify_selfservice_permissions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_workspace_state_result() :: %{}
      
  """
  @type modify_workspace_state_result() :: %{}

  @typedoc """

  ## Example:
      
      describe_workspace_bundles_result() :: %{
        "Bundles" => list(workspace_bundle()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_workspace_bundles_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_request() :: %{
        "WorkspaceId" => String.t()
      }
      
  """
  @type start_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_ip_groups_request() :: %{
        optional("GroupIds") => list(String.t()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_ip_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_connection_alias_permission_result() :: %{}
      
  """
  @type update_connection_alias_permission_result() :: %{}

  @typedoc """

  ## Example:
      
      work_space_application_deployment() :: %{
        "Associations" => list(workspace_resource_association()())
      }
      
  """
  @type work_space_application_deployment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_workspace_configuration_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type unsupported_workspace_configuration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      application_not_supported_exception() :: %{}
      
  """
  @type application_not_supported_exception() :: %{}

  @typedoc """

  ## Example:
      
      stop_workspaces_pool_result() :: %{}
      
  """
  @type stop_workspaces_pool_result() :: %{}

  @typedoc """

  ## Example:
      
      describe_tags_request() :: %{
        required("ResourceId") => String.t()
      }
      
  """
  @type describe_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workspaces_pool_session() :: %{
        "AuthenticationType" => list(any()),
        "ConnectionState" => list(any()),
        "ExpirationTime" => non_neg_integer(),
        "InstanceId" => String.t(),
        "NetworkAccessConfiguration" => network_access_configuration(),
        "PoolId" => String.t(),
        "SessionId" => String.t(),
        "StartTime" => non_neg_integer(),
        "UserId" => String.t()
      }
      
  """
  @type workspaces_pool_session() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reboot_workspaces_result() :: %{
        "FailedRequests" => list(failed_workspace_change_request()())
      }
      
  """
  @type reboot_workspaces_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_already_exists_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      operation_not_supported_exception() :: %{
        "message" => String.t(),
        "reason" => String.t()
      }
      
  """
  @type operation_not_supported_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_ip_groups_request() :: %{
        required("DirectoryId") => String.t(),
        required("GroupIds") => list(String.t()())
      }
      
  """
  @type disassociate_ip_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      connection_alias_association() :: %{
        "AssociatedAccountId" => String.t(),
        "AssociationStatus" => list(any()),
        "ConnectionIdentifier" => String.t(),
        "ResourceId" => String.t()
      }
      
  """
  @type connection_alias_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_workspace_image_permissions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ImageId") => String.t()
      }
      
  """
  @type describe_workspace_image_permissions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      failed_create_workspace_request() :: %{
        "ErrorCode" => String.t(),
        "ErrorMessage" => String.t(),
        "WorkspaceRequest" => workspace_request()
      }
      
  """
  @type failed_create_workspace_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      authorize_ip_rules_result() :: %{}
      
  """
  @type authorize_ip_rules_result() :: %{}

  @typedoc """

  ## Example:
      
      describe_workspaces_pools_result() :: %{
        "NextToken" => String.t(),
        "WorkspacesPools" => list(workspaces_pool()())
      }
      
  """
  @type describe_workspaces_pools_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      connection_alias() :: %{
        "AliasId" => String.t(),
        "Associations" => list(connection_alias_association()()),
        "ConnectionString" => String.t(),
        "OwnerAccountId" => String.t(),
        "State" => list(any())
      }
      
  """
  @type connection_alias() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_workspaces_pool_request() :: %{
        required("PoolId") => String.t()
      }
      
  """
  @type stop_workspaces_pool_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workspace_request() :: %{
        "BundleId" => String.t(),
        "DirectoryId" => String.t(),
        "RootVolumeEncryptionEnabled" => boolean(),
        "Tags" => list(tag()()),
        "UserName" => String.t(),
        "UserVolumeEncryptionEnabled" => boolean(),
        "VolumeEncryptionKey" => String.t(),
        "WorkspaceName" => String.t(),
        "WorkspaceProperties" => workspace_properties()
      }
      
  """
  @type workspace_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_workspaces_connection_status_request() :: %{
        optional("NextToken") => String.t(),
        optional("WorkspaceIds") => list(String.t()())
      }
      
  """
  @type describe_workspaces_connection_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_connection_alias_request() :: %{
        required("AliasId") => String.t()
      }
      
  """
  @type delete_connection_alias_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      terminate_workspaces_pool_session_request() :: %{
        required("SessionId") => String.t()
      }
      
  """
  @type terminate_workspaces_pool_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_connect_client_add_ins_result() :: %{
        "AddIns" => list(connect_client_add_in()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_connect_client_add_ins_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      application_settings_response() :: %{
        "S3BucketName" => String.t(),
        "SettingsGroup" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type application_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_workspace_directories_result() :: %{
        "Directories" => list(workspace_directory()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_workspace_directories_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_client_branding_request() :: %{
        required("ResourceId") => String.t()
      }
      
  """
  @type describe_client_branding_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      client_properties_result() :: %{
        "ClientProperties" => client_properties(),
        "ResourceId" => String.t()
      }
      
  """
  @type client_properties_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reject_account_link_invitation_result() :: %{
        "AccountLink" => account_link()
      }
      
  """
  @type reject_account_link_invitation_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_applications_result() :: %{
        "Applications" => list(work_space_application()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_applications_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_workspace_snapshots_request() :: %{
        required("WorkspaceId") => String.t()
      }
      
  """
  @type describe_workspace_snapshots_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_connection_alias_result() :: %{}
      
  """
  @type disassociate_connection_alias_result() :: %{}

  @typedoc """

  ## Example:
      
      stop_workspaces_request() :: %{
        required("StopWorkspaceRequests") => list(stop_request()())
      }
      
  """
  @type stop_workspaces_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_connect_client_add_ins_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ResourceId") => String.t()
      }
      
  """
  @type describe_connect_client_add_ins_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_workspaces_pools_request() :: %{
        optional("Filters") => list(describe_workspaces_pools_filter()()),
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        optional("PoolIds") => list(String.t()())
      }
      
  """
  @type describe_workspaces_pools_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_client_branding_request() :: %{
        optional("DeviceTypeAndroid") => default_import_client_branding_attributes(),
        optional("DeviceTypeIos") => ios_import_client_branding_attributes(),
        optional("DeviceTypeLinux") => default_import_client_branding_attributes(),
        optional("DeviceTypeOsx") => default_import_client_branding_attributes(),
        optional("DeviceTypeWeb") => default_import_client_branding_attributes(),
        optional("DeviceTypeWindows") => default_import_client_branding_attributes(),
        required("ResourceId") => String.t()
      }
      
  """
  @type import_client_branding_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_connection_alias_request() :: %{
        required("AliasId") => String.t(),
        required("ResourceId") => String.t()
      }
      
  """
  @type associate_connection_alias_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_ip_group_result() :: %{
        "GroupId" => String.t()
      }
      
  """
  @type create_ip_group_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      migrate_workspace_result() :: %{
        "SourceWorkspaceId" => String.t(),
        "TargetWorkspaceId" => String.t()
      }
      
  """
  @type migrate_workspace_result() :: %{String.t() => any()}

  @type accept_account_link_invitation_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type associate_connection_alias_errors() ::
          operation_not_supported_exception()
          | resource_associated_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | invalid_resource_state_exception()
          | resource_not_found_exception()

  @type associate_ip_groups_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | invalid_resource_state_exception()
          | resource_limit_exceeded_exception()
          | resource_not_found_exception()

  @type associate_workspace_application_errors() ::
          operation_not_supported_exception()
          | resource_already_exists_exception()
          | application_not_supported_exception()
          | operating_system_not_compatible_exception()
          | compute_not_compatible_exception()
          | incompatible_applications_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type authorize_ip_rules_errors() ::
          access_denied_exception()
          | invalid_parameter_values_exception()
          | invalid_resource_state_exception()
          | resource_limit_exceeded_exception()
          | resource_not_found_exception()

  @type copy_workspace_image_errors() ::
          operation_not_supported_exception()
          | resource_already_exists_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_limit_exceeded_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()

  @type create_account_link_invitation_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type create_connect_client_add_in_errors() ::
          resource_already_exists_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_creation_failed_exception()
          | resource_not_found_exception()

  @type create_connection_alias_errors() ::
          operation_not_supported_exception()
          | resource_already_exists_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | invalid_resource_state_exception()
          | resource_limit_exceeded_exception()

  @type create_ip_group_errors() ::
          resource_already_exists_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_creation_failed_exception()
          | resource_limit_exceeded_exception()

  @type create_standby_workspaces_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_limit_exceeded_exception()
          | resource_not_found_exception()

  @type create_tags_errors() ::
          invalid_parameter_values_exception()
          | resource_limit_exceeded_exception()
          | resource_not_found_exception()

  @type create_updated_workspace_image_errors() ::
          operation_not_supported_exception()
          | resource_already_exists_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | invalid_resource_state_exception()
          | resource_limit_exceeded_exception()
          | resource_not_found_exception()

  @type create_workspace_bundle_errors() ::
          resource_already_exists_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_limit_exceeded_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()

  @type create_workspace_image_errors() ::
          operation_not_supported_exception()
          | resource_already_exists_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | invalid_resource_state_exception()
          | resource_limit_exceeded_exception()
          | resource_not_found_exception()

  @type create_workspaces_errors() ::
          invalid_parameter_values_exception() | resource_limit_exceeded_exception()

  @type create_workspaces_pool_errors() ::
          operation_not_supported_exception()
          | resource_already_exists_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_limit_exceeded_exception()
          | resource_not_found_exception()

  @type delete_account_link_invitation_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_client_branding_errors() ::
          access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type delete_connect_client_add_in_errors() ::
          access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type delete_connection_alias_errors() ::
          operation_not_supported_exception()
          | resource_associated_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | invalid_resource_state_exception()
          | resource_not_found_exception()

  @type delete_ip_group_errors() ::
          resource_associated_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type delete_tags_errors() ::
          invalid_parameter_values_exception() | resource_not_found_exception()

  @type delete_workspace_bundle_errors() ::
          resource_associated_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type delete_workspace_image_errors() ::
          resource_associated_exception()
          | access_denied_exception()
          | invalid_resource_state_exception()

  @type deploy_workspace_applications_errors() ::
          operation_not_supported_exception()
          | incompatible_applications_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type deregister_workspace_directory_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | invalid_resource_state_exception()
          | resource_not_found_exception()

  @type describe_account_errors() :: access_denied_exception()

  @type describe_account_modifications_errors() :: access_denied_exception()

  @type describe_application_associations_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type describe_applications_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type describe_bundle_associations_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type describe_client_branding_errors() ::
          access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type describe_client_properties_errors() ::
          access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type describe_connect_client_add_ins_errors() ::
          access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type describe_connection_alias_permissions_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type describe_connection_aliases_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()

  @type describe_image_associations_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type describe_ip_groups_errors() ::
          access_denied_exception() | invalid_parameter_values_exception()

  @type describe_tags_errors() :: resource_not_found_exception()

  @type describe_workspace_associations_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type describe_workspace_bundles_errors() :: invalid_parameter_values_exception()

  @type describe_workspace_directories_errors() :: invalid_parameter_values_exception()

  @type describe_workspace_image_permissions_errors() ::
          access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type describe_workspace_images_errors() :: access_denied_exception()

  @type describe_workspace_snapshots_errors() ::
          access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type describe_workspaces_errors() ::
          invalid_parameter_values_exception() | resource_unavailable_exception()

  @type describe_workspaces_connection_status_errors() :: invalid_parameter_values_exception()

  @type describe_workspaces_pool_sessions_errors() ::
          access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type describe_workspaces_pools_errors() ::
          access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type disassociate_connection_alias_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | invalid_resource_state_exception()
          | resource_not_found_exception()

  @type disassociate_ip_groups_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | invalid_resource_state_exception()
          | resource_not_found_exception()

  @type disassociate_workspace_application_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type get_account_link_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type import_client_branding_errors() ::
          access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_limit_exceeded_exception()
          | resource_not_found_exception()

  @type import_workspace_image_errors() ::
          operation_not_supported_exception()
          | resource_already_exists_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_limit_exceeded_exception()
          | resource_not_found_exception()

  @type list_account_links_errors() ::
          validation_exception() | access_denied_exception() | internal_server_exception()

  @type list_available_management_cidr_ranges_errors() ::
          access_denied_exception() | invalid_parameter_values_exception()

  @type migrate_workspace_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | operation_in_progress_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()

  @type modify_account_errors() ::
          access_denied_exception()
          | invalid_parameter_values_exception()
          | invalid_resource_state_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()

  @type modify_certificate_based_auth_properties_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type modify_client_properties_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type modify_saml_properties_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type modify_selfservice_permissions_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type modify_streaming_properties_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type modify_workspace_access_properties_errors() ::
          access_denied_exception() | resource_not_found_exception()

  @type modify_workspace_creation_properties_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type modify_workspace_properties_errors() ::
          unsupported_workspace_configuration_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | invalid_resource_state_exception()
          | operation_in_progress_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()

  @type modify_workspace_state_errors() ::
          operation_not_supported_exception()
          | invalid_parameter_values_exception()
          | invalid_resource_state_exception()
          | resource_not_found_exception()

  @type reboot_workspaces_errors() :: operation_not_supported_exception()

  @type rebuild_workspaces_errors() :: operation_not_supported_exception()

  @type register_workspace_directory_errors() ::
          operation_not_supported_exception()
          | resource_already_exists_exception()
          | access_denied_exception()
          | workspaces_default_role_not_found_exception()
          | invalid_parameter_values_exception()
          | invalid_resource_state_exception()
          | resource_limit_exceeded_exception()
          | resource_not_found_exception()
          | unsupported_network_configuration_exception()

  @type reject_account_link_invitation_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type restore_workspace_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type revoke_ip_rules_errors() ::
          access_denied_exception()
          | invalid_parameter_values_exception()
          | invalid_resource_state_exception()
          | resource_not_found_exception()

  @type start_workspaces_pool_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | invalid_resource_state_exception()
          | resource_limit_exceeded_exception()
          | operation_in_progress_exception()
          | resource_not_found_exception()

  @type stop_workspaces_pool_errors() ::
          access_denied_exception()
          | invalid_parameter_values_exception()
          | invalid_resource_state_exception()
          | operation_in_progress_exception()
          | resource_not_found_exception()

  @type terminate_workspaces_pool_errors() ::
          access_denied_exception()
          | invalid_parameter_values_exception()
          | invalid_resource_state_exception()
          | operation_in_progress_exception()
          | resource_not_found_exception()

  @type terminate_workspaces_pool_session_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | operation_in_progress_exception()
          | resource_not_found_exception()

  @type update_connect_client_add_in_errors() ::
          access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type update_connection_alias_permission_errors() ::
          operation_not_supported_exception()
          | resource_associated_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | invalid_resource_state_exception()
          | resource_limit_exceeded_exception()
          | resource_not_found_exception()

  @type update_rules_of_ip_group_errors() ::
          access_denied_exception()
          | invalid_parameter_values_exception()
          | invalid_resource_state_exception()
          | resource_limit_exceeded_exception()
          | resource_not_found_exception()

  @type update_workspace_bundle_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()

  @type update_workspace_image_permission_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()

  @type update_workspaces_pool_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | invalid_resource_state_exception()
          | resource_limit_exceeded_exception()
          | operation_in_progress_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2015-04-08",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "workspaces",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "WorkSpaces",
      signature_version: "v4",
      signing_name: "workspaces",
      target_prefix: "WorkspacesService"
    }
  end

  @doc """
   
  Accepts the account link invitation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20AcceptAccountLinkInvitation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:accept_account_link_invitation_request`)
    %{
      optional("ClientToken") => String.t(),
      required("LinkId") => String.t()
    }
  """
  @spec accept_account_link_invitation(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, accept_account_link_invitation_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, accept_account_link_invitation_errors()}
  def accept_account_link_invitation(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AcceptAccountLinkInvitation", input, options)
  end

  @doc """
   
  Associates the specified connection alias with the specified directory to enable
  cross-Region redirection. For more information, see [ Cross-Region Redirection
  for Amazon
  WorkSpaces](https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html).
  Before performing this operation, call [
  DescribeConnectionAliases](https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeConnectionAliases.html)
  to make sure that the current state of the connection alias is `CREATED`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20AssociateConnectionAlias&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:associate_connection_alias_request`)
    %{
      required("AliasId") => String.t(),
      required("ResourceId") => String.t()
    }
  """
  @spec associate_connection_alias(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, associate_connection_alias_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_connection_alias_errors()}
  def associate_connection_alias(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssociateConnectionAlias", input, options)
  end

  @doc """
   
  Associates the specified IP access control group with the specified directory.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20AssociateIpGroups&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:associate_ip_groups_request`)
    %{
      required("DirectoryId") => String.t(),
      required("GroupIds") => list(String.t()())
    }
  """
  @spec associate_ip_groups(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, associate_ip_groups_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_ip_groups_errors()}
  def associate_ip_groups(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssociateIpGroups", input, options)
  end

  @doc """
   
  Associates the specified application to the specified WorkSpace.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20AssociateWorkspaceApplication&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:associate_workspace_application_request`)
    %{
      required("ApplicationId") => String.t(),
      required("WorkspaceId") => String.t()
    }
  """
  @spec associate_workspace_application(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, associate_workspace_application_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_workspace_application_errors()}
  def associate_workspace_application(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssociateWorkspaceApplication", input, options)
  end

  @doc """
   
  Adds one or more rules to the specified IP access control group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20AuthorizeIpRules&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:authorize_ip_rules_request`)
    %{
      required("GroupId") => String.t(),
      required("UserRules") => list(ip_rule_item()())
    }
  """
  @spec authorize_ip_rules(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, authorize_ip_rules_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, authorize_ip_rules_errors()}
  def authorize_ip_rules(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AuthorizeIpRules", input, options)
  end

  @doc """
   
  Copies the specified image from the specified Region to the current Region. For
  more information about copying images, see [ Copy a Custom WorkSpaces
  Image](https://docs.aws.amazon.com/workspaces/latest/adminguide/copy-custom-image.html).
  In the China (Ningxia) Region, you can copy images only within the same
  Region. In Amazon Web Services GovCloud (US), to copy images to and from other
  Regions, contact Amazon Web Services Support.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20CopyWorkspaceImage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:copy_workspace_image_request`)
    %{
      optional("Description") => String.t(),
      optional("Tags") => list(tag()()),
      required("Name") => String.t(),
      required("SourceImageId") => String.t(),
      required("SourceRegion") => String.t()
    }
  """
  @spec copy_workspace_image(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, copy_workspace_image_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, copy_workspace_image_errors()}
  def copy_workspace_image(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CopyWorkspaceImage", input, options)
  end

  @doc """
   
  Creates the account link invitation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20CreateAccountLinkInvitation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_account_link_invitation_request`)
    %{
      optional("ClientToken") => String.t(),
      required("TargetAccountId") => String.t()
    }
  """
  @spec create_account_link_invitation(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_account_link_invitation_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_account_link_invitation_errors()}
  def create_account_link_invitation(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateAccountLinkInvitation", input, options)
  end

  @doc """
   
  Creates a client-add-in for Amazon Connect within a directory. You can create
  only one Amazon Connect client add-in within a directory.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20CreateConnectClientAddIn&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_connect_client_add_in_request`)
    %{
      required("Name") => String.t(),
      required("ResourceId") => String.t(),
      required("URL") => String.t()
    }
  """
  @spec create_connect_client_add_in(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_connect_client_add_in_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_connect_client_add_in_errors()}
  def create_connect_client_add_in(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateConnectClientAddIn", input, options)
  end

  @doc """
   
  Creates the specified connection alias for use with cross-Region redirection.
  For more information, see [ Cross-Region Redirection for Amazon
  WorkSpaces](https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20CreateConnectionAlias&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_connection_alias_request`)
    %{
      optional("Tags") => list(tag()()),
      required("ConnectionString") => String.t()
    }
  """
  @spec create_connection_alias(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_connection_alias_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_connection_alias_errors()}
  def create_connection_alias(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateConnectionAlias", input, options)
  end

  @doc """
   
  Creates an IP access control group. An IP access control group provides you with
  the ability to control the IP addresses from which users are allowed to access
  their WorkSpaces. To specify the CIDR address ranges, add rules to your IP
  access control group and then associate the group with your directory. You can
  add rules when you create the group or at any time using `AuthorizeIpRules`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20CreateIpGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_ip_group_request`)
    %{
      optional("GroupDesc") => String.t(),
      optional("Tags") => list(tag()()),
      optional("UserRules") => list(ip_rule_item()()),
      required("GroupName") => String.t()
    }
  """
  @spec create_ip_group(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_ip_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_ip_group_errors()}
  def create_ip_group(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateIpGroup", input, options)
  end

  @doc """
   
  Creates a standby WorkSpace in a secondary Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20CreateStandbyWorkspaces&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_standby_workspaces_request`)
    %{
      required("PrimaryRegion") => String.t(),
      required("StandbyWorkspaces") => list(standby_workspace()())
    }
  """
  @spec create_standby_workspaces(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_standby_workspaces_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_standby_workspaces_errors()}
  def create_standby_workspaces(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateStandbyWorkspaces", input, options)
  end

  @doc """
   
  Creates the specified tags for the specified WorkSpaces resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20CreateTags&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_tags_request`)
    %{
      required("ResourceId") => String.t(),
      required("Tags") => list(tag()())
    }
  """
  @spec create_tags(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_tags_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_tags_errors()}
  def create_tags(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateTags", input, options)
  end

  @doc """
   
  Creates a new updated WorkSpace image based on the specified source image. The
  new updated WorkSpace image has the latest drivers and other updates required
  by the Amazon WorkSpaces components. To determine which WorkSpace images need
  to be updated with the latest Amazon WorkSpaces requirements, use [
  DescribeWorkspaceImages](https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaceImages.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20CreateUpdatedWorkspaceImage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_updated_workspace_image_request`)
    %{
      optional("Tags") => list(tag()()),
      required("Description") => String.t(),
      required("Name") => String.t(),
      required("SourceImageId") => String.t()
    }
  """
  @spec create_updated_workspace_image(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_updated_workspace_image_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_updated_workspace_image_errors()}
  def create_updated_workspace_image(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateUpdatedWorkspaceImage", input, options)
  end

  @doc """
   
  Creates the specified WorkSpace bundle. For more information about creating
  WorkSpace bundles, see [ Create a Custom WorkSpaces Image and
  Bundle](https://docs.aws.amazon.com/workspaces/latest/adminguide/create-custom-bundle.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20CreateWorkspaceBundle&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_workspace_bundle_request`)
    %{
      optional("RootStorage") => root_storage(),
      optional("Tags") => list(tag()()),
      required("BundleDescription") => String.t(),
      required("BundleName") => String.t(),
      required("ComputeType") => compute_type(),
      required("ImageId") => String.t(),
      required("UserStorage") => user_storage()
    }
  """
  @spec create_workspace_bundle(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_workspace_bundle_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_workspace_bundle_errors()}
  def create_workspace_bundle(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateWorkspaceBundle", input, options)
  end

  @doc """
   
  Creates a new WorkSpace image from an existing WorkSpace.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20CreateWorkspaceImage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_workspace_image_request`)
    %{
      optional("Tags") => list(tag()()),
      required("Description") => String.t(),
      required("Name") => String.t(),
      required("WorkspaceId") => String.t()
    }
  """
  @spec create_workspace_image(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_workspace_image_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_workspace_image_errors()}
  def create_workspace_image(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateWorkspaceImage", input, options)
  end

  @doc """
   
  Creates one or more WorkSpaces. This operation is asynchronous and returns
  before the WorkSpaces are created.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20CreateWorkspaces&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_workspaces_request`)
    %{
      required("Workspaces") => list(workspace_request()())
    }
  """
  @spec create_workspaces(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_workspaces_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_workspaces_errors()}
  def create_workspaces(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateWorkspaces", input, options)
  end

  @doc """
   
  Creates a pool of WorkSpaces.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20CreateWorkspacesPool&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_workspaces_pool_request`)
    %{
      optional("ApplicationSettings") => application_settings_request(),
      optional("Tags") => list(tag()()),
      optional("TimeoutSettings") => timeout_settings(),
      required("BundleId") => String.t(),
      required("Capacity") => capacity(),
      required("Description") => String.t(),
      required("DirectoryId") => String.t(),
      required("PoolName") => String.t()
    }
  """
  @spec create_workspaces_pool(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_workspaces_pool_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_workspaces_pool_errors()}
  def create_workspaces_pool(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateWorkspacesPool", input, options)
  end

  @doc """
   
  Deletes the account link invitation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20DeleteAccountLinkInvitation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_account_link_invitation_request`)
    %{
      optional("ClientToken") => String.t(),
      required("LinkId") => String.t()
    }
  """
  @spec delete_account_link_invitation(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_account_link_invitation_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_account_link_invitation_errors()}
  def delete_account_link_invitation(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteAccountLinkInvitation", input, options)
  end

  @doc """
   
  Deletes customized client branding. Client branding allows you to customize your
  WorkSpace's client login portal. You can tailor your login portal company
  logo, the support email address, support link, link to reset password, and a
  custom message for users trying to sign in.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20DeleteClientBranding&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_client_branding_request`)
    %{
      required("Platforms") => list(list(any())()),
      required("ResourceId") => String.t()
    }
  """
  @spec delete_client_branding(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_client_branding_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_client_branding_errors()}
  def delete_client_branding(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteClientBranding", input, options)
  end

  @doc """
   
  Deletes a client-add-in for Amazon Connect that is configured within a
  directory.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20DeleteConnectClientAddIn&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_connect_client_add_in_request`)
    %{
      required("AddInId") => String.t(),
      required("ResourceId") => String.t()
    }
  """
  @spec delete_connect_client_add_in(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_connect_client_add_in_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_connect_client_add_in_errors()}
  def delete_connect_client_add_in(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteConnectClientAddIn", input, options)
  end

  @doc """
   
  Deletes the specified connection alias. For more information, see [ Cross-Region
  Redirection for Amazon
  WorkSpaces](https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html).
  **If you will no longer be using a fully qualified domain name (FQDN) as the
  registration code for your WorkSpaces users, you must take certain precautions
  to prevent potential security issues.** For more information, see [ Security
  Considerations if You Stop Using Cross-Region
  Redirection](https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html#cross-region-redirection-security-considerations).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20DeleteConnectionAlias&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_connection_alias_request`)
    %{
      required("AliasId") => String.t()
    }
  """
  @spec delete_connection_alias(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_connection_alias_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_connection_alias_errors()}
  def delete_connection_alias(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteConnectionAlias", input, options)
  end

  @doc """
   
  Deletes the specified IP access control group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20DeleteIpGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_ip_group_request`)
    %{
      required("GroupId") => String.t()
    }
  """
  @spec delete_ip_group(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_ip_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_ip_group_errors()}
  def delete_ip_group(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteIpGroup", input, options)
  end

  @doc """
   
  Deletes the specified tags from the specified WorkSpaces resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20DeleteTags&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_tags_request`)
    %{
      required("ResourceId") => String.t(),
      required("TagKeys") => list(String.t()())
    }
  """
  @spec delete_tags(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_tags_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_tags_errors()}
  def delete_tags(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteTags", input, options)
  end

  @doc """
   
  Deletes the specified WorkSpace bundle. For more information about deleting
  WorkSpace bundles, see [ Delete a Custom WorkSpaces Bundle or
  Image](https://docs.aws.amazon.com/workspaces/latest/adminguide/delete_bundle.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20DeleteWorkspaceBundle&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_workspace_bundle_request`)
    %{
      optional("BundleId") => String.t()
    }
  """
  @spec delete_workspace_bundle(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_workspace_bundle_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_workspace_bundle_errors()}
  def delete_workspace_bundle(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteWorkspaceBundle", input, options)
  end

  @doc """
   
  Deletes the specified image from your account. To delete an image, you must
  first delete any bundles that are associated with the image and unshare the
  image if it is shared with other accounts.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20DeleteWorkspaceImage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_workspace_image_request`)
    %{
      required("ImageId") => String.t()
    }
  """
  @spec delete_workspace_image(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_workspace_image_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_workspace_image_errors()}
  def delete_workspace_image(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteWorkspaceImage", input, options)
  end

  @doc """
   
  Deploys associated applications to the specified WorkSpace

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20DeployWorkspaceApplications&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:deploy_workspace_applications_request`)
    %{
      optional("Force") => boolean(),
      required("WorkspaceId") => String.t()
    }
  """
  @spec deploy_workspace_applications(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, deploy_workspace_applications_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deploy_workspace_applications_errors()}
  def deploy_workspace_applications(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeployWorkspaceApplications", input, options)
  end

  @doc """
   
  Deregisters the specified directory. This operation is asynchronous and returns
  before the WorkSpace directory is deregistered. If any WorkSpaces are
  registered to this directory, you must remove them before you can deregister
  the directory.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20DeregisterWorkspaceDirectory&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:deregister_workspace_directory_request`)
    %{
      required("DirectoryId") => String.t()
    }
  """
  @spec deregister_workspace_directory(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, deregister_workspace_directory_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deregister_workspace_directory_errors()}
  def deregister_workspace_directory(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeregisterWorkspaceDirectory", input, options)
  end

  @doc """
   
  Retrieves a list that describes the configuration of Bring Your Own License
  (BYOL) for the specified account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20DescribeAccount&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_account_request`)
    %{
      
    }
  """
  @spec describe_account(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_account_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_account_errors()}
  def describe_account(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeAccount", input, options)
  end

  @doc """
   
  Retrieves a list that describes modifications to the configuration of Bring Your
  Own License (BYOL) for the specified account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20DescribeAccountModifications&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_account_modifications_request`)
    %{
      optional("NextToken") => String.t()
    }
  """
  @spec describe_account_modifications(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_account_modifications_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_account_modifications_errors()}
  def describe_account_modifications(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeAccountModifications", input, options)
  end

  @doc """
   
  Describes the associations between the application and the specified associated
  resources.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20DescribeApplicationAssociations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_application_associations_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("ApplicationId") => String.t(),
      required("AssociatedResourceTypes") => list(list(any())())
    }
  """
  @spec describe_application_associations(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_application_associations_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_application_associations_errors()}
  def describe_application_associations(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeApplicationAssociations", input, options)
  end

  @doc """
   
  Describes the specified applications by filtering based on their compute types,
  license availability, operating systems, and owners.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20DescribeApplications&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_applications_request`)
    %{
      optional("ApplicationIds") => list(String.t()()),
      optional("ComputeTypeNames") => list(list(any())()),
      optional("LicenseType") => list(any()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("OperatingSystemNames") => list(list(any())()),
      optional("Owner") => String.t()
    }
  """
  @spec describe_applications(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_applications_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_applications_errors()}
  def describe_applications(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeApplications", input, options)
  end

  @doc """
   
  Describes the associations between the applications and the specified bundle.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20DescribeBundleAssociations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_bundle_associations_request`)
    %{
      required("AssociatedResourceTypes") => list(list(any())()),
      required("BundleId") => String.t()
    }
  """
  @spec describe_bundle_associations(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_bundle_associations_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_bundle_associations_errors()}
  def describe_bundle_associations(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeBundleAssociations", input, options)
  end

  @doc """
   
  Describes the specified client branding. Client branding allows you to customize
  the log in page of various device types for your users. You can add your
  company logo, the support email address, support link, link to reset password,
  and a custom message for users trying to sign in.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20DescribeClientBranding&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_client_branding_request`)
    %{
      required("ResourceId") => String.t()
    }
  """
  @spec describe_client_branding(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_client_branding_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_client_branding_errors()}
  def describe_client_branding(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeClientBranding", input, options)
  end

  @doc """
   
  Retrieves a list that describes one or more specified Amazon WorkSpaces clients.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20DescribeClientProperties&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_client_properties_request`)
    %{
      required("ResourceIds") => list(String.t()())
    }
  """
  @spec describe_client_properties(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_client_properties_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_client_properties_errors()}
  def describe_client_properties(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeClientProperties", input, options)
  end

  @doc """
   
  Retrieves a list of Amazon Connect client add-ins that have been created.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20DescribeConnectClientAddIns&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_connect_client_add_ins_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("ResourceId") => String.t()
    }
  """
  @spec describe_connect_client_add_ins(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_connect_client_add_ins_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_connect_client_add_ins_errors()}
  def describe_connect_client_add_ins(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeConnectClientAddIns", input, options)
  end

  @doc """
   
  Describes the permissions that the owner of a connection alias has granted to
  another Amazon Web Services account for the specified connection alias. For
  more information, see [ Cross-Region Redirection for Amazon
  WorkSpaces](https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20DescribeConnectionAliasPermissions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_connection_alias_permissions_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("AliasId") => String.t()
    }
  """
  @spec describe_connection_alias_permissions(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_connection_alias_permissions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_connection_alias_permissions_errors()}
  def describe_connection_alias_permissions(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeConnectionAliasPermissions", input, options)
  end

  @doc """
   
  Retrieves a list that describes the connection aliases used for cross-Region
  redirection. For more information, see [ Cross-Region Redirection for Amazon
  WorkSpaces](https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20DescribeConnectionAliases&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_connection_aliases_request`)
    %{
      optional("AliasIds") => list(String.t()()),
      optional("Limit") => integer(),
      optional("NextToken") => String.t(),
      optional("ResourceId") => String.t()
    }
  """
  @spec describe_connection_aliases(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_connection_aliases_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_connection_aliases_errors()}
  def describe_connection_aliases(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeConnectionAliases", input, options)
  end

  @doc """
   
  Describes the associations between the applications and the specified image.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20DescribeImageAssociations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_image_associations_request`)
    %{
      required("AssociatedResourceTypes") => list(list(any())()),
      required("ImageId") => String.t()
    }
  """
  @spec describe_image_associations(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_image_associations_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_image_associations_errors()}
  def describe_image_associations(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeImageAssociations", input, options)
  end

  @doc """
   
  Describes one or more of your IP access control groups.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20DescribeIpGroups&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_ip_groups_request`)
    %{
      optional("GroupIds") => list(String.t()()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """
  @spec describe_ip_groups(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_ip_groups_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_ip_groups_errors()}
  def describe_ip_groups(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeIpGroups", input, options)
  end

  @doc """
   
  Describes the specified tags for the specified WorkSpaces resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20DescribeTags&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_tags_request`)
    %{
      required("ResourceId") => String.t()
    }
  """
  @spec describe_tags(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_tags_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_tags_errors()}
  def describe_tags(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeTags", input, options)
  end

  @doc """
   
  Describes the associations betweens applications and the specified WorkSpace.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20DescribeWorkspaceAssociations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_workspace_associations_request`)
    %{
      required("AssociatedResourceTypes") => list(list(any())()),
      required("WorkspaceId") => String.t()
    }
  """
  @spec describe_workspace_associations(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_workspace_associations_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_workspace_associations_errors()}
  def describe_workspace_associations(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeWorkspaceAssociations", input, options)
  end

  @doc """
   
  Retrieves a list that describes the available WorkSpace bundles.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20DescribeWorkspaceBundles&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_workspace_bundles_request`)
    %{
      optional("BundleIds") => list(String.t()()),
      optional("NextToken") => String.t(),
      optional("Owner") => String.t()
    }
  """
  @spec describe_workspace_bundles(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_workspace_bundles_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_workspace_bundles_errors()}
  def describe_workspace_bundles(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeWorkspaceBundles", input, options)
  end

  @doc """
   
  Describes the available directories that are registered with Amazon WorkSpaces.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20DescribeWorkspaceDirectories&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_workspace_directories_request`)
    %{
      optional("DirectoryIds") => list(String.t()()),
      optional("Limit") => integer(),
      optional("NextToken") => String.t(),
      optional("WorkspaceDirectoryNames") => list(String.t()())
    }
  """
  @spec describe_workspace_directories(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_workspace_directories_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_workspace_directories_errors()}
  def describe_workspace_directories(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeWorkspaceDirectories", input, options)
  end

  @doc """
   
  Describes the permissions that the owner of an image has granted to other Amazon
  Web Services accounts for an image.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20DescribeWorkspaceImagePermissions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_workspace_image_permissions_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("ImageId") => String.t()
    }
  """
  @spec describe_workspace_image_permissions(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_workspace_image_permissions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_workspace_image_permissions_errors()}
  def describe_workspace_image_permissions(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeWorkspaceImagePermissions", input, options)
  end

  @doc """
   
  Retrieves a list that describes one or more specified images, if the image
  identifiers are provided. Otherwise, all images in the account are described.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20DescribeWorkspaceImages&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_workspace_images_request`)
    %{
      optional("ImageIds") => list(String.t()()),
      optional("ImageType") => list(any()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """
  @spec describe_workspace_images(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_workspace_images_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_workspace_images_errors()}
  def describe_workspace_images(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeWorkspaceImages", input, options)
  end

  @doc """
   
  Describes the snapshots for the specified WorkSpace.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20DescribeWorkspaceSnapshots&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_workspace_snapshots_request`)
    %{
      required("WorkspaceId") => String.t()
    }
  """
  @spec describe_workspace_snapshots(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_workspace_snapshots_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_workspace_snapshots_errors()}
  def describe_workspace_snapshots(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeWorkspaceSnapshots", input, options)
  end

  @doc """
   
  Describes the specified WorkSpaces.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20DescribeWorkspaces&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_workspaces_request`)
    %{
      optional("BundleId") => String.t(),
      optional("DirectoryId") => String.t(),
      optional("Limit") => integer(),
      optional("NextToken") => String.t(),
      optional("UserName") => String.t(),
      optional("WorkspaceIds") => list(String.t()()),
      optional("WorkspaceName") => String.t()
    }
  """
  @spec describe_workspaces(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_workspaces_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_workspaces_errors()}
  def describe_workspaces(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeWorkspaces", input, options)
  end

  @doc """
   
  Describes the connection status of the specified WorkSpaces.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20DescribeWorkspacesConnectionStatus&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_workspaces_connection_status_request`)
    %{
      optional("NextToken") => String.t(),
      optional("WorkspaceIds") => list(String.t()())
    }
  """
  @spec describe_workspaces_connection_status(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_workspaces_connection_status_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_workspaces_connection_status_errors()}
  def describe_workspaces_connection_status(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeWorkspacesConnectionStatus", input, options)
  end

  @doc """
   
  Retrieves a list that describes the streaming sessions for a specified pool.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20DescribeWorkspacesPoolSessions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_workspaces_pool_sessions_request`)
    %{
      optional("Limit") => integer(),
      optional("NextToken") => String.t(),
      optional("UserId") => String.t(),
      required("PoolId") => String.t()
    }
  """
  @spec describe_workspaces_pool_sessions(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_workspaces_pool_sessions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_workspaces_pool_sessions_errors()}
  def describe_workspaces_pool_sessions(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeWorkspacesPoolSessions", input, options)
  end

  @doc """
   
  Describes the specified WorkSpaces Pools.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20DescribeWorkspacesPools&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_workspaces_pools_request`)
    %{
      optional("Filters") => list(describe_workspaces_pools_filter()()),
      optional("Limit") => integer(),
      optional("NextToken") => String.t(),
      optional("PoolIds") => list(String.t()())
    }
  """
  @spec describe_workspaces_pools(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_workspaces_pools_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_workspaces_pools_errors()}
  def describe_workspaces_pools(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeWorkspacesPools", input, options)
  end

  @doc """
   
  Disassociates a connection alias from a directory. Disassociating a connection
  alias disables cross-Region redirection between two directories in different
  Regions. For more information, see [ Cross-Region Redirection for Amazon
  WorkSpaces](https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html).
  Before performing this operation, call [
  DescribeConnectionAliases](https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeConnectionAliases.html)
  to make sure that the current state of the connection alias is `CREATED`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20DisassociateConnectionAlias&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:disassociate_connection_alias_request`)
    %{
      required("AliasId") => String.t()
    }
  """
  @spec disassociate_connection_alias(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, disassociate_connection_alias_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_connection_alias_errors()}
  def disassociate_connection_alias(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisassociateConnectionAlias", input, options)
  end

  @doc """
   
  Disassociates the specified IP access control group from the specified
  directory.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20DisassociateIpGroups&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:disassociate_ip_groups_request`)
    %{
      required("DirectoryId") => String.t(),
      required("GroupIds") => list(String.t()())
    }
  """
  @spec disassociate_ip_groups(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, disassociate_ip_groups_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_ip_groups_errors()}
  def disassociate_ip_groups(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisassociateIpGroups", input, options)
  end

  @doc """
   
  Disassociates the specified application from a WorkSpace.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20DisassociateWorkspaceApplication&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:disassociate_workspace_application_request`)
    %{
      required("ApplicationId") => String.t(),
      required("WorkspaceId") => String.t()
    }
  """
  @spec disassociate_workspace_application(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, disassociate_workspace_application_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_workspace_application_errors()}
  def disassociate_workspace_application(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisassociateWorkspaceApplication", input, options)
  end

  @doc """
   
  Retrieves account link information.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20GetAccountLink&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_account_link_request`)
    %{
      optional("LinkId") => String.t(),
      optional("LinkedAccountId") => String.t()
    }
  """
  @spec get_account_link(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_account_link_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_account_link_errors()}
  def get_account_link(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetAccountLink", input, options)
  end

  @doc """
   
  Imports client branding. Client branding allows you to customize your
  WorkSpace's client login portal. You can tailor your login portal company
  logo, the support email address, support link, link to reset password, and a
  custom message for users trying to sign in. After you import client branding,
  the default branding experience for the specified platform type is replaced
  with the imported experience

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20ImportClientBranding&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:import_client_branding_request`)
    %{
      optional("DeviceTypeAndroid") => default_import_client_branding_attributes(),
      optional("DeviceTypeIos") => ios_import_client_branding_attributes(),
      optional("DeviceTypeLinux") => default_import_client_branding_attributes(),
      optional("DeviceTypeOsx") => default_import_client_branding_attributes(),
      optional("DeviceTypeWeb") => default_import_client_branding_attributes(),
      optional("DeviceTypeWindows") => default_import_client_branding_attributes(),
      required("ResourceId") => String.t()
    }
  """
  @spec import_client_branding(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, import_client_branding_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, import_client_branding_errors()}
  def import_client_branding(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ImportClientBranding", input, options)
  end

  @doc """
   
  Imports the specified Windows 10 or 11 Bring Your Own License (BYOL) image into
  Amazon WorkSpaces. The image must be an already licensed Amazon EC2 image that
  is in your Amazon Web Services account, and you must own the image. For more
  information about creating BYOL images, see [ Bring Your Own Windows Desktop
  Licenses](https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20ImportWorkspaceImage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:import_workspace_image_request`)
    %{
      optional("Applications") => list(list(any())()),
      optional("Tags") => list(tag()()),
      required("Ec2ImageId") => String.t(),
      required("ImageDescription") => String.t(),
      required("ImageName") => String.t(),
      required("IngestionProcess") => list(any())
    }
  """
  @spec import_workspace_image(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, import_workspace_image_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, import_workspace_image_errors()}
  def import_workspace_image(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ImportWorkspaceImage", input, options)
  end

  @doc """
   
  Lists all account links.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20ListAccountLinks&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_account_links_request`)
    %{
      optional("LinkStatusFilter") => list(list(any())()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """
  @spec list_account_links(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_account_links_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_account_links_errors()}
  def list_account_links(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAccountLinks", input, options)
  end

  @doc """
   
  Retrieves a list of IP address ranges, specified as IPv4 CIDR blocks, that you
  can use for the network management interface when you enable Bring Your Own
  License (BYOL). This operation can be run only by Amazon Web Services accounts
  that are enabled for BYOL. If your account isn't enabled for BYOL, you'll
  receive an `AccessDeniedException` error.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20ListAvailableManagementCidrRanges&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_available_management_cidr_ranges_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("ManagementCidrRangeConstraint") => String.t()
    }
  """
  @spec list_available_management_cidr_ranges(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_available_management_cidr_ranges_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_available_management_cidr_ranges_errors()}
  def list_available_management_cidr_ranges(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAvailableManagementCidrRanges", input, options)
  end

  @doc """
   
  Migrates a WorkSpace from one operating system or bundle type to another, while
  retaining the data on the user volume. The migration process recreates the
  WorkSpace by using a new root volume from the target bundle image and the user
  volume from the last available snapshot of the original WorkSpace. During
  migration, the original `D:\Users\%USERNAME%` user profile folder is renamed
  to `D:\Users\%USERNAME%MMddyyTHHmmss%.NotMigrated`. A new
  `D:\Users\%USERNAME%\` folder is generated by the new OS. Certain files in the
  old user profile are moved to the new user profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20MigrateWorkspace&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:migrate_workspace_request`)
    %{
      required("BundleId") => String.t(),
      required("SourceWorkspaceId") => String.t()
    }
  """
  @spec migrate_workspace(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, migrate_workspace_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, migrate_workspace_errors()}
  def migrate_workspace(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "MigrateWorkspace", input, options)
  end

  @doc """
   
  Modifies the configuration of Bring Your Own License (BYOL) for the specified
  account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20ModifyAccount&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:modify_account_request`)
    %{
      optional("DedicatedTenancyManagementCidrRange") => String.t(),
      optional("DedicatedTenancySupport") => list(any())
    }
  """
  @spec modify_account(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, modify_account_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_account_errors()}
  def modify_account(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifyAccount", input, options)
  end

  @doc """
   
  Modifies the properties of the certificate-based authentication you want to use
  with your WorkSpaces.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20ModifyCertificateBasedAuthProperties&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:modify_certificate_based_auth_properties_request`)
    %{
      optional("CertificateBasedAuthProperties") => certificate_based_auth_properties(),
      optional("PropertiesToDelete") => list(list(any())()),
      required("ResourceId") => String.t()
    }
  """
  @spec modify_certificate_based_auth_properties(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, modify_certificate_based_auth_properties_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_certificate_based_auth_properties_errors()}
  def modify_certificate_based_auth_properties(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifyCertificateBasedAuthProperties", input, options)
  end

  @doc """
   
  Modifies the properties of the specified Amazon WorkSpaces clients.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20ModifyClientProperties&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:modify_client_properties_request`)
    %{
      required("ClientProperties") => client_properties(),
      required("ResourceId") => String.t()
    }
  """
  @spec modify_client_properties(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, modify_client_properties_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_client_properties_errors()}
  def modify_client_properties(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifyClientProperties", input, options)
  end

  @doc """
   
  Modifies multiple properties related to SAML 2.0 authentication, including the
  enablement status, user access URL, and relay state parameter name that are
  used for configuring federation with an SAML 2.0 identity provider.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20ModifySamlProperties&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:modify_saml_properties_request`)
    %{
      optional("PropertiesToDelete") => list(list(any())()),
      optional("SamlProperties") => saml_properties(),
      required("ResourceId") => String.t()
    }
  """
  @spec modify_saml_properties(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, modify_saml_properties_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_saml_properties_errors()}
  def modify_saml_properties(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifySamlProperties", input, options)
  end

  @doc """
   
  Modifies the self-service WorkSpace management capabilities for your users. For
  more information, see [Enable Self-Service WorkSpace Management Capabilities
  for Your
  Users](https://docs.aws.amazon.com/workspaces/latest/adminguide/enable-user-self-service-workspace-management.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20ModifySelfservicePermissions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:modify_selfservice_permissions_request`)
    %{
      required("ResourceId") => String.t(),
      required("SelfservicePermissions") => selfservice_permissions()
    }
  """
  @spec modify_selfservice_permissions(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, modify_selfservice_permissions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_selfservice_permissions_errors()}
  def modify_selfservice_permissions(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifySelfservicePermissions", input, options)
  end

  @doc """
   
  Modifies the specified streaming properties.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20ModifyStreamingProperties&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:modify_streaming_properties_request`)
    %{
      optional("StreamingProperties") => streaming_properties(),
      required("ResourceId") => String.t()
    }
  """
  @spec modify_streaming_properties(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, modify_streaming_properties_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_streaming_properties_errors()}
  def modify_streaming_properties(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifyStreamingProperties", input, options)
  end

  @doc """
   
  Specifies which devices and operating systems users can use to access their
  WorkSpaces. For more information, see [ Control Device
  Access](https://docs.aws.amazon.com/workspaces/latest/adminguide/update-directory-details.html#control-device-access).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20ModifyWorkspaceAccessProperties&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:modify_workspace_access_properties_request`)
    %{
      required("ResourceId") => String.t(),
      required("WorkspaceAccessProperties") => workspace_access_properties()
    }
  """
  @spec modify_workspace_access_properties(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, modify_workspace_access_properties_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_workspace_access_properties_errors()}
  def modify_workspace_access_properties(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifyWorkspaceAccessProperties", input, options)
  end

  @doc """
   
  Modify the default properties used to create WorkSpaces.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20ModifyWorkspaceCreationProperties&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:modify_workspace_creation_properties_request`)
    %{
      required("ResourceId") => String.t(),
      required("WorkspaceCreationProperties") => workspace_creation_properties()
    }
  """
  @spec modify_workspace_creation_properties(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, modify_workspace_creation_properties_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_workspace_creation_properties_errors()}
  def modify_workspace_creation_properties(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifyWorkspaceCreationProperties", input, options)
  end

  @doc """
   
  Modifies the specified WorkSpace properties. For important information about how
  to modify the size of the root and user volumes, see [ Modify a
  WorkSpace](https://docs.aws.amazon.com/workspaces/latest/adminguide/modify-workspaces.html).
  The `MANUAL` running mode value is only supported by Amazon WorkSpaces Core.
  Contact your account team to be allow-listed to use this value. For more
  information, see [Amazon WorkSpaces
  Core](http://aws.amazon.com/workspaces/core/).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20ModifyWorkspaceProperties&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:modify_workspace_properties_request`)
    %{
      optional("DataReplication") => list(any()),
      optional("WorkspaceProperties") => workspace_properties(),
      required("WorkspaceId") => String.t()
    }
  """
  @spec modify_workspace_properties(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, modify_workspace_properties_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_workspace_properties_errors()}
  def modify_workspace_properties(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifyWorkspaceProperties", input, options)
  end

  @doc """
   
  Sets the state of the specified WorkSpace.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20ModifyWorkspaceState&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:modify_workspace_state_request`)
    %{
      required("WorkspaceId") => String.t(),
      required("WorkspaceState") => list(any())
    }
  """
  @spec modify_workspace_state(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, modify_workspace_state_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_workspace_state_errors()}
  def modify_workspace_state(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifyWorkspaceState", input, options)
  end

  @doc """
   
  Reboots the specified WorkSpaces. You cannot reboot a WorkSpace unless its state
  is `AVAILABLE`, `UNHEALTHY`, or `REBOOTING`. Reboot a WorkSpace in the
  `REBOOTING` state only if your WorkSpace has been stuck in the `REBOOTING`
  state for over 20 minutes.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20RebootWorkspaces&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:reboot_workspaces_request`)
    %{
      required("RebootWorkspaceRequests") => list(reboot_request()())
    }
  """
  @spec reboot_workspaces(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, reboot_workspaces_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reboot_workspaces_errors()}
  def reboot_workspaces(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "RebootWorkspaces", input, options)
  end

  @doc """
   
  Rebuilds the specified WorkSpace. You cannot rebuild a WorkSpace unless its
  state is `AVAILABLE`, `ERROR`, `UNHEALTHY`, `STOPPED`, or `REBOOTING`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20RebuildWorkspaces&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:rebuild_workspaces_request`)
    %{
      required("RebuildWorkspaceRequests") => list(rebuild_request()())
    }
  """
  @spec rebuild_workspaces(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, rebuild_workspaces_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, rebuild_workspaces_errors()}
  def rebuild_workspaces(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "RebuildWorkspaces", input, options)
  end

  @doc """
   
  Registers the specified directory. This operation is asynchronous and returns
  before the WorkSpace directory is registered. If this is the first time you
  are registering a directory, you will need to create the
  workspaces_DefaultRole role before you can register a directory. For more
  information, see [ Creating the workspaces_DefaultRole
  Role](https://docs.aws.amazon.com/workspaces/latest/adminguide/workspaces-access-control.html#create-default-role).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20RegisterWorkspaceDirectory&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:register_workspace_directory_request`)
    %{
      optional("ActiveDirectoryConfig") => active_directory_config(),
      optional("DirectoryId") => String.t(),
      optional("EnableSelfService") => boolean(),
      optional("EnableWorkDocs") => boolean(),
      optional("SubnetIds") => list(String.t()()),
      optional("Tags") => list(tag()()),
      optional("Tenancy") => list(any()),
      optional("UserIdentityType") => list(any()),
      optional("WorkspaceDirectoryDescription") => String.t(),
      optional("WorkspaceDirectoryName") => String.t(),
      optional("WorkspaceType") => list(any())
    }
  """
  @spec register_workspace_directory(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, register_workspace_directory_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_workspace_directory_errors()}
  def register_workspace_directory(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "RegisterWorkspaceDirectory", input, options)
  end

  @doc """
   
  Rejects the account link invitation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20RejectAccountLinkInvitation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:reject_account_link_invitation_request`)
    %{
      optional("ClientToken") => String.t(),
      required("LinkId") => String.t()
    }
  """
  @spec reject_account_link_invitation(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, reject_account_link_invitation_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reject_account_link_invitation_errors()}
  def reject_account_link_invitation(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "RejectAccountLinkInvitation", input, options)
  end

  @doc """
   
  Restores the specified WorkSpace to its last known healthy state. You cannot
  restore a WorkSpace unless its state is ` AVAILABLE`, `ERROR`, `UNHEALTHY`, or
  `STOPPED`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20RestoreWorkspace&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:restore_workspace_request`)
    %{
      required("WorkspaceId") => String.t()
    }
  """
  @spec restore_workspace(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, restore_workspace_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, restore_workspace_errors()}
  def restore_workspace(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "RestoreWorkspace", input, options)
  end

  @doc """
   
  Removes one or more rules from the specified IP access control group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20RevokeIpRules&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:revoke_ip_rules_request`)
    %{
      required("GroupId") => String.t(),
      required("UserRules") => list(String.t()())
    }
  """
  @spec revoke_ip_rules(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, revoke_ip_rules_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, revoke_ip_rules_errors()}
  def revoke_ip_rules(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "RevokeIpRules", input, options)
  end

  @doc """
   
  Starts the specified WorkSpaces.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20StartWorkspaces&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:start_workspaces_request`)
    %{
      required("StartWorkspaceRequests") => list(start_request()())
    }
  """
  @spec start_workspaces(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, start_workspaces_result(), any()}
          | {:error, {:unexpected_response, any()}}
  def start_workspaces(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartWorkspaces", input, options)
  end

  @doc """
   
  Starts the specified pool.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20StartWorkspacesPool&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:start_workspaces_pool_request`)
    %{
      required("PoolId") => String.t()
    }
  """
  @spec start_workspaces_pool(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, start_workspaces_pool_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_workspaces_pool_errors()}
  def start_workspaces_pool(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartWorkspacesPool", input, options)
  end

  @doc """
   
  Stops the specified WorkSpaces.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20StopWorkspaces&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:stop_workspaces_request`)
    %{
      required("StopWorkspaceRequests") => list(stop_request()())
    }
  """
  @spec stop_workspaces(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, stop_workspaces_result(), any()}
          | {:error, {:unexpected_response, any()}}
  def stop_workspaces(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopWorkspaces", input, options)
  end

  @doc """
   
  Stops the specified pool.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20StopWorkspacesPool&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:stop_workspaces_pool_request`)
    %{
      required("PoolId") => String.t()
    }
  """
  @spec stop_workspaces_pool(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, stop_workspaces_pool_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_workspaces_pool_errors()}
  def stop_workspaces_pool(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopWorkspacesPool", input, options)
  end

  @doc """
   
  Terminates the specified WorkSpaces. Terminating a WorkSpace is a permanent
  action and cannot be undone. The user's data is destroyed. If you need to
  archive any user data, contact Amazon Web Services Support before terminating
  the WorkSpace.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20TerminateWorkspaces&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:terminate_workspaces_request`)
    %{
      required("TerminateWorkspaceRequests") => list(terminate_request()())
    }
  """
  @spec terminate_workspaces(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, terminate_workspaces_result(), any()}
          | {:error, {:unexpected_response, any()}}
  def terminate_workspaces(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "TerminateWorkspaces", input, options)
  end

  @doc """
   
  Terminates the specified pool.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20TerminateWorkspacesPool&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:terminate_workspaces_pool_request`)
    %{
      required("PoolId") => String.t()
    }
  """
  @spec terminate_workspaces_pool(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, terminate_workspaces_pool_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, terminate_workspaces_pool_errors()}
  def terminate_workspaces_pool(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "TerminateWorkspacesPool", input, options)
  end

  @doc """
   
  Terminates the pool session.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20TerminateWorkspacesPoolSession&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:terminate_workspaces_pool_session_request`)
    %{
      required("SessionId") => String.t()
    }
  """
  @spec terminate_workspaces_pool_session(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, terminate_workspaces_pool_session_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, terminate_workspaces_pool_session_errors()}
  def terminate_workspaces_pool_session(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "TerminateWorkspacesPoolSession", input, options)
  end

  @doc """
   
  Updates a Amazon Connect client add-in. Use this action to update the name and
  endpoint URL of a Amazon Connect client add-in.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20UpdateConnectClientAddIn&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_connect_client_add_in_request`)
    %{
      optional("Name") => String.t(),
      optional("URL") => String.t(),
      required("AddInId") => String.t(),
      required("ResourceId") => String.t()
    }
  """
  @spec update_connect_client_add_in(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_connect_client_add_in_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_connect_client_add_in_errors()}
  def update_connect_client_add_in(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateConnectClientAddIn", input, options)
  end

  @doc """
   
  Shares or unshares a connection alias with one account by specifying whether
  that account has permission to associate the connection alias with a
  directory. If the association permission is granted, the connection alias is
  shared with that account. If the association permission is revoked, the
  connection alias is unshared with the account. For more information, see [
  Cross-Region Redirection for Amazon
  WorkSpaces](https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html).
  Before performing this operation, call [
  DescribeConnectionAliases](https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeConnectionAliases.html)
  to make sure that the current state of the connection alias is `CREATED`. To
  delete a connection alias that has been shared, the shared account must first
  disassociate the connection alias from any directories it has been associated
  with. Then you must unshare the connection alias from the account it has been
  shared with. You can delete a connection alias only after it is no longer
  shared with any accounts or associated with any directories.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20UpdateConnectionAliasPermission&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_connection_alias_permission_request`)
    %{
      required("AliasId") => String.t(),
      required("ConnectionAliasPermission") => connection_alias_permission()
    }
  """
  @spec update_connection_alias_permission(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_connection_alias_permission_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_connection_alias_permission_errors()}
  def update_connection_alias_permission(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateConnectionAliasPermission", input, options)
  end

  @doc """
   
  Replaces the current rules of the specified IP access control group with the
  specified rules.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20UpdateRulesOfIpGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_rules_of_ip_group_request`)
    %{
      required("GroupId") => String.t(),
      required("UserRules") => list(ip_rule_item()())
    }
  """
  @spec update_rules_of_ip_group(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_rules_of_ip_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_rules_of_ip_group_errors()}
  def update_rules_of_ip_group(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateRulesOfIpGroup", input, options)
  end

  @doc """
   
  Updates a WorkSpace bundle with a new image. For more information about updating
  WorkSpace bundles, see [ Update a Custom WorkSpaces
  Bundle](https://docs.aws.amazon.com/workspaces/latest/adminguide/update-custom-bundle.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20UpdateWorkspaceBundle&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_workspace_bundle_request`)
    %{
      optional("BundleId") => String.t(),
      optional("ImageId") => String.t()
    }
  """
  @spec update_workspace_bundle(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_workspace_bundle_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_workspace_bundle_errors()}
  def update_workspace_bundle(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateWorkspaceBundle", input, options)
  end

  @doc """
   
  Shares or unshares an image with one account in the same Amazon Web Services
  Region by specifying whether that account has permission to copy the image. If
  the copy image permission is granted, the image is shared with that account.
  If the copy image permission is revoked, the image is unshared with the
  account. After an image has been shared, the recipient account can copy the
  image to other Regions as needed.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20UpdateWorkspaceImagePermission&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_workspace_image_permission_request`)
    %{
      required("AllowCopyImage") => boolean(),
      required("ImageId") => String.t(),
      required("SharedAccountId") => String.t()
    }
  """
  @spec update_workspace_image_permission(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_workspace_image_permission_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_workspace_image_permission_errors()}
  def update_workspace_image_permission(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateWorkspaceImagePermission", input, options)
  end

  @doc """
   
  Updates the specified pool.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspaces%20UpdateWorkspacesPool&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_workspaces_pool_request`)
    %{
      optional("ApplicationSettings") => application_settings_request(),
      optional("BundleId") => String.t(),
      optional("Capacity") => capacity(),
      optional("Description") => String.t(),
      optional("DirectoryId") => String.t(),
      optional("TimeoutSettings") => timeout_settings(),
      required("PoolId") => String.t()
    }
  """
  @spec update_workspaces_pool(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_workspaces_pool_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_workspaces_pool_errors()}
  def update_workspaces_pool(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateWorkspacesPool", input, options)
  end
end
