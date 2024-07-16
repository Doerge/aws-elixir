# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.KMS do
  @moduledoc """
  Key Management Service Key Management Service (KMS) is an encryption and key
  management web service. This guide describes the KMS operations that you can
  call programmatically. For general information about KMS, see the [ *Key
  Management Service Developer Guide*
  ](https://docs.aws.amazon.com/kms/latest/developerguide/). KMS has replaced
  the term *customer master key (CMK)* with *KMS key* and *KMS key*. The concept
  has not changed. To prevent breaking changes, KMS is keeping some variations
  of this term. Amazon Web Services provides SDKs that consist of libraries and
  sample code for various programming languages and platforms (Java, Ruby, .Net,
  macOS, Android, etc.). The SDKs provide a convenient way to create
  programmatic access to KMS and other Amazon Web Services services. For
  example, the SDKs take care of tasks such as signing requests (see below),
  managing errors, and retrying requests automatically. For more information
  about the Amazon Web Services SDKs, including how to download and install
  them, see [Tools for Amazon Web Services](http://aws.amazon.com/tools/).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      invalid_grant_id_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_grant_id_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_aliases_response() :: %{
        "Aliases" => list(alias_list_entry()()),
        "NextMarker" => String.t(),
        "Truncated" => boolean()
      }
      
  """
  @type list_aliases_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      incorrect_key_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type incorrect_key_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type tag_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_aliases_request() :: %{
        optional("KeyId") => String.t(),
        optional("Limit") => integer(),
        optional("Marker") => String.t()
      }
      
  """
  @type list_aliases_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_grant_token_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_grant_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("KeyId") => String.t(),
        required("Tags") => list(tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      xks_proxy_vpc_endpoint_service_in_use_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type xks_proxy_vpc_endpoint_service_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      grant_constraints() :: %{
        "EncryptionContextEquals" => map(),
        "EncryptionContextSubset" => map()
      }
      
  """
  @type grant_constraints() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      xks_proxy_vpc_endpoint_service_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type xks_proxy_vpc_endpoint_service_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_retirable_grants_request() :: %{
        optional("Limit") => integer(),
        optional("Marker") => String.t(),
        required("RetiringPrincipal") => String.t()
      }
      
  """
  @type list_retirable_grants_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_operation_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type unsupported_operation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dry_run_operation_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type dry_run_operation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_key_store_name_in_use_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type custom_key_store_name_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      xks_key_configuration_type() :: %{
        "Id" => String.t()
      }
      
  """
  @type xks_key_configuration_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_alias_request() :: %{
        required("AliasName") => String.t(),
        required("TargetKeyId") => String.t()
      }
      
  """
  @type update_alias_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_key_request() :: %{
        optional("BypassPolicyLockoutSafetyCheck") => boolean(),
        optional("CustomKeyStoreId") => String.t(),
        optional("CustomerMasterKeySpec") => list(any()),
        optional("Description") => String.t(),
        optional("KeySpec") => list(any()),
        optional("KeyUsage") => list(any()),
        optional("MultiRegion") => boolean(),
        optional("Origin") => list(any()),
        optional("Policy") => String.t(),
        optional("Tags") => list(tag()()),
        optional("XksKeyId") => String.t()
      }
      
  """
  @type create_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_custom_key_stores_response() :: %{
        "CustomKeyStores" => list(custom_key_stores_list_entry()()),
        "NextMarker" => String.t(),
        "Truncated" => boolean()
      }
      
  """
  @type describe_custom_key_stores_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      xks_proxy_uri_endpoint_in_use_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type xks_proxy_uri_endpoint_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rotate_key_on_demand_response() :: %{
        "KeyId" => String.t()
      }
      
  """
  @type rotate_key_on_demand_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_alias_name_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_alias_name_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      generate_data_key_without_plaintext_request() :: %{
        optional("DryRun") => boolean(),
        optional("EncryptionContext") => map(),
        optional("GrantTokens") => list(String.t()()),
        optional("KeySpec") => list(any()),
        optional("NumberOfBytes") => integer(),
        required("KeyId") => String.t()
      }
      
  """
  @type generate_data_key_without_plaintext_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_alias_request() :: %{
        required("AliasName") => String.t(),
        required("TargetKeyId") => String.t()
      }
      
  """
  @type create_alias_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      schedule_key_deletion_response() :: %{
        "DeletionDate" => non_neg_integer(),
        "KeyId" => String.t(),
        "KeyState" => list(any()),
        "PendingWindowInDays" => integer()
      }
      
  """
  @type schedule_key_deletion_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      schedule_key_deletion_request() :: %{
        optional("PendingWindowInDays") => integer(),
        required("KeyId") => String.t()
      }
      
  """
  @type schedule_key_deletion_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      encrypt_response() :: %{
        "CiphertextBlob" => binary(),
        "EncryptionAlgorithm" => list(any()),
        "KeyId" => String.t()
      }
      
  """
  @type encrypt_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_keys_response() :: %{
        "Keys" => list(key_list_entry()()),
        "NextMarker" => String.t(),
        "Truncated" => boolean()
      }
      
  """
  @type list_keys_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      already_exists_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      xks_key_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type xks_key_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      decrypt_request() :: %{
        optional("DryRun") => boolean(),
        optional("EncryptionAlgorithm") => list(any()),
        optional("EncryptionContext") => map(),
        optional("GrantTokens") => list(String.t()()),
        optional("KeyId") => String.t(),
        optional("Recipient") => recipient_info(),
        required("CiphertextBlob") => binary()
      }
      
  """
  @type decrypt_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      revoke_grant_request() :: %{
        optional("DryRun") => boolean(),
        required("GrantId") => String.t(),
        required("KeyId") => String.t()
      }
      
  """
  @type revoke_grant_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      encrypt_request() :: %{
        optional("DryRun") => boolean(),
        optional("EncryptionAlgorithm") => list(any()),
        optional("EncryptionContext") => map(),
        optional("GrantTokens") => list(String.t()()),
        required("KeyId") => String.t(),
        required("Plaintext") => binary()
      }
      
  """
  @type encrypt_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_grants_request() :: %{
        optional("GrantId") => String.t(),
        optional("GranteePrincipal") => String.t(),
        optional("Limit") => integer(),
        optional("Marker") => String.t(),
        required("KeyId") => String.t()
      }
      
  """
  @type list_grants_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      derive_shared_secret_request() :: %{
        optional("DryRun") => boolean(),
        optional("GrantTokens") => list(String.t()()),
        optional("Recipient") => recipient_info(),
        required("KeyAgreementAlgorithm") => list(any()),
        required("KeyId") => String.t(),
        required("PublicKey") => binary()
      }
      
  """
  @type derive_shared_secret_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disconnect_custom_key_store_request() :: %{
        required("CustomKeyStoreId") => String.t()
      }
      
  """
  @type disconnect_custom_key_store_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_key_deletion_request() :: %{
        required("KeyId") => String.t()
      }
      
  """
  @type cancel_key_deletion_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      generate_random_response() :: %{
        "CiphertextForRecipient" => binary(),
        "Plaintext" => binary()
      }
      
  """
  @type generate_random_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_key_request() :: %{
        required("KeyId") => String.t()
      }
      
  """
  @type enable_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      generate_data_key_pair_without_plaintext_request() :: %{
        optional("DryRun") => boolean(),
        optional("EncryptionContext") => map(),
        optional("GrantTokens") => list(String.t()()),
        required("KeyId") => String.t(),
        required("KeyPairSpec") => list(any())
      }
      
  """
  @type generate_data_key_pair_without_plaintext_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("KeyId") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_key_policies_response() :: %{
        "NextMarker" => String.t(),
        "PolicyNames" => list(String.t()()),
        "Truncated" => boolean()
      }
      
  """
  @type list_key_policies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_resource_tags_response() :: %{
        "NextMarker" => String.t(),
        "Tags" => list(tag()()),
        "Truncated" => boolean()
      }
      
  """
  @type list_resource_tags_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_key_description_request() :: %{
        required("Description") => String.t(),
        required("KeyId") => String.t()
      }
      
  """
  @type update_key_description_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dependency_timeout_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type dependency_timeout_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_key_store_has_cm_ks_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type custom_key_store_has_cm_ks_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_arn_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_arn_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_custom_key_store_response() :: %{
        "CustomKeyStoreId" => String.t()
      }
      
  """
  @type create_custom_key_store_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_key_stores_list_entry() :: %{
        "CloudHsmClusterId" => String.t(),
        "ConnectionErrorCode" => list(any()),
        "ConnectionState" => list(any()),
        "CreationDate" => non_neg_integer(),
        "CustomKeyStoreId" => String.t(),
        "CustomKeyStoreName" => String.t(),
        "CustomKeyStoreType" => list(any()),
        "TrustAnchorCertificate" => String.t(),
        "XksProxyConfiguration" => xks_proxy_configuration_type()
      }
      
  """
  @type custom_key_stores_list_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      multi_region_configuration() :: %{
        "MultiRegionKeyType" => list(any()),
        "PrimaryKey" => multi_region_key(),
        "ReplicaKeys" => list(multi_region_key()())
      }
      
  """
  @type multi_region_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_key_policy_response() :: %{
        "Policy" => String.t(),
        "PolicyName" => String.t()
      }
      
  """
  @type get_key_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_custom_key_store_request() :: %{
        optional("CloudHsmClusterId") => String.t(),
        optional("CustomKeyStoreType") => list(any()),
        optional("KeyStorePassword") => String.t(),
        optional("TrustAnchorCertificate") => String.t(),
        optional("XksProxyAuthenticationCredential") => xks_proxy_authentication_credential_type(),
        optional("XksProxyConnectivity") => list(any()),
        optional("XksProxyUriEndpoint") => String.t(),
        optional("XksProxyUriPath") => String.t(),
        optional("XksProxyVpcEndpointServiceName") => String.t(),
        required("CustomKeyStoreName") => String.t()
      }
      
  """
  @type create_custom_key_store_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      expired_import_token_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type expired_import_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      retire_grant_request() :: %{
        optional("DryRun") => boolean(),
        optional("GrantId") => String.t(),
        optional("GrantToken") => String.t(),
        optional("KeyId") => String.t()
      }
      
  """
  @type retire_grant_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_custom_key_stores_request() :: %{
        optional("CustomKeyStoreId") => String.t(),
        optional("CustomKeyStoreName") => String.t(),
        optional("Limit") => integer(),
        optional("Marker") => String.t()
      }
      
  """
  @type describe_custom_key_stores_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_keys_request() :: %{
        optional("Limit") => integer(),
        optional("Marker") => String.t()
      }
      
  """
  @type list_keys_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_parameters_for_import_response() :: %{
        "ImportToken" => binary(),
        "KeyId" => String.t(),
        "ParametersValidTo" => non_neg_integer(),
        "PublicKey" => binary()
      }
      
  """
  @type get_parameters_for_import_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      generate_data_key_pair_response() :: %{
        "CiphertextForRecipient" => binary(),
        "KeyId" => String.t(),
        "KeyPairSpec" => list(any()),
        "PrivateKeyCiphertextBlob" => binary(),
        "PrivateKeyPlaintext" => binary(),
        "PublicKey" => binary()
      }
      
  """
  @type generate_data_key_pair_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_key_request() :: %{
        optional("GrantTokens") => list(String.t()()),
        required("KeyId") => String.t()
      }
      
  """
  @type describe_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_ciphertext_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_ciphertext_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      xks_proxy_uri_unreachable_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type xks_proxy_uri_unreachable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_grants_response() :: %{
        optional("Grants") => list(grant_list_entry()()),
        optional("NextMarker") => String.t(),
        optional("Truncated") => boolean()
      }
      
  """
  @type list_grants_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      verify_mac_request() :: %{
        optional("DryRun") => boolean(),
        optional("GrantTokens") => list(String.t()()),
        required("KeyId") => String.t(),
        required("Mac") => binary(),
        required("MacAlgorithm") => list(any()),
        required("Message") => binary()
      }
      
  """
  @type verify_mac_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      re_encrypt_request() :: %{
        optional("DestinationEncryptionAlgorithm") => list(any()),
        optional("DestinationEncryptionContext") => map(),
        optional("DryRun") => boolean(),
        optional("GrantTokens") => list(String.t()()),
        optional("SourceEncryptionAlgorithm") => list(any()),
        optional("SourceEncryptionContext") => map(),
        optional("SourceKeyId") => String.t(),
        required("CiphertextBlob") => binary(),
        required("DestinationKeyId") => String.t()
      }
      
  """
  @type re_encrypt_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "TagKey" => String.t(),
        "TagValue" => String.t()
      }
      
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      xks_proxy_uri_in_use_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type xks_proxy_uri_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_custom_key_store_request() :: %{
        required("CustomKeyStoreId") => String.t()
      }
      
  """
  @type delete_custom_key_store_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_key_policy_request() :: %{
        optional("PolicyName") => String.t(),
        required("KeyId") => String.t()
      }
      
  """
  @type get_key_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_key_rotation_status_request() :: %{
        required("KeyId") => String.t()
      }
      
  """
  @type get_key_rotation_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_grant_request() :: %{
        optional("Constraints") => grant_constraints(),
        optional("DryRun") => boolean(),
        optional("GrantTokens") => list(String.t()()),
        optional("Name") => String.t(),
        optional("RetiringPrincipal") => String.t(),
        required("GranteePrincipal") => String.t(),
        required("KeyId") => String.t(),
        required("Operations") => list(list(any())())
      }
      
  """
  @type create_grant_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_key_material_request() :: %{
        optional("ExpirationModel") => list(any()),
        optional("ValidTo") => non_neg_integer(),
        required("EncryptedKeyMaterial") => binary(),
        required("ImportToken") => binary(),
        required("KeyId") => String.t()
      }
      
  """
  @type import_key_material_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_hsm_cluster_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type cloud_hsm_cluster_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      generate_data_key_without_plaintext_response() :: %{
        "CiphertextBlob" => binary(),
        "KeyId" => String.t()
      }
      
  """
  @type generate_data_key_without_plaintext_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disconnect_custom_key_store_response() :: %{}
      
  """
  @type disconnect_custom_key_store_response() :: %{}

  @typedoc """

  ## Example:
      
      update_custom_key_store_request() :: %{
        optional("CloudHsmClusterId") => String.t(),
        optional("KeyStorePassword") => String.t(),
        optional("NewCustomKeyStoreName") => String.t(),
        optional("XksProxyAuthenticationCredential") => xks_proxy_authentication_credential_type(),
        optional("XksProxyConnectivity") => list(any()),
        optional("XksProxyUriEndpoint") => String.t(),
        optional("XksProxyUriPath") => String.t(),
        optional("XksProxyVpcEndpointServiceName") => String.t(),
        required("CustomKeyStoreId") => String.t()
      }
      
  """
  @type update_custom_key_store_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      generate_data_key_pair_without_plaintext_response() :: %{
        "KeyId" => String.t(),
        "KeyPairSpec" => list(any()),
        "PrivateKeyCiphertextBlob" => binary(),
        "PublicKey" => binary()
      }
      
  """
  @type generate_data_key_pair_without_plaintext_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_hsm_cluster_not_related_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type cloud_hsm_cluster_not_related_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_key_rotations_request() :: %{
        optional("Limit") => integer(),
        optional("Marker") => String.t(),
        required("KeyId") => String.t()
      }
      
  """
  @type list_key_rotations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_key_rotation_status_response() :: %{
        "KeyId" => String.t(),
        "KeyRotationEnabled" => boolean(),
        "NextRotationDate" => non_neg_integer(),
        "OnDemandRotationStartDate" => non_neg_integer(),
        "RotationPeriodInDays" => integer()
      }
      
  """
  @type get_key_rotation_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      xks_key_already_in_use_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type xks_key_already_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_hsm_cluster_invalid_configuration_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type cloud_hsm_cluster_invalid_configuration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      generate_data_key_response() :: %{
        "CiphertextBlob" => binary(),
        "CiphertextForRecipient" => binary(),
        "KeyId" => String.t(),
        "Plaintext" => binary()
      }
      
  """
  @type generate_data_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      xks_proxy_invalid_response_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type xks_proxy_invalid_response_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_key_material_response() :: %{}
      
  """
  @type import_key_material_response() :: %{}

  @typedoc """

  ## Example:
      
      invalid_import_token_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_import_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      verify_mac_response() :: %{
        "KeyId" => String.t(),
        "MacAlgorithm" => list(any()),
        "MacValid" => boolean()
      }
      
  """
  @type verify_mac_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      key_list_entry() :: %{
        "KeyArn" => String.t(),
        "KeyId" => String.t()
      }
      
  """
  @type key_list_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recipient_info() :: %{
        "AttestationDocument" => binary(),
        "KeyEncryptionAlgorithm" => list(any())
      }
      
  """
  @type recipient_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      key_unavailable_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type key_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      xks_key_invalid_configuration_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type xks_key_invalid_configuration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_hsm_cluster_not_active_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type cloud_hsm_cluster_not_active_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_parameters_for_import_request() :: %{
        required("KeyId") => String.t(),
        required("WrappingAlgorithm") => list(any()),
        required("WrappingKeySpec") => list(any())
      }
      
  """
  @type get_parameters_for_import_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_marker_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_marker_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      verify_request() :: %{
        optional("DryRun") => boolean(),
        optional("GrantTokens") => list(String.t()()),
        optional("MessageType") => list(any()),
        required("KeyId") => String.t(),
        required("Message") => binary(),
        required("Signature") => binary(),
        required("SigningAlgorithm") => list(any())
      }
      
  """
  @type verify_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      key_metadata() :: %{
        "AWSAccountId" => String.t(),
        "Arn" => String.t(),
        "CloudHsmClusterId" => String.t(),
        "CreationDate" => non_neg_integer(),
        "CustomKeyStoreId" => String.t(),
        "CustomerMasterKeySpec" => list(any()),
        "DeletionDate" => non_neg_integer(),
        "Description" => String.t(),
        "Enabled" => boolean(),
        "EncryptionAlgorithms" => list(list(any())()),
        "ExpirationModel" => list(any()),
        "KeyAgreementAlgorithms" => list(list(any())()),
        "KeyId" => String.t(),
        "KeyManager" => list(any()),
        "KeySpec" => list(any()),
        "KeyState" => list(any()),
        "KeyUsage" => list(any()),
        "MacAlgorithms" => list(list(any())()),
        "MultiRegion" => boolean(),
        "MultiRegionConfiguration" => multi_region_configuration(),
        "Origin" => list(any()),
        "PendingDeletionWindowInDays" => integer(),
        "SigningAlgorithms" => list(list(any())()),
        "ValidTo" => non_neg_integer(),
        "XksKeyConfiguration" => xks_key_configuration_type()
      }
      
  """
  @type key_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      connect_custom_key_store_response() :: %{}
      
  """
  @type connect_custom_key_store_response() :: %{}

  @typedoc """

  ## Example:
      
      replicate_key_request() :: %{
        optional("BypassPolicyLockoutSafetyCheck") => boolean(),
        optional("Description") => String.t(),
        optional("Policy") => String.t(),
        optional("Tags") => list(tag()()),
        required("KeyId") => String.t(),
        required("ReplicaRegion") => String.t()
      }
      
  """
  @type replicate_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disable_key_rotation_request() :: %{
        required("KeyId") => String.t()
      }
      
  """
  @type disable_key_rotation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_custom_key_store_response() :: %{}
      
  """
  @type delete_custom_key_store_response() :: %{}

  @typedoc """

  ## Example:
      
      kms_internal_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type kms_internal_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_public_key_request() :: %{
        optional("GrantTokens") => list(String.t()()),
        required("KeyId") => String.t()
      }
      
  """
  @type get_public_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      grant_list_entry() :: %{
        "Constraints" => grant_constraints(),
        "CreationDate" => non_neg_integer(),
        "GrantId" => String.t(),
        "GranteePrincipal" => String.t(),
        "IssuingAccount" => String.t(),
        "KeyId" => String.t(),
        "Name" => String.t(),
        "Operations" => list(list(any())()),
        "RetiringPrincipal" => String.t()
      }
      
  """
  @type grant_list_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      generate_mac_request() :: %{
        optional("DryRun") => boolean(),
        optional("GrantTokens") => list(String.t()()),
        required("KeyId") => String.t(),
        required("MacAlgorithm") => list(any()),
        required("Message") => binary()
      }
      
  """
  @type generate_mac_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_public_key_response() :: %{
        "CustomerMasterKeySpec" => list(any()),
        "EncryptionAlgorithms" => list(list(any())()),
        "KeyAgreementAlgorithms" => list(list(any())()),
        "KeyId" => String.t(),
        "KeySpec" => list(any()),
        "KeyUsage" => list(any()),
        "PublicKey" => binary(),
        "SigningAlgorithms" => list(list(any())())
      }
      
  """
  @type get_public_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_key_usage_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_key_usage_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sign_response() :: %{
        "KeyId" => String.t(),
        "Signature" => binary(),
        "SigningAlgorithm" => list(any())
      }
      
  """
  @type sign_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_key_store_invalid_state_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type custom_key_store_invalid_state_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_key_deletion_response() :: %{
        "KeyId" => String.t()
      }
      
  """
  @type cancel_key_deletion_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      derive_shared_secret_response() :: %{
        "CiphertextForRecipient" => binary(),
        "KeyAgreementAlgorithm" => list(any()),
        "KeyId" => String.t(),
        "KeyOrigin" => list(any()),
        "SharedSecret" => binary()
      }
      
  """
  @type derive_shared_secret_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      xks_proxy_authentication_credential_type() :: %{
        "AccessKeyId" => String.t(),
        "RawSecretAccessKey" => String.t()
      }
      
  """
  @type xks_proxy_authentication_credential_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      alias_list_entry() :: %{
        "AliasArn" => String.t(),
        "AliasName" => String.t(),
        "CreationDate" => non_neg_integer(),
        "LastUpdatedDate" => non_neg_integer(),
        "TargetKeyId" => String.t()
      }
      
  """
  @type alias_list_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      connect_custom_key_store_request() :: %{
        required("CustomKeyStoreId") => String.t()
      }
      
  """
  @type connect_custom_key_store_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_hsm_cluster_in_use_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type cloud_hsm_cluster_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_custom_key_store_response() :: %{}
      
  """
  @type update_custom_key_store_response() :: %{}

  @typedoc """

  ## Example:
      
      put_key_policy_request() :: %{
        optional("BypassPolicyLockoutSafetyCheck") => boolean(),
        optional("PolicyName") => String.t(),
        required("KeyId") => String.t(),
        required("Policy") => String.t()
      }
      
  """
  @type put_key_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replicate_key_response() :: %{
        "ReplicaKeyMetadata" => key_metadata(),
        "ReplicaPolicy" => String.t(),
        "ReplicaTags" => list(tag()())
      }
      
  """
  @type replicate_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      re_encrypt_response() :: %{
        "CiphertextBlob" => binary(),
        "DestinationEncryptionAlgorithm" => list(any()),
        "KeyId" => String.t(),
        "SourceEncryptionAlgorithm" => list(any()),
        "SourceKeyId" => String.t()
      }
      
  """
  @type re_encrypt_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disable_key_request() :: %{
        required("KeyId") => String.t()
      }
      
  """
  @type disable_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      malformed_policy_document_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type malformed_policy_document_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_key_response() :: %{
        "KeyMetadata" => key_metadata()
      }
      
  """
  @type describe_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_key_rotation_request() :: %{
        optional("RotationPeriodInDays") => integer(),
        required("KeyId") => String.t()
      }
      
  """
  @type enable_key_rotation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disabled_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type disabled_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      multi_region_key() :: %{
        "Arn" => String.t(),
        "Region" => String.t()
      }
      
  """
  @type multi_region_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_key_policies_request() :: %{
        optional("Limit") => integer(),
        optional("Marker") => String.t(),
        required("KeyId") => String.t()
      }
      
  """
  @type list_key_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_imported_key_material_request() :: %{
        required("KeyId") => String.t()
      }
      
  """
  @type delete_imported_key_material_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      xks_proxy_vpc_endpoint_service_invalid_configuration_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type xks_proxy_vpc_endpoint_service_invalid_configuration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kms_invalid_mac_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type kms_invalid_mac_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_primary_region_request() :: %{
        required("KeyId") => String.t(),
        required("PrimaryRegion") => String.t()
      }
      
  """
  @type update_primary_region_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sign_request() :: %{
        optional("DryRun") => boolean(),
        optional("GrantTokens") => list(String.t()()),
        optional("MessageType") => list(any()),
        required("KeyId") => String.t(),
        required("Message") => binary(),
        required("SigningAlgorithm") => list(any())
      }
      
  """
  @type sign_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      verify_response() :: %{
        "KeyId" => String.t(),
        "SignatureValid" => boolean(),
        "SigningAlgorithm" => list(any())
      }
      
  """
  @type verify_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      generate_data_key_pair_request() :: %{
        optional("DryRun") => boolean(),
        optional("EncryptionContext") => map(),
        optional("GrantTokens") => list(String.t()()),
        optional("Recipient") => recipient_info(),
        required("KeyId") => String.t(),
        required("KeyPairSpec") => list(any())
      }
      
  """
  @type generate_data_key_pair_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kms_invalid_signature_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type kms_invalid_signature_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      decrypt_response() :: %{
        "CiphertextForRecipient" => binary(),
        "EncryptionAlgorithm" => list(any()),
        "KeyId" => String.t(),
        "Plaintext" => binary()
      }
      
  """
  @type decrypt_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      xks_proxy_invalid_configuration_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type xks_proxy_invalid_configuration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      xks_proxy_incorrect_authentication_credential_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type xks_proxy_incorrect_authentication_credential_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kms_invalid_state_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type kms_invalid_state_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rotations_list_entry() :: %{
        "KeyId" => String.t(),
        "RotationDate" => non_neg_integer(),
        "RotationType" => list(any())
      }
      
  """
  @type rotations_list_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      generate_data_key_request() :: %{
        optional("DryRun") => boolean(),
        optional("EncryptionContext") => map(),
        optional("GrantTokens") => list(String.t()()),
        optional("KeySpec") => list(any()),
        optional("NumberOfBytes") => integer(),
        optional("Recipient") => recipient_info(),
        required("KeyId") => String.t()
      }
      
  """
  @type generate_data_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_resource_tags_request() :: %{
        optional("Limit") => integer(),
        optional("Marker") => String.t(),
        required("KeyId") => String.t()
      }
      
  """
  @type list_resource_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      incorrect_trust_anchor_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type incorrect_trust_anchor_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_grant_response() :: %{
        "GrantId" => String.t(),
        "GrantToken" => String.t()
      }
      
  """
  @type create_grant_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      incorrect_key_material_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type incorrect_key_material_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_key_response() :: %{
        "KeyMetadata" => key_metadata()
      }
      
  """
  @type create_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_alias_request() :: %{
        required("AliasName") => String.t()
      }
      
  """
  @type delete_alias_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      generate_mac_response() :: %{
        "KeyId" => String.t(),
        "Mac" => binary(),
        "MacAlgorithm" => list(any())
      }
      
  """
  @type generate_mac_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_key_store_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type custom_key_store_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      generate_random_request() :: %{
        optional("CustomKeyStoreId") => String.t(),
        optional("NumberOfBytes") => integer(),
        optional("Recipient") => recipient_info()
      }
      
  """
  @type generate_random_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_key_rotations_response() :: %{
        "NextMarker" => String.t(),
        "Rotations" => list(rotations_list_entry()()),
        "Truncated" => boolean()
      }
      
  """
  @type list_key_rotations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rotate_key_on_demand_request() :: %{
        required("KeyId") => String.t()
      }
      
  """
  @type rotate_key_on_demand_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      xks_proxy_configuration_type() :: %{
        "AccessKeyId" => String.t(),
        "Connectivity" => list(any()),
        "UriEndpoint" => String.t(),
        "UriPath" => String.t(),
        "VpcEndpointServiceName" => String.t()
      }
      
  """
  @type xks_proxy_configuration_type() :: %{String.t() => any()}

  @type cancel_key_deletion_errors() ::
          kms_invalid_state_exception()
          | kms_internal_exception()
          | not_found_exception()
          | invalid_arn_exception()
          | dependency_timeout_exception()

  @type connect_custom_key_store_errors() ::
          custom_key_store_not_found_exception()
          | custom_key_store_invalid_state_exception()
          | kms_internal_exception()
          | cloud_hsm_cluster_not_active_exception()
          | cloud_hsm_cluster_invalid_configuration_exception()

  @type create_alias_errors() ::
          kms_invalid_state_exception()
          | limit_exceeded_exception()
          | kms_internal_exception()
          | not_found_exception()
          | dependency_timeout_exception()
          | already_exists_exception()
          | invalid_alias_name_exception()

  @type create_custom_key_store_errors() ::
          incorrect_trust_anchor_exception()
          | xks_proxy_incorrect_authentication_credential_exception()
          | xks_proxy_invalid_configuration_exception()
          | xks_proxy_vpc_endpoint_service_invalid_configuration_exception()
          | limit_exceeded_exception()
          | cloud_hsm_cluster_in_use_exception()
          | kms_internal_exception()
          | cloud_hsm_cluster_not_active_exception()
          | xks_proxy_invalid_response_exception()
          | cloud_hsm_cluster_invalid_configuration_exception()
          | cloud_hsm_cluster_not_found_exception()
          | xks_proxy_uri_in_use_exception()
          | xks_proxy_uri_unreachable_exception()
          | xks_proxy_uri_endpoint_in_use_exception()
          | custom_key_store_name_in_use_exception()
          | xks_proxy_vpc_endpoint_service_not_found_exception()
          | xks_proxy_vpc_endpoint_service_in_use_exception()

  @type create_grant_errors() ::
          kms_invalid_state_exception()
          | limit_exceeded_exception()
          | disabled_exception()
          | kms_internal_exception()
          | not_found_exception()
          | invalid_arn_exception()
          | dependency_timeout_exception()
          | dry_run_operation_exception()
          | invalid_grant_token_exception()

  @type create_key_errors() ::
          custom_key_store_not_found_exception()
          | limit_exceeded_exception()
          | malformed_policy_document_exception()
          | custom_key_store_invalid_state_exception()
          | kms_internal_exception()
          | xks_key_invalid_configuration_exception()
          | cloud_hsm_cluster_invalid_configuration_exception()
          | xks_key_already_in_use_exception()
          | invalid_arn_exception()
          | dependency_timeout_exception()
          | xks_key_not_found_exception()
          | unsupported_operation_exception()
          | tag_exception()

  @type decrypt_errors() ::
          kms_invalid_state_exception()
          | disabled_exception()
          | invalid_key_usage_exception()
          | kms_internal_exception()
          | key_unavailable_exception()
          | not_found_exception()
          | invalid_ciphertext_exception()
          | dependency_timeout_exception()
          | dry_run_operation_exception()
          | invalid_grant_token_exception()
          | incorrect_key_exception()

  @type delete_alias_errors() ::
          kms_invalid_state_exception()
          | kms_internal_exception()
          | not_found_exception()
          | dependency_timeout_exception()

  @type delete_custom_key_store_errors() ::
          custom_key_store_not_found_exception()
          | custom_key_store_invalid_state_exception()
          | kms_internal_exception()
          | custom_key_store_has_cm_ks_exception()

  @type delete_imported_key_material_errors() ::
          kms_invalid_state_exception()
          | kms_internal_exception()
          | not_found_exception()
          | invalid_arn_exception()
          | dependency_timeout_exception()
          | unsupported_operation_exception()

  @type derive_shared_secret_errors() ::
          kms_invalid_state_exception()
          | disabled_exception()
          | invalid_key_usage_exception()
          | kms_internal_exception()
          | key_unavailable_exception()
          | not_found_exception()
          | dependency_timeout_exception()
          | dry_run_operation_exception()
          | invalid_grant_token_exception()

  @type describe_custom_key_stores_errors() ::
          custom_key_store_not_found_exception()
          | kms_internal_exception()
          | invalid_marker_exception()

  @type describe_key_errors() ::
          kms_internal_exception()
          | not_found_exception()
          | invalid_arn_exception()
          | dependency_timeout_exception()

  @type disable_key_errors() ::
          kms_invalid_state_exception()
          | kms_internal_exception()
          | not_found_exception()
          | invalid_arn_exception()
          | dependency_timeout_exception()

  @type disable_key_rotation_errors() ::
          kms_invalid_state_exception()
          | disabled_exception()
          | kms_internal_exception()
          | not_found_exception()
          | invalid_arn_exception()
          | dependency_timeout_exception()
          | unsupported_operation_exception()

  @type disconnect_custom_key_store_errors() ::
          custom_key_store_not_found_exception()
          | custom_key_store_invalid_state_exception()
          | kms_internal_exception()

  @type enable_key_errors() ::
          kms_invalid_state_exception()
          | limit_exceeded_exception()
          | kms_internal_exception()
          | not_found_exception()
          | invalid_arn_exception()
          | dependency_timeout_exception()

  @type enable_key_rotation_errors() ::
          kms_invalid_state_exception()
          | disabled_exception()
          | kms_internal_exception()
          | not_found_exception()
          | invalid_arn_exception()
          | dependency_timeout_exception()
          | unsupported_operation_exception()

  @type encrypt_errors() ::
          kms_invalid_state_exception()
          | disabled_exception()
          | invalid_key_usage_exception()
          | kms_internal_exception()
          | key_unavailable_exception()
          | not_found_exception()
          | dependency_timeout_exception()
          | dry_run_operation_exception()
          | invalid_grant_token_exception()

  @type generate_data_key_errors() ::
          kms_invalid_state_exception()
          | disabled_exception()
          | invalid_key_usage_exception()
          | kms_internal_exception()
          | key_unavailable_exception()
          | not_found_exception()
          | dependency_timeout_exception()
          | dry_run_operation_exception()
          | invalid_grant_token_exception()

  @type generate_data_key_pair_errors() ::
          kms_invalid_state_exception()
          | disabled_exception()
          | invalid_key_usage_exception()
          | kms_internal_exception()
          | key_unavailable_exception()
          | not_found_exception()
          | dependency_timeout_exception()
          | dry_run_operation_exception()
          | unsupported_operation_exception()
          | invalid_grant_token_exception()

  @type generate_data_key_pair_without_plaintext_errors() ::
          kms_invalid_state_exception()
          | disabled_exception()
          | invalid_key_usage_exception()
          | kms_internal_exception()
          | key_unavailable_exception()
          | not_found_exception()
          | dependency_timeout_exception()
          | dry_run_operation_exception()
          | unsupported_operation_exception()
          | invalid_grant_token_exception()

  @type generate_data_key_without_plaintext_errors() ::
          kms_invalid_state_exception()
          | disabled_exception()
          | invalid_key_usage_exception()
          | kms_internal_exception()
          | key_unavailable_exception()
          | not_found_exception()
          | dependency_timeout_exception()
          | dry_run_operation_exception()
          | invalid_grant_token_exception()

  @type generate_mac_errors() ::
          kms_invalid_state_exception()
          | disabled_exception()
          | invalid_key_usage_exception()
          | kms_internal_exception()
          | key_unavailable_exception()
          | not_found_exception()
          | dry_run_operation_exception()
          | invalid_grant_token_exception()

  @type generate_random_errors() ::
          custom_key_store_not_found_exception()
          | custom_key_store_invalid_state_exception()
          | kms_internal_exception()
          | dependency_timeout_exception()
          | unsupported_operation_exception()

  @type get_key_policy_errors() ::
          kms_invalid_state_exception()
          | kms_internal_exception()
          | not_found_exception()
          | invalid_arn_exception()
          | dependency_timeout_exception()

  @type get_key_rotation_status_errors() ::
          kms_invalid_state_exception()
          | kms_internal_exception()
          | not_found_exception()
          | invalid_arn_exception()
          | dependency_timeout_exception()
          | unsupported_operation_exception()

  @type get_parameters_for_import_errors() ::
          kms_invalid_state_exception()
          | kms_internal_exception()
          | not_found_exception()
          | invalid_arn_exception()
          | dependency_timeout_exception()
          | unsupported_operation_exception()

  @type get_public_key_errors() ::
          kms_invalid_state_exception()
          | disabled_exception()
          | invalid_key_usage_exception()
          | kms_internal_exception()
          | key_unavailable_exception()
          | not_found_exception()
          | invalid_arn_exception()
          | dependency_timeout_exception()
          | unsupported_operation_exception()
          | invalid_grant_token_exception()

  @type import_key_material_errors() ::
          incorrect_key_material_exception()
          | kms_invalid_state_exception()
          | kms_internal_exception()
          | invalid_import_token_exception()
          | not_found_exception()
          | invalid_ciphertext_exception()
          | expired_import_token_exception()
          | invalid_arn_exception()
          | dependency_timeout_exception()
          | unsupported_operation_exception()

  @type list_aliases_errors() ::
          kms_internal_exception()
          | invalid_marker_exception()
          | not_found_exception()
          | invalid_arn_exception()
          | dependency_timeout_exception()

  @type list_grants_errors() ::
          kms_invalid_state_exception()
          | kms_internal_exception()
          | invalid_marker_exception()
          | not_found_exception()
          | invalid_arn_exception()
          | dependency_timeout_exception()
          | invalid_grant_id_exception()

  @type list_key_policies_errors() ::
          kms_invalid_state_exception()
          | kms_internal_exception()
          | not_found_exception()
          | invalid_arn_exception()
          | dependency_timeout_exception()

  @type list_key_rotations_errors() ::
          kms_invalid_state_exception()
          | kms_internal_exception()
          | invalid_marker_exception()
          | not_found_exception()
          | invalid_arn_exception()
          | unsupported_operation_exception()

  @type list_keys_errors() ::
          kms_internal_exception() | invalid_marker_exception() | dependency_timeout_exception()

  @type list_resource_tags_errors() ::
          kms_internal_exception()
          | invalid_marker_exception()
          | not_found_exception()
          | invalid_arn_exception()

  @type list_retirable_grants_errors() ::
          kms_internal_exception()
          | invalid_marker_exception()
          | not_found_exception()
          | invalid_arn_exception()
          | dependency_timeout_exception()

  @type put_key_policy_errors() ::
          kms_invalid_state_exception()
          | limit_exceeded_exception()
          | malformed_policy_document_exception()
          | kms_internal_exception()
          | not_found_exception()
          | invalid_arn_exception()
          | dependency_timeout_exception()
          | unsupported_operation_exception()

  @type re_encrypt_errors() ::
          kms_invalid_state_exception()
          | disabled_exception()
          | invalid_key_usage_exception()
          | kms_internal_exception()
          | key_unavailable_exception()
          | not_found_exception()
          | invalid_ciphertext_exception()
          | dependency_timeout_exception()
          | dry_run_operation_exception()
          | invalid_grant_token_exception()
          | incorrect_key_exception()

  @type replicate_key_errors() ::
          kms_invalid_state_exception()
          | limit_exceeded_exception()
          | disabled_exception()
          | malformed_policy_document_exception()
          | kms_internal_exception()
          | not_found_exception()
          | invalid_arn_exception()
          | already_exists_exception()
          | unsupported_operation_exception()
          | tag_exception()

  @type retire_grant_errors() ::
          kms_invalid_state_exception()
          | kms_internal_exception()
          | not_found_exception()
          | invalid_arn_exception()
          | dependency_timeout_exception()
          | dry_run_operation_exception()
          | invalid_grant_token_exception()
          | invalid_grant_id_exception()

  @type revoke_grant_errors() ::
          kms_invalid_state_exception()
          | kms_internal_exception()
          | not_found_exception()
          | invalid_arn_exception()
          | dependency_timeout_exception()
          | dry_run_operation_exception()
          | invalid_grant_id_exception()

  @type rotate_key_on_demand_errors() ::
          kms_invalid_state_exception()
          | limit_exceeded_exception()
          | disabled_exception()
          | kms_internal_exception()
          | not_found_exception()
          | conflict_exception()
          | invalid_arn_exception()
          | dependency_timeout_exception()
          | unsupported_operation_exception()

  @type schedule_key_deletion_errors() ::
          kms_invalid_state_exception()
          | kms_internal_exception()
          | not_found_exception()
          | invalid_arn_exception()
          | dependency_timeout_exception()

  @type sign_errors() ::
          kms_invalid_state_exception()
          | disabled_exception()
          | invalid_key_usage_exception()
          | kms_internal_exception()
          | key_unavailable_exception()
          | not_found_exception()
          | dependency_timeout_exception()
          | dry_run_operation_exception()
          | invalid_grant_token_exception()

  @type tag_resource_errors() ::
          kms_invalid_state_exception()
          | limit_exceeded_exception()
          | kms_internal_exception()
          | not_found_exception()
          | invalid_arn_exception()
          | tag_exception()

  @type untag_resource_errors() ::
          kms_invalid_state_exception()
          | kms_internal_exception()
          | not_found_exception()
          | invalid_arn_exception()
          | tag_exception()

  @type update_alias_errors() ::
          kms_invalid_state_exception()
          | limit_exceeded_exception()
          | kms_internal_exception()
          | not_found_exception()
          | dependency_timeout_exception()

  @type update_custom_key_store_errors() ::
          custom_key_store_not_found_exception()
          | xks_proxy_incorrect_authentication_credential_exception()
          | xks_proxy_invalid_configuration_exception()
          | xks_proxy_vpc_endpoint_service_invalid_configuration_exception()
          | custom_key_store_invalid_state_exception()
          | kms_internal_exception()
          | cloud_hsm_cluster_not_active_exception()
          | xks_proxy_invalid_response_exception()
          | cloud_hsm_cluster_invalid_configuration_exception()
          | cloud_hsm_cluster_not_related_exception()
          | cloud_hsm_cluster_not_found_exception()
          | xks_proxy_uri_in_use_exception()
          | xks_proxy_uri_unreachable_exception()
          | xks_proxy_uri_endpoint_in_use_exception()
          | custom_key_store_name_in_use_exception()
          | xks_proxy_vpc_endpoint_service_not_found_exception()
          | xks_proxy_vpc_endpoint_service_in_use_exception()

  @type update_key_description_errors() ::
          kms_invalid_state_exception()
          | kms_internal_exception()
          | not_found_exception()
          | invalid_arn_exception()
          | dependency_timeout_exception()

  @type update_primary_region_errors() ::
          kms_invalid_state_exception()
          | disabled_exception()
          | kms_internal_exception()
          | not_found_exception()
          | invalid_arn_exception()
          | unsupported_operation_exception()

  @type verify_errors() ::
          kms_invalid_state_exception()
          | kms_invalid_signature_exception()
          | disabled_exception()
          | invalid_key_usage_exception()
          | kms_internal_exception()
          | key_unavailable_exception()
          | not_found_exception()
          | dependency_timeout_exception()
          | dry_run_operation_exception()
          | invalid_grant_token_exception()

  @type verify_mac_errors() ::
          kms_invalid_state_exception()
          | kms_invalid_mac_exception()
          | disabled_exception()
          | invalid_key_usage_exception()
          | kms_internal_exception()
          | key_unavailable_exception()
          | not_found_exception()
          | dry_run_operation_exception()
          | invalid_grant_token_exception()

  def metadata do
    %{
      api_version: "2014-11-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "kms",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "KMS",
      signature_version: "v4",
      signing_name: "kms",
      target_prefix: "TrentService"
    }
  end

  @doc """
  Cancels the deletion of a KMS key. When this operation succeeds, the key state
  of the KMS key is `Disabled`. To enable the KMS key, use `EnableKey`. For more
  information about scheduling and canceling deletion of a KMS key, see
  [Deleting KMS
  keys](https://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html)
  in the *Key Management Service Developer Guide*. The KMS key that you use for
  this operation must be in a compatible key state. For details, see [Key states
  of KMS
  keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in
  the *Key Management Service Developer Guide*.
  """
  @spec cancel_key_deletion(AWS.Client.t(), cancel_key_deletion_request(), Keyword.t()) ::
          {:ok, cancel_key_deletion_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_key_deletion_errors()}
  def cancel_key_deletion(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CancelKeyDeletion", input, options)
  end

  @doc """
  Connects or reconnects a [custom key
  store](https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
  to its backing key store. For an CloudHSM key store, `ConnectCustomKeyStore`
  connects the key store to its associated CloudHSM cluster. For an external key
  store, `ConnectCustomKeyStore` connects the key store to the external key
  store proxy that communicates with your external key manager. The custom key
  store must be connected before you can create KMS keys in the key store or use
  the KMS keys it contains. You can disconnect and reconnect a custom key store
  at any time. The connection process for a custom key store can take an
  extended amount of time to complete. This operation starts the connection
  process, but it does not wait for it to complete. When it succeeds, this
  operation quickly returns an HTTP 200 response and a JSON object with no
  properties. However, this response does not indicate that the custom key store
  is connected. To get the connection state of the custom key store, use the
  `DescribeCustomKeyStores` operation.
  """
  @spec connect_custom_key_store(AWS.Client.t(), connect_custom_key_store_request(), Keyword.t()) ::
          {:ok, connect_custom_key_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, connect_custom_key_store_errors()}
  def connect_custom_key_store(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ConnectCustomKeyStore", input, options)
  end

  @doc """
  Creates a friendly name for a KMS key. Adding, deleting, or updating an alias
  can allow or deny permission to the KMS key. For details, see [ABAC for
  KMS](https://docs.aws.amazon.com/kms/latest/developerguide/abac.html) in the
  *Key Management Service Developer Guide*. You can use an alias to identify a
  KMS key in the KMS console, in the `DescribeKey` operation and in
  [cryptographic
  operations](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations),
  such as `Encrypt` and `GenerateDataKey`. You can also change the KMS key
  that's associated with the alias (`UpdateAlias`) or delete the alias
  (`DeleteAlias`) at any time. These operations don't affect the underlying KMS
  key.
  """
  @spec create_alias(AWS.Client.t(), create_alias_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_alias_errors()}
  def create_alias(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateAlias", input, options)
  end

  @doc """
  Creates a [custom key
  store](https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
  backed by a key store that you own and manage. When you use a KMS key in a
  custom key store for a cryptographic operation, the cryptographic operation is
  actually performed in your key store using your keys. KMS supports [CloudHSM
  key
  stores](https://docs.aws.amazon.com/kms/latest/developerguide/keystore-cloudhsm.html)
  backed by an [CloudHSM
  cluster](https://docs.aws.amazon.com/cloudhsm/latest/userguide/clusters.html)
  and [external key
  stores](https://docs.aws.amazon.com/kms/latest/developerguide/keystore-external.html)
  backed by an external key store proxy and external key manager outside of
  Amazon Web Services. This operation is part of the [custom key
  stores](https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
  feature in KMS, which combines the convenience and extensive integration of
  KMS with the isolation and control of a key store that you own and manage.
  Before you create the custom key store, the required elements must be in place
  and operational. We recommend that you use the test tools that KMS provides to
  verify the configuration your external key store proxy. For details about the
  required elements and verification tests, see [Assemble the prerequisites (for
  CloudHSM key
  stores)](https://docs.aws.amazon.com/kms/latest/developerguide/create-keystore.html#before-keystore)
  or [Assemble the prerequisites (for external key
  stores)](https://docs.aws.amazon.com/kms/latest/developerguide/create-xks-keystore.html#xks-requirements)
  in the *Key Management Service Developer Guide*. To create a custom key store,
  use the following parameters.
  """
  @spec create_custom_key_store(AWS.Client.t(), create_custom_key_store_request(), Keyword.t()) ::
          {:ok, create_custom_key_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_custom_key_store_errors()}
  def create_custom_key_store(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateCustomKeyStore", input, options)
  end

  @doc """
  Adds a grant to a KMS key. A *grant* is a policy instrument that allows Amazon
  Web Services principals to use KMS keys in cryptographic operations. It also
  can allow them to view a KMS key (`DescribeKey`) and create and manage grants.
  When authorizing access to a KMS key, grants are considered along with key
  policies and IAM policies. Grants are often used for temporary permissions
  because you can create one, use its permissions, and delete it without
  changing your key policies or IAM policies.
  """
  @spec create_grant(AWS.Client.t(), create_grant_request(), Keyword.t()) ::
          {:ok, create_grant_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_grant_errors()}
  def create_grant(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateGrant", input, options)
  end

  @doc """
  Creates a unique customer managed [KMS
  key](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#kms-keys)
  in your Amazon Web Services account and Region. You can use a KMS key in
  cryptographic operations, such as encryption and signing. Some Amazon Web
  Services services let you use KMS keys that you create and manage to protect
  your service resources. A KMS key is a logical representation of a
  cryptographic key. In addition to the key material used in cryptographic
  operations, a KMS key includes metadata, such as the key ID, key policy,
  creation date, description, and key state. For details, see [Managing
  keys](https://docs.aws.amazon.com/kms/latest/developerguide/getting-started.html)
  in the *Key Management Service Developer Guide* Use the parameters of
  `CreateKey` to specify the type of KMS key, the source of its key material,
  its key policy, description, tags, and other properties.
  """
  @spec create_key(AWS.Client.t(), create_key_request(), Keyword.t()) ::
          {:ok, create_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_key_errors()}
  def create_key(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateKey", input, options)
  end

  @doc """
  Decrypts ciphertext that was encrypted by a KMS key using any of the following
  operations:
  """
  @spec decrypt(AWS.Client.t(), decrypt_request(), Keyword.t()) ::
          {:ok, decrypt_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, decrypt_errors()}
  def decrypt(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "Decrypt", input, options)
  end

  @doc """
  Deletes the specified alias. Adding, deleting, or updating an alias can allow or
  deny permission to the KMS key. For details, see [ABAC for
  KMS](https://docs.aws.amazon.com/kms/latest/developerguide/abac.html) in the
  *Key Management Service Developer Guide*. Because an alias is not a property
  of a KMS key, you can delete and change the aliases of a KMS key without
  affecting the KMS key. Also, aliases do not appear in the response from the
  `DescribeKey` operation. To get the aliases of all KMS keys, use the
  `ListAliases` operation.
  """
  @spec delete_alias(AWS.Client.t(), delete_alias_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_alias_errors()}
  def delete_alias(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteAlias", input, options)
  end

  @doc """
  Deletes a [custom key
  store](https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html).
  This operation does not affect any backing elements of the custom key store.
  It does not delete the CloudHSM cluster that is associated with an CloudHSM
  key store, or affect any users or keys in the cluster. For an external key
  store, it does not affect the external key store proxy, external key manager,
  or any external keys. This operation is part of the [custom key
  stores](https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
  feature in KMS, which combines the convenience and extensive integration of
  KMS with the isolation and control of a key store that you own and manage. The
  custom key store that you delete cannot contain any [KMS
  keys](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#kms_keys).
  Before deleting the key store, verify that you will never need to use any of
  the KMS keys in the key store for any [cryptographic
  operations](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations).
  Then, use `ScheduleKeyDeletion` to delete the KMS keys from the key store.
  After the required waiting period expires and all KMS keys are deleted from
  the custom key store, use `DisconnectCustomKeyStore` to disconnect the key
  store from KMS. Then, you can delete the custom key store. For keys in an
  CloudHSM key store, the `ScheduleKeyDeletion` operation makes a best effort to
  delete the key material from the associated cluster. However, you might need
  to manually [delete the orphaned key
  material](https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html#fix-keystore-orphaned-key)
  from the cluster and its backups. KMS never creates, manages, or deletes
  cryptographic keys in the external key manager associated with an external key
  store. You must manage them using your external key manager tools.
  """
  @spec delete_custom_key_store(AWS.Client.t(), delete_custom_key_store_request(), Keyword.t()) ::
          {:ok, delete_custom_key_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_custom_key_store_errors()}
  def delete_custom_key_store(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteCustomKeyStore", input, options)
  end

  @doc """
  Deletes key material that was previously imported. This operation makes the
  specified KMS key temporarily unusable. To restore the usability of the KMS
  key, reimport the same key material. For more information about importing key
  material into KMS, see [Importing Key
  Material](https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html)
  in the *Key Management Service Developer Guide*. When the specified KMS key is
  in the `PendingDeletion` state, this operation does not change the KMS key's
  state. Otherwise, it changes the KMS key's state to `PendingImport`. The KMS
  key that you use for this operation must be in a compatible key state. For
  details, see [Key states of KMS
  keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in
  the *Key Management Service Developer Guide*.
  """
  @spec delete_imported_key_material(
          AWS.Client.t(),
          delete_imported_key_material_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_imported_key_material_errors()}
  def delete_imported_key_material(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteImportedKeyMaterial", input, options)
  end

  @doc """
  Derives a shared secret using a key agreement algorithm. You must use an
  asymmetric NIST-recommended elliptic curve (ECC) or SM2 (China Regions only)
  KMS key pair with a `KeyUsage` value of `KEY_AGREEMENT` to call
  DeriveSharedSecret.
  """
  @spec derive_shared_secret(AWS.Client.t(), derive_shared_secret_request(), Keyword.t()) ::
          {:ok, derive_shared_secret_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, derive_shared_secret_errors()}
  def derive_shared_secret(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeriveSharedSecret", input, options)
  end

  @doc """
  Gets information about [custom key
  stores](https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
  in the account and Region. This operation is part of the [custom key
  stores](https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
  feature in KMS, which combines the convenience and extensive integration of
  KMS with the isolation and control of a key store that you own and manage. By
  default, this operation returns information about all custom key stores in the
  account and Region. To get only information about a particular custom key
  store, use either the `CustomKeyStoreName` or `CustomKeyStoreId` parameter
  (but not both).
  """
  @spec describe_custom_key_stores(
          AWS.Client.t(),
          describe_custom_key_stores_request(),
          Keyword.t()
        ) ::
          {:ok, describe_custom_key_stores_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_custom_key_stores_errors()}
  def describe_custom_key_stores(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeCustomKeyStores", input, options)
  end

  @doc """
  Provides detailed information about a KMS key. You can run `DescribeKey` on a
  [customer managed
  key](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk)
  or an [Amazon Web Services managed
  key](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk).
  This detailed information includes the key ARN, creation date (and deletion
  date, if applicable), the key state, and the origin and expiration date (if
  any) of the key material. It includes fields, like `KeySpec`, that help you
  distinguish different types of KMS keys. It also displays the key usage
  (encryption, signing, or generating and verifying MACs) and the algorithms
  that the KMS key supports. For [multi-Region
  keys](https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html),
  `DescribeKey` displays the primary key and all related replica keys. For KMS
  keys in [CloudHSM key
  stores](https://docs.aws.amazon.com/kms/latest/developerguide/keystore-cloudhsm.html),
  it includes information about the key store, such as the key store ID and the
  CloudHSM cluster ID. For KMS keys in [external key
  stores](https://docs.aws.amazon.com/kms/latest/developerguide/keystore-external.html),
  it includes the custom key store ID and the ID of the external key.
  `DescribeKey` does not return the following information:
  """
  @spec describe_key(AWS.Client.t(), describe_key_request(), Keyword.t()) ::
          {:ok, describe_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_key_errors()}
  def describe_key(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeKey", input, options)
  end

  @doc """
  Sets the state of a KMS key to disabled. This change temporarily prevents use of
  the KMS key for [cryptographic
  operations](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations).
  For more information about how key state affects the use of a KMS key, see
  [Key states of KMS
  keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in
  the * *Key Management Service Developer Guide* *. The KMS key that you use for
  this operation must be in a compatible key state. For details, see [Key states
  of KMS
  keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in
  the *Key Management Service Developer Guide*. **Cross-account use**: No. You
  cannot perform this operation on a KMS key in a different Amazon Web Services
  account.
  """
  @spec disable_key(AWS.Client.t(), disable_key_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disable_key_errors()}
  def disable_key(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisableKey", input, options)
  end

  @doc """
  Disables [automatic rotation of the key
  material](https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html)
  of the specified symmetric encryption KMS key. Automatic key rotation is
  supported only on symmetric encryption KMS keys. You cannot enable automatic
  rotation of [asymmetric KMS
  keys](https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html),
  [HMAC KMS
  keys](https://docs.aws.amazon.com/kms/latest/developerguide/hmac.html), KMS
  keys with [imported key
  material](https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html),
  or KMS keys in a [custom key
  store](https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html).
  To enable or disable automatic rotation of a set of related [multi-Region
  keys](https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-manage.html#multi-region-rotate),
  set the property on the primary key. You can enable (`EnableKeyRotation`) and
  disable automatic rotation of the key material in [customer managed KMS
  keys](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk).
  Key material rotation of [Amazon Web Services managed KMS
  keys](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk)
  is not configurable. KMS always rotates the key material for every year.
  Rotation of [Amazon Web Services owned KMS
  keys](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-owned-cmk)
  varies. In May 2022, KMS changed the rotation schedule for Amazon Web Services
  managed keys from every three years to every year. For details, see
  `EnableKeyRotation`. The KMS key that you use for this operation must be in a
  compatible key state. For details, see [Key states of KMS
  keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in
  the *Key Management Service Developer Guide*.
  """
  @spec disable_key_rotation(AWS.Client.t(), disable_key_rotation_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disable_key_rotation_errors()}
  def disable_key_rotation(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisableKeyRotation", input, options)
  end

  @doc """
  Disconnects the [custom key
  store](https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
  from its backing key store. This operation disconnects an CloudHSM key store
  from its associated CloudHSM cluster or disconnects an external key store from
  the external key store proxy that communicates with your external key manager.
  This operation is part of the [custom key
  stores](https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
  feature in KMS, which combines the convenience and extensive integration of
  KMS with the isolation and control of a key store that you own and manage.
  While a custom key store is disconnected, you can manage the custom key store
  and its KMS keys, but you cannot create or use its KMS keys. You can reconnect
  the custom key store at any time.
  """
  @spec disconnect_custom_key_store(
          AWS.Client.t(),
          disconnect_custom_key_store_request(),
          Keyword.t()
        ) ::
          {:ok, disconnect_custom_key_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disconnect_custom_key_store_errors()}
  def disconnect_custom_key_store(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisconnectCustomKeyStore", input, options)
  end

  @doc """
  Sets the key state of a KMS key to enabled. This allows you to use the KMS key
  for [cryptographic
  operations](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations).
  The KMS key that you use for this operation must be in a compatible key state.
  For details, see [Key states of KMS
  keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in
  the *Key Management Service Developer Guide*. **Cross-account use**: No. You
  cannot perform this operation on a KMS key in a different Amazon Web Services
  account.
  """
  @spec enable_key(AWS.Client.t(), enable_key_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, enable_key_errors()}
  def enable_key(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "EnableKey", input, options)
  end

  @doc """
  Enables [automatic rotation of the key
  material](https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html#rotating-keys-enable-disable)
  of the specified symmetric encryption KMS key. By default, when you enable
  automatic rotation of a [customer managed KMS
  key](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk),
  KMS rotates the key material of the KMS key one year (approximately 365 days)
  from the enable date and every year thereafter. You can use the optional
  `RotationPeriodInDays` parameter to specify a custom rotation period when you
  enable key rotation, or you can use `RotationPeriodInDays` to modify the
  rotation period of a key that you previously enabled automatic key rotation
  on. You can monitor rotation of the key material for your KMS keys in
  CloudTrail and Amazon CloudWatch. To disable rotation of the key material in a
  customer managed KMS key, use the `DisableKeyRotation` operation. You can use
  the `GetKeyRotationStatus` operation to identify any in progress rotations.
  You can use the `ListKeyRotations` operation to view the details of completed
  rotations.
  """
  @spec enable_key_rotation(AWS.Client.t(), enable_key_rotation_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, enable_key_rotation_errors()}
  def enable_key_rotation(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "EnableKeyRotation", input, options)
  end

  @doc """
  Encrypts plaintext of up to 4,096 bytes using a KMS key. You can use a symmetric
  or asymmetric KMS key with a `KeyUsage` of `ENCRYPT_DECRYPT`. You can use this
  operation to encrypt small amounts of arbitrary data, such as a personal
  identifier or database password, or other sensitive information. You don't
  need to use the `Encrypt` operation to encrypt a data key. The
  `GenerateDataKey` and `GenerateDataKeyPair` operations return a plaintext data
  key and an encrypted copy of that data key.
  """
  @spec encrypt(AWS.Client.t(), encrypt_request(), Keyword.t()) ::
          {:ok, encrypt_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, encrypt_errors()}
  def encrypt(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "Encrypt", input, options)
  end

  @doc """
  Returns a unique symmetric data key for use outside of KMS. This operation
  returns a plaintext copy of the data key and a copy that is encrypted under a
  symmetric encryption KMS key that you specify. The bytes in the plaintext key
  are random; they are not related to the caller or the KMS key. You can use the
  plaintext key to encrypt your data outside of KMS and store the encrypted data
  key with the encrypted data. To generate a data key, specify the symmetric
  encryption KMS key that will be used to encrypt the data key. You cannot use
  an asymmetric KMS key to encrypt data keys. To get the type of your KMS key,
  use the `DescribeKey` operation.
  """
  @spec generate_data_key(AWS.Client.t(), generate_data_key_request(), Keyword.t()) ::
          {:ok, generate_data_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, generate_data_key_errors()}
  def generate_data_key(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GenerateDataKey", input, options)
  end

  @doc """
  Returns a unique asymmetric data key pair for use outside of KMS. This operation
  returns a plaintext public key, a plaintext private key, and a copy of the
  private key that is encrypted under the symmetric encryption KMS key you
  specify. You can use the data key pair to perform asymmetric cryptography and
  implement digital signatures outside of KMS. The bytes in the keys are random;
  they are not related to the caller or to the KMS key that is used to encrypt
  the private key. You can use the public key that `GenerateDataKeyPair` returns
  to encrypt data or verify a signature outside of KMS. Then, store the
  encrypted private key with the data. When you are ready to decrypt data or
  sign a message, you can use the `Decrypt` operation to decrypt the encrypted
  private key.
  """
  @spec generate_data_key_pair(AWS.Client.t(), generate_data_key_pair_request(), Keyword.t()) ::
          {:ok, generate_data_key_pair_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, generate_data_key_pair_errors()}
  def generate_data_key_pair(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GenerateDataKeyPair", input, options)
  end

  @doc """
  Returns a unique asymmetric data key pair for use outside of KMS. This operation
  returns a plaintext public key and a copy of the private key that is encrypted
  under the symmetric encryption KMS key you specify. Unlike
  `GenerateDataKeyPair`, this operation does not return a plaintext private key.
  The bytes in the keys are random; they are not related to the caller or to the
  KMS key that is used to encrypt the private key. You can use the public key
  that `GenerateDataKeyPairWithoutPlaintext` returns to encrypt data or verify a
  signature outside of KMS. Then, store the encrypted private key with the data.
  When you are ready to decrypt data or sign a message, you can use the
  `Decrypt` operation to decrypt the encrypted private key.
  """
  @spec generate_data_key_pair_without_plaintext(
          AWS.Client.t(),
          generate_data_key_pair_without_plaintext_request(),
          Keyword.t()
        ) ::
          {:ok, generate_data_key_pair_without_plaintext_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, generate_data_key_pair_without_plaintext_errors()}
  def generate_data_key_pair_without_plaintext(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GenerateDataKeyPairWithoutPlaintext", input, options)
  end

  @doc """
  Returns a unique symmetric data key for use outside of KMS. This operation
  returns a data key that is encrypted under a symmetric encryption KMS key that
  you specify. The bytes in the key are random; they are not related to the
  caller or to the KMS key. `GenerateDataKeyWithoutPlaintext` is identical to
  the `GenerateDataKey` operation except that it does not return a plaintext
  copy of the data key.
  """
  @spec generate_data_key_without_plaintext(
          AWS.Client.t(),
          generate_data_key_without_plaintext_request(),
          Keyword.t()
        ) ::
          {:ok, generate_data_key_without_plaintext_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, generate_data_key_without_plaintext_errors()}
  def generate_data_key_without_plaintext(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GenerateDataKeyWithoutPlaintext", input, options)
  end

  @doc """
  Generates a hash-based message authentication code (HMAC) for a message using an
  HMAC KMS key and a MAC algorithm that the key supports. HMAC KMS keys and the
  HMAC algorithms that KMS uses conform to industry standards defined in [RFC
  2104](https://datatracker.ietf.org/doc/html/rfc2104). You can use value that
  GenerateMac returns in the `VerifyMac` operation to demonstrate that the
  original message has not changed. Also, because a secret key is used to create
  the hash, you can verify that the party that generated the hash has the
  required secret key. You can also use the raw result to implement HMAC-based
  algorithms such as key derivation functions. This operation is part of KMS
  support for HMAC KMS keys. For details, see [HMAC keys in
  KMS](https://docs.aws.amazon.com/kms/latest/developerguide/hmac.html) in the *
  *Key Management Service Developer Guide* *. Best practices recommend that you
  limit the time during which any signing mechanism, including an HMAC, is
  effective. This deters an attack where the actor uses a signed message to
  establish validity repeatedly or long after the message is superseded. HMAC
  tags do not include a timestamp, but you can include a timestamp in the token
  or message to help you detect when its time to refresh the HMAC.
  """
  @spec generate_mac(AWS.Client.t(), generate_mac_request(), Keyword.t()) ::
          {:ok, generate_mac_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, generate_mac_errors()}
  def generate_mac(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GenerateMac", input, options)
  end

  @doc """
  Returns a random byte string that is cryptographically secure. You must use the
  `NumberOfBytes` parameter to specify the length of the random byte string.
  There is no default value for string length.
  """
  @spec generate_random(AWS.Client.t(), generate_random_request(), Keyword.t()) ::
          {:ok, generate_random_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, generate_random_errors()}
  def generate_random(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GenerateRandom", input, options)
  end

  @doc """
  Gets a key policy attached to the specified KMS key. **Cross-account use**: No.
  You cannot perform this operation on a KMS key in a different Amazon Web
  Services account.
  """
  @spec get_key_policy(AWS.Client.t(), get_key_policy_request(), Keyword.t()) ::
          {:ok, get_key_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_key_policy_errors()}
  def get_key_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetKeyPolicy", input, options)
  end

  @doc """
  Provides detailed information about the rotation status for a KMS key, including
  whether [automatic rotation of the key
  material](https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html)
  is enabled for the specified KMS key, the [rotation
  period](https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html#rotation-period),
  and the next scheduled rotation date. Automatic key rotation is supported only
  on [symmetric encryption KMS
  keys](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#symmetric-cmks).
  You cannot enable automatic rotation of [asymmetric KMS
  keys](https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html),
  [HMAC KMS
  keys](https://docs.aws.amazon.com/kms/latest/developerguide/hmac.html), KMS
  keys with [imported key
  material](https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html),
  or KMS keys in a [custom key
  store](https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html).
  To enable or disable automatic rotation of a set of related [multi-Region
  keys](https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-manage.html#multi-region-rotate),
  set the property on the primary key.. You can enable (`EnableKeyRotation`) and
  disable automatic rotation (`DisableKeyRotation`) of the key material in
  customer managed KMS keys. Key material rotation of [Amazon Web Services
  managed KMS
  keys](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk)
  is not configurable. KMS always rotates the key material in Amazon Web
  Services managed KMS keys every year. The key rotation status for Amazon Web
  Services managed KMS keys is always `true`. You can perform on-demand
  (`RotateKeyOnDemand`) rotation of the key material in customer managed KMS
  keys, regardless of whether or not automatic key rotation is enabled. You can
  use GetKeyRotationStatus to identify the date and time that an in progress
  on-demand rotation was initiated. You can use `ListKeyRotations` to view the
  details of completed rotations.
  """
  @spec get_key_rotation_status(AWS.Client.t(), get_key_rotation_status_request(), Keyword.t()) ::
          {:ok, get_key_rotation_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_key_rotation_status_errors()}
  def get_key_rotation_status(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetKeyRotationStatus", input, options)
  end

  @doc """
  Returns the public key and an import token you need to import or reimport key
  material for a KMS key. By default, KMS keys are created with key material
  that KMS generates. This operation supports [Importing key
  material](https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html),
  an advanced feature that lets you generate and import the cryptographic key
  material for a KMS key. For more information about importing key material into
  KMS, see [Importing key
  material](https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html)
  in the *Key Management Service Developer Guide*. Before calling
  `GetParametersForImport`, use the `CreateKey` operation with an `Origin` value
  of `EXTERNAL` to create a KMS key with no key material. You can import key
  material for a symmetric encryption KMS key, HMAC KMS key, asymmetric
  encryption KMS key, or asymmetric signing KMS key. You can also import key
  material into a [multi-Region
  key](https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html)
  of any supported type. However, you can't import key material into a KMS key
  in a [custom key
  store](https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html).
  You can also use `GetParametersForImport` to get a public key and import token
  to [reimport the original key
  material](https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html#reimport-key-material)
  into a KMS key whose key material expired or was deleted.
  `GetParametersForImport` returns the items that you need to import your key
  material.
  """
  @spec get_parameters_for_import(
          AWS.Client.t(),
          get_parameters_for_import_request(),
          Keyword.t()
        ) ::
          {:ok, get_parameters_for_import_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_parameters_for_import_errors()}
  def get_parameters_for_import(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetParametersForImport", input, options)
  end

  @doc """
  Returns the public key of an asymmetric KMS key. Unlike the private key of a
  asymmetric KMS key, which never leaves KMS unencrypted, callers with
  `kms:GetPublicKey` permission can download the public key of an asymmetric KMS
  key. You can share the public key to allow others to encrypt messages and
  verify signatures outside of KMS. For information about asymmetric KMS keys,
  see [Asymmetric KMS
  keys](https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html)
  in the *Key Management Service Developer Guide*. You do not need to download
  the public key. Instead, you can use the public key within KMS by calling the
  `Encrypt`, `ReEncrypt`, or `Verify` operations with the identifier of an
  asymmetric KMS key. When you use the public key within KMS, you benefit from
  the authentication, authorization, and logging that are part of every KMS
  operation. You also reduce of risk of encrypting data that cannot be
  decrypted. These features are not effective outside of KMS. To help you use
  the public key safely outside of KMS, `GetPublicKey` returns important
  information about the public key in the response, including:
  """
  @spec get_public_key(AWS.Client.t(), get_public_key_request(), Keyword.t()) ::
          {:ok, get_public_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_public_key_errors()}
  def get_public_key(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetPublicKey", input, options)
  end

  @doc """
  Imports or reimports key material into an existing KMS key that was created
  without key material. `ImportKeyMaterial` also sets the expiration model and
  expiration date of the imported key material. By default, KMS keys are created
  with key material that KMS generates. This operation supports [Importing key
  material](https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html),
  an advanced feature that lets you generate and import the cryptographic key
  material for a KMS key. For more information about importing key material into
  KMS, see [Importing key
  material](https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html)
  in the *Key Management Service Developer Guide*. After you successfully import
  key material into a KMS key, you can [reimport the same key
  material](https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html#reimport-key-material)
  into that KMS key, but you cannot import different key material. You might
  reimport key material to replace key material that expired or key material
  that you deleted. You might also reimport key material to change the
  expiration model or expiration date of the key material.
  """
  @spec import_key_material(AWS.Client.t(), import_key_material_request(), Keyword.t()) ::
          {:ok, import_key_material_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, import_key_material_errors()}
  def import_key_material(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ImportKeyMaterial", input, options)
  end

  @doc """
  Gets a list of aliases in the caller's Amazon Web Services account and region.
  For more information about aliases, see `CreateAlias`. By default, the
  `ListAliases` operation returns all aliases in the account and region. To get
  only the aliases associated with a particular KMS key, use the `KeyId`
  parameter.
  """
  @spec list_aliases(AWS.Client.t(), list_aliases_request(), Keyword.t()) ::
          {:ok, list_aliases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_aliases_errors()}
  def list_aliases(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAliases", input, options)
  end

  @doc """
  Gets a list of all grants for the specified KMS key. You must specify the KMS
  key in all requests. You can filter the grant list by grant ID or grantee
  principal.
  """
  @spec list_grants(AWS.Client.t(), list_grants_request(), Keyword.t()) ::
          {:ok, list_grants_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_grants_errors()}
  def list_grants(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListGrants", input, options)
  end

  @doc """
  Gets the names of the key policies that are attached to a KMS key. This
  operation is designed to get policy names that you can use in a `GetKeyPolicy`
  operation. However, the only valid policy name is `default`. **Cross-account
  use**: No. You cannot perform this operation on a KMS key in a different
  Amazon Web Services account.
  """
  @spec list_key_policies(AWS.Client.t(), list_key_policies_request(), Keyword.t()) ::
          {:ok, list_key_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_key_policies_errors()}
  def list_key_policies(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListKeyPolicies", input, options)
  end

  @doc """
  Returns information about all completed key material rotations for the specified
  KMS key. You must specify the KMS key in all requests. You can refine the key
  rotations list by limiting the number of rotations returned.
  """
  @spec list_key_rotations(AWS.Client.t(), list_key_rotations_request(), Keyword.t()) ::
          {:ok, list_key_rotations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_key_rotations_errors()}
  def list_key_rotations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListKeyRotations", input, options)
  end

  @doc """
  Gets a list of all KMS keys in the caller's Amazon Web Services account and
  Region. **Cross-account use**: No. You cannot perform this operation on a KMS
  key in a different Amazon Web Services account.
  """
  @spec list_keys(AWS.Client.t(), list_keys_request(), Keyword.t()) ::
          {:ok, list_keys_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_keys_errors()}
  def list_keys(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListKeys", input, options)
  end

  @doc """
  Returns all tags on the specified KMS key. For general information about tags,
  including the format and syntax, see [Tagging Amazon Web Services
  resources](https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in
  the *Amazon Web Services General Reference*. For information about using tags
  in KMS, see [Tagging
  keys](https://docs.aws.amazon.com/kms/latest/developerguide/tagging-keys.html).
  **Cross-account use**: No. You cannot perform this operation on a KMS key in a
  different Amazon Web Services account.
  """
  @spec list_resource_tags(AWS.Client.t(), list_resource_tags_request(), Keyword.t()) ::
          {:ok, list_resource_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_resource_tags_errors()}
  def list_resource_tags(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListResourceTags", input, options)
  end

  @doc """
  Returns information about all grants in the Amazon Web Services account and
  Region that have the specified retiring principal. You can specify any
  principal in your Amazon Web Services account. The grants that are returned
  include grants for KMS keys in your Amazon Web Services account and other
  Amazon Web Services accounts. You might use this operation to determine which
  grants you may retire. To retire a grant, use the `RetireGrant` operation.
  """
  @spec list_retirable_grants(AWS.Client.t(), list_retirable_grants_request(), Keyword.t()) ::
          {:ok, list_grants_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_retirable_grants_errors()}
  def list_retirable_grants(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListRetirableGrants", input, options)
  end

  @doc """
  Attaches a key policy to the specified KMS key. For more information about key
  policies, see [Key
  Policies](https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html)
  in the *Key Management Service Developer Guide*. For help writing and
  formatting a JSON policy document, see the [IAM JSON Policy
  Reference](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html)
  in the * *Identity and Access Management User Guide* *. For examples of adding
  a key policy in multiple programming languages, see [Setting a key
  policy](https://docs.aws.amazon.com/kms/latest/developerguide/programming-key-policies.html#put-policy)
  in the *Key Management Service Developer Guide*. **Cross-account use**: No.
  You cannot perform this operation on a KMS key in a different Amazon Web
  Services account.
  """
  @spec put_key_policy(AWS.Client.t(), put_key_policy_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_key_policy_errors()}
  def put_key_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutKeyPolicy", input, options)
  end

  @doc """
  Decrypts ciphertext and then reencrypts it entirely within KMS. You can use this
  operation to change the KMS key under which data is encrypted, such as when
  you [manually
  rotate](https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html#rotate-keys-manually)
  a KMS key or change the KMS key that protects a ciphertext. You can also use
  it to reencrypt ciphertext under the same KMS key, such as to change the
  [encryption
  context](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context)
  of a ciphertext. The `ReEncrypt` operation can decrypt ciphertext that was
  encrypted by using a KMS key in an KMS operation, such as `Encrypt` or
  `GenerateDataKey`. It can also decrypt ciphertext that was encrypted by using
  the public key of an [asymmetric KMS
  key](https://docs.aws.amazon.com/kms/latest/developerguide/symm-asymm-concepts.html#asymmetric-cmks)
  outside of KMS. However, it cannot decrypt ciphertext produced by other
  libraries, such as the [Amazon Web Services Encryption
  SDK](https://docs.aws.amazon.com/encryption-sdk/latest/developer-guide/) or
  [Amazon S3 client-side
  encryption](https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingClientSideEncryption.html).
  These libraries return a ciphertext format that is incompatible with KMS. When
  you use the `ReEncrypt` operation, you need to provide information for the
  decrypt operation and the subsequent encrypt operation.
  """
  @spec re_encrypt(AWS.Client.t(), re_encrypt_request(), Keyword.t()) ::
          {:ok, re_encrypt_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, re_encrypt_errors()}
  def re_encrypt(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ReEncrypt", input, options)
  end

  @doc """
  Replicates a multi-Region key into the specified Region. This operation creates
  a multi-Region replica key based on a multi-Region primary key in a different
  Region of the same Amazon Web Services partition. You can create multiple
  replicas of a primary key, but each must be in a different Region. To create a
  multi-Region primary key, use the `CreateKey` operation. This operation
  supports *multi-Region keys*, an KMS feature that lets you create multiple
  interoperable KMS keys in different Amazon Web Services Regions. Because these
  KMS keys have the same key ID, key material, and other metadata, you can use
  them interchangeably to encrypt data in one Amazon Web Services Region and
  decrypt it in a different Amazon Web Services Region without re-encrypting the
  data or making a cross-Region call. For more information about multi-Region
  keys, see [Multi-Region keys in
  KMS](https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html)
  in the *Key Management Service Developer Guide*. A *replica key* is a
  fully-functional KMS key that can be used independently of its primary and
  peer replica keys. A primary key and its replica keys share properties that
  make them interoperable. They have the same [key
  ID](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-id)
  and key material. They also have the same [key
  spec](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-spec),
  [key
  usage](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-usage),
  [key material
  origin](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-origin),
  and [automatic key rotation
  status](https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html).
  KMS automatically synchronizes these shared properties among related
  multi-Region keys. All other properties of a replica key can differ, including
  its [key
  policy](https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html),
  [tags](https://docs.aws.amazon.com/kms/latest/developerguide/tagging-keys.html),
  [aliases](https://docs.aws.amazon.com/kms/latest/developerguide/kms-alias.html),
  and [Key states of KMS
  keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html).
  KMS pricing and quotas for KMS keys apply to each primary key and replica key.
  When this operation completes, the new replica key has a transient key state
  of `Creating`. This key state changes to `Enabled` (or `PendingImport`) after
  a few seconds when the process of creating the new replica key is complete.
  While the key state is `Creating`, you can manage key, but you cannot yet use
  it in cryptographic operations. If you are creating and using the replica key
  programmatically, retry on `KMSInvalidStateException` or call `DescribeKey` to
  check its `KeyState` value before using it. For details about the `Creating`
  key state, see [Key states of KMS
  keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in
  the *Key Management Service Developer Guide*.
  """
  @spec replicate_key(AWS.Client.t(), replicate_key_request(), Keyword.t()) ::
          {:ok, replicate_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, replicate_key_errors()}
  def replicate_key(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ReplicateKey", input, options)
  end

  @doc """
  Deletes a grant. Typically, you retire a grant when you no longer need its
  permissions. To identify the grant to retire, use a [grant
  token](https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token),
  or both the grant ID and a key identifier (key ID or key ARN) of the KMS key.
  The `CreateGrant` operation returns both values. This operation can be called
  by the *retiring principal* for a grant, by the *grantee principal* if the
  grant allows the `RetireGrant` operation, and by the Amazon Web Services
  account in which the grant is created. It can also be called by principals to
  whom permission for retiring a grant is delegated. For details, see [Retiring
  and revoking
  grants](https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#grant-delete)
  in the *Key Management Service Developer Guide*. For detailed information
  about grants, including grant terminology, see [Grants in
  KMS](https://docs.aws.amazon.com/kms/latest/developerguide/grants.html) in the
  * *Key Management Service Developer Guide* *. For examples of working with
  grants in several programming languages, see [Programming
  grants](https://docs.aws.amazon.com/kms/latest/developerguide/programming-grants.html).
  **Cross-account use**: Yes. You can retire a grant on a KMS key in a different
  Amazon Web Services account.
  """
  @spec retire_grant(AWS.Client.t(), retire_grant_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, retire_grant_errors()}
  def retire_grant(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RetireGrant", input, options)
  end

  @doc """
  Deletes the specified grant. You revoke a grant to terminate the permissions
  that the grant allows. For more information, see [Retiring and revoking
  grants](https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#grant-delete)
  in the * *Key Management Service Developer Guide* *. When you create, retire,
  or revoke a grant, there might be a brief delay, usually less than five
  minutes, until the grant is available throughout KMS. This state is known as
  *eventual consistency*. For details, see [Eventual
  consistency](https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#terms-eventual-consistency)
  in the * *Key Management Service Developer Guide* *. For detailed information
  about grants, including grant terminology, see [Grants in
  KMS](https://docs.aws.amazon.com/kms/latest/developerguide/grants.html) in the
  * *Key Management Service Developer Guide* *. For examples of working with
  grants in several programming languages, see [Programming
  grants](https://docs.aws.amazon.com/kms/latest/developerguide/programming-grants.html).
  **Cross-account use**: Yes. To perform this operation on a KMS key in a
  different Amazon Web Services account, specify the key ARN in the value of the
  `KeyId` parameter.
  """
  @spec revoke_grant(AWS.Client.t(), revoke_grant_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, revoke_grant_errors()}
  def revoke_grant(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RevokeGrant", input, options)
  end

  @doc """
  Immediately initiates rotation of the key material of the specified symmetric
  encryption KMS key. You can perform [on-demand
  rotation](https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html#rotating-keys-on-demand)
  of the key material in customer managed KMS keys, regardless of whether or not
  [automatic key
  rotation](https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html#rotating-keys-enable-disable)
  is enabled. On-demand rotations do not change existing automatic rotation
  schedules. For example, consider a KMS key that has automatic key rotation
  enabled with a rotation period of 730 days. If the key is scheduled to
  automatically rotate on April 14, 2024, and you perform an on-demand rotation
  on April 10, 2024, the key will automatically rotate, as scheduled, on April
  14, 2024 and every 730 days thereafter. You can perform on-demand key rotation
  a **maximum of 10 times** per KMS key. You can use the KMS console to view the
  number of remaining on-demand rotations available for a KMS key.
  """
  @spec rotate_key_on_demand(AWS.Client.t(), rotate_key_on_demand_request(), Keyword.t()) ::
          {:ok, rotate_key_on_demand_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, rotate_key_on_demand_errors()}
  def rotate_key_on_demand(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RotateKeyOnDemand", input, options)
  end

  @doc """
  Schedules the deletion of a KMS key. By default, KMS applies a waiting period of
  30 days, but you can specify a waiting period of 7-30 days. When this
  operation is successful, the key state of the KMS key changes to
  `PendingDeletion` and the key can't be used in any cryptographic operations.
  It remains in this state for the duration of the waiting period. Before the
  waiting period ends, you can use `CancelKeyDeletion` to cancel the deletion of
  the KMS key. After the waiting period ends, KMS deletes the KMS key, its key
  material, and all KMS data associated with it, including all aliases that
  refer to it. Deleting a KMS key is a destructive and potentially dangerous
  operation. When a KMS key is deleted, all data that was encrypted under the
  KMS key is unrecoverable. (The only exception is a [multi-Region replica
  key](https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-delete.html),
  or an [asymmetric or HMAC KMS key with imported key
  material](kms/latest/developerguide/importing-keys-managing.html#import-delete-key).)
  To prevent the use of a KMS key without deleting it, use `DisableKey`. You can
  schedule the deletion of a multi-Region primary key and its replica keys at
  any time. However, KMS will not delete a multi-Region primary key with
  existing replica keys. If you schedule the deletion of a primary key with
  replicas, its key state changes to `PendingReplicaDeletion` and it cannot be
  replicated or used in cryptographic operations. This status can continue
  indefinitely. When the last of its replicas keys is deleted (not just
  scheduled), the key state of the primary key changes to `PendingDeletion` and
  its waiting period (`PendingWindowInDays`) begins. For details, see [Deleting
  multi-Region
  keys](https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-delete.html)
  in the *Key Management Service Developer Guide*.
  """
  @spec schedule_key_deletion(AWS.Client.t(), schedule_key_deletion_request(), Keyword.t()) ::
          {:ok, schedule_key_deletion_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, schedule_key_deletion_errors()}
  def schedule_key_deletion(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ScheduleKeyDeletion", input, options)
  end

  @doc """
  Creates a [digital signature](https://en.wikipedia.org/wiki/Digital_signature)
  for a message or message digest by using the private key in an asymmetric
  signing KMS key. To verify the signature, use the `Verify` operation, or use
  the public key in the same asymmetric KMS key outside of KMS. For information
  about asymmetric KMS keys, see [Asymmetric KMS
  keys](https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html)
  in the *Key Management Service Developer Guide*. Digital signatures are
  generated and verified by using asymmetric key pair, such as an RSA or ECC
  pair that is represented by an asymmetric KMS key. The key owner (or an
  authorized user) uses their private key to sign a message. Anyone with the
  public key can verify that the message was signed with that particular private
  key and that the message hasn't changed since it was signed. To use the `Sign`
  operation, provide the following information:
  """
  @spec sign(AWS.Client.t(), sign_request(), Keyword.t()) ::
          {:ok, sign_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, sign_errors()}
  def sign(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "Sign", input, options)
  end

  @doc """
  Adds or edits tags on a [customer managed
  key](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk).
  Tagging or untagging a KMS key can allow or deny permission to the KMS key.
  For details, see [ABAC for
  KMS](https://docs.aws.amazon.com/kms/latest/developerguide/abac.html) in the
  *Key Management Service Developer Guide*. Each tag consists of a tag key and a
  tag value, both of which are case-sensitive strings. The tag value can be an
  empty (null) string. To add a tag, specify a new tag key and a tag value. To
  edit a tag, specify an existing tag key and a new tag value.
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
  Deletes tags from a [customer managed
  key](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk).
  To delete a tag, specify the tag key and the KMS key. Tagging or untagging a
  KMS key can allow or deny permission to the KMS key. For details, see [ABAC
  for KMS](https://docs.aws.amazon.com/kms/latest/developerguide/abac.html) in
  the *Key Management Service Developer Guide*. When it succeeds, the
  `UntagResource` operation doesn't return any output. Also, if the specified
  tag key isn't found on the KMS key, it doesn't throw an exception or return a
  response. To confirm that the operation worked, use the `ListResourceTags`
  operation.
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
  Associates an existing KMS alias with a different KMS key. Each alias is
  associated with only one KMS key at a time, although a KMS key can have
  multiple aliases. The alias and the KMS key must be in the same Amazon Web
  Services account and Region. Adding, deleting, or updating an alias can allow
  or deny permission to the KMS key. For details, see [ABAC for
  KMS](https://docs.aws.amazon.com/kms/latest/developerguide/abac.html) in the
  *Key Management Service Developer Guide*. The current and new KMS key must be
  the same type (both symmetric or both asymmetric or both HMAC), and they must
  have the same key usage. This restriction prevents errors in code that uses
  aliases. If you must assign an alias to a different type of KMS key, use
  `DeleteAlias` to delete the old alias and `CreateAlias` to create a new alias.
  """
  @spec update_alias(AWS.Client.t(), update_alias_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_alias_errors()}
  def update_alias(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateAlias", input, options)
  end

  @doc """
  Changes the properties of a custom key store. You can use this operation to
  change the properties of an CloudHSM key store or an external key store. Use
  the required `CustomKeyStoreId` parameter to identify the custom key store.
  Use the remaining optional parameters to change its properties. This operation
  does not return any property values. To verify the updated property values,
  use the `DescribeCustomKeyStores` operation.
  """
  @spec update_custom_key_store(AWS.Client.t(), update_custom_key_store_request(), Keyword.t()) ::
          {:ok, update_custom_key_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_custom_key_store_errors()}
  def update_custom_key_store(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateCustomKeyStore", input, options)
  end

  @doc """
  Updates the description of a KMS key. To see the description of a KMS key, use
  `DescribeKey`. The KMS key that you use for this operation must be in a
  compatible key state. For details, see [Key states of KMS
  keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in
  the *Key Management Service Developer Guide*. **Cross-account use**: No. You
  cannot perform this operation on a KMS key in a different Amazon Web Services
  account.
  """
  @spec update_key_description(AWS.Client.t(), update_key_description_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_key_description_errors()}
  def update_key_description(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateKeyDescription", input, options)
  end

  @doc """
  Changes the primary key of a multi-Region key. This operation changes the
  replica key in the specified Region to a primary key and changes the former
  primary key to a replica key. For example, suppose you have a primary key in
  `us-east-1` and a replica key in `eu-west-2`. If you run `UpdatePrimaryRegion`
  with a `PrimaryRegion` value of `eu-west-2`, the primary key is now the key in
  `eu-west-2`, and the key in `us-east-1` becomes a replica key. For details,
  see [Updating the primary
  Region](https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-manage.html#multi-region-update)
  in the *Key Management Service Developer Guide*. This operation supports
  *multi-Region keys*, an KMS feature that lets you create multiple
  interoperable KMS keys in different Amazon Web Services Regions. Because these
  KMS keys have the same key ID, key material, and other metadata, you can use
  them interchangeably to encrypt data in one Amazon Web Services Region and
  decrypt it in a different Amazon Web Services Region without re-encrypting the
  data or making a cross-Region call. For more information about multi-Region
  keys, see [Multi-Region keys in
  KMS](https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html)
  in the *Key Management Service Developer Guide*.
  """
  @spec update_primary_region(AWS.Client.t(), update_primary_region_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_primary_region_errors()}
  def update_primary_region(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdatePrimaryRegion", input, options)
  end

  @doc """
  Verifies a digital signature that was generated by the `Sign` operation.
  """
  @spec verify(AWS.Client.t(), verify_request(), Keyword.t()) ::
          {:ok, verify_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, verify_errors()}
  def verify(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "Verify", input, options)
  end

  @doc """
  Verifies the hash-based message authentication code (HMAC) for a specified
  message, HMAC KMS key, and MAC algorithm. To verify the HMAC, `VerifyMac`
  computes an HMAC using the message, HMAC KMS key, and MAC algorithm that you
  specify, and compares the computed HMAC to the HMAC that you specify. If the
  HMACs are identical, the verification succeeds; otherwise, it fails.
  Verification indicates that the message hasn't changed since the HMAC was
  calculated, and the specified key was used to generate and verify the HMAC.
  HMAC KMS keys and the HMAC algorithms that KMS uses conform to industry
  standards defined in [RFC
  2104](https://datatracker.ietf.org/doc/html/rfc2104). This operation is part
  of KMS support for HMAC KMS keys. For details, see [HMAC keys in
  KMS](https://docs.aws.amazon.com/kms/latest/developerguide/hmac.html) in the
  *Key Management Service Developer Guide*.
  """
  @spec verify_mac(AWS.Client.t(), verify_mac_request(), Keyword.t()) ::
          {:ok, verify_mac_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, verify_mac_errors()}
  def verify_mac(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "VerifyMac", input, options)
  end
end
