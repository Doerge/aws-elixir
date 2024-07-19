# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DataExchange do
  @moduledoc """
  AWS Data Exchange is a service that makes it easy for AWS customers to exchange
  data in the cloud. You can use the AWS Data Exchange APIs to create, update,
  manage, and access file-based data set in the AWS Cloud. As a subscriber, you
  can view and access the data sets that you have an entitlement to through a
  subscription. You can use the APIs to download or copy your entitled data sets
  to Amazon Simple Storage Service (Amazon S3) for use across a variety of AWS
  analytics and machine learning services.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      redshift_data_share_details() :: %{
        "Arn" => String.t(),
        "Database" => String.t(),
        "Function" => String.t(),
        "Schema" => String.t(),
        "Table" => String.t(),
        "View" => String.t()
      }
      
  """
  @type redshift_data_share_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_asset_from_api_gateway_api_response_details() :: %{
        "ApiDescription" => String.t(),
        "ApiId" => String.t(),
        "ApiKey" => String.t(),
        "ApiName" => String.t(),
        "ApiSpecificationMd5Hash" => String.t(),
        "ApiSpecificationUploadUrl" => String.t(),
        "ApiSpecificationUploadUrlExpiresAt" => non_neg_integer(),
        "DataSetId" => String.t(),
        "ProtocolType" => String.t(),
        "RevisionId" => String.t(),
        "Stage" => String.t()
      }
      
  """
  @type import_asset_from_api_gateway_api_response_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_job_request() :: %{}
      
  """
  @type cancel_job_request() :: %{}

  @typedoc """

  ## Example:
      
      event_action_entry() :: %{
        "Action" => action(),
        "Arn" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "Event" => event(),
        "Id" => String.t(),
        "UpdatedAt" => non_neg_integer()
      }
      
  """
  @type event_action_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scope_details() :: %{
        "LakeFormationTagPolicies" => list(lake_formation_tag_policy_details()()),
        "RedshiftDataShares" => list(redshift_data_share_details()()),
        "S3DataAccesses" => list(s3_data_access_details()())
      }
      
  """
  @type scope_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_data_set_response() :: %{
        optional("Arn") => String.t(),
        optional("AssetType") => String.t(),
        optional("CreatedAt") => non_neg_integer(),
        optional("Description") => String.t(),
        optional("Id") => String.t(),
        optional("Name") => String.t(),
        optional("Origin") => String.t(),
        optional("OriginDetails") => origin_details(),
        optional("SourceId") => String.t(),
        optional("Tags") => map(),
        optional("UpdatedAt") => non_neg_integer()
      }
      
  """
  @type get_data_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("Tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_revision_response() :: %{
        optional("Arn") => String.t(),
        optional("Comment") => String.t(),
        optional("CreatedAt") => non_neg_integer(),
        optional("DataSetId") => String.t(),
        optional("Finalized") => boolean(),
        optional("Id") => String.t(),
        optional("RevocationComment") => String.t(),
        optional("Revoked") => boolean(),
        optional("RevokedAt") => non_neg_integer(),
        optional("SourceId") => String.t(),
        optional("UpdatedAt") => non_neg_integer()
      }
      
  """
  @type update_revision_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_revision_response() :: %{
        optional("Arn") => String.t(),
        optional("Comment") => String.t(),
        optional("CreatedAt") => non_neg_integer(),
        optional("DataSetId") => String.t(),
        optional("Finalized") => boolean(),
        optional("Id") => String.t(),
        optional("RevocationComment") => String.t(),
        optional("Revoked") => boolean(),
        optional("RevokedAt") => non_neg_integer(),
        optional("SourceId") => String.t(),
        optional("Tags") => map(),
        optional("UpdatedAt") => non_neg_integer()
      }
      
  """
  @type get_revision_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_data_sets_response() :: %{
        optional("DataSets") => list(data_set_entry()()),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_data_sets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_revisions_to_s3_response_details() :: %{
        "DataSetId" => String.t(),
        "Encryption" => export_server_side_encryption(),
        "EventActionArn" => String.t(),
        "RevisionDestinations" => list(revision_destination_entry()())
      }
      
  """
  @type export_revisions_to_s3_response_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_job_response() :: %{
        optional("Arn") => String.t(),
        optional("CreatedAt") => non_neg_integer(),
        optional("Details") => response_details(),
        optional("Errors") => list(job_error()()),
        optional("Id") => String.t(),
        optional("State") => String.t(),
        optional("Type") => String.t(),
        optional("UpdatedAt") => non_neg_integer()
      }
      
  """
  @type create_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      l_f_tag() :: %{
        "TagKey" => [String.t()],
        "TagValues" => list([String.t()]())
      }
      
  """
  @type l_f_tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      redshift_data_share_asset_source_entry() :: %{
        "DataShareArn" => String.t()
      }
      
  """
  @type redshift_data_share_asset_source_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_event_action_request() :: %{
        required("Action") => action(),
        required("Event") => event()
      }
      
  """
  @type create_event_action_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_data_set_notification_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Comment") => String.t(),
        optional("Details") => notification_details(),
        optional("Scope") => scope_details(),
        required("Type") => String.t()
      }
      
  """
  @type send_data_set_notification_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_revision_request() :: %{}
      
  """
  @type get_revision_request() :: %{}

  @typedoc """

  ## Example:
      
      import_asset_from_signed_url_job_error_details() :: %{
        "AssetName" => String.t()
      }
      
  """
  @type import_asset_from_signed_url_job_error_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_jobs_request() :: %{
        optional("DataSetId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("RevisionId") => String.t()
      }
      
  """
  @type list_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_job_response() :: %{}
      
  """
  @type start_job_response() :: %{}

  @typedoc """

  ## Example:
      
      redshift_data_share_asset() :: %{
        "Arn" => String.t()
      }
      
  """
  @type redshift_data_share_asset() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_data_sets_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Origin") => String.t()
      }
      
  """
  @type list_data_sets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notification_details() :: %{
        "DataUpdate" => data_update_request_details(),
        "Deprecation" => deprecation_request_details(),
        "SchemaChange" => schema_change_request_details()
      }
      
  """
  @type notification_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_set_entry() :: %{
        "Arn" => String.t(),
        "AssetType" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "Id" => String.t(),
        "Name" => String.t(),
        "Origin" => String.t(),
        "OriginDetails" => origin_details(),
        "SourceId" => String.t(),
        "UpdatedAt" => non_neg_integer()
      }
      
  """
  @type data_set_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_jobs_response() :: %{
        optional("Jobs") => list(job_entry()()),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_job_request() :: %{
        required("Details") => request_details(),
        required("Type") => String.t()
      }
      
  """
  @type create_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      database_l_f_tag_policy_and_permissions() :: %{
        "Expression" => list(l_f_tag()()),
        "Permissions" => list(String.t()())
      }
      
  """
  @type database_l_f_tag_policy_and_permissions() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_asset_from_api_gateway_api_request_details() :: %{
        "ApiDescription" => String.t(),
        "ApiId" => String.t(),
        "ApiKey" => String.t(),
        "ApiName" => String.t(),
        "ApiSpecificationMd5Hash" => String.t(),
        "DataSetId" => String.t(),
        "ProtocolType" => String.t(),
        "RevisionId" => String.t(),
        "Stage" => String.t()
      }
      
  """
  @type import_asset_from_api_gateway_api_request_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kms_key_to_grant() :: %{
        "KmsKeyArn" => String.t()
      }
      
  """
  @type kms_key_to_grant() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_api_asset_response() :: %{
        optional("Body") => String.t(),
        optional("ResponseHeaders") => map()
      }
      
  """
  @type send_api_asset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_server_side_encryption() :: %{
        "KmsKeyArn" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type export_server_side_encryption() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lake_formation_tag_policy_details() :: %{
        "Database" => String.t(),
        "Table" => String.t()
      }
      
  """
  @type lake_formation_tag_policy_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_data_set_response() :: %{
        optional("Arn") => String.t(),
        optional("AssetType") => String.t(),
        optional("CreatedAt") => non_neg_integer(),
        optional("Description") => String.t(),
        optional("Id") => String.t(),
        optional("Name") => String.t(),
        optional("Origin") => String.t(),
        optional("OriginDetails") => origin_details(),
        optional("SourceId") => String.t(),
        optional("UpdatedAt") => non_neg_integer()
      }
      
  """
  @type update_data_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      revision_entry() :: %{
        "Arn" => String.t(),
        "Comment" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "DataSetId" => String.t(),
        "Finalized" => boolean(),
        "Id" => String.t(),
        "RevocationComment" => String.t(),
        "Revoked" => boolean(),
        "RevokedAt" => non_neg_integer(),
        "SourceId" => String.t(),
        "UpdatedAt" => non_neg_integer()
      }
      
  """
  @type revision_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_asset_response() :: %{
        optional("Arn") => String.t(),
        optional("AssetDetails") => asset_details(),
        optional("AssetType") => String.t(),
        optional("CreatedAt") => non_neg_integer(),
        optional("DataSetId") => String.t(),
        optional("Id") => String.t(),
        optional("Name") => String.t(),
        optional("RevisionId") => String.t(),
        optional("SourceId") => String.t(),
        optional("UpdatedAt") => non_neg_integer()
      }
      
  """
  @type update_asset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      schema_change_details() :: %{
        "Description" => String.t(),
        "Name" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type schema_change_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_data_set_revisions_response() :: %{
        optional("NextToken") => String.t(),
        optional("Revisions") => list(revision_entry()())
      }
      
  """
  @type list_data_set_revisions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_asset_to_signed_url_response_details() :: %{
        "AssetId" => String.t(),
        "DataSetId" => String.t(),
        "RevisionId" => String.t(),
        "SignedUrl" => String.t(),
        "SignedUrlExpiresAt" => non_neg_integer()
      }
      
  """
  @type export_asset_to_signed_url_response_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_asset_to_signed_url_request_details() :: %{
        "AssetId" => String.t(),
        "DataSetId" => String.t(),
        "RevisionId" => String.t()
      }
      
  """
  @type export_asset_to_signed_url_request_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_revision_assets_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_revision_assets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Message" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_assets_from_lake_formation_tag_policy_response_details() :: %{
        "CatalogId" => String.t(),
        "DataSetId" => String.t(),
        "Database" => database_l_f_tag_policy_and_permissions(),
        "RevisionId" => String.t(),
        "RoleArn" => String.t(),
        "Table" => table_l_f_tag_policy_and_permissions()
      }
      
  """
  @type import_assets_from_lake_formation_tag_policy_response_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      table_l_f_tag_policy_and_permissions() :: %{
        "Expression" => list(l_f_tag()()),
        "Permissions" => list(String.t()())
      }
      
  """
  @type table_l_f_tag_policy_and_permissions() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_assets_to_s3_request_details() :: %{
        "AssetDestinations" => list(asset_destination_entry()()),
        "DataSetId" => String.t(),
        "Encryption" => export_server_side_encryption(),
        "RevisionId" => String.t()
      }
      
  """
  @type export_assets_to_s3_request_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_data_set_request() :: %{
        optional("Tags") => map(),
        required("AssetType") => String.t(),
        required("Description") => String.t(),
        required("Name") => String.t()
      }
      
  """
  @type create_data_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_assets_to_s3_response_details() :: %{
        "AssetDestinations" => list(asset_destination_entry()()),
        "DataSetId" => String.t(),
        "Encryption" => export_server_side_encryption(),
        "RevisionId" => String.t()
      }
      
  """
  @type export_assets_to_s3_response_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_revision_assets_response() :: %{
        optional("Assets") => list(asset_entry()()),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_revision_assets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      details() :: %{
        "ImportAssetFromSignedUrlJobErrorDetails" => import_asset_from_signed_url_job_error_details(),
        "ImportAssetsFromS3JobErrorDetails" => list(asset_source_entry()())
      }
      
  """
  @type details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_event_action_response() :: %{
        optional("Action") => action(),
        optional("Arn") => String.t(),
        optional("CreatedAt") => non_neg_integer(),
        optional("Event") => event(),
        optional("Id") => String.t(),
        optional("UpdatedAt") => non_neg_integer()
      }
      
  """
  @type get_event_action_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_event_action_request() :: %{}
      
  """
  @type get_event_action_request() :: %{}

  @typedoc """

  ## Example:
      
      create_s3_data_access_from_s3_bucket_request_details() :: %{
        "AssetSource" => s3_data_access_asset_source_entry(),
        "DataSetId" => String.t(),
        "RevisionId" => String.t()
      }
      
  """
  @type create_s3_data_access_from_s3_bucket_request_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_event_action_request() :: %{}
      
  """
  @type delete_event_action_request() :: %{}

  @typedoc """

  ## Example:
      
      schema_change_request_details() :: %{
        "Changes" => list(schema_change_details()()),
        "SchemaChangeAt" => non_neg_integer()
      }
      
  """
  @type schema_change_request_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_data_set_response() :: %{
        optional("Arn") => String.t(),
        optional("AssetType") => String.t(),
        optional("CreatedAt") => non_neg_integer(),
        optional("Description") => String.t(),
        optional("Id") => String.t(),
        optional("Name") => String.t(),
        optional("Origin") => String.t(),
        optional("OriginDetails") => origin_details(),
        optional("SourceId") => String.t(),
        optional("Tags") => map(),
        optional("UpdatedAt") => non_neg_integer()
      }
      
  """
  @type create_data_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      database_l_f_tag_policy() :: %{
        "Expression" => list(l_f_tag()())
      }
      
  """
  @type database_l_f_tag_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_data_access_asset() :: %{
        "Bucket" => String.t(),
        "KeyPrefixes" => list(String.t()()),
        "Keys" => list(String.t()()),
        "KmsKeysToGrant" => list(kms_key_to_grant()()),
        "S3AccessPointAlias" => String.t(),
        "S3AccessPointArn" => String.t()
      }
      
  """
  @type s3_data_access_asset() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        optional("Tags") => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      revoke_revision_request() :: %{
        required("RevocationComment") => String.t()
      }
      
  """
  @type revoke_revision_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      table_l_f_tag_policy() :: %{
        "Expression" => list(l_f_tag()())
      }
      
  """
  @type table_l_f_tag_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_event_action_request() :: %{
        optional("Action") => action()
      }
      
  """
  @type update_event_action_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_revision_request() :: %{}
      
  """
  @type delete_revision_request() :: %{}

  @typedoc """

  ## Example:
      
      lake_formation_data_permission_details() :: %{
        "LFTagPolicy" => l_f_tag_policy_details()
      }
      
  """
  @type lake_formation_data_permission_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_asset_response() :: %{
        optional("Arn") => String.t(),
        optional("AssetDetails") => asset_details(),
        optional("AssetType") => String.t(),
        optional("CreatedAt") => non_neg_integer(),
        optional("DataSetId") => String.t(),
        optional("Id") => String.t(),
        optional("Name") => String.t(),
        optional("RevisionId") => String.t(),
        optional("SourceId") => String.t(),
        optional("UpdatedAt") => non_neg_integer()
      }
      
  """
  @type get_asset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_job_request() :: %{}
      
  """
  @type start_job_request() :: %{}

  @typedoc """

  ## Example:
      
      update_event_action_response() :: %{
        optional("Action") => action(),
        optional("Arn") => String.t(),
        optional("CreatedAt") => non_neg_integer(),
        optional("Event") => event(),
        optional("Id") => String.t(),
        optional("UpdatedAt") => non_neg_integer()
      }
      
  """
  @type update_event_action_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_data_access_asset_source_entry() :: %{
        "Bucket" => String.t(),
        "KeyPrefixes" => list(String.t()()),
        "Keys" => list(String.t()()),
        "KmsKeysToGrant" => list(kms_key_to_grant()())
      }
      
  """
  @type s3_data_access_asset_source_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_s3_data_access_from_s3_bucket_response_details() :: %{
        "AssetSource" => s3_data_access_asset_source_entry(),
        "DataSetId" => String.t(),
        "RevisionId" => String.t()
      }
      
  """
  @type create_s3_data_access_from_s3_bucket_response_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_update_request_details() :: %{
        "DataUpdatedAt" => non_neg_integer()
      }
      
  """
  @type data_update_request_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      api_gateway_api_asset() :: %{
        "ApiDescription" => String.t(),
        "ApiEndpoint" => String.t(),
        "ApiId" => String.t(),
        "ApiKey" => String.t(),
        "ApiName" => String.t(),
        "ApiSpecificationDownloadUrl" => String.t(),
        "ApiSpecificationDownloadUrlExpiresAt" => non_neg_integer(),
        "ProtocolType" => String.t(),
        "Stage" => String.t()
      }
      
  """
  @type api_gateway_api_asset() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      origin_details() :: %{
        "ProductId" => String.t()
      }
      
  """
  @type origin_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_data_set_notification_response() :: %{}
      
  """
  @type send_data_set_notification_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_data_set_request() :: %{}
      
  """
  @type delete_data_set_request() :: %{}

  @typedoc """

  ## Example:
      
      l_f_resource_details() :: %{
        "Database" => database_l_f_tag_policy(),
        "Table" => table_l_f_tag_policy()
      }
      
  """
  @type l_f_resource_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_revision_response() :: %{
        optional("Arn") => String.t(),
        optional("Comment") => String.t(),
        optional("CreatedAt") => non_neg_integer(),
        optional("DataSetId") => String.t(),
        optional("Finalized") => boolean(),
        optional("Id") => String.t(),
        optional("RevocationComment") => String.t(),
        optional("Revoked") => boolean(),
        optional("RevokedAt") => non_neg_integer(),
        optional("SourceId") => String.t(),
        optional("Tags") => map(),
        optional("UpdatedAt") => non_neg_integer()
      }
      
  """
  @type create_revision_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      asset_entry() :: %{
        "Arn" => String.t(),
        "AssetDetails" => asset_details(),
        "AssetType" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "DataSetId" => String.t(),
        "Id" => String.t(),
        "Name" => String.t(),
        "RevisionId" => String.t(),
        "SourceId" => String.t(),
        "UpdatedAt" => non_neg_integer()
      }
      
  """
  @type asset_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_data_access_details() :: %{
        "KeyPrefixes" => list(String.t()()),
        "Keys" => list(String.t()())
      }
      
  """
  @type s3_data_access_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      asset_details() :: %{
        "ApiGatewayApiAsset" => api_gateway_api_asset(),
        "LakeFormationDataPermissionAsset" => lake_formation_data_permission_asset(),
        "RedshiftDataShareAsset" => redshift_data_share_asset(),
        "S3DataAccessAsset" => s3_data_access_asset(),
        "S3SnapshotAsset" => s3_snapshot_asset()
      }
      
  """
  @type asset_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event() :: %{
        "RevisionPublished" => revision_published()
      }
      
  """
  @type event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      action() :: %{
        "ExportRevisionToS3" => auto_export_revision_to_s3_request_details()
      }
      
  """
  @type action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_assets_from_s3_response_details() :: %{
        "AssetSources" => list(asset_source_entry()()),
        "DataSetId" => String.t(),
        "RevisionId" => String.t()
      }
      
  """
  @type import_assets_from_s3_response_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_asset_request() :: %{}
      
  """
  @type delete_asset_request() :: %{}

  @typedoc """

  ## Example:
      
      import_assets_from_redshift_data_shares_request_details() :: %{
        "AssetSources" => list(redshift_data_share_asset_source_entry()()),
        "DataSetId" => String.t(),
        "RevisionId" => String.t()
      }
      
  """
  @type import_assets_from_redshift_data_shares_request_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      revision_published() :: %{
        "DataSetId" => String.t()
      }
      
  """
  @type revision_published() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_asset_request() :: %{
        required("Name") => String.t()
      }
      
  """
  @type update_asset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_assets_from_redshift_data_shares_response_details() :: %{
        "AssetSources" => list(redshift_data_share_asset_source_entry()()),
        "DataSetId" => String.t(),
        "RevisionId" => String.t()
      }
      
  """
  @type import_assets_from_redshift_data_shares_response_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_export_revision_destination_entry() :: %{
        "Bucket" => String.t(),
        "KeyPattern" => String.t()
      }
      
  """
  @type auto_export_revision_destination_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      asset_source_entry() :: %{
        "Bucket" => String.t(),
        "Key" => String.t()
      }
      
  """
  @type asset_source_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_job_response() :: %{
        optional("Arn") => String.t(),
        optional("CreatedAt") => non_neg_integer(),
        optional("Details") => response_details(),
        optional("Errors") => list(job_error()()),
        optional("Id") => String.t(),
        optional("State") => String.t(),
        optional("Type") => String.t(),
        optional("UpdatedAt") => non_neg_integer()
      }
      
  """
  @type get_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "ExceptionCause" => String.t(),
        "Message" => String.t()
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
      
      auto_export_revision_to_s3_request_details() :: %{
        "Encryption" => export_server_side_encryption(),
        "RevisionDestination" => auto_export_revision_destination_entry()
      }
      
  """
  @type auto_export_revision_to_s3_request_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      l_f_tag_policy_details() :: %{
        "CatalogId" => String.t(),
        "ResourceDetails" => l_f_resource_details(),
        "ResourceType" => String.t()
      }
      
  """
  @type l_f_tag_policy_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deprecation_request_details() :: %{
        "DeprecationAt" => non_neg_integer()
      }
      
  """
  @type deprecation_request_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_limit_exceeded_exception() :: %{
        "LimitName" => String.t(),
        "LimitValue" => float(),
        "Message" => String.t()
      }
      
  """
  @type service_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_asset_request() :: %{}
      
  """
  @type get_asset_request() :: %{}

  @typedoc """

  ## Example:
      
      get_job_request() :: %{}
      
  """
  @type get_job_request() :: %{}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_api_asset_request() :: %{
        optional("Body") => String.t(),
        optional("Method") => String.t(),
        optional("Path") => String.t(),
        optional("QueryStringParameters") => map(),
        optional("RequestHeaders") => map(),
        required("AssetId") => String.t(),
        required("DataSetId") => String.t(),
        required("RevisionId") => String.t()
      }
      
  """
  @type send_api_asset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_data_set_request() :: %{}
      
  """
  @type get_data_set_request() :: %{}

  @typedoc """

  ## Example:
      
      create_revision_request() :: %{
        optional("Comment") => String.t(),
        optional("Tags") => map()
      }
      
  """
  @type create_revision_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_assets_from_s3_request_details() :: %{
        "AssetSources" => list(asset_source_entry()()),
        "DataSetId" => String.t(),
        "RevisionId" => String.t()
      }
      
  """
  @type import_assets_from_s3_request_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lake_formation_data_permission_asset() :: %{
        "LakeFormationDataPermissionDetails" => lake_formation_data_permission_details(),
        "LakeFormationDataPermissionType" => String.t(),
        "Permissions" => list(String.t()()),
        "RoleArn" => String.t()
      }
      
  """
  @type lake_formation_data_permission_asset() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_event_actions_request() :: %{
        optional("EventSourceId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_event_actions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_data_set_revisions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_data_set_revisions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      asset_destination_entry() :: %{
        "AssetId" => String.t(),
        "Bucket" => String.t(),
        "Key" => String.t()
      }
      
  """
  @type asset_destination_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_event_actions_response() :: %{
        optional("EventActions") => list(event_action_entry()()),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_event_actions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      request_details() :: %{
        "CreateS3DataAccessFromS3Bucket" => create_s3_data_access_from_s3_bucket_request_details(),
        "ExportAssetToSignedUrl" => export_asset_to_signed_url_request_details(),
        "ExportAssetsToS3" => export_assets_to_s3_request_details(),
        "ExportRevisionsToS3" => export_revisions_to_s3_request_details(),
        "ImportAssetFromApiGatewayApi" => import_asset_from_api_gateway_api_request_details(),
        "ImportAssetFromSignedUrl" => import_asset_from_signed_url_request_details(),
        "ImportAssetsFromLakeFormationTagPolicy" => import_assets_from_lake_formation_tag_policy_request_details(),
        "ImportAssetsFromRedshiftDataShares" => import_assets_from_redshift_data_shares_request_details(),
        "ImportAssetsFromS3" => import_assets_from_s3_request_details()
      }
      
  """
  @type request_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      job_entry() :: %{
        "Arn" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "Details" => response_details(),
        "Errors" => list(job_error()()),
        "Id" => String.t(),
        "State" => String.t(),
        "Type" => String.t(),
        "UpdatedAt" => non_neg_integer()
      }
      
  """
  @type job_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_asset_from_signed_url_request_details() :: %{
        "AssetName" => String.t(),
        "DataSetId" => String.t(),
        "Md5Hash" => String.t(),
        "RevisionId" => String.t()
      }
      
  """
  @type import_asset_from_signed_url_request_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_asset_from_signed_url_response_details() :: %{
        "AssetName" => String.t(),
        "DataSetId" => String.t(),
        "Md5Hash" => String.t(),
        "RevisionId" => String.t(),
        "SignedUrl" => String.t(),
        "SignedUrlExpiresAt" => non_neg_integer()
      }
      
  """
  @type import_asset_from_signed_url_response_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      response_details() :: %{
        "CreateS3DataAccessFromS3Bucket" => create_s3_data_access_from_s3_bucket_response_details(),
        "ExportAssetToSignedUrl" => export_asset_to_signed_url_response_details(),
        "ExportAssetsToS3" => export_assets_to_s3_response_details(),
        "ExportRevisionsToS3" => export_revisions_to_s3_response_details(),
        "ImportAssetFromApiGatewayApi" => import_asset_from_api_gateway_api_response_details(),
        "ImportAssetFromSignedUrl" => import_asset_from_signed_url_response_details(),
        "ImportAssetsFromLakeFormationTagPolicy" => import_assets_from_lake_formation_tag_policy_response_details(),
        "ImportAssetsFromRedshiftDataShares" => import_assets_from_redshift_data_shares_response_details(),
        "ImportAssetsFromS3" => import_assets_from_s3_response_details()
      }
      
  """
  @type response_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_assets_from_lake_formation_tag_policy_request_details() :: %{
        "CatalogId" => String.t(),
        "DataSetId" => String.t(),
        "Database" => database_l_f_tag_policy_and_permissions(),
        "RevisionId" => String.t(),
        "RoleArn" => String.t(),
        "Table" => table_l_f_tag_policy_and_permissions()
      }
      
  """
  @type import_assets_from_lake_formation_tag_policy_request_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_revision_request() :: %{
        optional("Comment") => String.t(),
        optional("Finalized") => boolean()
      }
      
  """
  @type update_revision_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_snapshot_asset() :: %{
        "Size" => float()
      }
      
  """
  @type s3_snapshot_asset() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_revisions_to_s3_request_details() :: %{
        "DataSetId" => String.t(),
        "Encryption" => export_server_side_encryption(),
        "RevisionDestinations" => list(revision_destination_entry()())
      }
      
  """
  @type export_revisions_to_s3_request_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      revoke_revision_response() :: %{
        optional("Arn") => String.t(),
        optional("Comment") => String.t(),
        optional("CreatedAt") => non_neg_integer(),
        optional("DataSetId") => String.t(),
        optional("Finalized") => boolean(),
        optional("Id") => String.t(),
        optional("RevocationComment") => String.t(),
        optional("Revoked") => boolean(),
        optional("RevokedAt") => non_neg_integer(),
        optional("SourceId") => String.t(),
        optional("UpdatedAt") => non_neg_integer()
      }
      
  """
  @type revoke_revision_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      job_error() :: %{
        "Code" => String.t(),
        "Details" => details(),
        "LimitName" => String.t(),
        "LimitValue" => float(),
        "Message" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => String.t()
      }
      
  """
  @type job_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_data_set_request() :: %{
        optional("Description") => String.t(),
        optional("Name") => String.t()
      }
      
  """
  @type update_data_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      revision_destination_entry() :: %{
        "Bucket" => String.t(),
        "KeyPattern" => String.t(),
        "RevisionId" => String.t()
      }
      
  """
  @type revision_destination_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_event_action_response() :: %{
        optional("Action") => action(),
        optional("Arn") => String.t(),
        optional("CreatedAt") => non_neg_integer(),
        optional("Event") => event(),
        optional("Id") => String.t(),
        optional("UpdatedAt") => non_neg_integer()
      }
      
  """
  @type create_event_action_response() :: %{String.t() => any()}

  @type cancel_job_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_data_set_errors() ::
          throttling_exception()
          | service_limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type create_event_action_errors() ::
          throttling_exception()
          | service_limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type create_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_revision_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_asset_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_data_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_event_action_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_revision_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_asset_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_data_set_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_event_action_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_job_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_revision_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_data_set_revisions_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_data_sets_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_event_actions_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_jobs_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_revision_assets_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type revoke_revision_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type send_api_asset_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type send_data_set_notification_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_asset_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_data_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_event_action_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_revision_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2017-07-25",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "dataexchange",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "DataExchange",
      signature_version: "v4",
      signing_name: "dataexchange",
      target_prefix: nil
    }
  end

  @doc """
  This operation cancels a job. Jobs can be cancelled only when they are in the
  WAITING state.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dataexchange%20CancelJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:job_id` (`t:string`) The unique identifier for a job.

  ## Optional parameters:
  """

  @spec cancel_job(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_job_errors()}

  def cancel_job(%Client{} = client, job_id, options \\ []) do
    url_path = "/v1/jobs/#{AWS.Util.encode_uri(job_id)}"

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
  This operation creates a data set.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dataexchange%20CreateDataSet&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_data_set(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_data_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_data_set_errors()}

  def create_data_set(%Client{} = client, options \\ []) do
    url_path = "/v1/data-sets"

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
  This operation creates an event action.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dataexchange%20CreateEventAction&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_event_action(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_event_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_event_action_errors()}

  def create_event_action(%Client{} = client, options \\ []) do
    url_path = "/v1/event-actions"

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
  This operation creates a job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dataexchange%20CreateJob&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_job(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_job_errors()}

  def create_job(%Client{} = client, options \\ []) do
    url_path = "/v1/jobs"

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
  This operation creates a revision for a data set.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dataexchange%20CreateRevision&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:data_set_id` (`t:string`) The unique identifier for a data set.

  ## Optional parameters:
  """

  @spec create_revision(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_revision_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_revision_errors()}

  def create_revision(%Client{} = client, data_set_id, options \\ []) do
    url_path = "/v1/data-sets/#{AWS.Util.encode_uri(data_set_id)}/revisions"

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
  This operation deletes an asset.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dataexchange%20DeleteAsset&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:asset_id` (`t:string`) The unique identifier for an asset.
  * `:data_set_id` (`t:string`) The unique identifier for a data set.
  * `:revision_id` (`t:string`) The unique identifier for a revision.

  ## Optional parameters:
  """

  @spec delete_asset(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_asset_errors()}

  def delete_asset(%Client{} = client, asset_id, data_set_id, revision_id, options \\ []) do
    url_path =
      "/v1/data-sets/#{AWS.Util.encode_uri(data_set_id)}/revisions/#{AWS.Util.encode_uri(revision_id)}/assets/#{AWS.Util.encode_uri(asset_id)}"

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
  This operation deletes a data set.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dataexchange%20DeleteDataSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:data_set_id` (`t:string`) The unique identifier for a data set.

  ## Optional parameters:
  """

  @spec delete_data_set(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_data_set_errors()}

  def delete_data_set(%Client{} = client, data_set_id, options \\ []) do
    url_path = "/v1/data-sets/#{AWS.Util.encode_uri(data_set_id)}"

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
  This operation deletes the event action.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dataexchange%20DeleteEventAction&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:event_action_id` (`t:string`) The unique identifier for the event action.

  ## Optional parameters:
  """

  @spec delete_event_action(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_event_action_errors()}

  def delete_event_action(%Client{} = client, event_action_id, options \\ []) do
    url_path = "/v1/event-actions/#{AWS.Util.encode_uri(event_action_id)}"

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
  This operation deletes a revision.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dataexchange%20DeleteRevision&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:data_set_id` (`t:string`) The unique identifier for a data set.
  * `:revision_id` (`t:string`) The unique identifier for a revision.

  ## Optional parameters:
  """

  @spec delete_revision(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_revision_errors()}

  def delete_revision(%Client{} = client, data_set_id, revision_id, options \\ []) do
    url_path =
      "/v1/data-sets/#{AWS.Util.encode_uri(data_set_id)}/revisions/#{AWS.Util.encode_uri(revision_id)}"

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
  This operation returns information about an asset.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dataexchange%20GetAsset&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:asset_id` (`t:string`) The unique identifier for an asset.
  * `:data_set_id` (`t:string`) The unique identifier for a data set.
  * `:revision_id` (`t:string`) The unique identifier for a revision.

  ## Optional parameters:
  """

  @spec get_asset(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_asset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_asset_errors()}

  def get_asset(%Client{} = client, asset_id, data_set_id, revision_id, options \\ []) do
    url_path =
      "/v1/data-sets/#{AWS.Util.encode_uri(data_set_id)}/revisions/#{AWS.Util.encode_uri(revision_id)}/assets/#{AWS.Util.encode_uri(asset_id)}"

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
  This operation returns information about a data set.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dataexchange%20GetDataSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:data_set_id` (`t:string`) The unique identifier for a data set.

  ## Optional parameters:
  """

  @spec get_data_set(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_data_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_data_set_errors()}

  def get_data_set(%Client{} = client, data_set_id, options \\ []) do
    url_path = "/v1/data-sets/#{AWS.Util.encode_uri(data_set_id)}"

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
  This operation retrieves information about an event action.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dataexchange%20GetEventAction&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:event_action_id` (`t:string`) The unique identifier for the event action.

  ## Optional parameters:
  """

  @spec get_event_action(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_event_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_event_action_errors()}

  def get_event_action(%Client{} = client, event_action_id, options \\ []) do
    url_path = "/v1/event-actions/#{AWS.Util.encode_uri(event_action_id)}"

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
  This operation returns information about a job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dataexchange%20GetJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:job_id` (`t:string`) The unique identifier for a job.

  ## Optional parameters:
  """

  @spec get_job(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_job_errors()}

  def get_job(%Client{} = client, job_id, options \\ []) do
    url_path = "/v1/jobs/#{AWS.Util.encode_uri(job_id)}"

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
  This operation returns information about a revision.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dataexchange%20GetRevision&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:data_set_id` (`t:string`) The unique identifier for a data set.
  * `:revision_id` (`t:string`) The unique identifier for a revision.

  ## Optional parameters:
  """

  @spec get_revision(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_revision_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_revision_errors()}

  def get_revision(%Client{} = client, data_set_id, revision_id, options \\ []) do
    url_path =
      "/v1/data-sets/#{AWS.Util.encode_uri(data_set_id)}/revisions/#{AWS.Util.encode_uri(revision_id)}"

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
  This operation lists a data set's revisions sorted by CreatedAt in descending
  order.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dataexchange%20ListDataSetRevisions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:data_set_id` (`t:string`) The unique identifier for a data set.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results returned by a
  single call.
  * `:next_token` (`t:string`) The token value retrieved from a previous call to
  access the next page of results.
  """

  @spec list_data_set_revisions(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_data_set_revisions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_data_set_revisions_errors()}

  def list_data_set_revisions(%Client{} = client, data_set_id, options \\ []) do
    url_path = "/v1/data-sets/#{AWS.Util.encode_uri(data_set_id)}/revisions"

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
  This operation lists your data sets. When listing by origin OWNED, results are
  sorted by CreatedAt in descending order. When listing by origin ENTITLED,
  there is no order and the maxResults parameter is ignored.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dataexchange%20ListDataSets&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results returned by a
  single call.
  * `:next_token` (`t:string`) The token value retrieved from a previous call to
  access the next page of results.
  * `:origin` (`t:string`) A property that defines the data set as OWNED by the
  account (for providers) or ENTITLED to the account (for subscribers).
  """

  @spec list_data_sets(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_data_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_data_sets_errors()}

  def list_data_sets(%Client{} = client, options \\ []) do
    url_path = "/v1/data-sets"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, origin: nil]

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
      if opt_val = Keyword.get(options, :origin) do
        [{"origin", opt_val} | query_params]
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
      |> Keyword.drop([:max_results, :next_token, :origin])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation lists your event actions.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dataexchange%20ListEventActions&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:event_source_id` (`t:string`) The unique identifier for the event source.
  * `:max_results` (`t:integer`) The maximum number of results returned by a
  single call.
  * `:next_token` (`t:string`) The token value retrieved from a previous call to
  access the next page of results.
  """

  @spec list_event_actions(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_event_actions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_event_actions_errors()}

  def list_event_actions(%Client{} = client, options \\ []) do
    url_path = "/v1/event-actions"

    # Validate optional parameters
    optional_params = [event_source_id: nil, max_results: nil, next_token: nil]

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
      if opt_val = Keyword.get(options, :event_source_id) do
        [{"eventSourceId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:event_source_id, :max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation lists your jobs sorted by CreatedAt in descending order.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dataexchange%20ListJobs&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:data_set_id` (`t:string`) The unique identifier for a data set.
  * `:max_results` (`t:integer`) The maximum number of results returned by a
  single call.
  * `:next_token` (`t:string`) The token value retrieved from a previous call to
  access the next page of results.
  * `:revision_id` (`t:string`) The unique identifier for a revision.
  """

  @spec list_jobs(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_jobs_errors()}

  def list_jobs(%Client{} = client, options \\ []) do
    url_path = "/v1/jobs"

    # Validate optional parameters
    optional_params = [data_set_id: nil, max_results: nil, next_token: nil, revision_id: nil]

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
      if opt_val = Keyword.get(options, :revision_id) do
        [{"revisionId", opt_val} | query_params]
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

    query_params =
      if opt_val = Keyword.get(options, :data_set_id) do
        [{"dataSetId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:data_set_id, :max_results, :next_token, :revision_id])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation lists a revision's assets sorted alphabetically in descending
  order.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dataexchange%20ListRevisionAssets&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:data_set_id` (`t:string`) The unique identifier for a data set.
  * `:revision_id` (`t:string`) The unique identifier for a revision.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results returned by a
  single call.
  * `:next_token` (`t:string`) The token value retrieved from a previous call to
  access the next page of results.
  """

  @spec list_revision_assets(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_revision_assets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_revision_assets_errors()}

  def list_revision_assets(%Client{} = client, data_set_id, revision_id, options \\ []) do
    url_path =
      "/v1/data-sets/#{AWS.Util.encode_uri(data_set_id)}/revisions/#{AWS.Util.encode_uri(revision_id)}/assets"

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
  This operation lists the tags on the resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dataexchange%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) An Amazon Resource Name (ARN) that uniquely
  identifies an AWS resource.

  ## Optional parameters:
  """

  @spec list_tags_for_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}

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
  This operation revokes subscribers' access to a revision.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dataexchange%20RevokeRevision&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:data_set_id` (`t:string`) The unique identifier for a data set.
  * `:revision_id` (`t:string`) The unique identifier for a revision.

  ## Optional parameters:
  """

  @spec revoke_revision(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, revoke_revision_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, revoke_revision_errors()}

  def revoke_revision(%Client{} = client, data_set_id, revision_id, options \\ []) do
    url_path =
      "/v1/data-sets/#{AWS.Util.encode_uri(data_set_id)}/revisions/#{AWS.Util.encode_uri(revision_id)}/revoke"

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
  This operation invokes an API Gateway API asset. The request is proxied to the
  provider’s API Gateway API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dataexchange%20SendApiAsset&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:asset_id` (`t:string`) Asset ID value for the API request.
  * `:data_set_id` (`t:string`) Data set ID value for the API request.
  * `:revision_id` (`t:string`) Revision ID value for the API request.
  * `:input` (`t:binary | nil`)


  ## Optional parameters:
  * `:query_string_parameters` (`t:map`) Attach query string parameters to the end
  of the URI (for example, /v1/examplePath?exampleParam=exampleValue).
  * `:method` (`t:string`) HTTP method value for the API request. Alternatively,
  you can use the appropriate verb in your request.
  * `:path` (`t:string`) URI path value for the API request. Alternatively, you
  can set the URI path directly by invoking /v1/{pathValue}.
  """

  @spec send_api_asset(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          input :: binary() | nil,
          Keyword.t()
        ) ::
          {:ok, send_api_asset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_api_asset_errors()}

  def send_api_asset(%Client{} = client, asset_id, data_set_id, revision_id, input, options \\ [])
      when (is_binary(input) or is_nil(input)) and is_binary(asset_id) and is_binary(data_set_id) and
             is_binary(revision_id) do
    url_path = "/v1"

    # Validate optional parameters
    optional_params = [query_string_parameters: nil, method: nil, path: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [
      {"x-amzn-dataexchange-asset-id", asset_id},
      {"x-amzn-dataexchange-data-set-id", data_set_id},
      {"x-amzn-dataexchange-revision-id", revision_id}
    ]

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :path) do
        [{"x-amzn-dataexchange-path", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :method) do
        [{"x-amzn-dataexchange-http-method", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :query_string_parameters) do
        [{"QueryStringParameters", opt_val} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :send_body_as_binary?,
        true
      )

    options =
      Keyword.put(
        options,
        :receive_body_as_binary?,
        true
      )

    meta =
      metadata() |> Map.put_new(:host_prefix, "api-fulfill.")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:query_string_parameters, :method, :path])

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  The type of event associated with the data set.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dataexchange%20SendDataSetNotification&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:data_set_id` (`t:string`) Affected data set of the notification.

  ## Optional parameters:
  """

  @spec send_data_set_notification(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, send_data_set_notification_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_data_set_notification_errors()}

  def send_data_set_notification(%Client{} = client, data_set_id, options \\ []) do
    url_path = "/v1/data-sets/#{AWS.Util.encode_uri(data_set_id)}/notification"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 202)
  end

  @doc """
  This operation starts a job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dataexchange%20StartJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:job_id` (`t:string`) The unique identifier for a job.

  ## Optional parameters:
  """

  @spec start_job(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, start_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_job_errors()}

  def start_job(%Client{} = client, job_id, options \\ []) do
    url_path = "/v1/jobs/#{AWS.Util.encode_uri(job_id)}"

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
      202
    )
  end

  @doc """
  This operation tags a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dataexchange%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) An Amazon Resource Name (ARN) that uniquely
  identifies an AWS resource.
  * `:input` (`t:map`):
    * `:tags` (`t:map`) A label that consists of a customer-defined key and an
  optional value.

  ## Optional parameters:
  """

  @spec tag_resource(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}

  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) when is_map(input) do
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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 204)
  end

  @doc """
  This operation removes one or more tags from a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dataexchange%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) An Amazon Resource Name (ARN) that uniquely
  identifies an AWS resource.
  * `:tag_keys` (`t:list[com.amazonaws.dataexchange#__string]`) The key tags.

  ## Optional parameters:
  """

  @spec untag_resource(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}

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
      204
    )
  end

  @doc """
  This operation updates an asset.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dataexchange%20UpdateAsset&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:asset_id` (`t:string`) The unique identifier for an asset.
  * `:data_set_id` (`t:string`) The unique identifier for a data set.
  * `:revision_id` (`t:string`) The unique identifier for a revision.

  ## Optional parameters:
  """

  @spec update_asset(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_asset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_asset_errors()}

  def update_asset(%Client{} = client, asset_id, data_set_id, revision_id, options \\ []) do
    url_path =
      "/v1/data-sets/#{AWS.Util.encode_uri(data_set_id)}/revisions/#{AWS.Util.encode_uri(revision_id)}/assets/#{AWS.Util.encode_uri(asset_id)}"

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

  @doc """
  This operation updates a data set.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dataexchange%20UpdateDataSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:data_set_id` (`t:string`) The unique identifier for a data set.

  ## Optional parameters:
  """

  @spec update_data_set(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_data_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_data_set_errors()}

  def update_data_set(%Client{} = client, data_set_id, options \\ []) do
    url_path = "/v1/data-sets/#{AWS.Util.encode_uri(data_set_id)}"

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

  @doc """
  This operation updates the event action.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dataexchange%20UpdateEventAction&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:event_action_id` (`t:string`) The unique identifier for the event action.

  ## Optional parameters:
  """

  @spec update_event_action(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_event_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_event_action_errors()}

  def update_event_action(%Client{} = client, event_action_id, options \\ []) do
    url_path = "/v1/event-actions/#{AWS.Util.encode_uri(event_action_id)}"

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

  @doc """
  This operation updates a revision.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=dataexchange%20UpdateRevision&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:data_set_id` (`t:string`) The unique identifier for a data set.
  * `:revision_id` (`t:string`) The unique identifier for a revision.

  ## Optional parameters:
  """

  @spec update_revision(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_revision_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_revision_errors()}

  def update_revision(%Client{} = client, data_set_id, revision_id, options \\ []) do
    url_path =
      "/v1/data-sets/#{AWS.Util.encode_uri(data_set_id)}/revisions/#{AWS.Util.encode_uri(revision_id)}"

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
