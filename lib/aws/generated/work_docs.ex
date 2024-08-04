# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.WorkDocs do
  @moduledoc """
  The Amazon WorkDocs API is designed for the following use cases:
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      get_document_path_response() :: %{
        "Path" => resource_path()
      }
      
  """
  @type get_document_path_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      entity_already_exists_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type entity_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_resources_request() :: %{
        optional("AdditionalResponseFields") => list(list(any())()),
        optional("AuthenticationToken") => String.t(),
        optional("Filters") => filters(),
        optional("Limit") => integer(),
        optional("Marker") => String.t(),
        optional("OrderBy") => list(search_sort_result()()),
        optional("OrganizationId") => String.t(),
        optional("QueryScopes") => list(list(any())()),
        optional("QueryText") => String.t()
      }
      
  """
  @type search_resources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_resource_permissions_response() :: %{
        "Marker" => String.t(),
        "Principals" => list(principal()())
      }
      
  """
  @type describe_resource_permissions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_notification_subscription_request() :: %{
        required("Endpoint") => String.t(),
        required("Protocol") => list(any()),
        required("SubscriptionType") => list(any())
      }
      
  """
  @type create_notification_subscription_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_resource_permissions_request() :: %{
        optional("AuthenticationToken") => String.t(),
        optional("NotificationOptions") => notification_options(),
        required("Principals") => list(share_principal()())
      }
      
  """
  @type add_resource_permissions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflicting_operation_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type conflicting_operation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_folder_response() :: %{
        "Metadata" => folder_metadata()
      }
      
  """
  @type create_folder_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_comment_request() :: %{
        optional("AuthenticationToken") => String.t()
      }
      
  """
  @type delete_comment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_metadata() :: %{
        "Id" => String.t(),
        "Name" => String.t(),
        "OriginalName" => String.t(),
        "Owner" => user_metadata(),
        "ParentId" => String.t(),
        "Type" => list(any()),
        "VersionId" => String.t()
      }
      
  """
  @type resource_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_document_versions_request() :: %{
        optional("AuthenticationToken") => String.t()
      }
      
  """
  @type restore_document_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_resource_permissions_request() :: %{
        optional("AuthenticationToken") => String.t(),
        optional("Limit") => integer(),
        optional("Marker") => String.t(),
        optional("PrincipalId") => String.t()
      }
      
  """
  @type describe_resource_permissions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_folder_path_request() :: %{
        optional("AuthenticationToken") => String.t(),
        optional("Fields") => String.t(),
        optional("Limit") => integer(),
        optional("Marker") => String.t()
      }
      
  """
  @type get_folder_path_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_document_path_request() :: %{
        optional("AuthenticationToken") => String.t(),
        optional("Fields") => String.t(),
        optional("Limit") => integer(),
        optional("Marker") => String.t()
      }
      
  """
  @type get_document_path_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_user_response() :: %{
        "User" => user()
      }
      
  """
  @type update_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_comment_request() :: %{
        optional("AuthenticationToken") => String.t(),
        optional("NotifyCollaborators") => boolean(),
        optional("ParentId") => String.t(),
        optional("ThreadId") => String.t(),
        optional("Visibility") => list(any()),
        required("Text") => String.t()
      }
      
  """
  @type create_comment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_metadata() :: %{
        "EmailAddress" => String.t(),
        "GivenName" => String.t(),
        "Id" => String.t(),
        "Surname" => String.t(),
        "Username" => String.t()
      }
      
  """
  @type user_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      permission_info() :: %{
        "Role" => list(any()),
        "Type" => list(any())
      }
      
  """
  @type permission_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      failed_dependency_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type failed_dependency_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_users_response() :: %{
        "Marker" => String.t(),
        "TotalNumberOfUsers" => float(),
        "Users" => list(user()())
      }
      
  """
  @type describe_users_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_folder_contents_request() :: %{
        optional("AuthenticationToken") => String.t(),
        optional("Include") => String.t(),
        optional("Limit") => integer(),
        optional("Marker") => String.t(),
        optional("Order") => list(any()),
        optional("Sort") => list(any()),
        optional("Type") => list(any())
      }
      
  """
  @type describe_folder_contents_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      prohibited_state_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type prohibited_state_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unauthorized_operation_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type unauthorized_operation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_labels_response() :: %{}
      
  """
  @type delete_labels_response() :: %{}

  @typedoc """

  ## Example:
      
      add_resource_permissions_response() :: %{
        "ShareResults" => list(share_result()())
      }
      
  """
  @type add_resource_permissions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_document_version_response() :: %{
        "CustomMetadata" => map(),
        "Metadata" => document_version_metadata()
      }
      
  """
  @type get_document_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_folder_contents_response() :: %{
        "Documents" => list(document_metadata()()),
        "Folders" => list(folder_metadata()()),
        "Marker" => String.t()
      }
      
  """
  @type describe_folder_contents_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_root_folders_request() :: %{
        optional("Limit") => integer(),
        optional("Marker") => String.t(),
        required("AuthenticationToken") => String.t()
      }
      
  """
  @type describe_root_folders_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_folder_response() :: %{
        "CustomMetadata" => map(),
        "Metadata" => folder_metadata()
      }
      
  """
  @type get_folder_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_operation_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_operation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_users_request() :: %{
        optional("AuthenticationToken") => String.t(),
        optional("Fields") => String.t(),
        optional("Include") => list(any()),
        optional("Limit") => integer(),
        optional("Marker") => String.t(),
        optional("Order") => list(any()),
        optional("OrganizationId") => String.t(),
        optional("Query") => String.t(),
        optional("Sort") => list(any()),
        optional("UserIds") => String.t()
      }
      
  """
  @type describe_users_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      group_metadata() :: %{
        "Id" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type group_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_comments_request() :: %{
        optional("AuthenticationToken") => String.t(),
        optional("Limit") => integer(),
        optional("Marker") => String.t()
      }
      
  """
  @type describe_comments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_document_version_request() :: %{
        optional("AuthenticationToken") => String.t(),
        optional("VersionStatus") => list(any())
      }
      
  """
  @type update_document_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_document_request() :: %{
        optional("AuthenticationToken") => String.t(),
        optional("Name") => String.t(),
        optional("ParentFolderId") => String.t(),
        optional("ResourceState") => list(any())
      }
      
  """
  @type update_document_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_custom_metadata_request() :: %{
        optional("AuthenticationToken") => String.t(),
        optional("DeleteAll") => boolean(),
        optional("Keys") => list(String.t()()),
        optional("VersionId") => String.t()
      }
      
  """
  @type delete_custom_metadata_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activate_user_response() :: %{
        "User" => user()
      }
      
  """
  @type activate_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      entity_not_exists_exception() :: %{
        "EntityIds" => list(String.t()()),
        "Message" => String.t()
      }
      
  """
  @type entity_not_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_labels_request() :: %{
        optional("AuthenticationToken") => String.t(),
        optional("DeleteAll") => boolean(),
        optional("Labels") => list(String.t()())
      }
      
  """
  @type delete_labels_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      principal() :: %{
        "Id" => String.t(),
        "Roles" => list(permission_info()()),
        "Type" => list(any())
      }
      
  """
  @type principal() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_custom_metadata_response() :: %{}
      
  """
  @type delete_custom_metadata_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_document_version_request() :: %{
        optional("AuthenticationToken") => String.t(),
        required("DeletePriorVersions") => boolean()
      }
      
  """
  @type delete_document_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_document_request() :: %{
        optional("AuthenticationToken") => String.t()
      }
      
  """
  @type delete_document_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_document_versions_response() :: %{
        "DocumentVersions" => list(document_version_metadata()()),
        "Marker" => String.t()
      }
      
  """
  @type describe_document_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_labels_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type too_many_labels_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_activities_response() :: %{
        "Marker" => String.t(),
        "UserActivities" => list(activity()())
      }
      
  """
  @type describe_activities_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_principal_type() :: %{
        "Id" => String.t(),
        "Roles" => list(list(any())())
      }
      
  """
  @type search_principal_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unauthorized_resource_access_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type unauthorized_resource_access_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_metadata_limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type custom_metadata_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      comment_metadata() :: %{
        "CommentId" => String.t(),
        "CommentStatus" => list(any()),
        "Contributor" => user(),
        "ContributorId" => String.t(),
        "CreatedTimestamp" => non_neg_integer(),
        "RecipientId" => String.t()
      }
      
  """
  @type comment_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_resources_response() :: %{
        "Items" => list(response_item()()),
        "Marker" => String.t()
      }
      
  """
  @type search_resources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      date_range_type() :: %{
        "EndValue" => non_neg_integer(),
        "StartValue" => non_neg_integer()
      }
      
  """
  @type date_range_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      storage_limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type storage_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_document_request() :: %{
        optional("AuthenticationToken") => String.t(),
        optional("IncludeCustomMetadata") => boolean()
      }
      
  """
  @type get_document_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_notification_subscription_request() :: %{}
      
  """
  @type delete_notification_subscription_request() :: %{}

  @typedoc """

  ## Example:
      
      get_resources_request() :: %{
        optional("AuthenticationToken") => String.t(),
        optional("CollectionType") => list(any()),
        optional("Limit") => integer(),
        optional("Marker") => String.t(),
        optional("UserId") => String.t()
      }
      
  """
  @type get_resources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_groups_request() :: %{
        optional("AuthenticationToken") => String.t(),
        optional("Limit") => integer(),
        optional("Marker") => String.t(),
        optional("OrganizationId") => String.t(),
        required("SearchQuery") => String.t()
      }
      
  """
  @type describe_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      requested_entity_too_large_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type requested_entity_too_large_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_folder_path_response() :: %{
        "Path" => resource_path()
      }
      
  """
  @type get_folder_path_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activity() :: %{
        "CommentMetadata" => comment_metadata(),
        "Initiator" => user_metadata(),
        "IsIndirectActivity" => boolean(),
        "OrganizationId" => String.t(),
        "OriginalParent" => resource_metadata(),
        "Participants" => participants(),
        "ResourceMetadata" => resource_metadata(),
        "TimeStamp" => non_neg_integer(),
        "Type" => list(any())
      }
      
  """
  @type activity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      share_principal() :: %{
        "Id" => String.t(),
        "Role" => list(any()),
        "Type" => list(any())
      }
      
  """
  @type share_principal() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      comment() :: %{
        "CommentId" => String.t(),
        "Contributor" => user(),
        "CreatedTimestamp" => non_neg_integer(),
        "ParentId" => String.t(),
        "RecipientId" => String.t(),
        "Status" => list(any()),
        "Text" => String.t(),
        "ThreadId" => String.t(),
        "Visibility" => list(any())
      }
      
  """
  @type comment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resources_response() :: %{
        "Documents" => list(document_metadata()()),
        "Folders" => list(folder_metadata()()),
        "Marker" => String.t()
      }
      
  """
  @type get_resources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_all_resource_permissions_request() :: %{
        optional("AuthenticationToken") => String.t()
      }
      
  """
  @type remove_all_resource_permissions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_folder_contents_request() :: %{
        optional("AuthenticationToken") => String.t()
      }
      
  """
  @type delete_folder_contents_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      folder_metadata() :: %{
        "CreatedTimestamp" => non_neg_integer(),
        "CreatorId" => String.t(),
        "Id" => String.t(),
        "Labels" => list(String.t()()),
        "LatestVersionSize" => float(),
        "ModifiedTimestamp" => non_neg_integer(),
        "Name" => String.t(),
        "ParentFolderId" => String.t(),
        "ResourceState" => list(any()),
        "Signature" => String.t(),
        "Size" => float()
      }
      
  """
  @type folder_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_subscriptions_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type too_many_subscriptions_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_labels_request() :: %{
        optional("AuthenticationToken") => String.t(),
        required("Labels") => list(String.t()())
      }
      
  """
  @type create_labels_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_current_user_request() :: %{
        required("AuthenticationToken") => String.t()
      }
      
  """
  @type get_current_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_comment_response() :: %{
        "Comment" => comment()
      }
      
  """
  @type create_comment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_folder_request() :: %{
        optional("AuthenticationToken") => String.t()
      }
      
  """
  @type delete_folder_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      long_range_type() :: %{
        "EndValue" => float(),
        "StartValue" => float()
      }
      
  """
  @type long_range_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_notification_subscriptions_request() :: %{
        optional("Limit") => integer(),
        optional("Marker") => String.t()
      }
      
  """
  @type describe_notification_subscriptions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_current_user_response() :: %{
        "User" => user()
      }
      
  """
  @type get_current_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_unavailable_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_path() :: %{
        "Components" => list(resource_path_component()())
      }
      
  """
  @type resource_path() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_comment_operation_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_comment_operation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_notification_subscription_response() :: %{
        "Subscription" => subscription()
      }
      
  """
  @type create_notification_subscription_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_storage_metadata() :: %{
        "StorageRule" => storage_rule_type(),
        "StorageUtilizedInBytes" => float()
      }
      
  """
  @type user_storage_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_user_request() :: %{
        optional("AuthenticationToken") => String.t()
      }
      
  """
  @type delete_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_document_versions_request() :: %{
        optional("AuthenticationToken") => String.t(),
        optional("Fields") => String.t(),
        optional("Include") => String.t(),
        optional("Limit") => integer(),
        optional("Marker") => String.t()
      }
      
  """
  @type describe_document_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      abort_document_version_upload_request() :: %{
        optional("AuthenticationToken") => String.t()
      }
      
  """
  @type abort_document_version_upload_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_comments_response() :: %{
        "Comments" => list(comment()()),
        "Marker" => String.t()
      }
      
  """
  @type describe_comments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_folder_request() :: %{
        optional("AuthenticationToken") => String.t(),
        optional("Name") => String.t(),
        optional("ParentFolderId") => String.t(),
        optional("ResourceState") => list(any())
      }
      
  """
  @type update_folder_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deactivating_last_system_user_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type deactivating_last_system_user_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_custom_metadata_request() :: %{
        optional("AuthenticationToken") => String.t(),
        optional("VersionId") => String.t(),
        required("CustomMetadata") => map()
      }
      
  """
  @type create_custom_metadata_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_argument_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_argument_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_document_version_request() :: %{
        optional("AuthenticationToken") => String.t(),
        optional("Fields") => String.t(),
        optional("IncludeCustomMetadata") => boolean()
      }
      
  """
  @type get_document_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_groups_response() :: %{
        "Groups" => list(group_metadata()()),
        "Marker" => String.t()
      }
      
  """
  @type describe_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      illegal_user_state_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type illegal_user_state_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      concurrent_modification_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type concurrent_modification_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_root_folders_response() :: %{
        "Folders" => list(folder_metadata()()),
        "Marker" => String.t()
      }
      
  """
  @type describe_root_folders_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_user_request() :: %{
        optional("AuthenticationToken") => String.t(),
        optional("GivenName") => String.t(),
        optional("GrantPoweruserPrivileges") => list(any()),
        optional("Locale") => list(any()),
        optional("StorageRule") => storage_rule_type(),
        optional("Surname") => String.t(),
        optional("TimeZoneId") => String.t(),
        optional("Type") => list(any())
      }
      
  """
  @type update_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_folder_request() :: %{
        optional("AuthenticationToken") => String.t(),
        optional("IncludeCustomMetadata") => boolean()
      }
      
  """
  @type get_folder_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document_metadata() :: %{
        "CreatedTimestamp" => non_neg_integer(),
        "CreatorId" => String.t(),
        "Id" => String.t(),
        "Labels" => list(String.t()()),
        "LatestVersionMetadata" => document_version_metadata(),
        "ModifiedTimestamp" => non_neg_integer(),
        "ParentFolderId" => String.t(),
        "ResourceState" => list(any())
      }
      
  """
  @type document_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subscription() :: %{
        "EndPoint" => String.t(),
        "Protocol" => list(any()),
        "SubscriptionId" => String.t()
      }
      
  """
  @type subscription() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user() :: %{
        "CreatedTimestamp" => non_neg_integer(),
        "EmailAddress" => String.t(),
        "GivenName" => String.t(),
        "Id" => String.t(),
        "Locale" => list(any()),
        "ModifiedTimestamp" => non_neg_integer(),
        "OrganizationId" => String.t(),
        "RecycleBinFolderId" => String.t(),
        "RootFolderId" => String.t(),
        "Status" => list(any()),
        "Storage" => user_storage_metadata(),
        "Surname" => String.t(),
        "TimeZoneId" => String.t(),
        "Type" => list(any()),
        "Username" => String.t()
      }
      
  """
  @type user() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      storage_limit_will_exceed_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type storage_limit_will_exceed_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      draft_upload_out_of_sync_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type draft_upload_out_of_sync_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notification_options() :: %{
        "EmailMessage" => String.t(),
        "SendEmail" => boolean()
      }
      
  """
  @type notification_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_notification_subscriptions_response() :: %{
        "Marker" => String.t(),
        "Subscriptions" => list(subscription()())
      }
      
  """
  @type describe_notification_subscriptions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      filters() :: %{
        "AncestorIds" => list(String.t()()),
        "ContentCategories" => list(list(any())()),
        "CreatedRange" => date_range_type(),
        "Labels" => list(String.t()()),
        "ModifiedRange" => date_range_type(),
        "Principals" => list(search_principal_type()()),
        "ResourceTypes" => list(list(any())()),
        "SearchCollectionTypes" => list(list(any())()),
        "SizeRange" => long_range_type(),
        "TextLocales" => list(list(any())())
      }
      
  """
  @type filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_sort_result() :: %{
        "Field" => list(any()),
        "Order" => list(any())
      }
      
  """
  @type search_sort_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      share_result() :: %{
        "InviteePrincipalId" => String.t(),
        "PrincipalId" => String.t(),
        "Role" => list(any()),
        "ShareId" => String.t(),
        "Status" => list(any()),
        "StatusMessage" => String.t()
      }
      
  """
  @type share_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      initiate_document_version_upload_request() :: %{
        optional("AuthenticationToken") => String.t(),
        optional("ContentCreatedTimestamp") => non_neg_integer(),
        optional("ContentModifiedTimestamp") => non_neg_integer(),
        optional("ContentType") => String.t(),
        optional("DocumentSizeInBytes") => float(),
        optional("Id") => String.t(),
        optional("Name") => String.t(),
        optional("ParentFolderId") => String.t()
      }
      
  """
  @type initiate_document_version_upload_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_activities_request() :: %{
        optional("ActivityTypes") => String.t(),
        optional("AuthenticationToken") => String.t(),
        optional("EndTime") => non_neg_integer(),
        optional("IncludeIndirectActivities") => boolean(),
        optional("Limit") => integer(),
        optional("Marker") => String.t(),
        optional("OrganizationId") => String.t(),
        optional("ResourceId") => String.t(),
        optional("StartTime") => non_neg_integer(),
        optional("UserId") => String.t()
      }
      
  """
  @type describe_activities_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      storage_rule_type() :: %{
        "StorageAllocatedInBytes" => float(),
        "StorageType" => list(any())
      }
      
  """
  @type storage_rule_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      initiate_document_version_upload_response() :: %{
        "Metadata" => document_metadata(),
        "UploadMetadata" => upload_metadata()
      }
      
  """
  @type initiate_document_version_upload_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document_version_metadata() :: %{
        "ContentCreatedTimestamp" => non_neg_integer(),
        "ContentModifiedTimestamp" => non_neg_integer(),
        "ContentType" => String.t(),
        "CreatedTimestamp" => non_neg_integer(),
        "CreatorId" => String.t(),
        "Id" => String.t(),
        "ModifiedTimestamp" => non_neg_integer(),
        "Name" => String.t(),
        "Signature" => String.t(),
        "Size" => float(),
        "Source" => map(),
        "Status" => list(any()),
        "Thumbnail" => map()
      }
      
  """
  @type document_version_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_resource_permission_request() :: %{
        optional("AuthenticationToken") => String.t(),
        optional("PrincipalType") => list(any())
      }
      
  """
  @type remove_resource_permission_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      participants() :: %{
        "Groups" => list(group_metadata()()),
        "Users" => list(user_metadata()())
      }
      
  """
  @type participants() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activate_user_request() :: %{
        optional("AuthenticationToken") => String.t()
      }
      
  """
  @type activate_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_folder_request() :: %{
        optional("AuthenticationToken") => String.t(),
        optional("Name") => String.t(),
        required("ParentFolderId") => String.t()
      }
      
  """
  @type create_folder_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      response_item() :: %{
        "CommentMetadata" => comment_metadata(),
        "DocumentMetadata" => document_metadata(),
        "DocumentVersionMetadata" => document_version_metadata(),
        "FolderMetadata" => folder_metadata(),
        "ResourceType" => list(any()),
        "WebUrl" => String.t()
      }
      
  """
  @type response_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_labels_response() :: %{}
      
  """
  @type create_labels_response() :: %{}

  @typedoc """

  ## Example:
      
      upload_metadata() :: %{
        "SignedHeaders" => map(),
        "UploadUrl" => String.t()
      }
      
  """
  @type upload_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_path_component() :: %{
        "Id" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type resource_path_component() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document_locked_for_comments_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type document_locked_for_comments_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_custom_metadata_response() :: %{}
      
  """
  @type create_custom_metadata_response() :: %{}

  @typedoc """

  ## Example:
      
      create_user_response() :: %{
        "User" => user()
      }
      
  """
  @type create_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_password_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_password_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deactivate_user_request() :: %{
        optional("AuthenticationToken") => String.t()
      }
      
  """
  @type deactivate_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_document_response() :: %{
        "CustomMetadata" => map(),
        "Metadata" => document_metadata()
      }
      
  """
  @type get_document_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_already_checked_out_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_already_checked_out_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_user_request() :: %{
        optional("AuthenticationToken") => String.t(),
        optional("EmailAddress") => String.t(),
        optional("OrganizationId") => String.t(),
        optional("StorageRule") => storage_rule_type(),
        optional("TimeZoneId") => String.t(),
        required("GivenName") => String.t(),
        required("Password") => String.t(),
        required("Surname") => String.t(),
        required("Username") => String.t()
      }
      
  """
  @type create_user_request() :: %{String.t() => any()}

  @type abort_document_version_upload_errors() ::
          concurrent_modification_exception()
          | service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | prohibited_state_exception()
          | failed_dependency_exception()

  @type activate_user_errors() ::
          service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | failed_dependency_exception()

  @type add_resource_permissions_errors() ::
          service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | unauthorized_operation_exception()
          | prohibited_state_exception()
          | failed_dependency_exception()

  @type create_comment_errors() ::
          document_locked_for_comments_exception()
          | invalid_comment_operation_exception()
          | service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | prohibited_state_exception()
          | failed_dependency_exception()

  @type create_custom_metadata_errors() ::
          service_unavailable_exception()
          | custom_metadata_limit_exceeded_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | prohibited_state_exception()
          | failed_dependency_exception()

  @type create_folder_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | prohibited_state_exception()
          | failed_dependency_exception()
          | conflicting_operation_exception()
          | entity_already_exists_exception()

  @type create_labels_errors() ::
          service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | too_many_labels_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | failed_dependency_exception()

  @type create_notification_subscription_errors() ::
          invalid_argument_exception()
          | service_unavailable_exception()
          | too_many_subscriptions_exception()
          | unauthorized_resource_access_exception()

  @type create_user_errors() ::
          service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | unauthorized_operation_exception()
          | failed_dependency_exception()
          | entity_already_exists_exception()

  @type deactivate_user_errors() ::
          service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | failed_dependency_exception()

  @type delete_comment_errors() ::
          document_locked_for_comments_exception()
          | service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | prohibited_state_exception()
          | failed_dependency_exception()

  @type delete_custom_metadata_errors() ::
          service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | prohibited_state_exception()
          | failed_dependency_exception()

  @type delete_document_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | prohibited_state_exception()
          | failed_dependency_exception()
          | conflicting_operation_exception()

  @type delete_document_version_errors() ::
          concurrent_modification_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | invalid_operation_exception()
          | unauthorized_operation_exception()
          | prohibited_state_exception()
          | failed_dependency_exception()
          | conflicting_operation_exception()

  @type delete_folder_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | prohibited_state_exception()
          | failed_dependency_exception()
          | conflicting_operation_exception()

  @type delete_folder_contents_errors() ::
          service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | prohibited_state_exception()
          | failed_dependency_exception()
          | conflicting_operation_exception()

  @type delete_labels_errors() ::
          service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | prohibited_state_exception()
          | failed_dependency_exception()

  @type delete_notification_subscription_errors() ::
          service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | prohibited_state_exception()

  @type delete_user_errors() ::
          service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | failed_dependency_exception()

  @type describe_activities_errors() ::
          invalid_argument_exception()
          | service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | unauthorized_operation_exception()
          | failed_dependency_exception()

  @type describe_comments_errors() ::
          service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | prohibited_state_exception()
          | failed_dependency_exception()

  @type describe_document_versions_errors() ::
          invalid_password_exception()
          | invalid_argument_exception()
          | service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | prohibited_state_exception()
          | failed_dependency_exception()

  @type describe_folder_contents_errors() ::
          invalid_argument_exception()
          | service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | prohibited_state_exception()
          | failed_dependency_exception()

  @type describe_groups_errors() ::
          service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | unauthorized_operation_exception()
          | failed_dependency_exception()

  @type describe_notification_subscriptions_errors() ::
          service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()

  @type describe_resource_permissions_errors() ::
          invalid_argument_exception()
          | service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | unauthorized_operation_exception()
          | failed_dependency_exception()

  @type describe_root_folders_errors() ::
          invalid_argument_exception()
          | service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | unauthorized_operation_exception()
          | failed_dependency_exception()

  @type describe_users_errors() ::
          invalid_argument_exception()
          | service_unavailable_exception()
          | requested_entity_too_large_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | failed_dependency_exception()

  @type get_current_user_errors() ::
          service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | failed_dependency_exception()

  @type get_document_errors() ::
          invalid_password_exception()
          | invalid_argument_exception()
          | service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | failed_dependency_exception()

  @type get_document_path_errors() ::
          service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | failed_dependency_exception()

  @type get_document_version_errors() ::
          invalid_password_exception()
          | service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | prohibited_state_exception()
          | failed_dependency_exception()

  @type get_folder_errors() ::
          invalid_argument_exception()
          | service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | prohibited_state_exception()
          | failed_dependency_exception()

  @type get_folder_path_errors() ::
          service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | failed_dependency_exception()

  @type get_resources_errors() ::
          invalid_argument_exception()
          | service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | unauthorized_operation_exception()
          | failed_dependency_exception()

  @type initiate_document_version_upload_errors() ::
          resource_already_checked_out_exception()
          | invalid_password_exception()
          | limit_exceeded_exception()
          | draft_upload_out_of_sync_exception()
          | storage_limit_will_exceed_exception()
          | invalid_argument_exception()
          | service_unavailable_exception()
          | storage_limit_exceeded_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | prohibited_state_exception()
          | failed_dependency_exception()
          | entity_already_exists_exception()

  @type remove_all_resource_permissions_errors() ::
          service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | unauthorized_operation_exception()
          | failed_dependency_exception()

  @type remove_resource_permission_errors() ::
          service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | unauthorized_operation_exception()
          | failed_dependency_exception()

  @type restore_document_versions_errors() ::
          concurrent_modification_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | invalid_operation_exception()
          | unauthorized_operation_exception()
          | prohibited_state_exception()
          | failed_dependency_exception()
          | conflicting_operation_exception()

  @type search_resources_errors() ::
          invalid_argument_exception()
          | service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | unauthorized_operation_exception()

  @type update_document_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | prohibited_state_exception()
          | failed_dependency_exception()
          | conflicting_operation_exception()
          | entity_already_exists_exception()

  @type update_document_version_errors() ::
          concurrent_modification_exception()
          | service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | invalid_operation_exception()
          | unauthorized_operation_exception()
          | prohibited_state_exception()
          | failed_dependency_exception()

  @type update_folder_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | prohibited_state_exception()
          | failed_dependency_exception()
          | conflicting_operation_exception()
          | entity_already_exists_exception()

  @type update_user_errors() ::
          illegal_user_state_exception()
          | invalid_argument_exception()
          | deactivating_last_system_user_exception()
          | service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | prohibited_state_exception()
          | failed_dependency_exception()

  def metadata do
    %{
      api_version: "2016-05-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "workdocs",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "WorkDocs",
      signature_version: "v4",
      signing_name: "workdocs",
      target_prefix: nil
    }
  end

  @doc """
  Aborts the upload of the specified document version that was previously
  initiated by `InitiateDocumentVersionUpload`. The client should make this call
  only when it no longer intends to upload the document version, or fails to do
  so.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workdocs%20AbortDocumentVersionUpload&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:document_id` (`t:string` required) The ID of the document.
  * `:version_id` (`t:string` required) The ID of the version.

  ## Keyword parameters:
  * `:authentication_token` (`t:string`) Amazon WorkDocs authentication token. Not
    required when using Amazon Web Services administrator credentials to access
    the API.
  """
  @spec abort_document_version_upload(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, abort_document_version_upload_errors()}
  def abort_document_version_upload(%Client{} = client, document_id, version_id, options \\ []) do
    url_path =
      "/api/v1/documents/#{AWS.Util.encode_uri(document_id)}/versions/#{AWS.Util.encode_uri(version_id)}"

    # Validate optional parameters
    optional_params = [authentication_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :authentication_token) do
        [{"Authentication", opt_val} | headers]
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
      |> Keyword.drop([:authentication_token])

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
  Activates the specified user. Only active users can access Amazon WorkDocs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workdocs%20ActivateUser&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:user_id` (`t:string` required) The ID of the user.

  ## Keyword parameters:
  * `:authentication_token` (`t:string`) Amazon WorkDocs authentication token. Not
    required when using Amazon Web Services administrator credentials to access
    the API.
  """
  @spec activate_user(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, activate_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, activate_user_errors()}
  def activate_user(%Client{} = client, user_id, options \\ []) do
    url_path = "/api/v1/users/#{AWS.Util.encode_uri(user_id)}/activation"

    # Validate optional parameters
    optional_params = [authentication_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :authentication_token) do
        [{"Authentication", opt_val} | headers]
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
      |> Keyword.drop([:authentication_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates a set of permissions for the specified folder or document. The resource
  permissions are overwritten if the principals already have different
  permissions.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workdocs%20AddResourcePermissions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_id` (`t:string` required) The ID of the resource.

  ## Keyword parameters:
  * `:authentication_token` (`t:string`) Amazon WorkDocs authentication token. Not
    required when using Amazon Web Services administrator credentials to access
    the API.
  """
  @spec add_resource_permissions(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, add_resource_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, add_resource_permissions_errors()}
  def add_resource_permissions(%Client{} = client, resource_id, options \\ []) do
    url_path = "/api/v1/resources/#{AWS.Util.encode_uri(resource_id)}/permissions"

    # Validate optional parameters
    optional_params = [authentication_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :authentication_token) do
        [{"Authentication", opt_val} | headers]
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
      |> Keyword.drop([:authentication_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Adds a new comment to the specified document version.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workdocs%20CreateComment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:document_id` (`t:string` required) The ID of the document.
  * `:version_id` (`t:string` required) The ID of the document version.

  ## Keyword parameters:
  * `:authentication_token` (`t:string`) Amazon WorkDocs authentication token. Not
    required when using Amazon Web Services administrator credentials to access
    the API.
  """
  @spec create_comment(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, create_comment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_comment_errors()}
  def create_comment(%Client{} = client, document_id, version_id, options \\ []) do
    url_path =
      "/api/v1/documents/#{AWS.Util.encode_uri(document_id)}/versions/#{AWS.Util.encode_uri(version_id)}/comment"

    # Validate optional parameters
    optional_params = [authentication_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :authentication_token) do
        [{"Authentication", opt_val} | headers]
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
      |> Keyword.drop([:authentication_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Adds one or more custom properties to the specified resource (a folder,
  document, or version).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workdocs%20CreateCustomMetadata&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_id` (`t:string` required) The ID of the resource.

  ## Keyword parameters:
  * `:version_id` (`t:string`) The ID of the version, if the custom metadata is
    being added to a document version.
  * `:authentication_token` (`t:string`) Amazon WorkDocs authentication token. Not
    required when using Amazon Web Services administrator credentials to access
    the API.
  """
  @spec create_custom_metadata(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_custom_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_custom_metadata_errors()}
  def create_custom_metadata(%Client{} = client, resource_id, options \\ []) do
    url_path = "/api/v1/resources/#{AWS.Util.encode_uri(resource_id)}/customMetadata"

    # Validate optional parameters
    optional_params = [version_id: nil, authentication_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :authentication_token) do
        [{"Authentication", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :version_id) do
        [{"versionid", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:version_id, :authentication_token])

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates a folder with the specified name and parent folder.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workdocs%20CreateFolder&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:authentication_token` (`t:string`) Amazon WorkDocs authentication token. Not
    required when using Amazon Web Services administrator credentials to access
    the API.
  """
  @spec create_folder(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_folder_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_folder_errors()}
  def create_folder(%Client{} = client, options \\ []) do
    url_path = "/api/v1/folders"

    # Validate optional parameters
    optional_params = [authentication_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :authentication_token) do
        [{"Authentication", opt_val} | headers]
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
      |> Keyword.drop([:authentication_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Adds the specified list of labels to the given resource (a document or folder)

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workdocs%20CreateLabels&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_id` (`t:string` required) The ID of the resource.

  ## Keyword parameters:
  * `:authentication_token` (`t:string`) Amazon WorkDocs authentication token. Not
    required when using Amazon Web Services administrator credentials to access
    the API.
  """
  @spec create_labels(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_labels_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_labels_errors()}
  def create_labels(%Client{} = client, resource_id, options \\ []) do
    url_path = "/api/v1/resources/#{AWS.Util.encode_uri(resource_id)}/labels"

    # Validate optional parameters
    optional_params = [authentication_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :authentication_token) do
        [{"Authentication", opt_val} | headers]
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
      |> Keyword.drop([:authentication_token])

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Configure Amazon WorkDocs to use Amazon SNS notifications. The endpoint receives
  a confirmation message, and must confirm the subscription.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workdocs%20CreateNotificationSubscription&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:organization_id` (`t:string` required) The ID of the organization.
  """
  @spec create_notification_subscription(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_notification_subscription_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_notification_subscription_errors()}
  def create_notification_subscription(%Client{} = client, organization_id, options \\ []) do
    url_path = "/api/v1/organizations/#{AWS.Util.encode_uri(organization_id)}/subscriptions"

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
  Creates a user in a Simple AD or Microsoft AD directory. The status of a newly
  created user is "ACTIVE". New users can access Amazon WorkDocs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workdocs%20CreateUser&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:authentication_token` (`t:string`) Amazon WorkDocs authentication token. Not
    required when using Amazon Web Services administrator credentials to access
    the API.
  """
  @spec create_user(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_user_errors()}
  def create_user(%Client{} = client, options \\ []) do
    url_path = "/api/v1/users"

    # Validate optional parameters
    optional_params = [authentication_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :authentication_token) do
        [{"Authentication", opt_val} | headers]
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
      |> Keyword.drop([:authentication_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Deactivates the specified user, which revokes the user's access to Amazon
  WorkDocs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workdocs%20DeactivateUser&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:user_id` (`t:string` required) The ID of the user.

  ## Keyword parameters:
  * `:authentication_token` (`t:string`) Amazon WorkDocs authentication token. Not
    required when using Amazon Web Services administrator credentials to access
    the API.
  """
  @spec deactivate_user(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deactivate_user_errors()}
  def deactivate_user(%Client{} = client, user_id, options \\ []) do
    url_path = "/api/v1/users/#{AWS.Util.encode_uri(user_id)}/activation"

    # Validate optional parameters
    optional_params = [authentication_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :authentication_token) do
        [{"Authentication", opt_val} | headers]
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
      |> Keyword.drop([:authentication_token])

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
  Deletes the specified comment from the document version.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workdocs%20DeleteComment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:comment_id` (`t:string` required) The ID of the comment.
  * `:document_id` (`t:string` required) The ID of the document.
  * `:version_id` (`t:string` required) The ID of the document version.

  ## Keyword parameters:
  * `:authentication_token` (`t:string`) Amazon WorkDocs authentication token. Not
    required when using Amazon Web Services administrator credentials to access
    the API.
  """
  @spec delete_comment(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_comment_errors()}
  def delete_comment(%Client{} = client, comment_id, document_id, version_id, options \\ []) do
    url_path =
      "/api/v1/documents/#{AWS.Util.encode_uri(document_id)}/versions/#{AWS.Util.encode_uri(version_id)}/comment/#{AWS.Util.encode_uri(comment_id)}"

    # Validate optional parameters
    optional_params = [authentication_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :authentication_token) do
        [{"Authentication", opt_val} | headers]
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
      |> Keyword.drop([:authentication_token])

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
  Deletes custom metadata from the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workdocs%20DeleteCustomMetadata&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_id` (`t:string` required) The ID of the resource, either a document
    or folder.

  ## Keyword parameters:
  * `:delete_all` (`t:boolean`) Flag to indicate removal of all custom metadata
    properties from the specified resource.
  * `:keys` (`t:list[com.amazonaws.workdocs#CustomMetadataKeyType]`) List of
    properties to remove.
  * `:version_id` (`t:string`) The ID of the version, if the custom metadata is
    being deleted from a document version.
  * `:authentication_token` (`t:string`) Amazon WorkDocs authentication token. Not
    required when using Amazon Web Services administrator credentials to access
    the API.
  """
  @spec delete_custom_metadata(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_custom_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_custom_metadata_errors()}
  def delete_custom_metadata(%Client{} = client, resource_id, options \\ []) do
    url_path = "/api/v1/resources/#{AWS.Util.encode_uri(resource_id)}/customMetadata"

    # Validate optional parameters
    optional_params = [delete_all: nil, keys: nil, version_id: nil, authentication_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :authentication_token) do
        [{"Authentication", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :version_id) do
        [{"versionId", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :keys) do
        [{"keys", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :delete_all) do
        [{"deleteAll", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:delete_all, :keys, :version_id, :authentication_token])

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
  Permanently deletes the specified document and its associated metadata.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workdocs%20DeleteDocument&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:document_id` (`t:string` required) The ID of the document.

  ## Keyword parameters:
  * `:authentication_token` (`t:string`) Amazon WorkDocs authentication token. Not
    required when using Amazon Web Services administrator credentials to access
    the API.
  """
  @spec delete_document(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_document_errors()}
  def delete_document(%Client{} = client, document_id, options \\ []) do
    url_path = "/api/v1/documents/#{AWS.Util.encode_uri(document_id)}"

    # Validate optional parameters
    optional_params = [authentication_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :authentication_token) do
        [{"Authentication", opt_val} | headers]
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
      |> Keyword.drop([:authentication_token])

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
  Deletes a specific version of a document.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workdocs%20DeleteDocumentVersion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:document_id` (`t:string` required) The ID of the document associated with
    the version being deleted.
  * `:version_id` (`t:string` required) The ID of the version being deleted.
  * `:delete_prior_versions` (`t:boolean` required) Deletes all versions of a
    document prior to the current version.

  ## Keyword parameters:
  * `:authentication_token` (`t:string`) Amazon WorkDocs authentication token. Not
    required when using Amazon Web Services administrator credentials to access
    the API.
  """
  @spec delete_document_version(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_document_version_errors()}
  def delete_document_version(
        %Client{} = client,
        document_id,
        version_id,
        delete_prior_versions,
        options \\ []
      )
      when is_boolean(delete_prior_versions) do
    url_path =
      "/api/v1/documentVersions/#{AWS.Util.encode_uri(document_id)}/versions/#{AWS.Util.encode_uri(version_id)}"

    # Validate optional parameters
    optional_params = [authentication_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :authentication_token) do
        [{"Authentication", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = [{"deletePriorVersions", delete_prior_versions}]

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:authentication_token])

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
  Permanently deletes the specified folder and its contents.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workdocs%20DeleteFolder&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:folder_id` (`t:string` required) The ID of the folder.

  ## Keyword parameters:
  * `:authentication_token` (`t:string`) Amazon WorkDocs authentication token. Not
    required when using Amazon Web Services administrator credentials to access
    the API.
  """
  @spec delete_folder(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_folder_errors()}
  def delete_folder(%Client{} = client, folder_id, options \\ []) do
    url_path = "/api/v1/folders/#{AWS.Util.encode_uri(folder_id)}"

    # Validate optional parameters
    optional_params = [authentication_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :authentication_token) do
        [{"Authentication", opt_val} | headers]
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
      |> Keyword.drop([:authentication_token])

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
  Deletes the contents of the specified folder.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workdocs%20DeleteFolderContents&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:folder_id` (`t:string` required) The ID of the folder.

  ## Keyword parameters:
  * `:authentication_token` (`t:string`) Amazon WorkDocs authentication token. Not
    required when using Amazon Web Services administrator credentials to access
    the API.
  """
  @spec delete_folder_contents(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_folder_contents_errors()}
  def delete_folder_contents(%Client{} = client, folder_id, options \\ []) do
    url_path = "/api/v1/folders/#{AWS.Util.encode_uri(folder_id)}/contents"

    # Validate optional parameters
    optional_params = [authentication_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :authentication_token) do
        [{"Authentication", opt_val} | headers]
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
      |> Keyword.drop([:authentication_token])

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
  Deletes the specified list of labels from a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workdocs%20DeleteLabels&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_id` (`t:string` required) The ID of the resource.

  ## Keyword parameters:
  * `:delete_all` (`t:boolean`) Flag to request removal of all labels from the
    specified resource.
  * `:labels` (`t:list[com.amazonaws.workdocs#SharedLabel]`) List of labels to
    delete from the resource.
  * `:authentication_token` (`t:string`) Amazon WorkDocs authentication token. Not
    required when using Amazon Web Services administrator credentials to access
    the API.
  """
  @spec delete_labels(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_labels_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_labels_errors()}
  def delete_labels(%Client{} = client, resource_id, options \\ []) do
    url_path = "/api/v1/resources/#{AWS.Util.encode_uri(resource_id)}/labels"

    # Validate optional parameters
    optional_params = [delete_all: nil, labels: nil, authentication_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :authentication_token) do
        [{"Authentication", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :labels) do
        [{"labels", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :delete_all) do
        [{"deleteAll", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:delete_all, :labels, :authentication_token])

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
  Deletes the specified subscription from the specified organization.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workdocs%20DeleteNotificationSubscription&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:organization_id` (`t:string` required) The ID of the organization.
  * `:subscription_id` (`t:string` required) The ID of the subscription.
  """
  @spec delete_notification_subscription(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_notification_subscription_errors()}
  def delete_notification_subscription(
        %Client{} = client,
        organization_id,
        subscription_id,
        options \\ []
      ) do
    url_path =
      "/api/v1/organizations/#{AWS.Util.encode_uri(organization_id)}/subscriptions/#{AWS.Util.encode_uri(subscription_id)}"

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
  Deletes the specified user from a Simple AD or Microsoft AD directory.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workdocs%20DeleteUser&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:user_id` (`t:string` required) The ID of the user.

  ## Keyword parameters:
  * `:authentication_token` (`t:string`) Amazon WorkDocs authentication token. Do
    not set this field when using administrative API actions, as in accessing
    the API using Amazon Web Services credentials.
  """
  @spec delete_user(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_user_errors()}
  def delete_user(%Client{} = client, user_id, options \\ []) do
    url_path = "/api/v1/users/#{AWS.Util.encode_uri(user_id)}"

    # Validate optional parameters
    optional_params = [authentication_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :authentication_token) do
        [{"Authentication", opt_val} | headers]
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
      |> Keyword.drop([:authentication_token])

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
  Describes the user activities in a specified time period.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workdocs%20DescribeActivities&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:activity_types` (`t:string`) Specifies which activity types to include in
    the response. If this field is left empty, all activity types are returned.
  * `:end_time` (`t:timestamp`) The timestamp that determines the end time of the
    activities. The response includes the activities performed before the
    specified timestamp.
  * `:include_indirect_activities` (`t:boolean`) Includes indirect activities. An
    indirect activity results from a direct activity performed on a parent
    resource. For example, sharing a parent folder (the direct activity) shares
    all of the subfolders and documents within the parent folder (the indirect
    activity).
  * `:limit` (`t:integer`) The maximum number of items to return.
  * `:marker` (`t:string`) The marker for the next set of results.
  * `:organization_id` (`t:string`) The ID of the organization. This is a
    mandatory parameter when using administrative API (SigV4) requests.
  * `:resource_id` (`t:string`) The document or folder ID for which to describe
    activity types.
  * `:start_time` (`t:timestamp`) The timestamp that determines the starting time
    of the activities. The response includes the activities performed after the
    specified timestamp.
  * `:user_id` (`t:string`) The ID of the user who performed the action. The
    response includes activities pertaining to this user. This is an optional
    parameter and is only applicable for administrative API (SigV4) requests.
  * `:authentication_token` (`t:string`) Amazon WorkDocs authentication token. Not
    required when using Amazon Web Services administrator credentials to access
    the API.
  """
  @spec describe_activities(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_activities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_activities_errors()}
  def describe_activities(%Client{} = client, options \\ []) do
    url_path = "/api/v1/activities"

    # Validate optional parameters
    optional_params = [
      activity_types: nil,
      end_time: nil,
      include_indirect_activities: nil,
      limit: nil,
      marker: nil,
      organization_id: nil,
      resource_id: nil,
      start_time: nil,
      user_id: nil,
      authentication_token: nil
    ]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :authentication_token) do
        [{"Authentication", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :user_id) do
        [{"userId", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :start_time) do
        [{"startTime", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :resource_id) do
        [{"resourceId", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :organization_id) do
        [{"organizationId", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :marker) do
        [{"marker", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :limit) do
        [{"limit", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :include_indirect_activities) do
        [{"includeIndirectActivities", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :end_time) do
        [{"endTime", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :activity_types) do
        [{"activityTypes", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :activity_types,
        :end_time,
        :include_indirect_activities,
        :limit,
        :marker,
        :organization_id,
        :resource_id,
        :start_time,
        :user_id,
        :authentication_token
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List all the comments for the specified document version.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workdocs%20DescribeComments&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:document_id` (`t:string` required) The ID of the document.
  * `:version_id` (`t:string` required) The ID of the document version.

  ## Keyword parameters:
  * `:limit` (`t:integer`) The maximum number of items to return.
  * `:marker` (`t:string`) The marker for the next set of results. This marker was
    received from a previous call.
  * `:authentication_token` (`t:string`) Amazon WorkDocs authentication token. Not
    required when using Amazon Web Services administrator credentials to access
    the API.
  """
  @spec describe_comments(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_comments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_comments_errors()}
  def describe_comments(%Client{} = client, document_id, version_id, options \\ []) do
    url_path =
      "/api/v1/documents/#{AWS.Util.encode_uri(document_id)}/versions/#{AWS.Util.encode_uri(version_id)}/comments"

    # Validate optional parameters
    optional_params = [limit: nil, marker: nil, authentication_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :authentication_token) do
        [{"Authentication", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :marker) do
        [{"marker", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :limit) do
        [{"limit", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:limit, :marker, :authentication_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the document versions for the specified document.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workdocs%20DescribeDocumentVersions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:document_id` (`t:string` required) The ID of the document.

  ## Keyword parameters:
  * `:fields` (`t:string`) Specify "SOURCE" to include initialized versions and a
    URL for the source document.
  * `:include` (`t:string`) A comma-separated list of values. Specify
    "INITIALIZED" to include incomplete versions.
  * `:limit` (`t:integer`) The maximum number of versions to return with this
    call.
  * `:marker` (`t:string`) The marker for the next set of results. (You received
    this marker from a previous call.)
  * `:authentication_token` (`t:string`) Amazon WorkDocs authentication token. Not
    required when using Amazon Web Services administrator credentials to access
    the API.
  """
  @spec describe_document_versions(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_document_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_document_versions_errors()}
  def describe_document_versions(%Client{} = client, document_id, options \\ []) do
    url_path = "/api/v1/documents/#{AWS.Util.encode_uri(document_id)}/versions"

    # Validate optional parameters
    optional_params = [
      fields: nil,
      include: nil,
      limit: nil,
      marker: nil,
      authentication_token: nil
    ]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :authentication_token) do
        [{"Authentication", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :marker) do
        [{"marker", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :limit) do
        [{"limit", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :include) do
        [{"include", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :fields) do
        [{"fields", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:fields, :include, :limit, :marker, :authentication_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the contents of the specified folder, including its documents and
  subfolders.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workdocs%20DescribeFolderContents&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:folder_id` (`t:string` required) The ID of the folder.

  ## Keyword parameters:
  * `:include` (`t:string`) The contents to include. Specify "INITIALIZED" to
    include initialized documents.
  * `:limit` (`t:integer`) The maximum number of items to return with this call.
  * `:marker` (`t:string`) The marker for the next set of results. This marker was
    received from a previous call.
  * `:order` (`t:enum["ASCENDING|DESCENDING"]`) The order for the contents of the
    folder.
  * `:sort` (`t:enum["DATE|NAME"]`) The sorting criteria.
  * `:type` (`t:enum["ALL|DOCUMENT|FOLDER"]`) The type of items.
  * `:authentication_token` (`t:string`) Amazon WorkDocs authentication token. Not
    required when using Amazon Web Services administrator credentials to access
    the API.
  """
  @spec describe_folder_contents(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_folder_contents_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_folder_contents_errors()}
  def describe_folder_contents(%Client{} = client, folder_id, options \\ []) do
    url_path = "/api/v1/folders/#{AWS.Util.encode_uri(folder_id)}/contents"

    # Validate optional parameters
    optional_params = [
      include: nil,
      limit: nil,
      marker: nil,
      order: nil,
      sort: nil,
      type: nil,
      authentication_token: nil
    ]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :authentication_token) do
        [{"Authentication", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :type) do
        [{"type", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :sort) do
        [{"sort", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :order) do
        [{"order", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :marker) do
        [{"marker", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :limit) do
        [{"limit", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :include) do
        [{"include", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:include, :limit, :marker, :order, :sort, :type, :authentication_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the groups specified by the query. Groups are defined by the
  underlying Active Directory.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workdocs%20DescribeGroups&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:search_query` (`t:string` required) A query to describe groups by group
    name.

  ## Keyword parameters:
  * `:limit` (`t:integer`) The maximum number of items to return with this call.
  * `:marker` (`t:string`) The marker for the next set of results. (You received
    this marker from a previous call.)
  * `:organization_id` (`t:string`) The ID of the organization.
  * `:authentication_token` (`t:string`) Amazon WorkDocs authentication token. Not
    required when using Amazon Web Services administrator credentials to access
    the API.
  """
  @spec describe_groups(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_groups_errors()}
  def describe_groups(%Client{} = client, search_query, options \\ [])
      when is_binary(search_query) do
    url_path = "/api/v1/groups"

    # Validate optional parameters
    optional_params = [limit: nil, marker: nil, organization_id: nil, authentication_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :authentication_token) do
        [{"Authentication", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = [{"searchQuery", search_query}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :organization_id) do
        [{"organizationId", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :marker) do
        [{"marker", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :limit) do
        [{"limit", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:limit, :marker, :organization_id, :authentication_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the specified notification subscriptions.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workdocs%20DescribeNotificationSubscriptions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:organization_id` (`t:string` required) The ID of the organization.

  ## Keyword parameters:
  * `:limit` (`t:integer`) The maximum number of items to return with this call.
  * `:marker` (`t:string`) The marker for the next set of results. (You received
    this marker from a previous call.)
  """
  @spec describe_notification_subscriptions(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_notification_subscriptions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_notification_subscriptions_errors()}
  def describe_notification_subscriptions(%Client{} = client, organization_id, options \\ []) do
    url_path = "/api/v1/organizations/#{AWS.Util.encode_uri(organization_id)}/subscriptions"

    # Validate optional parameters
    optional_params = [limit: nil, marker: nil]

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
      if opt_val = Keyword.get(options, :marker) do
        [{"marker", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :limit) do
        [{"limit", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:limit, :marker])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the permissions of a specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workdocs%20DescribeResourcePermissions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_id` (`t:string` required) The ID of the resource.

  ## Keyword parameters:
  * `:limit` (`t:integer`) The maximum number of items to return with this call.
  * `:marker` (`t:string`) The marker for the next set of results. (You received
    this marker from a previous call)
  * `:principal_id` (`t:string`) The ID of the principal to filter permissions by.
  * `:authentication_token` (`t:string`) Amazon WorkDocs authentication token. Not
    required when using Amazon Web Services administrator credentials to access
    the API.
  """
  @spec describe_resource_permissions(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_resource_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_resource_permissions_errors()}
  def describe_resource_permissions(%Client{} = client, resource_id, options \\ []) do
    url_path = "/api/v1/resources/#{AWS.Util.encode_uri(resource_id)}/permissions"

    # Validate optional parameters
    optional_params = [limit: nil, marker: nil, principal_id: nil, authentication_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :authentication_token) do
        [{"Authentication", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :principal_id) do
        [{"principalId", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :marker) do
        [{"marker", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :limit) do
        [{"limit", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:limit, :marker, :principal_id, :authentication_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the current user's special folders; the `RootFolder` and the
  `RecycleBin`. `RootFolder` is the root of user's files and folders and
  `RecycleBin` is the root of recycled items. This is not a valid action for
  SigV4 (administrative API) clients.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workdocs%20DescribeRootFolders&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:authentication_token` (`t:string` required) Amazon WorkDocs authentication
    token.

  ## Keyword parameters:
  * `:limit` (`t:integer`) The maximum number of items to return.
  * `:marker` (`t:string`) The marker for the next set of results. (You received
    this marker from a previous call.)
  """
  @spec describe_root_folders(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_root_folders_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_root_folders_errors()}
  def describe_root_folders(%Client{} = client, authentication_token, options \\ [])
      when is_binary(authentication_token) do
    url_path = "/api/v1/me/root"

    # Validate optional parameters
    optional_params = [limit: nil, marker: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"Authentication", authentication_token}]

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :marker) do
        [{"marker", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :limit) do
        [{"limit", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:limit, :marker])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the specified users. You can describe all users or filter the results
  (for example, by status or organization).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workdocs%20DescribeUsers&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:fields` (`t:string`) A comma-separated list of values. Specify
    "STORAGE_METADATA" to include the user storage quota and utilization
    information.
  * `:include` (`t:enum["ACTIVE_PENDING|ALL"]`) The state of the users. Specify
    "ALL" to include inactive users.
  * `:limit` (`t:integer`) The maximum number of items to return.
  * `:marker` (`t:string`) The marker for the next set of results. (You received
    this marker from a previous call.)
  * `:order` (`t:enum["ASCENDING|DESCENDING"]`) The order for the results.
  * `:organization_id` (`t:string`) The ID of the organization.
  * `:query` (`t:string`) A query to filter users by user name. Remember the
    following about the Userids and Query parameters:
  * `:sort`
    (`t:enum["FULL_NAME|STORAGE_LIMIT|STORAGE_USED|USER_NAME|USER_STATUS"]`) The
    sorting criteria.
  * `:user_ids` (`t:string`) The IDs of the users.
  * `:authentication_token` (`t:string`) Amazon WorkDocs authentication token. Not
    required when using Amazon Web Services administrator credentials to access
    the API.
  """
  @spec describe_users(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_users_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_users_errors()}
  def describe_users(%Client{} = client, options \\ []) do
    url_path = "/api/v1/users"

    # Validate optional parameters
    optional_params = [
      fields: nil,
      include: nil,
      limit: nil,
      marker: nil,
      order: nil,
      organization_id: nil,
      query: nil,
      sort: nil,
      user_ids: nil,
      authentication_token: nil
    ]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :authentication_token) do
        [{"Authentication", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :user_ids) do
        [{"userIds", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :sort) do
        [{"sort", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :query) do
        [{"query", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :organization_id) do
        [{"organizationId", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :order) do
        [{"order", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :marker) do
        [{"marker", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :limit) do
        [{"limit", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :include) do
        [{"include", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :fields) do
        [{"fields", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :fields,
        :include,
        :limit,
        :marker,
        :order,
        :organization_id,
        :query,
        :sort,
        :user_ids,
        :authentication_token
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves details of the current user for whom the authentication token was
  generated. This is not a valid action for SigV4 (administrative API) clients.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workdocs%20GetCurrentUser&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:authentication_token` (`t:string` required) Amazon WorkDocs authentication
    token.
  """
  @spec get_current_user(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_current_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_current_user_errors()}
  def get_current_user(%Client{} = client, authentication_token, options \\ [])
      when is_binary(authentication_token) do
    url_path = "/api/v1/me"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"Authentication", authentication_token}]

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves details of a document.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workdocs%20GetDocument&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:document_id` (`t:string` required) The ID of the document.

  ## Keyword parameters:
  * `:include_custom_metadata` (`t:boolean`) Set this to TRUE to include custom
    metadata in the response.
  * `:authentication_token` (`t:string`) Amazon WorkDocs authentication token. Not
    required when using Amazon Web Services administrator credentials to access
    the API.
  """
  @spec get_document(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_document_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_document_errors()}
  def get_document(%Client{} = client, document_id, options \\ []) do
    url_path = "/api/v1/documents/#{AWS.Util.encode_uri(document_id)}"

    # Validate optional parameters
    optional_params = [include_custom_metadata: nil, authentication_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :authentication_token) do
        [{"Authentication", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :include_custom_metadata) do
        [{"includeCustomMetadata", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:include_custom_metadata, :authentication_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the path information (the hierarchy from the root folder) for the
  requested document.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workdocs%20GetDocumentPath&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:document_id` (`t:string` required) The ID of the document.

  ## Keyword parameters:
  * `:fields` (`t:string`) A comma-separated list of values. Specify NAME to
    include the names of the parent folders.
  * `:limit` (`t:integer`) The maximum number of levels in the hierarchy to
    return.
  * `:marker` (`t:string`) This value is not supported.
  * `:authentication_token` (`t:string`) Amazon WorkDocs authentication token. Not
    required when using Amazon Web Services administrator credentials to access
    the API.
  """
  @spec get_document_path(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_document_path_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_document_path_errors()}
  def get_document_path(%Client{} = client, document_id, options \\ []) do
    url_path = "/api/v1/documents/#{AWS.Util.encode_uri(document_id)}/path"

    # Validate optional parameters
    optional_params = [fields: nil, limit: nil, marker: nil, authentication_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :authentication_token) do
        [{"Authentication", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :marker) do
        [{"marker", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :limit) do
        [{"limit", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :fields) do
        [{"fields", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:fields, :limit, :marker, :authentication_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves version metadata for the specified document.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workdocs%20GetDocumentVersion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:document_id` (`t:string` required) The ID of the document.
  * `:version_id` (`t:string` required) The version ID of the document.

  ## Keyword parameters:
  * `:fields` (`t:string`) A comma-separated list of values. Specify "SOURCE" to
    include a URL for the source document.
  * `:include_custom_metadata` (`t:boolean`) Set this to TRUE to include custom
    metadata in the response.
  * `:authentication_token` (`t:string`) Amazon WorkDocs authentication token. Not
    required when using Amazon Web Services administrator credentials to access
    the API.
  """
  @spec get_document_version(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_document_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_document_version_errors()}
  def get_document_version(%Client{} = client, document_id, version_id, options \\ []) do
    url_path =
      "/api/v1/documents/#{AWS.Util.encode_uri(document_id)}/versions/#{AWS.Util.encode_uri(version_id)}"

    # Validate optional parameters
    optional_params = [fields: nil, include_custom_metadata: nil, authentication_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :authentication_token) do
        [{"Authentication", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :include_custom_metadata) do
        [{"includeCustomMetadata", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :fields) do
        [{"fields", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:fields, :include_custom_metadata, :authentication_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the metadata of the specified folder.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workdocs%20GetFolder&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:folder_id` (`t:string` required) The ID of the folder.

  ## Keyword parameters:
  * `:include_custom_metadata` (`t:boolean`) Set to TRUE to include custom
    metadata in the response.
  * `:authentication_token` (`t:string`) Amazon WorkDocs authentication token. Not
    required when using Amazon Web Services administrator credentials to access
    the API.
  """
  @spec get_folder(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_folder_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_folder_errors()}
  def get_folder(%Client{} = client, folder_id, options \\ []) do
    url_path = "/api/v1/folders/#{AWS.Util.encode_uri(folder_id)}"

    # Validate optional parameters
    optional_params = [include_custom_metadata: nil, authentication_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :authentication_token) do
        [{"Authentication", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :include_custom_metadata) do
        [{"includeCustomMetadata", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:include_custom_metadata, :authentication_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the path information (the hierarchy from the root folder) for the
  specified folder.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workdocs%20GetFolderPath&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:folder_id` (`t:string` required) The ID of the folder.

  ## Keyword parameters:
  * `:fields` (`t:string`) A comma-separated list of values. Specify "NAME" to
    include the names of the parent folders.
  * `:limit` (`t:integer`) The maximum number of levels in the hierarchy to
    return.
  * `:marker` (`t:string`) This value is not supported.
  * `:authentication_token` (`t:string`) Amazon WorkDocs authentication token. Not
    required when using Amazon Web Services administrator credentials to access
    the API.
  """
  @spec get_folder_path(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_folder_path_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_folder_path_errors()}
  def get_folder_path(%Client{} = client, folder_id, options \\ []) do
    url_path = "/api/v1/folders/#{AWS.Util.encode_uri(folder_id)}/path"

    # Validate optional parameters
    optional_params = [fields: nil, limit: nil, marker: nil, authentication_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :authentication_token) do
        [{"Authentication", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :marker) do
        [{"marker", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :limit) do
        [{"limit", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :fields) do
        [{"fields", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:fields, :limit, :marker, :authentication_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a collection of resources, including folders and documents. The only
  `CollectionType` supported is `SHARED_WITH_ME`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workdocs%20GetResources&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:collection_type` (`t:enum["SHARED_WITH_ME"]`) The collection type.
  * `:limit` (`t:integer`) The maximum number of resources to return.
  * `:marker` (`t:string`) The marker for the next set of results. This marker was
    received from a previous call.
  * `:user_id` (`t:string`) The user ID for the resource collection. This is a
    required field for accessing the API operation using IAM credentials.
  * `:authentication_token` (`t:string`) The Amazon WorkDocs authentication token.
    Not required when using Amazon Web Services administrator credentials to
    access the API.
  """
  @spec get_resources(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_resources_errors()}
  def get_resources(%Client{} = client, options \\ []) do
    url_path = "/api/v1/resources"

    # Validate optional parameters
    optional_params = [
      collection_type: nil,
      limit: nil,
      marker: nil,
      user_id: nil,
      authentication_token: nil
    ]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :authentication_token) do
        [{"Authentication", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :user_id) do
        [{"userId", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :marker) do
        [{"marker", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :limit) do
        [{"limit", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :collection_type) do
        [{"collectionType", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:collection_type, :limit, :marker, :user_id, :authentication_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Creates a new document object and version object. The client specifies the
  parent folder ID and name of the document to upload. The ID is optionally
  specified when creating a new version of an existing document. This is the
  first step to upload a document. Next, upload the document to the URL returned
  from the call, and then call `UpdateDocumentVersion`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workdocs%20InitiateDocumentVersionUpload&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:authentication_token` (`t:string`) Amazon WorkDocs authentication token. Not
    required when using Amazon Web Services administrator credentials to access
    the API.
  """
  @spec initiate_document_version_upload(AWS.Client.t(), Keyword.t()) ::
          {:ok, initiate_document_version_upload_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, initiate_document_version_upload_errors()}
  def initiate_document_version_upload(%Client{} = client, options \\ []) do
    url_path = "/api/v1/documents"

    # Validate optional parameters
    optional_params = [authentication_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :authentication_token) do
        [{"Authentication", opt_val} | headers]
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
      |> Keyword.drop([:authentication_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Removes all the permissions from the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workdocs%20RemoveAllResourcePermissions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_id` (`t:string` required) The ID of the resource.

  ## Keyword parameters:
  * `:authentication_token` (`t:string`) Amazon WorkDocs authentication token. Not
    required when using Amazon Web Services administrator credentials to access
    the API.
  """
  @spec remove_all_resource_permissions(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, remove_all_resource_permissions_errors()}
  def remove_all_resource_permissions(%Client{} = client, resource_id, options \\ []) do
    url_path = "/api/v1/resources/#{AWS.Util.encode_uri(resource_id)}/permissions"

    # Validate optional parameters
    optional_params = [authentication_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :authentication_token) do
        [{"Authentication", opt_val} | headers]
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
      |> Keyword.drop([:authentication_token])

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
  Removes the permission for the specified principal from the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workdocs%20RemoveResourcePermission&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:principal_id` (`t:string` required) The principal ID of the resource.
  * `:resource_id` (`t:string` required) The ID of the resource.

  ## Keyword parameters:
  * `:principal_type` (`t:enum["ANONYMOUS|GROUP|INVITE|ORGANIZATION|USER"]`) The
    principal type of the resource.
  * `:authentication_token` (`t:string`) Amazon WorkDocs authentication token. Not
    required when using Amazon Web Services administrator credentials to access
    the API.
  """
  @spec remove_resource_permission(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, remove_resource_permission_errors()}
  def remove_resource_permission(%Client{} = client, principal_id, resource_id, options \\ []) do
    url_path =
      "/api/v1/resources/#{AWS.Util.encode_uri(resource_id)}/permissions/#{AWS.Util.encode_uri(principal_id)}"

    # Validate optional parameters
    optional_params = [principal_type: nil, authentication_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :authentication_token) do
        [{"Authentication", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :principal_type) do
        [{"type", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:principal_type, :authentication_token])

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
  Recovers a deleted version of an Amazon WorkDocs document.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workdocs%20RestoreDocumentVersions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:document_id` (`t:string` required) The ID of the document.

  ## Keyword parameters:
  * `:authentication_token` (`t:string`) Amazon WorkDocs authentication token. Not
    required when using Amazon Web Services administrator credentials to access
    the API.
  """
  @spec restore_document_versions(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, restore_document_versions_errors()}
  def restore_document_versions(%Client{} = client, document_id, options \\ []) do
    url_path = "/api/v1/documentVersions/restore/#{AWS.Util.encode_uri(document_id)}"

    # Validate optional parameters
    optional_params = [authentication_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :authentication_token) do
        [{"Authentication", opt_val} | headers]
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
      |> Keyword.drop([:authentication_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 204)
  end

  @doc """
  Searches metadata and the content of folders, documents, document versions, and
  comments.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workdocs%20SearchResources&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:authentication_token` (`t:string`) Amazon WorkDocs authentication token. Not
    required when using Amazon Web Services administrator credentials to access
    the API.
  """
  @spec search_resources(AWS.Client.t(), Keyword.t()) ::
          {:ok, search_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_resources_errors()}
  def search_resources(%Client{} = client, options \\ []) do
    url_path = "/api/v1/search"

    # Validate optional parameters
    optional_params = [authentication_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :authentication_token) do
        [{"Authentication", opt_val} | headers]
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
      |> Keyword.drop([:authentication_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates the specified attributes of a document. The user must have access to
  both the document and its parent folder, if applicable.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workdocs%20UpdateDocument&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:document_id` (`t:string` required) The ID of the document.

  ## Keyword parameters:
  * `:authentication_token` (`t:string`) Amazon WorkDocs authentication token. Not
    required when using Amazon Web Services administrator credentials to access
    the API.
  """
  @spec update_document(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_document_errors()}
  def update_document(%Client{} = client, document_id, options \\ []) do
    url_path = "/api/v1/documents/#{AWS.Util.encode_uri(document_id)}"

    # Validate optional parameters
    optional_params = [authentication_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :authentication_token) do
        [{"Authentication", opt_val} | headers]
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
      |> Keyword.drop([:authentication_token])

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
  Changes the status of the document version to ACTIVE.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workdocs%20UpdateDocumentVersion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:document_id` (`t:string` required) The ID of the document.
  * `:version_id` (`t:string` required) The version ID of the document.

  ## Keyword parameters:
  * `:authentication_token` (`t:string`) Amazon WorkDocs authentication token. Not
    required when using Amazon Web Services administrator credentials to access
    the API.
  """
  @spec update_document_version(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_document_version_errors()}
  def update_document_version(%Client{} = client, document_id, version_id, options \\ []) do
    url_path =
      "/api/v1/documents/#{AWS.Util.encode_uri(document_id)}/versions/#{AWS.Util.encode_uri(version_id)}"

    # Validate optional parameters
    optional_params = [authentication_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :authentication_token) do
        [{"Authentication", opt_val} | headers]
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
      |> Keyword.drop([:authentication_token])

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
  Updates the specified attributes of the specified folder. The user must have
  access to both the folder and its parent folder, if applicable.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workdocs%20UpdateFolder&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:folder_id` (`t:string` required) The ID of the folder.

  ## Keyword parameters:
  * `:authentication_token` (`t:string`) Amazon WorkDocs authentication token. Not
    required when using Amazon Web Services administrator credentials to access
    the API.
  """
  @spec update_folder(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_folder_errors()}
  def update_folder(%Client{} = client, folder_id, options \\ []) do
    url_path = "/api/v1/folders/#{AWS.Util.encode_uri(folder_id)}"

    # Validate optional parameters
    optional_params = [authentication_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :authentication_token) do
        [{"Authentication", opt_val} | headers]
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
      |> Keyword.drop([:authentication_token])

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
  Updates the specified attributes of the specified user, and grants or revokes
  administrative privileges to the Amazon WorkDocs site.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workdocs%20UpdateUser&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:user_id` (`t:string` required) The ID of the user.

  ## Keyword parameters:
  * `:authentication_token` (`t:string`) Amazon WorkDocs authentication token. Not
    required when using Amazon Web Services administrator credentials to access
    the API.
  """
  @spec update_user(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_user_errors()}
  def update_user(%Client{} = client, user_id, options \\ []) do
    url_path = "/api/v1/users/#{AWS.Util.encode_uri(user_id)}"

    # Validate optional parameters
    optional_params = [authentication_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :authentication_token) do
        [{"Authentication", opt_val} | headers]
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
      |> Keyword.drop([:authentication_token])

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
