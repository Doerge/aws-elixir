# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.S3 do
  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      error() :: %{
        "Code" => String.t(),
        "Key" => String.t(),
        "Message" => String.t(),
        "VersionId" => String.t()
      }
      
  """
  @type error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_bucket_policy_request() :: %{
        optional("ChecksumAlgorithm") => list(any()),
        optional("ConfirmRemoveSelfBucketAccess") => boolean(),
        optional("ContentMD5") => String.t(),
        optional("ExpectedBucketOwner") => String.t(),
        required("Policy") => String.t()
      }
      
  """
  @type put_bucket_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_bucket_logging_request() :: %{
        optional("ChecksumAlgorithm") => list(any()),
        optional("ContentMD5") => String.t(),
        optional("ExpectedBucketOwner") => String.t(),
        required("BucketLoggingStatus") => bucket_logging_status()
      }
      
  """
  @type put_bucket_logging_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inventory_s3_bucket_destination() :: %{
        "AccountId" => String.t(),
        "Bucket" => String.t(),
        "Encryption" => inventory_encryption(),
        "Format" => list(any()),
        "Prefix" => String.t()
      }
      
  """
  @type inventory_s3_bucket_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      records_event() :: %{
        "Payload" => binary()
      }
      
  """
  @type records_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_bucket_metrics_configurations_output() :: %{
        "ContinuationToken" => String.t(),
        "IsTruncated" => boolean(),
        "MetricsConfigurationList" => list(metrics_configuration()()),
        "NextContinuationToken" => String.t()
      }
      
  """
  @type list_bucket_metrics_configurations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_object_request() :: %{
        optional("BypassGovernanceRetention") => boolean(),
        optional("ExpectedBucketOwner") => String.t(),
        optional("MFA") => String.t(),
        optional("RequestPayer") => list(any()),
        optional("VersionId") => String.t()
      }
      
  """
  @type delete_object_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bucket_accelerate_configuration_output() :: %{
        "RequestCharged" => list(any()),
        "Status" => list(any())
      }
      
  """
  @type get_bucket_accelerate_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      c_o_r_s_configuration() :: %{
        "CORSRules" => list(c_o_r_s_rule()())
      }
      
  """
  @type c_o_r_s_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bucket_ownership_controls_request() :: %{
        optional("ExpectedBucketOwner") => String.t()
      }
      
  """
  @type get_bucket_ownership_controls_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_bucket_metrics_configurations_request() :: %{
        optional("ContinuationToken") => String.t(),
        optional("ExpectedBucketOwner") => String.t()
      }
      
  """
  @type list_bucket_metrics_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      no_such_key() :: %{}
      
  """
  @type no_such_key() :: %{}

  @typedoc """

  ## Example:
      
      get_bucket_policy_output() :: %{
        "Policy" => String.t()
      }
      
  """
  @type get_bucket_policy_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      encryption_configuration() :: %{
        "ReplicaKmsKeyID" => String.t()
      }
      
  """
  @type encryption_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_bucket_versioning_request() :: %{
        optional("ChecksumAlgorithm") => list(any()),
        optional("ContentMD5") => String.t(),
        optional("ExpectedBucketOwner") => String.t(),
        optional("MFA") => String.t(),
        required("VersioningConfiguration") => versioning_configuration()
      }
      
  """
  @type put_bucket_versioning_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_object_torrent_output() :: %{
        "Body" => binary(),
        "RequestCharged" => list(any())
      }
      
  """
  @type get_object_torrent_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_object_tagging_request() :: %{
        optional("ExpectedBucketOwner") => String.t(),
        optional("VersionId") => String.t()
      }
      
  """
  @type delete_object_tagging_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inventory_configuration() :: %{
        "Destination" => inventory_destination(),
        "Filter" => inventory_filter(),
        "Id" => String.t(),
        "IncludedObjectVersions" => list(any()),
        "IsEnabled" => boolean(),
        "OptionalFields" => list(list(any())()),
        "Schedule" => inventory_schedule()
      }
      
  """
  @type inventory_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      copy_object_result() :: %{
        "ChecksumCRC32" => String.t(),
        "ChecksumCRC32C" => String.t(),
        "ChecksumSHA1" => String.t(),
        "ChecksumSHA256" => String.t(),
        "ETag" => String.t(),
        "LastModified" => non_neg_integer()
      }
      
  """
  @type copy_object_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      public_access_block_configuration() :: %{
        "BlockPublicAcls" => boolean(),
        "BlockPublicPolicy" => boolean(),
        "IgnorePublicAcls" => boolean(),
        "RestrictPublicBuckets" => boolean()
      }
      
  """
  @type public_access_block_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bucket_accelerate_configuration_request() :: %{
        optional("ExpectedBucketOwner") => String.t(),
        optional("RequestPayer") => list(any())
      }
      
  """
  @type get_bucket_accelerate_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inventory_schedule() :: %{
        "Frequency" => list(any())
      }
      
  """
  @type inventory_schedule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      write_get_object_response_request() :: %{
        optional("VersionId") => String.t(),
        optional("ChecksumCRC32C") => String.t(),
        optional("Expires") => non_neg_integer(),
        optional("Body") => binary(),
        optional("DeleteMarker") => boolean(),
        optional("ChecksumSHA256") => String.t(),
        optional("ReplicationStatus") => list(any()),
        optional("PartsCount") => integer(),
        optional("Metadata") => map(),
        optional("SSECustomerAlgorithm") => String.t(),
        optional("ContentRange") => String.t(),
        optional("TagCount") => integer(),
        optional("Restore") => String.t(),
        optional("BucketKeyEnabled") => boolean(),
        optional("SSECustomerKeyMD5") => String.t(),
        optional("LastModified") => non_neg_integer(),
        optional("ContentDisposition") => String.t(),
        optional("ChecksumSHA1") => String.t(),
        optional("ContentLanguage") => String.t(),
        optional("RequestCharged") => list(any()),
        optional("ETag") => String.t(),
        optional("ServerSideEncryption") => list(any()),
        optional("ErrorCode") => String.t(),
        optional("ContentEncoding") => String.t(),
        optional("StatusCode") => integer(),
        optional("ObjectLockRetainUntilDate") => non_neg_integer(),
        optional("ContentType") => String.t(),
        optional("ErrorMessage") => String.t(),
        required("RequestRoute") => String.t(),
        optional("ChecksumCRC32") => String.t(),
        optional("ContentLength") => float(),
        optional("CacheControl") => String.t(),
        optional("MissingMeta") => integer(),
        optional("ObjectLockLegalHoldStatus") => list(any()),
        optional("Expiration") => String.t(),
        required("RequestToken") => String.t(),
        optional("StorageClass") => list(any()),
        optional("SSEKMSKeyId") => String.t(),
        optional("ObjectLockMode") => list(any()),
        optional("AcceptRanges") => String.t()
      }
      
  """
  @type write_get_object_response_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      target_grant() :: %{
        "Grantee" => grantee(),
        "Permission" => list(any())
      }
      
  """
  @type target_grant() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_bucket_website_request() :: %{
        optional("ExpectedBucketOwner") => String.t()
      }
      
  """
  @type delete_bucket_website_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bucket_ownership_controls_output() :: %{
        "OwnershipControls" => ownership_controls()
      }
      
  """
  @type get_bucket_ownership_controls_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ownership_controls_rule() :: %{
        "ObjectOwnership" => list(any())
      }
      
  """
  @type ownership_controls_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bucket_request_payment_request() :: %{
        optional("ExpectedBucketOwner") => String.t()
      }
      
  """
  @type get_bucket_request_payment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_public_access_block_request() :: %{
        optional("ChecksumAlgorithm") => list(any()),
        optional("ContentMD5") => String.t(),
        optional("ExpectedBucketOwner") => String.t(),
        required("PublicAccessBlockConfiguration") => public_access_block_configuration()
      }
      
  """
  @type put_public_access_block_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_object_tagging_request() :: %{
        optional("ExpectedBucketOwner") => String.t(),
        optional("RequestPayer") => list(any()),
        optional("VersionId") => String.t()
      }
      
  """
  @type get_object_tagging_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      abort_incomplete_multipart_upload() :: %{
        "DaysAfterInitiation" => integer()
      }
      
  """
  @type abort_incomplete_multipart_upload() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lifecycle_rule() :: %{
        "AbortIncompleteMultipartUpload" => abort_incomplete_multipart_upload(),
        "Expiration" => lifecycle_expiration(),
        "Filter" => list(),
        "ID" => String.t(),
        "NoncurrentVersionExpiration" => noncurrent_version_expiration(),
        "NoncurrentVersionTransitions" => list(noncurrent_version_transition()()),
        "Prefix" => String.t(),
        "Status" => list(any()),
        "Transitions" => list(transition()())
      }
      
  """
  @type lifecycle_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_public_access_block_request() :: %{
        optional("ExpectedBucketOwner") => String.t()
      }
      
  """
  @type delete_public_access_block_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bucket_policy_status_request() :: %{
        optional("ExpectedBucketOwner") => String.t()
      }
      
  """
  @type get_bucket_policy_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_object_versions_request() :: %{
        optional("Delimiter") => String.t(),
        optional("EncodingType") => list(any()),
        optional("ExpectedBucketOwner") => String.t(),
        optional("KeyMarker") => String.t(),
        optional("MaxKeys") => integer(),
        optional("OptionalObjectAttributes") => list(list(any())()),
        optional("Prefix") => String.t(),
        optional("RequestPayer") => list(any()),
        optional("VersionIdMarker") => String.t()
      }
      
  """
  @type list_object_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      versioning_configuration() :: %{
        "MFADelete" => list(any()),
        "Status" => list(any())
      }
      
  """
  @type versioning_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete() :: %{
        "Objects" => list(object_identifier()()),
        "Quiet" => boolean()
      }
      
  """
  @type delete() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      upload_part_output() :: %{
        "BucketKeyEnabled" => boolean(),
        "ChecksumCRC32" => String.t(),
        "ChecksumCRC32C" => String.t(),
        "ChecksumSHA1" => String.t(),
        "ChecksumSHA256" => String.t(),
        "ETag" => String.t(),
        "RequestCharged" => list(any()),
        "SSECustomerAlgorithm" => String.t(),
        "SSECustomerKeyMD5" => String.t(),
        "SSEKMSKeyId" => String.t(),
        "ServerSideEncryption" => list(any())
      }
      
  """
  @type upload_part_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_bucket_cors_request() :: %{
        optional("ChecksumAlgorithm") => list(any()),
        optional("ContentMD5") => String.t(),
        optional("ExpectedBucketOwner") => String.t(),
        required("CORSConfiguration") => c_o_r_s_configuration()
      }
      
  """
  @type put_bucket_cors_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_bucket_analytics_configuration_request() :: %{
        optional("ExpectedBucketOwner") => String.t(),
        required("Id") => String.t()
      }
      
  """
  @type delete_bucket_analytics_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      head_bucket_output() :: %{
        "AccessPointAlias" => boolean(),
        "BucketLocationName" => String.t(),
        "BucketLocationType" => list(any()),
        "BucketRegion" => String.t()
      }
      
  """
  @type head_bucket_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bucket_intelligent_tiering_configuration_output() :: %{
        "IntelligentTieringConfiguration" => intelligent_tiering_configuration()
      }
      
  """
  @type get_bucket_intelligent_tiering_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      queue_configuration() :: %{
        "Events" => list(list(any())()),
        "Filter" => notification_configuration_filter(),
        "Id" => String.t(),
        "QueueArn" => String.t()
      }
      
  """
  @type queue_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      filter_rule() :: %{
        "Name" => list(any()),
        "Value" => String.t()
      }
      
  """
  @type filter_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      session_credentials() :: %{
        "AccessKeyId" => String.t(),
        "Expiration" => non_neg_integer(),
        "SecretAccessKey" => String.t(),
        "SessionToken" => String.t()
      }
      
  """
  @type session_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bucket_logging_output() :: %{
        "LoggingEnabled" => logging_enabled()
      }
      
  """
  @type get_bucket_logging_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      redirect() :: %{
        "HostName" => String.t(),
        "HttpRedirectCode" => String.t(),
        "Protocol" => list(any()),
        "ReplaceKeyPrefixWith" => String.t(),
        "ReplaceKeyWith" => String.t()
      }
      
  """
  @type redirect() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      source_selection_criteria() :: %{
        "ReplicaModifications" => replica_modifications(),
        "SseKmsEncryptedObjects" => sse_kms_encrypted_objects()
      }
      
  """
  @type source_selection_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      head_object_output() :: %{
        "ContentLength" => float(),
        "VersionId" => String.t(),
        "Expiration" => String.t(),
        "BucketKeyEnabled" => boolean(),
        "SSEKMSKeyId" => String.t(),
        "StorageClass" => list(any()),
        "ETag" => String.t(),
        "ObjectLockRetainUntilDate" => non_neg_integer(),
        "ObjectLockMode" => list(any()),
        "ArchiveStatus" => list(any()),
        "WebsiteRedirectLocation" => String.t(),
        "DeleteMarker" => boolean(),
        "AcceptRanges" => String.t(),
        "ServerSideEncryption" => list(any()),
        "ChecksumSHA1" => String.t(),
        "CacheControl" => String.t(),
        "ObjectLockLegalHoldStatus" => list(any()),
        "ContentType" => String.t(),
        "SSECustomerKeyMD5" => String.t(),
        "LastModified" => non_neg_integer(),
        "Expires" => non_neg_integer(),
        "ReplicationStatus" => list(any()),
        "ContentDisposition" => String.t(),
        "ContentEncoding" => String.t(),
        "ChecksumCRC32C" => String.t(),
        "ChecksumCRC32" => String.t(),
        "Metadata" => map(),
        "PartsCount" => integer(),
        "ChecksumSHA256" => String.t(),
        "RequestCharged" => list(any()),
        "MissingMeta" => integer(),
        "Restore" => String.t(),
        "SSECustomerAlgorithm" => String.t(),
        "ContentLanguage" => String.t()
      }
      
  """
  @type head_object_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_bucket_tagging_request() :: %{
        optional("ExpectedBucketOwner") => String.t()
      }
      
  """
  @type delete_bucket_tagging_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stats_event() :: %{
        "Details" => stats()
      }
      
  """
  @type stats_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_bucket_replication_request() :: %{
        optional("ChecksumAlgorithm") => list(any()),
        optional("ContentMD5") => String.t(),
        optional("ExpectedBucketOwner") => String.t(),
        optional("Token") => String.t(),
        required("ReplicationConfiguration") => replication_configuration()
      }
      
  """
  @type put_bucket_replication_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_object_lock_configuration_output() :: %{
        "RequestCharged" => list(any())
      }
      
  """
  @type put_object_lock_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_object_retention_output() :: %{
        "Retention" => object_lock_retention()
      }
      
  """
  @type get_object_retention_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      common_prefix() :: %{
        "Prefix" => String.t()
      }
      
  """
  @type common_prefix() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bucket_acl_request() :: %{
        optional("ExpectedBucketOwner") => String.t()
      }
      
  """
  @type get_bucket_acl_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      analytics_export_destination() :: %{
        "S3BucketDestination" => analytics_s3_bucket_destination()
      }
      
  """
  @type analytics_export_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_bucket_inventory_configurations_output() :: %{
        "ContinuationToken" => String.t(),
        "InventoryConfigurationList" => list(inventory_configuration()()),
        "IsTruncated" => boolean(),
        "NextContinuationToken" => String.t()
      }
      
  """
  @type list_bucket_inventory_configurations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_object_legal_hold_output() :: %{
        "RequestCharged" => list(any())
      }
      
  """
  @type put_object_legal_hold_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inventory_filter() :: %{
        "Prefix" => String.t()
      }
      
  """
  @type inventory_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_object_retention_output() :: %{
        "RequestCharged" => list(any())
      }
      
  """
  @type put_object_retention_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_object_acl_request() :: %{
        optional("ACL") => list(any()),
        optional("AccessControlPolicy") => access_control_policy(),
        optional("ChecksumAlgorithm") => list(any()),
        optional("ContentMD5") => String.t(),
        optional("ExpectedBucketOwner") => String.t(),
        optional("GrantFullControl") => String.t(),
        optional("GrantRead") => String.t(),
        optional("GrantReadACP") => String.t(),
        optional("GrantWrite") => String.t(),
        optional("GrantWriteACP") => String.t(),
        optional("RequestPayer") => list(any()),
        optional("VersionId") => String.t()
      }
      
  """
  @type put_object_acl_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_object_request() :: %{
        optional("ChecksumAlgorithm") => list(any()),
        optional("ExpectedBucketOwner") => String.t(),
        optional("RequestPayer") => list(any()),
        optional("RestoreRequest") => restore_request(),
        optional("VersionId") => String.t()
      }
      
  """
  @type restore_object_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      copy_part_result() :: %{
        "ChecksumCRC32" => String.t(),
        "ChecksumCRC32C" => String.t(),
        "ChecksumSHA1" => String.t(),
        "ChecksumSHA256" => String.t(),
        "ETag" => String.t(),
        "LastModified" => non_neg_integer()
      }
      
  """
  @type copy_part_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lambda_function_configuration() :: %{
        "Events" => list(list(any())()),
        "Filter" => notification_configuration_filter(),
        "Id" => String.t(),
        "LambdaFunctionArn" => String.t()
      }
      
  """
  @type lambda_function_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      object_not_in_active_tier_error() :: %{}
      
  """
  @type object_not_in_active_tier_error() :: %{}

  @typedoc """

  ## Example:
      
      list_objects_request() :: %{
        optional("Delimiter") => String.t(),
        optional("EncodingType") => list(any()),
        optional("ExpectedBucketOwner") => String.t(),
        optional("Marker") => String.t(),
        optional("MaxKeys") => integer(),
        optional("OptionalObjectAttributes") => list(list(any())()),
        optional("Prefix") => String.t(),
        optional("RequestPayer") => list(any())
      }
      
  """
  @type list_objects_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bucket_inventory_configuration_request() :: %{
        optional("ExpectedBucketOwner") => String.t(),
        required("Id") => String.t()
      }
      
  """
  @type get_bucket_inventory_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      input_serialization() :: %{
        "CSV" => csv_input(),
        "CompressionType" => list(any()),
        "JSON" => json_input(),
        "Parquet" => parquet_input()
      }
      
  """
  @type input_serialization() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      upload_part_request() :: %{
        optional("Body") => binary(),
        optional("ChecksumAlgorithm") => list(any()),
        optional("ChecksumCRC32") => String.t(),
        optional("ChecksumCRC32C") => String.t(),
        optional("ChecksumSHA1") => String.t(),
        optional("ChecksumSHA256") => String.t(),
        optional("ContentLength") => float(),
        optional("ContentMD5") => String.t(),
        optional("ExpectedBucketOwner") => String.t(),
        optional("RequestPayer") => list(any()),
        optional("SSECustomerAlgorithm") => String.t(),
        optional("SSECustomerKey") => String.t(),
        optional("SSECustomerKeyMD5") => String.t(),
        required("PartNumber") => integer(),
        required("UploadId") => String.t()
      }
      
  """
  @type upload_part_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      grantee() :: %{
        "DisplayName" => String.t(),
        "EmailAddress" => String.t(),
        "ID" => String.t(),
        "Type" => list(any()),
        "URI" => String.t()
      }
      
  """
  @type grantee() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_object_legal_hold_output() :: %{
        "LegalHold" => object_lock_legal_hold()
      }
      
  """
  @type get_object_legal_hold_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deleted_object() :: %{
        "DeleteMarker" => boolean(),
        "DeleteMarkerVersionId" => String.t(),
        "Key" => String.t(),
        "VersionId" => String.t()
      }
      
  """
  @type deleted_object() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      progress() :: %{
        "BytesProcessed" => float(),
        "BytesReturned" => float(),
        "BytesScanned" => float()
      }
      
  """
  @type progress() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bucket_inventory_configuration_output() :: %{
        "InventoryConfiguration" => inventory_configuration()
      }
      
  """
  @type get_bucket_inventory_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_object_output() :: %{
        "BucketKeyEnabled" => boolean(),
        "ChecksumCRC32" => String.t(),
        "ChecksumCRC32C" => String.t(),
        "ChecksumSHA1" => String.t(),
        "ChecksumSHA256" => String.t(),
        "ETag" => String.t(),
        "Expiration" => String.t(),
        "RequestCharged" => list(any()),
        "SSECustomerAlgorithm" => String.t(),
        "SSECustomerKeyMD5" => String.t(),
        "SSEKMSEncryptionContext" => String.t(),
        "SSEKMSKeyId" => String.t(),
        "ServerSideEncryption" => list(any()),
        "VersionId" => String.t()
      }
      
  """
  @type put_object_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_bucket_analytics_configurations_request() :: %{
        optional("ContinuationToken") => String.t(),
        optional("ExpectedBucketOwner") => String.t()
      }
      
  """
  @type list_bucket_analytics_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      topic_configuration() :: %{
        "Events" => list(list(any())()),
        "Filter" => notification_configuration_filter(),
        "Id" => String.t(),
        "TopicArn" => String.t()
      }
      
  """
  @type topic_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bucket_versioning_request() :: %{
        optional("ExpectedBucketOwner") => String.t()
      }
      
  """
  @type get_bucket_versioning_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_object_versions_output() :: %{
        "CommonPrefixes" => list(common_prefix()()),
        "DeleteMarkers" => list(delete_marker_entry()()),
        "Delimiter" => String.t(),
        "EncodingType" => list(any()),
        "IsTruncated" => boolean(),
        "KeyMarker" => String.t(),
        "MaxKeys" => integer(),
        "Name" => String.t(),
        "NextKeyMarker" => String.t(),
        "NextVersionIdMarker" => String.t(),
        "Prefix" => String.t(),
        "RequestCharged" => list(any()),
        "VersionIdMarker" => String.t(),
        "Versions" => list(object_version()())
      }
      
  """
  @type list_object_versions_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bucket_lifecycle_configuration_output() :: %{
        "Rules" => list(lifecycle_rule()())
      }
      
  """
  @type get_bucket_lifecycle_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sse_kms_encrypted_objects() :: %{
        "Status" => list(any())
      }
      
  """
  @type sse_kms_encrypted_objects() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bucket_policy_status_output() :: %{
        "PolicyStatus" => policy_status()
      }
      
  """
  @type get_bucket_policy_status_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_multipart_upload_output() :: %{
        "AbortDate" => non_neg_integer(),
        "AbortRuleId" => String.t(),
        "Bucket" => String.t(),
        "BucketKeyEnabled" => boolean(),
        "ChecksumAlgorithm" => list(any()),
        "Key" => String.t(),
        "RequestCharged" => list(any()),
        "SSECustomerAlgorithm" => String.t(),
        "SSECustomerKeyMD5" => String.t(),
        "SSEKMSEncryptionContext" => String.t(),
        "SSEKMSKeyId" => String.t(),
        "ServerSideEncryption" => list(any()),
        "UploadId" => String.t()
      }
      
  """
  @type create_multipart_upload_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bucket_acl_output() :: %{
        "Grants" => list(grant()()),
        "Owner" => owner()
      }
      
  """
  @type get_bucket_acl_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      object_lock_rule() :: %{
        "DefaultRetention" => default_retention()
      }
      
  """
  @type object_lock_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      location_info() :: %{
        "Name" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type location_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_bucket_ownership_controls_request() :: %{
        optional("ExpectedBucketOwner") => String.t()
      }
      
  """
  @type delete_bucket_ownership_controls_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bucket_location_output() :: %{
        "LocationConstraint" => list(any())
      }
      
  """
  @type get_bucket_location_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_bucket_inventory_configuration_request() :: %{
        optional("ExpectedBucketOwner") => String.t(),
        required("Id") => String.t()
      }
      
  """
  @type delete_bucket_inventory_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      logging_enabled() :: %{
        "TargetBucket" => String.t(),
        "TargetGrants" => list(target_grant()()),
        "TargetObjectKeyFormat" => target_object_key_format(),
        "TargetPrefix" => String.t()
      }
      
  """
  @type logging_enabled() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_marker_entry() :: %{
        "IsLatest" => boolean(),
        "Key" => String.t(),
        "LastModified" => non_neg_integer(),
        "Owner" => owner(),
        "VersionId" => String.t()
      }
      
  """
  @type delete_marker_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      select_parameters() :: %{
        "Expression" => String.t(),
        "ExpressionType" => list(any()),
        "InputSerialization" => input_serialization(),
        "OutputSerialization" => output_serialization()
      }
      
  """
  @type select_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bucket_already_owned_by_you() :: %{}
      
  """
  @type bucket_already_owned_by_you() :: %{}

  @typedoc """

  ## Example:
      
      delete_bucket_policy_request() :: %{
        optional("ExpectedBucketOwner") => String.t()
      }
      
  """
  @type delete_bucket_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_multipart_uploads_request() :: %{
        optional("Delimiter") => String.t(),
        optional("EncodingType") => list(any()),
        optional("ExpectedBucketOwner") => String.t(),
        optional("KeyMarker") => String.t(),
        optional("MaxUploads") => integer(),
        optional("Prefix") => String.t(),
        optional("RequestPayer") => list(any()),
        optional("UploadIdMarker") => String.t()
      }
      
  """
  @type list_multipart_uploads_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_object_request() :: %{
        optional("GrantRead") => String.t(),
        optional("ChecksumCRC32C") => String.t(),
        optional("Expires") => non_neg_integer(),
        optional("Body") => binary(),
        optional("GrantFullControl") => String.t(),
        optional("ChecksumSHA256") => String.t(),
        optional("Metadata") => map(),
        optional("SSECustomerAlgorithm") => String.t(),
        optional("ExpectedBucketOwner") => String.t(),
        optional("ACL") => list(any()),
        optional("WebsiteRedirectLocation") => String.t(),
        optional("BucketKeyEnabled") => boolean(),
        optional("SSECustomerKeyMD5") => String.t(),
        optional("ContentDisposition") => String.t(),
        optional("ChecksumSHA1") => String.t(),
        optional("ContentLanguage") => String.t(),
        optional("GrantReadACP") => String.t(),
        optional("ChecksumAlgorithm") => list(any()),
        optional("ServerSideEncryption") => list(any()),
        optional("ContentEncoding") => String.t(),
        optional("ObjectLockRetainUntilDate") => non_neg_integer(),
        optional("GrantWriteACP") => String.t(),
        optional("ContentType") => String.t(),
        optional("RequestPayer") => list(any()),
        optional("ChecksumCRC32") => String.t(),
        optional("ContentLength") => float(),
        optional("ContentMD5") => String.t(),
        optional("CacheControl") => String.t(),
        optional("Tagging") => String.t(),
        optional("ObjectLockLegalHoldStatus") => list(any()),
        optional("SSEKMSEncryptionContext") => String.t(),
        optional("StorageClass") => list(any()),
        optional("SSEKMSKeyId") => String.t(),
        optional("ObjectLockMode") => list(any()),
        optional("SSECustomerKey") => String.t()
      }
      
  """
  @type put_object_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      object_version() :: %{
        "ChecksumAlgorithm" => list(list(any())()),
        "ETag" => String.t(),
        "IsLatest" => boolean(),
        "Key" => String.t(),
        "LastModified" => non_neg_integer(),
        "Owner" => owner(),
        "RestoreStatus" => restore_status(),
        "Size" => float(),
        "StorageClass" => list(any()),
        "VersionId" => String.t()
      }
      
  """
  @type object_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      noncurrent_version_expiration() :: %{
        "NewerNoncurrentVersions" => integer(),
        "NoncurrentDays" => integer()
      }
      
  """
  @type noncurrent_version_expiration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_object_legal_hold_request() :: %{
        optional("ExpectedBucketOwner") => String.t(),
        optional("RequestPayer") => list(any()),
        optional("VersionId") => String.t()
      }
      
  """
  @type get_object_legal_hold_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_bucket_request() :: %{
        optional("ExpectedBucketOwner") => String.t()
      }
      
  """
  @type delete_bucket_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_bucket_notification_configuration_request() :: %{
        optional("ExpectedBucketOwner") => String.t(),
        optional("SkipDestinationValidation") => boolean(),
        required("NotificationConfiguration") => notification_configuration()
      }
      
  """
  @type put_bucket_notification_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scan_range() :: %{
        "End" => float(),
        "Start" => float()
      }
      
  """
  @type scan_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_object_legal_hold_request() :: %{
        optional("ChecksumAlgorithm") => list(any()),
        optional("ContentMD5") => String.t(),
        optional("ExpectedBucketOwner") => String.t(),
        optional("LegalHold") => object_lock_legal_hold(),
        optional("RequestPayer") => list(any()),
        optional("VersionId") => String.t()
      }
      
  """
  @type put_object_legal_hold_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bucket_analytics_configuration_request() :: %{
        optional("ExpectedBucketOwner") => String.t(),
        required("Id") => String.t()
      }
      
  """
  @type get_bucket_analytics_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_object_output() :: %{
        "RequestCharged" => list(any()),
        "RestoreOutputPath" => String.t()
      }
      
  """
  @type restore_object_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_session_request() :: %{
        optional("SessionMode") => list(any())
      }
      
  """
  @type create_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      json_input() :: %{
        "Type" => list(any())
      }
      
  """
  @type json_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metrics() :: %{
        "EventThreshold" => replication_time_value(),
        "Status" => list(any())
      }
      
  """
  @type metrics() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replica_modifications() :: %{
        "Status" => list(any())
      }
      
  """
  @type replica_modifications() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bucket_encryption_request() :: %{
        optional("ExpectedBucketOwner") => String.t()
      }
      
  """
  @type get_bucket_encryption_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replication_time_value() :: %{
        "Minutes" => integer()
      }
      
  """
  @type replication_time_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      upload_part_copy_request() :: %{
        optional("CopySourceIfMatch") => String.t(),
        optional("CopySourceIfModifiedSince") => non_neg_integer(),
        optional("CopySourceIfNoneMatch") => String.t(),
        optional("CopySourceIfUnmodifiedSince") => non_neg_integer(),
        optional("CopySourceRange") => String.t(),
        optional("CopySourceSSECustomerAlgorithm") => String.t(),
        optional("CopySourceSSECustomerKey") => String.t(),
        optional("CopySourceSSECustomerKeyMD5") => String.t(),
        optional("ExpectedBucketOwner") => String.t(),
        optional("ExpectedSourceBucketOwner") => String.t(),
        optional("RequestPayer") => list(any()),
        optional("SSECustomerAlgorithm") => String.t(),
        optional("SSECustomerKey") => String.t(),
        optional("SSECustomerKeyMD5") => String.t(),
        required("CopySource") => String.t(),
        required("PartNumber") => integer(),
        required("UploadId") => String.t()
      }
      
  """
  @type upload_part_copy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_status() :: %{
        "IsPublic" => boolean()
      }
      
  """
  @type policy_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bucket_replication_request() :: %{
        optional("ExpectedBucketOwner") => String.t()
      }
      
  """
  @type get_bucket_replication_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_bucket_analytics_configurations_output() :: %{
        "AnalyticsConfigurationList" => list(analytics_configuration()()),
        "ContinuationToken" => String.t(),
        "IsTruncated" => boolean(),
        "NextContinuationToken" => String.t()
      }
      
  """
  @type list_bucket_analytics_configurations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replication_configuration() :: %{
        "Role" => String.t(),
        "Rules" => list(replication_rule()())
      }
      
  """
  @type replication_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bucket_tagging_output() :: %{
        "TagSet" => list(tag()())
      }
      
  """
  @type get_bucket_tagging_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      object_identifier() :: %{
        "Key" => String.t(),
        "VersionId" => String.t()
      }
      
  """
  @type object_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      intelligent_tiering_and_operator() :: %{
        "Prefix" => String.t(),
        "Tags" => list(tag()())
      }
      
  """
  @type intelligent_tiering_and_operator() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      copy_object_output() :: %{
        "BucketKeyEnabled" => boolean(),
        "CopyObjectResult" => copy_object_result(),
        "CopySourceVersionId" => String.t(),
        "Expiration" => String.t(),
        "RequestCharged" => list(any()),
        "SSECustomerAlgorithm" => String.t(),
        "SSECustomerKeyMD5" => String.t(),
        "SSEKMSEncryptionContext" => String.t(),
        "SSEKMSKeyId" => String.t(),
        "ServerSideEncryption" => list(any()),
        "VersionId" => String.t()
      }
      
  """
  @type copy_object_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bucket_website_request() :: %{
        optional("ExpectedBucketOwner") => String.t()
      }
      
  """
  @type get_bucket_website_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      json_output() :: %{
        "RecordDelimiter" => String.t()
      }
      
  """
  @type json_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bucket_intelligent_tiering_configuration_request() :: %{
        required("Id") => String.t()
      }
      
  """
  @type get_bucket_intelligent_tiering_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      grant() :: %{
        "Grantee" => grantee(),
        "Permission" => list(any())
      }
      
  """
  @type grant() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notification_configuration_filter() :: %{
        "Key" => s3_key_filter()
      }
      
  """
  @type notification_configuration_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_session_output() :: %{
        "Credentials" => session_credentials()
      }
      
  """
  @type create_session_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parquet_input() :: %{}
      
  """
  @type parquet_input() :: %{}

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
      
      get_object_tagging_output() :: %{
        "TagSet" => list(tag()()),
        "VersionId" => String.t()
      }
      
  """
  @type get_object_tagging_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_object_attributes_output() :: %{
        "Checksum" => checksum(),
        "DeleteMarker" => boolean(),
        "ETag" => String.t(),
        "LastModified" => non_neg_integer(),
        "ObjectParts" => get_object_attributes_parts(),
        "ObjectSize" => float(),
        "RequestCharged" => list(any()),
        "StorageClass" => list(any()),
        "VersionId" => String.t()
      }
      
  """
  @type get_object_attributes_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bucket_encryption_output() :: %{
        "ServerSideEncryptionConfiguration" => server_side_encryption_configuration()
      }
      
  """
  @type get_bucket_encryption_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bucket_cors_output() :: %{
        "CORSRules" => list(c_o_r_s_rule()())
      }
      
  """
  @type get_bucket_cors_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      noncurrent_version_transition() :: %{
        "NewerNoncurrentVersions" => integer(),
        "NoncurrentDays" => integer(),
        "StorageClass" => list(any())
      }
      
  """
  @type noncurrent_version_transition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bucket_info() :: %{
        "DataRedundancy" => list(any()),
        "Type" => list(any())
      }
      
  """
  @type bucket_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_object_tagging_output() :: %{
        "VersionId" => String.t()
      }
      
  """
  @type delete_object_tagging_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      abort_multipart_upload_output() :: %{
        "RequestCharged" => list(any())
      }
      
  """
  @type abort_multipart_upload_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      select_object_content_output() :: %{
        "Payload" => list()
      }
      
  """
  @type select_object_content_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_bucket_intelligent_tiering_configuration_request() :: %{
        required("Id") => String.t()
      }
      
  """
  @type delete_bucket_intelligent_tiering_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_multipart_upload_request() :: %{
        optional("ACL") => list(any()),
        optional("BucketKeyEnabled") => boolean(),
        optional("CacheControl") => String.t(),
        optional("ChecksumAlgorithm") => list(any()),
        optional("ContentDisposition") => String.t(),
        optional("ContentEncoding") => String.t(),
        optional("ContentLanguage") => String.t(),
        optional("ContentType") => String.t(),
        optional("ExpectedBucketOwner") => String.t(),
        optional("Expires") => non_neg_integer(),
        optional("GrantFullControl") => String.t(),
        optional("GrantRead") => String.t(),
        optional("GrantReadACP") => String.t(),
        optional("GrantWriteACP") => String.t(),
        optional("Metadata") => map(),
        optional("ObjectLockLegalHoldStatus") => list(any()),
        optional("ObjectLockMode") => list(any()),
        optional("ObjectLockRetainUntilDate") => non_neg_integer(),
        optional("RequestPayer") => list(any()),
        optional("SSECustomerAlgorithm") => String.t(),
        optional("SSECustomerKey") => String.t(),
        optional("SSECustomerKeyMD5") => String.t(),
        optional("SSEKMSEncryptionContext") => String.t(),
        optional("SSEKMSKeyId") => String.t(),
        optional("ServerSideEncryption") => list(any()),
        optional("StorageClass") => list(any()),
        optional("Tagging") => String.t(),
        optional("WebsiteRedirectLocation") => String.t()
      }
      
  """
  @type create_multipart_upload_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      csv_input() :: %{
        "AllowQuotedRecordDelimiter" => boolean(),
        "Comments" => String.t(),
        "FieldDelimiter" => String.t(),
        "FileHeaderInfo" => list(any()),
        "QuoteCharacter" => String.t(),
        "QuoteEscapeCharacter" => String.t(),
        "RecordDelimiter" => String.t()
      }
      
  """
  @type csv_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stats() :: %{
        "BytesProcessed" => float(),
        "BytesReturned" => float(),
        "BytesScanned" => float()
      }
      
  """
  @type stats() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_buckets_output() :: %{
        "Buckets" => list(bucket()()),
        "Owner" => owner()
      }
      
  """
  @type list_buckets_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_bucket_configuration() :: %{
        "Bucket" => bucket_info(),
        "Location" => location_info(),
        "LocationConstraint" => list(any())
      }
      
  """
  @type create_bucket_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bucket_already_exists() :: %{}
      
  """
  @type bucket_already_exists() :: %{}

  @typedoc """

  ## Example:
      
      server_side_encryption_rule() :: %{
        "ApplyServerSideEncryptionByDefault" => server_side_encryption_by_default(),
        "BucketKeyEnabled" => boolean()
      }
      
  """
  @type server_side_encryption_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_bucket_intelligent_tiering_configurations_output() :: %{
        "ContinuationToken" => String.t(),
        "IntelligentTieringConfigurationList" => list(intelligent_tiering_configuration()()),
        "IsTruncated" => boolean(),
        "NextContinuationToken" => String.t()
      }
      
  """
  @type list_bucket_intelligent_tiering_configurations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      initiator() :: %{
        "DisplayName" => String.t(),
        "ID" => String.t()
      }
      
  """
  @type initiator() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      select_object_content_request() :: %{
        optional("ExpectedBucketOwner") => String.t(),
        optional("RequestProgress") => request_progress(),
        optional("SSECustomerAlgorithm") => String.t(),
        optional("SSECustomerKey") => String.t(),
        optional("SSECustomerKeyMD5") => String.t(),
        optional("ScanRange") => scan_range(),
        required("Expression") => String.t(),
        required("ExpressionType") => list(any()),
        required("InputSerialization") => input_serialization(),
        required("OutputSerialization") => output_serialization()
      }
      
  """
  @type select_object_content_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      completed_part() :: %{
        "ChecksumCRC32" => String.t(),
        "ChecksumCRC32C" => String.t(),
        "ChecksumSHA1" => String.t(),
        "ChecksumSHA256" => String.t(),
        "ETag" => String.t(),
        "PartNumber" => integer()
      }
      
  """
  @type completed_part() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      analytics_s3_bucket_destination() :: %{
        "Bucket" => String.t(),
        "BucketAccountId" => String.t(),
        "Format" => list(any()),
        "Prefix" => String.t()
      }
      
  """
  @type analytics_s3_bucket_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      encryption() :: %{
        "EncryptionType" => list(any()),
        "KMSContext" => String.t(),
        "KMSKeyId" => String.t()
      }
      
  """
  @type encryption() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_bucket_encryption_request() :: %{
        optional("ExpectedBucketOwner") => String.t()
      }
      
  """
  @type delete_bucket_encryption_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      continuation_event() :: %{}
      
  """
  @type continuation_event() :: %{}

  @typedoc """

  ## Example:
      
      s3_key_filter() :: %{
        "FilterRules" => list(filter_rule()())
      }
      
  """
  @type s3_key_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_bucket_metrics_configuration_request() :: %{
        optional("ExpectedBucketOwner") => String.t(),
        required("Id") => String.t()
      }
      
  """
  @type delete_bucket_metrics_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      intelligent_tiering_configuration() :: %{
        "Filter" => intelligent_tiering_filter(),
        "Id" => String.t(),
        "Status" => list(any()),
        "Tierings" => list(tiering()())
      }
      
  """
  @type intelligent_tiering_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      redirect_all_requests_to() :: %{
        "HostName" => String.t(),
        "Protocol" => list(any())
      }
      
  """
  @type redirect_all_requests_to() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tagging() :: %{
        "TagSet" => list(tag()())
      }
      
  """
  @type tagging() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      request_payment_configuration() :: %{
        "Payer" => list(any())
      }
      
  """
  @type request_payment_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_control_translation() :: %{
        "Owner" => list(any())
      }
      
  """
  @type access_control_translation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_bucket_request_payment_request() :: %{
        optional("ChecksumAlgorithm") => list(any()),
        optional("ContentMD5") => String.t(),
        optional("ExpectedBucketOwner") => String.t(),
        required("RequestPaymentConfiguration") => request_payment_configuration()
      }
      
  """
  @type put_bucket_request_payment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      server_side_encryption_by_default() :: %{
        "KMSMasterKeyID" => String.t(),
        "SSEAlgorithm" => list(any())
      }
      
  """
  @type server_side_encryption_by_default() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      website_configuration() :: %{
        "ErrorDocument" => error_document(),
        "IndexDocument" => index_document(),
        "RedirectAllRequestsTo" => redirect_all_requests_to(),
        "RoutingRules" => list(routing_rule()())
      }
      
  """
  @type website_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      output_location() :: %{
        "S3" => s3_location()
      }
      
  """
  @type output_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      target_object_key_format() :: %{
        "PartitionedPrefix" => partitioned_prefix(),
        "SimplePrefix" => simple_prefix()
      }
      
  """
  @type target_object_key_format() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      storage_class_analysis() :: %{
        "DataExport" => storage_class_analysis_data_export()
      }
      
  """
  @type storage_class_analysis() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_object_attributes_parts() :: %{
        "IsTruncated" => boolean(),
        "MaxParts" => integer(),
        "NextPartNumberMarker" => String.t(),
        "PartNumberMarker" => String.t(),
        "Parts" => list(object_part()()),
        "TotalPartsCount" => integer()
      }
      
  """
  @type get_object_attributes_parts() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_objects_v2_output() :: %{
        "CommonPrefixes" => list(common_prefix()()),
        "Contents" => list(object()()),
        "ContinuationToken" => String.t(),
        "Delimiter" => String.t(),
        "EncodingType" => list(any()),
        "IsTruncated" => boolean(),
        "KeyCount" => integer(),
        "MaxKeys" => integer(),
        "Name" => String.t(),
        "NextContinuationToken" => String.t(),
        "Prefix" => String.t(),
        "RequestCharged" => list(any()),
        "StartAfter" => String.t()
      }
      
  """
  @type list_objects_v2_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      condition() :: %{
        "HttpErrorCodeReturnedEquals" => String.t(),
        "KeyPrefixEquals" => String.t()
      }
      
  """
  @type condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_object_output() :: %{
        "ContentLength" => float(),
        "VersionId" => String.t(),
        "Expiration" => String.t(),
        "BucketKeyEnabled" => boolean(),
        "SSEKMSKeyId" => String.t(),
        "StorageClass" => list(any()),
        "ETag" => String.t(),
        "ObjectLockRetainUntilDate" => non_neg_integer(),
        "ObjectLockMode" => list(any()),
        "Body" => binary(),
        "WebsiteRedirectLocation" => String.t(),
        "DeleteMarker" => boolean(),
        "AcceptRanges" => String.t(),
        "ServerSideEncryption" => list(any()),
        "ChecksumSHA1" => String.t(),
        "CacheControl" => String.t(),
        "ObjectLockLegalHoldStatus" => list(any()),
        "ContentType" => String.t(),
        "SSECustomerKeyMD5" => String.t(),
        "LastModified" => non_neg_integer(),
        "Expires" => non_neg_integer(),
        "TagCount" => integer(),
        "ReplicationStatus" => list(any()),
        "ContentDisposition" => String.t(),
        "ContentEncoding" => String.t(),
        "ChecksumCRC32C" => String.t(),
        "ChecksumCRC32" => String.t(),
        "Metadata" => map(),
        "PartsCount" => integer(),
        "ChecksumSHA256" => String.t(),
        "RequestCharged" => list(any()),
        "MissingMeta" => integer(),
        "Restore" => String.t(),
        "ContentRange" => String.t(),
        "SSECustomerAlgorithm" => String.t(),
        "ContentLanguage" => String.t()
      }
      
  """
  @type get_object_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_location() :: %{
        "AccessControlList" => list(grant()()),
        "BucketName" => String.t(),
        "CannedACL" => list(any()),
        "Encryption" => encryption(),
        "Prefix" => String.t(),
        "StorageClass" => list(any()),
        "Tagging" => tagging(),
        "UserMetadata" => list(metadata_entry()())
      }
      
  """
  @type s3_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      object() :: %{
        "ChecksumAlgorithm" => list(list(any())()),
        "ETag" => String.t(),
        "Key" => String.t(),
        "LastModified" => non_neg_integer(),
        "Owner" => owner(),
        "RestoreStatus" => restore_status(),
        "Size" => float(),
        "StorageClass" => list(any())
      }
      
  """
  @type object() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      progress_event() :: %{
        "Details" => progress()
      }
      
  """
  @type progress_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      complete_multipart_upload_output() :: %{
        "Bucket" => String.t(),
        "BucketKeyEnabled" => boolean(),
        "ChecksumCRC32" => String.t(),
        "ChecksumCRC32C" => String.t(),
        "ChecksumSHA1" => String.t(),
        "ChecksumSHA256" => String.t(),
        "ETag" => String.t(),
        "Expiration" => String.t(),
        "Key" => String.t(),
        "Location" => String.t(),
        "RequestCharged" => list(any()),
        "SSEKMSKeyId" => String.t(),
        "ServerSideEncryption" => list(any()),
        "VersionId" => String.t()
      }
      
  """
  @type complete_multipart_upload_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      server_side_encryption_configuration() :: %{
        "Rules" => list(server_side_encryption_rule()())
      }
      
  """
  @type server_side_encryption_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_object_acl_output() :: %{
        "Grants" => list(grant()()),
        "Owner" => owner(),
        "RequestCharged" => list(any())
      }
      
  """
  @type get_object_acl_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_bucket_encryption_request() :: %{
        optional("ChecksumAlgorithm") => list(any()),
        optional("ContentMD5") => String.t(),
        optional("ExpectedBucketOwner") => String.t(),
        required("ServerSideEncryptionConfiguration") => server_side_encryption_configuration()
      }
      
  """
  @type put_bucket_encryption_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      default_retention() :: %{
        "Days" => integer(),
        "Mode" => list(any()),
        "Years" => integer()
      }
      
  """
  @type default_retention() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ownership_controls() :: %{
        "Rules" => list(ownership_controls_rule()())
      }
      
  """
  @type ownership_controls() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notification_configuration() :: %{
        "EventBridgeConfiguration" => event_bridge_configuration(),
        "LambdaFunctionConfigurations" => list(lambda_function_configuration()()),
        "QueueConfigurations" => list(queue_configuration()()),
        "TopicConfigurations" => list(topic_configuration()())
      }
      
  """
  @type notification_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      object_lock_configuration() :: %{
        "ObjectLockEnabled" => list(any()),
        "Rule" => object_lock_rule()
      }
      
  """
  @type object_lock_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bucket_lifecycle_configuration_request() :: %{
        optional("ExpectedBucketOwner") => String.t()
      }
      
  """
  @type get_bucket_lifecycle_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_objects_output() :: %{
        "Deleted" => list(deleted_object()()),
        "Errors" => list(error()()),
        "RequestCharged" => list(any())
      }
      
  """
  @type delete_objects_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_object_acl_output() :: %{
        "RequestCharged" => list(any())
      }
      
  """
  @type put_object_acl_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_objects_output() :: %{
        "CommonPrefixes" => list(common_prefix()()),
        "Contents" => list(object()()),
        "Delimiter" => String.t(),
        "EncodingType" => list(any()),
        "IsTruncated" => boolean(),
        "Marker" => String.t(),
        "MaxKeys" => integer(),
        "Name" => String.t(),
        "NextMarker" => String.t(),
        "Prefix" => String.t(),
        "RequestCharged" => list(any())
      }
      
  """
  @type list_objects_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      checksum() :: %{
        "ChecksumCRC32" => String.t(),
        "ChecksumCRC32C" => String.t(),
        "ChecksumSHA1" => String.t(),
        "ChecksumSHA256" => String.t()
      }
      
  """
  @type checksum() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_bridge_configuration() :: %{}
      
  """
  @type event_bridge_configuration() :: %{}

  @typedoc """

  ## Example:
      
      get_bucket_versioning_output() :: %{
        "MFADelete" => list(any()),
        "Status" => list(any())
      }
      
  """
  @type get_bucket_versioning_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      no_such_bucket() :: %{}
      
  """
  @type no_such_bucket() :: %{}

  @typedoc """

  ## Example:
      
      get_bucket_metrics_configuration_request() :: %{
        optional("ExpectedBucketOwner") => String.t(),
        required("Id") => String.t()
      }
      
  """
  @type get_bucket_metrics_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bucket_policy_request() :: %{
        optional("ExpectedBucketOwner") => String.t()
      }
      
  """
  @type get_bucket_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bucket_logging_status() :: %{
        "LoggingEnabled" => logging_enabled()
      }
      
  """
  @type bucket_logging_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_object_lock_configuration_request() :: %{
        optional("ExpectedBucketOwner") => String.t()
      }
      
  """
  @type get_object_lock_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      copy_object_request() :: %{
        optional("GrantRead") => String.t(),
        optional("Expires") => non_neg_integer(),
        optional("CopySourceIfNoneMatch") => String.t(),
        optional("CopySourceSSECustomerKeyMD5") => String.t(),
        optional("GrantFullControl") => String.t(),
        required("CopySource") => String.t(),
        optional("CopySourceIfUnmodifiedSince") => non_neg_integer(),
        optional("CopySourceSSECustomerAlgorithm") => String.t(),
        optional("CopySourceIfModifiedSince") => non_neg_integer(),
        optional("Metadata") => map(),
        optional("SSECustomerAlgorithm") => String.t(),
        optional("ExpectedBucketOwner") => String.t(),
        optional("ACL") => list(any()),
        optional("WebsiteRedirectLocation") => String.t(),
        optional("BucketKeyEnabled") => boolean(),
        optional("SSECustomerKeyMD5") => String.t(),
        optional("MetadataDirective") => list(any()),
        optional("CopySourceIfMatch") => String.t(),
        optional("ContentDisposition") => String.t(),
        optional("TaggingDirective") => list(any()),
        optional("ContentLanguage") => String.t(),
        optional("CopySourceSSECustomerKey") => String.t(),
        optional("GrantReadACP") => String.t(),
        optional("ChecksumAlgorithm") => list(any()),
        optional("ServerSideEncryption") => list(any()),
        optional("ContentEncoding") => String.t(),
        optional("ObjectLockRetainUntilDate") => non_neg_integer(),
        optional("ExpectedSourceBucketOwner") => String.t(),
        optional("GrantWriteACP") => String.t(),
        optional("ContentType") => String.t(),
        optional("RequestPayer") => list(any()),
        optional("CacheControl") => String.t(),
        optional("Tagging") => String.t(),
        optional("ObjectLockLegalHoldStatus") => list(any()),
        optional("SSEKMSEncryptionContext") => String.t(),
        optional("StorageClass") => list(any()),
        optional("SSEKMSKeyId") => String.t(),
        optional("ObjectLockMode") => list(any()),
        optional("SSECustomerKey") => String.t()
      }
      
  """
  @type copy_object_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_directory_buckets_request() :: %{
        optional("ContinuationToken") => String.t(),
        optional("MaxDirectoryBuckets") => integer()
      }
      
  """
  @type list_directory_buckets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_bucket_ownership_controls_request() :: %{
        optional("ContentMD5") => String.t(),
        optional("ExpectedBucketOwner") => String.t(),
        required("OwnershipControls") => ownership_controls()
      }
      
  """
  @type put_bucket_ownership_controls_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_bucket_lifecycle_request() :: %{
        optional("ExpectedBucketOwner") => String.t()
      }
      
  """
  @type delete_bucket_lifecycle_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_objects_request() :: %{
        optional("BypassGovernanceRetention") => boolean(),
        optional("ChecksumAlgorithm") => list(any()),
        optional("ExpectedBucketOwner") => String.t(),
        optional("MFA") => String.t(),
        optional("RequestPayer") => list(any()),
        required("Delete") => delete()
      }
      
  """
  @type delete_objects_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_public_access_block_output() :: %{
        "PublicAccessBlockConfiguration" => public_access_block_configuration()
      }
      
  """
  @type get_public_access_block_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_status() :: %{
        "IsRestoreInProgress" => boolean(),
        "RestoreExpiryDate" => non_neg_integer()
      }
      
  """
  @type restore_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      analytics_and_operator() :: %{
        "Prefix" => String.t(),
        "Tags" => list(tag()())
      }
      
  """
  @type analytics_and_operator() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bucket() :: %{
        "CreationDate" => non_neg_integer(),
        "Name" => String.t()
      }
      
  """
  @type bucket() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_marker_replication() :: %{
        "Status" => list(any())
      }
      
  """
  @type delete_marker_replication() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inventory_encryption() :: %{
        "SSEKMS" => sse_kms(),
        "SSES3" => sse_s3()
      }
      
  """
  @type inventory_encryption() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_bucket_request() :: %{
        optional("ACL") => list(any()),
        optional("CreateBucketConfiguration") => create_bucket_configuration(),
        optional("GrantFullControl") => String.t(),
        optional("GrantRead") => String.t(),
        optional("GrantReadACP") => String.t(),
        optional("GrantWrite") => String.t(),
        optional("GrantWriteACP") => String.t(),
        optional("ObjectLockEnabledForBucket") => boolean(),
        optional("ObjectOwnership") => list(any())
      }
      
  """
  @type create_bucket_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      storage_class_analysis_data_export() :: %{
        "Destination" => analytics_export_destination(),
        "OutputSchemaVersion" => list(any())
      }
      
  """
  @type storage_class_analysis_data_export() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_bucket_accelerate_configuration_request() :: %{
        optional("ChecksumAlgorithm") => list(any()),
        optional("ExpectedBucketOwner") => String.t(),
        required("AccelerateConfiguration") => accelerate_configuration()
      }
      
  """
  @type put_bucket_accelerate_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      c_o_r_s_rule() :: %{
        "AllowedHeaders" => list(String.t()()),
        "AllowedMethods" => list(String.t()()),
        "AllowedOrigins" => list(String.t()()),
        "ExposeHeaders" => list(String.t()()),
        "ID" => String.t(),
        "MaxAgeSeconds" => integer()
      }
      
  """
  @type c_o_r_s_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_bucket_acl_request() :: %{
        optional("ACL") => list(any()),
        optional("AccessControlPolicy") => access_control_policy(),
        optional("ChecksumAlgorithm") => list(any()),
        optional("ContentMD5") => String.t(),
        optional("ExpectedBucketOwner") => String.t(),
        optional("GrantFullControl") => String.t(),
        optional("GrantRead") => String.t(),
        optional("GrantReadACP") => String.t(),
        optional("GrantWrite") => String.t(),
        optional("GrantWriteACP") => String.t()
      }
      
  """
  @type put_bucket_acl_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      simple_prefix() :: %{}
      
  """
  @type simple_prefix() :: %{}

  @typedoc """

  ## Example:
      
      existing_object_replication() :: %{
        "Status" => list(any())
      }
      
  """
  @type existing_object_replication() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      transition() :: %{
        "Date" => non_neg_integer(),
        "Days" => integer(),
        "StorageClass" => list(any())
      }
      
  """
  @type transition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      index_document() :: %{
        "Suffix" => String.t()
      }
      
  """
  @type index_document() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      intelligent_tiering_filter() :: %{
        "And" => intelligent_tiering_and_operator(),
        "Prefix" => String.t(),
        "Tag" => tag()
      }
      
  """
  @type intelligent_tiering_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_object_torrent_request() :: %{
        optional("ExpectedBucketOwner") => String.t(),
        optional("RequestPayer") => list(any())
      }
      
  """
  @type get_object_torrent_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_bucket_metrics_configuration_request() :: %{
        optional("ExpectedBucketOwner") => String.t(),
        required("Id") => String.t(),
        required("MetricsConfiguration") => metrics_configuration()
      }
      
  """
  @type put_bucket_metrics_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_object_retention_request() :: %{
        optional("BypassGovernanceRetention") => boolean(),
        optional("ChecksumAlgorithm") => list(any()),
        optional("ContentMD5") => String.t(),
        optional("ExpectedBucketOwner") => String.t(),
        optional("RequestPayer") => list(any()),
        optional("Retention") => object_lock_retention(),
        optional("VersionId") => String.t()
      }
      
  """
  @type put_object_retention_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      part() :: %{
        "ChecksumCRC32" => String.t(),
        "ChecksumCRC32C" => String.t(),
        "ChecksumSHA1" => String.t(),
        "ChecksumSHA256" => String.t(),
        "ETag" => String.t(),
        "LastModified" => non_neg_integer(),
        "PartNumber" => integer(),
        "Size" => float()
      }
      
  """
  @type part() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bucket_tagging_request() :: %{
        optional("ExpectedBucketOwner") => String.t()
      }
      
  """
  @type get_bucket_tagging_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      object_part() :: %{
        "ChecksumCRC32" => String.t(),
        "ChecksumCRC32C" => String.t(),
        "ChecksumSHA1" => String.t(),
        "ChecksumSHA256" => String.t(),
        "PartNumber" => integer(),
        "Size" => float()
      }
      
  """
  @type object_part() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      end_event() :: %{}
      
  """
  @type end_event() :: %{}

  @typedoc """

  ## Example:
      
      metadata_entry() :: %{
        "Name" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type metadata_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sse_s3() :: %{}
      
  """
  @type sse_s3() :: %{}

  @typedoc """

  ## Example:
      
      get_bucket_logging_request() :: %{
        optional("ExpectedBucketOwner") => String.t()
      }
      
  """
  @type get_bucket_logging_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_object_acl_request() :: %{
        optional("ExpectedBucketOwner") => String.t(),
        optional("RequestPayer") => list(any()),
        optional("VersionId") => String.t()
      }
      
  """
  @type get_object_acl_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replication_rule() :: %{
        "DeleteMarkerReplication" => delete_marker_replication(),
        "Destination" => destination(),
        "ExistingObjectReplication" => existing_object_replication(),
        "Filter" => list(),
        "ID" => String.t(),
        "Prefix" => String.t(),
        "Priority" => integer(),
        "SourceSelectionCriteria" => source_selection_criteria(),
        "Status" => list(any())
      }
      
  """
  @type replication_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_objects_v2_request() :: %{
        optional("ContinuationToken") => String.t(),
        optional("Delimiter") => String.t(),
        optional("EncodingType") => list(any()),
        optional("ExpectedBucketOwner") => String.t(),
        optional("FetchOwner") => boolean(),
        optional("MaxKeys") => integer(),
        optional("OptionalObjectAttributes") => list(list(any())()),
        optional("Prefix") => String.t(),
        optional("RequestPayer") => list(any()),
        optional("StartAfter") => String.t()
      }
      
  """
  @type list_objects_v2_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_bucket_output() :: %{
        "Location" => String.t()
      }
      
  """
  @type create_bucket_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_bucket_intelligent_tiering_configuration_request() :: %{
        required("Id") => String.t(),
        required("IntelligentTieringConfiguration") => intelligent_tiering_configuration()
      }
      
  """
  @type put_bucket_intelligent_tiering_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      destination() :: %{
        "AccessControlTranslation" => access_control_translation(),
        "Account" => String.t(),
        "Bucket" => String.t(),
        "EncryptionConfiguration" => encryption_configuration(),
        "Metrics" => metrics(),
        "ReplicationTime" => replication_time(),
        "StorageClass" => list(any())
      }
      
  """
  @type destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      head_bucket_request() :: %{
        optional("ExpectedBucketOwner") => String.t()
      }
      
  """
  @type head_bucket_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lifecycle_expiration() :: %{
        "Date" => non_neg_integer(),
        "Days" => integer(),
        "ExpiredObjectDeleteMarker" => boolean()
      }
      
  """
  @type lifecycle_expiration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_control_policy() :: %{
        "Grants" => list(grant()()),
        "Owner" => owner()
      }
      
  """
  @type access_control_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_bucket_analytics_configuration_request() :: %{
        optional("ExpectedBucketOwner") => String.t(),
        required("AnalyticsConfiguration") => analytics_configuration(),
        required("Id") => String.t()
      }
      
  """
  @type put_bucket_analytics_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      object_lock_retention() :: %{
        "Mode" => list(any()),
        "RetainUntilDate" => non_neg_integer()
      }
      
  """
  @type object_lock_retention() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_object_tagging_output() :: %{
        "VersionId" => String.t()
      }
      
  """
  @type put_object_tagging_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      upload_part_copy_output() :: %{
        "BucketKeyEnabled" => boolean(),
        "CopyPartResult" => copy_part_result(),
        "CopySourceVersionId" => String.t(),
        "RequestCharged" => list(any()),
        "SSECustomerAlgorithm" => String.t(),
        "SSECustomerKeyMD5" => String.t(),
        "SSEKMSKeyId" => String.t(),
        "ServerSideEncryption" => list(any())
      }
      
  """
  @type upload_part_copy_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bucket_location_request() :: %{
        optional("ExpectedBucketOwner") => String.t()
      }
      
  """
  @type get_bucket_location_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      multipart_upload() :: %{
        "ChecksumAlgorithm" => list(any()),
        "Initiated" => non_neg_integer(),
        "Initiator" => initiator(),
        "Key" => String.t(),
        "Owner" => owner(),
        "StorageClass" => list(any()),
        "UploadId" => String.t()
      }
      
  """
  @type multipart_upload() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_bucket_tagging_request() :: %{
        optional("ChecksumAlgorithm") => list(any()),
        optional("ContentMD5") => String.t(),
        optional("ExpectedBucketOwner") => String.t(),
        required("Tagging") => tagging()
      }
      
  """
  @type put_bucket_tagging_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      partitioned_prefix() :: %{
        "PartitionDateSource" => list(any())
      }
      
  """
  @type partitioned_prefix() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_bucket_inventory_configurations_request() :: %{
        optional("ContinuationToken") => String.t(),
        optional("ExpectedBucketOwner") => String.t()
      }
      
  """
  @type list_bucket_inventory_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_multipart_uploads_output() :: %{
        "Bucket" => String.t(),
        "CommonPrefixes" => list(common_prefix()()),
        "Delimiter" => String.t(),
        "EncodingType" => list(any()),
        "IsTruncated" => boolean(),
        "KeyMarker" => String.t(),
        "MaxUploads" => integer(),
        "NextKeyMarker" => String.t(),
        "NextUploadIdMarker" => String.t(),
        "Prefix" => String.t(),
        "RequestCharged" => list(any()),
        "UploadIdMarker" => String.t(),
        "Uploads" => list(multipart_upload()())
      }
      
  """
  @type list_multipart_uploads_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sse_kms() :: %{
        "KeyId" => String.t()
      }
      
  """
  @type sse_kms() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_object_lock_configuration_request() :: %{
        optional("ChecksumAlgorithm") => list(any()),
        optional("ContentMD5") => String.t(),
        optional("ExpectedBucketOwner") => String.t(),
        optional("ObjectLockConfiguration") => object_lock_configuration(),
        optional("RequestPayer") => list(any()),
        optional("Token") => String.t()
      }
      
  """
  @type put_object_lock_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_object_output() :: %{
        "DeleteMarker" => boolean(),
        "RequestCharged" => list(any()),
        "VersionId" => String.t()
      }
      
  """
  @type delete_object_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      completed_multipart_upload() :: %{
        "Parts" => list(completed_part()())
      }
      
  """
  @type completed_multipart_upload() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_parts_output() :: %{
        "AbortDate" => non_neg_integer(),
        "AbortRuleId" => String.t(),
        "Bucket" => String.t(),
        "ChecksumAlgorithm" => list(any()),
        "Initiator" => initiator(),
        "IsTruncated" => boolean(),
        "Key" => String.t(),
        "MaxParts" => integer(),
        "NextPartNumberMarker" => String.t(),
        "Owner" => owner(),
        "PartNumberMarker" => String.t(),
        "Parts" => list(part()()),
        "RequestCharged" => list(any()),
        "StorageClass" => list(any()),
        "UploadId" => String.t()
      }
      
  """
  @type list_parts_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      csv_output() :: %{
        "FieldDelimiter" => String.t(),
        "QuoteCharacter" => String.t(),
        "QuoteEscapeCharacter" => String.t(),
        "QuoteFields" => list(any()),
        "RecordDelimiter" => String.t()
      }
      
  """
  @type csv_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bucket_analytics_configuration_output() :: %{
        "AnalyticsConfiguration" => analytics_configuration()
      }
      
  """
  @type get_bucket_analytics_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      not_found() :: %{}
      
  """
  @type not_found() :: %{}

  @typedoc """

  ## Example:
      
      replication_rule_and_operator() :: %{
        "Prefix" => String.t(),
        "Tags" => list(tag()())
      }
      
  """
  @type replication_rule_and_operator() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_object_retention_request() :: %{
        optional("ExpectedBucketOwner") => String.t(),
        optional("RequestPayer") => list(any()),
        optional("VersionId") => String.t()
      }
      
  """
  @type get_object_retention_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      abort_multipart_upload_request() :: %{
        optional("ExpectedBucketOwner") => String.t(),
        optional("RequestPayer") => list(any()),
        required("UploadId") => String.t()
      }
      
  """
  @type abort_multipart_upload_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tiering() :: %{
        "AccessTier" => list(any()),
        "Days" => integer()
      }
      
  """
  @type tiering() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      head_object_request() :: %{
        optional("ChecksumMode") => list(any()),
        optional("ExpectedBucketOwner") => String.t(),
        optional("IfMatch") => String.t(),
        optional("IfModifiedSince") => non_neg_integer(),
        optional("IfNoneMatch") => String.t(),
        optional("IfUnmodifiedSince") => non_neg_integer(),
        optional("PartNumber") => integer(),
        optional("Range") => String.t(),
        optional("RequestPayer") => list(any()),
        optional("ResponseCacheControl") => String.t(),
        optional("ResponseContentDisposition") => String.t(),
        optional("ResponseContentEncoding") => String.t(),
        optional("ResponseContentLanguage") => String.t(),
        optional("ResponseContentType") => String.t(),
        optional("ResponseExpires") => non_neg_integer(),
        optional("SSECustomerAlgorithm") => String.t(),
        optional("SSECustomerKey") => String.t(),
        optional("SSECustomerKeyMD5") => String.t(),
        optional("VersionId") => String.t()
      }
      
  """
  @type head_object_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_public_access_block_request() :: %{
        optional("ExpectedBucketOwner") => String.t()
      }
      
  """
  @type get_public_access_block_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bucket_cors_request() :: %{
        optional("ExpectedBucketOwner") => String.t()
      }
      
  """
  @type get_bucket_cors_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      glacier_job_parameters() :: %{
        "Tier" => list(any())
      }
      
  """
  @type glacier_job_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      no_such_upload() :: %{}
      
  """
  @type no_such_upload() :: %{}

  @typedoc """

  ## Example:
      
      inventory_destination() :: %{
        "S3BucketDestination" => inventory_s3_bucket_destination()
      }
      
  """
  @type inventory_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_parts_request() :: %{
        optional("ExpectedBucketOwner") => String.t(),
        optional("MaxParts") => integer(),
        optional("PartNumberMarker") => String.t(),
        optional("RequestPayer") => list(any()),
        optional("SSECustomerAlgorithm") => String.t(),
        optional("SSECustomerKey") => String.t(),
        optional("SSECustomerKeyMD5") => String.t(),
        required("UploadId") => String.t()
      }
      
  """
  @type list_parts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      object_lock_legal_hold() :: %{
        "Status" => list(any())
      }
      
  """
  @type object_lock_legal_hold() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replication_time() :: %{
        "Status" => list(any()),
        "Time" => replication_time_value()
      }
      
  """
  @type replication_time() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bucket_metrics_configuration_output() :: %{
        "MetricsConfiguration" => metrics_configuration()
      }
      
  """
  @type get_bucket_metrics_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_directory_buckets_output() :: %{
        "Buckets" => list(bucket()()),
        "ContinuationToken" => String.t()
      }
      
  """
  @type list_directory_buckets_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      request_progress() :: %{
        "Enabled" => boolean()
      }
      
  """
  @type request_progress() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_bucket_lifecycle_configuration_request() :: %{
        optional("ChecksumAlgorithm") => list(any()),
        optional("ExpectedBucketOwner") => String.t(),
        optional("LifecycleConfiguration") => bucket_lifecycle_configuration()
      }
      
  """
  @type put_bucket_lifecycle_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      output_serialization() :: %{
        "CSV" => csv_output(),
        "JSON" => json_output()
      }
      
  """
  @type output_serialization() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_object_request() :: %{
        optional("ChecksumMode") => list(any()),
        optional("ExpectedBucketOwner") => String.t(),
        optional("IfMatch") => String.t(),
        optional("IfModifiedSince") => non_neg_integer(),
        optional("IfNoneMatch") => String.t(),
        optional("IfUnmodifiedSince") => non_neg_integer(),
        optional("PartNumber") => integer(),
        optional("Range") => String.t(),
        optional("RequestPayer") => list(any()),
        optional("ResponseCacheControl") => String.t(),
        optional("ResponseContentDisposition") => String.t(),
        optional("ResponseContentEncoding") => String.t(),
        optional("ResponseContentLanguage") => String.t(),
        optional("ResponseContentType") => String.t(),
        optional("ResponseExpires") => non_neg_integer(),
        optional("SSECustomerAlgorithm") => String.t(),
        optional("SSECustomerKey") => String.t(),
        optional("SSECustomerKeyMD5") => String.t(),
        optional("VersionId") => String.t()
      }
      
  """
  @type get_object_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metrics_and_operator() :: %{
        "AccessPointArn" => String.t(),
        "Prefix" => String.t(),
        "Tags" => list(tag()())
      }
      
  """
  @type metrics_and_operator() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bucket_website_output() :: %{
        "ErrorDocument" => error_document(),
        "IndexDocument" => index_document(),
        "RedirectAllRequestsTo" => redirect_all_requests_to(),
        "RoutingRules" => list(routing_rule()())
      }
      
  """
  @type get_bucket_website_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bucket_request_payment_output() :: %{
        "Payer" => list(any())
      }
      
  """
  @type get_bucket_request_payment_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bucket_lifecycle_configuration() :: %{
        "Rules" => list(lifecycle_rule()())
      }
      
  """
  @type bucket_lifecycle_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      routing_rule() :: %{
        "Condition" => condition(),
        "Redirect" => redirect()
      }
      
  """
  @type routing_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_object_state() :: %{
        "AccessTier" => list(any()),
        "StorageClass" => list(any())
      }
      
  """
  @type invalid_object_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      complete_multipart_upload_request() :: %{
        optional("ChecksumCRC32") => String.t(),
        optional("ChecksumCRC32C") => String.t(),
        optional("ChecksumSHA1") => String.t(),
        optional("ChecksumSHA256") => String.t(),
        optional("ExpectedBucketOwner") => String.t(),
        optional("MultipartUpload") => completed_multipart_upload(),
        optional("RequestPayer") => list(any()),
        optional("SSECustomerAlgorithm") => String.t(),
        optional("SSECustomerKey") => String.t(),
        optional("SSECustomerKeyMD5") => String.t(),
        required("UploadId") => String.t()
      }
      
  """
  @type complete_multipart_upload_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_bucket_website_request() :: %{
        optional("ChecksumAlgorithm") => list(any()),
        optional("ContentMD5") => String.t(),
        optional("ExpectedBucketOwner") => String.t(),
        required("WebsiteConfiguration") => website_configuration()
      }
      
  """
  @type put_bucket_website_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_request() :: %{
        "Days" => integer(),
        "Description" => String.t(),
        "GlacierJobParameters" => glacier_job_parameters(),
        "OutputLocation" => output_location(),
        "SelectParameters" => select_parameters(),
        "Tier" => list(any()),
        "Type" => list(any())
      }
      
  """
  @type restore_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      analytics_configuration() :: %{
        "Filter" => list(),
        "Id" => String.t(),
        "StorageClassAnalysis" => storage_class_analysis()
      }
      
  """
  @type analytics_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_bucket_replication_request() :: %{
        optional("ExpectedBucketOwner") => String.t()
      }
      
  """
  @type delete_bucket_replication_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_object_tagging_request() :: %{
        optional("ChecksumAlgorithm") => list(any()),
        optional("ContentMD5") => String.t(),
        optional("ExpectedBucketOwner") => String.t(),
        optional("RequestPayer") => list(any()),
        optional("VersionId") => String.t(),
        required("Tagging") => tagging()
      }
      
  """
  @type put_object_tagging_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bucket_replication_output() :: %{
        "ReplicationConfiguration" => replication_configuration()
      }
      
  """
  @type get_bucket_replication_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_bucket_intelligent_tiering_configurations_request() :: %{
        optional("ContinuationToken") => String.t()
      }
      
  """
  @type list_bucket_intelligent_tiering_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bucket_notification_configuration_request() :: %{
        optional("ExpectedBucketOwner") => String.t()
      }
      
  """
  @type get_bucket_notification_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_bucket_cors_request() :: %{
        optional("ExpectedBucketOwner") => String.t()
      }
      
  """
  @type delete_bucket_cors_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      object_already_in_active_tier_error() :: %{}
      
  """
  @type object_already_in_active_tier_error() :: %{}

  @typedoc """

  ## Example:
      
      get_object_lock_configuration_output() :: %{
        "ObjectLockConfiguration" => object_lock_configuration()
      }
      
  """
  @type get_object_lock_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_object_attributes_request() :: %{
        optional("ExpectedBucketOwner") => String.t(),
        optional("MaxParts") => integer(),
        optional("PartNumberMarker") => String.t(),
        optional("RequestPayer") => list(any()),
        optional("SSECustomerAlgorithm") => String.t(),
        optional("SSECustomerKey") => String.t(),
        optional("SSECustomerKeyMD5") => String.t(),
        optional("VersionId") => String.t(),
        required("ObjectAttributes") => list(list(any())())
      }
      
  """
  @type get_object_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      owner() :: %{
        "DisplayName" => String.t(),
        "ID" => String.t()
      }
      
  """
  @type owner() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metrics_configuration() :: %{
        "Filter" => list(),
        "Id" => String.t()
      }
      
  """
  @type metrics_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      accelerate_configuration() :: %{
        "Status" => list(any())
      }
      
  """
  @type accelerate_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      error_document() :: %{
        "Key" => String.t()
      }
      
  """
  @type error_document() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_bucket_inventory_configuration_request() :: %{
        optional("ExpectedBucketOwner") => String.t(),
        required("Id") => String.t(),
        required("InventoryConfiguration") => inventory_configuration()
      }
      
  """
  @type put_bucket_inventory_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lifecycle_rule_and_operator() :: %{
        "ObjectSizeGreaterThan" => float(),
        "ObjectSizeLessThan" => float(),
        "Prefix" => String.t(),
        "Tags" => list(tag()())
      }
      
  """
  @type lifecycle_rule_and_operator() :: %{String.t() => any()}

  @type abort_multipart_upload_errors() :: no_such_upload()

  @type copy_object_errors() :: object_not_in_active_tier_error()

  @type create_bucket_errors() :: bucket_already_exists() | bucket_already_owned_by_you()

  @type create_session_errors() :: no_such_bucket()

  @type get_object_errors() :: invalid_object_state() | no_such_key()

  @type get_object_acl_errors() :: no_such_key()

  @type get_object_attributes_errors() :: no_such_key()

  @type head_bucket_errors() :: not_found()

  @type head_object_errors() :: not_found()

  @type list_objects_errors() :: no_such_bucket()

  @type list_objects_v2_errors() :: no_such_bucket()

  @type put_object_acl_errors() :: no_such_key()

  @type restore_object_errors() :: object_already_in_active_tier_error()

  def metadata do
    %{
      api_version: "2006-03-01",
      content_type: "text/xml",
      credential_scope: nil,
      endpoint_prefix: "s3",
      global?: false,
      hostname: nil,
      protocol: "rest-xml",
      service_id: "S3",
      signature_version: "v4",
      signing_name: "s3",
      target_prefix: nil
    }
  end

  @doc """
  This operation aborts a multipart upload. After a multipart upload is aborted,
  no additional parts can be uploaded using that upload ID. The storage consumed
  by any previously uploaded parts will be freed. However, if any part uploads
  are currently in progress, those part uploads might or might not succeed. As a
  result, it might be necessary to abort a given multipart upload multiple times
  in order to completely free all storage consumed by all parts. To verify that
  all parts have been removed and prevent getting charged for the part storage,
  you should call the
  [ListParts](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListParts.html)
  API operation and ensure that the parts list is empty. **Directory buckets** -
  For directory buckets, you must make requests for this API operation to the
  Zonal endpoint. These endpoints support virtual-hosted-style requests in the
  format ```
  https://*bucket_name*.s3express-*az_id*.*region*.amazonaws.com/*key-name* ```
  . Path-style requests are not supported. For more information, see [Regional
  and Zonal
  endpoints](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-Regions-and-Zones.html)
  in the *Amazon S3 User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20AbortMultipartUpload&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The bucket name to which the upload was taking place.
  * `:key` (`t:string`) Key of the object for which the multipart upload was
  initiated.
  * `:upload_id` (`t:string`) Upload ID that identifies the multipart upload.

  ## Optional parameters:
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  * `:request_payer` (`t:enum["requester"]`)
  """

  @spec abort_multipart_upload(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, abort_multipart_upload_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, abort_multipart_upload_errors()}

  def abort_multipart_upload(%Client{} = client, bucket, key, upload_id, options \\ [])
      when is_binary(upload_id) do
    url_path =
      "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}?x-id=AbortMultipartUpload"

    # Validate optional parameters
    optional_params = [expected_bucket_owner: nil, request_payer: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :request_payer) do
        [{"x-amz-request-payer", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = [{"uploadId", upload_id}]

    # Optional query params
    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-request-charged", "RequestCharged"}]
      )

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-request-charged", "RequestCharged"}]
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:expected_bucket_owner, :request_payer])

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
  Completes a multipart upload by assembling previously uploaded parts. You first
  initiate the multipart upload and then upload all parts using the
  [UploadPart](https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html)
  operation or the
  [UploadPartCopy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPartCopy.html)
  operation. After successfully uploading all relevant parts of an upload, you
  call this `CompleteMultipartUpload` operation to complete the upload. Upon
  receiving this request, Amazon S3 concatenates all the parts in ascending
  order by part number to create a new object. In the CompleteMultipartUpload
  request, you must provide the parts list and ensure that the parts list is
  complete. The CompleteMultipartUpload API operation concatenates the parts
  that you provide in the list. For each part in the list, you must provide the
  `PartNumber` value and the `ETag` value that are returned after that part was
  uploaded. The processing of a CompleteMultipartUpload request could take
  several minutes to finalize. After Amazon S3 begins processing the request, it
  sends an HTTP response header that specifies a `200 OK` response. While
  processing is in progress, Amazon S3 periodically sends white space characters
  to keep the connection from timing out. A request could fail after the initial
  `200 OK` response has been sent. This means that a `200 OK` response can
  contain either a success or an error. The error response might be embedded in
  the `200 OK` response. If you call this API operation directly, make sure to
  design your application to parse the contents of the response and handle it
  appropriately. If you use Amazon Web Services SDKs, SDKs handle this
  condition. The SDKs detect the embedded error and apply error handling per
  your configuration settings (including automatically retrying the request as
  appropriate). If the condition persists, the SDKs throw an exception (or, for
  the SDKs that don't use exceptions, they return an error).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20CompleteMultipartUpload&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) Name of the bucket to which the multipart upload was
  initiated.
  * `:key` (`t:string`) Object key for which the multipart upload was initiated.
  * `:upload_id` (`t:string`) ID for the initiated multipart upload.
  * `:input` (`t:map | nil`):
    * `:multipart_upload` (`t:structure`) The container for the multipart upload
  request information.

  ## Optional parameters:
  * `:checksum_c_r_c32` (`t:string`) This header can be used as a data integrity
  check to verify that the data received is the same data that was originally
  sent. This header specifies the base64-encoded, 32-bit CRC32 checksum of the
  object. For more information, see Checking object integrity in the Amazon S3
  User Guide.
  * `:checksum_c_r_c32_c` (`t:string`) This header can be used as a data integrity
  check to verify that the data received is the same data that was originally
  sent. This header specifies the base64-encoded, 32-bit CRC32C checksum of
  the object. For more information, see Checking object integrity in the
  Amazon S3 User Guide.
  * `:checksum_s_h_a1` (`t:string`) This header can be used as a data integrity
  check to verify that the data received is the same data that was originally
  sent. This header specifies the base64-encoded, 160-bit SHA-1 digest of the
  object. For more information, see Checking object integrity in the Amazon S3
  User Guide.
  * `:checksum_s_h_a256` (`t:string`) This header can be used as a data integrity
  check to verify that the data received is the same data that was originally
  sent. This header specifies the base64-encoded, 256-bit SHA-256 digest of
  the object. For more information, see Checking object integrity in the
  Amazon S3 User Guide.
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  * `:request_payer` (`t:enum["requester"]`)
  * `:sse_customer_algorithm` (`t:string`) The server-side encryption (SSE)
  algorithm used to encrypt the object. This parameter is required only when
  the object was created using a checksum algorithm or if your bucket policy
  requires the use of SSE-C. For more information, see Protecting data using
  SSE-C keys in the Amazon S3 User Guide.
  * `:sse_customer_key` (`t:string`) The server-side encryption (SSE) customer
  managed key. This parameter is needed only when the object was created using
  a checksum algorithm. For more information, see Protecting data using SSE-C
  keys in the Amazon S3 User Guide.
  * `:sse_customer_key_md5` (`t:string`) The MD5 server-side encryption (SSE)
  customer managed key. This parameter is needed only when the object was
  created using a checksum algorithm. For more information, see Protecting
  data using SSE-C keys in the Amazon S3 User Guide.
  """

  @spec complete_multipart_upload(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          input :: map() | nil,
          Keyword.t()
        ) ::
          {:ok, complete_multipart_upload_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def complete_multipart_upload(%Client{} = client, bucket, key, upload_id, input, options \\ [])
      when (is_map(input) or is_nil(input)) and is_binary(upload_id) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}"

    # Validate optional parameters
    optional_params = [
      checksum_c_r_c32: nil,
      checksum_c_r_c32_c: nil,
      checksum_s_h_a1: nil,
      checksum_s_h_a256: nil,
      expected_bucket_owner: nil,
      request_payer: nil,
      sse_customer_algorithm: nil,
      sse_customer_key: nil,
      sse_customer_key_md5: nil
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
      if opt_val = Keyword.get(options, :sse_customer_key_md5) do
        [{"x-amz-server-side-encryption-customer-key-MD5", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :sse_customer_key) do
        [{"x-amz-server-side-encryption-customer-key", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :sse_customer_algorithm) do
        [{"x-amz-server-side-encryption-customer-algorithm", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :request_payer) do
        [{"x-amz-request-payer", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :checksum_s_h_a256) do
        [{"x-amz-checksum-sha256", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :checksum_s_h_a1) do
        [{"x-amz-checksum-sha1", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :checksum_c_r_c32_c) do
        [{"x-amz-checksum-crc32c", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :checksum_c_r_c32) do
        [{"x-amz-checksum-crc32", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = [{"uploadId", upload_id}]

    # Optional query params
    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amz-server-side-encryption-bucket-key-enabled", "BucketKeyEnabled"},
          {"x-amz-expiration", "Expiration"},
          {"x-amz-request-charged", "RequestCharged"},
          {"x-amz-server-side-encryption-aws-kms-key-id", "SSEKMSKeyId"},
          {"x-amz-server-side-encryption", "ServerSideEncryption"},
          {"x-amz-version-id", "VersionId"}
        ]
      )

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amz-server-side-encryption-bucket-key-enabled", "BucketKeyEnabled"},
          {"x-amz-expiration", "Expiration"},
          {"x-amz-request-charged", "RequestCharged"},
          {"x-amz-server-side-encryption-aws-kms-key-id", "SSEKMSKeyId"},
          {"x-amz-server-side-encryption", "ServerSideEncryption"},
          {"x-amz-version-id", "VersionId"}
        ]
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :checksum_c_r_c32,
        :checksum_c_r_c32_c,
        :checksum_s_h_a1,
        :checksum_s_h_a256,
        :expected_bucket_owner,
        :request_payer,
        :sse_customer_algorithm,
        :sse_customer_key,
        :sse_customer_key_md5
      ])

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates a copy of an object that is already stored in Amazon S3. You can store
  individual objects of up to 5 TB in Amazon S3. You create a copy of your
  object up to 5 GB in size in a single atomic action using this API. However,
  to copy an object greater than 5 GB, you must use the multipart upload Upload
  Part - Copy (UploadPartCopy) API. For more information, see [Copy Object Using
  the REST Multipart Upload
  API](https://docs.aws.amazon.com/AmazonS3/latest/dev/CopyingObjctsUsingRESTMPUapi.html).
  You can copy individual objects between general purpose buckets, between
  directory buckets, and between general purpose buckets and directory buckets.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20CopyObject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the destination bucket.
  * `:key` (`t:string`) The key of the destination object.
  * `:copy_source` (`t:string`) Specifies the source object for the copy
  operation. The source object can be up to 5 GB. If the source object is an
  object that was uploaded by using a multipart upload, the object copy will
  be a single part object after the source object is copied to the destination
  bucket.

  ## Optional parameters:
  * `:checksum_algorithm` (`t:enum["CRC32|CRC32C|SHA1|SHA256"]`) Indicates the
  algorithm that you want Amazon S3 to use to create the checksum for the
  object. For more information, see Checking object integrity in the Amazon S3
  User Guide.
  * `:copy_source_sse_customer_algorithm` (`t:string`) Specifies the algorithm to
  use when decrypting the source object (for example, AES256).
  * `:sse_customer_key` (`t:string`) Specifies the customer-provided encryption
  key for Amazon S3 to use in encrypting data. This value is used to store the
  object and then it is discarded. Amazon S3 does not store the encryption
  key. The key must be appropriate for use with the algorithm specified in the
  x-amz-server-side-encryption-customer-algorithm header.
  * `:grant_full_control` (`t:string`) Gives the grantee READ, READ_ACP, and
  WRITE_ACP permissions on the object.
  * `:acl`
  (`t:enum["authenticated_read|aws_exec_read|bucket_owner_full_control|bucket_owner_read|private|public_read|public_read_write"]`)
  The canned access control list (ACL) to apply to the object.
  * `:object_lock_retain_until_date` (`t:timestamp[date-time]`) The date and time
  when you want the Object Lock of the object copy to expire.
  * `:request_payer` (`t:enum["requester"]`)
  * `:bucket_key_enabled` (`t:boolean`) Specifies whether Amazon S3 should use an
  S3 Bucket Key for object encryption with server-side encryption using Key
  Management Service (KMS) keys (SSE-KMS). If a target object uses SSE-KMS,
  you can enable an S3 Bucket Key for the object.
  * `:content_type` (`t:string`) A standard MIME type that describes the format of
  the object data.
  * `:sse_customer_key_md5` (`t:string`) Specifies the 128-bit MD5 digest of the
  encryption key according to RFC 1321. Amazon S3 uses this header for a
  message integrity check to ensure that the encryption key was transmitted
  without error.
  * `:object_lock_legal_hold_status` (`t:enum["OFF|ON"]`) Specifies whether you
  want to apply a legal hold to the object copy.
  * `:tagging` (`t:string`) The tag-set for the object copy in the destination
  bucket. This value must be used in conjunction with the
  x-amz-tagging-directive if you choose REPLACE for the
  x-amz-tagging-directive. If you choose COPY for the x-amz-tagging-directive,
  you don't need to set the x-amz-tagging header, because the tag-set will be
  copied from the source object directly. The tag-set must be encoded as URL
  Query parameters.
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected
  destination bucket owner. If the account ID that you provide does not match
  the actual owner of the destination bucket, the request fails with the HTTP
  status code 403 Forbidden (access denied).
  * `:copy_source_sse_customer_key` (`t:string`) Specifies the customer-provided
  encryption key for Amazon S3 to use to decrypt the source object. The
  encryption key provided in this header must be the same one that was used
  when the source object was created.
  * `:website_redirect_location` (`t:string`) If the destination bucket is
  configured as a website, redirects requests for this object copy to another
  object in the same bucket or to an external URL. Amazon S3 stores the value
  of this header in the object metadata. This value is unique to each object
  and is not copied when using the x-amz-metadata-directive header. Instead,
  you may opt to provide this header in combination with the
  x-amz-metadata-directive header.
  * `:content_language` (`t:string`) The language the content is in.
  * `:sse_customer_algorithm` (`t:string`) Specifies the algorithm to use when
  encrypting the object (for example, AES256).
  * `:content_encoding` (`t:string`) Specifies what content encodings have been
  applied to the object and thus what decoding mechanisms must be applied to
  obtain the media-type referenced by the Content-Type header field.
  * `:copy_source_sse_customer_key_md5` (`t:string`) Specifies the 128-bit MD5
  digest of the encryption key according to RFC 1321. Amazon S3 uses this
  header for a message integrity check to ensure that the encryption key was
  transmitted without error.
  * `:copy_source_if_match` (`t:string`) Copies the object if its entity tag
  (ETag) matches the specified tag.
  * `:copy_source_if_unmodified_since` (`t:timestamp`) Copies the object if it
  hasn't been modified since the specified time.
  * `:expires` (`t:timestamp`) The date and time at which the object is no longer
  cacheable.
  * `:grant_write_a_c_p` (`t:string`) Allows grantee to write the ACL for the
  applicable object.
  * `:sse_kms_encryption_context` (`t:string`) Specifies the Amazon Web Services
  KMS Encryption Context to use for object encryption. The value of this
  header is a base64-encoded UTF-8 string holding JSON with the encryption
  context key-value pairs. This value must be explicitly added to specify
  encryption context for CopyObject requests.
  * `:cache_control` (`t:string`) Specifies the caching behavior along the
  request/reply chain.
  * `:expected_source_bucket_owner` (`t:string`) The account ID of the expected
  source bucket owner. If the account ID that you provide does not match the
  actual owner of the source bucket, the request fails with the HTTP status
  code 403 Forbidden (access denied).
  * `:metadata_directive` (`t:enum["COPY|REPLACE"]`) Specifies whether the
  metadata is copied from the source object or replaced with metadata that's
  provided in the request. When copying an object, you can preserve all
  metadata (the default) or specify new metadata. If this header isn’t
  specified, COPY is the default behavior.
  * `:storage_class`
  (`t:enum["DEEP_ARCHIVE|EXPRESS_ONEZONE|GLACIER|GLACIER_IR|INTELLIGENT_TIERING|ONEZONE_IA|OUTPOSTS|REDUCED_REDUNDANCY|SNOW|STANDARD|STANDARD_IA"]`)
  If the x-amz-storage-class header is not used, the copied object will be
  stored in the STANDARD Storage Class by default. The STANDARD storage class
  provides high durability and high availability. Depending on performance
  needs, you can specify a different Storage Class.
  * `:copy_source_if_modified_since` (`t:timestamp`) Copies the object if it has
  been modified since the specified time.
  * `:grant_read` (`t:string`) Allows grantee to read the object data and its
  metadata.
  * `:tagging_directive` (`t:enum["COPY|REPLACE"]`) Specifies whether the object
  tag-set is copied from the source object or replaced with the tag-set that's
  provided in the request.
  * `:object_lock_mode` (`t:enum["COMPLIANCE|GOVERNANCE"]`) The Object Lock mode
  that you want to apply to the object copy.
  * `:content_disposition` (`t:string`) Specifies presentational information for
  the object. Indicates whether an object should be displayed in a web browser
  or downloaded as a file. It allows specifying the desired filename for the
  downloaded file.
  * `:server_side_encryption` (`t:enum["AES256|aws_kms|aws_kms_dsse"]`) The
  server-side encryption algorithm used when storing this object in Amazon S3
  (for example, AES256, aws:kms, aws:kms:dsse). Unrecognized or unsupported
  values won’t write a destination object and will receive a 400 Bad Request
  response.
  * `:copy_source_if_none_match` (`t:string`) Copies the object if its entity tag
  (ETag) is different than the specified ETag.
  * `:sse_kms_key_id` (`t:string`) Specifies the KMS ID (Key ID, Key ARN, or Key
  Alias) to use for object encryption. All GET and PUT requests for an object
  protected by KMS will fail if they're not made via SSL or using SigV4. For
  information about configuring any of the officially supported Amazon Web
  Services SDKs and Amazon Web Services CLI, see Specifying the Signature
  Version in Request Authentication in the Amazon S3 User Guide.
  * `:grant_read_a_c_p` (`t:string`) Allows grantee to read the object ACL.
  """

  @spec copy_object(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, copy_object_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, copy_object_errors()}

  def copy_object(%Client{} = client, bucket, key, copy_source, options \\ [])
      when is_binary(copy_source) do
    url_path =
      "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}?x-id=CopyObject"

    # Validate optional parameters
    optional_params = [
      checksum_algorithm: nil,
      copy_source_sse_customer_algorithm: nil,
      sse_customer_key: nil,
      grant_full_control: nil,
      acl: nil,
      object_lock_retain_until_date: nil,
      request_payer: nil,
      bucket_key_enabled: nil,
      content_type: nil,
      sse_customer_key_md5: nil,
      object_lock_legal_hold_status: nil,
      tagging: nil,
      expected_bucket_owner: nil,
      copy_source_sse_customer_key: nil,
      website_redirect_location: nil,
      content_language: nil,
      sse_customer_algorithm: nil,
      content_encoding: nil,
      copy_source_sse_customer_key_md5: nil,
      copy_source_if_match: nil,
      copy_source_if_unmodified_since: nil,
      expires: nil,
      grant_write_a_c_p: nil,
      sse_kms_encryption_context: nil,
      cache_control: nil,
      expected_source_bucket_owner: nil,
      metadata_directive: nil,
      storage_class: nil,
      copy_source_if_modified_since: nil,
      grant_read: nil,
      tagging_directive: nil,
      object_lock_mode: nil,
      content_disposition: nil,
      server_side_encryption: nil,
      copy_source_if_none_match: nil,
      sse_kms_key_id: nil,
      grant_read_a_c_p: nil
    ]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-copy-source", copy_source}]

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :grant_read_a_c_p) do
        [{"x-amz-grant-read-acp", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :sse_kms_key_id) do
        [{"x-amz-server-side-encryption-aws-kms-key-id", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :copy_source_if_none_match) do
        [{"x-amz-copy-source-if-none-match", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :server_side_encryption) do
        [{"x-amz-server-side-encryption", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :content_disposition) do
        [{"Content-Disposition", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :object_lock_mode) do
        [{"x-amz-object-lock-mode", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :tagging_directive) do
        [{"x-amz-tagging-directive", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :grant_read) do
        [{"x-amz-grant-read", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :copy_source_if_modified_since) do
        [{"x-amz-copy-source-if-modified-since", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :storage_class) do
        [{"x-amz-storage-class", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :metadata_directive) do
        [{"x-amz-metadata-directive", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :expected_source_bucket_owner) do
        [{"x-amz-source-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :cache_control) do
        [{"Cache-Control", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :sse_kms_encryption_context) do
        [{"x-amz-server-side-encryption-context", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :grant_write_a_c_p) do
        [{"x-amz-grant-write-acp", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :expires) do
        [{"Expires", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :copy_source_if_unmodified_since) do
        [{"x-amz-copy-source-if-unmodified-since", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :copy_source_if_match) do
        [{"x-amz-copy-source-if-match", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :copy_source_sse_customer_key_md5) do
        [{"x-amz-copy-source-server-side-encryption-customer-key-MD5", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :content_encoding) do
        [{"Content-Encoding", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :sse_customer_algorithm) do
        [{"x-amz-server-side-encryption-customer-algorithm", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :content_language) do
        [{"Content-Language", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :website_redirect_location) do
        [{"x-amz-website-redirect-location", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :copy_source_sse_customer_key) do
        [{"x-amz-copy-source-server-side-encryption-customer-key", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :tagging) do
        [{"x-amz-tagging", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :object_lock_legal_hold_status) do
        [{"x-amz-object-lock-legal-hold", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :sse_customer_key_md5) do
        [{"x-amz-server-side-encryption-customer-key-MD5", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :content_type) do
        [{"Content-Type", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :bucket_key_enabled) do
        [{"x-amz-server-side-encryption-bucket-key-enabled", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :request_payer) do
        [{"x-amz-request-payer", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :object_lock_retain_until_date) do
        [{"x-amz-object-lock-retain-until-date", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :acl) do
        [{"x-amz-acl", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :grant_full_control) do
        [{"x-amz-grant-full-control", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :sse_customer_key) do
        [{"x-amz-server-side-encryption-customer-key", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :copy_source_sse_customer_algorithm) do
        [{"x-amz-copy-source-server-side-encryption-customer-algorithm", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :checksum_algorithm) do
        [{"x-amz-checksum-algorithm", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params
    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amz-server-side-encryption-bucket-key-enabled", "BucketKeyEnabled"},
          {"x-amz-copy-source-version-id", "CopySourceVersionId"},
          {"x-amz-expiration", "Expiration"},
          {"x-amz-request-charged", "RequestCharged"},
          {"x-amz-server-side-encryption-customer-algorithm", "SSECustomerAlgorithm"},
          {"x-amz-server-side-encryption-customer-key-MD5", "SSECustomerKeyMD5"},
          {"x-amz-server-side-encryption-context", "SSEKMSEncryptionContext"},
          {"x-amz-server-side-encryption-aws-kms-key-id", "SSEKMSKeyId"},
          {"x-amz-server-side-encryption", "ServerSideEncryption"},
          {"x-amz-version-id", "VersionId"}
        ]
      )

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amz-server-side-encryption-bucket-key-enabled", "BucketKeyEnabled"},
          {"x-amz-copy-source-version-id", "CopySourceVersionId"},
          {"x-amz-expiration", "Expiration"},
          {"x-amz-request-charged", "RequestCharged"},
          {"x-amz-server-side-encryption-customer-algorithm", "SSECustomerAlgorithm"},
          {"x-amz-server-side-encryption-customer-key-MD5", "SSECustomerKeyMD5"},
          {"x-amz-server-side-encryption-context", "SSEKMSEncryptionContext"},
          {"x-amz-server-side-encryption-aws-kms-key-id", "SSEKMSKeyId"},
          {"x-amz-server-side-encryption", "ServerSideEncryption"},
          {"x-amz-version-id", "VersionId"}
        ]
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :checksum_algorithm,
        :copy_source_sse_customer_algorithm,
        :sse_customer_key,
        :grant_full_control,
        :acl,
        :object_lock_retain_until_date,
        :request_payer,
        :bucket_key_enabled,
        :content_type,
        :sse_customer_key_md5,
        :object_lock_legal_hold_status,
        :tagging,
        :expected_bucket_owner,
        :copy_source_sse_customer_key,
        :website_redirect_location,
        :content_language,
        :sse_customer_algorithm,
        :content_encoding,
        :copy_source_sse_customer_key_md5,
        :copy_source_if_match,
        :copy_source_if_unmodified_since,
        :expires,
        :grant_write_a_c_p,
        :sse_kms_encryption_context,
        :cache_control,
        :expected_source_bucket_owner,
        :metadata_directive,
        :storage_class,
        :copy_source_if_modified_since,
        :grant_read,
        :tagging_directive,
        :object_lock_mode,
        :content_disposition,
        :server_side_encryption,
        :copy_source_if_none_match,
        :sse_kms_key_id,
        :grant_read_a_c_p
      ])

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This action creates an Amazon S3 bucket. To create an Amazon S3 on Outposts
  bucket, see [ `CreateBucket`
  ](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateBucket.html).
  Creates a new S3 bucket. To create a bucket, you must set up Amazon S3 and
  have a valid Amazon Web Services Access Key ID to authenticate requests.
  Anonymous requests are never allowed to create buckets. By creating the
  bucket, you become the bucket owner. There are two types of buckets: general
  purpose buckets and directory buckets. For more information about these bucket
  types, see [Creating, configuring, and working with Amazon S3
  buckets](https://docs.aws.amazon.com/AmazonS3/latest/userguide/creating-buckets-s3.html)
  in the *Amazon S3 User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20CreateBucket&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the bucket to create.
  * `:input` (`t:map | nil`):
    * `:create_bucket_configuration` (`t:structure`) The configuration information
  for the bucket.

  ## Optional parameters:
  * `:acl` (`t:enum["authenticated_read|private|public_read|public_read_write"]`)
  The canned ACL to apply to the bucket.
  * `:grant_full_control` (`t:string`) Allows grantee the read, write, read ACP,
  and write ACP permissions on the bucket.
  * `:grant_read` (`t:string`) Allows grantee to list the objects in the bucket.
  * `:grant_read_a_c_p` (`t:string`) Allows grantee to read the bucket ACL.
  * `:grant_write` (`t:string`) Allows grantee to create new objects in the
  bucket.
  * `:grant_write_a_c_p` (`t:string`) Allows grantee to write the ACL for the
  applicable bucket.
  * `:object_lock_enabled_for_bucket` (`t:boolean`) Specifies whether you want S3
  Object Lock to be enabled for the new bucket.
  * `:object_ownership`
  (`t:enum["BucketOwnerEnforced|BucketOwnerPreferred|ObjectWriter"]`)
  """

  @spec create_bucket(AWS.Client.t(), String.t(), input :: map() | nil, Keyword.t()) ::
          {:ok, create_bucket_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_bucket_errors()}

  def create_bucket(%Client{} = client, bucket, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}"

    # Validate optional parameters
    optional_params = [
      acl: nil,
      grant_full_control: nil,
      grant_read: nil,
      grant_read_a_c_p: nil,
      grant_write: nil,
      grant_write_a_c_p: nil,
      object_lock_enabled_for_bucket: nil,
      object_ownership: nil
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
      if opt_val = Keyword.get(options, :object_ownership) do
        [{"x-amz-object-ownership", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :object_lock_enabled_for_bucket) do
        [{"x-amz-bucket-object-lock-enabled", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :grant_write_a_c_p) do
        [{"x-amz-grant-write-acp", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :grant_write) do
        [{"x-amz-grant-write", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :grant_read_a_c_p) do
        [{"x-amz-grant-read-acp", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :grant_read) do
        [{"x-amz-grant-read", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :grant_full_control) do
        [{"x-amz-grant-full-control", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :acl) do
        [{"x-amz-acl", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params
    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Location", "Location"}]
      )

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Location", "Location"}]
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :acl,
        :grant_full_control,
        :grant_read,
        :grant_read_a_c_p,
        :grant_write,
        :grant_write_a_c_p,
        :object_lock_enabled_for_bucket,
        :object_ownership
      ])

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This action initiates a multipart upload and returns an upload ID. This upload
  ID is used to associate all of the parts in the specific multipart upload. You
  specify this upload ID in each of your subsequent upload part requests (see
  [UploadPart](https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html)).
  You also include this upload ID in the final request to either complete or
  abort the multipart upload request. For more information about multipart
  uploads, see [Multipart Upload
  Overview](https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html) in
  the *Amazon S3 User Guide*. After you initiate a multipart upload and upload
  one or more parts, to stop being charged for storing the uploaded parts, you
  must either complete or abort the multipart upload. Amazon S3 frees up the
  space used to store the parts and stops charging you for storing them only
  after you either complete or abort a multipart upload. If you have configured
  a lifecycle rule to abort incomplete multipart uploads, the created multipart
  upload must be completed within the number of days specified in the bucket
  lifecycle configuration. Otherwise, the incomplete multipart upload becomes
  eligible for an abort action and Amazon S3 aborts the multipart upload. For
  more information, see [Aborting Incomplete Multipart Uploads Using a Bucket
  Lifecycle
  Configuration](https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20CreateMultipartUpload&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the bucket where the multipart upload is
  initiated and where the object is uploaded.
  * `:key` (`t:string`) Object key for which the multipart upload is to be
  initiated.

  ## Optional parameters:
  * `:acl`
  (`t:enum["authenticated_read|aws_exec_read|bucket_owner_full_control|bucket_owner_read|private|public_read|public_read_write"]`)
  The canned ACL to apply to the object. Amazon S3 supports a set of
  predefined ACLs, known as canned ACLs. Each canned ACL has a predefined set
  of grantees and permissions. For more information, see Canned ACL in the
  Amazon S3 User Guide.
  * `:bucket_key_enabled` (`t:boolean`) Specifies whether Amazon S3 should use an
  S3 Bucket Key for object encryption with server-side encryption using Key
  Management Service (KMS) keys (SSE-KMS). Setting this header to true causes
  Amazon S3 to use an S3 Bucket Key for object encryption with SSE-KMS.
  * `:cache_control` (`t:string`) Specifies caching behavior along the
  request/reply chain.
  * `:checksum_algorithm` (`t:enum["CRC32|CRC32C|SHA1|SHA256"]`) Indicates the
  algorithm that you want Amazon S3 to use to create the checksum for the
  object. For more information, see Checking object integrity in the Amazon S3
  User Guide.
  * `:content_disposition` (`t:string`) Specifies presentational information for
  the object.
  * `:content_encoding` (`t:string`) Specifies what content encodings have been
  applied to the object and thus what decoding mechanisms must be applied to
  obtain the media-type referenced by the Content-Type header field.
  * `:content_language` (`t:string`) The language that the content is in.
  * `:content_type` (`t:string`) A standard MIME type describing the format of the
  object data.
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  * `:expires` (`t:timestamp`) The date and time at which the object is no longer
  cacheable.
  * `:grant_full_control` (`t:string`) Specify access permissions explicitly to
  give the grantee READ, READ_ACP, and WRITE_ACP permissions on the object.
  * `:grant_read` (`t:string`) Specify access permissions explicitly to allow
  grantee to read the object data and its metadata.
  * `:grant_read_a_c_p` (`t:string`) Specify access permissions explicitly to
  allows grantee to read the object ACL.
  * `:grant_write_a_c_p` (`t:string`) Specify access permissions explicitly to
  allows grantee to allow grantee to write the ACL for the applicable object.
  * `:object_lock_legal_hold_status` (`t:enum["OFF|ON"]`) Specifies whether you
  want to apply a legal hold to the uploaded object.
  * `:object_lock_mode` (`t:enum["COMPLIANCE|GOVERNANCE"]`) Specifies the Object
  Lock mode that you want to apply to the uploaded object.
  * `:object_lock_retain_until_date` (`t:timestamp[date-time]`) Specifies the date
  and time when you want the Object Lock to expire.
  * `:request_payer` (`t:enum["requester"]`)
  * `:sse_customer_algorithm` (`t:string`) Specifies the algorithm to use when
  encrypting the object (for example, AES256).
  * `:sse_customer_key` (`t:string`) Specifies the customer-provided encryption
  key for Amazon S3 to use in encrypting data. This value is used to store the
  object and then it is discarded; Amazon S3 does not store the encryption
  key. The key must be appropriate for use with the algorithm specified in the
  x-amz-server-side-encryption-customer-algorithm header.
  * `:sse_customer_key_md5` (`t:string`) Specifies the 128-bit MD5 digest of the
  customer-provided encryption key according to RFC 1321. Amazon S3 uses this
  header for a message integrity check to ensure that the encryption key was
  transmitted without error.
  * `:sse_kms_encryption_context` (`t:string`) Specifies the Amazon Web Services
  KMS Encryption Context to use for object encryption. The value of this
  header is a base64-encoded UTF-8 string holding JSON with the encryption
  context key-value pairs.
  * `:sse_kms_key_id` (`t:string`) Specifies the ID (Key ID, Key ARN, or Key
  Alias) of the symmetric encryption customer managed key to use for object
  encryption.
  * `:server_side_encryption` (`t:enum["AES256|aws_kms|aws_kms_dsse"]`) The
  server-side encryption algorithm used when you store this object in Amazon
  S3 (for example, AES256, aws:kms).
  * `:storage_class`
  (`t:enum["DEEP_ARCHIVE|EXPRESS_ONEZONE|GLACIER|GLACIER_IR|INTELLIGENT_TIERING|ONEZONE_IA|OUTPOSTS|REDUCED_REDUNDANCY|SNOW|STANDARD|STANDARD_IA"]`)
  By default, Amazon S3 uses the STANDARD Storage Class to store newly created
  objects. The STANDARD storage class provides high durability and high
  availability. Depending on performance needs, you can specify a different
  Storage Class. For more information, see Storage Classes in the Amazon S3
  User Guide.
  * `:tagging` (`t:string`) The tag-set for the object. The tag-set must be
  encoded as URL Query parameters.
  * `:website_redirect_location` (`t:string`) If the bucket is configured as a
  website, redirects requests for this object to another object in the same
  bucket or to an external URL. Amazon S3 stores the value of this header in
  the object metadata.
  """

  @spec create_multipart_upload(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, create_multipart_upload_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def create_multipart_upload(%Client{} = client, bucket, key, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}?uploads"

    # Validate optional parameters
    optional_params = [
      acl: nil,
      bucket_key_enabled: nil,
      cache_control: nil,
      checksum_algorithm: nil,
      content_disposition: nil,
      content_encoding: nil,
      content_language: nil,
      content_type: nil,
      expected_bucket_owner: nil,
      expires: nil,
      grant_full_control: nil,
      grant_read: nil,
      grant_read_a_c_p: nil,
      grant_write_a_c_p: nil,
      object_lock_legal_hold_status: nil,
      object_lock_mode: nil,
      object_lock_retain_until_date: nil,
      request_payer: nil,
      sse_customer_algorithm: nil,
      sse_customer_key: nil,
      sse_customer_key_md5: nil,
      sse_kms_encryption_context: nil,
      sse_kms_key_id: nil,
      server_side_encryption: nil,
      storage_class: nil,
      tagging: nil,
      website_redirect_location: nil
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
      if opt_val = Keyword.get(options, :website_redirect_location) do
        [{"x-amz-website-redirect-location", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :tagging) do
        [{"x-amz-tagging", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :storage_class) do
        [{"x-amz-storage-class", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :server_side_encryption) do
        [{"x-amz-server-side-encryption", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :sse_kms_key_id) do
        [{"x-amz-server-side-encryption-aws-kms-key-id", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :sse_kms_encryption_context) do
        [{"x-amz-server-side-encryption-context", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :sse_customer_key_md5) do
        [{"x-amz-server-side-encryption-customer-key-MD5", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :sse_customer_key) do
        [{"x-amz-server-side-encryption-customer-key", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :sse_customer_algorithm) do
        [{"x-amz-server-side-encryption-customer-algorithm", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :request_payer) do
        [{"x-amz-request-payer", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :object_lock_retain_until_date) do
        [{"x-amz-object-lock-retain-until-date", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :object_lock_mode) do
        [{"x-amz-object-lock-mode", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :object_lock_legal_hold_status) do
        [{"x-amz-object-lock-legal-hold", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :grant_write_a_c_p) do
        [{"x-amz-grant-write-acp", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :grant_read_a_c_p) do
        [{"x-amz-grant-read-acp", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :grant_read) do
        [{"x-amz-grant-read", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :grant_full_control) do
        [{"x-amz-grant-full-control", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :expires) do
        [{"Expires", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :content_type) do
        [{"Content-Type", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :content_language) do
        [{"Content-Language", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :content_encoding) do
        [{"Content-Encoding", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :content_disposition) do
        [{"Content-Disposition", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :checksum_algorithm) do
        [{"x-amz-checksum-algorithm", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :cache_control) do
        [{"Cache-Control", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :bucket_key_enabled) do
        [{"x-amz-server-side-encryption-bucket-key-enabled", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :acl) do
        [{"x-amz-acl", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params
    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amz-abort-date", "AbortDate"},
          {"x-amz-abort-rule-id", "AbortRuleId"},
          {"x-amz-server-side-encryption-bucket-key-enabled", "BucketKeyEnabled"},
          {"x-amz-checksum-algorithm", "ChecksumAlgorithm"},
          {"x-amz-request-charged", "RequestCharged"},
          {"x-amz-server-side-encryption-customer-algorithm", "SSECustomerAlgorithm"},
          {"x-amz-server-side-encryption-customer-key-MD5", "SSECustomerKeyMD5"},
          {"x-amz-server-side-encryption-context", "SSEKMSEncryptionContext"},
          {"x-amz-server-side-encryption-aws-kms-key-id", "SSEKMSKeyId"},
          {"x-amz-server-side-encryption", "ServerSideEncryption"}
        ]
      )

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amz-abort-date", "AbortDate"},
          {"x-amz-abort-rule-id", "AbortRuleId"},
          {"x-amz-server-side-encryption-bucket-key-enabled", "BucketKeyEnabled"},
          {"x-amz-checksum-algorithm", "ChecksumAlgorithm"},
          {"x-amz-request-charged", "RequestCharged"},
          {"x-amz-server-side-encryption-customer-algorithm", "SSECustomerAlgorithm"},
          {"x-amz-server-side-encryption-customer-key-MD5", "SSECustomerKeyMD5"},
          {"x-amz-server-side-encryption-context", "SSEKMSEncryptionContext"},
          {"x-amz-server-side-encryption-aws-kms-key-id", "SSEKMSKeyId"},
          {"x-amz-server-side-encryption", "ServerSideEncryption"}
        ]
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :acl,
        :bucket_key_enabled,
        :cache_control,
        :checksum_algorithm,
        :content_disposition,
        :content_encoding,
        :content_language,
        :content_type,
        :expected_bucket_owner,
        :expires,
        :grant_full_control,
        :grant_read,
        :grant_read_a_c_p,
        :grant_write_a_c_p,
        :object_lock_legal_hold_status,
        :object_lock_mode,
        :object_lock_retain_until_date,
        :request_payer,
        :sse_customer_algorithm,
        :sse_customer_key,
        :sse_customer_key_md5,
        :sse_kms_encryption_context,
        :sse_kms_key_id,
        :server_side_encryption,
        :storage_class,
        :tagging,
        :website_redirect_location
      ])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates a session that establishes temporary security credentials to support
  fast authentication and authorization for the Zonal endpoint APIs on directory
  buckets. For more information about Zonal endpoint APIs that include the
  Availability Zone in the request endpoint, see [S3 Express One Zone
  APIs](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-APIs.html)
  in the *Amazon S3 User Guide*. To make Zonal endpoint API requests on a
  directory bucket, use the `CreateSession` API operation. Specifically, you
  grant `s3express:CreateSession` permission to a bucket in a bucket policy or
  an IAM identity-based policy. Then, you use IAM credentials to make the
  `CreateSession` API request on the bucket, which returns temporary security
  credentials that include the access key ID, secret access key, session token,
  and expiration. These credentials have associated permissions to access the
  Zonal endpoint APIs. After the session is created, you don’t need to use other
  policies to grant permissions to each Zonal endpoint API individually.
  Instead, in your Zonal endpoint API requests, you sign your requests by
  applying the temporary security credentials of the session to the request
  headers and following the SigV4 protocol for authentication. You also apply
  the session token to the `x-amz-s3session-token` request header for
  authorization. Temporary security credentials are scoped to the bucket and
  expire after 5 minutes. After the expiration time, any calls that you make
  with those credentials will fail. You must use IAM credentials again to make a
  `CreateSession` API request that generates a new set of temporary credentials
  for use. Temporary credentials cannot be extended or refreshed beyond the
  original specified interval. If you use Amazon Web Services SDKs, SDKs handle
  the session token refreshes automatically to avoid service interruptions when
  a session expires. We recommend that you use the Amazon Web Services SDKs to
  initiate and manage requests to the CreateSession API. For more information,
  see [Performance guidelines and design
  patterns](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-optimizing-performance-guidelines-design-patterns.html#s3-express-optimizing-performance-session-authentication)
  in the *Amazon S3 User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20CreateSession&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the bucket that you create a session for.

  ## Optional parameters:
  * `:session_mode` (`t:enum["ReadOnly|ReadWrite"]`) Specifies the mode of the
  session that will be created, either ReadWrite or ReadOnly. By default, a
  ReadWrite session is created. A ReadWrite session is capable of executing
  all the Zonal endpoint APIs on a directory bucket. A ReadOnly session is
  constrained to execute the following Zonal endpoint APIs: GetObject,
  HeadObject, ListObjectsV2, GetObjectAttributes, ListParts, and
  ListMultipartUploads.
  """

  @spec create_session(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_session_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_session_errors()}

  def create_session(%Client{} = client, bucket, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?session"

    # Validate optional parameters
    optional_params = [session_mode: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :session_mode) do
        [{"x-amz-create-session-mode", opt_val} | headers]
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
      |> Keyword.drop([:session_mode])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Deletes the S3 bucket. All objects (including all object versions and delete
  markers) in the bucket must be deleted before the bucket itself can be
  deleted. **Directory buckets** - If multipart uploads in a directory bucket
  are in progress, you can't delete the bucket until all the in-progress
  multipart uploads are aborted or completed. **Directory buckets ** - For
  directory buckets, you must make requests for this API operation to the
  Regional endpoint. These endpoints support path-style requests in the format
  ``` https://s3express-control.*region_code*.amazonaws.com/*bucket-name* ``` .
  Virtual-hosted-style requests aren't supported. For more information, see
  [Regional and Zonal
  endpoints](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-Regions-and-Zones.html)
  in the *Amazon S3 User Guide*. ## Definitions

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20DeleteBucket&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) Specifies the bucket being deleted.

  ## Optional parameters:
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec delete_bucket(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}

  def delete_bucket(%Client{} = client, bucket, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}"

    # Validate optional parameters
    optional_params = [expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
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
      |> Keyword.drop([:expected_bucket_owner])

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
  This operation is not supported by directory buckets. Deletes an analytics
  configuration for the bucket (specified by the analytics configuration ID).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20DeleteBucketAnalyticsConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the bucket from which an analytics
  configuration is deleted.
  * `:id` (`t:string`) The ID that identifies the analytics configuration.

  ## Optional parameters:
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec delete_bucket_analytics_configuration(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}

  def delete_bucket_analytics_configuration(%Client{} = client, bucket, id, options \\ [])
      when is_binary(id) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?analytics"

    # Validate optional parameters
    optional_params = [expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = [{"id", id}]

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:expected_bucket_owner])

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
  This operation is not supported by directory buckets. Deletes the `cors`
  configuration information set for the bucket.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20DeleteBucketCors&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) Specifies the bucket whose cors configuration is being
  deleted.

  ## Optional parameters:
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec delete_bucket_cors(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}

  def delete_bucket_cors(%Client{} = client, bucket, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?cors"

    # Validate optional parameters
    optional_params = [expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
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
      |> Keyword.drop([:expected_bucket_owner])

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
  This operation is not supported by directory buckets. This implementation of the
  DELETE action resets the default encryption for the bucket as server-side
  encryption with Amazon S3 managed keys (SSE-S3). For information about the
  bucket default encryption feature, see [Amazon S3 Bucket Default
  Encryption](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html)
  in the *Amazon S3 User Guide*. To use this operation, you must have
  permissions to perform the `s3:PutEncryptionConfiguration` action. The bucket
  owner has this permission by default. The bucket owner can grant this
  permission to others. For more information about permissions, see [Permissions
  Related to Bucket Subresource
  Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
  and [Managing Access Permissions to your Amazon S3
  Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html)
  in the *Amazon S3 User Guide*. The following operations are related to
  `DeleteBucketEncryption`:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20DeleteBucketEncryption&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the bucket containing the server-side
  encryption configuration to delete.

  ## Optional parameters:
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec delete_bucket_encryption(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}

  def delete_bucket_encryption(%Client{} = client, bucket, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?encryption"

    # Validate optional parameters
    optional_params = [expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
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
      |> Keyword.drop([:expected_bucket_owner])

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
  This operation is not supported by directory buckets. Deletes the S3
  Intelligent-Tiering configuration from the specified bucket.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20DeleteBucketIntelligentTieringConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the Amazon S3 bucket whose configuration
  you want to modify or retrieve.
  * `:id` (`t:string`) The ID used to identify the S3 Intelligent-Tiering
  configuration.

  ## Optional parameters:
  """

  @spec delete_bucket_intelligent_tiering_configuration(
          AWS.Client.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}

  def delete_bucket_intelligent_tiering_configuration(
        %Client{} = client,
        bucket,
        id,
        options \\ []
      )
      when is_binary(id) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?intelligent-tiering"

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
    query_params = [{"id", id}]

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
  This operation is not supported by directory buckets. Deletes an inventory
  configuration (identified by the inventory ID) from the bucket.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20DeleteBucketInventoryConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the bucket containing the inventory
  configuration to delete.
  * `:id` (`t:string`) The ID used to identify the inventory configuration.

  ## Optional parameters:
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec delete_bucket_inventory_configuration(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}

  def delete_bucket_inventory_configuration(%Client{} = client, bucket, id, options \\ [])
      when is_binary(id) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?inventory"

    # Validate optional parameters
    optional_params = [expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = [{"id", id}]

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:expected_bucket_owner])

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
  This operation is not supported by directory buckets. Deletes the lifecycle
  configuration from the specified bucket. Amazon S3 removes all the lifecycle
  configuration rules in the lifecycle subresource associated with the bucket.
  Your objects never expire, and Amazon S3 no longer automatically deletes any
  objects on the basis of rules contained in the deleted lifecycle
  configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20DeleteBucketLifecycle&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The bucket name of the lifecycle to delete.

  ## Optional parameters:
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec delete_bucket_lifecycle(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}

  def delete_bucket_lifecycle(%Client{} = client, bucket, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?lifecycle"

    # Validate optional parameters
    optional_params = [expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
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
      |> Keyword.drop([:expected_bucket_owner])

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
  This operation is not supported by directory buckets. Deletes a metrics
  configuration for the Amazon CloudWatch request metrics (specified by the
  metrics configuration ID) from the bucket. Note that this doesn't include the
  daily storage metrics.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20DeleteBucketMetricsConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the bucket containing the metrics
  configuration to delete.
  * `:id` (`t:string`) The ID used to identify the metrics configuration. The ID
  has a 64 character limit and can only contain letters, numbers, periods,
  dashes, and underscores.

  ## Optional parameters:
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec delete_bucket_metrics_configuration(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}

  def delete_bucket_metrics_configuration(%Client{} = client, bucket, id, options \\ [])
      when is_binary(id) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?metrics"

    # Validate optional parameters
    optional_params = [expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = [{"id", id}]

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:expected_bucket_owner])

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
  This operation is not supported by directory buckets. Removes
  `OwnershipControls` for an Amazon S3 bucket. To use this operation, you must
  have the `s3:PutBucketOwnershipControls` permission. For more information
  about Amazon S3 permissions, see [Specifying Permissions in a
  Policy](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html).
  For information about Amazon S3 Object Ownership, see [Using Object
  Ownership](https://docs.aws.amazon.com/AmazonS3/latest/dev/about-object-ownership.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20DeleteBucketOwnershipControls&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The Amazon S3 bucket whose OwnershipControls you want
  to delete.

  ## Optional parameters:
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec delete_bucket_ownership_controls(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}

  def delete_bucket_ownership_controls(%Client{} = client, bucket, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?ownershipControls"

    # Validate optional parameters
    optional_params = [expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
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
      |> Keyword.drop([:expected_bucket_owner])

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
  Deletes the policy of a specified bucket. **Directory buckets ** - For directory
  buckets, you must make requests for this API operation to the Regional
  endpoint. These endpoints support path-style requests in the format ```
  https://s3express-control.*region_code*.amazonaws.com/*bucket-name* ``` .
  Virtual-hosted-style requests aren't supported. For more information, see
  [Regional and Zonal
  endpoints](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-Regions-and-Zones.html)
  in the *Amazon S3 User Guide*. ## Definitions

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20DeleteBucketPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The bucket name.

  ## Optional parameters:
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec delete_bucket_policy(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}

  def delete_bucket_policy(%Client{} = client, bucket, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?policy"

    # Validate optional parameters
    optional_params = [expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
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
      |> Keyword.drop([:expected_bucket_owner])

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
  This operation is not supported by directory buckets. Deletes the replication
  configuration from the bucket.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20DeleteBucketReplication&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The bucket name.

  ## Optional parameters:
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec delete_bucket_replication(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}

  def delete_bucket_replication(%Client{} = client, bucket, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?replication"

    # Validate optional parameters
    optional_params = [expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
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
      |> Keyword.drop([:expected_bucket_owner])

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
  This operation is not supported by directory buckets. Deletes the tags from the
  bucket.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20DeleteBucketTagging&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The bucket that has the tag set to be removed.

  ## Optional parameters:
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec delete_bucket_tagging(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}

  def delete_bucket_tagging(%Client{} = client, bucket, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?tagging"

    # Validate optional parameters
    optional_params = [expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
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
      |> Keyword.drop([:expected_bucket_owner])

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
  This operation is not supported by directory buckets. This action removes the
  website configuration for a bucket. Amazon S3 returns a ``` 200 OK ```
  response upon successfully deleting a website configuration on the specified
  bucket. You will get a `200 OK` response if the website configuration you are
  trying to delete does not exist on the bucket. Amazon S3 returns a `404`
  response if the bucket specified in the request does not exist.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20DeleteBucketWebsite&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The bucket name for which you want to remove the
  website configuration.

  ## Optional parameters:
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec delete_bucket_website(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}

  def delete_bucket_website(%Client{} = client, bucket, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?website"

    # Validate optional parameters
    optional_params = [expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
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
      |> Keyword.drop([:expected_bucket_owner])

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
  Removes an object from a bucket. The behavior depends on the bucket's versioning
  state:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20DeleteObject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The bucket name of the bucket containing the object.
  * `:key` (`t:string`) Key name of the object to delete.

  ## Optional parameters:
  * `:version_id` (`t:string`) Version ID used to reference a specific version of
  the object.
  * `:bypass_governance_retention` (`t:boolean`) Indicates whether S3 Object Lock
  should bypass Governance-mode restrictions to process this operation. To use
  this header, you must have the s3:BypassGovernanceRetention permission.
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  * `:mfa` (`t:string`) The concatenation of the authentication device's serial
  number, a space, and the value that is displayed on your authentication
  device. Required to permanently delete a versioned object if versioning is
  configured with MFA delete enabled.
  * `:request_payer` (`t:enum["requester"]`)
  """

  @spec delete_object(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_object_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def delete_object(%Client{} = client, bucket, key, options \\ []) do
    url_path =
      "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}?x-id=DeleteObject"

    # Validate optional parameters
    optional_params = [
      version_id: nil,
      bypass_governance_retention: nil,
      expected_bucket_owner: nil,
      mfa: nil,
      request_payer: nil
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
      if opt_val = Keyword.get(options, :request_payer) do
        [{"x-amz-request-payer", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :mfa) do
        [{"x-amz-mfa", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :bypass_governance_retention) do
        [{"x-amz-bypass-governance-retention", opt_val} | headers]
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

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amz-delete-marker", "DeleteMarker"},
          {"x-amz-request-charged", "RequestCharged"},
          {"x-amz-version-id", "VersionId"}
        ]
      )

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amz-delete-marker", "DeleteMarker"},
          {"x-amz-request-charged", "RequestCharged"},
          {"x-amz-version-id", "VersionId"}
        ]
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :version_id,
        :bypass_governance_retention,
        :expected_bucket_owner,
        :mfa,
        :request_payer
      ])

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
  This operation is not supported by directory buckets. Removes the entire tag set
  from the specified object. For more information about managing object tags,
  see [ Object
  Tagging](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-tagging.html).
  To use this operation, you must have permission to perform the
  `s3:DeleteObjectTagging` action.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20DeleteObjectTagging&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The bucket name containing the objects from which to
  remove the tags.
  * `:key` (`t:string`) The key that identifies the object in the bucket from
  which to remove all tags.

  ## Optional parameters:
  * `:version_id` (`t:string`) The versionId of the object that the tag-set will
  be removed from.
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec delete_object_tagging(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_object_tagging_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def delete_object_tagging(%Client{} = client, bucket, key, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}?tagging"

    # Validate optional parameters
    optional_params = [version_id: nil, expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
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

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-version-id", "VersionId"}]
      )

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-version-id", "VersionId"}]
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:version_id, :expected_bucket_owner])

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
  This operation enables you to delete multiple objects from a bucket using a
  single HTTP request. If you know the object keys that you want to delete, then
  this operation provides a suitable alternative to sending individual delete
  requests, reducing per-request overhead. The request can contain a list of up
  to 1000 keys that you want to delete. In the XML, you provide the object key
  names, and optionally, version IDs if you want to delete a specific version of
  the object from a versioning-enabled bucket. For each key, Amazon S3 performs
  a delete operation and returns the result of that delete, success or failure,
  in the response. Note that if the object specified in the request is not
  found, Amazon S3 returns the result as deleted.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20DeleteObjects&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The bucket name containing the objects to delete.
  * `:input` (`t:map`):
    * `:delete` (`t:structure`) Container for the request.

  ## Optional parameters:
  * `:bypass_governance_retention` (`t:boolean`) Specifies whether you want to
  delete this object even if it has a Governance-type Object Lock in place. To
  use this header, you must have the s3:BypassGovernanceRetention permission.
  * `:checksum_algorithm` (`t:enum["CRC32|CRC32C|SHA1|SHA256"]`) Indicates the
  algorithm used to create the checksum for the object when you use the SDK.
  This header will not provide any additional functionality if you don't use
  the SDK. When you send this header, there must be a corresponding
  x-amz-checksum-algorithm or x-amz-trailer header sent. Otherwise, Amazon S3
  fails the request with the HTTP status code 400 Bad Request.
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  * `:mfa` (`t:string`) The concatenation of the authentication device's serial
  number, a space, and the value that is displayed on your authentication
  device. Required to permanently delete a versioned object if versioning is
  configured with MFA delete enabled.
  * `:request_payer` (`t:enum["requester"]`)
  """

  @spec delete_objects(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_objects_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def delete_objects(%Client{} = client, bucket, input, options \\ []) when is_map(input) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?delete"

    # Validate optional parameters
    optional_params = [
      bypass_governance_retention: nil,
      checksum_algorithm: nil,
      expected_bucket_owner: nil,
      mfa: nil,
      request_payer: nil
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
      if opt_val = Keyword.get(options, :request_payer) do
        [{"x-amz-request-payer", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :mfa) do
        [{"x-amz-mfa", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :checksum_algorithm) do
        [{"x-amz-sdk-checksum-algorithm", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :bypass_governance_retention) do
        [{"x-amz-bypass-governance-retention", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params
    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-request-charged", "RequestCharged"}]
      )

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-request-charged", "RequestCharged"}]
      )

    options =
      Keyword.put(
        options,
        :append_sha256_content_hash,
        true
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :bypass_governance_retention,
        :checksum_algorithm,
        :expected_bucket_owner,
        :mfa,
        :request_payer
      ])

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Removes the
  `PublicAccessBlock` configuration for an Amazon S3 bucket. To use this
  operation, you must have the `s3:PutBucketPublicAccessBlock` permission. For
  more information about permissions, see [Permissions Related to Bucket
  Subresource
  Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
  and [Managing Access Permissions to Your Amazon S3
  Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).
  The following operations are related to `DeletePublicAccessBlock`:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20DeletePublicAccessBlock&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The Amazon S3 bucket whose PublicAccessBlock
  configuration you want to delete.

  ## Optional parameters:
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec delete_public_access_block(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}

  def delete_public_access_block(%Client{} = client, bucket, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?publicAccessBlock"

    # Validate optional parameters
    optional_params = [expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
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
      |> Keyword.drop([:expected_bucket_owner])

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
  This operation is not supported by directory buckets. This implementation of the
  GET action uses the `accelerate` subresource to return the Transfer
  Acceleration state of a bucket, which is either `Enabled` or `Suspended`.
  Amazon S3 Transfer Acceleration is a bucket-level feature that enables you to
  perform faster data transfers to and from Amazon S3.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20GetBucketAccelerateConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the bucket for which the accelerate
  configuration is retrieved.

  ## Optional parameters:
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  * `:request_payer` (`t:enum["requester"]`)
  """

  @spec get_bucket_accelerate_configuration(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_bucket_accelerate_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def get_bucket_accelerate_configuration(%Client{} = client, bucket, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?accelerate"

    # Validate optional parameters
    optional_params = [expected_bucket_owner: nil, request_payer: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :request_payer) do
        [{"x-amz-request-payer", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params
    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-request-charged", "RequestCharged"}]
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:expected_bucket_owner, :request_payer])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. This implementation of the
  `GET` action uses the `acl` subresource to return the access control list
  (ACL) of a bucket. To use `GET` to return the ACL of the bucket, you must have
  the `READ_ACP` access to the bucket. If `READ_ACP` permission is granted to
  the anonymous user, you can return the ACL of the bucket without using an
  authorization header.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20GetBucketAcl&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) Specifies the S3 bucket whose ACL is being requested.

  ## Optional parameters:
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec get_bucket_acl(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_bucket_acl_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def get_bucket_acl(%Client{} = client, bucket, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?acl"

    # Validate optional parameters
    optional_params = [expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
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
      |> Keyword.drop([:expected_bucket_owner])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. This implementation of the
  GET action returns an analytics configuration (identified by the analytics
  configuration ID) from the bucket.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20GetBucketAnalyticsConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the bucket from which an analytics
  configuration is retrieved.
  * `:id` (`t:string`) The ID that identifies the analytics configuration.

  ## Optional parameters:
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec get_bucket_analytics_configuration(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_bucket_analytics_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def get_bucket_analytics_configuration(%Client{} = client, bucket, id, options \\ [])
      when is_binary(id) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?analytics&x-id=GetBucketAnalyticsConfiguration"

    # Validate optional parameters
    optional_params = [expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = [{"id", id}]

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:expected_bucket_owner])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Returns the Cross-Origin
  Resource Sharing (CORS) configuration information set for the bucket.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20GetBucketCors&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The bucket name for which to get the cors
  configuration.

  ## Optional parameters:
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec get_bucket_cors(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_bucket_cors_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def get_bucket_cors(%Client{} = client, bucket, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?cors"

    # Validate optional parameters
    optional_params = [expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
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
      |> Keyword.drop([:expected_bucket_owner])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Returns the default
  encryption configuration for an Amazon S3 bucket. By default, all buckets have
  a default encryption configuration that uses server-side encryption with
  Amazon S3 managed keys (SSE-S3). For information about the bucket default
  encryption feature, see [Amazon S3 Bucket Default
  Encryption](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html)
  in the *Amazon S3 User Guide*. To use this operation, you must have permission
  to perform the `s3:GetEncryptionConfiguration` action. The bucket owner has
  this permission by default. The bucket owner can grant this permission to
  others. For more information about permissions, see [Permissions Related to
  Bucket Subresource
  Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
  and [Managing Access Permissions to Your Amazon S3
  Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).
  The following operations are related to `GetBucketEncryption`:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20GetBucketEncryption&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the bucket from which the server-side
  encryption configuration is retrieved.

  ## Optional parameters:
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec get_bucket_encryption(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_bucket_encryption_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def get_bucket_encryption(%Client{} = client, bucket, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?encryption"

    # Validate optional parameters
    optional_params = [expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
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
      |> Keyword.drop([:expected_bucket_owner])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Gets the S3
  Intelligent-Tiering configuration from the specified bucket.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20GetBucketIntelligentTieringConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the Amazon S3 bucket whose configuration
  you want to modify or retrieve.
  * `:id` (`t:string`) The ID used to identify the S3 Intelligent-Tiering
  configuration.

  ## Optional parameters:
  """

  @spec get_bucket_intelligent_tiering_configuration(
          AWS.Client.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, get_bucket_intelligent_tiering_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def get_bucket_intelligent_tiering_configuration(%Client{} = client, bucket, id, options \\ [])
      when is_binary(id) do
    url_path =
      "/#{AWS.Util.encode_uri(bucket)}?intelligent-tiering&x-id=GetBucketIntelligentTieringConfiguration"

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
    query_params = [{"id", id}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Returns an inventory
  configuration (identified by the inventory configuration ID) from the bucket.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20GetBucketInventoryConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the bucket containing the inventory
  configuration to retrieve.
  * `:id` (`t:string`) The ID used to identify the inventory configuration.

  ## Optional parameters:
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec get_bucket_inventory_configuration(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_bucket_inventory_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def get_bucket_inventory_configuration(%Client{} = client, bucket, id, options \\ [])
      when is_binary(id) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?inventory&x-id=GetBucketInventoryConfiguration"

    # Validate optional parameters
    optional_params = [expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = [{"id", id}]

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:expected_bucket_owner])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Bucket lifecycle
  configuration now supports specifying a lifecycle rule using an object key
  name prefix, one or more object tags, object size, or any combination of
  these. Accordingly, this section describes the latest API. The previous
  version of the API supported filtering based only on an object key name
  prefix, which is supported for backward compatibility. For the related API
  description, see
  [GetBucketLifecycle](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketLifecycle.html).
  Accordingly, this section describes the latest API. The response describes the
  new filter element that you can use to specify a filter to select a subset of
  objects to which the rule applies. If you are using a previous version of the
  lifecycle configuration, it still works. For the earlier action, Returns the
  lifecycle configuration information set on the bucket. For information about
  lifecycle configuration, see [Object Lifecycle
  Management](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20GetBucketLifecycleConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the bucket for which to get the lifecycle
  information.

  ## Optional parameters:
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec get_bucket_lifecycle_configuration(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_bucket_lifecycle_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def get_bucket_lifecycle_configuration(%Client{} = client, bucket, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?lifecycle"

    # Validate optional parameters
    optional_params = [expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
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
      |> Keyword.drop([:expected_bucket_owner])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Returns the Region the
  bucket resides in. You set the bucket's Region using the `LocationConstraint`
  request parameter in a `CreateBucket` request. For more information, see
  [CreateBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html).
  When you use this API operation with an access point, provide the alias of the
  access point in place of the bucket name.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20GetBucketLocation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the bucket for which to get the location.

  ## Optional parameters:
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec get_bucket_location(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_bucket_location_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def get_bucket_location(%Client{} = client, bucket, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?location"

    # Validate optional parameters
    optional_params = [expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
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
      |> Keyword.drop([:expected_bucket_owner])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Returns the logging status
  of a bucket and the permissions users have to view and modify that status.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20GetBucketLogging&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The bucket name for which to get the logging
  information.

  ## Optional parameters:
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec get_bucket_logging(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_bucket_logging_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def get_bucket_logging(%Client{} = client, bucket, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?logging"

    # Validate optional parameters
    optional_params = [expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
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
      |> Keyword.drop([:expected_bucket_owner])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Gets a metrics
  configuration (specified by the metrics configuration ID) from the bucket.
  Note that this doesn't include the daily storage metrics.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20GetBucketMetricsConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the bucket containing the metrics
  configuration to retrieve.
  * `:id` (`t:string`) The ID used to identify the metrics configuration. The ID
  has a 64 character limit and can only contain letters, numbers, periods,
  dashes, and underscores.

  ## Optional parameters:
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec get_bucket_metrics_configuration(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_bucket_metrics_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def get_bucket_metrics_configuration(%Client{} = client, bucket, id, options \\ [])
      when is_binary(id) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?metrics&x-id=GetBucketMetricsConfiguration"

    # Validate optional parameters
    optional_params = [expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = [{"id", id}]

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:expected_bucket_owner])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Returns the notification
  configuration of a bucket.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20GetBucketNotificationConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the bucket for which to get the
  notification configuration.

  ## Optional parameters:
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec get_bucket_notification_configuration(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, notification_configuration(), any()}
          | {:error, {:unexpected_response, any()}}

  def get_bucket_notification_configuration(%Client{} = client, bucket, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?notification"

    # Validate optional parameters
    optional_params = [expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
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
      |> Keyword.drop([:expected_bucket_owner])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Retrieves
  `OwnershipControls` for an Amazon S3 bucket. To use this operation, you must
  have the `s3:GetBucketOwnershipControls` permission. For more information
  about Amazon S3 permissions, see [Specifying permissions in a
  policy](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html).
  For information about Amazon S3 Object Ownership, see [Using Object
  Ownership](https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20GetBucketOwnershipControls&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the Amazon S3 bucket whose
  OwnershipControls you want to retrieve.

  ## Optional parameters:
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec get_bucket_ownership_controls(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_bucket_ownership_controls_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def get_bucket_ownership_controls(%Client{} = client, bucket, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?ownershipControls"

    # Validate optional parameters
    optional_params = [expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
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
      |> Keyword.drop([:expected_bucket_owner])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the policy of a specified bucket. **Directory buckets ** - For directory
  buckets, you must make requests for this API operation to the Regional
  endpoint. These endpoints support path-style requests in the format ```
  https://s3express-control.*region_code*.amazonaws.com/*bucket-name* ``` .
  Virtual-hosted-style requests aren't supported. For more information, see
  [Regional and Zonal
  endpoints](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-Regions-and-Zones.html)
  in the *Amazon S3 User Guide*. ## Definitions

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20GetBucketPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The bucket name to get the bucket policy for.

  ## Optional parameters:
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec get_bucket_policy(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_bucket_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def get_bucket_policy(%Client{} = client, bucket, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?policy"

    # Validate optional parameters
    optional_params = [expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
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
      |> Keyword.drop([:expected_bucket_owner])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Retrieves the policy
  status for an Amazon S3 bucket, indicating whether the bucket is public. In
  order to use this operation, you must have the `s3:GetBucketPolicyStatus`
  permission. For more information about Amazon S3 permissions, see [Specifying
  Permissions in a
  Policy](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html).
  For more information about when Amazon S3 considers a bucket public, see [The
  Meaning of
  "Public"](https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20GetBucketPolicyStatus&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the Amazon S3 bucket whose policy status
  you want to retrieve.

  ## Optional parameters:
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec get_bucket_policy_status(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_bucket_policy_status_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def get_bucket_policy_status(%Client{} = client, bucket, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?policyStatus"

    # Validate optional parameters
    optional_params = [expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
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
      |> Keyword.drop([:expected_bucket_owner])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Returns the replication
  configuration of a bucket.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20GetBucketReplication&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The bucket name for which to get the replication
  information.

  ## Optional parameters:
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec get_bucket_replication(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_bucket_replication_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def get_bucket_replication(%Client{} = client, bucket, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?replication"

    # Validate optional parameters
    optional_params = [expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
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
      |> Keyword.drop([:expected_bucket_owner])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Returns the request
  payment configuration of a bucket. To use this version of the operation, you
  must be the bucket owner. For more information, see [Requester Pays
  Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html).
  The following operations are related to `GetBucketRequestPayment`:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20GetBucketRequestPayment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the bucket for which to get the payment
  request configuration

  ## Optional parameters:
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec get_bucket_request_payment(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_bucket_request_payment_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def get_bucket_request_payment(%Client{} = client, bucket, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?requestPayment"

    # Validate optional parameters
    optional_params = [expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
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
      |> Keyword.drop([:expected_bucket_owner])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Returns the tag set
  associated with the bucket.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20GetBucketTagging&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the bucket for which to get the tagging
  information.

  ## Optional parameters:
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec get_bucket_tagging(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_bucket_tagging_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def get_bucket_tagging(%Client{} = client, bucket, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?tagging"

    # Validate optional parameters
    optional_params = [expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
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
      |> Keyword.drop([:expected_bucket_owner])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Returns the versioning
  state of a bucket.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20GetBucketVersioning&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the bucket for which to get the versioning
  information.

  ## Optional parameters:
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec get_bucket_versioning(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_bucket_versioning_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def get_bucket_versioning(%Client{} = client, bucket, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?versioning"

    # Validate optional parameters
    optional_params = [expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
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
      |> Keyword.drop([:expected_bucket_owner])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Returns the website
  configuration for a bucket. To host website on Amazon S3, you can configure a
  bucket as website by adding a website configuration. For more information
  about hosting websites, see [Hosting Websites on Amazon
  S3](https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html). This
  GET action requires the `S3:GetBucketWebsite` permission. By default, only the
  bucket owner can read the bucket website configuration. However, bucket owners
  can allow other users to read the website configuration by writing a bucket
  policy granting them the `S3:GetBucketWebsite` permission.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20GetBucketWebsite&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The bucket name for which to get the website
  configuration.

  ## Optional parameters:
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec get_bucket_website(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_bucket_website_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def get_bucket_website(%Client{} = client, bucket, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?website"

    # Validate optional parameters
    optional_params = [expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
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
      |> Keyword.drop([:expected_bucket_owner])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves an object from Amazon S3. In the `GetObject` request, specify the full
  key name for the object.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20GetObject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The bucket name containing the object.
  * `:key` (`t:string`) Key of the object to get.

  ## Optional parameters:
  * `:part_number` (`t:integer`) Part number of the object being read. This is a
  positive integer between 1 and 10,000. Effectively performs a 'ranged' GET
  request for the part specified. Useful for downloading just a part of an
  object.
  * `:response_cache_control` (`t:string`) Sets the Cache-Control header of the
  response.
  * `:response_content_disposition` (`t:string`) Sets the Content-Disposition
  header of the response.
  * `:response_content_encoding` (`t:string`) Sets the Content-Encoding header of
  the response.
  * `:response_content_language` (`t:string`) Sets the Content-Language header of
  the response.
  * `:response_content_type` (`t:string`) Sets the Content-Type header of the
  response.
  * `:response_expires` (`t:timestamp[http-date]`) Sets the Expires header of the
  response.
  * `:version_id` (`t:string`) Version ID used to reference a specific version of
  the object.
  * `:checksum_mode` (`t:enum["ENABLED"]`) To retrieve the checksum, this mode
  must be enabled.
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  * `:if_match` (`t:string`) Return the object only if its entity tag (ETag) is
  the same as the one specified in this header; otherwise, return a 412
  Precondition Failed error.
  * `:if_modified_since` (`t:timestamp`) Return the object only if it has been
  modified since the specified time; otherwise, return a 304 Not Modified
  error.
  * `:if_none_match` (`t:string`) Return the object only if its entity tag (ETag)
  is different from the one specified in this header; otherwise, return a 304
  Not Modified error.
  * `:if_unmodified_since` (`t:timestamp`) Return the object only if it has not
  been modified since the specified time; otherwise, return a 412 Precondition
  Failed error.
  * `:range` (`t:string`) Downloads the specified byte range of an object. For
  more information about the HTTP Range header, see
  https://www.rfc-editor.org/rfc/rfc9110.html#name-range.
  * `:request_payer` (`t:enum["requester"]`)
  * `:sse_customer_algorithm` (`t:string`) Specifies the algorithm to use when
  decrypting the object (for example, AES256).
  * `:sse_customer_key` (`t:string`) Specifies the customer-provided encryption
  key that you originally provided for Amazon S3 to encrypt the data before
  storing it. This value is used to decrypt the object when recovering it and
  must match the one used when storing the data. The key must be appropriate
  for use with the algorithm specified in the
  x-amz-server-side-encryption-customer-algorithm header.
  * `:sse_customer_key_md5` (`t:string`) Specifies the 128-bit MD5 digest of the
  customer-provided encryption key according to RFC 1321. Amazon S3 uses this
  header for a message integrity check to ensure that the encryption key was
  transmitted without error.
  """

  @spec get_object(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_object_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_object_errors()}

  def get_object(%Client{} = client, bucket, key, options \\ []) do
    url_path =
      "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}?x-id=GetObject"

    # Validate optional parameters
    optional_params = [
      part_number: nil,
      response_cache_control: nil,
      response_content_disposition: nil,
      response_content_encoding: nil,
      response_content_language: nil,
      response_content_type: nil,
      response_expires: nil,
      version_id: nil,
      checksum_mode: nil,
      expected_bucket_owner: nil,
      if_match: nil,
      if_modified_since: nil,
      if_none_match: nil,
      if_unmodified_since: nil,
      range: nil,
      request_payer: nil,
      sse_customer_algorithm: nil,
      sse_customer_key: nil,
      sse_customer_key_md5: nil
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
      if opt_val = Keyword.get(options, :sse_customer_key_md5) do
        [{"x-amz-server-side-encryption-customer-key-MD5", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :sse_customer_key) do
        [{"x-amz-server-side-encryption-customer-key", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :sse_customer_algorithm) do
        [{"x-amz-server-side-encryption-customer-algorithm", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :request_payer) do
        [{"x-amz-request-payer", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :range) do
        [{"Range", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :if_unmodified_since) do
        [{"If-Unmodified-Since", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :if_none_match) do
        [{"If-None-Match", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :if_modified_since) do
        [{"If-Modified-Since", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :if_match) do
        [{"If-Match", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :checksum_mode) do
        [{"x-amz-checksum-mode", opt_val} | headers]
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
      if opt_val = Keyword.get(options, :response_expires) do
        [{"response-expires", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :response_content_type) do
        [{"response-content-type", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :response_content_language) do
        [{"response-content-language", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :response_content_encoding) do
        [{"response-content-encoding", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :response_content_disposition) do
        [{"response-content-disposition", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :response_cache_control) do
        [{"response-cache-control", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :part_number) do
        [{"partNumber", opt_val} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amz-checksum-crc32c", "ChecksumCRC32C"},
          {"x-amz-delete-marker", "DeleteMarker"},
          {"x-amz-object-lock-retain-until-date", "ObjectLockRetainUntilDate"},
          {"x-amz-restore", "Restore"},
          {"x-amz-server-side-encryption-bucket-key-enabled", "BucketKeyEnabled"},
          {"Content-Type", "ContentType"},
          {"x-amz-server-side-encryption-customer-key-MD5", "SSECustomerKeyMD5"},
          {"x-amz-object-lock-legal-hold", "ObjectLockLegalHoldStatus"},
          {"x-amz-version-id", "VersionId"},
          {"accept-ranges", "AcceptRanges"},
          {"x-amz-website-redirect-location", "WebsiteRedirectLocation"},
          {"Content-Language", "ContentLanguage"},
          {"x-amz-server-side-encryption-customer-algorithm", "SSECustomerAlgorithm"},
          {"Content-Encoding", "ContentEncoding"},
          {"x-amz-checksum-sha256", "ChecksumSHA256"},
          {"ETag", "ETag"},
          {"Last-Modified", "LastModified"},
          {"Content-Range", "ContentRange"},
          {"Expires", "Expires"},
          {"x-amz-tagging-count", "TagCount"},
          {"x-amz-expiration", "Expiration"},
          {"x-amz-replication-status", "ReplicationStatus"},
          {"Cache-Control", "CacheControl"},
          {"x-amz-storage-class", "StorageClass"},
          {"x-amz-missing-meta", "MissingMeta"},
          {"Content-Length", "ContentLength"},
          {"x-amz-object-lock-mode", "ObjectLockMode"},
          {"Content-Disposition", "ContentDisposition"},
          {"x-amz-request-charged", "RequestCharged"},
          {"x-amz-server-side-encryption", "ServerSideEncryption"},
          {"x-amz-mp-parts-count", "PartsCount"},
          {"x-amz-server-side-encryption-aws-kms-key-id", "SSEKMSKeyId"},
          {"x-amz-checksum-crc32", "ChecksumCRC32"},
          {"x-amz-checksum-sha1", "ChecksumSHA1"}
        ]
      )

    options =
      Keyword.put(
        options,
        :receive_body_as_binary?,
        true
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :part_number,
        :response_cache_control,
        :response_content_disposition,
        :response_content_encoding,
        :response_content_language,
        :response_content_type,
        :response_expires,
        :version_id,
        :checksum_mode,
        :expected_bucket_owner,
        :if_match,
        :if_modified_since,
        :if_none_match,
        :if_unmodified_since,
        :range,
        :request_payer,
        :sse_customer_algorithm,
        :sse_customer_key,
        :sse_customer_key_md5
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Returns the access control
  list (ACL) of an object. To use this operation, you must have
  `s3:GetObjectAcl` permissions or `READ_ACP` access to the object. For more
  information, see [Mapping of ACL permissions and access policy
  permissions](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#acl-access-policy-permission-mapping)
  in the *Amazon S3 User Guide* This functionality is not supported for Amazon
  S3 on Outposts.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20GetObjectAcl&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The bucket name that contains the object for which to
  get the ACL information.
  * `:key` (`t:string`) The key of the object for which to get the ACL
  information.

  ## Optional parameters:
  * `:version_id` (`t:string`) Version ID used to reference a specific version of
  the object.
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  * `:request_payer` (`t:enum["requester"]`)
  """

  @spec get_object_acl(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_object_acl_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_object_acl_errors()}

  def get_object_acl(%Client{} = client, bucket, key, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}?acl"

    # Validate optional parameters
    optional_params = [version_id: nil, expected_bucket_owner: nil, request_payer: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :request_payer) do
        [{"x-amz-request-payer", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
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

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-request-charged", "RequestCharged"}]
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:version_id, :expected_bucket_owner, :request_payer])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves all the metadata from an object without returning the object itself.
  This operation is useful if you're interested only in an object's metadata.
  `GetObjectAttributes` combines the functionality of `HeadObject` and
  `ListParts`. All of the data returned with each of those individual calls can
  be returned with a single call to `GetObjectAttributes`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20GetObjectAttributes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the bucket that contains the object.
  * `:key` (`t:string`) The object key.
  * `:object_attributes` (`t:list[com.amazonaws.s3#ObjectAttributes]`) Specifies
  the fields at the root level that you want returned in the response. Fields
  that you do not specify are not returned.

  ## Optional parameters:
  * `:version_id` (`t:string`) The version ID used to reference a specific version
  of the object.
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  * `:max_parts` (`t:integer`) Sets the maximum number of parts to return.
  * `:part_number_marker` (`t:string`) Specifies the part after which listing
  should begin. Only parts with higher part numbers will be listed.
  * `:request_payer` (`t:enum["requester"]`)
  * `:sse_customer_algorithm` (`t:string`) Specifies the algorithm to use when
  encrypting the object (for example, AES256).
  * `:sse_customer_key` (`t:string`) Specifies the customer-provided encryption
  key for Amazon S3 to use in encrypting data. This value is used to store the
  object and then it is discarded; Amazon S3 does not store the encryption
  key. The key must be appropriate for use with the algorithm specified in the
  x-amz-server-side-encryption-customer-algorithm header.
  * `:sse_customer_key_md5` (`t:string`) Specifies the 128-bit MD5 digest of the
  encryption key according to RFC 1321. Amazon S3 uses this header for a
  message integrity check to ensure that the encryption key was transmitted
  without error.
  """

  @spec get_object_attributes(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_object_attributes_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_object_attributes_errors()}

  def get_object_attributes(%Client{} = client, bucket, key, object_attributes, options \\ [])
      when is_binary(object_attributes) do
    url_path =
      "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}?attributes"

    # Validate optional parameters
    optional_params = [
      version_id: nil,
      expected_bucket_owner: nil,
      max_parts: nil,
      part_number_marker: nil,
      request_payer: nil,
      sse_customer_algorithm: nil,
      sse_customer_key: nil,
      sse_customer_key_md5: nil
    ]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-object-attributes", object_attributes}]

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :sse_customer_key_md5) do
        [{"x-amz-server-side-encryption-customer-key-MD5", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :sse_customer_key) do
        [{"x-amz-server-side-encryption-customer-key", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :sse_customer_algorithm) do
        [{"x-amz-server-side-encryption-customer-algorithm", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :request_payer) do
        [{"x-amz-request-payer", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :part_number_marker) do
        [{"x-amz-part-number-marker", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :max_parts) do
        [{"x-amz-max-parts", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
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

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amz-delete-marker", "DeleteMarker"},
          {"Last-Modified", "LastModified"},
          {"x-amz-request-charged", "RequestCharged"},
          {"x-amz-version-id", "VersionId"}
        ]
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :version_id,
        :expected_bucket_owner,
        :max_parts,
        :part_number_marker,
        :request_payer,
        :sse_customer_algorithm,
        :sse_customer_key,
        :sse_customer_key_md5
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Gets an object's current
  legal hold status. For more information, see [Locking
  Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html).
  This functionality is not supported for Amazon S3 on Outposts.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20GetObjectLegalHold&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The bucket name containing the object whose legal hold
  status you want to retrieve.
  * `:key` (`t:string`) The key name for the object whose legal hold status you
  want to retrieve.

  ## Optional parameters:
  * `:version_id` (`t:string`) The version ID of the object whose legal hold
  status you want to retrieve.
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  * `:request_payer` (`t:enum["requester"]`)
  """

  @spec get_object_legal_hold(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_object_legal_hold_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def get_object_legal_hold(%Client{} = client, bucket, key, options \\ []) do
    url_path =
      "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}?legal-hold"

    # Validate optional parameters
    optional_params = [version_id: nil, expected_bucket_owner: nil, request_payer: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :request_payer) do
        [{"x-amz-request-payer", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
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

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:version_id, :expected_bucket_owner, :request_payer])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Gets the Object Lock
  configuration for a bucket. The rule specified in the Object Lock
  configuration will be applied by default to every new object placed in the
  specified bucket. For more information, see [Locking
  Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html).
  The following action is related to `GetObjectLockConfiguration`:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20GetObjectLockConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The bucket whose Object Lock configuration you want to
  retrieve.

  ## Optional parameters:
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec get_object_lock_configuration(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_object_lock_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def get_object_lock_configuration(%Client{} = client, bucket, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?object-lock"

    # Validate optional parameters
    optional_params = [expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
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
      |> Keyword.drop([:expected_bucket_owner])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Retrieves an object's
  retention settings. For more information, see [Locking
  Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html).
  This functionality is not supported for Amazon S3 on Outposts.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20GetObjectRetention&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The bucket name containing the object whose retention
  settings you want to retrieve.
  * `:key` (`t:string`) The key name for the object whose retention settings you
  want to retrieve.

  ## Optional parameters:
  * `:version_id` (`t:string`) The version ID for the object whose retention
  settings you want to retrieve.
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  * `:request_payer` (`t:enum["requester"]`)
  """

  @spec get_object_retention(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_object_retention_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def get_object_retention(%Client{} = client, bucket, key, options \\ []) do
    url_path =
      "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}?retention"

    # Validate optional parameters
    optional_params = [version_id: nil, expected_bucket_owner: nil, request_payer: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :request_payer) do
        [{"x-amz-request-payer", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
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

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:version_id, :expected_bucket_owner, :request_payer])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Returns the tag-set of an
  object. You send the GET request against the tagging subresource associated
  with the object.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20GetObjectTagging&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The bucket name containing the object for which to get
  the tagging information.
  * `:key` (`t:string`) Object key for which to get the tagging information.

  ## Optional parameters:
  * `:version_id` (`t:string`) The versionId of the object for which to get the
  tagging information.
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  * `:request_payer` (`t:enum["requester"]`)
  """

  @spec get_object_tagging(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_object_tagging_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def get_object_tagging(%Client{} = client, bucket, key, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}?tagging"

    # Validate optional parameters
    optional_params = [version_id: nil, expected_bucket_owner: nil, request_payer: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :request_payer) do
        [{"x-amz-request-payer", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
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

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-version-id", "VersionId"}]
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:version_id, :expected_bucket_owner, :request_payer])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Returns torrent files from
  a bucket. BitTorrent can save you bandwidth when you're distributing large
  files.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20GetObjectTorrent&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the bucket containing the object for which
  to get the torrent files.
  * `:key` (`t:string`) The object key for which to get the information.

  ## Optional parameters:
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  * `:request_payer` (`t:enum["requester"]`)
  """

  @spec get_object_torrent(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_object_torrent_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def get_object_torrent(%Client{} = client, bucket, key, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}?torrent"

    # Validate optional parameters
    optional_params = [expected_bucket_owner: nil, request_payer: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :request_payer) do
        [{"x-amz-request-payer", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params
    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-request-charged", "RequestCharged"}]
      )

    options =
      Keyword.put(
        options,
        :receive_body_as_binary?,
        true
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:expected_bucket_owner, :request_payer])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Retrieves the
  `PublicAccessBlock` configuration for an Amazon S3 bucket. To use this
  operation, you must have the `s3:GetBucketPublicAccessBlock` permission. For
  more information about Amazon S3 permissions, see [Specifying Permissions in a
  Policy](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html).
  When Amazon S3 evaluates the `PublicAccessBlock` configuration for a bucket or
  an object, it checks the `PublicAccessBlock` configuration for both the bucket
  (or the bucket that contains the object) and the bucket owner's account. If
  the `PublicAccessBlock` settings are different between the bucket and the
  account, Amazon S3 uses the most restrictive combination of the bucket-level
  and account-level settings.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20GetPublicAccessBlock&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the Amazon S3 bucket whose
  PublicAccessBlock configuration you want to retrieve.

  ## Optional parameters:
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec get_public_access_block(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_public_access_block_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def get_public_access_block(%Client{} = client, bucket, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?publicAccessBlock"

    # Validate optional parameters
    optional_params = [expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
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
      |> Keyword.drop([:expected_bucket_owner])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  You can use this operation to determine if a bucket exists and if you have
  permission to access it. The action returns a `200 OK` if the bucket exists
  and you have permission to access it. If the bucket does not exist or you do
  not have permission to access it, the `HEAD` request returns a generic `400
  Bad Request`, ``` 403 Forbidden ``` or `404 Not Found` code. A message body is
  not included, so you cannot determine the exception beyond these HTTP response
  codes.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20HeadBucket&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The bucket name.

  ## Optional parameters:
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec head_bucket(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, head_bucket_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, head_bucket_errors()}

  def head_bucket(%Client{} = client, bucket, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}"

    # Validate optional parameters
    optional_params = [expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params
    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amz-access-point-alias", "AccessPointAlias"},
          {"x-amz-bucket-location-name", "BucketLocationName"},
          {"x-amz-bucket-location-type", "BucketLocationType"},
          {"x-amz-bucket-region", "BucketRegion"}
        ]
      )

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amz-access-point-alias", "AccessPointAlias"},
          {"x-amz-bucket-location-name", "BucketLocationName"},
          {"x-amz-bucket-location-type", "BucketLocationType"},
          {"x-amz-bucket-region", "BucketRegion"}
        ]
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:expected_bucket_owner])

    body = nil

    Request.request_rest(client, meta, :head, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  The `HEAD` operation retrieves metadata from an object without returning the
  object itself. This operation is useful if you're interested only in an
  object's metadata. A `HEAD` request has the same options as a `GET` operation
  on an object. The response is identical to the `GET` response except that
  there is no response body. Because of this, if the `HEAD` request generates an
  error, it returns a generic code, such as `400 Bad Request`, `403 Forbidden`,
  ``` 404 Not Found ``` , `405 Method Not Allowed`, `412 Precondition Failed`,
  or `304 Not Modified`. It's not possible to retrieve the exact exception of
  these error codes.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20HeadObject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the bucket that contains the object.
  * `:key` (`t:string`) The object key.

  ## Optional parameters:
  * `:part_number` (`t:integer`) Part number of the object being read. This is a
  positive integer between 1 and 10,000. Effectively performs a 'ranged' HEAD
  request for the part specified. Useful querying about the size of the part
  and the number of parts in this object.
  * `:response_cache_control` (`t:string`) Sets the Cache-Control header of the
  response.
  * `:response_content_disposition` (`t:string`) Sets the Content-Disposition
  header of the response.
  * `:response_content_encoding` (`t:string`) Sets the Content-Encoding header of
  the response.
  * `:response_content_language` (`t:string`) Sets the Content-Language header of
  the response.
  * `:response_content_type` (`t:string`) Sets the Content-Type header of the
  response.
  * `:response_expires` (`t:timestamp[http-date]`) Sets the Expires header of the
  response.
  * `:version_id` (`t:string`) Version ID used to reference a specific version of
  the object.
  * `:checksum_mode` (`t:enum["ENABLED"]`) To retrieve the checksum, this
  parameter must be enabled.
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  * `:if_match` (`t:string`) Return the object only if its entity tag (ETag) is
  the same as the one specified; otherwise, return a 412 (precondition failed)
  error.
  * `:if_modified_since` (`t:timestamp`) Return the object only if it has been
  modified since the specified time; otherwise, return a 304 (not modified)
  error.
  * `:if_none_match` (`t:string`) Return the object only if its entity tag (ETag)
  is different from the one specified; otherwise, return a 304 (not modified)
  error.
  * `:if_unmodified_since` (`t:timestamp`) Return the object only if it has not
  been modified since the specified time; otherwise, return a 412
  (precondition failed) error.
  * `:range` (`t:string`) HeadObject returns only the metadata for an object. If
  the Range is satisfiable, only the ContentLength is affected in the
  response. If the Range is not satisfiable, S3 returns a 416 - Requested
  Range Not Satisfiable error.
  * `:request_payer` (`t:enum["requester"]`)
  * `:sse_customer_algorithm` (`t:string`) Specifies the algorithm to use when
  encrypting the object (for example, AES256).
  * `:sse_customer_key` (`t:string`) Specifies the customer-provided encryption
  key for Amazon S3 to use in encrypting data. This value is used to store the
  object and then it is discarded; Amazon S3 does not store the encryption
  key. The key must be appropriate for use with the algorithm specified in the
  x-amz-server-side-encryption-customer-algorithm header.
  * `:sse_customer_key_md5` (`t:string`) Specifies the 128-bit MD5 digest of the
  encryption key according to RFC 1321. Amazon S3 uses this header for a
  message integrity check to ensure that the encryption key was transmitted
  without error.
  """

  @spec head_object(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, head_object_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, head_object_errors()}

  def head_object(%Client{} = client, bucket, key, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}"

    # Validate optional parameters
    optional_params = [
      part_number: nil,
      response_cache_control: nil,
      response_content_disposition: nil,
      response_content_encoding: nil,
      response_content_language: nil,
      response_content_type: nil,
      response_expires: nil,
      version_id: nil,
      checksum_mode: nil,
      expected_bucket_owner: nil,
      if_match: nil,
      if_modified_since: nil,
      if_none_match: nil,
      if_unmodified_since: nil,
      range: nil,
      request_payer: nil,
      sse_customer_algorithm: nil,
      sse_customer_key: nil,
      sse_customer_key_md5: nil
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
      if opt_val = Keyword.get(options, :sse_customer_key_md5) do
        [{"x-amz-server-side-encryption-customer-key-MD5", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :sse_customer_key) do
        [{"x-amz-server-side-encryption-customer-key", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :sse_customer_algorithm) do
        [{"x-amz-server-side-encryption-customer-algorithm", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :request_payer) do
        [{"x-amz-request-payer", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :range) do
        [{"Range", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :if_unmodified_since) do
        [{"If-Unmodified-Since", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :if_none_match) do
        [{"If-None-Match", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :if_modified_since) do
        [{"If-Modified-Since", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :if_match) do
        [{"If-Match", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :checksum_mode) do
        [{"x-amz-checksum-mode", opt_val} | headers]
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
      if opt_val = Keyword.get(options, :response_expires) do
        [{"response-expires", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :response_content_type) do
        [{"response-content-type", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :response_content_language) do
        [{"response-content-language", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :response_content_encoding) do
        [{"response-content-encoding", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :response_content_disposition) do
        [{"response-content-disposition", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :response_cache_control) do
        [{"response-cache-control", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :part_number) do
        [{"partNumber", opt_val} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amz-checksum-crc32c", "ChecksumCRC32C"},
          {"x-amz-delete-marker", "DeleteMarker"},
          {"x-amz-object-lock-retain-until-date", "ObjectLockRetainUntilDate"},
          {"x-amz-restore", "Restore"},
          {"x-amz-server-side-encryption-bucket-key-enabled", "BucketKeyEnabled"},
          {"Content-Type", "ContentType"},
          {"x-amz-server-side-encryption-customer-key-MD5", "SSECustomerKeyMD5"},
          {"x-amz-object-lock-legal-hold", "ObjectLockLegalHoldStatus"},
          {"x-amz-version-id", "VersionId"},
          {"accept-ranges", "AcceptRanges"},
          {"x-amz-website-redirect-location", "WebsiteRedirectLocation"},
          {"Content-Language", "ContentLanguage"},
          {"x-amz-server-side-encryption-customer-algorithm", "SSECustomerAlgorithm"},
          {"Content-Encoding", "ContentEncoding"},
          {"x-amz-checksum-sha256", "ChecksumSHA256"},
          {"ETag", "ETag"},
          {"x-amz-archive-status", "ArchiveStatus"},
          {"Last-Modified", "LastModified"},
          {"Expires", "Expires"},
          {"x-amz-expiration", "Expiration"},
          {"x-amz-replication-status", "ReplicationStatus"},
          {"Cache-Control", "CacheControl"},
          {"x-amz-storage-class", "StorageClass"},
          {"x-amz-missing-meta", "MissingMeta"},
          {"Content-Length", "ContentLength"},
          {"x-amz-object-lock-mode", "ObjectLockMode"},
          {"Content-Disposition", "ContentDisposition"},
          {"x-amz-request-charged", "RequestCharged"},
          {"x-amz-server-side-encryption", "ServerSideEncryption"},
          {"x-amz-mp-parts-count", "PartsCount"},
          {"x-amz-server-side-encryption-aws-kms-key-id", "SSEKMSKeyId"},
          {"x-amz-checksum-crc32", "ChecksumCRC32"},
          {"x-amz-checksum-sha1", "ChecksumSHA1"}
        ]
      )

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amz-checksum-crc32c", "ChecksumCRC32C"},
          {"x-amz-delete-marker", "DeleteMarker"},
          {"x-amz-object-lock-retain-until-date", "ObjectLockRetainUntilDate"},
          {"x-amz-restore", "Restore"},
          {"x-amz-server-side-encryption-bucket-key-enabled", "BucketKeyEnabled"},
          {"Content-Type", "ContentType"},
          {"x-amz-server-side-encryption-customer-key-MD5", "SSECustomerKeyMD5"},
          {"x-amz-object-lock-legal-hold", "ObjectLockLegalHoldStatus"},
          {"x-amz-version-id", "VersionId"},
          {"accept-ranges", "AcceptRanges"},
          {"x-amz-website-redirect-location", "WebsiteRedirectLocation"},
          {"Content-Language", "ContentLanguage"},
          {"x-amz-server-side-encryption-customer-algorithm", "SSECustomerAlgorithm"},
          {"Content-Encoding", "ContentEncoding"},
          {"x-amz-checksum-sha256", "ChecksumSHA256"},
          {"ETag", "ETag"},
          {"x-amz-archive-status", "ArchiveStatus"},
          {"Last-Modified", "LastModified"},
          {"Expires", "Expires"},
          {"x-amz-expiration", "Expiration"},
          {"x-amz-replication-status", "ReplicationStatus"},
          {"Cache-Control", "CacheControl"},
          {"x-amz-storage-class", "StorageClass"},
          {"x-amz-missing-meta", "MissingMeta"},
          {"Content-Length", "ContentLength"},
          {"x-amz-object-lock-mode", "ObjectLockMode"},
          {"Content-Disposition", "ContentDisposition"},
          {"x-amz-request-charged", "RequestCharged"},
          {"x-amz-server-side-encryption", "ServerSideEncryption"},
          {"x-amz-mp-parts-count", "PartsCount"},
          {"x-amz-server-side-encryption-aws-kms-key-id", "SSEKMSKeyId"},
          {"x-amz-checksum-crc32", "ChecksumCRC32"},
          {"x-amz-checksum-sha1", "ChecksumSHA1"}
        ]
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :part_number,
        :response_cache_control,
        :response_content_disposition,
        :response_content_encoding,
        :response_content_language,
        :response_content_type,
        :response_expires,
        :version_id,
        :checksum_mode,
        :expected_bucket_owner,
        :if_match,
        :if_modified_since,
        :if_none_match,
        :if_unmodified_since,
        :range,
        :request_payer,
        :sse_customer_algorithm,
        :sse_customer_key,
        :sse_customer_key_md5
      ])

    body = nil

    Request.request_rest(client, meta, :head, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Lists the analytics
  configurations for the bucket. You can have up to 1,000 analytics
  configurations per bucket.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20ListBucketAnalyticsConfigurations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the bucket from which analytics
  configurations are retrieved.

  ## Optional parameters:
  * `:continuation_token` (`t:string`) The ContinuationToken that represents a
  placeholder from where this request should begin.
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec list_bucket_analytics_configurations(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_bucket_analytics_configurations_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def list_bucket_analytics_configurations(%Client{} = client, bucket, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?analytics&x-id=ListBucketAnalyticsConfigurations"

    # Validate optional parameters
    optional_params = [continuation_token: nil, expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :continuation_token) do
        [{"continuation-token", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:continuation_token, :expected_bucket_owner])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Lists the S3
  Intelligent-Tiering configuration from the specified bucket.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20ListBucketIntelligentTieringConfigurations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the Amazon S3 bucket whose configuration
  you want to modify or retrieve.

  ## Optional parameters:
  * `:continuation_token` (`t:string`) The ContinuationToken that represents a
  placeholder from where this request should begin.
  """

  @spec list_bucket_intelligent_tiering_configurations(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_bucket_intelligent_tiering_configurations_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def list_bucket_intelligent_tiering_configurations(%Client{} = client, bucket, options \\ []) do
    url_path =
      "/#{AWS.Util.encode_uri(bucket)}?intelligent-tiering&x-id=ListBucketIntelligentTieringConfigurations"

    # Validate optional parameters
    optional_params = [continuation_token: nil]

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
      if opt_val = Keyword.get(options, :continuation_token) do
        [{"continuation-token", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:continuation_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Returns a list of
  inventory configurations for the bucket. You can have up to 1,000 analytics
  configurations per bucket.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20ListBucketInventoryConfigurations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the bucket containing the inventory
  configurations to retrieve.

  ## Optional parameters:
  * `:continuation_token` (`t:string`) The marker used to continue an inventory
  configuration listing that has been truncated. Use the NextContinuationToken
  from a previously truncated list response to continue the listing. The
  continuation token is an opaque value that Amazon S3 understands.
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec list_bucket_inventory_configurations(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_bucket_inventory_configurations_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def list_bucket_inventory_configurations(%Client{} = client, bucket, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?inventory&x-id=ListBucketInventoryConfigurations"

    # Validate optional parameters
    optional_params = [continuation_token: nil, expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :continuation_token) do
        [{"continuation-token", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:continuation_token, :expected_bucket_owner])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Lists the metrics
  configurations for the bucket. The metrics configurations are only for the
  request metrics of the bucket and do not provide information on daily storage
  metrics. You can have up to 1,000 configurations per bucket.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20ListBucketMetricsConfigurations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the bucket containing the metrics
  configurations to retrieve.

  ## Optional parameters:
  * `:continuation_token` (`t:string`) The marker that is used to continue a
  metrics configuration listing that has been truncated. Use the
  NextContinuationToken from a previously truncated list response to continue
  the listing. The continuation token is an opaque value that Amazon S3
  understands.
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec list_bucket_metrics_configurations(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_bucket_metrics_configurations_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def list_bucket_metrics_configurations(%Client{} = client, bucket, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?metrics&x-id=ListBucketMetricsConfigurations"

    # Validate optional parameters
    optional_params = [continuation_token: nil, expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :continuation_token) do
        [{"continuation-token", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:continuation_token, :expected_bucket_owner])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Returns a list of all
  buckets owned by the authenticated sender of the request. To use this
  operation, you must have the `s3:ListAllMyBuckets` permission.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20ListBuckets&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec list_buckets(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_buckets_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def list_buckets(%Client{} = client, options \\ []) do
    url_path = "/?x-id=ListBuckets"

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
  Returns a list of all Amazon S3 directory buckets owned by the authenticated
  sender of the request. For more information about directory buckets, see
  [Directory
  buckets](https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-buckets-overview.html)
  in the *Amazon S3 User Guide*. **Directory buckets ** - For directory buckets,
  you must make requests for this API operation to the Regional endpoint. These
  endpoints support path-style requests in the format ```
  https://s3express-control.*region_code*.amazonaws.com/*bucket-name* ``` .
  Virtual-hosted-style requests aren't supported. For more information, see
  [Regional and Zonal
  endpoints](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-Regions-and-Zones.html)
  in the *Amazon S3 User Guide*. ## Definitions

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20ListDirectoryBuckets&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:continuation_token` (`t:string`) ContinuationToken indicates to Amazon S3
  that the list is being continued on this bucket with a token.
  ContinuationToken is obfuscated and is not a real key. You can use this
  ContinuationToken for pagination of the list results.
  * `:max_directory_buckets` (`t:integer`) Maximum number of buckets to be
  returned in response. When the number is more than the count of buckets that
  are owned by an Amazon Web Services account, return all the buckets in
  response.
  """

  @spec list_directory_buckets(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_directory_buckets_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def list_directory_buckets(%Client{} = client, options \\ []) do
    url_path = "/?x-id=ListDirectoryBuckets"

    # Validate optional parameters
    optional_params = [continuation_token: nil, max_directory_buckets: nil]

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
      if opt_val = Keyword.get(options, :max_directory_buckets) do
        [{"max-directory-buckets", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :continuation_token) do
        [{"continuation-token", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:continuation_token, :max_directory_buckets])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation lists in-progress multipart uploads in a bucket. An in-progress
  multipart upload is a multipart upload that has been initiated by the
  `CreateMultipartUpload` request, but has not yet been completed or aborted.
  **Directory buckets** - If multipart uploads in a directory bucket are in
  progress, you can't delete the bucket until all the in-progress multipart
  uploads are aborted or completed.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20ListMultipartUploads&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the bucket to which the multipart upload
  was initiated.

  ## Optional parameters:
  * `:delimiter` (`t:string`) Character you use to group keys.
  * `:encoding_type` (`t:enum["url"]`)
  * `:key_marker` (`t:string`) Specifies the multipart upload after which listing
  should begin.
  * `:max_uploads` (`t:integer`) Sets the maximum number of multipart uploads,
  from 1 to 1,000, to return in the response body. 1,000 is the maximum number
  of uploads that can be returned in a response.
  * `:prefix` (`t:string`) Lists in-progress uploads only for those keys that
  begin with the specified prefix. You can use prefixes to separate a bucket
  into different grouping of keys. (You can think of using prefix to make
  groups in the same way that you'd use a folder in a file system.)
  * `:upload_id_marker` (`t:string`) Together with key-marker, specifies the
  multipart upload after which listing should begin. If key-marker is not
  specified, the upload-id-marker parameter is ignored. Otherwise, any
  multipart uploads for a key equal to the key-marker might be included in the
  list only if they have an upload ID lexicographically greater than the
  specified upload-id-marker.
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  * `:request_payer` (`t:enum["requester"]`)
  """

  @spec list_multipart_uploads(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_multipart_uploads_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def list_multipart_uploads(%Client{} = client, bucket, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?uploads"

    # Validate optional parameters
    optional_params = [
      delimiter: nil,
      encoding_type: nil,
      key_marker: nil,
      max_uploads: nil,
      prefix: nil,
      upload_id_marker: nil,
      expected_bucket_owner: nil,
      request_payer: nil
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
      if opt_val = Keyword.get(options, :request_payer) do
        [{"x-amz-request-payer", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :upload_id_marker) do
        [{"upload-id-marker", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :prefix) do
        [{"prefix", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_uploads) do
        [{"max-uploads", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :key_marker) do
        [{"key-marker", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :encoding_type) do
        [{"encoding-type", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :delimiter) do
        [{"delimiter", opt_val} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-request-charged", "RequestCharged"}]
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :delimiter,
        :encoding_type,
        :key_marker,
        :max_uploads,
        :prefix,
        :upload_id_marker,
        :expected_bucket_owner,
        :request_payer
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Returns metadata about all
  versions of the objects in a bucket. You can also use request parameters as
  selection criteria to return metadata about a subset of all the object
  versions.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20ListObjectVersions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The bucket name that contains the objects.

  ## Optional parameters:
  * `:delimiter` (`t:string`) A delimiter is a character that you specify to group
  keys. All keys that contain the same string between the prefix and the first
  occurrence of the delimiter are grouped under a single result element in
  CommonPrefixes. These groups are counted as one result against the max-keys
  limitation. These keys are not returned elsewhere in the response.
  * `:encoding_type` (`t:enum["url"]`)
  * `:key_marker` (`t:string`) Specifies the key to start with when listing
  objects in a bucket.
  * `:max_keys` (`t:integer`) Sets the maximum number of keys returned in the
  response. By default, the action returns up to 1,000 key names. The response
  might contain fewer keys but will never contain more. If additional keys
  satisfy the search criteria, but were not returned because max-keys was
  exceeded, the response contains true. To return the additional keys, see
  key-marker and version-id-marker.
  * `:prefix` (`t:string`) Use this parameter to select only those keys that begin
  with the specified prefix. You can use prefixes to separate a bucket into
  different groupings of keys. (You can think of using prefix to make groups
  in the same way that you'd use a folder in a file system.) You can use
  prefix with delimiter to roll up numerous objects into a single result under
  CommonPrefixes.
  * `:version_id_marker` (`t:string`) Specifies the object version you want to
  start listing from.
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  * `:optional_object_attributes`
  (`t:list[com.amazonaws.s3#OptionalObjectAttributes]`) Specifies the optional
  fields that you want returned in the response. Fields that you do not
  specify are not returned.
  * `:request_payer` (`t:enum["requester"]`)
  """

  @spec list_object_versions(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_object_versions_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def list_object_versions(%Client{} = client, bucket, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?versions"

    # Validate optional parameters
    optional_params = [
      delimiter: nil,
      encoding_type: nil,
      key_marker: nil,
      max_keys: nil,
      prefix: nil,
      version_id_marker: nil,
      expected_bucket_owner: nil,
      optional_object_attributes: nil,
      request_payer: nil
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
      if opt_val = Keyword.get(options, :request_payer) do
        [{"x-amz-request-payer", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :optional_object_attributes) do
        [{"x-amz-optional-object-attributes", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :version_id_marker) do
        [{"version-id-marker", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :prefix) do
        [{"prefix", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_keys) do
        [{"max-keys", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :key_marker) do
        [{"key-marker", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :encoding_type) do
        [{"encoding-type", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :delimiter) do
        [{"delimiter", opt_val} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-request-charged", "RequestCharged"}]
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :delimiter,
        :encoding_type,
        :key_marker,
        :max_keys,
        :prefix,
        :version_id_marker,
        :expected_bucket_owner,
        :optional_object_attributes,
        :request_payer
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Returns some or all (up to
  1,000) of the objects in a bucket. You can use the request parameters as
  selection criteria to return a subset of the objects in a bucket. A 200 OK
  response can contain valid or invalid XML. Be sure to design your application
  to parse the contents of the response and handle it appropriately.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20ListObjects&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the bucket containing the objects.

  ## Optional parameters:
  * `:delimiter` (`t:string`) A delimiter is a character that you use to group
  keys.
  * `:encoding_type` (`t:enum["url"]`)
  * `:marker` (`t:string`) Marker is where you want Amazon S3 to start listing
  from. Amazon S3 starts listing after this specified key. Marker can be any
  key in the bucket.
  * `:max_keys` (`t:integer`) Sets the maximum number of keys returned in the
  response. By default, the action returns up to 1,000 key names. The response
  might contain fewer keys but will never contain more.
  * `:prefix` (`t:string`) Limits the response to keys that begin with the
  specified prefix.
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  * `:optional_object_attributes`
  (`t:list[com.amazonaws.s3#OptionalObjectAttributes]`) Specifies the optional
  fields that you want returned in the response. Fields that you do not
  specify are not returned.
  * `:request_payer` (`t:enum["requester"]`) Confirms that the requester knows
  that she or he will be charged for the list objects request. Bucket owners
  need not specify this parameter in their requests.
  """

  @spec list_objects(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_objects_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_objects_errors()}

  def list_objects(%Client{} = client, bucket, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}"

    # Validate optional parameters
    optional_params = [
      delimiter: nil,
      encoding_type: nil,
      marker: nil,
      max_keys: nil,
      prefix: nil,
      expected_bucket_owner: nil,
      optional_object_attributes: nil,
      request_payer: nil
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
      if opt_val = Keyword.get(options, :request_payer) do
        [{"x-amz-request-payer", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :optional_object_attributes) do
        [{"x-amz-optional-object-attributes", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :prefix) do
        [{"prefix", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_keys) do
        [{"max-keys", opt_val} | query_params]
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
      if opt_val = Keyword.get(options, :encoding_type) do
        [{"encoding-type", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :delimiter) do
        [{"delimiter", opt_val} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-request-charged", "RequestCharged"}]
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :delimiter,
        :encoding_type,
        :marker,
        :max_keys,
        :prefix,
        :expected_bucket_owner,
        :optional_object_attributes,
        :request_payer
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns some or all (up to 1,000) of the objects in a bucket with each request.
  You can use the request parameters as selection criteria to return a subset of
  the objects in a bucket. A `200 OK` response can contain valid or invalid XML.
  Make sure to design your application to parse the contents of the response and
  handle it appropriately. For more information about listing objects, see
  [Listing object keys
  programmatically](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ListingKeysUsingAPIs.html)
  in the *Amazon S3 User Guide*. To get a list of your buckets, see
  [ListBuckets](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBuckets.html).
  **Directory buckets** - For directory buckets, you must make requests for this
  API operation to the Zonal endpoint. These endpoints support
  virtual-hosted-style requests in the format ```
  https://*bucket_name*.s3express-*az_id*.*region*.amazonaws.com/*key-name* ```
  . Path-style requests are not supported. For more information, see [Regional
  and Zonal
  endpoints](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-Regions-and-Zones.html)
  in the *Amazon S3 User Guide*. ## Definitions

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20ListObjectsV2&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) Directory buckets - When you use this operation with a
  directory bucket, you must use virtual-hosted-style requests in the format
  Bucket_name.s3express-az_id.region.amazonaws.com. Path-style requests are
  not supported. Directory bucket names must be unique in the chosen
  Availability Zone. Bucket names must follow the format
  bucket_base_name--az-id--x-s3 (for example,
  DOC-EXAMPLE-BUCKET--usw2-az1--x-s3). For information about bucket naming
  restrictions, see Directory bucket naming rules in the Amazon S3 User Guide.

  ## Optional parameters:
  * `:continuation_token` (`t:string`) ContinuationToken indicates to Amazon S3
  that the list is being continued on this bucket with a token.
  ContinuationToken is obfuscated and is not a real key. You can use this
  ContinuationToken for pagination of the list results.
  * `:delimiter` (`t:string`) A delimiter is a character that you use to group
  keys.
  * `:encoding_type` (`t:enum["url"]`) Encoding type used by Amazon S3 to encode
  object keys in the response. If using url, non-ASCII characters used in an
  object's key name will be URL encoded. For example, the object
  test_file(3).png will appear as test_file%283%29.png.
  * `:fetch_owner` (`t:boolean`) The owner field is not present in ListObjectsV2
  by default. If you want to return the owner field with each key in the
  result, then set the FetchOwner field to true.
  * `:max_keys` (`t:integer`) Sets the maximum number of keys returned in the
  response. By default, the action returns up to 1,000 key names. The response
  might contain fewer keys but will never contain more.
  * `:prefix` (`t:string`) Limits the response to keys that begin with the
  specified prefix.
  * `:start_after` (`t:string`) StartAfter is where you want Amazon S3 to start
  listing from. Amazon S3 starts listing after this specified key. StartAfter
  can be any key in the bucket.
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  * `:optional_object_attributes`
  (`t:list[com.amazonaws.s3#OptionalObjectAttributes]`) Specifies the optional
  fields that you want returned in the response. Fields that you do not
  specify are not returned.
  * `:request_payer` (`t:enum["requester"]`) Confirms that the requester knows
  that she or he will be charged for the list objects request in V2 style.
  Bucket owners need not specify this parameter in their requests.
  """

  @spec list_objects_v2(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_objects_v2_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_objects_v2_errors()}

  def list_objects_v2(%Client{} = client, bucket, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?list-type=2"

    # Validate optional parameters
    optional_params = [
      continuation_token: nil,
      delimiter: nil,
      encoding_type: nil,
      fetch_owner: nil,
      max_keys: nil,
      prefix: nil,
      start_after: nil,
      expected_bucket_owner: nil,
      optional_object_attributes: nil,
      request_payer: nil
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
      if opt_val = Keyword.get(options, :request_payer) do
        [{"x-amz-request-payer", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :optional_object_attributes) do
        [{"x-amz-optional-object-attributes", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :start_after) do
        [{"start-after", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :prefix) do
        [{"prefix", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_keys) do
        [{"max-keys", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :fetch_owner) do
        [{"fetch-owner", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :encoding_type) do
        [{"encoding-type", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :delimiter) do
        [{"delimiter", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :continuation_token) do
        [{"continuation-token", opt_val} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-request-charged", "RequestCharged"}]
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :continuation_token,
        :delimiter,
        :encoding_type,
        :fetch_owner,
        :max_keys,
        :prefix,
        :start_after,
        :expected_bucket_owner,
        :optional_object_attributes,
        :request_payer
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the parts that have been uploaded for a specific multipart upload. To use
  this operation, you must provide the `upload ID` in the request. You obtain
  this uploadID by sending the initiate multipart upload request through
  [CreateMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html).
  The `ListParts` request returns a maximum of 1,000 uploaded parts. The limit
  of 1,000 parts is also the default value. You can restrict the number of parts
  in a response by specifying the `max-parts` request parameter. If your
  multipart upload consists of more than 1,000 parts, the response returns an
  `IsTruncated` field with the value of `true`, and a `NextPartNumberMarker`
  element. To list remaining uploaded parts, in subsequent `ListParts` requests,
  include the `part-number-marker` query string parameter and set its value to
  the `NextPartNumberMarker` field value from the previous response.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20ListParts&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the bucket to which the parts are being
  uploaded.
  * `:key` (`t:string`) Object key for which the multipart upload was initiated.
  * `:upload_id` (`t:string`) Upload ID identifying the multipart upload whose
  parts are being listed.

  ## Optional parameters:
  * `:max_parts` (`t:integer`) Sets the maximum number of parts to return.
  * `:part_number_marker` (`t:string`) Specifies the part after which listing
  should begin. Only parts with higher part numbers will be listed.
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  * `:request_payer` (`t:enum["requester"]`)
  * `:sse_customer_algorithm` (`t:string`) The server-side encryption (SSE)
  algorithm used to encrypt the object. This parameter is needed only when the
  object was created using a checksum algorithm. For more information, see
  Protecting data using SSE-C keys in the Amazon S3 User Guide.
  * `:sse_customer_key` (`t:string`) The server-side encryption (SSE) customer
  managed key. This parameter is needed only when the object was created using
  a checksum algorithm. For more information, see Protecting data using SSE-C
  keys in the Amazon S3 User Guide.
  * `:sse_customer_key_md5` (`t:string`) The MD5 server-side encryption (SSE)
  customer managed key. This parameter is needed only when the object was
  created using a checksum algorithm. For more information, see Protecting
  data using SSE-C keys in the Amazon S3 User Guide.
  """

  @spec list_parts(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_parts_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def list_parts(%Client{} = client, bucket, key, upload_id, options \\ [])
      when is_binary(upload_id) do
    url_path =
      "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}?x-id=ListParts"

    # Validate optional parameters
    optional_params = [
      max_parts: nil,
      part_number_marker: nil,
      expected_bucket_owner: nil,
      request_payer: nil,
      sse_customer_algorithm: nil,
      sse_customer_key: nil,
      sse_customer_key_md5: nil
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
      if opt_val = Keyword.get(options, :sse_customer_key_md5) do
        [{"x-amz-server-side-encryption-customer-key-MD5", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :sse_customer_key) do
        [{"x-amz-server-side-encryption-customer-key", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :sse_customer_algorithm) do
        [{"x-amz-server-side-encryption-customer-algorithm", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :request_payer) do
        [{"x-amz-request-payer", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = [{"uploadId", upload_id}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :part_number_marker) do
        [{"part-number-marker", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_parts) do
        [{"max-parts", opt_val} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amz-abort-date", "AbortDate"},
          {"x-amz-abort-rule-id", "AbortRuleId"},
          {"x-amz-request-charged", "RequestCharged"}
        ]
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :max_parts,
        :part_number_marker,
        :expected_bucket_owner,
        :request_payer,
        :sse_customer_algorithm,
        :sse_customer_key,
        :sse_customer_key_md5
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Sets the accelerate
  configuration of an existing bucket. Amazon S3 Transfer Acceleration is a
  bucket-level feature that enables you to perform faster data transfers to
  Amazon S3.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20PutBucketAccelerateConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the bucket for which the accelerate
  configuration is set.
  * `:input` (`t:map`):
    * `:accelerate_configuration` (`t:structure`) Container for setting the transfer
  acceleration state.

  ## Optional parameters:
  * `:checksum_algorithm` (`t:enum["CRC32|CRC32C|SHA1|SHA256"]`) Indicates the
  algorithm used to create the checksum for the object when you use the SDK.
  This header will not provide any additional functionality if you don't use
  the SDK. When you send this header, there must be a corresponding
  x-amz-checksum or x-amz-trailer header sent. Otherwise, Amazon S3 fails the
  request with the HTTP status code 400 Bad Request. For more information, see
  Checking object integrity in the Amazon S3 User Guide.
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec put_bucket_accelerate_configuration(
          AWS.Client.t(),
          String.t(),
          input :: map(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}

  def put_bucket_accelerate_configuration(%Client{} = client, bucket, input, options \\ [])
      when is_map(input) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?accelerate"

    # Validate optional parameters
    optional_params = [checksum_algorithm: nil, expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :checksum_algorithm) do
        [{"x-amz-sdk-checksum-algorithm", opt_val} | headers]
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
      |> Keyword.drop([:checksum_algorithm, :expected_bucket_owner])

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Sets the permissions on an
  existing bucket using access control lists (ACL). For more information, see
  [Using
  ACLs](https://docs.aws.amazon.com/AmazonS3/latest/dev/S3_ACLs_UsingACLs.html).
  To set the ACL of a bucket, you must have the `WRITE_ACP` permission. You can
  use one of the following two ways to set a bucket's permissions:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20PutBucketAcl&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The bucket to which to apply the ACL.
  * `:input` (`t:map | nil`):
    * `:access_control_policy` (`t:structure`) Contains the elements that set the
  ACL permissions for an object per grantee.

  ## Optional parameters:
  * `:acl` (`t:enum["authenticated_read|private|public_read|public_read_write"]`)
  The canned ACL to apply to the bucket.
  * `:checksum_algorithm` (`t:enum["CRC32|CRC32C|SHA1|SHA256"]`) Indicates the
  algorithm used to create the checksum for the object when you use the SDK.
  This header will not provide any additional functionality if you don't use
  the SDK. When you send this header, there must be a corresponding
  x-amz-checksum or x-amz-trailer header sent. Otherwise, Amazon S3 fails the
  request with the HTTP status code 400 Bad Request. For more information, see
  Checking object integrity in the Amazon S3 User Guide.
  * `:content_md5` (`t:string`) The base64-encoded 128-bit MD5 digest of the data.
  This header must be used as a message integrity check to verify that the
  request body was not corrupted in transit. For more information, go to RFC
  1864.
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  * `:grant_full_control` (`t:string`) Allows grantee the read, write, read ACP,
  and write ACP permissions on the bucket.
  * `:grant_read` (`t:string`) Allows grantee to list the objects in the bucket.
  * `:grant_read_a_c_p` (`t:string`) Allows grantee to read the bucket ACL.
  * `:grant_write` (`t:string`) Allows grantee to create new objects in the
  bucket.
  * `:grant_write_a_c_p` (`t:string`) Allows grantee to write the ACL for the
  applicable bucket.
  """

  @spec put_bucket_acl(AWS.Client.t(), String.t(), input :: map() | nil, Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}

  def put_bucket_acl(%Client{} = client, bucket, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?acl"

    # Validate optional parameters
    optional_params = [
      acl: nil,
      checksum_algorithm: nil,
      content_md5: nil,
      expected_bucket_owner: nil,
      grant_full_control: nil,
      grant_read: nil,
      grant_read_a_c_p: nil,
      grant_write: nil,
      grant_write_a_c_p: nil
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
      if opt_val = Keyword.get(options, :grant_write_a_c_p) do
        [{"x-amz-grant-write-acp", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :grant_write) do
        [{"x-amz-grant-write", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :grant_read_a_c_p) do
        [{"x-amz-grant-read-acp", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :grant_read) do
        [{"x-amz-grant-read", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :grant_full_control) do
        [{"x-amz-grant-full-control", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :content_md5) do
        [{"Content-MD5", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :checksum_algorithm) do
        [{"x-amz-sdk-checksum-algorithm", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :acl) do
        [{"x-amz-acl", opt_val} | headers]
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
      |> Keyword.drop([
        :acl,
        :checksum_algorithm,
        :content_md5,
        :expected_bucket_owner,
        :grant_full_control,
        :grant_read,
        :grant_read_a_c_p,
        :grant_write,
        :grant_write_a_c_p
      ])

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Sets an analytics
  configuration for the bucket (specified by the analytics configuration ID).
  You can have up to 1,000 analytics configurations per bucket.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20PutBucketAnalyticsConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the bucket to which an analytics
  configuration is stored.
  * `:id` (`t:string`) The ID that identifies the analytics configuration.
  * `:input` (`t:map`):
    * `:analytics_configuration` (`t:structure`) The configuration and any analyses
  for the analytics filter.

  ## Optional parameters:
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec put_bucket_analytics_configuration(
          AWS.Client.t(),
          String.t(),
          String.t(),
          input :: map(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}

  def put_bucket_analytics_configuration(%Client{} = client, bucket, id, input, options \\ [])
      when is_map(input) and is_binary(id) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?analytics"

    # Validate optional parameters
    optional_params = [expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = [{"id", id}]

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:expected_bucket_owner])

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Sets the `cors`
  configuration for your bucket. If the configuration exists, Amazon S3 replaces
  it.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20PutBucketCors&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) Specifies the bucket impacted by the corsconfiguration.
  * `:input` (`t:map`):
    * `:c_o_r_s_configuration` (`t:structure`) Describes the cross-origin access
  configuration for objects in an Amazon S3 bucket. For more information, see
  Enabling Cross-Origin Resource Sharing in the Amazon S3 User Guide.

  ## Optional parameters:
  * `:checksum_algorithm` (`t:enum["CRC32|CRC32C|SHA1|SHA256"]`) Indicates the
  algorithm used to create the checksum for the object when you use the SDK.
  This header will not provide any additional functionality if you don't use
  the SDK. When you send this header, there must be a corresponding
  x-amz-checksum or x-amz-trailer header sent. Otherwise, Amazon S3 fails the
  request with the HTTP status code 400 Bad Request. For more information, see
  Checking object integrity in the Amazon S3 User Guide.
  * `:content_md5` (`t:string`) The base64-encoded 128-bit MD5 digest of the data.
  This header must be used as a message integrity check to verify that the
  request body was not corrupted in transit. For more information, go to RFC
  1864.
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec put_bucket_cors(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}

  def put_bucket_cors(%Client{} = client, bucket, input, options \\ []) when is_map(input) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?cors"

    # Validate optional parameters
    optional_params = [checksum_algorithm: nil, content_md5: nil, expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :content_md5) do
        [{"Content-MD5", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :checksum_algorithm) do
        [{"x-amz-sdk-checksum-algorithm", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    options =
      Keyword.put(
        options,
        :append_sha256_content_hash,
        true
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:checksum_algorithm, :content_md5, :expected_bucket_owner])

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. This action uses the
  `encryption` subresource to configure default encryption and Amazon S3 Bucket
  Keys for an existing bucket.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20PutBucketEncryption&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) Specifies default encryption for a bucket using
  server-side encryption with different key options. By default, all buckets
  have a default encryption configuration that uses server-side encryption
  with Amazon S3 managed keys (SSE-S3). You can optionally configure default
  encryption for a bucket by using server-side encryption with an Amazon Web
  Services KMS key (SSE-KMS) or a customer-provided key (SSE-C). For
  information about the bucket default encryption feature, see Amazon S3
  Bucket Default Encryption in the Amazon S3 User Guide.
  * `:input` (`t:map`):
    * `:server_side_encryption_configuration` (`t:structure`)

  ## Optional parameters:
  * `:checksum_algorithm` (`t:enum["CRC32|CRC32C|SHA1|SHA256"]`) Indicates the
  algorithm used to create the checksum for the object when you use the SDK.
  This header will not provide any additional functionality if you don't use
  the SDK. When you send this header, there must be a corresponding
  x-amz-checksum or x-amz-trailer header sent. Otherwise, Amazon S3 fails the
  request with the HTTP status code 400 Bad Request. For more information, see
  Checking object integrity in the Amazon S3 User Guide.
  * `:content_md5` (`t:string`) The base64-encoded 128-bit MD5 digest of the
  server-side encryption configuration.
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec put_bucket_encryption(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}

  def put_bucket_encryption(%Client{} = client, bucket, input, options \\ [])
      when is_map(input) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?encryption"

    # Validate optional parameters
    optional_params = [checksum_algorithm: nil, content_md5: nil, expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :content_md5) do
        [{"Content-MD5", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :checksum_algorithm) do
        [{"x-amz-sdk-checksum-algorithm", opt_val} | headers]
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
      |> Keyword.drop([:checksum_algorithm, :content_md5, :expected_bucket_owner])

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Puts a S3
  Intelligent-Tiering configuration to the specified bucket. You can have up to
  1,000 S3 Intelligent-Tiering configurations per bucket.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20PutBucketIntelligentTieringConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the Amazon S3 bucket whose configuration
  you want to modify or retrieve.
  * `:id` (`t:string`) The ID used to identify the S3 Intelligent-Tiering
  configuration.
  * `:input` (`t:map`):
    * `:intelligent_tiering_configuration` (`t:structure`) Container for S3
  Intelligent-Tiering configuration.

  ## Optional parameters:
  """

  @spec put_bucket_intelligent_tiering_configuration(
          AWS.Client.t(),
          String.t(),
          String.t(),
          input :: map(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}

  def put_bucket_intelligent_tiering_configuration(
        %Client{} = client,
        bucket,
        id,
        input,
        options \\ []
      )
      when is_map(input) and is_binary(id) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?intelligent-tiering"

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
    query_params = [{"id", id}]

    # Optional query params

    meta =
      metadata()

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. This implementation of the
  `PUT` action adds an inventory configuration (identified by the inventory ID)
  to the bucket. You can have up to 1,000 inventory configurations per bucket.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20PutBucketInventoryConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the bucket where the inventory
  configuration will be stored.
  * `:id` (`t:string`) The ID used to identify the inventory configuration.
  * `:input` (`t:map`):
    * `:inventory_configuration` (`t:structure`) Specifies the inventory
  configuration.

  ## Optional parameters:
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec put_bucket_inventory_configuration(
          AWS.Client.t(),
          String.t(),
          String.t(),
          input :: map(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}

  def put_bucket_inventory_configuration(%Client{} = client, bucket, id, input, options \\ [])
      when is_map(input) and is_binary(id) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?inventory"

    # Validate optional parameters
    optional_params = [expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = [{"id", id}]

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:expected_bucket_owner])

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Creates a new lifecycle
  configuration for the bucket or replaces an existing lifecycle configuration.
  Keep in mind that this will overwrite an existing lifecycle configuration, so
  if you want to retain any configuration details, they must be included in the
  new lifecycle configuration. For information about lifecycle configuration,
  see [Managing your storage
  lifecycle](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lifecycle-mgmt.html).
  Bucket lifecycle configuration now supports specifying a lifecycle rule using
  an object key name prefix, one or more object tags, object size, or any
  combination of these. Accordingly, this section describes the latest API. The
  previous version of the API supported filtering based only on an object key
  name prefix, which is supported for backward compatibility. For the related
  API description, see
  [PutBucketLifecycle](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycle.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20PutBucketLifecycleConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the bucket for which to set the
  configuration.
  * `:input` (`t:map | nil`):
    * `:lifecycle_configuration` (`t:structure`) Container for lifecycle rules. You
  can add as many as 1,000 rules.

  ## Optional parameters:
  * `:checksum_algorithm` (`t:enum["CRC32|CRC32C|SHA1|SHA256"]`) Indicates the
  algorithm used to create the checksum for the object when you use the SDK.
  This header will not provide any additional functionality if you don't use
  the SDK. When you send this header, there must be a corresponding
  x-amz-checksum or x-amz-trailer header sent. Otherwise, Amazon S3 fails the
  request with the HTTP status code 400 Bad Request. For more information, see
  Checking object integrity in the Amazon S3 User Guide.
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec put_bucket_lifecycle_configuration(
          AWS.Client.t(),
          String.t(),
          input :: map() | nil,
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}

  def put_bucket_lifecycle_configuration(%Client{} = client, bucket, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?lifecycle"

    # Validate optional parameters
    optional_params = [checksum_algorithm: nil, expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :checksum_algorithm) do
        [{"x-amz-sdk-checksum-algorithm", opt_val} | headers]
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
      |> Keyword.drop([:checksum_algorithm, :expected_bucket_owner])

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Set the logging parameters
  for a bucket and to specify permissions for who can view and modify the
  logging parameters. All logs are saved to buckets in the same Amazon Web
  Services Region as the source bucket. To set the logging status of a bucket,
  you must be the bucket owner.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20PutBucketLogging&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the bucket for which to set the logging
  parameters.
  * `:input` (`t:map`):
    * `:bucket_logging_status` (`t:structure`) Container for logging status
  information.

  ## Optional parameters:
  * `:checksum_algorithm` (`t:enum["CRC32|CRC32C|SHA1|SHA256"]`) Indicates the
  algorithm used to create the checksum for the object when you use the SDK.
  This header will not provide any additional functionality if you don't use
  the SDK. When you send this header, there must be a corresponding
  x-amz-checksum or x-amz-trailer header sent. Otherwise, Amazon S3 fails the
  request with the HTTP status code 400 Bad Request. For more information, see
  Checking object integrity in the Amazon S3 User Guide.
  * `:content_md5` (`t:string`) The MD5 hash of the PutBucketLogging request body.
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec put_bucket_logging(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}

  def put_bucket_logging(%Client{} = client, bucket, input, options \\ []) when is_map(input) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?logging"

    # Validate optional parameters
    optional_params = [checksum_algorithm: nil, content_md5: nil, expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :content_md5) do
        [{"Content-MD5", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :checksum_algorithm) do
        [{"x-amz-sdk-checksum-algorithm", opt_val} | headers]
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
      |> Keyword.drop([:checksum_algorithm, :content_md5, :expected_bucket_owner])

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Sets a metrics
  configuration (specified by the metrics configuration ID) for the bucket. You
  can have up to 1,000 metrics configurations per bucket. If you're updating an
  existing metrics configuration, note that this is a full replacement of the
  existing metrics configuration. If you don't include the elements you want to
  keep, they are erased.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20PutBucketMetricsConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the bucket for which the metrics
  configuration is set.
  * `:id` (`t:string`) The ID used to identify the metrics configuration. The ID
  has a 64 character limit and can only contain letters, numbers, periods,
  dashes, and underscores.
  * `:input` (`t:map`):
    * `:metrics_configuration` (`t:structure`) Specifies the metrics configuration.

  ## Optional parameters:
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec put_bucket_metrics_configuration(
          AWS.Client.t(),
          String.t(),
          String.t(),
          input :: map(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}

  def put_bucket_metrics_configuration(%Client{} = client, bucket, id, input, options \\ [])
      when is_map(input) and is_binary(id) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?metrics"

    # Validate optional parameters
    optional_params = [expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = [{"id", id}]

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:expected_bucket_owner])

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Enables notifications of
  specified events for a bucket. For more information about event notifications,
  see [Configuring Event
  Notifications](https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html).
  Using this API, you can replace an existing notification configuration. The
  configuration is an XML file that defines the event types that you want Amazon
  S3 to publish and the destination where you want Amazon S3 to publish an event
  notification when it detects an event of the specified type.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20PutBucketNotificationConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the bucket.
  * `:input` (`t:map`):
    * `:notification_configuration` (`t:structure`)

  ## Optional parameters:
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  * `:skip_destination_validation` (`t:boolean`) Skips validation of Amazon SQS,
  Amazon SNS, and Lambda destinations. True or false value.
  """

  @spec put_bucket_notification_configuration(
          AWS.Client.t(),
          String.t(),
          input :: map(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}

  def put_bucket_notification_configuration(%Client{} = client, bucket, input, options \\ [])
      when is_map(input) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?notification"

    # Validate optional parameters
    optional_params = [expected_bucket_owner: nil, skip_destination_validation: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :skip_destination_validation) do
        [{"x-amz-skip-destination-validation", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
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
      |> Keyword.drop([:expected_bucket_owner, :skip_destination_validation])

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Creates or modifies
  `OwnershipControls` for an Amazon S3 bucket. To use this operation, you must
  have the `s3:PutBucketOwnershipControls` permission. For more information
  about Amazon S3 permissions, see [Specifying permissions in a
  policy](https://docs.aws.amazon.com/AmazonS3/latest/user-guide/using-with-s3-actions.html).
  For information about Amazon S3 Object Ownership, see [Using object
  ownership](https://docs.aws.amazon.com/AmazonS3/latest/user-guide/about-object-ownership.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20PutBucketOwnershipControls&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the Amazon S3 bucket whose
  OwnershipControls you want to set.
  * `:input` (`t:map`):
    * `:ownership_controls` (`t:structure`) The OwnershipControls
  (BucketOwnerEnforced, BucketOwnerPreferred, or ObjectWriter) that you want
  to apply to this Amazon S3 bucket.

  ## Optional parameters:
  * `:content_md5` (`t:string`) The MD5 hash of the OwnershipControls request
  body.
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec put_bucket_ownership_controls(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}

  def put_bucket_ownership_controls(%Client{} = client, bucket, input, options \\ [])
      when is_map(input) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?ownershipControls"

    # Validate optional parameters
    optional_params = [content_md5: nil, expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :content_md5) do
        [{"Content-MD5", opt_val} | headers]
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
      |> Keyword.drop([:content_md5, :expected_bucket_owner])

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Applies an Amazon S3 bucket policy to an Amazon S3 bucket. **Directory buckets
  ** - For directory buckets, you must make requests for this API operation to
  the Regional endpoint. These endpoints support path-style requests in the
  format ``` https://s3express-control.*region_code*.amazonaws.com/*bucket-name*
  ``` . Virtual-hosted-style requests aren't supported. For more information,
  see [Regional and Zonal
  endpoints](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-Regions-and-Zones.html)
  in the *Amazon S3 User Guide*. ## Definitions

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20PutBucketPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the bucket.
  * `:input` (`t:map`):
    * `:policy` (`t:string`) The bucket policy as a JSON document.

  ## Optional parameters:
  * `:checksum_algorithm` (`t:enum["CRC32|CRC32C|SHA1|SHA256"]`) Indicates the
  algorithm used to create the checksum for the object when you use the SDK.
  This header will not provide any additional functionality if you don't use
  the SDK. When you send this header, there must be a corresponding
  x-amz-checksum-algorithm or x-amz-trailer header sent. Otherwise, Amazon S3
  fails the request with the HTTP status code 400 Bad Request.
  * `:confirm_remove_self_bucket_access` (`t:boolean`) Set this parameter to true
  to confirm that you want to remove your permissions to change this bucket
  policy in the future.
  * `:content_md5` (`t:string`) The MD5 hash of the request body.
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec put_bucket_policy(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}

  def put_bucket_policy(%Client{} = client, bucket, input, options \\ []) when is_map(input) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?policy"

    # Validate optional parameters
    optional_params = [
      checksum_algorithm: nil,
      confirm_remove_self_bucket_access: nil,
      content_md5: nil,
      expected_bucket_owner: nil
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
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :content_md5) do
        [{"Content-MD5", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :confirm_remove_self_bucket_access) do
        [{"x-amz-confirm-remove-self-bucket-access", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :checksum_algorithm) do
        [{"x-amz-sdk-checksum-algorithm", opt_val} | headers]
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
      |> Keyword.drop([
        :checksum_algorithm,
        :confirm_remove_self_bucket_access,
        :content_md5,
        :expected_bucket_owner
      ])

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Creates a replication
  configuration or replaces an existing one. For more information, see
  [Replication](https://docs.aws.amazon.com/AmazonS3/latest/dev/replication.html)
  in the *Amazon S3 User Guide*. Specify the replication configuration in the
  request body. In the replication configuration, you provide the name of the
  destination bucket or buckets where you want Amazon S3 to replicate objects,
  the IAM role that Amazon S3 can assume to replicate objects on your behalf,
  and other relevant information. You can invoke this request for a specific
  Amazon Web Services Region by using the [ `aws:RequestedRegion`
  ](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requestedregion)
  condition key.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20PutBucketReplication&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the bucket
  * `:input` (`t:map`):
    * `:replication_configuration` (`t:structure`)

  ## Optional parameters:
  * `:checksum_algorithm` (`t:enum["CRC32|CRC32C|SHA1|SHA256"]`) Indicates the
  algorithm used to create the checksum for the object when you use the SDK.
  This header will not provide any additional functionality if you don't use
  the SDK. When you send this header, there must be a corresponding
  x-amz-checksum or x-amz-trailer header sent. Otherwise, Amazon S3 fails the
  request with the HTTP status code 400 Bad Request. For more information, see
  Checking object integrity in the Amazon S3 User Guide.
  * `:content_md5` (`t:string`) The base64-encoded 128-bit MD5 digest of the data.
  You must use this header as a message integrity check to verify that the
  request body was not corrupted in transit. For more information, see RFC
  1864.
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  * `:token` (`t:string`) A token to allow Object Lock to be enabled for an
  existing bucket.
  """

  @spec put_bucket_replication(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}

  def put_bucket_replication(%Client{} = client, bucket, input, options \\ [])
      when is_map(input) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?replication"

    # Validate optional parameters
    optional_params = [
      checksum_algorithm: nil,
      content_md5: nil,
      expected_bucket_owner: nil,
      token: nil
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
      if opt_val = Keyword.get(options, :token) do
        [{"x-amz-bucket-object-lock-token", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :content_md5) do
        [{"Content-MD5", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :checksum_algorithm) do
        [{"x-amz-sdk-checksum-algorithm", opt_val} | headers]
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
      |> Keyword.drop([:checksum_algorithm, :content_md5, :expected_bucket_owner, :token])

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Sets the request payment
  configuration for a bucket. By default, the bucket owner pays for downloads
  from the bucket. This configuration parameter enables the bucket owner (only)
  to specify that the person requesting the download will be charged for the
  download. For more information, see [Requester Pays
  Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html).
  The following operations are related to `PutBucketRequestPayment`:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20PutBucketRequestPayment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The bucket name.
  * `:input` (`t:map`):
    * `:request_payment_configuration` (`t:structure`) Container for Payer.

  ## Optional parameters:
  * `:checksum_algorithm` (`t:enum["CRC32|CRC32C|SHA1|SHA256"]`) Indicates the
  algorithm used to create the checksum for the object when you use the SDK.
  This header will not provide any additional functionality if you don't use
  the SDK. When you send this header, there must be a corresponding
  x-amz-checksum or x-amz-trailer header sent. Otherwise, Amazon S3 fails the
  request with the HTTP status code 400 Bad Request. For more information, see
  Checking object integrity in the Amazon S3 User Guide.
  * `:content_md5` (`t:string`) The base64-encoded 128-bit MD5 digest of the data.
  You must use this header as a message integrity check to verify that the
  request body was not corrupted in transit. For more information, see RFC
  1864.
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec put_bucket_request_payment(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}

  def put_bucket_request_payment(%Client{} = client, bucket, input, options \\ [])
      when is_map(input) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?requestPayment"

    # Validate optional parameters
    optional_params = [checksum_algorithm: nil, content_md5: nil, expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :content_md5) do
        [{"Content-MD5", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :checksum_algorithm) do
        [{"x-amz-sdk-checksum-algorithm", opt_val} | headers]
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
      |> Keyword.drop([:checksum_algorithm, :content_md5, :expected_bucket_owner])

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Sets the tags for a
  bucket.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20PutBucketTagging&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The bucket name.
  * `:input` (`t:map`):
    * `:tagging` (`t:structure`) Container for the TagSet and Tag elements.

  ## Optional parameters:
  * `:checksum_algorithm` (`t:enum["CRC32|CRC32C|SHA1|SHA256"]`) Indicates the
  algorithm used to create the checksum for the object when you use the SDK.
  This header will not provide any additional functionality if you don't use
  the SDK. When you send this header, there must be a corresponding
  x-amz-checksum or x-amz-trailer header sent. Otherwise, Amazon S3 fails the
  request with the HTTP status code 400 Bad Request. For more information, see
  Checking object integrity in the Amazon S3 User Guide.
  * `:content_md5` (`t:string`) The base64-encoded 128-bit MD5 digest of the data.
  You must use this header as a message integrity check to verify that the
  request body was not corrupted in transit. For more information, see RFC
  1864.
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec put_bucket_tagging(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}

  def put_bucket_tagging(%Client{} = client, bucket, input, options \\ []) when is_map(input) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?tagging"

    # Validate optional parameters
    optional_params = [checksum_algorithm: nil, content_md5: nil, expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :content_md5) do
        [{"Content-MD5", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :checksum_algorithm) do
        [{"x-amz-sdk-checksum-algorithm", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    options =
      Keyword.put(
        options,
        :append_sha256_content_hash,
        true
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:checksum_algorithm, :content_md5, :expected_bucket_owner])

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Sets the versioning state
  of an existing bucket.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20PutBucketVersioning&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The bucket name.
  * `:input` (`t:map`):
    * `:versioning_configuration` (`t:structure`) Container for setting the
  versioning state.

  ## Optional parameters:
  * `:checksum_algorithm` (`t:enum["CRC32|CRC32C|SHA1|SHA256"]`) Indicates the
  algorithm used to create the checksum for the object when you use the SDK.
  This header will not provide any additional functionality if you don't use
  the SDK. When you send this header, there must be a corresponding
  x-amz-checksum or x-amz-trailer header sent. Otherwise, Amazon S3 fails the
  request with the HTTP status code 400 Bad Request. For more information, see
  Checking object integrity in the Amazon S3 User Guide.
  * `:content_md5` (`t:string`) >The base64-encoded 128-bit MD5 digest of the
  data. You must use this header as a message integrity check to verify that
  the request body was not corrupted in transit. For more information, see RFC
  1864.
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  * `:mfa` (`t:string`) The concatenation of the authentication device's serial
  number, a space, and the value that is displayed on your authentication
  device.
  """

  @spec put_bucket_versioning(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}

  def put_bucket_versioning(%Client{} = client, bucket, input, options \\ [])
      when is_map(input) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?versioning"

    # Validate optional parameters
    optional_params = [
      checksum_algorithm: nil,
      content_md5: nil,
      expected_bucket_owner: nil,
      mfa: nil
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
      if opt_val = Keyword.get(options, :mfa) do
        [{"x-amz-mfa", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :content_md5) do
        [{"Content-MD5", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :checksum_algorithm) do
        [{"x-amz-sdk-checksum-algorithm", opt_val} | headers]
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
      |> Keyword.drop([:checksum_algorithm, :content_md5, :expected_bucket_owner, :mfa])

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Sets the configuration of
  the website that is specified in the `website` subresource. To configure a
  bucket as a website, you can add this subresource on the bucket with website
  configuration information such as the file name of the index document and any
  redirect rules. For more information, see [Hosting Websites on Amazon
  S3](https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html). This
  PUT action requires the `S3:PutBucketWebsite` permission. By default, only the
  bucket owner can configure the website attached to a bucket; however, bucket
  owners can allow other users to set the website configuration by writing a
  bucket policy that grants them the `S3:PutBucketWebsite` permission.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20PutBucketWebsite&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The bucket name.
  * `:input` (`t:map`):
    * `:website_configuration` (`t:structure`) Container for the request.

  ## Optional parameters:
  * `:checksum_algorithm` (`t:enum["CRC32|CRC32C|SHA1|SHA256"]`) Indicates the
  algorithm used to create the checksum for the object when you use the SDK.
  This header will not provide any additional functionality if you don't use
  the SDK. When you send this header, there must be a corresponding
  x-amz-checksum or x-amz-trailer header sent. Otherwise, Amazon S3 fails the
  request with the HTTP status code 400 Bad Request. For more information, see
  Checking object integrity in the Amazon S3 User Guide.
  * `:content_md5` (`t:string`) The base64-encoded 128-bit MD5 digest of the data.
  You must use this header as a message integrity check to verify that the
  request body was not corrupted in transit. For more information, see RFC
  1864.
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec put_bucket_website(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}

  def put_bucket_website(%Client{} = client, bucket, input, options \\ []) when is_map(input) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?website"

    # Validate optional parameters
    optional_params = [checksum_algorithm: nil, content_md5: nil, expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :content_md5) do
        [{"Content-MD5", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :checksum_algorithm) do
        [{"x-amz-sdk-checksum-algorithm", opt_val} | headers]
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
      |> Keyword.drop([:checksum_algorithm, :content_md5, :expected_bucket_owner])

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Adds an object to a bucket. Amazon S3 never adds partial objects; if you receive
  a success response, Amazon S3 added the entire object to the bucket. You
  cannot use `PutObject` to only update a single piece of metadata for an
  existing object. You must put the entire object with updated metadata if you
  want to update some values. If your bucket uses the bucket owner enforced
  setting for Object Ownership, ACLs are disabled and no longer affect
  permissions. All objects written to the bucket by any account will be owned by
  the bucket owner. **Directory buckets** - For directory buckets, you must make
  requests for this API operation to the Zonal endpoint. These endpoints support
  virtual-hosted-style requests in the format ```
  https://*bucket_name*.s3express-*az_id*.*region*.amazonaws.com/*key-name* ```
  . Path-style requests are not supported. For more information, see [Regional
  and Zonal
  endpoints](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-Regions-and-Zones.html)
  in the *Amazon S3 User Guide*. Amazon S3 is a distributed system. If it
  receives multiple write requests for the same object simultaneously, it
  overwrites all but the last object written. However, Amazon S3 provides
  features that can modify this behavior:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20PutObject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The bucket name to which the PUT action was initiated.
  * `:key` (`t:string`) Object key for which the PUT action was initiated.
  * `:input` (`t:binary`)


  ## Optional parameters:
  * `:checksum_algorithm` (`t:enum["CRC32|CRC32C|SHA1|SHA256"]`) Indicates the
  algorithm used to create the checksum for the object when you use the SDK.
  This header will not provide any additional functionality if you don't use
  the SDK. When you send this header, there must be a corresponding
  x-amz-checksum-algorithm or x-amz-trailer header sent. Otherwise, Amazon S3
  fails the request with the HTTP status code 400 Bad Request.
  * `:sse_customer_key` (`t:string`) Specifies the customer-provided encryption
  key for Amazon S3 to use in encrypting data. This value is used to store the
  object and then it is discarded; Amazon S3 does not store the encryption
  key. The key must be appropriate for use with the algorithm specified in the
  x-amz-server-side-encryption-customer-algorithm header.
  * `:grant_full_control` (`t:string`) Gives the grantee READ, READ_ACP, and
  WRITE_ACP permissions on the object.
  * `:acl`
  (`t:enum["authenticated_read|aws_exec_read|bucket_owner_full_control|bucket_owner_read|private|public_read|public_read_write"]`)
  The canned ACL to apply to the object. For more information, see Canned ACL
  in the Amazon S3 User Guide.
  * `:checksum_c_r_c32_c` (`t:string`) This header can be used as a data integrity
  check to verify that the data received is the same data that was originally
  sent. This header specifies the base64-encoded, 32-bit CRC32C checksum of
  the object. For more information, see Checking object integrity in the
  Amazon S3 User Guide.
  * `:object_lock_retain_until_date` (`t:timestamp[date-time]`) The date and time
  when you want this object's Object Lock to expire. Must be formatted as a
  timestamp parameter.
  * `:request_payer` (`t:enum["requester"]`)
  * `:bucket_key_enabled` (`t:boolean`) Specifies whether Amazon S3 should use an
  S3 Bucket Key for object encryption with server-side encryption using Key
  Management Service (KMS) keys (SSE-KMS). Setting this header to true causes
  Amazon S3 to use an S3 Bucket Key for object encryption with SSE-KMS.
  * `:content_type` (`t:string`) A standard MIME type describing the format of the
  contents. For more information, see
  https://www.rfc-editor.org/rfc/rfc9110.html#name-content-type.
  * `:sse_customer_key_md5` (`t:string`) Specifies the 128-bit MD5 digest of the
  encryption key according to RFC 1321. Amazon S3 uses this header for a
  message integrity check to ensure that the encryption key was transmitted
  without error.
  * `:object_lock_legal_hold_status` (`t:enum["OFF|ON"]`) Specifies whether a
  legal hold will be applied to this object. For more information about S3
  Object Lock, see Object Lock in the Amazon S3 User Guide.
  * `:tagging` (`t:string`) The tag-set for the object. The tag-set must be
  encoded as URL Query parameters. (For example, "Key1=Value1")
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  * `:website_redirect_location` (`t:string`) If the bucket is configured as a
  website, redirects requests for this object to another object in the same
  bucket or to an external URL. Amazon S3 stores the value of this header in
  the object metadata. For information about object metadata, see Object Key
  and Metadata in the Amazon S3 User Guide.
  * `:content_language` (`t:string`) The language the content is in.
  * `:sse_customer_algorithm` (`t:string`) Specifies the algorithm to use when
  encrypting the object (for example, AES256).
  * `:content_encoding` (`t:string`) Specifies what content encodings have been
  applied to the object and thus what decoding mechanisms must be applied to
  obtain the media-type referenced by the Content-Type header field. For more
  information, see
  https://www.rfc-editor.org/rfc/rfc9110.html#field.content-encoding.
  * `:checksum_s_h_a256` (`t:string`) This header can be used as a data integrity
  check to verify that the data received is the same data that was originally
  sent. This header specifies the base64-encoded, 256-bit SHA-256 digest of
  the object. For more information, see Checking object integrity in the
  Amazon S3 User Guide.
  * `:expires` (`t:timestamp`) The date and time at which the object is no longer
  cacheable. For more information, see
  https://www.rfc-editor.org/rfc/rfc7234#section-5.3.
  * `:content_md5` (`t:string`) The base64-encoded 128-bit MD5 digest of the
  message (without the headers) according to RFC 1864. This header can be used
  as a message integrity check to verify that the data is the same data that
  was originally sent. Although it is optional, we recommend using the
  Content-MD5 mechanism as an end-to-end integrity check. For more information
  about REST request authentication, see REST Authentication.
  * `:grant_write_a_c_p` (`t:string`) Allows grantee to write the ACL for the
  applicable object.
  * `:sse_kms_encryption_context` (`t:string`) Specifies the Amazon Web Services
  KMS Encryption Context to use for object encryption. The value of this
  header is a base64-encoded UTF-8 string holding JSON with the encryption
  context key-value pairs. This value is stored as object metadata and
  automatically gets passed on to Amazon Web Services KMS for future GetObject
  or CopyObject operations on this object. This value must be explicitly added
  during CopyObject operations.
  * `:cache_control` (`t:string`) Can be used to specify caching behavior along
  the request/reply chain. For more information, see
  http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9.
  * `:storage_class`
  (`t:enum["DEEP_ARCHIVE|EXPRESS_ONEZONE|GLACIER|GLACIER_IR|INTELLIGENT_TIERING|ONEZONE_IA|OUTPOSTS|REDUCED_REDUNDANCY|SNOW|STANDARD|STANDARD_IA"]`)
  By default, Amazon S3 uses the STANDARD Storage Class to store newly created
  objects. The STANDARD storage class provides high durability and high
  availability. Depending on performance needs, you can specify a different
  Storage Class. For more information, see Storage Classes in the Amazon S3
  User Guide.
  * `:grant_read` (`t:string`) Allows grantee to read the object data and its
  metadata.
  * `:content_length` (`t:long`) Size of the body in bytes. This parameter is
  useful when the size of the body cannot be determined automatically. For
  more information, see
  https://www.rfc-editor.org/rfc/rfc9110.html#name-content-length.
  * `:object_lock_mode` (`t:enum["COMPLIANCE|GOVERNANCE"]`) The Object Lock mode
  that you want to apply to this object.
  * `:content_disposition` (`t:string`) Specifies presentational information for
  the object. For more information, see
  https://www.rfc-editor.org/rfc/rfc6266#section-4.
  * `:server_side_encryption` (`t:enum["AES256|aws_kms|aws_kms_dsse"]`) The
  server-side encryption algorithm that was used when you store this object in
  Amazon S3 (for example, AES256, aws:kms, aws:kms:dsse).
  * `:sse_kms_key_id` (`t:string`) If x-amz-server-side-encryption has a valid
  value of aws:kms or aws:kms:dsse, this header specifies the ID (Key ID, Key
  ARN, or Key Alias) of the Key Management Service (KMS) symmetric encryption
  customer managed key that was used for the object. If you specify
  x-amz-server-side-encryption:aws:kms or
  x-amz-server-side-encryption:aws:kms:dsse, but do not provide
  x-amz-server-side-encryption-aws-kms-key-id, Amazon S3 uses the Amazon Web
  Services managed key (aws/s3) to protect the data. If the KMS key does not
  exist in the same account that's issuing the command, you must use the full
  ARN and not just the ID.
  * `:grant_read_a_c_p` (`t:string`) Allows grantee to read the object ACL.
  * `:checksum_c_r_c32` (`t:string`) This header can be used as a data integrity
  check to verify that the data received is the same data that was originally
  sent. This header specifies the base64-encoded, 32-bit CRC32 checksum of the
  object. For more information, see Checking object integrity in the Amazon S3
  User Guide.
  * `:checksum_s_h_a1` (`t:string`) This header can be used as a data integrity
  check to verify that the data received is the same data that was originally
  sent. This header specifies the base64-encoded, 160-bit SHA-1 digest of the
  object. For more information, see Checking object integrity in the Amazon S3
  User Guide.
  """

  @spec put_object(AWS.Client.t(), String.t(), String.t(), input :: binary(), Keyword.t()) ::
          {:ok, put_object_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def put_object(%Client{} = client, bucket, key, input, options \\ []) when is_binary(input) do
    url_path =
      "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}?x-id=PutObject"

    # Validate optional parameters
    optional_params = [
      checksum_algorithm: nil,
      sse_customer_key: nil,
      grant_full_control: nil,
      acl: nil,
      checksum_c_r_c32_c: nil,
      object_lock_retain_until_date: nil,
      request_payer: nil,
      bucket_key_enabled: nil,
      content_type: nil,
      sse_customer_key_md5: nil,
      object_lock_legal_hold_status: nil,
      tagging: nil,
      expected_bucket_owner: nil,
      website_redirect_location: nil,
      content_language: nil,
      sse_customer_algorithm: nil,
      content_encoding: nil,
      checksum_s_h_a256: nil,
      expires: nil,
      content_md5: nil,
      grant_write_a_c_p: nil,
      sse_kms_encryption_context: nil,
      cache_control: nil,
      storage_class: nil,
      grant_read: nil,
      content_length: nil,
      object_lock_mode: nil,
      content_disposition: nil,
      server_side_encryption: nil,
      sse_kms_key_id: nil,
      grant_read_a_c_p: nil,
      checksum_c_r_c32: nil,
      checksum_s_h_a1: nil
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
      if opt_val = Keyword.get(options, :checksum_s_h_a1) do
        [{"x-amz-checksum-sha1", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :checksum_c_r_c32) do
        [{"x-amz-checksum-crc32", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :grant_read_a_c_p) do
        [{"x-amz-grant-read-acp", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :sse_kms_key_id) do
        [{"x-amz-server-side-encryption-aws-kms-key-id", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :server_side_encryption) do
        [{"x-amz-server-side-encryption", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :content_disposition) do
        [{"Content-Disposition", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :object_lock_mode) do
        [{"x-amz-object-lock-mode", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :content_length) do
        [{"Content-Length", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :grant_read) do
        [{"x-amz-grant-read", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :storage_class) do
        [{"x-amz-storage-class", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :cache_control) do
        [{"Cache-Control", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :sse_kms_encryption_context) do
        [{"x-amz-server-side-encryption-context", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :grant_write_a_c_p) do
        [{"x-amz-grant-write-acp", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :content_md5) do
        [{"Content-MD5", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :expires) do
        [{"Expires", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :checksum_s_h_a256) do
        [{"x-amz-checksum-sha256", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :content_encoding) do
        [{"Content-Encoding", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :sse_customer_algorithm) do
        [{"x-amz-server-side-encryption-customer-algorithm", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :content_language) do
        [{"Content-Language", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :website_redirect_location) do
        [{"x-amz-website-redirect-location", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :tagging) do
        [{"x-amz-tagging", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :object_lock_legal_hold_status) do
        [{"x-amz-object-lock-legal-hold", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :sse_customer_key_md5) do
        [{"x-amz-server-side-encryption-customer-key-MD5", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :content_type) do
        [{"Content-Type", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :bucket_key_enabled) do
        [{"x-amz-server-side-encryption-bucket-key-enabled", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :request_payer) do
        [{"x-amz-request-payer", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :object_lock_retain_until_date) do
        [{"x-amz-object-lock-retain-until-date", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :checksum_c_r_c32_c) do
        [{"x-amz-checksum-crc32c", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :acl) do
        [{"x-amz-acl", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :grant_full_control) do
        [{"x-amz-grant-full-control", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :sse_customer_key) do
        [{"x-amz-server-side-encryption-customer-key", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :checksum_algorithm) do
        [{"x-amz-sdk-checksum-algorithm", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params
    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amz-server-side-encryption-bucket-key-enabled", "BucketKeyEnabled"},
          {"x-amz-checksum-crc32", "ChecksumCRC32"},
          {"x-amz-checksum-crc32c", "ChecksumCRC32C"},
          {"x-amz-checksum-sha1", "ChecksumSHA1"},
          {"x-amz-checksum-sha256", "ChecksumSHA256"},
          {"ETag", "ETag"},
          {"x-amz-expiration", "Expiration"},
          {"x-amz-request-charged", "RequestCharged"},
          {"x-amz-server-side-encryption-customer-algorithm", "SSECustomerAlgorithm"},
          {"x-amz-server-side-encryption-customer-key-MD5", "SSECustomerKeyMD5"},
          {"x-amz-server-side-encryption-context", "SSEKMSEncryptionContext"},
          {"x-amz-server-side-encryption-aws-kms-key-id", "SSEKMSKeyId"},
          {"x-amz-server-side-encryption", "ServerSideEncryption"},
          {"x-amz-version-id", "VersionId"}
        ]
      )

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amz-server-side-encryption-bucket-key-enabled", "BucketKeyEnabled"},
          {"x-amz-checksum-crc32", "ChecksumCRC32"},
          {"x-amz-checksum-crc32c", "ChecksumCRC32C"},
          {"x-amz-checksum-sha1", "ChecksumSHA1"},
          {"x-amz-checksum-sha256", "ChecksumSHA256"},
          {"ETag", "ETag"},
          {"x-amz-expiration", "Expiration"},
          {"x-amz-request-charged", "RequestCharged"},
          {"x-amz-server-side-encryption-customer-algorithm", "SSECustomerAlgorithm"},
          {"x-amz-server-side-encryption-customer-key-MD5", "SSECustomerKeyMD5"},
          {"x-amz-server-side-encryption-context", "SSEKMSEncryptionContext"},
          {"x-amz-server-side-encryption-aws-kms-key-id", "SSEKMSKeyId"},
          {"x-amz-server-side-encryption", "ServerSideEncryption"},
          {"x-amz-version-id", "VersionId"}
        ]
      )

    options =
      Keyword.put(
        options,
        :send_body_as_binary?,
        true
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :checksum_algorithm,
        :sse_customer_key,
        :grant_full_control,
        :acl,
        :checksum_c_r_c32_c,
        :object_lock_retain_until_date,
        :request_payer,
        :bucket_key_enabled,
        :content_type,
        :sse_customer_key_md5,
        :object_lock_legal_hold_status,
        :tagging,
        :expected_bucket_owner,
        :website_redirect_location,
        :content_language,
        :sse_customer_algorithm,
        :content_encoding,
        :checksum_s_h_a256,
        :expires,
        :content_md5,
        :grant_write_a_c_p,
        :sse_kms_encryption_context,
        :cache_control,
        :storage_class,
        :grant_read,
        :content_length,
        :object_lock_mode,
        :content_disposition,
        :server_side_encryption,
        :sse_kms_key_id,
        :grant_read_a_c_p,
        :checksum_c_r_c32,
        :checksum_s_h_a1
      ])

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Uses the `acl` subresource
  to set the access control list (ACL) permissions for a new or existing object
  in an S3 bucket. You must have the `WRITE_ACP` permission to set the ACL of an
  object. For more information, see [What permissions can I
  grant?](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#permissions)
  in the *Amazon S3 User Guide*. This functionality is not supported for Amazon
  S3 on Outposts.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20PutObjectAcl&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The bucket name that contains the object to which you
  want to attach the ACL.
  * `:key` (`t:string`) Key for which the PUT action was initiated.
  * `:input` (`t:map | nil`):
    * `:access_control_policy` (`t:structure`) Contains the elements that set the
  ACL permissions for an object per grantee.

  ## Optional parameters:
  * `:version_id` (`t:string`) Version ID used to reference a specific version of
  the object.
  * `:acl`
  (`t:enum["authenticated_read|aws_exec_read|bucket_owner_full_control|bucket_owner_read|private|public_read|public_read_write"]`)
  The canned ACL to apply to the object. For more information, see Canned ACL.
  * `:checksum_algorithm` (`t:enum["CRC32|CRC32C|SHA1|SHA256"]`) Indicates the
  algorithm used to create the checksum for the object when you use the SDK.
  This header will not provide any additional functionality if you don't use
  the SDK. When you send this header, there must be a corresponding
  x-amz-checksum or x-amz-trailer header sent. Otherwise, Amazon S3 fails the
  request with the HTTP status code 400 Bad Request. For more information, see
  Checking object integrity in the Amazon S3 User Guide.
  * `:content_md5` (`t:string`) The base64-encoded 128-bit MD5 digest of the data.
  This header must be used as a message integrity check to verify that the
  request body was not corrupted in transit. For more information, go to RFC
  1864.>
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  * `:grant_full_control` (`t:string`) Allows grantee the read, write, read ACP,
  and write ACP permissions on the bucket.
  * `:grant_read` (`t:string`) Allows grantee to list the objects in the bucket.
  * `:grant_read_a_c_p` (`t:string`) Allows grantee to read the bucket ACL.
  * `:grant_write` (`t:string`) Allows grantee to create new objects in the
  bucket.
  * `:grant_write_a_c_p` (`t:string`) Allows grantee to write the ACL for the
  applicable bucket.
  * `:request_payer` (`t:enum["requester"]`)
  """

  @spec put_object_acl(AWS.Client.t(), String.t(), String.t(), input :: map() | nil, Keyword.t()) ::
          {:ok, put_object_acl_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_object_acl_errors()}

  def put_object_acl(%Client{} = client, bucket, key, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}?acl"

    # Validate optional parameters
    optional_params = [
      version_id: nil,
      acl: nil,
      checksum_algorithm: nil,
      content_md5: nil,
      expected_bucket_owner: nil,
      grant_full_control: nil,
      grant_read: nil,
      grant_read_a_c_p: nil,
      grant_write: nil,
      grant_write_a_c_p: nil,
      request_payer: nil
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
      if opt_val = Keyword.get(options, :request_payer) do
        [{"x-amz-request-payer", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :grant_write_a_c_p) do
        [{"x-amz-grant-write-acp", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :grant_write) do
        [{"x-amz-grant-write", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :grant_read_a_c_p) do
        [{"x-amz-grant-read-acp", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :grant_read) do
        [{"x-amz-grant-read", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :grant_full_control) do
        [{"x-amz-grant-full-control", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :content_md5) do
        [{"Content-MD5", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :checksum_algorithm) do
        [{"x-amz-sdk-checksum-algorithm", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :acl) do
        [{"x-amz-acl", opt_val} | headers]
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

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-request-charged", "RequestCharged"}]
      )

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-request-charged", "RequestCharged"}]
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :version_id,
        :acl,
        :checksum_algorithm,
        :content_md5,
        :expected_bucket_owner,
        :grant_full_control,
        :grant_read,
        :grant_read_a_c_p,
        :grant_write,
        :grant_write_a_c_p,
        :request_payer
      ])

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Applies a legal hold
  configuration to the specified object. For more information, see [Locking
  Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20PutObjectLegalHold&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The bucket name containing the object that you want to
  place a legal hold on.
  * `:key` (`t:string`) The key name for the object that you want to place a legal
  hold on.
  * `:input` (`t:map | nil`):
    * `:legal_hold` (`t:structure`) Container element for the legal hold
  configuration you want to apply to the specified object.

  ## Optional parameters:
  * `:version_id` (`t:string`) The version ID of the object that you want to place
  a legal hold on.
  * `:checksum_algorithm` (`t:enum["CRC32|CRC32C|SHA1|SHA256"]`) Indicates the
  algorithm used to create the checksum for the object when you use the SDK.
  This header will not provide any additional functionality if you don't use
  the SDK. When you send this header, there must be a corresponding
  x-amz-checksum or x-amz-trailer header sent. Otherwise, Amazon S3 fails the
  request with the HTTP status code 400 Bad Request. For more information, see
  Checking object integrity in the Amazon S3 User Guide.
  * `:content_md5` (`t:string`) The MD5 hash for the request body.
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  * `:request_payer` (`t:enum["requester"]`)
  """

  @spec put_object_legal_hold(
          AWS.Client.t(),
          String.t(),
          String.t(),
          input :: map() | nil,
          Keyword.t()
        ) ::
          {:ok, put_object_legal_hold_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def put_object_legal_hold(%Client{} = client, bucket, key, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path =
      "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}?legal-hold"

    # Validate optional parameters
    optional_params = [
      version_id: nil,
      checksum_algorithm: nil,
      content_md5: nil,
      expected_bucket_owner: nil,
      request_payer: nil
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
      if opt_val = Keyword.get(options, :request_payer) do
        [{"x-amz-request-payer", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :content_md5) do
        [{"Content-MD5", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :checksum_algorithm) do
        [{"x-amz-sdk-checksum-algorithm", opt_val} | headers]
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

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-request-charged", "RequestCharged"}]
      )

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-request-charged", "RequestCharged"}]
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :version_id,
        :checksum_algorithm,
        :content_md5,
        :expected_bucket_owner,
        :request_payer
      ])

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20PutObjectLockConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The bucket whose Object Lock configuration you want to
  create or replace.
  * `:input` (`t:map | nil`):
    * `:object_lock_configuration` (`t:structure`) The Object Lock configuration
  that you want to apply to the specified bucket.

  ## Optional parameters:
  * `:checksum_algorithm` (`t:enum["CRC32|CRC32C|SHA1|SHA256"]`) Indicates the
  algorithm used to create the checksum for the object when you use the SDK.
  This header will not provide any additional functionality if you don't use
  the SDK. When you send this header, there must be a corresponding
  x-amz-checksum or x-amz-trailer header sent. Otherwise, Amazon S3 fails the
  request with the HTTP status code 400 Bad Request. For more information, see
  Checking object integrity in the Amazon S3 User Guide.
  * `:content_md5` (`t:string`) The MD5 hash for the request body.
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  * `:request_payer` (`t:enum["requester"]`)
  * `:token` (`t:string`) A token to allow Object Lock to be enabled for an
  existing bucket.
  """

  @spec put_object_lock_configuration(
          AWS.Client.t(),
          String.t(),
          input :: map() | nil,
          Keyword.t()
        ) ::
          {:ok, put_object_lock_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def put_object_lock_configuration(%Client{} = client, bucket, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?object-lock"

    # Validate optional parameters
    optional_params = [
      checksum_algorithm: nil,
      content_md5: nil,
      expected_bucket_owner: nil,
      request_payer: nil,
      token: nil
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
      if opt_val = Keyword.get(options, :token) do
        [{"x-amz-bucket-object-lock-token", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :request_payer) do
        [{"x-amz-request-payer", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :content_md5) do
        [{"Content-MD5", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :checksum_algorithm) do
        [{"x-amz-sdk-checksum-algorithm", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params
    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-request-charged", "RequestCharged"}]
      )

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-request-charged", "RequestCharged"}]
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :checksum_algorithm,
        :content_md5,
        :expected_bucket_owner,
        :request_payer,
        :token
      ])

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Places an Object Retention
  configuration on an object. For more information, see [Locking
  Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html).
  Users or accounts require the `s3:PutObjectRetention` permission in order to
  place an Object Retention configuration on objects. Bypassing a Governance
  Retention configuration requires the `s3:BypassGovernanceRetention`
  permission.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20PutObjectRetention&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The bucket name that contains the object you want to
  apply this Object Retention configuration to.
  * `:key` (`t:string`) The key name for the object that you want to apply this
  Object Retention configuration to.
  * `:input` (`t:map | nil`):
    * `:retention` (`t:structure`) The container element for the Object Retention
  configuration.

  ## Optional parameters:
  * `:version_id` (`t:string`) The version ID for the object that you want to
  apply this Object Retention configuration to.
  * `:bypass_governance_retention` (`t:boolean`) Indicates whether this action
  should bypass Governance-mode restrictions.
  * `:checksum_algorithm` (`t:enum["CRC32|CRC32C|SHA1|SHA256"]`) Indicates the
  algorithm used to create the checksum for the object when you use the SDK.
  This header will not provide any additional functionality if you don't use
  the SDK. When you send this header, there must be a corresponding
  x-amz-checksum or x-amz-trailer header sent. Otherwise, Amazon S3 fails the
  request with the HTTP status code 400 Bad Request. For more information, see
  Checking object integrity in the Amazon S3 User Guide.
  * `:content_md5` (`t:string`) The MD5 hash for the request body.
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  * `:request_payer` (`t:enum["requester"]`)
  """

  @spec put_object_retention(
          AWS.Client.t(),
          String.t(),
          String.t(),
          input :: map() | nil,
          Keyword.t()
        ) ::
          {:ok, put_object_retention_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def put_object_retention(%Client{} = client, bucket, key, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path =
      "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}?retention"

    # Validate optional parameters
    optional_params = [
      version_id: nil,
      bypass_governance_retention: nil,
      checksum_algorithm: nil,
      content_md5: nil,
      expected_bucket_owner: nil,
      request_payer: nil
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
      if opt_val = Keyword.get(options, :request_payer) do
        [{"x-amz-request-payer", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :content_md5) do
        [{"Content-MD5", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :checksum_algorithm) do
        [{"x-amz-sdk-checksum-algorithm", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :bypass_governance_retention) do
        [{"x-amz-bypass-governance-retention", opt_val} | headers]
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

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-request-charged", "RequestCharged"}]
      )

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-request-charged", "RequestCharged"}]
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :version_id,
        :bypass_governance_retention,
        :checksum_algorithm,
        :content_md5,
        :expected_bucket_owner,
        :request_payer
      ])

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Sets the supplied tag-set
  to an object that already exists in a bucket. A tag is a key-value pair. For
  more information, see [Object
  Tagging](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-tagging.html).
  You can associate tags with an object by sending a PUT request against the
  tagging subresource that is associated with the object. You can retrieve tags
  by sending a GET request. For more information, see
  [GetObjectTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectTagging.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20PutObjectTagging&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The bucket name containing the object.
  * `:key` (`t:string`) Name of the object key.
  * `:input` (`t:map`):
    * `:tagging` (`t:structure`) Container for the TagSet and Tag elements

  ## Optional parameters:
  * `:version_id` (`t:string`) The versionId of the object that the tag-set will
  be added to.
  * `:checksum_algorithm` (`t:enum["CRC32|CRC32C|SHA1|SHA256"]`) Indicates the
  algorithm used to create the checksum for the object when you use the SDK.
  This header will not provide any additional functionality if you don't use
  the SDK. When you send this header, there must be a corresponding
  x-amz-checksum or x-amz-trailer header sent. Otherwise, Amazon S3 fails the
  request with the HTTP status code 400 Bad Request. For more information, see
  Checking object integrity in the Amazon S3 User Guide.
  * `:content_md5` (`t:string`) The MD5 hash for the request body.
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  * `:request_payer` (`t:enum["requester"]`)
  """

  @spec put_object_tagging(AWS.Client.t(), String.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, put_object_tagging_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def put_object_tagging(%Client{} = client, bucket, key, input, options \\ [])
      when is_map(input) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}?tagging"

    # Validate optional parameters
    optional_params = [
      version_id: nil,
      checksum_algorithm: nil,
      content_md5: nil,
      expected_bucket_owner: nil,
      request_payer: nil
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
      if opt_val = Keyword.get(options, :request_payer) do
        [{"x-amz-request-payer", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :content_md5) do
        [{"Content-MD5", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :checksum_algorithm) do
        [{"x-amz-sdk-checksum-algorithm", opt_val} | headers]
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

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-version-id", "VersionId"}]
      )

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-version-id", "VersionId"}]
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :version_id,
        :checksum_algorithm,
        :content_md5,
        :expected_bucket_owner,
        :request_payer
      ])

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Creates or modifies the
  `PublicAccessBlock` configuration for an Amazon S3 bucket. To use this
  operation, you must have the `s3:PutBucketPublicAccessBlock` permission. For
  more information about Amazon S3 permissions, see [Specifying Permissions in a
  Policy](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html).
  When Amazon S3 evaluates the `PublicAccessBlock` configuration for a bucket or
  an object, it checks the `PublicAccessBlock` configuration for both the bucket
  (or the bucket that contains the object) and the bucket owner's account. If
  the `PublicAccessBlock` configurations are different between the bucket and
  the account, Amazon S3 uses the most restrictive combination of the
  bucket-level and account-level settings.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20PutPublicAccessBlock&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the Amazon S3 bucket whose
  PublicAccessBlock configuration you want to set.
  * `:input` (`t:map`):
    * `:public_access_block_configuration` (`t:structure`) The PublicAccessBlock
  configuration that you want to apply to this Amazon S3 bucket. You can
  enable the configuration options in any combination. For more information
  about when Amazon S3 considers a bucket or object public, see The Meaning of
  "Public" in the Amazon S3 User Guide.

  ## Optional parameters:
  * `:checksum_algorithm` (`t:enum["CRC32|CRC32C|SHA1|SHA256"]`) Indicates the
  algorithm used to create the checksum for the object when you use the SDK.
  This header will not provide any additional functionality if you don't use
  the SDK. When you send this header, there must be a corresponding
  x-amz-checksum or x-amz-trailer header sent. Otherwise, Amazon S3 fails the
  request with the HTTP status code 400 Bad Request. For more information, see
  Checking object integrity in the Amazon S3 User Guide.
  * `:content_md5` (`t:string`) The MD5 hash of the PutPublicAccessBlock request
  body.
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  """

  @spec put_public_access_block(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}

  def put_public_access_block(%Client{} = client, bucket, input, options \\ [])
      when is_map(input) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?publicAccessBlock"

    # Validate optional parameters
    optional_params = [checksum_algorithm: nil, content_md5: nil, expected_bucket_owner: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :content_md5) do
        [{"Content-MD5", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :checksum_algorithm) do
        [{"x-amz-sdk-checksum-algorithm", opt_val} | headers]
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
      |> Keyword.drop([:checksum_algorithm, :content_md5, :expected_bucket_owner])

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Restores an archived copy
  of an object back into Amazon S3

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20RestoreObject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The bucket name containing the object to restore.
  * `:key` (`t:string`) Object key for which the action was initiated.
  * `:input` (`t:map | nil`):
    * `:restore_request` (`t:structure`)

  ## Optional parameters:
  * `:version_id` (`t:string`) VersionId used to reference a specific version of
  the object.
  * `:checksum_algorithm` (`t:enum["CRC32|CRC32C|SHA1|SHA256"]`) Indicates the
  algorithm used to create the checksum for the object when you use the SDK.
  This header will not provide any additional functionality if you don't use
  the SDK. When you send this header, there must be a corresponding
  x-amz-checksum or x-amz-trailer header sent. Otherwise, Amazon S3 fails the
  request with the HTTP status code 400 Bad Request. For more information, see
  Checking object integrity in the Amazon S3 User Guide.
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  * `:request_payer` (`t:enum["requester"]`)
  """

  @spec restore_object(AWS.Client.t(), String.t(), String.t(), input :: map() | nil, Keyword.t()) ::
          {:ok, restore_object_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, restore_object_errors()}

  def restore_object(%Client{} = client, bucket, key, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}?restore"

    # Validate optional parameters
    optional_params = [
      version_id: nil,
      checksum_algorithm: nil,
      expected_bucket_owner: nil,
      request_payer: nil
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
      if opt_val = Keyword.get(options, :request_payer) do
        [{"x-amz-request-payer", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :checksum_algorithm) do
        [{"x-amz-sdk-checksum-algorithm", opt_val} | headers]
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

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amz-request-charged", "RequestCharged"},
          {"x-amz-restore-output-path", "RestoreOutputPath"}
        ]
      )

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amz-request-charged", "RequestCharged"},
          {"x-amz-restore-output-path", "RestoreOutputPath"}
        ]
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:version_id, :checksum_algorithm, :expected_bucket_owner, :request_payer])

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. This action filters the
  contents of an Amazon S3 object based on a simple structured query language
  (SQL) statement. In the request, along with the SQL expression, you must also
  specify a data serialization format (JSON, CSV, or Apache Parquet) of the
  object. Amazon S3 uses this format to parse object data into records, and
  returns only records that match the specified SQL expression. You must also
  specify the data serialization format for the response.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20SelectObjectContent&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The S3 bucket.
  * `:key` (`t:string`) The object key.

  ## Optional parameters:
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  * `:sse_customer_algorithm` (`t:string`) The server-side encryption (SSE)
  algorithm used to encrypt the object. This parameter is needed only when the
  object was created using a checksum algorithm. For more information, see
  Protecting data using SSE-C keys in the Amazon S3 User Guide.
  * `:sse_customer_key` (`t:string`) The server-side encryption (SSE) customer
  managed key. This parameter is needed only when the object was created using
  a checksum algorithm. For more information, see Protecting data using SSE-C
  keys in the Amazon S3 User Guide.
  * `:sse_customer_key_md5` (`t:string`) The MD5 server-side encryption (SSE)
  customer managed key. This parameter is needed only when the object was
  created using a checksum algorithm. For more information, see Protecting
  data using SSE-C keys in the Amazon S3 User Guide.
  """

  @spec select_object_content(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, select_object_content_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def select_object_content(%Client{} = client, bucket, key, options \\ []) do
    url_path =
      "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}?select&select-type=2"

    # Validate optional parameters
    optional_params = [
      expected_bucket_owner: nil,
      sse_customer_algorithm: nil,
      sse_customer_key: nil,
      sse_customer_key_md5: nil
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
      if opt_val = Keyword.get(options, :sse_customer_key_md5) do
        [{"x-amz-server-side-encryption-customer-key-MD5", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :sse_customer_key) do
        [{"x-amz-server-side-encryption-customer-key", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :sse_customer_algorithm) do
        [{"x-amz-server-side-encryption-customer-algorithm", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
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
      |> Keyword.drop([
        :expected_bucket_owner,
        :sse_customer_algorithm,
        :sse_customer_key,
        :sse_customer_key_md5
      ])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Uploads a part in a multipart upload. In this operation, you provide new data as
  a part of an object in your request. However, you have an option to specify
  your existing Amazon S3 object as a data source for the part you are
  uploading. To upload a part from an existing object, you use the
  [UploadPartCopy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPartCopy.html)
  operation. You must initiate a multipart upload (see
  [CreateMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html))
  before you can upload any part. In response to your initiate request, Amazon
  S3 returns an upload ID, a unique identifier that you must include in your
  upload part request.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20UploadPart&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The name of the bucket to which the multipart upload
  was initiated.
  * `:key` (`t:string`) Object key for which the multipart upload was initiated.
  * `:part_number` (`t:integer`) Part number of part being uploaded. This is a
  positive integer between 1 and 10,000.
  * `:upload_id` (`t:string`) Upload ID identifying the multipart upload whose
  part is being uploaded.
  * `:input` (`t:binary`)


  ## Optional parameters:
  * `:checksum_algorithm` (`t:enum["CRC32|CRC32C|SHA1|SHA256"]`) Indicates the
  algorithm used to create the checksum for the object when you use the SDK.
  This header will not provide any additional functionality if you don't use
  the SDK. When you send this header, there must be a corresponding
  x-amz-checksum or x-amz-trailer header sent. Otherwise, Amazon S3 fails the
  request with the HTTP status code 400 Bad Request. For more information, see
  Checking object integrity in the Amazon S3 User Guide.
  * `:checksum_c_r_c32` (`t:string`) This header can be used as a data integrity
  check to verify that the data received is the same data that was originally
  sent. This header specifies the base64-encoded, 32-bit CRC32 checksum of the
  object. For more information, see Checking object integrity in the Amazon S3
  User Guide.
  * `:checksum_c_r_c32_c` (`t:string`) This header can be used as a data integrity
  check to verify that the data received is the same data that was originally
  sent. This header specifies the base64-encoded, 32-bit CRC32C checksum of
  the object. For more information, see Checking object integrity in the
  Amazon S3 User Guide.
  * `:checksum_s_h_a1` (`t:string`) This header can be used as a data integrity
  check to verify that the data received is the same data that was originally
  sent. This header specifies the base64-encoded, 160-bit SHA-1 digest of the
  object. For more information, see Checking object integrity in the Amazon S3
  User Guide.
  * `:checksum_s_h_a256` (`t:string`) This header can be used as a data integrity
  check to verify that the data received is the same data that was originally
  sent. This header specifies the base64-encoded, 256-bit SHA-256 digest of
  the object. For more information, see Checking object integrity in the
  Amazon S3 User Guide.
  * `:content_length` (`t:long`) Size of the body in bytes. This parameter is
  useful when the size of the body cannot be determined automatically.
  * `:content_md5` (`t:string`) The base64-encoded 128-bit MD5 digest of the part
  data. This parameter is auto-populated when using the command from the CLI.
  This parameter is required if object lock parameters are specified.
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected bucket
  owner. If the account ID that you provide does not match the actual owner of
  the bucket, the request fails with the HTTP status code 403 Forbidden
  (access denied).
  * `:request_payer` (`t:enum["requester"]`)
  * `:sse_customer_algorithm` (`t:string`) Specifies the algorithm to use when
  encrypting the object (for example, AES256).
  * `:sse_customer_key` (`t:string`) Specifies the customer-provided encryption
  key for Amazon S3 to use in encrypting data. This value is used to store the
  object and then it is discarded; Amazon S3 does not store the encryption
  key. The key must be appropriate for use with the algorithm specified in the
  x-amz-server-side-encryption-customer-algorithm header. This must be the
  same encryption key specified in the initiate multipart upload request.
  * `:sse_customer_key_md5` (`t:string`) Specifies the 128-bit MD5 digest of the
  encryption key according to RFC 1321. Amazon S3 uses this header for a
  message integrity check to ensure that the encryption key was transmitted
  without error.
  """

  @spec upload_part(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          input :: binary(),
          Keyword.t()
        ) ::
          {:ok, upload_part_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def upload_part(%Client{} = client, bucket, key, part_number, upload_id, input, options \\ [])
      when is_binary(input) and is_integer(part_number) and is_binary(upload_id) do
    url_path =
      "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}?x-id=UploadPart"

    # Validate optional parameters
    optional_params = [
      checksum_algorithm: nil,
      checksum_c_r_c32: nil,
      checksum_c_r_c32_c: nil,
      checksum_s_h_a1: nil,
      checksum_s_h_a256: nil,
      content_length: nil,
      content_md5: nil,
      expected_bucket_owner: nil,
      request_payer: nil,
      sse_customer_algorithm: nil,
      sse_customer_key: nil,
      sse_customer_key_md5: nil
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
      if opt_val = Keyword.get(options, :sse_customer_key_md5) do
        [{"x-amz-server-side-encryption-customer-key-MD5", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :sse_customer_key) do
        [{"x-amz-server-side-encryption-customer-key", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :sse_customer_algorithm) do
        [{"x-amz-server-side-encryption-customer-algorithm", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :request_payer) do
        [{"x-amz-request-payer", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :content_md5) do
        [{"Content-MD5", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :content_length) do
        [{"Content-Length", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :checksum_s_h_a256) do
        [{"x-amz-checksum-sha256", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :checksum_s_h_a1) do
        [{"x-amz-checksum-sha1", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :checksum_c_r_c32_c) do
        [{"x-amz-checksum-crc32c", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :checksum_c_r_c32) do
        [{"x-amz-checksum-crc32", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :checksum_algorithm) do
        [{"x-amz-sdk-checksum-algorithm", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = [{"partNumber", part_number}, {"uploadId", upload_id}]

    # Optional query params
    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amz-server-side-encryption-bucket-key-enabled", "BucketKeyEnabled"},
          {"x-amz-checksum-crc32", "ChecksumCRC32"},
          {"x-amz-checksum-crc32c", "ChecksumCRC32C"},
          {"x-amz-checksum-sha1", "ChecksumSHA1"},
          {"x-amz-checksum-sha256", "ChecksumSHA256"},
          {"ETag", "ETag"},
          {"x-amz-request-charged", "RequestCharged"},
          {"x-amz-server-side-encryption-customer-algorithm", "SSECustomerAlgorithm"},
          {"x-amz-server-side-encryption-customer-key-MD5", "SSECustomerKeyMD5"},
          {"x-amz-server-side-encryption-aws-kms-key-id", "SSEKMSKeyId"},
          {"x-amz-server-side-encryption", "ServerSideEncryption"}
        ]
      )

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amz-server-side-encryption-bucket-key-enabled", "BucketKeyEnabled"},
          {"x-amz-checksum-crc32", "ChecksumCRC32"},
          {"x-amz-checksum-crc32c", "ChecksumCRC32C"},
          {"x-amz-checksum-sha1", "ChecksumSHA1"},
          {"x-amz-checksum-sha256", "ChecksumSHA256"},
          {"ETag", "ETag"},
          {"x-amz-request-charged", "RequestCharged"},
          {"x-amz-server-side-encryption-customer-algorithm", "SSECustomerAlgorithm"},
          {"x-amz-server-side-encryption-customer-key-MD5", "SSECustomerKeyMD5"},
          {"x-amz-server-side-encryption-aws-kms-key-id", "SSEKMSKeyId"},
          {"x-amz-server-side-encryption", "ServerSideEncryption"}
        ]
      )

    options =
      Keyword.put(
        options,
        :send_body_as_binary?,
        true
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :checksum_algorithm,
        :checksum_c_r_c32,
        :checksum_c_r_c32_c,
        :checksum_s_h_a1,
        :checksum_s_h_a256,
        :content_length,
        :content_md5,
        :expected_bucket_owner,
        :request_payer,
        :sse_customer_algorithm,
        :sse_customer_key,
        :sse_customer_key_md5
      ])

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Uploads a part by copying data from an existing object as data source. To
  specify the data source, you add the request header `x-amz-copy-source` in
  your request. To specify a byte range, you add the request header
  `x-amz-copy-source-range` in your request. For information about maximum and
  minimum part sizes and other multipart upload specifications, see [Multipart
  upload
  limits](https://docs.aws.amazon.com/AmazonS3/latest/userguide/qfacts.html) in
  the *Amazon S3 User Guide*. Instead of copying data from an existing object as
  part data, you might use the
  [UploadPart](https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html)
  action to upload new data as a part of an object in your request.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20UploadPartCopy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bucket` (`t:string`) The bucket name.
  * `:key` (`t:string`) Object key for which the multipart upload was initiated.
  * `:part_number` (`t:integer`) Part number of part being copied. This is a
  positive integer between 1 and 10,000.
  * `:upload_id` (`t:string`) Upload ID identifying the multipart upload whose
  part is being copied.
  * `:copy_source` (`t:string`) Specifies the source object for the copy
  operation. You specify the value in one of two formats, depending on whether
  you want to access the source object through an access point:

  ## Optional parameters:
  * `:copy_source_if_match` (`t:string`) Copies the object if its entity tag
  (ETag) matches the specified tag.
  * `:copy_source_if_modified_since` (`t:timestamp`) Copies the object if it has
  been modified since the specified time.
  * `:copy_source_if_none_match` (`t:string`) Copies the object if its entity tag
  (ETag) is different than the specified ETag.
  * `:copy_source_if_unmodified_since` (`t:timestamp`) Copies the object if it
  hasn't been modified since the specified time.
  * `:copy_source_range` (`t:string`) The range of bytes to copy from the source
  object. The range value must use the form bytes=first-last, where the first
  and last are the zero-based byte offsets to copy. For example, bytes=0-9
  indicates that you want to copy the first 10 bytes of the source. You can
  copy a range only if the source object is greater than 5 MB.
  * `:copy_source_sse_customer_algorithm` (`t:string`) Specifies the algorithm to
  use when decrypting the source object (for example, AES256).
  * `:copy_source_sse_customer_key` (`t:string`) Specifies the customer-provided
  encryption key for Amazon S3 to use to decrypt the source object. The
  encryption key provided in this header must be one that was used when the
  source object was created.
  * `:copy_source_sse_customer_key_md5` (`t:string`) Specifies the 128-bit MD5
  digest of the encryption key according to RFC 1321. Amazon S3 uses this
  header for a message integrity check to ensure that the encryption key was
  transmitted without error.
  * `:expected_bucket_owner` (`t:string`) The account ID of the expected
  destination bucket owner. If the account ID that you provide does not match
  the actual owner of the destination bucket, the request fails with the HTTP
  status code 403 Forbidden (access denied).
  * `:expected_source_bucket_owner` (`t:string`) The account ID of the expected
  source bucket owner. If the account ID that you provide does not match the
  actual owner of the source bucket, the request fails with the HTTP status
  code 403 Forbidden (access denied).
  * `:request_payer` (`t:enum["requester"]`)
  * `:sse_customer_algorithm` (`t:string`) Specifies the algorithm to use when
  encrypting the object (for example, AES256).
  * `:sse_customer_key` (`t:string`) Specifies the customer-provided encryption
  key for Amazon S3 to use in encrypting data. This value is used to store the
  object and then it is discarded; Amazon S3 does not store the encryption
  key. The key must be appropriate for use with the algorithm specified in the
  x-amz-server-side-encryption-customer-algorithm header. This must be the
  same encryption key specified in the initiate multipart upload request.
  * `:sse_customer_key_md5` (`t:string`) Specifies the 128-bit MD5 digest of the
  encryption key according to RFC 1321. Amazon S3 uses this header for a
  message integrity check to ensure that the encryption key was transmitted
  without error.
  """

  @spec upload_part_copy(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, upload_part_copy_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def upload_part_copy(
        %Client{} = client,
        bucket,
        key,
        part_number,
        upload_id,
        copy_source,
        options \\ []
      )
      when is_integer(part_number) and is_binary(upload_id) and is_binary(copy_source) do
    url_path =
      "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}?x-id=UploadPartCopy"

    # Validate optional parameters
    optional_params = [
      copy_source_if_match: nil,
      copy_source_if_modified_since: nil,
      copy_source_if_none_match: nil,
      copy_source_if_unmodified_since: nil,
      copy_source_range: nil,
      copy_source_sse_customer_algorithm: nil,
      copy_source_sse_customer_key: nil,
      copy_source_sse_customer_key_md5: nil,
      expected_bucket_owner: nil,
      expected_source_bucket_owner: nil,
      request_payer: nil,
      sse_customer_algorithm: nil,
      sse_customer_key: nil,
      sse_customer_key_md5: nil
    ]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-copy-source", copy_source}]

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :sse_customer_key_md5) do
        [{"x-amz-server-side-encryption-customer-key-MD5", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :sse_customer_key) do
        [{"x-amz-server-side-encryption-customer-key", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :sse_customer_algorithm) do
        [{"x-amz-server-side-encryption-customer-algorithm", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :request_payer) do
        [{"x-amz-request-payer", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :expected_source_bucket_owner) do
        [{"x-amz-source-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :copy_source_sse_customer_key_md5) do
        [{"x-amz-copy-source-server-side-encryption-customer-key-MD5", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :copy_source_sse_customer_key) do
        [{"x-amz-copy-source-server-side-encryption-customer-key", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :copy_source_sse_customer_algorithm) do
        [{"x-amz-copy-source-server-side-encryption-customer-algorithm", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :copy_source_range) do
        [{"x-amz-copy-source-range", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :copy_source_if_unmodified_since) do
        [{"x-amz-copy-source-if-unmodified-since", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :copy_source_if_none_match) do
        [{"x-amz-copy-source-if-none-match", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :copy_source_if_modified_since) do
        [{"x-amz-copy-source-if-modified-since", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :copy_source_if_match) do
        [{"x-amz-copy-source-if-match", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = [{"partNumber", part_number}, {"uploadId", upload_id}]

    # Optional query params
    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amz-server-side-encryption-bucket-key-enabled", "BucketKeyEnabled"},
          {"x-amz-copy-source-version-id", "CopySourceVersionId"},
          {"x-amz-request-charged", "RequestCharged"},
          {"x-amz-server-side-encryption-customer-algorithm", "SSECustomerAlgorithm"},
          {"x-amz-server-side-encryption-customer-key-MD5", "SSECustomerKeyMD5"},
          {"x-amz-server-side-encryption-aws-kms-key-id", "SSEKMSKeyId"},
          {"x-amz-server-side-encryption", "ServerSideEncryption"}
        ]
      )

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amz-server-side-encryption-bucket-key-enabled", "BucketKeyEnabled"},
          {"x-amz-copy-source-version-id", "CopySourceVersionId"},
          {"x-amz-request-charged", "RequestCharged"},
          {"x-amz-server-side-encryption-customer-algorithm", "SSECustomerAlgorithm"},
          {"x-amz-server-side-encryption-customer-key-MD5", "SSECustomerKeyMD5"},
          {"x-amz-server-side-encryption-aws-kms-key-id", "SSEKMSKeyId"},
          {"x-amz-server-side-encryption", "ServerSideEncryption"}
        ]
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :copy_source_if_match,
        :copy_source_if_modified_since,
        :copy_source_if_none_match,
        :copy_source_if_unmodified_since,
        :copy_source_range,
        :copy_source_sse_customer_algorithm,
        :copy_source_sse_customer_key,
        :copy_source_sse_customer_key_md5,
        :expected_bucket_owner,
        :expected_source_bucket_owner,
        :request_payer,
        :sse_customer_algorithm,
        :sse_customer_key,
        :sse_customer_key_md5
      ])

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This operation is not supported by directory buckets. Passes transformed objects
  to a `GetObject` operation when using Object Lambda access points. For
  information about Object Lambda access points, see [Transforming objects with
  Object Lambda access
  points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/transforming-objects.html)
  in the *Amazon S3 User Guide*. This operation supports metadata that can be
  returned by
  [GetObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html),
  in addition to `RequestRoute`, `RequestToken`, `StatusCode`, `ErrorCode`, and
  `ErrorMessage`. The `GetObject` response metadata is supported so that the
  `WriteGetObjectResponse` caller, typically an Lambda function, can provide the
  same metadata when it internally invokes `GetObject`. When
  `WriteGetObjectResponse` is called by a customer-owned Lambda function, the
  metadata returned to the end user `GetObject` call might differ from what
  Amazon S3 would normally return.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3%20WriteGetObjectResponse&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:request_token` (`t:string`) A single use encrypted token that maps
  WriteGetObjectResponse to the end user GetObject request.
  * `:request_route` (`t:string`) Route prefix to the HTTP URL generated.
  * `:input` (`t:binary`)


  ## Optional parameters:
  * `:error_message` (`t:string`) Contains a generic description of the error
  condition. Returned in the tag of the error XML response for a corresponding
  GetObject call. Cannot be used with a successful StatusCode header or when
  the transformed object is provided in body.
  * `:checksum_c_r_c32_c` (`t:string`) This header can be used as a data integrity
  check to verify that the data received is the same data that was originally
  sent. This specifies the base64-encoded, 32-bit CRC32C checksum of the
  object returned by the Object Lambda function. This may not match the
  checksum for the object stored in Amazon S3. Amazon S3 will perform
  validation of the checksum values only when the original GetObject request
  required checksum validation. For more information about checksums, see
  Checking object integrity in the Amazon S3 User Guide.
  * `:delete_marker` (`t:boolean`) Specifies whether an object stored in Amazon S3
  is (true) or is not (false) a delete marker.
  * `:object_lock_retain_until_date` (`t:timestamp[date-time]`) The date and time
  when Object Lock is configured to expire.
  * `:restore` (`t:string`) Provides information about object restoration
  operation and expiration time of the restored object copy.
  * `:status_code` (`t:integer`) The integer status code for an HTTP response of a
  corresponding GetObject request. The following is a list of status codes.
  * `:bucket_key_enabled` (`t:boolean`) Indicates whether the object stored in
  Amazon S3 uses an S3 bucket key for server-side encryption with Amazon Web
  Services KMS (SSE-KMS).
  * `:content_type` (`t:string`) A standard MIME type describing the format of the
  object data.
  * `:sse_customer_key_md5` (`t:string`) 128-bit MD5 digest of customer-provided
  encryption key used in Amazon S3 to encrypt data stored in S3. For more
  information, see Protecting data using server-side encryption with
  customer-provided encryption keys (SSE-C).
  * `:object_lock_legal_hold_status` (`t:enum["OFF|ON"]`) Indicates whether an
  object stored in Amazon S3 has an active legal hold.
  * `:version_id` (`t:string`) An ID used to reference a specific version of the
  object.
  * `:accept_ranges` (`t:string`) Indicates that a range of bytes was specified.
  * `:content_language` (`t:string`) The language the content is in.
  * `:sse_customer_algorithm` (`t:string`) Encryption algorithm used if
  server-side encryption with a customer-provided encryption key was specified
  for object stored in Amazon S3.
  * `:content_encoding` (`t:string`) Specifies what content encodings have been
  applied to the object and thus what decoding mechanisms must be applied to
  obtain the media-type referenced by the Content-Type header field.
  * `:checksum_s_h_a256` (`t:string`) This header can be used as a data integrity
  check to verify that the data received is the same data that was originally
  sent. This specifies the base64-encoded, 256-bit SHA-256 digest of the
  object returned by the Object Lambda function. This may not match the
  checksum for the object stored in Amazon S3. Amazon S3 will perform
  validation of the checksum values only when the original GetObject request
  required checksum validation. For more information about checksums, see
  Checking object integrity in the Amazon S3 User Guide.
  * `:e_tag` (`t:string`) An opaque identifier assigned by a web server to a
  specific version of a resource found at a URL.
  * `:last_modified` (`t:timestamp`) The date and time that the object was last
  modified.
  * `:error_code` (`t:string`) A string that uniquely identifies an error
  condition. Returned in the tag of the error XML response for a corresponding
  GetObject call. Cannot be used with a successful StatusCode header or when
  the transformed object is provided in the body. All error codes from S3 are
  sentence-cased. The regular expression (regex) value is "^[A-Z][a-zA-Z]+$".
  * `:content_range` (`t:string`) The portion of the object returned in the
  response.
  * `:expires` (`t:timestamp`) The date and time at which the object is no longer
  cacheable.
  * `:tag_count` (`t:integer`) The number of tags, if any, on the object.
  * `:expiration` (`t:string`) If the object expiration is configured (see PUT
  Bucket lifecycle), the response includes this header. It includes the
  expiry-date and rule-id key-value pairs that provide the object expiration
  information. The value of the rule-id is URL-encoded.
  * `:replication_status` (`t:enum["COMPLETE|COMPLETED|FAILED|PENDING|REPLICA"]`)
  Indicates if request involves bucket that is either a source or destination
  in a Replication rule. For more information about S3 Replication, see
  Replication.
  * `:cache_control` (`t:string`) Specifies caching behavior along the
  request/reply chain.
  * `:storage_class`
  (`t:enum["DEEP_ARCHIVE|EXPRESS_ONEZONE|GLACIER|GLACIER_IR|INTELLIGENT_TIERING|ONEZONE_IA|OUTPOSTS|REDUCED_REDUNDANCY|SNOW|STANDARD|STANDARD_IA"]`)
  Provides storage class information of the object. Amazon S3 returns this
  header for all objects except for S3 Standard storage class objects.
  * `:missing_meta` (`t:integer`) Set to the number of metadata entries not
  returned in x-amz-meta headers. This can happen if you create metadata using
  an API like SOAP that supports more flexible metadata than the REST API. For
  example, using SOAP, you can create metadata whose values are not legal HTTP
  headers.
  * `:content_length` (`t:long`) The size of the content body in bytes.
  * `:object_lock_mode` (`t:enum["COMPLIANCE|GOVERNANCE"]`) Indicates whether an
  object stored in Amazon S3 has Object Lock enabled. For more information
  about S3 Object Lock, see Object Lock.
  * `:content_disposition` (`t:string`) Specifies presentational information for
  the object.
  * `:request_charged` (`t:enum["requester"]`)
  * `:server_side_encryption` (`t:enum["AES256|aws_kms|aws_kms_dsse"]`) The
  server-side encryption algorithm used when storing requested object in
  Amazon S3 (for example, AES256, aws:kms).
  * `:parts_count` (`t:integer`) The count of parts this object has.
  * `:sse_kms_key_id` (`t:string`) If present, specifies the ID (Key ID, Key ARN,
  or Key Alias) of the Amazon Web Services Key Management Service (Amazon Web
  Services KMS) symmetric encryption customer managed key that was used for
  stored in Amazon S3 object.
  * `:checksum_c_r_c32` (`t:string`) This header can be used as a data integrity
  check to verify that the data received is the same data that was originally
  sent. This specifies the base64-encoded, 32-bit CRC32 checksum of the object
  returned by the Object Lambda function. This may not match the checksum for
  the object stored in Amazon S3. Amazon S3 will perform validation of the
  checksum values only when the original GetObject request required checksum
  validation. For more information about checksums, see Checking object
  integrity in the Amazon S3 User Guide.
  * `:checksum_s_h_a1` (`t:string`) This header can be used as a data integrity
  check to verify that the data received is the same data that was originally
  sent. This specifies the base64-encoded, 160-bit SHA-1 digest of the object
  returned by the Object Lambda function. This may not match the checksum for
  the object stored in Amazon S3. Amazon S3 will perform validation of the
  checksum values only when the original GetObject request required checksum
  validation. For more information about checksums, see Checking object
  integrity in the Amazon S3 User Guide.
  """

  @spec write_get_object_response(
          AWS.Client.t(),
          String.t(),
          String.t(),
          input :: binary(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}

  def write_get_object_response(
        %Client{} = client,
        request_token,
        request_route,
        input,
        options \\ []
      )
      when is_binary(input) and is_binary(request_token) and is_binary(request_route) do
    url_path = "/WriteGetObjectResponse"

    # Validate optional parameters
    optional_params = [
      error_message: nil,
      checksum_c_r_c32_c: nil,
      delete_marker: nil,
      object_lock_retain_until_date: nil,
      restore: nil,
      status_code: nil,
      bucket_key_enabled: nil,
      content_type: nil,
      sse_customer_key_md5: nil,
      object_lock_legal_hold_status: nil,
      version_id: nil,
      accept_ranges: nil,
      content_language: nil,
      sse_customer_algorithm: nil,
      content_encoding: nil,
      checksum_s_h_a256: nil,
      e_tag: nil,
      last_modified: nil,
      error_code: nil,
      content_range: nil,
      expires: nil,
      tag_count: nil,
      expiration: nil,
      replication_status: nil,
      cache_control: nil,
      storage_class: nil,
      missing_meta: nil,
      content_length: nil,
      object_lock_mode: nil,
      content_disposition: nil,
      request_charged: nil,
      server_side_encryption: nil,
      parts_count: nil,
      sse_kms_key_id: nil,
      checksum_c_r_c32: nil,
      checksum_s_h_a1: nil
    ]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-request-token", request_token}, {"x-amz-request-route", request_route}]

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :checksum_s_h_a1) do
        [{"x-amz-fwd-header-x-amz-checksum-sha1", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :checksum_c_r_c32) do
        [{"x-amz-fwd-header-x-amz-checksum-crc32", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :sse_kms_key_id) do
        [{"x-amz-fwd-header-x-amz-server-side-encryption-aws-kms-key-id", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :parts_count) do
        [{"x-amz-fwd-header-x-amz-mp-parts-count", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :server_side_encryption) do
        [{"x-amz-fwd-header-x-amz-server-side-encryption", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :request_charged) do
        [{"x-amz-fwd-header-x-amz-request-charged", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :content_disposition) do
        [{"x-amz-fwd-header-Content-Disposition", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :object_lock_mode) do
        [{"x-amz-fwd-header-x-amz-object-lock-mode", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :content_length) do
        [{"Content-Length", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :missing_meta) do
        [{"x-amz-fwd-header-x-amz-missing-meta", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :storage_class) do
        [{"x-amz-fwd-header-x-amz-storage-class", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :cache_control) do
        [{"x-amz-fwd-header-Cache-Control", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :replication_status) do
        [{"x-amz-fwd-header-x-amz-replication-status", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :expiration) do
        [{"x-amz-fwd-header-x-amz-expiration", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :tag_count) do
        [{"x-amz-fwd-header-x-amz-tagging-count", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :expires) do
        [{"x-amz-fwd-header-Expires", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :content_range) do
        [{"x-amz-fwd-header-Content-Range", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :error_code) do
        [{"x-amz-fwd-error-code", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :last_modified) do
        [{"x-amz-fwd-header-Last-Modified", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :e_tag) do
        [{"x-amz-fwd-header-ETag", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :checksum_s_h_a256) do
        [{"x-amz-fwd-header-x-amz-checksum-sha256", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :content_encoding) do
        [{"x-amz-fwd-header-Content-Encoding", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :sse_customer_algorithm) do
        [{"x-amz-fwd-header-x-amz-server-side-encryption-customer-algorithm", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :content_language) do
        [{"x-amz-fwd-header-Content-Language", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :accept_ranges) do
        [{"x-amz-fwd-header-accept-ranges", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :version_id) do
        [{"x-amz-fwd-header-x-amz-version-id", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :object_lock_legal_hold_status) do
        [{"x-amz-fwd-header-x-amz-object-lock-legal-hold", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :sse_customer_key_md5) do
        [{"x-amz-fwd-header-x-amz-server-side-encryption-customer-key-MD5", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :content_type) do
        [{"x-amz-fwd-header-Content-Type", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :bucket_key_enabled) do
        [{"x-amz-fwd-header-x-amz-server-side-encryption-bucket-key-enabled", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :status_code) do
        [{"x-amz-fwd-status", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :restore) do
        [{"x-amz-fwd-header-x-amz-restore", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :object_lock_retain_until_date) do
        [{"x-amz-fwd-header-x-amz-object-lock-retain-until-date", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :delete_marker) do
        [{"x-amz-fwd-header-x-amz-delete-marker", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :checksum_c_r_c32_c) do
        [{"x-amz-fwd-header-x-amz-checksum-crc32c", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :error_message) do
        [{"x-amz-fwd-error-message", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    options =
      Keyword.put(
        options,
        :send_body_as_binary?,
        true
      )

    meta =
      metadata() |> Map.put_new(:host_prefix, "{RequestRoute}.")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :error_message,
        :checksum_c_r_c32_c,
        :delete_marker,
        :object_lock_retain_until_date,
        :restore,
        :status_code,
        :bucket_key_enabled,
        :content_type,
        :sse_customer_key_md5,
        :object_lock_legal_hold_status,
        :version_id,
        :accept_ranges,
        :content_language,
        :sse_customer_algorithm,
        :content_encoding,
        :checksum_s_h_a256,
        :e_tag,
        :last_modified,
        :error_code,
        :content_range,
        :expires,
        :tag_count,
        :expiration,
        :replication_status,
        :cache_control,
        :storage_class,
        :missing_meta,
        :content_length,
        :object_lock_mode,
        :content_disposition,
        :request_charged,
        :server_side_encryption,
        :parts_count,
        :sse_kms_key_id,
        :checksum_c_r_c32,
        :checksum_s_h_a1
      ])

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end
end
