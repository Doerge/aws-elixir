# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Signer do
  @moduledoc """
  AWS Signer is a fully managed code-signing service to help you ensure the trust
  and integrity of your code. Signer supports the following applications:
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      cancel_signing_profile_request() :: %{}
      
  """
  @type cancel_signing_profile_request() :: %{}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_profile_permission_response() :: %{
        "revisionId" => String.t()
      }
      
  """
  @type remove_profile_permission_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_source() :: %{
        "bucketName" => String.t(),
        "key" => String.t(),
        "version" => String.t()
      }
      
  """
  @type s3_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      signing_platform_overrides() :: %{
        "signingConfiguration" => signing_configuration_overrides(),
        "signingImageFormat" => list(any())
      }
      
  """
  @type signing_platform_overrides() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      signing_configuration_overrides() :: %{
        "encryptionAlgorithm" => list(any()),
        "hashAlgorithm" => list(any())
      }
      
  """
  @type signing_configuration_overrides() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_signing_job_request() :: %{
        optional("profileOwner") => String.t(),
        required("clientRequestToken") => String.t(),
        required("destination") => destination(),
        required("profileName") => String.t(),
        required("source") => source()
      }
      
  """
  @type start_signing_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      signing_platform() :: %{
        "category" => list(any()),
        "displayName" => String.t(),
        "maxSizeInMB" => integer(),
        "partner" => String.t(),
        "platformId" => String.t(),
        "revocationSupported" => boolean(),
        "signingConfiguration" => signing_configuration(),
        "signingImageFormat" => signing_image_format(),
        "target" => String.t()
      }
      
  """
  @type signing_platform() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      signing_image_format() :: %{
        "defaultFormat" => list(any()),
        "supportedFormats" => list(list(any())())
      }
      
  """
  @type signing_image_format() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_profile_permission_request() :: %{
        required("revisionId") => String.t()
      }
      
  """
  @type remove_profile_permission_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      signing_profile() :: %{
        "arn" => String.t(),
        "platformDisplayName" => String.t(),
        "platformId" => String.t(),
        "profileName" => String.t(),
        "profileVersion" => String.t(),
        "profileVersionArn" => String.t(),
        "signatureValidityPeriod" => signature_validity_period(),
        "signingMaterial" => signing_material(),
        "signingParameters" => map(),
        "status" => list(any()),
        "tags" => map()
      }
      
  """
  @type signing_profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_signing_jobs_response() :: %{
        "jobs" => list(signing_job()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_signing_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_profile_permission_request() :: %{
        optional("profileVersion") => String.t(),
        optional("revisionId") => String.t(),
        required("action") => String.t(),
        required("principal") => String.t(),
        required("statementId") => String.t()
      }
      
  """
  @type add_profile_permission_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_service_error_exception() :: %{
        "code" => String.t(),
        "message" => String.t()
      }
      
  """
  @type internal_service_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_requests_exception() :: %{
        "code" => String.t(),
        "message" => String.t()
      }
      
  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_signing_profile_request() :: %{
        optional("overrides") => signing_platform_overrides(),
        optional("signatureValidityPeriod") => signature_validity_period(),
        optional("signingMaterial") => signing_material(),
        optional("signingParameters") => map(),
        optional("tags") => map(),
        required("platformId") => String.t()
      }
      
  """
  @type put_signing_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_signing_platform_request() :: %{}
      
  """
  @type get_signing_platform_request() :: %{}

  @typedoc """

  ## Example:
      
      signing_configuration() :: %{
        "encryptionAlgorithmOptions" => encryption_algorithm_options(),
        "hashAlgorithmOptions" => hash_algorithm_options()
      }
      
  """
  @type signing_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_signing_profile_request() :: %{
        optional("profileOwner") => String.t()
      }
      
  """
  @type get_signing_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      signature_validity_period() :: %{
        "type" => list(any()),
        "value" => integer()
      }
      
  """
  @type signature_validity_period() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      signing_job_revocation_record() :: %{
        "reason" => String.t(),
        "revokedAt" => non_neg_integer(),
        "revokedBy" => String.t()
      }
      
  """
  @type signing_job_revocation_record() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_signing_job_request() :: %{}
      
  """
  @type describe_signing_job_request() :: %{}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "code" => String.t(),
        "message" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "code" => String.t(),
        "message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_signing_profile_response() :: %{
        "arn" => String.t(),
        "profileVersion" => String.t(),
        "profileVersionArn" => String.t()
      }
      
  """
  @type put_signing_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_signing_platform_response() :: %{
        "category" => list(any()),
        "displayName" => String.t(),
        "maxSizeInMB" => integer(),
        "partner" => String.t(),
        "platformId" => String.t(),
        "revocationSupported" => boolean(),
        "signingConfiguration" => signing_configuration(),
        "signingImageFormat" => signing_image_format(),
        "target" => String.t()
      }
      
  """
  @type get_signing_platform_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_revocation_status_response() :: %{
        "revokedEntities" => list(String.t()())
      }
      
  """
  @type get_revocation_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_signing_job_response() :: %{
        "completedAt" => non_neg_integer(),
        "createdAt" => non_neg_integer(),
        "jobId" => String.t(),
        "jobInvoker" => String.t(),
        "jobOwner" => String.t(),
        "overrides" => signing_platform_overrides(),
        "platformDisplayName" => String.t(),
        "platformId" => String.t(),
        "profileName" => String.t(),
        "profileVersion" => String.t(),
        "requestedBy" => String.t(),
        "revocationRecord" => signing_job_revocation_record(),
        "signatureExpiresAt" => non_neg_integer(),
        "signedObject" => signed_object(),
        "signingMaterial" => signing_material(),
        "signingParameters" => map(),
        "source" => source(),
        "status" => list(any()),
        "statusReason" => String.t()
      }
      
  """
  @type describe_signing_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      not_found_exception() :: %{
        "code" => String.t(),
        "message" => String.t()
      }
      
  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "tags" => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_revocation_status_request() :: %{
        required("certificateHashes") => list(String.t()()),
        required("jobArn") => String.t(),
        required("platformId") => String.t(),
        required("profileVersionArn") => String.t(),
        required("signatureTimestamp") => non_neg_integer()
      }
      
  """
  @type get_revocation_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_profile_permissions_response() :: %{
        "nextToken" => String.t(),
        "permissions" => list(permission()()),
        "policySizeBytes" => integer(),
        "revisionId" => String.t()
      }
      
  """
  @type list_profile_permissions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_destination() :: %{
        "bucketName" => String.t(),
        "prefix" => String.t()
      }
      
  """
  @type s3_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_signing_jobs_request() :: %{
        optional("isRevoked") => boolean(),
        optional("jobInvoker") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("platformId") => String.t(),
        optional("requestedBy") => String.t(),
        optional("signatureExpiresAfter") => non_neg_integer(),
        optional("signatureExpiresBefore") => non_neg_integer(),
        optional("status") => list(any())
      }
      
  """
  @type list_signing_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      source() :: %{
        "s3" => s3_source()
      }
      
  """
  @type source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      signed_object() :: %{
        "s3" => s3_signed_object()
      }
      
  """
  @type signed_object() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      signing_material() :: %{
        "certificateArn" => String.t()
      }
      
  """
  @type signing_material() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "code" => String.t(),
        "message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_signing_job_response() :: %{
        "jobId" => String.t(),
        "jobOwner" => String.t()
      }
      
  """
  @type start_signing_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      list_signing_profiles_request() :: %{
        optional("includeCanceled") => boolean(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("platformId") => String.t(),
        optional("statuses") => list(list(any())())
      }
      
  """
  @type list_signing_profiles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      signing_profile_revocation_record() :: %{
        "revocationEffectiveFrom" => non_neg_integer(),
        "revokedAt" => non_neg_integer(),
        "revokedBy" => String.t()
      }
      
  """
  @type signing_profile_revocation_record() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "code" => String.t(),
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
      
      destination() :: %{
        "s3" => s3_destination()
      }
      
  """
  @type destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_limit_exceeded_exception() :: %{
        "code" => String.t(),
        "message" => String.t()
      }
      
  """
  @type service_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "code" => String.t(),
        "message" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      signing_job() :: %{
        "createdAt" => non_neg_integer(),
        "isRevoked" => boolean(),
        "jobId" => String.t(),
        "jobInvoker" => String.t(),
        "jobOwner" => String.t(),
        "platformDisplayName" => String.t(),
        "platformId" => String.t(),
        "profileName" => String.t(),
        "profileVersion" => String.t(),
        "signatureExpiresAt" => non_neg_integer(),
        "signedObject" => signed_object(),
        "signingMaterial" => signing_material(),
        "source" => source(),
        "status" => list(any())
      }
      
  """
  @type signing_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hash_algorithm_options() :: %{
        "allowedValues" => list(list(any())()),
        "defaultValue" => list(any())
      }
      
  """
  @type hash_algorithm_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      revoke_signing_profile_request() :: %{
        required("effectiveTime") => non_neg_integer(),
        required("profileVersion") => String.t(),
        required("reason") => String.t()
      }
      
  """
  @type revoke_signing_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bad_request_exception() :: %{
        "code" => String.t(),
        "message" => String.t()
      }
      
  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_signed_object() :: %{
        "bucketName" => String.t(),
        "key" => String.t()
      }
      
  """
  @type s3_signed_object() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sign_payload_request() :: %{
        optional("profileOwner") => String.t(),
        required("payload") => binary(),
        required("payloadFormat") => String.t(),
        required("profileName") => String.t()
      }
      
  """
  @type sign_payload_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_signing_profile_response() :: %{
        "arn" => String.t(),
        "overrides" => signing_platform_overrides(),
        "platformDisplayName" => String.t(),
        "platformId" => String.t(),
        "profileName" => String.t(),
        "profileVersion" => String.t(),
        "profileVersionArn" => String.t(),
        "revocationRecord" => signing_profile_revocation_record(),
        "signatureValidityPeriod" => signature_validity_period(),
        "signingMaterial" => signing_material(),
        "signingParameters" => map(),
        "status" => list(any()),
        "statusReason" => String.t(),
        "tags" => map()
      }
      
  """
  @type get_signing_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_signing_profiles_response() :: %{
        "nextToken" => String.t(),
        "profiles" => list(signing_profile()())
      }
      
  """
  @type list_signing_profiles_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sign_payload_response() :: %{
        "jobId" => String.t(),
        "jobOwner" => String.t(),
        "metadata" => map(),
        "signature" => binary()
      }
      
  """
  @type sign_payload_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_signing_platforms_request() :: %{
        optional("category") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("partner") => String.t(),
        optional("target") => String.t()
      }
      
  """
  @type list_signing_platforms_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      revoke_signature_request() :: %{
        optional("jobOwner") => String.t(),
        required("reason") => String.t()
      }
      
  """
  @type revoke_signature_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_profile_permission_response() :: %{
        "revisionId" => String.t()
      }
      
  """
  @type add_profile_permission_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_signing_platforms_response() :: %{
        "nextToken" => String.t(),
        "platforms" => list(signing_platform()())
      }
      
  """
  @type list_signing_platforms_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      permission() :: %{
        "action" => String.t(),
        "principal" => String.t(),
        "profileVersion" => String.t(),
        "statementId" => String.t()
      }
      
  """
  @type permission() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      encryption_algorithm_options() :: %{
        "allowedValues" => list(list(any())()),
        "defaultValue" => list(any())
      }
      
  """
  @type encryption_algorithm_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_profile_permissions_request() :: %{
        optional("nextToken") => String.t()
      }
      
  """
  @type list_profile_permissions_request() :: %{String.t() => any()}

  @type add_profile_permission_errors() ::
          service_limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | internal_service_error_exception()

  @type cancel_signing_profile_errors() ::
          access_denied_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | internal_service_error_exception()

  @type describe_signing_job_errors() ::
          access_denied_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | internal_service_error_exception()

  @type get_revocation_status_errors() ::
          validation_exception()
          | access_denied_exception()
          | too_many_requests_exception()
          | internal_service_error_exception()

  @type get_signing_platform_errors() ::
          access_denied_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | internal_service_error_exception()

  @type get_signing_profile_errors() ::
          access_denied_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | internal_service_error_exception()

  @type list_profile_permissions_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | internal_service_error_exception()

  @type list_signing_jobs_errors() ::
          validation_exception()
          | access_denied_exception()
          | too_many_requests_exception()
          | internal_service_error_exception()

  @type list_signing_platforms_errors() ::
          validation_exception()
          | access_denied_exception()
          | too_many_requests_exception()
          | internal_service_error_exception()

  @type list_signing_profiles_errors() ::
          access_denied_exception()
          | too_many_requests_exception()
          | internal_service_error_exception()

  @type list_tags_for_resource_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | internal_service_error_exception()

  @type put_signing_profile_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | internal_service_error_exception()

  @type remove_profile_permission_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | internal_service_error_exception()

  @type revoke_signature_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | internal_service_error_exception()

  @type revoke_signing_profile_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | internal_service_error_exception()

  @type sign_payload_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | internal_service_error_exception()

  @type start_signing_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | internal_service_error_exception()

  @type tag_resource_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | internal_service_error_exception()

  @type untag_resource_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | internal_service_error_exception()

  def metadata do
    %{
      api_version: "2017-08-25",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "signer",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "signer",
      signature_version: "v4",
      signing_name: "signer",
      target_prefix: nil
    }
  end

  @doc """
  Adds cross-account permissions to a signing profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=signer%20AddProfilePermission&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:profile_name` (`t:string`) The human-readable name of the signing profile.

  ## Optional parameters:
  """

  @spec add_profile_permission(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, add_profile_permission_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, add_profile_permission_errors()}

  def add_profile_permission(%Client{} = client, profile_name, options \\ []) do
    url_path = "/signing-profiles/#{AWS.Util.encode_uri(profile_name)}/permissions"

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
  Changes the state of an `ACTIVE` signing profile to `CANCELED`. A canceled
  profile is still viewable with the `ListSigningProfiles` operation, but it
  cannot perform new signing jobs, and is deleted two years after cancelation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=signer%20CancelSigningProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:profile_name` (`t:string`) The name of the signing profile to be canceled.

  ## Optional parameters:
  """

  @spec cancel_signing_profile(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_signing_profile_errors()}

  def cancel_signing_profile(%Client{} = client, profile_name, options \\ []) do
    url_path = "/signing-profiles/#{AWS.Util.encode_uri(profile_name)}"

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
  Returns information about a specific code signing job. You specify the job by
  using the `jobId` value that is returned by the `StartSigningJob` operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=signer%20DescribeSigningJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:job_id` (`t:string`) The ID of the signing job on input.

  ## Optional parameters:
  """

  @spec describe_signing_job(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_signing_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_signing_job_errors()}

  def describe_signing_job(%Client{} = client, job_id, options \\ []) do
    url_path = "/signing-jobs/#{AWS.Util.encode_uri(job_id)}"

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
  Retrieves the revocation status of one or more of the signing profile, signing
  job, and signing certificate.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=signer%20GetRevocationStatus&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:certificate_hashes` (`t:list[com.amazonaws.signer#String]`) A list of
  composite signed hashes that identify certificates.
  * `:job_arn` (`t:string`) The ARN of a signing job.
  * `:platform_id` (`t:string`) The ID of a signing platform.
  * `:profile_version_arn` (`t:string`) The version of a signing profile.
  * `:signature_timestamp` (`t:timestamp`) The timestamp of the signature that
  validates the profile or job.

  ## Optional parameters:
  """

  @spec get_revocation_status(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, get_revocation_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_revocation_status_errors()}

  def get_revocation_status(
        %Client{} = client,
        certificate_hashes,
        job_arn,
        platform_id,
        profile_version_arn,
        signature_timestamp,
        options \\ []
      )
      when is_binary(certificate_hashes) and is_binary(job_arn) and is_binary(platform_id) and
             is_binary(profile_version_arn) and is_binary(signature_timestamp) do
    url_path = "/revocations"

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
      {"certificateHashes", certificate_hashes},
      {"jobArn", job_arn},
      {"platformId", platform_id},
      {"profileVersionArn", profile_version_arn},
      {"signatureTimestamp", signature_timestamp}
    ]

    # Optional query params

    meta =
      metadata() |> Map.put_new(:host_prefix, "verification.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information on a specific signing platform.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=signer%20GetSigningPlatform&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:platform_id` (`t:string`) The ID of the target signing platform.

  ## Optional parameters:
  """

  @spec get_signing_platform(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_signing_platform_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_signing_platform_errors()}

  def get_signing_platform(%Client{} = client, platform_id, options \\ []) do
    url_path = "/signing-platforms/#{AWS.Util.encode_uri(platform_id)}"

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
  Returns information on a specific signing profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=signer%20GetSigningProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:profile_name` (`t:string`) The name of the target signing profile.

  ## Optional parameters:
  * `:profile_owner` (`t:string`) The AWS account ID of the profile owner.
  """

  @spec get_signing_profile(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_signing_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_signing_profile_errors()}

  def get_signing_profile(%Client{} = client, profile_name, options \\ []) do
    url_path = "/signing-profiles/#{AWS.Util.encode_uri(profile_name)}"

    # Validate optional parameters
    optional_params = [profile_owner: nil]

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
      if opt_val = Keyword.get(options, :profile_owner) do
        [{"profileOwner", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:profile_owner])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the cross-account permissions associated with a signing profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=signer%20ListProfilePermissions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:profile_name` (`t:string`) Name of the signing profile containing the
  cross-account permissions.

  ## Optional parameters:
  * `:next_token` (`t:string`) String for specifying the next set of paginated
  results.
  """

  @spec list_profile_permissions(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_profile_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_profile_permissions_errors()}

  def list_profile_permissions(%Client{} = client, profile_name, options \\ []) do
    url_path = "/signing-profiles/#{AWS.Util.encode_uri(profile_name)}/permissions"

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
  Lists all your signing jobs. You can use the `maxResults` parameter to limit the
  number of signing jobs that are returned in the response. If additional jobs
  remain to be listed, AWS Signer returns a `nextToken` value. Use this value in
  subsequent calls to `ListSigningJobs` to fetch the remaining values. You can
  continue calling `ListSigningJobs` with your `maxResults` parameter and with
  new values that Signer returns in the `nextToken` parameter until all of your
  signing jobs have been returned.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=signer%20ListSigningJobs&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:is_revoked` (`t:boolean`) Filters results to return only signing jobs with
  revoked signatures.
  * `:job_invoker` (`t:string`) Filters results to return only signing jobs
  initiated by a specified IAM entity.
  * `:max_results` (`t:integer`) Specifies the maximum number of items to return
  in the response. Use this parameter when paginating results. If additional
  items exist beyond the number you specify, the nextToken element is set in
  the response. Use the nextToken value in a subsequent request to retrieve
  additional items.
  * `:next_token` (`t:string`) String for specifying the next set of paginated
  results to return. After you receive a response with truncated results, use
  this parameter in a subsequent request. Set it to the value of nextToken
  from the response that you just received.
  * `:platform_id` (`t:string`) The ID of microcontroller platform that you
  specified for the distribution of your code image.
  * `:requested_by` (`t:string`) The IAM principal that requested the signing job.
  * `:signature_expires_after` (`t:timestamp`) Filters results to return only
  signing jobs with signatures expiring after a specified timestamp.
  * `:signature_expires_before` (`t:timestamp`) Filters results to return only
  signing jobs with signatures expiring before a specified timestamp.
  * `:status` (`t:enum["Failed|InProgress|Succeeded"]`) A status value with which
  to filter your results.
  """

  @spec list_signing_jobs(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_signing_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_signing_jobs_errors()}

  def list_signing_jobs(%Client{} = client, options \\ []) do
    url_path = "/signing-jobs"

    # Validate optional parameters
    optional_params = [
      is_revoked: nil,
      job_invoker: nil,
      max_results: nil,
      next_token: nil,
      platform_id: nil,
      requested_by: nil,
      signature_expires_after: nil,
      signature_expires_before: nil,
      status: nil
    ]

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
      if opt_val = Keyword.get(options, :status) do
        [{"status", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :signature_expires_before) do
        [{"signatureExpiresBefore", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :signature_expires_after) do
        [{"signatureExpiresAfter", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :requested_by) do
        [{"requestedBy", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :platform_id) do
        [{"platformId", opt_val} | query_params]
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
      if opt_val = Keyword.get(options, :job_invoker) do
        [{"jobInvoker", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :is_revoked) do
        [{"isRevoked", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :is_revoked,
        :job_invoker,
        :max_results,
        :next_token,
        :platform_id,
        :requested_by,
        :signature_expires_after,
        :signature_expires_before,
        :status
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all signing platforms available in AWS Signer that match the request
  parameters. If additional jobs remain to be listed, Signer returns a
  `nextToken` value. Use this value in subsequent calls to `ListSigningJobs` to
  fetch the remaining values. You can continue calling `ListSigningJobs` with
  your `maxResults` parameter and with new values that Signer returns in the
  `nextToken` parameter until all of your signing jobs have been returned.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=signer%20ListSigningPlatforms&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:category` (`t:string`) The category type of a signing platform.
  * `:max_results` (`t:integer`) The maximum number of results to be returned by
  this operation.
  * `:next_token` (`t:string`) Value for specifying the next set of paginated
  results to return. After you receive a response with truncated results, use
  this parameter in a subsequent request. Set it to the value of nextToken
  from the response that you just received.
  * `:partner` (`t:string`) Any partner entities connected to a signing platform.
  * `:target` (`t:string`) The validation template that is used by the target
  signing platform.
  """

  @spec list_signing_platforms(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_signing_platforms_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_signing_platforms_errors()}

  def list_signing_platforms(%Client{} = client, options \\ []) do
    url_path = "/signing-platforms"

    # Validate optional parameters
    optional_params = [
      category: nil,
      max_results: nil,
      next_token: nil,
      partner: nil,
      target: nil
    ]

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
      if opt_val = Keyword.get(options, :target) do
        [{"target", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :partner) do
        [{"partner", opt_val} | query_params]
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
      if opt_val = Keyword.get(options, :category) do
        [{"category", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:category, :max_results, :next_token, :partner, :target])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all available signing profiles in your AWS account. Returns only profiles
  with an `ACTIVE` status unless the `includeCanceled` request field is set to
  `true`. If additional jobs remain to be listed, AWS Signer returns a
  `nextToken` value. Use this value in subsequent calls to `ListSigningJobs` to
  fetch the remaining values. You can continue calling `ListSigningJobs` with
  your `maxResults` parameter and with new values that Signer returns in the
  `nextToken` parameter until all of your signing jobs have been returned.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=signer%20ListSigningProfiles&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:include_canceled` (`t:boolean`) Designates whether to include profiles with
  the status of CANCELED.
  * `:max_results` (`t:integer`) The maximum number of profiles to be returned.
  * `:next_token` (`t:string`) Value for specifying the next set of paginated
  results to return. After you receive a response with truncated results, use
  this parameter in a subsequent request. Set it to the value of nextToken
  from the response that you just received.
  * `:platform_id` (`t:string`) Filters results to return only signing jobs
  initiated for a specified signing platform.
  * `:statuses` (`t:list[com.amazonaws.signer#SigningProfileStatus]`) Filters
  results to return only signing jobs with statuses in the specified list.
  """

  @spec list_signing_profiles(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_signing_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_signing_profiles_errors()}

  def list_signing_profiles(%Client{} = client, options \\ []) do
    url_path = "/signing-profiles"

    # Validate optional parameters
    optional_params = [
      include_canceled: nil,
      max_results: nil,
      next_token: nil,
      platform_id: nil,
      statuses: nil
    ]

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
      if opt_val = Keyword.get(options, :statuses) do
        [{"statuses", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :platform_id) do
        [{"platformId", opt_val} | query_params]
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
      if opt_val = Keyword.get(options, :include_canceled) do
        [{"includeCanceled", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:include_canceled, :max_results, :next_token, :platform_id, :statuses])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of the tags associated with a signing profile resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=signer%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) for the signing
  profile.

  ## Optional parameters:
  """

  @spec list_tags_for_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}

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
  Creates a signing profile. A signing profile is a code-signing template that can
  be used to carry out a pre-defined signing job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=signer%20PutSigningProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:profile_name` (`t:string`) The name of the signing profile to be created.

  ## Optional parameters:
  """

  @spec put_signing_profile(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, put_signing_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_signing_profile_errors()}

  def put_signing_profile(%Client{} = client, profile_name, options \\ []) do
    url_path = "/signing-profiles/#{AWS.Util.encode_uri(profile_name)}"

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

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Removes cross-account permissions from a signing profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=signer%20RemoveProfilePermission&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:profile_name` (`t:string`) A human-readable name for the signing profile
  with permissions to be removed.
  * `:statement_id` (`t:string`) A unique identifier for the cross-account
  permissions statement.
  * `:revision_id` (`t:string`) An identifier for the current revision of the
  signing profile permissions.

  ## Optional parameters:
  """

  @spec remove_profile_permission(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, remove_profile_permission_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, remove_profile_permission_errors()}

  def remove_profile_permission(
        %Client{} = client,
        profile_name,
        statement_id,
        revision_id,
        options \\ []
      )
      when is_binary(revision_id) do
    url_path =
      "/signing-profiles/#{AWS.Util.encode_uri(profile_name)}/permissions/#{AWS.Util.encode_uri(statement_id)}"

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
    query_params = [{"revisionId", revision_id}]

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
  Changes the state of a signing job to REVOKED. This indicates that the signature
  is no longer valid.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=signer%20RevokeSignature&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:job_id` (`t:string`) ID of the signing job to be revoked.

  ## Optional parameters:
  """

  @spec revoke_signature(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, revoke_signature_errors()}

  def revoke_signature(%Client{} = client, job_id, options \\ []) do
    url_path = "/signing-jobs/#{AWS.Util.encode_uri(job_id)}/revoke"

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

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Changes the state of a signing profile to REVOKED. This indicates that
  signatures generated using the signing profile after an effective start date
  are no longer valid.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=signer%20RevokeSigningProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:profile_name` (`t:string`) The name of the signing profile to be revoked.

  ## Optional parameters:
  """

  @spec revoke_signing_profile(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, revoke_signing_profile_errors()}

  def revoke_signing_profile(%Client{} = client, profile_name, options \\ []) do
    url_path = "/signing-profiles/#{AWS.Util.encode_uri(profile_name)}/revoke"

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

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Signs a binary payload and returns a signature envelope.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=signer%20SignPayload&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec sign_payload(AWS.Client.t(), Keyword.t()) ::
          {:ok, sign_payload_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, sign_payload_errors()}

  def sign_payload(%Client{} = client, options \\ []) do
    url_path = "/signing-jobs/with-payload"

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
  Initiates a signing job to be performed on the code provided. Signing jobs are
  viewable by the `ListSigningJobs` operation for two years after they are
  performed. Note the following requirements:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=signer%20StartSigningJob&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec start_signing_job(AWS.Client.t(), Keyword.t()) ::
          {:ok, start_signing_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_signing_job_errors()}

  def start_signing_job(%Client{} = client, options \\ []) do
    url_path = "/signing-jobs"

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
  Adds one or more tags to a signing profile. Tags are labels that you can use to
  identify and organize your AWS resources. Each tag consists of a key and an
  optional value. To specify the signing profile, use its Amazon Resource Name
  (ARN). To specify the tag, use a key-value pair.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=signer%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) for the signing
  profile.

  ## Optional parameters:
  """

  @spec tag_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}

  def tag_resource(%Client{} = client, resource_arn, options \\ []) do
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

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Removes one or more tags from a signing profile. To remove the tags, specify a
  list of tag keys.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=signer%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) for the signing
  profile.
  * `:tag_keys` (`t:list[com.amazonaws.signer#TagKey]`) A list of tag keys to be
  removed from the signing profile.

  ## Optional parameters:
  """

  @spec untag_resource(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}

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
      200
    )
  end
end
