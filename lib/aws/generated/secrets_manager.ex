# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SecretsManager do
  @moduledoc """
  Amazon Web Services Secrets Manager Amazon Web Services Secrets Manager provides
  a service to enable you to store, manage, and retrieve, secrets.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      describe_secret_response() :: %{
        "ARN" => String.t(),
        "CreatedDate" => non_neg_integer(),
        "DeletedDate" => non_neg_integer(),
        "Description" => String.t(),
        "KmsKeyId" => String.t(),
        "LastAccessedDate" => non_neg_integer(),
        "LastChangedDate" => non_neg_integer(),
        "LastRotatedDate" => non_neg_integer(),
        "Name" => String.t(),
        "NextRotationDate" => non_neg_integer(),
        "OwningService" => String.t(),
        "PrimaryRegion" => String.t(),
        "ReplicationStatus" => list(replication_status_type()()),
        "RotationEnabled" => boolean(),
        "RotationLambdaARN" => String.t(),
        "RotationRules" => rotation_rules_type(),
        "Tags" => list(tag()()),
        "VersionIdsToStages" => map()
      }
      
  """
  @type describe_secret_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_errors_entry() :: %{
        "CheckName" => String.t(),
        "ErrorMessage" => String.t()
      }
      
  """
  @type validation_errors_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("SecretId") => String.t(),
        required("Tags") => list(tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_resource_policy_response() :: %{
        "ARN" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type delete_resource_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_regions_from_replication_response() :: %{
        "ARN" => String.t(),
        "ReplicationStatus" => list(replication_status_type()())
      }
      
  """
  @type remove_regions_from_replication_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_secret_version_stage_request() :: %{
        optional("MoveToVersionId") => String.t(),
        optional("RemoveFromVersionId") => String.t(),
        required("SecretId") => String.t(),
        required("VersionStage") => String.t()
      }
      
  """
  @type update_secret_version_stage_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_secret_request() :: %{
        optional("ForceDeleteWithoutRecovery") => boolean(),
        optional("RecoveryWindowInDays") => float(),
        required("SecretId") => String.t()
      }
      
  """
  @type delete_secret_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      decryption_failure() :: %{
        "Message" => String.t()
      }
      
  """
  @type decryption_failure() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_rotate_secret_response() :: %{
        "ARN" => String.t(),
        "Name" => String.t(),
        "VersionId" => String.t()
      }
      
  """
  @type cancel_rotate_secret_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      encryption_failure() :: %{
        "Message" => String.t()
      }
      
  """
  @type encryption_failure() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_secrets_request() :: %{
        optional("Filters") => list(filter()()),
        optional("IncludePlannedDeletion") => boolean(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SortOrder") => list(any())
      }
      
  """
  @type list_secrets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_policy_response() :: %{
        "ARN" => String.t(),
        "Name" => String.t(),
        "ResourcePolicy" => String.t()
      }
      
  """
  @type get_resource_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_secret_version_stage_response() :: %{
        "ARN" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type update_secret_version_stage_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_secrets_response() :: %{
        "NextToken" => String.t(),
        "SecretList" => list(secret_list_entry()())
      }
      
  """
  @type list_secrets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_random_password_response() :: %{
        "RandomPassword" => String.t()
      }
      
  """
  @type get_random_password_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("SecretId") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validate_resource_policy_request() :: %{
        optional("SecretId") => String.t(),
        required("ResourcePolicy") => String.t()
      }
      
  """
  @type validate_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_secret_response() :: %{
        "ARN" => String.t(),
        "DeletionDate" => non_neg_integer(),
        "Name" => String.t()
      }
      
  """
  @type delete_secret_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_secret_value_request() :: %{
        optional("Filters") => list(filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SecretIdList") => list(String.t()())
      }
      
  """
  @type batch_get_secret_value_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validate_resource_policy_response() :: %{
        "PolicyValidationPassed" => boolean(),
        "ValidationErrors" => list(validation_errors_entry()())
      }
      
  """
  @type validate_resource_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_secret_response() :: %{
        "ARN" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type restore_secret_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_rotate_secret_request() :: %{
        required("SecretId") => String.t()
      }
      
  """
  @type cancel_rotate_secret_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

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
      
      invalid_request_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rotate_secret_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("RotateImmediately") => boolean(),
        optional("RotationLambdaARN") => String.t(),
        optional("RotationRules") => rotation_rules_type(),
        required("SecretId") => String.t()
      }
      
  """
  @type rotate_secret_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_secret_value_response() :: %{
        "ARN" => String.t(),
        "Name" => String.t(),
        "VersionId" => String.t(),
        "VersionStages" => list(String.t()())
      }
      
  """
  @type put_secret_value_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_next_token_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_next_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_regions_from_replication_request() :: %{
        required("RemoveReplicaRegions") => list(String.t()()),
        required("SecretId") => String.t()
      }
      
  """
  @type remove_regions_from_replication_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_replication_to_replica_request() :: %{
        required("SecretId") => String.t()
      }
      
  """
  @type stop_replication_to_replica_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_secret_request() :: %{
        required("SecretId") => String.t()
      }
      
  """
  @type describe_secret_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_secret_version_ids_response() :: %{
        "ARN" => String.t(),
        "Name" => String.t(),
        "NextToken" => String.t(),
        "Versions" => list(secret_versions_list_entry()())
      }
      
  """
  @type list_secret_version_ids_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_secret_value_response() :: %{
        "Errors" => list(api_error_type()()),
        "NextToken" => String.t(),
        "SecretValues" => list(secret_value_entry()())
      }
      
  """
  @type batch_get_secret_value_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_secret_response() :: %{
        "ARN" => String.t(),
        "Name" => String.t(),
        "VersionId" => String.t()
      }
      
  """
  @type update_secret_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_policy_request() :: %{
        required("SecretId") => String.t()
      }
      
  """
  @type get_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_secret_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("Description") => String.t(),
        optional("KmsKeyId") => String.t(),
        optional("SecretBinary") => binary(),
        optional("SecretString") => String.t(),
        required("SecretId") => String.t()
      }
      
  """
  @type update_secret_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replicate_secret_to_regions_response() :: %{
        "ARN" => String.t(),
        "ReplicationStatus" => list(replication_status_type()())
      }
      
  """
  @type replicate_secret_to_regions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      filter() :: %{
        "Key" => list(any()),
        "Values" => list(String.t()())
      }
      
  """
  @type filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replication_status_type() :: %{
        "KmsKeyId" => String.t(),
        "LastAccessedDate" => non_neg_integer(),
        "Region" => String.t(),
        "Status" => list(any()),
        "StatusMessage" => String.t()
      }
      
  """
  @type replication_status_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_secret_value_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("SecretBinary") => binary(),
        optional("SecretString") => String.t(),
        optional("VersionStages") => list(String.t()()),
        required("SecretId") => String.t()
      }
      
  """
  @type put_secret_value_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_replication_to_replica_response() :: %{
        "ARN" => String.t()
      }
      
  """
  @type stop_replication_to_replica_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_exists_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_resource_policy_request() :: %{
        optional("BlockPublicPolicy") => boolean(),
        required("ResourcePolicy") => String.t(),
        required("SecretId") => String.t()
      }
      
  """
  @type put_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replica_region_type() :: %{
        "KmsKeyId" => String.t(),
        "Region" => String.t()
      }
      
  """
  @type replica_region_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_random_password_request() :: %{
        optional("ExcludeCharacters") => String.t(),
        optional("ExcludeLowercase") => boolean(),
        optional("ExcludeNumbers") => boolean(),
        optional("ExcludePunctuation") => boolean(),
        optional("ExcludeUppercase") => boolean(),
        optional("IncludeSpace") => boolean(),
        optional("PasswordLength") => float(),
        optional("RequireEachIncludedType") => boolean()
      }
      
  """
  @type get_random_password_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_secret_value_request() :: %{
        optional("VersionId") => String.t(),
        optional("VersionStage") => String.t(),
        required("SecretId") => String.t()
      }
      
  """
  @type get_secret_value_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_secret_value_response() :: %{
        "ARN" => String.t(),
        "CreatedDate" => non_neg_integer(),
        "Name" => String.t(),
        "SecretBinary" => binary(),
        "SecretString" => String.t(),
        "VersionId" => String.t(),
        "VersionStages" => list(String.t()())
      }
      
  """
  @type get_secret_value_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      api_error_type() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t(),
        "SecretId" => String.t()
      }
      
  """
  @type api_error_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_service_error() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_service_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      secret_value_entry() :: %{
        "ARN" => String.t(),
        "CreatedDate" => non_neg_integer(),
        "Name" => String.t(),
        "SecretBinary" => binary(),
        "SecretString" => String.t(),
        "VersionId" => String.t(),
        "VersionStages" => list(String.t()())
      }
      
  """
  @type secret_value_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_secret_response() :: %{
        "ARN" => String.t(),
        "Name" => String.t(),
        "ReplicationStatus" => list(replication_status_type()()),
        "VersionId" => String.t()
      }
      
  """
  @type create_secret_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      malformed_policy_document_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type malformed_policy_document_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_secret_version_ids_request() :: %{
        optional("IncludeDeprecated") => boolean(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("SecretId") => String.t()
      }
      
  """
  @type list_secret_version_ids_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      secret_list_entry() :: %{
        "ARN" => String.t(),
        "CreatedDate" => non_neg_integer(),
        "DeletedDate" => non_neg_integer(),
        "Description" => String.t(),
        "KmsKeyId" => String.t(),
        "LastAccessedDate" => non_neg_integer(),
        "LastChangedDate" => non_neg_integer(),
        "LastRotatedDate" => non_neg_integer(),
        "Name" => String.t(),
        "NextRotationDate" => non_neg_integer(),
        "OwningService" => String.t(),
        "PrimaryRegion" => String.t(),
        "RotationEnabled" => boolean(),
        "RotationLambdaARN" => String.t(),
        "RotationRules" => rotation_rules_type(),
        "SecretVersionsToStages" => map(),
        "Tags" => list(tag()())
      }
      
  """
  @type secret_list_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      secret_versions_list_entry() :: %{
        "CreatedDate" => non_neg_integer(),
        "KmsKeyIds" => list(String.t()()),
        "LastAccessedDate" => non_neg_integer(),
        "VersionId" => String.t(),
        "VersionStages" => list(String.t()())
      }
      
  """
  @type secret_versions_list_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_resource_policy_response() :: %{
        "ARN" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type put_resource_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rotation_rules_type() :: %{
        "AutomaticallyAfterDays" => float(),
        "Duration" => String.t(),
        "ScheduleExpression" => String.t()
      }
      
  """
  @type rotation_rules_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      public_policy_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type public_policy_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_resource_policy_request() :: %{
        required("SecretId") => String.t()
      }
      
  """
  @type delete_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_secret_request() :: %{
        required("SecretId") => String.t()
      }
      
  """
  @type restore_secret_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      precondition_not_met_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type precondition_not_met_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rotate_secret_response() :: %{
        "ARN" => String.t(),
        "Name" => String.t(),
        "VersionId" => String.t()
      }
      
  """
  @type rotate_secret_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replicate_secret_to_regions_request() :: %{
        optional("ForceOverwriteReplicaSecret") => boolean(),
        required("AddReplicaRegions") => list(replica_region_type()()),
        required("SecretId") => String.t()
      }
      
  """
  @type replicate_secret_to_regions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_secret_request() :: %{
        optional("AddReplicaRegions") => list(replica_region_type()()),
        optional("ClientRequestToken") => String.t(),
        optional("Description") => String.t(),
        optional("ForceOverwriteReplicaSecret") => boolean(),
        optional("KmsKeyId") => String.t(),
        optional("SecretBinary") => binary(),
        optional("SecretString") => String.t(),
        optional("Tags") => list(tag()()),
        required("Name") => String.t()
      }
      
  """
  @type create_secret_request() :: %{String.t() => any()}

  @type batch_get_secret_value_errors() ::
          internal_service_error()
          | invalid_parameter_exception()
          | invalid_next_token_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | decryption_failure()

  @type cancel_rotate_secret_errors() ::
          internal_service_error()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type create_secret_errors() ::
          precondition_not_met_exception()
          | limit_exceeded_exception()
          | malformed_policy_document_exception()
          | internal_service_error()
          | invalid_parameter_exception()
          | resource_exists_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | encryption_failure()
          | decryption_failure()

  @type delete_resource_policy_errors() ::
          internal_service_error()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type delete_secret_errors() ::
          internal_service_error()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type describe_secret_errors() ::
          internal_service_error()
          | invalid_parameter_exception()
          | resource_not_found_exception()

  @type get_random_password_errors() ::
          internal_service_error() | invalid_parameter_exception() | invalid_request_exception()

  @type get_resource_policy_errors() ::
          internal_service_error()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type get_secret_value_errors() ::
          internal_service_error()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | decryption_failure()

  @type list_secret_version_ids_errors() ::
          internal_service_error()
          | invalid_parameter_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()

  @type list_secrets_errors() ::
          internal_service_error()
          | invalid_parameter_exception()
          | invalid_next_token_exception()
          | invalid_request_exception()

  @type put_resource_policy_errors() ::
          public_policy_exception()
          | malformed_policy_document_exception()
          | internal_service_error()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type put_secret_value_errors() ::
          limit_exceeded_exception()
          | internal_service_error()
          | invalid_parameter_exception()
          | resource_exists_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | encryption_failure()
          | decryption_failure()

  @type remove_regions_from_replication_errors() ::
          internal_service_error()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type replicate_secret_to_regions_errors() ::
          internal_service_error()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type restore_secret_errors() ::
          internal_service_error()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type rotate_secret_errors() ::
          internal_service_error()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type stop_replication_to_replica_errors() ::
          internal_service_error()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() ::
          internal_service_error()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          internal_service_error()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type update_secret_errors() ::
          precondition_not_met_exception()
          | limit_exceeded_exception()
          | malformed_policy_document_exception()
          | internal_service_error()
          | invalid_parameter_exception()
          | resource_exists_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | encryption_failure()
          | decryption_failure()

  @type update_secret_version_stage_errors() ::
          limit_exceeded_exception()
          | internal_service_error()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type validate_resource_policy_errors() ::
          malformed_policy_document_exception()
          | internal_service_error()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2017-10-17",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "secretsmanager",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Secrets Manager",
      signature_version: "v4",
      signing_name: "secretsmanager",
      target_prefix: "secretsmanager"
    }
  end

  @doc """
  Retrieves the contents of the encrypted fields `SecretString` or `SecretBinary`
  for up to 20 secrets. To retrieve a single secret, call `GetSecretValue`. To
  choose which secrets to retrieve, you can specify a list of secrets by name or
  ARN, or you can use filters. If Secrets Manager encounters errors such as
  `AccessDeniedException` while attempting to retrieve any of the secrets, you
  can see the errors in `Errors` in the response.
  """
  @spec batch_get_secret_value(AWS.Client.t(), batch_get_secret_value_request(), Keyword.t()) ::
          {:ok, batch_get_secret_value_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_get_secret_value_errors()}
  def batch_get_secret_value(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "BatchGetSecretValue", input, options)
  end

  @doc """
  Turns off automatic rotation, and if a rotation is currently in progress,
  cancels the rotation. If you cancel a rotation in progress, it can leave the
  `VersionStage` labels in an unexpected state. You might need to remove the
  staging label `AWSPENDING` from the partially created version. You also need
  to determine whether to roll back to the previous version of the secret by
  moving the staging label `AWSCURRENT` to the version that has `AWSPENDING`. To
  determine which version has a specific staging label, call
  `ListSecretVersionIds`. Then use `UpdateSecretVersionStage` to change staging
  labels. For more information, see [How rotation
  works](https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotate-secrets_how.html).
  To turn on automatic rotation again, call `RotateSecret`.
  """
  @spec cancel_rotate_secret(AWS.Client.t(), cancel_rotate_secret_request(), Keyword.t()) ::
          {:ok, cancel_rotate_secret_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_rotate_secret_errors()}
  def cancel_rotate_secret(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CancelRotateSecret", input, options)
  end

  @doc """
  Creates a new secret. A *secret* can be a password, a set of credentials such as
  a user name and password, an OAuth token, or other secret information that you
  store in an encrypted form in Secrets Manager. The secret also includes the
  connection information to access a database or other service, which Secrets
  Manager doesn't encrypt. A secret in Secrets Manager consists of both the
  protected secret data and the important information needed to manage the
  secret. For secrets that use *managed rotation*, you need to create the secret
  through the managing service. For more information, see [Secrets Manager
  secrets managed by other Amazon Web Services
  services](https://docs.aws.amazon.com/secretsmanager/latest/userguide/service-linked-secrets.html).
  For information about creating a secret in the console, see [Create a
  secret](https://docs.aws.amazon.com/secretsmanager/latest/userguide/manage_create-basic-secret.html).
  """
  @spec create_secret(AWS.Client.t(), create_secret_request(), Keyword.t()) ::
          {:ok, create_secret_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_secret_errors()}
  def create_secret(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateSecret", input, options)
  end

  @doc """
  Deletes the resource-based permission policy attached to the secret. To attach a
  policy to a secret, use `PutResourcePolicy`.
  """
  @spec delete_resource_policy(AWS.Client.t(), delete_resource_policy_request(), Keyword.t()) ::
          {:ok, delete_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_resource_policy_errors()}
  def delete_resource_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteResourcePolicy", input, options)
  end

  @doc """
  Deletes a secret and all of its versions. You can specify a recovery window
  during which you can restore the secret. The minimum recovery window is 7
  days. The default recovery window is 30 days. Secrets Manager attaches a
  `DeletionDate` stamp to the secret that specifies the end of the recovery
  window. At the end of the recovery window, Secrets Manager deletes the secret
  permanently. You can't delete a primary secret that is replicated to other
  Regions. You must first delete the replicas using
  `RemoveRegionsFromReplication`, and then delete the primary secret. When you
  delete a replica, it is deleted immediately.
  """
  @spec delete_secret(AWS.Client.t(), delete_secret_request(), Keyword.t()) ::
          {:ok, delete_secret_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_secret_errors()}
  def delete_secret(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteSecret", input, options)
  end

  @doc """
  Retrieves the details of a secret. It does not include the encrypted secret
  value. Secrets Manager only returns fields that have a value in the response.
  """
  @spec describe_secret(AWS.Client.t(), describe_secret_request(), Keyword.t()) ::
          {:ok, describe_secret_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_secret_errors()}
  def describe_secret(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeSecret", input, options)
  end

  @doc """
  Generates a random password. We recommend that you specify the maximum length
  and include every character type that the system you are generating a password
  for can support. By default, Secrets Manager uses uppercase and lowercase
  letters, numbers, and the following characters in passwords:
  `!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~` Secrets Manager generates a CloudTrail
  log entry when you call this action.
  """
  @spec get_random_password(AWS.Client.t(), get_random_password_request(), Keyword.t()) ::
          {:ok, get_random_password_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_random_password_errors()}
  def get_random_password(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetRandomPassword", input, options)
  end

  @doc """
  Retrieves the JSON text of the resource-based policy document attached to the
  secret. For more information about permissions policies attached to a secret,
  see [Permissions policies attached to a
  secret](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_resource-policies.html).
  Secrets Manager generates a CloudTrail log entry when you call this action. Do
  not include sensitive information in request parameters because it might be
  logged. For more information, see [Logging Secrets Manager events with
  CloudTrail](https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html).
  """
  @spec get_resource_policy(AWS.Client.t(), get_resource_policy_request(), Keyword.t()) ::
          {:ok, get_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_resource_policy_errors()}
  def get_resource_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetResourcePolicy", input, options)
  end

  @doc """
  Retrieves the contents of the encrypted fields `SecretString` or `SecretBinary`
  from the specified version of a secret, whichever contains content. To
  retrieve the values for a group of secrets, call `BatchGetSecretValue`.
  """
  @spec get_secret_value(AWS.Client.t(), get_secret_value_request(), Keyword.t()) ::
          {:ok, get_secret_value_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_secret_value_errors()}
  def get_secret_value(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetSecretValue", input, options)
  end

  @doc """
  Lists the versions of a secret. Secrets Manager uses staging labels to indicate
  the different versions of a secret. For more information, see [ Secrets
  Manager concepts:
  Versions](https://docs.aws.amazon.com/secretsmanager/latest/userguide/getting-started.html#term_version).
  To list the secrets in the account, use `ListSecrets`. Secrets Manager
  generates a CloudTrail log entry when you call this action. Do not include
  sensitive information in request parameters because it might be logged. For
  more information, see [Logging Secrets Manager events with
  CloudTrail](https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html).
  """
  @spec list_secret_version_ids(AWS.Client.t(), list_secret_version_ids_request(), Keyword.t()) ::
          {:ok, list_secret_version_ids_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_secret_version_ids_errors()}
  def list_secret_version_ids(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListSecretVersionIds", input, options)
  end

  @doc """
  Lists the secrets that are stored by Secrets Manager in the Amazon Web Services
  account, not including secrets that are marked for deletion. To see secrets
  marked for deletion, use the Secrets Manager console. All Secrets Manager
  operations are eventually consistent. ListSecrets might not reflect changes
  from the last five minutes. You can get more recent information for a specific
  secret by calling `DescribeSecret`.
  """
  @spec list_secrets(AWS.Client.t(), list_secrets_request(), Keyword.t()) ::
          {:ok, list_secrets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_secrets_errors()}
  def list_secrets(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListSecrets", input, options)
  end

  @doc """
  Attaches a resource-based permission policy to a secret. A resource-based policy
  is optional. For more information, see [Authentication and access control for
  Secrets
  Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html)
  For information about attaching a policy in the console, see [Attach a
  permissions policy to a
  secret](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_resource-based-policies.html).
  """
  @spec put_resource_policy(AWS.Client.t(), put_resource_policy_request(), Keyword.t()) ::
          {:ok, put_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_resource_policy_errors()}
  def put_resource_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutResourcePolicy", input, options)
  end

  @doc """
  Creates a new version with a new encrypted secret value and attaches it to the
  secret. The version can contain a new `SecretString` value or a new
  `SecretBinary` value. We recommend you avoid calling `PutSecretValue` at a
  sustained rate of more than once every 10 minutes. When you update the secret
  value, Secrets Manager creates a new version of the secret. Secrets Manager
  removes outdated versions when there are more than 100, but it does not remove
  versions created less than 24 hours ago. If you call `PutSecretValue` more
  than once every 10 minutes, you create more versions than Secrets Manager
  removes, and you will reach the quota for secret versions.
  """
  @spec put_secret_value(AWS.Client.t(), put_secret_value_request(), Keyword.t()) ::
          {:ok, put_secret_value_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_secret_value_errors()}
  def put_secret_value(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutSecretValue", input, options)
  end

  @doc """
  For a secret that is replicated to other Regions, deletes the secret replicas
  from the Regions you specify.
  """
  @spec remove_regions_from_replication(
          AWS.Client.t(),
          remove_regions_from_replication_request(),
          Keyword.t()
        ) ::
          {:ok, remove_regions_from_replication_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, remove_regions_from_replication_errors()}
  def remove_regions_from_replication(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RemoveRegionsFromReplication", input, options)
  end

  @doc """
  Replicates the secret to a new Regions. See [Multi-Region
  secrets](https://docs.aws.amazon.com/secretsmanager/latest/userguide/create-manage-multi-region-secrets.html).
  Secrets Manager generates a CloudTrail log entry when you call this action. Do
  not include sensitive information in request parameters because it might be
  logged. For more information, see [Logging Secrets Manager events with
  CloudTrail](https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html).
  """
  @spec replicate_secret_to_regions(
          AWS.Client.t(),
          replicate_secret_to_regions_request(),
          Keyword.t()
        ) ::
          {:ok, replicate_secret_to_regions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, replicate_secret_to_regions_errors()}
  def replicate_secret_to_regions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ReplicateSecretToRegions", input, options)
  end

  @doc """
  Cancels the scheduled deletion of a secret by removing the `DeletedDate` time
  stamp. You can access a secret again after it has been restored.
  """
  @spec restore_secret(AWS.Client.t(), restore_secret_request(), Keyword.t()) ::
          {:ok, restore_secret_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, restore_secret_errors()}
  def restore_secret(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RestoreSecret", input, options)
  end

  @doc """
  Configures and starts the asynchronous process of rotating the secret. For
  information about rotation, see [Rotate
  secrets](https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotating-secrets.html)
  in the *Secrets Manager User Guide*. If you include the configuration
  parameters, the operation sets the values for the secret and then immediately
  starts a rotation. If you don't include the configuration parameters, the
  operation starts a rotation with the values already stored in the secret. When
  rotation is successful, the `AWSPENDING` staging label might be attached to
  the same version as the `AWSCURRENT` version, or it might not be attached to
  any version. If the `AWSPENDING` staging label is present but not attached to
  the same version as `AWSCURRENT`, then any later invocation of `RotateSecret`
  assumes that a previous rotation request is still in progress and returns an
  error. When rotation is unsuccessful, the `AWSPENDING` staging label might be
  attached to an empty secret version. For more information, see [Troubleshoot
  rotation](https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot_rotation.html)
  in the *Secrets Manager User Guide*.
  """
  @spec rotate_secret(AWS.Client.t(), rotate_secret_request(), Keyword.t()) ::
          {:ok, rotate_secret_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, rotate_secret_errors()}
  def rotate_secret(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RotateSecret", input, options)
  end

  @doc """
  Removes the link between the replica secret and the primary secret and promotes
  the replica to a primary secret in the replica Region. You must call this
  operation from the Region in which you want to promote the replica to a
  primary secret.
  """
  @spec stop_replication_to_replica(
          AWS.Client.t(),
          stop_replication_to_replica_request(),
          Keyword.t()
        ) ::
          {:ok, stop_replication_to_replica_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_replication_to_replica_errors()}
  def stop_replication_to_replica(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopReplicationToReplica", input, options)
  end

  @doc """
  Attaches tags to a secret. Tags consist of a key name and a value. Tags are part
  of the secret's metadata. They are not associated with specific versions of
  the secret. This operation appends tags to the existing list of tags. For tag
  quotas and naming restrictions, see [Service quotas for
  Tagging](https://docs.aws.amazon.com/general/latest/gr/arg.html#taged-reference-quotas)
  in the *Amazon Web Services General Reference guide*. If you use tags as part
  of your security strategy, then adding or removing a tag can change
  permissions. If successfully completing this operation would result in you
  losing your permissions for this secret, then the operation is blocked and
  returns an Access Denied error.
  """
  @spec tag_resource(AWS.Client.t(), tag_resource_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes specific tags from a secret. This operation is idempotent. If a
  requested tag is not attached to the secret, no error is returned and the
  secret metadata is unchanged.
  """
  @spec untag_resource(AWS.Client.t(), untag_resource_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Modifies the details of a secret, including metadata and the secret value. To
  change the secret value, you can also use `PutSecretValue`. To change the
  rotation configuration of a secret, use `RotateSecret` instead.
  """
  @spec update_secret(AWS.Client.t(), update_secret_request(), Keyword.t()) ::
          {:ok, update_secret_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_secret_errors()}
  def update_secret(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateSecret", input, options)
  end

  @doc """
  Modifies the staging labels attached to a version of a secret. Secrets Manager
  uses staging labels to track a version as it progresses through the secret
  rotation process. Each staging label can be attached to only one version at a
  time. To add a staging label to a version when it is already attached to
  another version, Secrets Manager first removes it from the other version first
  and then attaches it to this one. For more information about versions and
  staging labels, see [Concepts:
  Version](https://docs.aws.amazon.com/secretsmanager/latest/userguide/getting-started.html#term_version).
  The staging labels that you specify in the `VersionStage` parameter are added
  to the existing list of staging labels for the version. You can move the
  `AWSCURRENT` staging label to this version by including it in this call.
  """
  @spec update_secret_version_stage(
          AWS.Client.t(),
          update_secret_version_stage_request(),
          Keyword.t()
        ) ::
          {:ok, update_secret_version_stage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_secret_version_stage_errors()}
  def update_secret_version_stage(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateSecretVersionStage", input, options)
  end

  @doc """
  Validates that a resource policy does not grant a wide range of principals
  access to your secret. A resource-based policy is optional for secrets. The
  API performs three checks when validating the policy:
  """
  @spec validate_resource_policy(AWS.Client.t(), validate_resource_policy_request(), Keyword.t()) ::
          {:ok, validate_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, validate_resource_policy_errors()}
  def validate_resource_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ValidateResourcePolicy", input, options)
  end
end
