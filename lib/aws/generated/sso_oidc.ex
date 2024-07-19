# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SSOOIDC do
  @moduledoc """
  IAM Identity Center OpenID Connect (OIDC) is a web service that enables a client
  (such as CLI or a native application) to register with IAM Identity Center.
  The service also enables the client to fetch the user’s access token upon
  successful authentication and authorization with IAM Identity Center. IAM
  Identity Center uses the `sso` and `identitystore` API namespaces.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "error" => String.t(),
        "error_description" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      authorization_pending_exception() :: %{
        "error" => String.t(),
        "error_description" => String.t()
      }
      
  """
  @type authorization_pending_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_token_request() :: %{
        optional("code") => String.t(),
        optional("codeVerifier") => String.t(),
        optional("deviceCode") => String.t(),
        optional("redirectUri") => String.t(),
        optional("refreshToken") => String.t(),
        optional("scope") => list(String.t()()),
        required("clientId") => String.t(),
        required("clientSecret") => String.t(),
        required("grantType") => String.t()
      }
      
  """
  @type create_token_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_token_response() :: %{
        "accessToken" => String.t(),
        "expiresIn" => integer(),
        "idToken" => String.t(),
        "refreshToken" => String.t(),
        "tokenType" => String.t()
      }
      
  """
  @type create_token_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_token_with_iam_request() :: %{
        optional("assertion") => String.t(),
        optional("code") => String.t(),
        optional("codeVerifier") => String.t(),
        optional("redirectUri") => String.t(),
        optional("refreshToken") => String.t(),
        optional("requestedTokenType") => String.t(),
        optional("scope") => list(String.t()()),
        optional("subjectToken") => String.t(),
        optional("subjectTokenType") => String.t(),
        required("clientId") => String.t(),
        required("grantType") => String.t()
      }
      
  """
  @type create_token_with_iam_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_token_with_iam_response() :: %{
        "accessToken" => String.t(),
        "expiresIn" => integer(),
        "idToken" => String.t(),
        "issuedTokenType" => String.t(),
        "refreshToken" => String.t(),
        "scope" => list(String.t()()),
        "tokenType" => String.t()
      }
      
  """
  @type create_token_with_iam_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      expired_token_exception() :: %{
        "error" => String.t(),
        "error_description" => String.t()
      }
      
  """
  @type expired_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "error" => String.t(),
        "error_description" => String.t()
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_client_exception() :: %{
        "error" => String.t(),
        "error_description" => String.t()
      }
      
  """
  @type invalid_client_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_client_metadata_exception() :: %{
        "error" => String.t(),
        "error_description" => String.t()
      }
      
  """
  @type invalid_client_metadata_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_grant_exception() :: %{
        "error" => String.t(),
        "error_description" => String.t()
      }
      
  """
  @type invalid_grant_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_redirect_uri_exception() :: %{
        "error" => String.t(),
        "error_description" => String.t()
      }
      
  """
  @type invalid_redirect_uri_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_request_exception() :: %{
        "error" => String.t(),
        "error_description" => String.t()
      }
      
  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_request_region_exception() :: %{
        "endpoint" => String.t(),
        "error" => String.t(),
        "error_description" => String.t(),
        "region" => String.t()
      }
      
  """
  @type invalid_request_region_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_scope_exception() :: %{
        "error" => String.t(),
        "error_description" => String.t()
      }
      
  """
  @type invalid_scope_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_client_request() :: %{
        optional("entitledApplicationArn") => String.t(),
        optional("grantTypes") => list(String.t()()),
        optional("issuerUrl") => String.t(),
        optional("redirectUris") => list(String.t()()),
        optional("scopes") => list(String.t()()),
        required("clientName") => String.t(),
        required("clientType") => String.t()
      }
      
  """
  @type register_client_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_client_response() :: %{
        "authorizationEndpoint" => String.t(),
        "clientId" => String.t(),
        "clientIdIssuedAt" => float(),
        "clientSecret" => String.t(),
        "clientSecretExpiresAt" => float(),
        "tokenEndpoint" => String.t()
      }
      
  """
  @type register_client_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      slow_down_exception() :: %{
        "error" => String.t(),
        "error_description" => String.t()
      }
      
  """
  @type slow_down_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_device_authorization_request() :: %{
        required("clientId") => String.t(),
        required("clientSecret") => String.t(),
        required("startUrl") => String.t()
      }
      
  """
  @type start_device_authorization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_device_authorization_response() :: %{
        "deviceCode" => String.t(),
        "expiresIn" => integer(),
        "interval" => integer(),
        "userCode" => String.t(),
        "verificationUri" => String.t(),
        "verificationUriComplete" => String.t()
      }
      
  """
  @type start_device_authorization_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unauthorized_client_exception() :: %{
        "error" => String.t(),
        "error_description" => String.t()
      }
      
  """
  @type unauthorized_client_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_grant_type_exception() :: %{
        "error" => String.t(),
        "error_description" => String.t()
      }
      
  """
  @type unsupported_grant_type_exception() :: %{String.t() => any()}

  @type create_token_errors() ::
          unsupported_grant_type_exception()
          | unauthorized_client_exception()
          | slow_down_exception()
          | invalid_scope_exception()
          | invalid_request_exception()
          | invalid_grant_exception()
          | invalid_client_exception()
          | internal_server_exception()
          | expired_token_exception()
          | authorization_pending_exception()
          | access_denied_exception()

  @type create_token_with_iam_errors() ::
          unsupported_grant_type_exception()
          | unauthorized_client_exception()
          | slow_down_exception()
          | invalid_scope_exception()
          | invalid_request_region_exception()
          | invalid_request_exception()
          | invalid_grant_exception()
          | invalid_client_exception()
          | internal_server_exception()
          | expired_token_exception()
          | authorization_pending_exception()
          | access_denied_exception()

  @type register_client_errors() ::
          unsupported_grant_type_exception()
          | invalid_scope_exception()
          | invalid_request_exception()
          | invalid_redirect_uri_exception()
          | invalid_client_metadata_exception()
          | internal_server_exception()

  @type start_device_authorization_errors() ::
          unauthorized_client_exception()
          | slow_down_exception()
          | invalid_request_exception()
          | invalid_client_exception()
          | internal_server_exception()

  def metadata do
    %{
      api_version: "2019-06-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "oidc",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "SSO OIDC",
      signature_version: "v4",
      signing_name: "sso-oauth",
      target_prefix: nil
    }
  end

  @doc """
  Creates and returns access and refresh tokens for clients that are authenticated
  using client secrets. The access token can be used to fetch short-term
  credentials for the assigned AWS accounts or to access application APIs using
  `bearer` authentication.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssooidc%20CreateToken&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_token(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_token_errors()}

  def create_token(%Client{} = client, options \\ []) do
    url_path = "/token"

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
  Creates and returns access and refresh tokens for clients and applications that
  are authenticated using IAM entities. The access token can be used to fetch
  short-term credentials for the assigned Amazon Web Services accounts or to
  access application APIs using `bearer` authentication.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssooidc%20CreateTokenWithIAM&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_token_with_iam(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_token_with_iam_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_token_with_iam_errors()}

  def create_token_with_iam(%Client{} = client, options \\ []) do
    url_path = "/token?aws_iam=t"

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
  Registers a client with IAM Identity Center. This allows clients to initiate
  device authorization. The output should be persisted for reuse through many
  authentication requests.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssooidc%20RegisterClient&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec register_client(AWS.Client.t(), Keyword.t()) ::
          {:ok, register_client_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_client_errors()}

  def register_client(%Client{} = client, options \\ []) do
    url_path = "/client/register"

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
  Initiates device authorization by requesting a pair of verification codes from
  the authorization service.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssooidc%20StartDeviceAuthorization&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec start_device_authorization(AWS.Client.t(), Keyword.t()) ::
          {:ok, start_device_authorization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_device_authorization_errors()}

  def start_device_authorization(%Client{} = client, options \\ []) do
    url_path = "/device_authorization"

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
end
