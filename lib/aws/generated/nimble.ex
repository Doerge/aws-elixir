# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Nimble do
  @moduledoc """
  Welcome to the Amazon Nimble Studio API reference. This API reference provides
  methods, schema, resources, parameters, and more to help you get the most out
  of Nimble Studio.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      delete_launch_profile_request() :: %{
        optional("clientToken") => String.t()
      }
      
  """
  @type delete_launch_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_streaming_image_request() :: %{}
      
  """
  @type get_streaming_image_request() :: %{}

  @typedoc """

  ## Example:
      
      put_studio_members_request() :: %{
        optional("clientToken") => String.t(),
        required("identityStoreId") => String.t(),
        required("members") => list(new_studio_member()())
      }
      
  """
  @type put_studio_members_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      studio_component_initialization_script() :: %{
        "launchProfileProtocolVersion" => String.t(),
        "platform" => list(any()),
        "runContext" => list(any()),
        "script" => String.t()
      }
      
  """
  @type studio_component_initialization_script() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      launch_profile_initialization() :: %{
        "activeDirectory" => launch_profile_initialization_active_directory(),
        "ec2SecurityGroupIds" => list(String.t()()),
        "launchProfileId" => String.t(),
        "launchProfileProtocolVersion" => String.t(),
        "launchPurpose" => String.t(),
        "name" => String.t(),
        "platform" => list(any()),
        "systemInitializationScripts" => list(launch_profile_initialization_script()()),
        "userInitializationScripts" => list(launch_profile_initialization_script()())
      }
      
  """
  @type launch_profile_initialization() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_streaming_sessions_response() :: %{
        "nextToken" => String.t(),
        "sessions" => list(streaming_session()())
      }
      
  """
  @type list_streaming_sessions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        optional("tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      launch_profile_membership() :: %{
        "identityStoreId" => String.t(),
        "persona" => list(any()),
        "principalId" => String.t(),
        "sid" => String.t()
      }
      
  """
  @type launch_profile_membership() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_studio_component_request() :: %{
        optional("clientToken") => String.t(),
        optional("configuration") => list(),
        optional("description") => String.t(),
        optional("ec2SecurityGroupIds") => list(String.t()()),
        optional("initializationScripts") => list(studio_component_initialization_script()()),
        optional("runtimeRoleArn") => String.t(),
        optional("scriptParameters") => list(script_parameter_key_value()()),
        optional("secureInitializationRoleArn") => String.t(),
        optional("subtype") => list(any()),
        optional("tags") => map(),
        required("name") => String.t(),
        required("type") => list(any())
      }
      
  """
  @type create_studio_component_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_launch_profile_member_request() :: %{
        optional("clientToken") => String.t()
      }
      
  """
  @type delete_launch_profile_member_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_streaming_image_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("name") => String.t()
      }
      
  """
  @type update_streaming_image_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_eulas_response() :: %{
        "eulas" => list(eula()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_eulas_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      eula_acceptance() :: %{
        "acceptedAt" => non_neg_integer(),
        "acceptedBy" => String.t(),
        "accepteeId" => String.t(),
        "eulaAcceptanceId" => String.t(),
        "eulaId" => String.t()
      }
      
  """
  @type eula_acceptance() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_streaming_session_backup_request() :: %{}
      
  """
  @type get_streaming_session_backup_request() :: %{}

  @typedoc """

  ## Example:
      
      create_launch_profile_response() :: %{
        "launchProfile" => launch_profile()
      }
      
  """
  @type create_launch_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      launch_profile_initialization_script() :: %{
        "runtimeRoleArn" => String.t(),
        "script" => String.t(),
        "secureInitializationRoleArn" => String.t(),
        "studioComponentId" => String.t(),
        "studioComponentName" => String.t()
      }
      
  """
  @type launch_profile_initialization_script() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      studio_component() :: %{
        "arn" => String.t(),
        "configuration" => list(),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "ec2SecurityGroupIds" => list(String.t()()),
        "initializationScripts" => list(studio_component_initialization_script()()),
        "name" => String.t(),
        "runtimeRoleArn" => String.t(),
        "scriptParameters" => list(script_parameter_key_value()()),
        "secureInitializationRoleArn" => String.t(),
        "state" => list(any()),
        "statusCode" => list(any()),
        "statusMessage" => String.t(),
        "studioComponentId" => String.t(),
        "subtype" => list(any()),
        "tags" => map(),
        "type" => list(any()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }
      
  """
  @type studio_component() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_studio_response() :: %{
        "studio" => studio()
      }
      
  """
  @type delete_studio_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      streaming_session() :: %{
        "arn" => String.t(),
        "automaticTerminationMode" => list(any()),
        "backupMode" => list(any()),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "ec2InstanceType" => String.t(),
        "launchProfileId" => String.t(),
        "maxBackupsToRetain" => integer(),
        "ownedBy" => String.t(),
        "sessionId" => String.t(),
        "sessionPersistenceMode" => list(any()),
        "startedAt" => non_neg_integer(),
        "startedBy" => String.t(),
        "startedFromBackupId" => String.t(),
        "state" => list(any()),
        "statusCode" => list(any()),
        "statusMessage" => String.t(),
        "stopAt" => non_neg_integer(),
        "stoppedAt" => non_neg_integer(),
        "stoppedBy" => String.t(),
        "streamingImageId" => String.t(),
        "tags" => map(),
        "terminateAt" => non_neg_integer(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t(),
        "volumeConfiguration" => volume_configuration(),
        "volumeRetentionMode" => list(any())
      }
      
  """
  @type streaming_session() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      list_launch_profiles_response() :: %{
        "launchProfiles" => list(launch_profile()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_launch_profiles_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_launch_profile_member_response() :: %{}
      
  """
  @type delete_launch_profile_member_response() :: %{}

  @typedoc """

  ## Example:
      
      list_studio_members_response() :: %{
        "members" => list(studio_membership()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_studio_members_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_streaming_images_response() :: %{
        "nextToken" => String.t(),
        "streamingImages" => list(streaming_image()())
      }
      
  """
  @type list_streaming_images_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_studio_response() :: %{
        "studio" => studio()
      }
      
  """
  @type get_studio_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_streaming_session_request() :: %{
        optional("clientToken") => String.t(),
        optional("volumeRetentionMode") => list(any())
      }
      
  """
  @type stop_streaming_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_studio_component_request() :: %{}
      
  """
  @type get_studio_component_request() :: %{}

  @typedoc """

  ## Example:
      
      list_launch_profiles_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("principalId") => String.t(),
        optional("states") => list(list(any())())
      }
      
  """
  @type list_launch_profiles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stream_configuration_session_storage() :: %{
        "mode" => list(list(any())()),
        "root" => streaming_session_storage_root()
      }
      
  """
  @type stream_configuration_session_storage() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_eula_response() :: %{
        "eula" => eula()
      }
      
  """
  @type get_eula_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_launch_profile_members_response() :: %{
        "members" => list(launch_profile_membership()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_launch_profile_members_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_streaming_session_response() :: %{
        "session" => streaming_session()
      }
      
  """
  @type get_streaming_session_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_launch_profile_initialization_request() :: %{
        required("launchProfileProtocolVersions") => list(String.t()()),
        required("launchPurpose") => String.t(),
        required("platform") => String.t()
      }
      
  """
  @type get_launch_profile_initialization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_streaming_session_request() :: %{
        optional("backupId") => String.t(),
        optional("clientToken") => String.t()
      }
      
  """
  @type start_streaming_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_streaming_session_request() :: %{
        optional("clientToken") => String.t(),
        optional("ec2InstanceType") => list(any()),
        optional("ownedBy") => String.t(),
        optional("streamingImageId") => String.t(),
        optional("tags") => map(),
        required("launchProfileId") => String.t()
      }
      
  """
  @type create_streaming_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_streaming_session_backups_response() :: %{
        "nextToken" => String.t(),
        "streamingSessionBackups" => list(streaming_session_backup()())
      }
      
  """
  @type list_streaming_session_backups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_launch_profile_response() :: %{
        "launchProfile" => launch_profile()
      }
      
  """
  @type update_launch_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_launch_profile_member_request() :: %{
        optional("clientToken") => String.t(),
        required("persona") => list(any())
      }
      
  """
  @type update_launch_profile_member_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_eula_request() :: %{}
      
  """
  @type get_eula_request() :: %{}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_studios_response() :: %{
        "nextToken" => String.t(),
        "studios" => list(studio()())
      }
      
  """
  @type list_studios_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_launch_profile_members_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_launch_profile_members_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      shared_file_system_configuration() :: %{
        "endpoint" => String.t(),
        "fileSystemId" => String.t(),
        "linuxMountPoint" => String.t(),
        "shareName" => String.t(),
        "windowsMountDrive" => String.t()
      }
      
  """
  @type shared_file_system_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_streaming_session_response() :: %{
        "session" => streaming_session()
      }
      
  """
  @type delete_streaming_session_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      new_studio_member() :: %{
        "persona" => list(any()),
        "principalId" => String.t()
      }
      
  """
  @type new_studio_member() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_result() :: %{
        "state" => list(any()),
        "statusCode" => list(any()),
        "statusMessage" => String.t(),
        "type" => list(any())
      }
      
  """
  @type validation_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      streaming_session_stream() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "expiresAt" => non_neg_integer(),
        "ownedBy" => String.t(),
        "state" => list(any()),
        "statusCode" => list(any()),
        "streamId" => String.t(),
        "url" => String.t()
      }
      
  """
  @type streaming_session_stream() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stream_configuration_session_backup() :: %{
        "maxBackupsToRetain" => integer(),
        "mode" => list(any())
      }
      
  """
  @type stream_configuration_session_backup() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_studio_component_response() :: %{
        "studioComponent" => studio_component()
      }
      
  """
  @type update_studio_component_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_streaming_session_response() :: %{
        "session" => streaming_session()
      }
      
  """
  @type create_streaming_session_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_launch_profile_details_response() :: %{
        "launchProfile" => launch_profile(),
        "streamingImages" => list(streaming_image()()),
        "studioComponentSummaries" => list(studio_component_summary()())
      }
      
  """
  @type get_launch_profile_details_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_streaming_session_stream_response() :: %{
        "stream" => streaming_session_stream()
      }
      
  """
  @type create_streaming_session_stream_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_streaming_session_stream_request() :: %{}
      
  """
  @type get_streaming_session_stream_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_studio_component_request() :: %{
        optional("clientToken") => String.t()
      }
      
  """
  @type delete_studio_component_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_launch_profile_response() :: %{
        "launchProfile" => launch_profile()
      }
      
  """
  @type get_launch_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_studio_member_request() :: %{}
      
  """
  @type get_studio_member_request() :: %{}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "code" => String.t(),
        "context" => map(),
        "message" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "code" => String.t(),
        "context" => map(),
        "message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      launch_profile_initialization_active_directory() :: %{
        "computerAttributes" => list(active_directory_computer_attribute()()),
        "directoryId" => String.t(),
        "directoryName" => String.t(),
        "dnsIpAddresses" => list(String.t()()),
        "organizationalUnitDistinguishedName" => String.t(),
        "studioComponentId" => String.t(),
        "studioComponentName" => String.t()
      }
      
  """
  @type launch_profile_initialization_active_directory() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_studio_s_s_o_configuration_repair_response() :: %{
        "studio" => studio()
      }
      
  """
  @type start_studio_s_s_o_configuration_repair_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_studio_member_response() :: %{
        "member" => studio_membership()
      }
      
  """
  @type get_studio_member_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_eula_acceptances_response() :: %{
        "eulaAcceptances" => list(eula_acceptance()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_eula_acceptances_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "code" => String.t(),
        "context" => map(),
        "message" => String.t()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_launch_profile_response() :: %{
        "launchProfile" => launch_profile()
      }
      
  """
  @type delete_launch_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_studio_response() :: %{
        "studio" => studio()
      }
      
  """
  @type create_studio_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_streaming_image_response() :: %{
        "streamingImage" => streaming_image()
      }
      
  """
  @type delete_streaming_image_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_launch_profile_members_request() :: %{
        optional("clientToken") => String.t(),
        required("identityStoreId") => String.t(),
        required("members") => list(new_launch_profile_member()())
      }
      
  """
  @type put_launch_profile_members_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      streaming_session_backup() :: %{
        "arn" => String.t(),
        "backupId" => String.t(),
        "createdAt" => non_neg_integer(),
        "launchProfileId" => String.t(),
        "ownedBy" => String.t(),
        "sessionId" => String.t(),
        "state" => list(any()),
        "statusCode" => list(any()),
        "statusMessage" => String.t(),
        "tags" => map()
      }
      
  """
  @type streaming_session_backup() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_streaming_session_response() :: %{
        "session" => streaming_session()
      }
      
  """
  @type start_streaming_session_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_studio_members_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_studio_members_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_studio_component_response() :: %{
        "studioComponent" => studio_component()
      }
      
  """
  @type create_studio_component_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "tags" => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      eula() :: %{
        "content" => String.t(),
        "createdAt" => non_neg_integer(),
        "eulaId" => String.t(),
        "name" => String.t(),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type eula() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_studio_request() :: %{
        optional("clientToken") => String.t(),
        optional("studioEncryptionConfiguration") => studio_encryption_configuration(),
        optional("tags") => map(),
        required("adminRoleArn") => String.t(),
        required("displayName") => String.t(),
        required("studioName") => String.t(),
        required("userRoleArn") => String.t()
      }
      
  """
  @type create_studio_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      streaming_image_encryption_configuration() :: %{
        "keyArn" => String.t(),
        "keyType" => list(any())
      }
      
  """
  @type streaming_image_encryption_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_studio_components_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("states") => list(list(any())()),
        optional("types") => list(list(any())())
      }
      
  """
  @type list_studio_components_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_streaming_session_backups_request() :: %{
        optional("nextToken") => String.t(),
        optional("ownedBy") => String.t()
      }
      
  """
  @type list_streaming_session_backups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_streaming_session_stream_request() :: %{
        optional("clientToken") => String.t(),
        optional("expirationInSeconds") => integer()
      }
      
  """
  @type create_streaming_session_stream_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_launch_profile_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("tags") => map(),
        required("ec2SubnetIds") => list(String.t()()),
        required("launchProfileProtocolVersions") => list(String.t()()),
        required("name") => String.t(),
        required("streamConfiguration") => stream_configuration_create(),
        required("studioComponentIds") => list(String.t()())
      }
      
  """
  @type create_launch_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_streaming_session_request() :: %{}
      
  """
  @type get_streaming_session_request() :: %{}

  @typedoc """

  ## Example:
      
      update_launch_profile_member_response() :: %{
        "member" => launch_profile_membership()
      }
      
  """
  @type update_launch_profile_member_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      active_directory_computer_attribute() :: %{
        "name" => String.t(),
        "value" => String.t()
      }
      
  """
  @type active_directory_computer_attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_studio_s_s_o_configuration_repair_request() :: %{
        optional("clientToken") => String.t()
      }
      
  """
  @type start_studio_s_s_o_configuration_repair_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      studio_encryption_configuration() :: %{
        "keyArn" => String.t(),
        "keyType" => list(any())
      }
      
  """
  @type studio_encryption_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_launch_profile_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("launchProfileProtocolVersions") => list(String.t()()),
        optional("name") => String.t(),
        optional("streamConfiguration") => stream_configuration_create(),
        optional("studioComponentIds") => list(String.t()())
      }
      
  """
  @type update_launch_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_studios_request() :: %{
        optional("nextToken") => String.t()
      }
      
  """
  @type list_studios_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_launch_profile_request() :: %{}
      
  """
  @type get_launch_profile_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_studio_component_response() :: %{
        "studioComponent" => studio_component()
      }
      
  """
  @type delete_studio_component_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_launch_profile_members_response() :: %{}
      
  """
  @type put_launch_profile_members_response() :: %{}

  @typedoc """

  ## Example:
      
      stop_streaming_session_response() :: %{
        "session" => streaming_session()
      }
      
  """
  @type stop_streaming_session_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "code" => String.t(),
        "context" => map(),
        "message" => String.t()
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
      
      list_streaming_sessions_request() :: %{
        optional("createdBy") => String.t(),
        optional("nextToken") => String.t(),
        optional("ownedBy") => String.t(),
        optional("sessionIds") => String.t()
      }
      
  """
  @type list_streaming_sessions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      studio_membership() :: %{
        "identityStoreId" => String.t(),
        "persona" => list(any()),
        "principalId" => String.t(),
        "sid" => String.t()
      }
      
  """
  @type studio_membership() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_streaming_session_backup_response() :: %{
        "streamingSessionBackup" => streaming_session_backup()
      }
      
  """
  @type get_streaming_session_backup_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_launch_profile_details_request() :: %{}
      
  """
  @type get_launch_profile_details_request() :: %{}

  @typedoc """

  ## Example:
      
      update_studio_request() :: %{
        optional("adminRoleArn") => String.t(),
        optional("clientToken") => String.t(),
        optional("displayName") => String.t(),
        optional("userRoleArn") => String.t()
      }
      
  """
  @type update_studio_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "code" => String.t(),
        "context" => map(),
        "message" => String.t()
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
      
      list_studio_components_response() :: %{
        "nextToken" => String.t(),
        "studioComponents" => list(studio_component()())
      }
      
  """
  @type list_studio_components_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      streaming_image() :: %{
        "arn" => String.t(),
        "description" => String.t(),
        "ec2ImageId" => String.t(),
        "encryptionConfiguration" => streaming_image_encryption_configuration(),
        "eulaIds" => list(String.t()()),
        "name" => String.t(),
        "owner" => String.t(),
        "platform" => String.t(),
        "state" => list(any()),
        "statusCode" => list(any()),
        "statusMessage" => String.t(),
        "streamingImageId" => String.t(),
        "tags" => map()
      }
      
  """
  @type streaming_image() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_error_exception() :: %{
        "code" => String.t(),
        "context" => map(),
        "message" => String.t()
      }
      
  """
  @type internal_server_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_streaming_session_request() :: %{
        optional("clientToken") => String.t()
      }
      
  """
  @type delete_streaming_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      launch_profile() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "ec2SubnetIds" => list(String.t()()),
        "launchProfileId" => String.t(),
        "launchProfileProtocolVersions" => list(String.t()()),
        "name" => String.t(),
        "state" => list(any()),
        "statusCode" => list(any()),
        "statusMessage" => String.t(),
        "streamConfiguration" => stream_configuration(),
        "studioComponentIds" => list(String.t()()),
        "tags" => map(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t(),
        "validationResults" => list(validation_result()())
      }
      
  """
  @type launch_profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_studio_member_request() :: %{
        optional("clientToken") => String.t()
      }
      
  """
  @type delete_studio_member_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      accept_eulas_response() :: %{
        "eulaAcceptances" => list(eula_acceptance()())
      }
      
  """
  @type accept_eulas_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "code" => String.t(),
        "context" => map(),
        "message" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      new_launch_profile_member() :: %{
        "persona" => list(any()),
        "principalId" => String.t()
      }
      
  """
  @type new_launch_profile_member() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_streaming_image_response() :: %{
        "streamingImage" => streaming_image()
      }
      
  """
  @type get_streaming_image_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compute_farm_configuration() :: %{
        "activeDirectoryUser" => String.t(),
        "endpoint" => String.t()
      }
      
  """
  @type compute_farm_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_streaming_images_request() :: %{
        optional("nextToken") => String.t(),
        optional("owner") => String.t()
      }
      
  """
  @type list_streaming_images_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stream_configuration_create() :: %{
        "automaticTerminationMode" => list(any()),
        "clipboardMode" => list(any()),
        "ec2InstanceTypes" => list(list(any())()),
        "maxSessionLengthInMinutes" => integer(),
        "maxStoppedSessionLengthInMinutes" => integer(),
        "sessionBackup" => stream_configuration_session_backup(),
        "sessionPersistenceMode" => list(any()),
        "sessionStorage" => stream_configuration_session_storage(),
        "streamingImageIds" => list(String.t()()),
        "volumeConfiguration" => volume_configuration()
      }
      
  """
  @type stream_configuration_create() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      accept_eulas_request() :: %{
        optional("clientToken") => String.t(),
        optional("eulaIds") => list(String.t()())
      }
      
  """
  @type accept_eulas_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_studio_component_response() :: %{
        "studioComponent" => studio_component()
      }
      
  """
  @type get_studio_component_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_studio_component_request() :: %{
        optional("clientToken") => String.t(),
        optional("configuration") => list(),
        optional("description") => String.t(),
        optional("ec2SecurityGroupIds") => list(String.t()()),
        optional("initializationScripts") => list(studio_component_initialization_script()()),
        optional("name") => String.t(),
        optional("runtimeRoleArn") => String.t(),
        optional("scriptParameters") => list(script_parameter_key_value()()),
        optional("secureInitializationRoleArn") => String.t(),
        optional("subtype") => list(any()),
        optional("type") => list(any())
      }
      
  """
  @type update_studio_component_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_streaming_image_request() :: %{
        optional("clientToken") => String.t()
      }
      
  """
  @type delete_streaming_image_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      active_directory_configuration() :: %{
        "computerAttributes" => list(active_directory_computer_attribute()()),
        "directoryId" => String.t(),
        "organizationalUnitDistinguishedName" => String.t()
      }
      
  """
  @type active_directory_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      volume_configuration() :: %{
        "iops" => integer(),
        "size" => integer(),
        "throughput" => integer()
      }
      
  """
  @type volume_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_streaming_image_response() :: %{
        "streamingImage" => streaming_image()
      }
      
  """
  @type create_streaming_image_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_streaming_image_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("tags") => map(),
        required("ec2ImageId") => String.t(),
        required("name") => String.t()
      }
      
  """
  @type create_streaming_image_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_streaming_session_stream_response() :: %{
        "stream" => streaming_session_stream()
      }
      
  """
  @type get_streaming_session_stream_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_studio_request() :: %{
        optional("clientToken") => String.t()
      }
      
  """
  @type delete_studio_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_studio_request() :: %{}
      
  """
  @type get_studio_request() :: %{}

  @typedoc """

  ## Example:
      
      update_studio_response() :: %{
        "studio" => studio()
      }
      
  """
  @type update_studio_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      script_parameter_key_value() :: %{
        "key" => String.t(),
        "value" => String.t()
      }
      
  """
  @type script_parameter_key_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_studio_member_response() :: %{}
      
  """
  @type delete_studio_member_response() :: %{}

  @typedoc """

  ## Example:
      
      put_studio_members_response() :: %{}
      
  """
  @type put_studio_members_response() :: %{}

  @typedoc """

  ## Example:
      
      studio() :: %{
        "adminRoleArn" => String.t(),
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "displayName" => String.t(),
        "homeRegion" => String.t(),
        "ssoClientId" => String.t(),
        "state" => list(any()),
        "statusCode" => list(any()),
        "statusMessage" => String.t(),
        "studioEncryptionConfiguration" => studio_encryption_configuration(),
        "studioId" => String.t(),
        "studioName" => String.t(),
        "studioUrl" => String.t(),
        "tags" => map(),
        "updatedAt" => non_neg_integer(),
        "userRoleArn" => String.t()
      }
      
  """
  @type studio() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_launch_profile_member_request() :: %{}
      
  """
  @type get_launch_profile_member_request() :: %{}

  @typedoc """

  ## Example:
      
      license_service_configuration() :: %{
        "endpoint" => String.t()
      }
      
  """
  @type license_service_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_eula_acceptances_request() :: %{
        optional("eulaIds") => list(String.t()()),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_eula_acceptances_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      streaming_session_storage_root() :: %{
        "linux" => String.t(),
        "windows" => String.t()
      }
      
  """
  @type streaming_session_storage_root() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_streaming_image_response() :: %{
        "streamingImage" => streaming_image()
      }
      
  """
  @type update_streaming_image_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_launch_profile_member_response() :: %{
        "member" => launch_profile_membership()
      }
      
  """
  @type get_launch_profile_member_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      studio_component_summary() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "name" => String.t(),
        "studioComponentId" => String.t(),
        "subtype" => list(any()),
        "type" => list(any()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }
      
  """
  @type studio_component_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stream_configuration() :: %{
        "automaticTerminationMode" => list(any()),
        "clipboardMode" => list(any()),
        "ec2InstanceTypes" => list(list(any())()),
        "maxSessionLengthInMinutes" => integer(),
        "maxStoppedSessionLengthInMinutes" => integer(),
        "sessionBackup" => stream_configuration_session_backup(),
        "sessionPersistenceMode" => list(any()),
        "sessionStorage" => stream_configuration_session_storage(),
        "streamingImageIds" => list(String.t()()),
        "volumeConfiguration" => volume_configuration()
      }
      
  """
  @type stream_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_launch_profile_initialization_response() :: %{
        "launchProfileInitialization" => launch_profile_initialization()
      }
      
  """
  @type get_launch_profile_initialization_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_eulas_request() :: %{
        optional("eulaIds") => list(String.t()()),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_eulas_request() :: %{String.t() => any()}

  @type accept_eulas_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_launch_profile_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_streaming_image_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_streaming_session_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_streaming_session_stream_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_studio_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_studio_component_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_launch_profile_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_launch_profile_member_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_streaming_image_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_streaming_session_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_studio_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_studio_component_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_studio_member_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_eula_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_launch_profile_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_launch_profile_details_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_launch_profile_initialization_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_launch_profile_member_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_streaming_image_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_streaming_session_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_streaming_session_backup_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_streaming_session_stream_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_studio_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_studio_component_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_studio_member_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_eula_acceptances_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_eulas_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_launch_profile_members_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_launch_profiles_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_streaming_images_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_streaming_session_backups_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_streaming_sessions_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_studio_components_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_studio_members_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_studios_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type put_launch_profile_members_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type put_studio_members_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_streaming_session_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_studio_s_s_o_configuration_repair_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type stop_streaming_session_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_launch_profile_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_launch_profile_member_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_streaming_image_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_studio_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_studio_component_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2020-08-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "nimble",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "nimble",
      signature_version: "v4",
      signing_name: "nimble",
      target_prefix: nil
    }
  end

  @doc """
  Accept EULAs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20AcceptEulas&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:studio_id` (`t:string` required) The studio ID.

  ## Keyword parameters:
  * `:client_token` (`t:string`) Unique, case-sensitive identifier that you
    provide to ensure the idempotency of the request. If you don’t specify a
    client token, the Amazon Web Services SDK automatically generates a client
    token and uses it for the request to ensure idempotency.
  """
  @spec accept_eulas(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, accept_eulas_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, accept_eulas_errors()}
  def accept_eulas(%Client{} = client, studio_id, options \\ []) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/eula-acceptances"

    # Validate optional parameters
    optional_params = [client_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :client_token) do
        [{"X-Amz-Client-Token", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Create a launch profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20CreateLaunchProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:studio_id` (`t:string` required) The studio ID.

  ## Keyword parameters:
  * `:client_token` (`t:string`) Unique, case-sensitive identifier that you
    provide to ensure the idempotency of the request. If you don’t specify a
    client token, the Amazon Web Services SDK automatically generates a client
    token and uses it for the request to ensure idempotency.
  """
  @spec create_launch_profile(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_launch_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_launch_profile_errors()}
  def create_launch_profile(%Client{} = client, studio_id, options \\ []) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/launch-profiles"

    # Validate optional parameters
    optional_params = [client_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :client_token) do
        [{"X-Amz-Client-Token", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates a streaming image resource in a studio.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20CreateStreamingImage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:studio_id` (`t:string` required) The studio ID.

  ## Keyword parameters:
  * `:client_token` (`t:string`) Unique, case-sensitive identifier that you
    provide to ensure the idempotency of the request. If you don’t specify a
    client token, the Amazon Web Services SDK automatically generates a client
    token and uses it for the request to ensure idempotency.
  """
  @spec create_streaming_image(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_streaming_image_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_streaming_image_errors()}
  def create_streaming_image(%Client{} = client, studio_id, options \\ []) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/streaming-images"

    # Validate optional parameters
    optional_params = [client_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :client_token) do
        [{"X-Amz-Client-Token", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates a streaming session in a studio.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20CreateStreamingSession&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:studio_id` (`t:string` required) The studio ID.

  ## Keyword parameters:
  * `:client_token` (`t:string`) Unique, case-sensitive identifier that you
    provide to ensure the idempotency of the request. If you don’t specify a
    client token, the Amazon Web Services SDK automatically generates a client
    token and uses it for the request to ensure idempotency.
  """
  @spec create_streaming_session(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_streaming_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_streaming_session_errors()}
  def create_streaming_session(%Client{} = client, studio_id, options \\ []) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/streaming-sessions"

    # Validate optional parameters
    optional_params = [client_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :client_token) do
        [{"X-Amz-Client-Token", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates a streaming session stream for a streaming session.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20CreateStreamingSessionStream&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:session_id` (`t:string` required) The streaming session ID.
  * `:studio_id` (`t:string` required) The studio ID.

  ## Keyword parameters:
  * `:client_token` (`t:string`) Unique, case-sensitive identifier that you
    provide to ensure the idempotency of the request. If you don’t specify a
    client token, the Amazon Web Services SDK automatically generates a client
    token and uses it for the request to ensure idempotency.
  """
  @spec create_streaming_session_stream(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, create_streaming_session_stream_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_streaming_session_stream_errors()}
  def create_streaming_session_stream(%Client{} = client, session_id, studio_id, options \\ []) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/streaming-sessions/#{AWS.Util.encode_uri(session_id)}/streams"

    # Validate optional parameters
    optional_params = [client_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :client_token) do
        [{"X-Amz-Client-Token", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Create a new studio. When creating a studio, two IAM roles must be provided: the
  admin role and the user role. These roles are assumed by your users when they
  log in to the Nimble Studio portal.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20CreateStudio&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:client_token` (`t:string`) Unique, case-sensitive identifier that you
    provide to ensure the idempotency of the request. If you don’t specify a
    client token, the Amazon Web Services SDK automatically generates a client
    token and uses it for the request to ensure idempotency.
  """
  @spec create_studio(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_studio_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_studio_errors()}
  def create_studio(%Client{} = client, options \\ []) do
    url_path = "/2020-08-01/studios"

    # Validate optional parameters
    optional_params = [client_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :client_token) do
        [{"X-Amz-Client-Token", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates a studio component resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20CreateStudioComponent&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:studio_id` (`t:string` required) The studio ID.

  ## Keyword parameters:
  * `:client_token` (`t:string`) Unique, case-sensitive identifier that you
    provide to ensure the idempotency of the request. If you don’t specify a
    client token, the Amazon Web Services SDK automatically generates a client
    token and uses it for the request to ensure idempotency.
  """
  @spec create_studio_component(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_studio_component_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_studio_component_errors()}
  def create_studio_component(%Client{} = client, studio_id, options \\ []) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/studio-components"

    # Validate optional parameters
    optional_params = [client_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :client_token) do
        [{"X-Amz-Client-Token", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Permanently delete a launch profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20DeleteLaunchProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:launch_profile_id` (`t:string` required) The ID of the launch profile used
    to control access from the streaming session.
  * `:studio_id` (`t:string` required) The studio ID.

  ## Keyword parameters:
  * `:client_token` (`t:string`) Unique, case-sensitive identifier that you
    provide to ensure the idempotency of the request. If you don’t specify a
    client token, the Amazon Web Services SDK automatically generates a client
    token and uses it for the request to ensure idempotency.
  """
  @spec delete_launch_profile(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_launch_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_launch_profile_errors()}
  def delete_launch_profile(%Client{} = client, launch_profile_id, studio_id, options \\ []) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/launch-profiles/#{AWS.Util.encode_uri(launch_profile_id)}"

    # Validate optional parameters
    optional_params = [client_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :client_token) do
        [{"X-Amz-Client-Token", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

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
  Delete a user from launch profile membership.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20DeleteLaunchProfileMember&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:launch_profile_id` (`t:string` required) The ID of the launch profile used
    to control access from the streaming session.
  * `:principal_id` (`t:string` required) The principal ID. This currently
    supports a IAM Identity Center UserId.
  * `:studio_id` (`t:string` required) The studio ID.

  ## Keyword parameters:
  * `:client_token` (`t:string`) Unique, case-sensitive identifier that you
    provide to ensure the idempotency of the request. If you don’t specify a
    client token, the Amazon Web Services SDK automatically generates a client
    token and uses it for the request to ensure idempotency.
  """
  @spec delete_launch_profile_member(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, delete_launch_profile_member_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_launch_profile_member_errors()}
  def delete_launch_profile_member(
        %Client{} = client,
        launch_profile_id,
        principal_id,
        studio_id,
        options \\ []
      ) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/launch-profiles/#{AWS.Util.encode_uri(launch_profile_id)}/membership/#{AWS.Util.encode_uri(principal_id)}"

    # Validate optional parameters
    optional_params = [client_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :client_token) do
        [{"X-Amz-Client-Token", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

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
  Delete streaming image.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20DeleteStreamingImage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:streaming_image_id` (`t:string` required) The streaming image ID.
  * `:studio_id` (`t:string` required) The studio ID.

  ## Keyword parameters:
  * `:client_token` (`t:string`) Unique, case-sensitive identifier that you
    provide to ensure the idempotency of the request. If you don’t specify a
    client token, the Amazon Web Services SDK automatically generates a client
    token and uses it for the request to ensure idempotency.
  """
  @spec delete_streaming_image(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_streaming_image_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_streaming_image_errors()}
  def delete_streaming_image(%Client{} = client, streaming_image_id, studio_id, options \\ []) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/streaming-images/#{AWS.Util.encode_uri(streaming_image_id)}"

    # Validate optional parameters
    optional_params = [client_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :client_token) do
        [{"X-Amz-Client-Token", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

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
  Deletes streaming session resource. After invoking this operation, use
  GetStreamingSession to poll the resource until it transitions to a `DELETED`
  state.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20DeleteStreamingSession&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:session_id` (`t:string` required) The streaming session ID.
  * `:studio_id` (`t:string` required) The studio ID.

  ## Keyword parameters:
  * `:client_token` (`t:string`) Unique, case-sensitive identifier that you
    provide to ensure the idempotency of the request. If you don’t specify a
    client token, the Amazon Web Services SDK automatically generates a client
    token and uses it for the request to ensure idempotency.
  """
  @spec delete_streaming_session(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_streaming_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_streaming_session_errors()}
  def delete_streaming_session(%Client{} = client, session_id, studio_id, options \\ []) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/streaming-sessions/#{AWS.Util.encode_uri(session_id)}"

    # Validate optional parameters
    optional_params = [client_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :client_token) do
        [{"X-Amz-Client-Token", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

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
  Delete a studio resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20DeleteStudio&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:studio_id` (`t:string` required) The studio ID.

  ## Keyword parameters:
  * `:client_token` (`t:string`) Unique, case-sensitive identifier that you
    provide to ensure the idempotency of the request. If you don’t specify a
    client token, the Amazon Web Services SDK automatically generates a client
    token and uses it for the request to ensure idempotency.
  """
  @spec delete_studio(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_studio_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_studio_errors()}
  def delete_studio(%Client{} = client, studio_id, options \\ []) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}"

    # Validate optional parameters
    optional_params = [client_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :client_token) do
        [{"X-Amz-Client-Token", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

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
  Deletes a studio component resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20DeleteStudioComponent&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:studio_component_id` (`t:string` required) The studio component ID.
  * `:studio_id` (`t:string` required) The studio ID.

  ## Keyword parameters:
  * `:client_token` (`t:string`) Unique, case-sensitive identifier that you
    provide to ensure the idempotency of the request. If you don’t specify a
    client token, the Amazon Web Services SDK automatically generates a client
    token and uses it for the request to ensure idempotency.
  """
  @spec delete_studio_component(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_studio_component_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_studio_component_errors()}
  def delete_studio_component(%Client{} = client, studio_component_id, studio_id, options \\ []) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/studio-components/#{AWS.Util.encode_uri(studio_component_id)}"

    # Validate optional parameters
    optional_params = [client_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :client_token) do
        [{"X-Amz-Client-Token", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

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
  Delete a user from studio membership.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20DeleteStudioMember&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:principal_id` (`t:string` required) The principal ID. This currently
    supports a IAM Identity Center UserId.
  * `:studio_id` (`t:string` required) The studio ID.

  ## Keyword parameters:
  * `:client_token` (`t:string`) Unique, case-sensitive identifier that you
    provide to ensure the idempotency of the request. If you don’t specify a
    client token, the Amazon Web Services SDK automatically generates a client
    token and uses it for the request to ensure idempotency.
  """
  @spec delete_studio_member(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_studio_member_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_studio_member_errors()}
  def delete_studio_member(%Client{} = client, principal_id, studio_id, options \\ []) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/membership/#{AWS.Util.encode_uri(principal_id)}"

    # Validate optional parameters
    optional_params = [client_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :client_token) do
        [{"X-Amz-Client-Token", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

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
  Get EULA.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20GetEula&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:eula_id` (`t:string` required) The EULA ID.
  """
  @spec get_eula(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_eula_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_eula_errors()}
  def get_eula(%Client{} = client, eula_id, options \\ []) do
    url_path = "/2020-08-01/eulas/#{AWS.Util.encode_uri(eula_id)}"

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
  Get a launch profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20GetLaunchProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:launch_profile_id` (`t:string` required) The ID of the launch profile used
    to control access from the streaming session.
  * `:studio_id` (`t:string` required) The studio ID.
  """
  @spec get_launch_profile(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_launch_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_launch_profile_errors()}
  def get_launch_profile(%Client{} = client, launch_profile_id, studio_id, options \\ []) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/launch-profiles/#{AWS.Util.encode_uri(launch_profile_id)}"

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
  Launch profile details include the launch profile resource and summary
  information of resources that are used by, or available to, the launch
  profile. This includes the name and description of all studio components used
  by the launch profiles, and the name and description of streaming images that
  can be used with this launch profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20GetLaunchProfileDetails&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:launch_profile_id` (`t:string` required) The ID of the launch profile used
    to control access from the streaming session.
  * `:studio_id` (`t:string` required) The studio ID.
  """
  @spec get_launch_profile_details(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_launch_profile_details_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_launch_profile_details_errors()}
  def get_launch_profile_details(%Client{} = client, launch_profile_id, studio_id, options \\ []) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/launch-profiles/#{AWS.Util.encode_uri(launch_profile_id)}/details"

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
  Get a launch profile initialization.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20GetLaunchProfileInitialization&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:launch_profile_id` (`t:string` required) The ID of the launch profile used
    to control access from the streaming session.
  * `:studio_id` (`t:string` required) The studio ID.
  * `:launch_profile_protocol_versions` (`t:list[com.amazonaws.nimble#String]`
    required) The launch profile protocol versions supported by the client.
  * `:launch_purpose` (`t:string` required) The launch purpose.
  * `:platform` (`t:string` required) The platform where this Launch Profile will
    be used, either Windows or Linux.
  """
  @spec get_launch_profile_initialization(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, get_launch_profile_initialization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_launch_profile_initialization_errors()}
  def get_launch_profile_initialization(
        %Client{} = client,
        launch_profile_id,
        studio_id,
        launch_profile_protocol_versions,
        launch_purpose,
        platform,
        options \\ []
      )
      when is_binary(launch_profile_protocol_versions) and is_binary(launch_purpose) and
             is_binary(platform) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/launch-profiles/#{AWS.Util.encode_uri(launch_profile_id)}/init"

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
    query_params = [
      {"launchProfileProtocolVersions", launch_profile_protocol_versions},
      {"launchPurpose", launch_purpose},
      {"platform", platform}
    ]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get a user persona in launch profile membership.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20GetLaunchProfileMember&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:launch_profile_id` (`t:string` required) The ID of the launch profile used
    to control access from the streaming session.
  * `:principal_id` (`t:string` required) The principal ID. This currently
    supports a IAM Identity Center UserId.
  * `:studio_id` (`t:string` required) The studio ID.
  """
  @spec get_launch_profile_member(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_launch_profile_member_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_launch_profile_member_errors()}
  def get_launch_profile_member(
        %Client{} = client,
        launch_profile_id,
        principal_id,
        studio_id,
        options \\ []
      ) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/launch-profiles/#{AWS.Util.encode_uri(launch_profile_id)}/membership/#{AWS.Util.encode_uri(principal_id)}"

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
  Get streaming image.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20GetStreamingImage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:streaming_image_id` (`t:string` required) The streaming image ID.
  * `:studio_id` (`t:string` required) The studio ID.
  """
  @spec get_streaming_image(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_streaming_image_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_streaming_image_errors()}
  def get_streaming_image(%Client{} = client, streaming_image_id, studio_id, options \\ []) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/streaming-images/#{AWS.Util.encode_uri(streaming_image_id)}"

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
  Gets StreamingSession resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20GetStreamingSession&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:session_id` (`t:string` required) The streaming session ID.
  * `:studio_id` (`t:string` required) The studio ID.
  """
  @spec get_streaming_session(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_streaming_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_streaming_session_errors()}
  def get_streaming_session(%Client{} = client, session_id, studio_id, options \\ []) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/streaming-sessions/#{AWS.Util.encode_uri(session_id)}"

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
  Gets `StreamingSessionBackup` resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20GetStreamingSessionBackup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:backup_id` (`t:string` required) The ID of the backup.
  * `:studio_id` (`t:string` required) The studio ID.
  """
  @spec get_streaming_session_backup(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_streaming_session_backup_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_streaming_session_backup_errors()}
  def get_streaming_session_backup(%Client{} = client, backup_id, studio_id, options \\ []) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/streaming-session-backups/#{AWS.Util.encode_uri(backup_id)}"

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
  Gets a StreamingSessionStream for a streaming session. Invoke this operation to
  poll the resource after invoking `CreateStreamingSessionStream`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20GetStreamingSessionStream&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:session_id` (`t:string` required) The streaming session ID.
  * `:stream_id` (`t:string` required) The streaming session stream ID.
  * `:studio_id` (`t:string` required) The studio ID.
  """
  @spec get_streaming_session_stream(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, get_streaming_session_stream_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_streaming_session_stream_errors()}
  def get_streaming_session_stream(
        %Client{} = client,
        session_id,
        stream_id,
        studio_id,
        options \\ []
      ) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/streaming-sessions/#{AWS.Util.encode_uri(session_id)}/streams/#{AWS.Util.encode_uri(stream_id)}"

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
  Get a studio resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20GetStudio&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:studio_id` (`t:string` required) The studio ID.
  """
  @spec get_studio(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_studio_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_studio_errors()}
  def get_studio(%Client{} = client, studio_id, options \\ []) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}"

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
  Gets a studio component resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20GetStudioComponent&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:studio_component_id` (`t:string` required) The studio component ID.
  * `:studio_id` (`t:string` required) The studio ID.
  """
  @spec get_studio_component(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_studio_component_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_studio_component_errors()}
  def get_studio_component(%Client{} = client, studio_component_id, studio_id, options \\ []) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/studio-components/#{AWS.Util.encode_uri(studio_component_id)}"

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
  Get a user's membership in a studio.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20GetStudioMember&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:principal_id` (`t:string` required) The principal ID. This currently
    supports a IAM Identity Center UserId.
  * `:studio_id` (`t:string` required) The studio ID.
  """
  @spec get_studio_member(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_studio_member_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_studio_member_errors()}
  def get_studio_member(%Client{} = client, principal_id, studio_id, options \\ []) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/membership/#{AWS.Util.encode_uri(principal_id)}"

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
  List EULA acceptances.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20ListEulaAcceptances&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:studio_id` (`t:string` required) The studio ID.

  ## Keyword parameters:
  * `:eula_ids` (`t:list[com.amazonaws.nimble#String]`) The list of EULA IDs that
    have been previously accepted.
  * `:next_token` (`t:string`) The token for the next set of results, or null if
    there are no more results.
  """
  @spec list_eula_acceptances(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_eula_acceptances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_eula_acceptances_errors()}
  def list_eula_acceptances(%Client{} = client, studio_id, options \\ []) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/eula-acceptances"

    # Validate optional parameters
    optional_params = [eula_ids: nil, next_token: nil]

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
      if opt_val = Keyword.get(options, :eula_ids) do
        [{"eulaIds", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:eula_ids, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List EULAs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20ListEulas&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:eula_ids` (`t:list[com.amazonaws.nimble#String]`) The list of EULA IDs that
    should be returned
  * `:next_token` (`t:string`) The token for the next set of results, or null if
    there are no more results.
  """
  @spec list_eulas(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_eulas_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_eulas_errors()}
  def list_eulas(%Client{} = client, options \\ []) do
    url_path = "/2020-08-01/eulas"

    # Validate optional parameters
    optional_params = [eula_ids: nil, next_token: nil]

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
      if opt_val = Keyword.get(options, :eula_ids) do
        [{"eulaIds", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:eula_ids, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get all users in a given launch profile membership.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20ListLaunchProfileMembers&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:launch_profile_id` (`t:string` required) The ID of the launch profile used
    to control access from the streaming session.
  * `:studio_id` (`t:string` required) The studio ID.

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The max number of results to return in the
    response.
  * `:next_token` (`t:string`) The token for the next set of results, or null if
    there are no more results.
  """
  @spec list_launch_profile_members(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_launch_profile_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_launch_profile_members_errors()}
  def list_launch_profile_members(%Client{} = client, launch_profile_id, studio_id, options \\ []) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/launch-profiles/#{AWS.Util.encode_uri(launch_profile_id)}/membership"

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
  List all the launch profiles a studio.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20ListLaunchProfiles&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:studio_id` (`t:string` required) The studio ID.

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The max number of results to return in the
    response.
  * `:next_token` (`t:string`) The token for the next set of results, or null if
    there are no more results.
  * `:principal_id` (`t:string`) The principal ID. This currently supports a IAM
    Identity Center UserId.
  * `:states` (`t:list[com.amazonaws.nimble#LaunchProfileState]`) Filter this
    request to launch profiles in any of the given states.
  """
  @spec list_launch_profiles(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_launch_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_launch_profiles_errors()}
  def list_launch_profiles(%Client{} = client, studio_id, options \\ []) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/launch-profiles"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, principal_id: nil, states: nil]

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
      if opt_val = Keyword.get(options, :states) do
        [{"states", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :principal_id) do
        [{"principalId", opt_val} | query_params]
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
      |> Keyword.drop([:max_results, :next_token, :principal_id, :states])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the streaming image resources available to this studio.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20ListStreamingImages&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:studio_id` (`t:string` required) The studio ID.

  ## Keyword parameters:
  * `:next_token` (`t:string`) The token for the next set of results, or null if
    there are no more results.
  * `:owner` (`t:string`) Filter this request to streaming images with the given
    owner
  """
  @spec list_streaming_images(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_streaming_images_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_streaming_images_errors()}
  def list_streaming_images(%Client{} = client, studio_id, options \\ []) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/streaming-images"

    # Validate optional parameters
    optional_params = [next_token: nil, owner: nil]

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
      if opt_val = Keyword.get(options, :owner) do
        [{"owner", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:next_token, :owner])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the backups of a streaming session in a studio.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20ListStreamingSessionBackups&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:studio_id` (`t:string` required) The studio ID.

  ## Keyword parameters:
  * `:next_token` (`t:string`) The token for the next set of results, or null if
    there are no more results.
  * `:owned_by` (`t:string`) The user ID of the user that owns the streaming
    session.
  """
  @spec list_streaming_session_backups(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_streaming_session_backups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_streaming_session_backups_errors()}
  def list_streaming_session_backups(%Client{} = client, studio_id, options \\ []) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/streaming-session-backups"

    # Validate optional parameters
    optional_params = [next_token: nil, owned_by: nil]

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
      if opt_val = Keyword.get(options, :owned_by) do
        [{"ownedBy", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:next_token, :owned_by])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the streaming sessions in a studio.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20ListStreamingSessions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:studio_id` (`t:string` required) The studio ID.

  ## Keyword parameters:
  * `:created_by` (`t:string`) Filters the request to streaming sessions created
    by the given user.
  * `:next_token` (`t:string`) The token for the next set of results, or null if
    there are no more results.
  * `:owned_by` (`t:string`) Filters the request to streaming session owned by the
    given user
  * `:session_ids` (`t:string`) Filters the request to only the provided session
    IDs.
  """
  @spec list_streaming_sessions(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_streaming_sessions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_streaming_sessions_errors()}
  def list_streaming_sessions(%Client{} = client, studio_id, options \\ []) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/streaming-sessions"

    # Validate optional parameters
    optional_params = [created_by: nil, next_token: nil, owned_by: nil, session_ids: nil]

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
      if opt_val = Keyword.get(options, :session_ids) do
        [{"sessionIds", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :owned_by) do
        [{"ownedBy", opt_val} | query_params]
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
      if opt_val = Keyword.get(options, :created_by) do
        [{"createdBy", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:created_by, :next_token, :owned_by, :session_ids])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the `StudioComponents` in a studio.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20ListStudioComponents&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:studio_id` (`t:string` required) The studio ID.

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The max number of results to return in the
    response.
  * `:next_token` (`t:string`) The token for the next set of results, or null if
    there are no more results.
  * `:states` (`t:list[com.amazonaws.nimble#StudioComponentState]`) Filters the
    request to studio components that are in one of the given states.
  * `:types` (`t:list[com.amazonaws.nimble#StudioComponentType]`) Filters the
    request to studio components that are of one of the given types.
  """
  @spec list_studio_components(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_studio_components_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_studio_components_errors()}
  def list_studio_components(%Client{} = client, studio_id, options \\ []) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/studio-components"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, states: nil, types: nil]

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
      if opt_val = Keyword.get(options, :types) do
        [{"types", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :states) do
        [{"states", opt_val} | query_params]
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
      |> Keyword.drop([:max_results, :next_token, :states, :types])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get all users in a given studio membership.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20ListStudioMembers&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:studio_id` (`t:string` required) The studio ID.

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The max number of results to return in the
    response.
  * `:next_token` (`t:string`) The token for the next set of results, or null if
    there are no more results.
  """
  @spec list_studio_members(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_studio_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_studio_members_errors()}
  def list_studio_members(%Client{} = client, studio_id, options \\ []) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/membership"

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
  List studios in your Amazon Web Services accounts in the requested Amazon Web
  Services Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20ListStudios&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:next_token` (`t:string`) The token for the next set of results, or null if
    there are no more results.
  """
  @spec list_studios(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_studios_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_studios_errors()}
  def list_studios(%Client{} = client, options \\ []) do
    url_path = "/2020-08-01/studios"

    # Validate optional parameters
    optional_params = [next_token: nil]

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

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the tags for a resource, given its Amazon Resource Names (ARN).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
    resource for which you want to list tags.
  """
  @spec list_tags_for_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/2020-08-01/tags/#{AWS.Util.encode_uri(resource_arn)}"

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
  Add/update users with given persona to launch profile membership.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20PutLaunchProfileMembers&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:launch_profile_id` (`t:string` required) The ID of the launch profile used
    to control access from the streaming session.
  * `:studio_id` (`t:string` required) The studio ID.

  ## Keyword parameters:
  * `:client_token` (`t:string`) Unique, case-sensitive identifier that you
    provide to ensure the idempotency of the request. If you don’t specify a
    client token, the Amazon Web Services SDK automatically generates a client
    token and uses it for the request to ensure idempotency.
  """
  @spec put_launch_profile_members(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, put_launch_profile_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_launch_profile_members_errors()}
  def put_launch_profile_members(%Client{} = client, launch_profile_id, studio_id, options \\ []) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/launch-profiles/#{AWS.Util.encode_uri(launch_profile_id)}/membership"

    # Validate optional parameters
    optional_params = [client_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :client_token) do
        [{"X-Amz-Client-Token", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Add/update users with given persona to studio membership.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20PutStudioMembers&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:studio_id` (`t:string` required) The studio ID.

  ## Keyword parameters:
  * `:client_token` (`t:string`) Unique, case-sensitive identifier that you
    provide to ensure the idempotency of the request. If you don’t specify a
    client token, the Amazon Web Services SDK automatically generates a client
    token and uses it for the request to ensure idempotency.
  """
  @spec put_studio_members(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, put_studio_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_studio_members_errors()}
  def put_studio_members(%Client{} = client, studio_id, options \\ []) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/membership"

    # Validate optional parameters
    optional_params = [client_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :client_token) do
        [{"X-Amz-Client-Token", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Transitions sessions from the `STOPPED` state into the `READY` state. The
  `START_IN_PROGRESS` state is the intermediate state between the `STOPPED` and
  `READY` states.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20StartStreamingSession&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:session_id` (`t:string` required) The streaming session ID for the
    StartStreamingSessionRequest.
  * `:studio_id` (`t:string` required) The studio ID for the
    StartStreamingSessionRequest.

  ## Keyword parameters:
  * `:client_token` (`t:string`) Unique, case-sensitive identifier that you
    provide to ensure the idempotency of the request. If you don’t specify a
    client token, the Amazon Web Services SDK automatically generates a client
    token and uses it for the request to ensure idempotency.
  """
  @spec start_streaming_session(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, start_streaming_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_streaming_session_errors()}
  def start_streaming_session(%Client{} = client, session_id, studio_id, options \\ []) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/streaming-sessions/#{AWS.Util.encode_uri(session_id)}/start"

    # Validate optional parameters
    optional_params = [client_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :client_token) do
        [{"X-Amz-Client-Token", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Repairs the IAM Identity Center configuration for a given studio. If the studio
  has a valid IAM Identity Center configuration currently associated with it,
  this operation will fail with a validation error.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20StartStudioSSOConfigurationRepair&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:studio_id` (`t:string` required) The studio ID.

  ## Keyword parameters:
  * `:client_token` (`t:string`) Unique, case-sensitive identifier that you
    provide to ensure the idempotency of the request. If you don’t specify a
    client token, the Amazon Web Services SDK automatically generates a client
    token and uses it for the request to ensure idempotency.
  """
  @spec start_studio_s_s_o_configuration_repair(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, start_studio_s_s_o_configuration_repair_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_studio_s_s_o_configuration_repair_errors()}
  def start_studio_s_s_o_configuration_repair(%Client{} = client, studio_id, options \\ []) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/sso-configuration"

    # Validate optional parameters
    optional_params = [client_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :client_token) do
        [{"X-Amz-Client-Token", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Transitions sessions from the `READY` state into the `STOPPED` state. The
  `STOP_IN_PROGRESS` state is the intermediate state between the `READY` and
  `STOPPED` states.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20StopStreamingSession&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:session_id` (`t:string` required) The streaming session ID for the
    StopStreamingSessionRequest.
  * `:studio_id` (`t:string` required) The studioId for the
    StopStreamingSessionRequest.

  ## Keyword parameters:
  * `:client_token` (`t:string`) Unique, case-sensitive identifier that you
    provide to ensure the idempotency of the request. If you don’t specify a
    client token, the Amazon Web Services SDK automatically generates a client
    token and uses it for the request to ensure idempotency.
  """
  @spec stop_streaming_session(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, stop_streaming_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_streaming_session_errors()}
  def stop_streaming_session(%Client{} = client, session_id, studio_id, options \\ []) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/streaming-sessions/#{AWS.Util.encode_uri(session_id)}/stop"

    # Validate optional parameters
    optional_params = [client_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :client_token) do
        [{"X-Amz-Client-Token", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates tags for a resource, given its ARN.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
    resource you want to add tags to.
  """
  @spec tag_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/2020-08-01/tags/#{AWS.Util.encode_uri(resource_arn)}"

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
  Deletes the tags for a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) Identifies the Amazon Resource Name(ARN)
    key from which you are removing tags.
  * `:tag_keys` (`t:list[com.amazonaws.nimble#String]` required) One or more tag
    keys. Specify only the tag keys, not the tag values.
  """
  @spec untag_resource(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, tag_keys, options \\ [])
      when is_binary(tag_keys) do
    url_path = "/2020-08-01/tags/#{AWS.Util.encode_uri(resource_arn)}"

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
  Update a launch profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20UpdateLaunchProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:launch_profile_id` (`t:string` required) The ID of the launch profile used
    to control access from the streaming session.
  * `:studio_id` (`t:string` required) The studio ID.

  ## Keyword parameters:
  * `:client_token` (`t:string`) Unique, case-sensitive identifier that you
    provide to ensure the idempotency of the request. If you don’t specify a
    client token, the Amazon Web Services SDK automatically generates a client
    token and uses it for the request to ensure idempotency.
  """
  @spec update_launch_profile(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_launch_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_launch_profile_errors()}
  def update_launch_profile(%Client{} = client, launch_profile_id, studio_id, options \\ []) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/launch-profiles/#{AWS.Util.encode_uri(launch_profile_id)}"

    # Validate optional parameters
    optional_params = [client_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :client_token) do
        [{"X-Amz-Client-Token", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

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

  @doc """
  Update a user persona in launch profile membership.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20UpdateLaunchProfileMember&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:launch_profile_id` (`t:string` required) The ID of the launch profile used
    to control access from the streaming session.
  * `:principal_id` (`t:string` required) The principal ID. This currently
    supports a IAM Identity Center UserId.
  * `:studio_id` (`t:string` required) The studio ID.

  ## Keyword parameters:
  * `:client_token` (`t:string`) Unique, case-sensitive identifier that you
    provide to ensure the idempotency of the request. If you don’t specify a
    client token, the Amazon Web Services SDK automatically generates a client
    token and uses it for the request to ensure idempotency.
  """
  @spec update_launch_profile_member(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, update_launch_profile_member_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_launch_profile_member_errors()}
  def update_launch_profile_member(
        %Client{} = client,
        launch_profile_id,
        principal_id,
        studio_id,
        options \\ []
      ) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/launch-profiles/#{AWS.Util.encode_uri(launch_profile_id)}/membership/#{AWS.Util.encode_uri(principal_id)}"

    # Validate optional parameters
    optional_params = [client_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :client_token) do
        [{"X-Amz-Client-Token", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

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

  @doc """
  Update streaming image.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20UpdateStreamingImage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:streaming_image_id` (`t:string` required) The streaming image ID.
  * `:studio_id` (`t:string` required) The studio ID.

  ## Keyword parameters:
  * `:client_token` (`t:string`) Unique, case-sensitive identifier that you
    provide to ensure the idempotency of the request. If you don’t specify a
    client token, the Amazon Web Services SDK automatically generates a client
    token and uses it for the request to ensure idempotency.
  """
  @spec update_streaming_image(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_streaming_image_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_streaming_image_errors()}
  def update_streaming_image(%Client{} = client, streaming_image_id, studio_id, options \\ []) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/streaming-images/#{AWS.Util.encode_uri(streaming_image_id)}"

    # Validate optional parameters
    optional_params = [client_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :client_token) do
        [{"X-Amz-Client-Token", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

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

  @doc """
  Update a Studio resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20UpdateStudio&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:studio_id` (`t:string` required) The studio ID.

  ## Keyword parameters:
  * `:client_token` (`t:string`) Unique, case-sensitive identifier that you
    provide to ensure the idempotency of the request. If you don’t specify a
    client token, the Amazon Web Services SDK automatically generates a client
    token and uses it for the request to ensure idempotency.
  """
  @spec update_studio(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_studio_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_studio_errors()}
  def update_studio(%Client{} = client, studio_id, options \\ []) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}"

    # Validate optional parameters
    optional_params = [client_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :client_token) do
        [{"X-Amz-Client-Token", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

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

  @doc """
  Updates a studio component resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=nimble%20UpdateStudioComponent&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:studio_component_id` (`t:string` required) The studio component ID.
  * `:studio_id` (`t:string` required) The studio ID.

  ## Keyword parameters:
  * `:client_token` (`t:string`) Unique, case-sensitive identifier that you
    provide to ensure the idempotency of the request. If you don’t specify a
    client token, the Amazon Web Services SDK automatically generates a client
    token and uses it for the request to ensure idempotency.
  """
  @spec update_studio_component(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_studio_component_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_studio_component_errors()}
  def update_studio_component(%Client{} = client, studio_component_id, studio_id, options \\ []) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/studio-components/#{AWS.Util.encode_uri(studio_component_id)}"

    # Validate optional parameters
    optional_params = [client_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :client_token) do
        [{"X-Amz-Client-Token", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

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
