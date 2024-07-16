# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.STS do
  @moduledoc """
  Security Token Service
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      assume_role_request() :: %{
        optional("DurationSeconds") => integer(),
        optional("ExternalId") => String.t(),
        optional("Policy") => String.t(),
        optional("PolicyArns") => list(policy_descriptor_type()()),
        optional("ProvidedContexts") => list(provided_context()()),
        optional("SerialNumber") => String.t(),
        optional("SourceIdentity") => String.t(),
        optional("Tags") => list(tag()()),
        optional("TokenCode") => String.t(),
        optional("TransitiveTagKeys") => list(String.t()()),
        required("RoleArn") => String.t(),
        required("RoleSessionName") => String.t()
      }
      
  """
  @type assume_role_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      assume_role_response() :: %{
        "AssumedRoleUser" => assumed_role_user(),
        "Credentials" => credentials(),
        "PackedPolicySize" => integer(),
        "SourceIdentity" => String.t()
      }
      
  """
  @type assume_role_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      assume_role_with_saml_request() :: %{
        optional("DurationSeconds") => integer(),
        optional("Policy") => String.t(),
        optional("PolicyArns") => list(policy_descriptor_type()()),
        required("PrincipalArn") => String.t(),
        required("RoleArn") => String.t(),
        required("SAMLAssertion") => String.t()
      }
      
  """
  @type assume_role_with_saml_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      assume_role_with_saml_response() :: %{
        "AssumedRoleUser" => assumed_role_user(),
        "Audience" => String.t(),
        "Credentials" => credentials(),
        "Issuer" => String.t(),
        "NameQualifier" => String.t(),
        "PackedPolicySize" => integer(),
        "SourceIdentity" => String.t(),
        "Subject" => String.t(),
        "SubjectType" => String.t()
      }
      
  """
  @type assume_role_with_saml_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      assume_role_with_web_identity_request() :: %{
        optional("DurationSeconds") => integer(),
        optional("Policy") => String.t(),
        optional("PolicyArns") => list(policy_descriptor_type()()),
        optional("ProviderId") => String.t(),
        required("RoleArn") => String.t(),
        required("RoleSessionName") => String.t(),
        required("WebIdentityToken") => String.t()
      }
      
  """
  @type assume_role_with_web_identity_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      assume_role_with_web_identity_response() :: %{
        "AssumedRoleUser" => assumed_role_user(),
        "Audience" => String.t(),
        "Credentials" => credentials(),
        "PackedPolicySize" => integer(),
        "Provider" => String.t(),
        "SourceIdentity" => String.t(),
        "SubjectFromWebIdentityToken" => String.t()
      }
      
  """
  @type assume_role_with_web_identity_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      assumed_role_user() :: %{
        "Arn" => String.t(),
        "AssumedRoleId" => String.t()
      }
      
  """
  @type assumed_role_user() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      credentials() :: %{
        "AccessKeyId" => String.t(),
        "Expiration" => non_neg_integer(),
        "SecretAccessKey" => String.t(),
        "SessionToken" => String.t()
      }
      
  """
  @type credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      decode_authorization_message_request() :: %{
        required("EncodedMessage") => String.t()
      }
      
  """
  @type decode_authorization_message_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      decode_authorization_message_response() :: %{
        "DecodedMessage" => String.t()
      }
      
  """
  @type decode_authorization_message_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      expired_token_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type expired_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      federated_user() :: %{
        "Arn" => String.t(),
        "FederatedUserId" => String.t()
      }
      
  """
  @type federated_user() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_access_key_info_request() :: %{
        required("AccessKeyId") => String.t()
      }
      
  """
  @type get_access_key_info_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_access_key_info_response() :: %{
        "Account" => String.t()
      }
      
  """
  @type get_access_key_info_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_caller_identity_request() :: %{}
      
  """
  @type get_caller_identity_request() :: %{}

  @typedoc """

  ## Example:
      
      get_caller_identity_response() :: %{
        "Account" => String.t(),
        "Arn" => String.t(),
        "UserId" => String.t()
      }
      
  """
  @type get_caller_identity_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_federation_token_request() :: %{
        optional("DurationSeconds") => integer(),
        optional("Policy") => String.t(),
        optional("PolicyArns") => list(policy_descriptor_type()()),
        optional("Tags") => list(tag()()),
        required("Name") => String.t()
      }
      
  """
  @type get_federation_token_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_federation_token_response() :: %{
        "Credentials" => credentials(),
        "FederatedUser" => federated_user(),
        "PackedPolicySize" => integer()
      }
      
  """
  @type get_federation_token_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_session_token_request() :: %{
        optional("DurationSeconds") => integer(),
        optional("SerialNumber") => String.t(),
        optional("TokenCode") => String.t()
      }
      
  """
  @type get_session_token_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_session_token_response() :: %{
        "Credentials" => credentials()
      }
      
  """
  @type get_session_token_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      id_p_communication_error_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type id_p_communication_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      id_p_rejected_claim_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type id_p_rejected_claim_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_authorization_message_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_authorization_message_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_identity_token_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_identity_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      malformed_policy_document_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type malformed_policy_document_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      packed_policy_too_large_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type packed_policy_too_large_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_descriptor_type() :: %{
        "arn" => String.t()
      }
      
  """
  @type policy_descriptor_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      provided_context() :: %{
        "ContextAssertion" => String.t(),
        "ProviderArn" => String.t()
      }
      
  """
  @type provided_context() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      region_disabled_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type region_disabled_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type tag() :: %{String.t() => any()}

  @type assume_role_errors() ::
          region_disabled_exception()
          | packed_policy_too_large_exception()
          | malformed_policy_document_exception()
          | expired_token_exception()

  @type assume_role_with_saml_errors() ::
          region_disabled_exception()
          | packed_policy_too_large_exception()
          | malformed_policy_document_exception()
          | invalid_identity_token_exception()
          | id_p_rejected_claim_exception()
          | expired_token_exception()

  @type assume_role_with_web_identity_errors() ::
          region_disabled_exception()
          | packed_policy_too_large_exception()
          | malformed_policy_document_exception()
          | invalid_identity_token_exception()
          | id_p_rejected_claim_exception()
          | id_p_communication_error_exception()
          | expired_token_exception()

  @type decode_authorization_message_errors() :: invalid_authorization_message_exception()

  @type get_federation_token_errors() ::
          region_disabled_exception()
          | packed_policy_too_large_exception()
          | malformed_policy_document_exception()

  @type get_session_token_errors() :: region_disabled_exception()

  def metadata do
    %{
      api_version: "2011-06-15",
      content_type: "application/x-www-form-urlencoded",
      credential_scope: nil,
      endpoint_prefix: "sts",
      global?: false,
      hostname: nil,
      protocol: "query",
      service_id: "STS",
      signature_version: "v4",
      signing_name: "sts",
      target_prefix: "AWSSecurityTokenServiceV20110615"
    }
  end

  @doc """
  Returns a set of temporary security credentials that you can use to access
  Amazon Web Services resources. These temporary credentials consist of an
  access key ID, a secret access key, and a security token. Typically, you use
  `AssumeRole` within your account or for cross-account access. For a comparison
  of `AssumeRole` with other API operations that produce temporary credentials,
  see [Requesting Temporary Security
  Credentials](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html)
  and [Comparing the Amazon Web Services STS API
  operations](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison)
  in the *IAM User Guide*. **Permissions** The temporary security credentials
  created by `AssumeRole` can be used to make API calls to any Amazon Web
  Services service with the following exception: You cannot call the Amazon Web
  Services STS `GetFederationToken` or `GetSessionToken` API operations.
  """
  @spec assume_role(AWS.Client.t(), assume_role_request(), Keyword.t()) ::
          {:ok, assume_role_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, assume_role_errors()}
  def assume_role(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssumeRole", input, options)
  end

  @doc """
  Returns a set of temporary security credentials for users who have been
  authenticated via a SAML authentication response. This operation provides a
  mechanism for tying an enterprise identity store or directory to role-based
  Amazon Web Services access without user-specific credentials or configuration.
  For a comparison of `AssumeRoleWithSAML` with the other API operations that
  produce temporary credentials, see [Requesting Temporary Security
  Credentials](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html)
  and [Comparing the Amazon Web Services STS API
  operations](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison)
  in the *IAM User Guide*. The temporary security credentials returned by this
  operation consist of an access key ID, a secret access key, and a security
  token. Applications can use these temporary security credentials to sign calls
  to Amazon Web Services services. **Session Duration**
  """
  @spec assume_role_with_saml(AWS.Client.t(), assume_role_with_saml_request(), Keyword.t()) ::
          {:ok, assume_role_with_saml_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, assume_role_with_saml_errors()}
  def assume_role_with_saml(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssumeRoleWithSAML", input, options)
  end

  @doc """
  Returns a set of temporary security credentials for users who have been
  authenticated in a mobile or web application with a web identity provider.
  Example providers include the OAuth 2.0 providers Login with Amazon and
  Facebook, or any OpenID Connect-compatible identity provider such as Google or
  [Amazon Cognito federated
  identities](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-identity.html).
  For mobile applications, we recommend that you use Amazon Cognito. You can use
  Amazon Cognito with the [Amazon Web Services SDK for iOS Developer
  Guide](http://aws.amazon.com/sdkforios/) and the [Amazon Web Services SDK for
  Android Developer Guide](http://aws.amazon.com/sdkforandroid/) to uniquely
  identify a user. You can also supply the user with a consistent identity
  throughout the lifetime of an application. To learn more about Amazon Cognito,
  see [Amazon Cognito identity
  pools](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-identity.html)
  in *Amazon Cognito Developer Guide*. Calling `AssumeRoleWithWebIdentity` does
  not require the use of Amazon Web Services security credentials. Therefore,
  you can distribute an application (for example, on mobile devices) that
  requests temporary security credentials without including long-term Amazon Web
  Services credentials in the application. You also don't need to deploy
  server-based proxy services that use long-term Amazon Web Services
  credentials. Instead, the identity of the caller is validated by using a token
  from the web identity provider. For a comparison of
  `AssumeRoleWithWebIdentity` with the other API operations that produce
  temporary credentials, see [Requesting Temporary Security
  Credentials](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html)
  and [Comparing the Amazon Web Services STS API
  operations](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison)
  in the *IAM User Guide*. The temporary security credentials returned by this
  API consist of an access key ID, a secret access key, and a security token.
  Applications can use these temporary security credentials to sign calls to
  Amazon Web Services service API operations. **Session Duration**
  """
  @spec assume_role_with_web_identity(
          AWS.Client.t(),
          assume_role_with_web_identity_request(),
          Keyword.t()
        ) ::
          {:ok, assume_role_with_web_identity_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, assume_role_with_web_identity_errors()}
  def assume_role_with_web_identity(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssumeRoleWithWebIdentity", input, options)
  end

  @doc """
  Decodes additional information about the authorization status of a request from
  an encoded message returned in response to an Amazon Web Services request. For
  example, if a user is not authorized to perform an operation that he or she
  has requested, the request returns a `Client.UnauthorizedOperation` response
  (an HTTP 403 response). Some Amazon Web Services operations additionally
  return an encoded message that can provide details about this authorization
  failure.
  """
  @spec decode_authorization_message(
          AWS.Client.t(),
          decode_authorization_message_request(),
          Keyword.t()
        ) ::
          {:ok, decode_authorization_message_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, decode_authorization_message_errors()}
  def decode_authorization_message(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DecodeAuthorizationMessage", input, options)
  end

  @doc """
  Returns the account identifier for the specified access key ID. Access keys
  consist of two parts: an access key ID (for example, `AKIAIOSFODNN7EXAMPLE`)
  and a secret access key (for example,
  `wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY`). For more information about access
  keys, see [Managing Access Keys for IAM
  Users](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_access-keys.html)
  in the *IAM User Guide*. When you pass an access key ID to this operation, it
  returns the ID of the Amazon Web Services account to which the keys belong.
  Access key IDs beginning with `AKIA` are long-term credentials for an IAM user
  or the Amazon Web Services account root user. Access key IDs beginning with
  `ASIA` are temporary credentials that are created using STS operations. If the
  account in the response belongs to you, you can sign in as the root user and
  review your root user access keys. Then, you can pull a [credentials
  report](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_getting-report.html)
  to learn which IAM user owns the keys. To learn who requested the temporary
  credentials for an `ASIA` access key, view the STS events in your [CloudTrail
  logs](https://docs.aws.amazon.com/IAM/latest/UserGuide/cloudtrail-integration.html)
  in the *IAM User Guide*.
  """
  @spec get_access_key_info(AWS.Client.t(), get_access_key_info_request(), Keyword.t()) ::
          {:ok, get_access_key_info_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def get_access_key_info(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetAccessKeyInfo", input, options)
  end

  @doc """
  Returns details about the IAM user or role whose credentials are used to call
  the operation.
  """
  @spec get_caller_identity(AWS.Client.t(), get_caller_identity_request(), Keyword.t()) ::
          {:ok, get_caller_identity_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def get_caller_identity(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetCallerIdentity", input, options)
  end

  @doc """
  Returns a set of temporary security credentials (consisting of an access key ID,
  a secret access key, and a security token) for a user. A typical use is in a
  proxy application that gets temporary security credentials on behalf of
  distributed applications inside a corporate network. You must call the
  `GetFederationToken` operation using the long-term security credentials of an
  IAM user. As a result, this call is appropriate in contexts where those
  credentials can be safeguarded, usually in a server-based application. For a
  comparison of `GetFederationToken` with the other API operations that produce
  temporary credentials, see [Requesting Temporary Security
  Credentials](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html)
  and [Comparing the Amazon Web Services STS API
  operations](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison)
  in the *IAM User Guide*. Although it is possible to call `GetFederationToken`
  using the security credentials of an Amazon Web Services account root user
  rather than an IAM user that you create for the purpose of a proxy
  application, we do not recommend it. For more information, see [Safeguard your
  root user credentials and don't use them for everyday
  tasks](https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html#lock-away-credentials)
  in the *IAM User Guide*.
  """
  @spec get_federation_token(AWS.Client.t(), get_federation_token_request(), Keyword.t()) ::
          {:ok, get_federation_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_federation_token_errors()}
  def get_federation_token(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetFederationToken", input, options)
  end

  @doc """
  Returns a set of temporary credentials for an Amazon Web Services account or IAM
  user. The credentials consist of an access key ID, a secret access key, and a
  security token. Typically, you use `GetSessionToken` if you want to use MFA to
  protect programmatic calls to specific Amazon Web Services API operations like
  Amazon EC2 `StopInstances`. MFA-enabled IAM users must call `GetSessionToken`
  and submit an MFA code that is associated with their MFA device. Using the
  temporary security credentials that the call returns, IAM users can then make
  programmatic calls to API operations that require MFA authentication. An
  incorrect MFA code causes the API to return an access denied error. For a
  comparison of `GetSessionToken` with the other API operations that produce
  temporary credentials, see [Requesting Temporary Security
  Credentials](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html)
  and [Comparing the Amazon Web Services STS API
  operations](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison)
  in the *IAM User Guide*. No permissions are required for users to perform this
  operation. The purpose of the `sts:GetSessionToken` operation is to
  authenticate the user using MFA. You cannot use policies to control
  authentication operations. For more information, see [Permissions for
  GetSessionToken](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_getsessiontoken.html)
  in the *IAM User Guide*.
  """
  @spec get_session_token(AWS.Client.t(), get_session_token_request(), Keyword.t()) ::
          {:ok, get_session_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_session_token_errors()}
  def get_session_token(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetSessionToken", input, options)
  end
end
