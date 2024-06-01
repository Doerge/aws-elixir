# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ACMPCA do
  @moduledoc """
  This is the *Amazon Web Services Private Certificate Authority API Reference*.
  It provides descriptions, syntax, and usage examples for each of the actions
  and data types involved in creating and managing a private certificate
  authority (CA) for your organization. The documentation for each action shows
  the API request parameters and the JSON response. Alternatively, you can use
  one of the Amazon Web Services SDKs to access an API that is tailored to the
  programming language or platform that you prefer. For more information, see
  [Amazon Web Services SDKs](https://aws.amazon.com/tools/#SDKs). Each Amazon
  Web Services Private CA API operation has a quota that determines the number
  of times the operation can be called per second. Amazon Web Services Private
  CA throttles API requests at different rates depending on the operation.
  Throttling means that Amazon Web Services Private CA rejects an otherwise
  valid request because the request exceeds the operation's quota for the number
  of requests per second. When a request is throttled, Amazon Web Services
  Private CA returns a
  [ThrottlingException](https://docs.aws.amazon.com/privateca/latest/APIReference/CommonErrors.html)
  error. Amazon Web Services Private CA does not guarantee a minimum request
  rate for APIs.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      crl_distribution_point_extension_configuration() :: %{
        "OmitExtension" => boolean()
      }
      
  """
  @type crl_distribution_point_extension_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_permissions_response() :: %{
        "NextToken" => String.t(),
        "Permissions" => list(permission()())
      }
      
  """
  @type list_permissions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_certificate_authority_certificate_request() :: %{
        required("CertificateAuthorityArn") => String.t()
      }
      
  """
  @type get_certificate_authority_certificate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_certificate_authority_audit_report_response() :: %{
        "AuditReportStatus" => list(any()),
        "CreatedAt" => non_neg_integer(),
        "S3BucketName" => String.t(),
        "S3Key" => String.t()
      }
      
  """
  @type describe_certificate_authority_audit_report_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_certificate_authorities_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ResourceOwner") => list(any())
      }
      
  """
  @type list_certificate_authorities_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_certificate_authority_request() :: %{
        optional("IdempotencyToken") => String.t(),
        optional("KeyStorageSecurityStandard") => list(any()),
        optional("RevocationConfiguration") => revocation_configuration(),
        optional("Tags") => list(tag()()),
        optional("UsageMode") => list(any()),
        required("CertificateAuthorityConfiguration") => certificate_authority_configuration(),
        required("CertificateAuthorityType") => list(any())
      }
      
  """
  @type create_certificate_authority_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      request_failed_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type request_failed_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      request_in_progress_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type request_in_progress_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      csr_extensions() :: %{
        "KeyUsage" => key_usage(),
        "SubjectInformationAccess" => list(access_description()())
      }
      
  """
  @type csr_extensions() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      revoke_certificate_request() :: %{
        required("CertificateAuthorityArn") => String.t(),
        required("CertificateSerial") => String.t(),
        required("RevocationReason") => list(any())
      }
      
  """
  @type revoke_certificate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      certificate_authority() :: %{
        "Arn" => String.t(),
        "CertificateAuthorityConfiguration" => certificate_authority_configuration(),
        "CreatedAt" => non_neg_integer(),
        "FailureReason" => list(any()),
        "KeyStorageSecurityStandard" => list(any()),
        "LastStateChangeAt" => non_neg_integer(),
        "NotAfter" => non_neg_integer(),
        "NotBefore" => non_neg_integer(),
        "OwnerAccount" => String.t(),
        "RestorableUntil" => non_neg_integer(),
        "RevocationConfiguration" => revocation_configuration(),
        "Serial" => String.t(),
        "Status" => list(any()),
        "Type" => list(any()),
        "UsageMode" => list(any())
      }
      
  """
  @type certificate_authority() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_policy_request() :: %{
        required("ResourceArn") => String.t()
      }
      
  """
  @type get_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_response() :: %{
        "NextToken" => String.t(),
        "Tags" => list(tag()())
      }
      
  """
  @type list_tags_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      certificate_authority_configuration() :: %{
        "CsrExtensions" => csr_extensions(),
        "KeyAlgorithm" => list(any()),
        "SigningAlgorithm" => list(any()),
        "Subject" => a_s_n1_subject()
      }
      
  """
  @type certificate_authority_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      issue_certificate_request() :: %{
        optional("ApiPassthrough") => api_passthrough(),
        optional("IdempotencyToken") => String.t(),
        optional("TemplateArn") => String.t(),
        optional("ValidityNotBefore") => validity(),
        required("CertificateAuthorityArn") => String.t(),
        required("Csr") => binary(),
        required("SigningAlgorithm") => list(any()),
        required("Validity") => validity()
      }
      
  """
  @type issue_certificate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      a_s_n1_subject() :: %{
        "CommonName" => String.t(),
        "Country" => String.t(),
        "CustomAttributes" => list(custom_attribute()()),
        "DistinguishedNameQualifier" => String.t(),
        "GenerationQualifier" => String.t(),
        "GivenName" => String.t(),
        "Initials" => String.t(),
        "Locality" => String.t(),
        "Organization" => String.t(),
        "OrganizationalUnit" => String.t(),
        "Pseudonym" => String.t(),
        "SerialNumber" => String.t(),
        "State" => String.t(),
        "Surname" => String.t(),
        "Title" => String.t()
      }
      
  """
  @type a_s_n1_subject() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      permission_already_exists_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type permission_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_state_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_state_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_certificate_authority_csr_response() :: %{
        "Csr" => String.t()
      }
      
  """
  @type get_certificate_authority_csr_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_arn_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_arn_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_args_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_args_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validity() :: %{
        "Type" => list(any()),
        "Value" => float()
      }
      
  """
  @type validity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_certificate_authority_audit_report_response() :: %{
        "AuditReportId" => String.t(),
        "S3Key" => String.t()
      }
      
  """
  @type create_certificate_authority_audit_report_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      api_passthrough() :: %{
        "Extensions" => extensions(),
        "Subject" => a_s_n1_subject()
      }
      
  """
  @type api_passthrough() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_permission_request() :: %{
        optional("SourceAccount") => String.t(),
        required("CertificateAuthorityArn") => String.t(),
        required("Principal") => String.t()
      }
      
  """
  @type delete_permission_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_policy_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_policy_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t()
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
        "message" => String.t()
      }
      
  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      issue_certificate_response() :: %{
        "CertificateArn" => String.t()
      }
      
  """
  @type issue_certificate_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_information() :: %{
        "CertPolicyId" => String.t(),
        "PolicyQualifiers" => list(policy_qualifier_info()())
      }
      
  """
  @type policy_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_certificate_request() :: %{
        required("CertificateArn") => String.t(),
        required("CertificateAuthorityArn") => String.t()
      }
      
  """
  @type get_certificate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_next_token_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_next_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_certificate_authority_request() :: %{
        required("CertificateAuthorityArn") => String.t()
      }
      
  """
  @type describe_certificate_authority_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      revocation_configuration() :: %{
        "CrlConfiguration" => crl_configuration(),
        "OcspConfiguration" => ocsp_configuration()
      }
      
  """
  @type revocation_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_certificate_authority_response() :: %{
        "CertificateAuthorityArn" => String.t()
      }
      
  """
  @type create_certificate_authority_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      other_name() :: %{
        "TypeId" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type other_name() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      malformed_certificate_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type malformed_certificate_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_certificate_authority_request() :: %{
        required("CertificateAuthorityArn") => String.t()
      }
      
  """
  @type restore_certificate_authority_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_certificate_authority_request() :: %{
        optional("PermanentDeletionTimeInDays") => integer(),
        required("CertificateAuthorityArn") => String.t()
      }
      
  """
  @type delete_certificate_authority_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_method() :: %{
        "AccessMethodType" => list(any()),
        "CustomObjectIdentifier" => String.t()
      }
      
  """
  @type access_method() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_certificate_authority_request() :: %{
        optional("RevocationConfiguration") => revocation_configuration(),
        optional("Status") => list(any()),
        required("CertificateAuthorityArn") => String.t()
      }
      
  """
  @type update_certificate_authority_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ocsp_configuration() :: %{
        "Enabled" => boolean(),
        "OcspCustomCname" => String.t()
      }
      
  """
  @type ocsp_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_permission_request() :: %{
        optional("SourceAccount") => String.t(),
        required("Actions") => list(list(any())()),
        required("CertificateAuthorityArn") => String.t(),
        required("Principal") => String.t()
      }
      
  """
  @type create_permission_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_policy_response() :: %{
        "Policy" => String.t()
      }
      
  """
  @type get_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      request_already_processed_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type request_already_processed_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_certificate_authority_audit_report_request() :: %{
        required("AuditReportResponseFormat") => list(any()),
        required("CertificateAuthorityArn") => String.t(),
        required("S3BucketName") => String.t()
      }
      
  """
  @type create_certificate_authority_audit_report_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_permissions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("CertificateAuthorityArn") => String.t()
      }
      
  """
  @type list_permissions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      malformed_c_s_r_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type malformed_c_s_r_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_description() :: %{
        "AccessLocation" => general_name(),
        "AccessMethod" => access_method()
      }
      
  """
  @type access_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_policy_request() :: %{
        required("ResourceArn") => String.t()
      }
      
  """
  @type delete_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      certificate_mismatch_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type certificate_mismatch_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      extensions() :: %{
        "CertificatePolicies" => list(policy_information()()),
        "CustomExtensions" => list(custom_extension()()),
        "ExtendedKeyUsage" => list(extended_key_usage()()),
        "KeyUsage" => key_usage(),
        "SubjectAlternativeNames" => list(general_name()())
      }
      
  """
  @type extensions() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      general_name() :: %{
        "DirectoryName" => a_s_n1_subject(),
        "DnsName" => String.t(),
        "EdiPartyName" => edi_party_name(),
        "IpAddress" => String.t(),
        "OtherName" => other_name(),
        "RegisteredId" => String.t(),
        "Rfc822Name" => String.t(),
        "UniformResourceIdentifier" => String.t()
      }
      
  """
  @type general_name() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_certificate_authorities_response() :: %{
        "CertificateAuthorities" => list(certificate_authority()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_certificate_authorities_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lockout_prevented_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type lockout_prevented_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_certificate_authority_request() :: %{
        required("CertificateAuthorityArn") => String.t(),
        required("Tags") => list(tag()())
      }
      
  """
  @type untag_certificate_authority_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      concurrent_modification_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type concurrent_modification_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      crl_configuration() :: %{
        "CrlDistributionPointExtensionConfiguration" => crl_distribution_point_extension_configuration(),
        "CustomCname" => String.t(),
        "Enabled" => boolean(),
        "ExpirationInDays" => integer(),
        "S3BucketName" => String.t(),
        "S3ObjectAcl" => list(any())
      }
      
  """
  @type crl_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_certificate_authority_certificate_response() :: %{
        "Certificate" => String.t(),
        "CertificateChain" => String.t()
      }
      
  """
  @type get_certificate_authority_certificate_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_certificate_authority_response() :: %{
        "CertificateAuthority" => certificate_authority()
      }
      
  """
  @type describe_certificate_authority_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_qualifier_info() :: %{
        "PolicyQualifierId" => list(any()),
        "Qualifier" => qualifier()
      }
      
  """
  @type policy_qualifier_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_certificate_authority_request() :: %{
        required("CertificateAuthorityArn") => String.t(),
        required("Tags") => list(tag()())
      }
      
  """
  @type tag_certificate_authority_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_extension() :: %{
        "Critical" => boolean(),
        "ObjectIdentifier" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type custom_extension() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_certificate_authority_csr_request() :: %{
        required("CertificateAuthorityArn") => String.t()
      }
      
  """
  @type get_certificate_authority_csr_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      qualifier() :: %{
        "CpsUri" => String.t()
      }
      
  """
  @type qualifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_policy_request() :: %{
        required("Policy") => String.t(),
        required("ResourceArn") => String.t()
      }
      
  """
  @type put_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      extended_key_usage() :: %{
        "ExtendedKeyUsageObjectIdentifier" => String.t(),
        "ExtendedKeyUsageType" => list(any())
      }
      
  """
  @type extended_key_usage() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("CertificateAuthorityArn") => String.t()
      }
      
  """
  @type list_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_certificate_authority_audit_report_request() :: %{
        required("AuditReportId") => String.t(),
        required("CertificateAuthorityArn") => String.t()
      }
      
  """
  @type describe_certificate_authority_audit_report_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_attribute() :: %{
        "ObjectIdentifier" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type custom_attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_tag_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_tag_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_certificate_response() :: %{
        "Certificate" => String.t(),
        "CertificateChain" => String.t()
      }
      
  """
  @type get_certificate_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      edi_party_name() :: %{
        "NameAssigner" => String.t(),
        "PartyName" => String.t()
      }
      
  """
  @type edi_party_name() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_certificate_authority_certificate_request() :: %{
        optional("CertificateChain") => binary(),
        required("Certificate") => binary(),
        required("CertificateAuthorityArn") => String.t()
      }
      
  """
  @type import_certificate_authority_certificate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      permission() :: %{
        "Actions" => list(list(any())()),
        "CertificateAuthorityArn" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "Policy" => String.t(),
        "Principal" => String.t(),
        "SourceAccount" => String.t()
      }
      
  """
  @type permission() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      key_usage() :: %{
        "CRLSign" => boolean(),
        "DataEncipherment" => boolean(),
        "DecipherOnly" => boolean(),
        "DigitalSignature" => boolean(),
        "EncipherOnly" => boolean(),
        "KeyAgreement" => boolean(),
        "KeyCertSign" => boolean(),
        "KeyEncipherment" => boolean(),
        "NonRepudiation" => boolean()
      }
      
  """
  @type key_usage() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_tags_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type too_many_tags_exception() :: %{String.t() => any()}

  @type create_certificate_authority_errors() ::
          invalid_tag_exception()
          | limit_exceeded_exception()
          | invalid_policy_exception()
          | invalid_args_exception()

  @type create_certificate_authority_audit_report_errors() ::
          resource_not_found_exception()
          | invalid_args_exception()
          | invalid_arn_exception()
          | invalid_state_exception()
          | request_in_progress_exception()
          | request_failed_exception()

  @type create_permission_errors() ::
          limit_exceeded_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | invalid_state_exception()
          | permission_already_exists_exception()
          | request_failed_exception()

  @type delete_certificate_authority_errors() ::
          concurrent_modification_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | invalid_state_exception()

  @type delete_permission_errors() ::
          resource_not_found_exception()
          | invalid_arn_exception()
          | invalid_state_exception()
          | request_failed_exception()

  @type delete_policy_errors() ::
          concurrent_modification_exception()
          | lockout_prevented_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | invalid_state_exception()
          | request_failed_exception()

  @type describe_certificate_authority_errors() ::
          resource_not_found_exception() | invalid_arn_exception()

  @type describe_certificate_authority_audit_report_errors() ::
          resource_not_found_exception() | invalid_args_exception() | invalid_arn_exception()

  @type get_certificate_errors() ::
          resource_not_found_exception()
          | invalid_arn_exception()
          | invalid_state_exception()
          | request_in_progress_exception()
          | request_failed_exception()

  @type get_certificate_authority_certificate_errors() ::
          resource_not_found_exception() | invalid_arn_exception() | invalid_state_exception()

  @type get_certificate_authority_csr_errors() ::
          resource_not_found_exception()
          | invalid_arn_exception()
          | invalid_state_exception()
          | request_in_progress_exception()
          | request_failed_exception()

  @type get_policy_errors() ::
          resource_not_found_exception()
          | invalid_arn_exception()
          | invalid_state_exception()
          | request_failed_exception()

  @type import_certificate_authority_certificate_errors() ::
          concurrent_modification_exception()
          | certificate_mismatch_exception()
          | malformed_certificate_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | invalid_state_exception()
          | request_in_progress_exception()
          | request_failed_exception()

  @type issue_certificate_errors() ::
          limit_exceeded_exception()
          | malformed_c_s_r_exception()
          | resource_not_found_exception()
          | invalid_args_exception()
          | invalid_arn_exception()
          | invalid_state_exception()

  @type list_certificate_authorities_errors() :: invalid_next_token_exception()

  @type list_permissions_errors() ::
          invalid_next_token_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | invalid_state_exception()
          | request_failed_exception()

  @type list_tags_errors() ::
          resource_not_found_exception() | invalid_arn_exception() | invalid_state_exception()

  @type put_policy_errors() ::
          concurrent_modification_exception()
          | lockout_prevented_exception()
          | resource_not_found_exception()
          | invalid_policy_exception()
          | invalid_arn_exception()
          | invalid_state_exception()
          | request_failed_exception()

  @type restore_certificate_authority_errors() ::
          resource_not_found_exception() | invalid_arn_exception() | invalid_state_exception()

  @type revoke_certificate_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | request_already_processed_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | invalid_state_exception()
          | request_in_progress_exception()
          | request_failed_exception()

  @type tag_certificate_authority_errors() ::
          too_many_tags_exception()
          | invalid_tag_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | invalid_state_exception()

  @type untag_certificate_authority_errors() ::
          invalid_tag_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | invalid_state_exception()

  @type update_certificate_authority_errors() ::
          concurrent_modification_exception()
          | resource_not_found_exception()
          | invalid_policy_exception()
          | invalid_args_exception()
          | invalid_arn_exception()
          | invalid_state_exception()

  def metadata do
    %{
      api_version: "2017-08-22",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "acm-pca",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "ACM PCA",
      signature_version: "v4",
      signing_name: "acm-pca",
      target_prefix: "ACMPrivateCA"
    }
  end

  @doc """
  Creates a root or subordinate private certificate authority (CA). You must
  specify the CA configuration, an optional configuration for Online Certificate
  Status Protocol (OCSP) and/or a certificate revocation list (CRL), the CA
  type, and an optional idempotency token to avoid accidental creation of
  multiple CAs. The CA configuration specifies the name of the algorithm and key
  size to be used to create the CA private key, the type of signing algorithm
  that the CA uses, and X.500 subject information. The OCSP configuration can
  optionally specify a custom URL for the OCSP responder. The CRL configuration
  specifies the CRL expiration period in days (the validity period of the CRL),
  the Amazon S3 bucket that will contain the CRL, and a CNAME alias for the S3
  bucket that is included in certificates issued by the CA. If successful, this
  action returns the Amazon Resource Name (ARN) of the CA.
  """
  @spec create_certificate_authority(
          AWS.Client.t(),
          create_certificate_authority_request(),
          Keyword.t()
        ) ::
          {:ok, create_certificate_authority_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_certificate_authority_errors()}
  def create_certificate_authority(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateCertificateAuthority", input, options)
  end

  @doc """
  Creates an audit report that lists every time that your CA private key is used.
  The report is saved in the Amazon S3 bucket that you specify on input. The
  [IssueCertificate](https://docs.aws.amazon.com/privateca/latest/APIReference/API_IssueCertificate.html)
  and
  [RevokeCertificate](https://docs.aws.amazon.com/privateca/latest/APIReference/API_RevokeCertificate.html)
  actions use the private key. Both Amazon Web Services Private CA and the IAM
  principal must have permission to write to the S3 bucket that you specify. If
  the IAM principal making the call does not have permission to write to the
  bucket, then an exception is thrown. For more information, see [Access
  policies for CRLs in Amazon
  S3](https://docs.aws.amazon.com/privateca/latest/userguide/crl-planning.html#s3-policies).
  Amazon Web Services Private CA assets that are stored in Amazon S3 can be
  protected with encryption. For more information, see [Encrypting Your Audit
  Reports](https://docs.aws.amazon.com/privateca/latest/userguide/PcaAuditReport.html#audit-report-encryption).
  """
  @spec create_certificate_authority_audit_report(
          AWS.Client.t(),
          create_certificate_authority_audit_report_request(),
          Keyword.t()
        ) ::
          {:ok, create_certificate_authority_audit_report_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_certificate_authority_audit_report_errors()}
  def create_certificate_authority_audit_report(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateCertificateAuthorityAuditReport", input, options)
  end

  @doc """
  Grants one or more permissions on a private CA to the Certificate Manager (ACM)
  service principal (`acm.amazonaws.com`). These permissions allow ACM to issue
  and renew ACM certificates that reside in the same Amazon Web Services account
  as the CA. You can list current permissions with the
  [ListPermissions](https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListPermissions.html)
  action and revoke them with the
  [DeletePermission](https://docs.aws.amazon.com/privateca/latest/APIReference/API_DeletePermission.html)
  action. **About Permissions**
  """
  @spec create_permission(AWS.Client.t(), create_permission_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_permission_errors()}
  def create_permission(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreatePermission", input, options)
  end

  @doc """
  Deletes a private certificate authority (CA). You must provide the Amazon
  Resource Name (ARN) of the private CA that you want to delete. You can find
  the ARN by calling the
  [ListCertificateAuthorities](https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListCertificateAuthorities.html)
  action. Deleting a CA will invalidate other CAs and certificates below it in
  your CA hierarchy. Before you can delete a CA that you have created and
  activated, you must disable it. To do this, call the
  [UpdateCertificateAuthority](https://docs.aws.amazon.com/privateca/latest/APIReference/API_UpdateCertificateAuthority.html)
  action and set the **CertificateAuthorityStatus** parameter to `DISABLED`.
  """
  @spec delete_certificate_authority(
          AWS.Client.t(),
          delete_certificate_authority_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_certificate_authority_errors()}
  def delete_certificate_authority(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteCertificateAuthority", input, options)
  end

  @doc """
  Revokes permissions on a private CA granted to the Certificate Manager (ACM)
  service principal (acm.amazonaws.com). These permissions allow ACM to issue
  and renew ACM certificates that reside in the same Amazon Web Services account
  as the CA. If you revoke these permissions, ACM will no longer renew the
  affected certificates automatically.
  """
  @spec delete_permission(AWS.Client.t(), delete_permission_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_permission_errors()}
  def delete_permission(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeletePermission", input, options)
  end

  @doc """
  Deletes the resource-based policy attached to a private CA. Deletion will remove
  any access that the policy has granted. If there is no policy attached to the
  private CA, this action will return successful. If you delete a policy that
  was applied through Amazon Web Services Resource Access Manager (RAM), the CA
  will be removed from all shares in which it was included.
  """
  @spec delete_policy(AWS.Client.t(), delete_policy_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_policy_errors()}
  def delete_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeletePolicy", input, options)
  end

  @doc """
  Lists information about your private certificate authority (CA) or one that has
  been shared with you. You specify the private CA on input by its ARN (Amazon
  Resource Name). The output contains the status of your CA. This can be any of
  the following:
  """
  @spec describe_certificate_authority(
          AWS.Client.t(),
          describe_certificate_authority_request(),
          Keyword.t()
        ) ::
          {:ok, describe_certificate_authority_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_certificate_authority_errors()}
  def describe_certificate_authority(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeCertificateAuthority", input, options)
  end

  @doc """
  Lists information about a specific audit report created by calling the
  [CreateCertificateAuthorityAuditReport](https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthorityAuditReport.html)
  action. Audit information is created every time the certificate authority (CA)
  private key is used. The private key is used when you call the
  [IssueCertificate](https://docs.aws.amazon.com/privateca/latest/APIReference/API_IssueCertificate.html)
  action or the
  [RevokeCertificate](https://docs.aws.amazon.com/privateca/latest/APIReference/API_RevokeCertificate.html)
  action.
  """
  @spec describe_certificate_authority_audit_report(
          AWS.Client.t(),
          describe_certificate_authority_audit_report_request(),
          Keyword.t()
        ) ::
          {:ok, describe_certificate_authority_audit_report_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_certificate_authority_audit_report_errors()}
  def describe_certificate_authority_audit_report(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeCertificateAuthorityAuditReport", input, options)
  end

  @doc """
  Retrieves a certificate from your private CA or one that has been shared with
  you. The ARN of the certificate is returned when you call the
  [IssueCertificate](https://docs.aws.amazon.com/privateca/latest/APIReference/API_IssueCertificate.html)
  action. You must specify both the ARN of your private CA and the ARN of the
  issued certificate when calling the **GetCertificate** action. You can
  retrieve the certificate if it is in the **ISSUED** state. You can call the
  [CreateCertificateAuthorityAuditReport](https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthorityAuditReport.html)
  action to create a report that contains information about all of the
  certificates issued and revoked by your private CA.
  """
  @spec get_certificate(AWS.Client.t(), get_certificate_request(), Keyword.t()) ::
          {:ok, get_certificate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_certificate_errors()}
  def get_certificate(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetCertificate", input, options)
  end

  @doc """
  Retrieves the certificate and certificate chain for your private certificate
  authority (CA) or one that has been shared with you. Both the certificate and
  the chain are base64 PEM-encoded. The chain does not include the CA
  certificate. Each certificate in the chain signs the one before it.
  """
  @spec get_certificate_authority_certificate(
          AWS.Client.t(),
          get_certificate_authority_certificate_request(),
          Keyword.t()
        ) ::
          {:ok, get_certificate_authority_certificate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_certificate_authority_certificate_errors()}
  def get_certificate_authority_certificate(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetCertificateAuthorityCertificate", input, options)
  end

  @doc """
  Retrieves the certificate signing request (CSR) for your private certificate
  authority (CA). The CSR is created when you call the
  [CreateCertificateAuthority](https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthority.html)
  action. Sign the CSR with your Amazon Web Services Private CA-hosted or
  on-premises root or subordinate CA. Then import the signed certificate back
  into Amazon Web Services Private CA by calling the
  [ImportCertificateAuthorityCertificate](https://docs.aws.amazon.com/privateca/latest/APIReference/API_ImportCertificateAuthorityCertificate.html)
  action. The CSR is returned as a base64 PEM-encoded string.
  """
  @spec get_certificate_authority_csr(
          AWS.Client.t(),
          get_certificate_authority_csr_request(),
          Keyword.t()
        ) ::
          {:ok, get_certificate_authority_csr_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_certificate_authority_csr_errors()}
  def get_certificate_authority_csr(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetCertificateAuthorityCsr", input, options)
  end

  @doc """
  Retrieves the resource-based policy attached to a private CA. If either the
  private CA resource or the policy cannot be found, this action returns a
  `ResourceNotFoundException`. The policy can be attached or updated with
  [PutPolicy](https://docs.aws.amazon.com/privateca/latest/APIReference/API_PutPolicy.html)
  and removed with
  [DeletePolicy](https://docs.aws.amazon.com/privateca/latest/APIReference/API_DeletePolicy.html).
  **About Policies**
  """
  @spec get_policy(AWS.Client.t(), get_policy_request(), Keyword.t()) ::
          {:ok, get_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_policy_errors()}
  def get_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetPolicy", input, options)
  end

  @doc """
  Imports a signed private CA certificate into Amazon Web Services Private CA.
  This action is used when you are using a chain of trust whose root is located
  outside Amazon Web Services Private CA. Before you can call this action, the
  following preparations must in place:
  """
  @spec import_certificate_authority_certificate(
          AWS.Client.t(),
          import_certificate_authority_certificate_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, import_certificate_authority_certificate_errors()}
  def import_certificate_authority_certificate(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ImportCertificateAuthorityCertificate", input, options)
  end

  @doc """
  Uses your private certificate authority (CA), or one that has been shared with
  you, to issue a client certificate. This action returns the Amazon Resource
  Name (ARN) of the certificate. You can retrieve the certificate by calling the
  [GetCertificate](https://docs.aws.amazon.com/privateca/latest/APIReference/API_GetCertificate.html)
  action and specifying the ARN.
  """
  @spec issue_certificate(AWS.Client.t(), issue_certificate_request(), Keyword.t()) ::
          {:ok, issue_certificate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, issue_certificate_errors()}
  def issue_certificate(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "IssueCertificate", input, options)
  end

  @doc """
  Lists the private certificate authorities that you created by using the
  [CreateCertificateAuthority](https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthority.html)
  action.
  """
  @spec list_certificate_authorities(
          AWS.Client.t(),
          list_certificate_authorities_request(),
          Keyword.t()
        ) ::
          {:ok, list_certificate_authorities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_certificate_authorities_errors()}
  def list_certificate_authorities(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListCertificateAuthorities", input, options)
  end

  @doc """
  List all permissions on a private CA, if any, granted to the Certificate Manager
  (ACM) service principal (acm.amazonaws.com). These permissions allow ACM to
  issue and renew ACM certificates that reside in the same Amazon Web Services
  account as the CA.
  """
  @spec list_permissions(AWS.Client.t(), list_permissions_request(), Keyword.t()) ::
          {:ok, list_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_permissions_errors()}
  def list_permissions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListPermissions", input, options)
  end

  @doc """
  Lists the tags, if any, that are associated with your private CA or one that has
  been shared with you. Tags are labels that you can use to identify and
  organize your CAs. Each tag consists of a key and an optional value. Call the
  [TagCertificateAuthority](https://docs.aws.amazon.com/privateca/latest/APIReference/API_TagCertificateAuthority.html)
  action to add one or more tags to your CA. Call the
  [UntagCertificateAuthority](https://docs.aws.amazon.com/privateca/latest/APIReference/API_UntagCertificateAuthority.html)
  action to remove tags.
  """
  @spec list_tags(AWS.Client.t(), list_tags_request(), Keyword.t()) ::
          {:ok, list_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_errors()}
  def list_tags(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTags", input, options)
  end

  @doc """
  Attaches a resource-based policy to a private CA. A policy can also be applied
  by sharing a private CA through Amazon Web Services Resource Access Manager
  (RAM). For more information, see [Attach a Policy for Cross-Account
  Access](https://docs.aws.amazon.com/privateca/latest/userguide/pca-ram.html).
  The policy can be displayed with
  [GetPolicy](https://docs.aws.amazon.com/privateca/latest/APIReference/API_GetPolicy.html)
  and removed with
  [DeletePolicy](https://docs.aws.amazon.com/privateca/latest/APIReference/API_DeletePolicy.html).
  **About Policies**
  """
  @spec put_policy(AWS.Client.t(), put_policy_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_policy_errors()}
  def put_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutPolicy", input, options)
  end

  @doc """
  Restores a certificate authority (CA) that is in the `DELETED` state. You can
  restore a CA during the period that you defined in the
  **PermanentDeletionTimeInDays** parameter of the
  [DeleteCertificateAuthority](https://docs.aws.amazon.com/privateca/latest/APIReference/API_DeleteCertificateAuthority.html)
  action. Currently, you can specify 7 to 30 days. If you did not specify a
  **PermanentDeletionTimeInDays** value, by default you can restore the CA at
  any time in a 30 day period. You can check the time remaining in the
  restoration period of a private CA in the `DELETED` state by calling the
  [DescribeCertificateAuthority](https://docs.aws.amazon.com/privateca/latest/APIReference/API_DescribeCertificateAuthority.html)
  or
  [ListCertificateAuthorities](https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListCertificateAuthorities.html)
  actions. The status of a restored CA is set to its pre-deletion status when
  the **RestoreCertificateAuthority** action returns. To change its status to
  `ACTIVE`, call the
  [UpdateCertificateAuthority](https://docs.aws.amazon.com/privateca/latest/APIReference/API_UpdateCertificateAuthority.html)
  action. If the private CA was in the `PENDING_CERTIFICATE` state at deletion,
  you must use the
  [ImportCertificateAuthorityCertificate](https://docs.aws.amazon.com/privateca/latest/APIReference/API_ImportCertificateAuthorityCertificate.html)
  action to import a certificate authority into the private CA before it can be
  activated. You cannot restore a CA after the restoration period has ended.
  """
  @spec restore_certificate_authority(
          AWS.Client.t(),
          restore_certificate_authority_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, restore_certificate_authority_errors()}
  def restore_certificate_authority(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RestoreCertificateAuthority", input, options)
  end

  @doc """
  Revokes a certificate that was issued inside Amazon Web Services Private CA. If
  you enable a certificate revocation list (CRL) when you create or update your
  private CA, information about the revoked certificates will be included in the
  CRL. Amazon Web Services Private CA writes the CRL to an S3 bucket that you
  specify. A CRL is typically updated approximately 30 minutes after a
  certificate is revoked. If for any reason the CRL update fails, Amazon Web
  Services Private CA attempts makes further attempts every 15 minutes. With
  Amazon CloudWatch, you can create alarms for the metrics `CRLGenerated` and
  `MisconfiguredCRLBucket`. For more information, see [Supported CloudWatch
  Metrics](https://docs.aws.amazon.com/privateca/latest/userguide/PcaCloudWatch.html).
  Both Amazon Web Services Private CA and the IAM principal must have permission
  to write to the S3 bucket that you specify. If the IAM principal making the
  call does not have permission to write to the bucket, then an exception is
  thrown. For more information, see [Access policies for CRLs in Amazon
  S3](https://docs.aws.amazon.com/privateca/latest/userguide/crl-planning.html#s3-policies).
  Amazon Web Services Private CA also writes revocation information to the audit
  report. For more information, see
  [CreateCertificateAuthorityAuditReport](https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthorityAuditReport.html).
  """
  @spec revoke_certificate(AWS.Client.t(), revoke_certificate_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, revoke_certificate_errors()}
  def revoke_certificate(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RevokeCertificate", input, options)
  end

  @doc """
  Adds one or more tags to your private CA. Tags are labels that you can use to
  identify and organize your Amazon Web Services resources. Each tag consists of
  a key and an optional value. You specify the private CA on input by its Amazon
  Resource Name (ARN). You specify the tag by using a key-value pair. You can
  apply a tag to just one private CA if you want to identify a specific
  characteristic of that CA, or you can apply the same tag to multiple private
  CAs if you want to filter for a common relationship among those CAs. To remove
  one or more tags, use the
  [UntagCertificateAuthority](https://docs.aws.amazon.com/privateca/latest/APIReference/API_UntagCertificateAuthority.html)
  action. Call the
  [ListTags](https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListTags.html)
  action to see what tags are associated with your CA. To attach tags to a
  private CA during the creation procedure, a CA administrator must first
  associate an inline IAM policy with the `CreateCertificateAuthority` action
  and explicitly allow tagging. For more information, see [Attaching tags to a
  CA at the time of
  creation](https://docs.aws.amazon.com/privateca/latest/userguide/auth-InlinePolicies.html#policy-tag-ca).
  """
  @spec tag_certificate_authority(
          AWS.Client.t(),
          tag_certificate_authority_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_certificate_authority_errors()}
  def tag_certificate_authority(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagCertificateAuthority", input, options)
  end

  @doc """
  Remove one or more tags from your private CA. A tag consists of a key-value
  pair. If you do not specify the value portion of the tag when calling this
  action, the tag will be removed regardless of value. If you specify a value,
  the tag is removed only if it is associated with the specified value. To add
  tags to a private CA, use the
  [TagCertificateAuthority](https://docs.aws.amazon.com/privateca/latest/APIReference/API_TagCertificateAuthority.html).
  Call the
  [ListTags](https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListTags.html)
  action to see what tags are associated with your CA.
  """
  @spec untag_certificate_authority(
          AWS.Client.t(),
          untag_certificate_authority_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_certificate_authority_errors()}
  def untag_certificate_authority(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagCertificateAuthority", input, options)
  end

  @doc """
  Updates the status or configuration of a private certificate authority (CA).
  Your private CA must be in the `ACTIVE` or `DISABLED` state before you can
  update it. You can disable a private CA that is in the `ACTIVE` state or make
  a CA that is in the `DISABLED` state active again.
  """
  @spec update_certificate_authority(
          AWS.Client.t(),
          update_certificate_authority_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_certificate_authority_errors()}
  def update_certificate_authority(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateCertificateAuthority", input, options)
  end
end
