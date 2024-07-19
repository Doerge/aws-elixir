# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SSO do
  @moduledoc """
  AWS IAM Identity Center (successor to AWS Single Sign-On) Portal is a web
  service that makes it easy for you to assign user access to IAM Identity
  Center resources such as the AWS access portal. Users can get AWS account
  applications and roles assigned to them and get federated into the
  application. Although AWS Single Sign-On was renamed, the `sso` and
  `identitystore` API namespaces will continue to retain their original name for
  backward compatibility purposes. For more information, see [IAM Identity
  Center
  rename](https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html#renamed).
  This reference guide describes the IAM Identity Center Portal operations that
  you can call programatically and includes detailed information on data types
  and errors.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      account_info() :: %{
        "accountId" => String.t(),
        "accountName" => String.t(),
        "emailAddress" => String.t()
      }
      
  """
  @type account_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_role_credentials_request() :: %{
        required("accessToken") => String.t(),
        required("accountId") => String.t(),
        required("roleName") => String.t()
      }
      
  """
  @type get_role_credentials_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_role_credentials_response() :: %{
        "roleCredentials" => role_credentials()
      }
      
  """
  @type get_role_credentials_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_request_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_account_roles_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("accessToken") => String.t(),
        required("accountId") => String.t()
      }
      
  """
  @type list_account_roles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_account_roles_response() :: %{
        "nextToken" => String.t(),
        "roleList" => list(role_info()())
      }
      
  """
  @type list_account_roles_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_accounts_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("accessToken") => String.t()
      }
      
  """
  @type list_accounts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_accounts_response() :: %{
        "accountList" => list(account_info()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_accounts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      logout_request() :: %{
        required("accessToken") => String.t()
      }
      
  """
  @type logout_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      role_credentials() :: %{
        "accessKeyId" => String.t(),
        "expiration" => float(),
        "secretAccessKey" => String.t(),
        "sessionToken" => String.t()
      }
      
  """
  @type role_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      role_info() :: %{
        "accountId" => String.t(),
        "roleName" => String.t()
      }
      
  """
  @type role_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_requests_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unauthorized_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type unauthorized_exception() :: %{String.t() => any()}

  @type get_role_credentials_errors() ::
          unauthorized_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | invalid_request_exception()

  @type list_account_roles_errors() ::
          unauthorized_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | invalid_request_exception()

  @type list_accounts_errors() ::
          unauthorized_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | invalid_request_exception()

  @type logout_errors() ::
          unauthorized_exception() | too_many_requests_exception() | invalid_request_exception()

  def metadata do
    %{
      api_version: "2019-06-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "portal.sso",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "SSO",
      signature_version: "v4",
      signing_name: "awsssoportal",
      target_prefix: nil
    }
  end

  @doc """
  Returns the STS short-term credentials for a given role name that is assigned to
  the user.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sso%20GetRoleCredentials&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:account_id` (`t:string`) The identifier for the AWS account that is assigned
  to the user.
  * `:role_name` (`t:string`) The friendly name of the role that is assigned to
  the user.
  * `:access_token` (`t:string`) The token issued by the CreateToken API call. For
  more information, see CreateToken in the IAM Identity Center OIDC API
  Reference Guide.

  ## Optional parameters:
  """

  @spec get_role_credentials(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_role_credentials_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_role_credentials_errors()}

  def get_role_credentials(%Client{} = client, account_id, role_name, access_token, options \\ [])
      when is_binary(account_id) and is_binary(role_name) and is_binary(access_token) do
    url_path = "/federation/credentials"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-sso_bearer_token", access_token}]

    # Optional headers

    # Required query params
    query_params = [{"account_id", account_id}, {"role_name", role_name}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all roles that are assigned to the user for a given AWS account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sso%20ListAccountRoles&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:account_id` (`t:string`) The identifier for the AWS account that is assigned
  to the user.
  * `:access_token` (`t:string`) The token issued by the CreateToken API call. For
  more information, see CreateToken in the IAM Identity Center OIDC API
  Reference Guide.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The number of items that clients can request per
  page.
  * `:next_token` (`t:string`) The page token from the previous response output
  when you request subsequent pages.
  """

  @spec list_account_roles(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_account_roles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_account_roles_errors()}

  def list_account_roles(%Client{} = client, account_id, access_token, options \\ [])
      when is_binary(account_id) and is_binary(access_token) do
    url_path = "/assignment/roles"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-sso_bearer_token", access_token}]

    # Optional headers

    # Required query params
    query_params = [{"account_id", account_id}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"next_token", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"max_result", opt_val} | query_params]
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
  Lists all AWS accounts assigned to the user. These AWS accounts are assigned by
  the administrator of the account. For more information, see [Assign User
  Access](https://docs.aws.amazon.com/singlesignon/latest/userguide/useraccess.html#assignusers)
  in the *IAM Identity Center User Guide*. This operation returns a paginated
  response.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sso%20ListAccounts&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:access_token` (`t:string`) The token issued by the CreateToken API call. For
  more information, see CreateToken in the IAM Identity Center OIDC API
  Reference Guide.

  ## Optional parameters:
  * `:max_results` (`t:integer`) This is the number of items clients can request
  per page.
  * `:next_token` (`t:string`) (Optional) When requesting subsequent pages, this
  is the page token from the previous response output.
  """

  @spec list_accounts(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_accounts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_accounts_errors()}

  def list_accounts(%Client{} = client, access_token, options \\ [])
      when is_binary(access_token) do
    url_path = "/assignment/accounts"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-sso_bearer_token", access_token}]

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"next_token", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"max_result", opt_val} | query_params]
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
  Removes the locally stored SSO tokens from the client-side cache and sends an
  API call to the IAM Identity Center service to invalidate the corresponding
  server-side IAM Identity Center sign in session.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sso%20Logout&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:access_token` (`t:string`) The token issued by the CreateToken API call. For
  more information, see CreateToken in the IAM Identity Center OIDC API
  Reference Guide.

  ## Optional parameters:
  """

  @spec logout(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, logout_errors()}

  def logout(%Client{} = client, access_token, options \\ []) when is_binary(access_token) do
    url_path = "/logout"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-sso_bearer_token", access_token}]

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
