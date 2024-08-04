# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CognitoIdentity do
  @moduledoc """
  Amazon Cognito Federated Identities Amazon Cognito Federated Identities is a web
  service that delivers scoped temporary credentials to mobile devices and other
  untrusted environments. It uniquely identifies a device and supplies the user
  with a consistent identity over the lifetime of an application.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      get_credentials_for_identity_response() :: %{
        "Credentials" => credentials(),
        "IdentityId" => String.t()
      }
      
  """
  @type get_credentials_for_identity_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unlink_identity_input() :: %{
        required("IdentityId") => String.t(),
        required("Logins") => map(),
        required("LoginsToRemove") => list(String.t()())
      }
      
  """
  @type unlink_identity_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_open_id_token_for_developer_identity_response() :: %{
        "IdentityId" => String.t(),
        "Token" => String.t()
      }
      
  """
  @type get_open_id_token_for_developer_identity_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      merge_developer_identities_response() :: %{
        "IdentityId" => String.t()
      }
      
  """
  @type merge_developer_identities_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      developer_user_already_registered_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type developer_user_already_registered_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_identity_pool_input() :: %{
        required("IdentityPoolId") => String.t()
      }
      
  """
  @type describe_identity_pool_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      identity_pool() :: %{
        "AllowClassicFlow" => boolean(),
        "AllowUnauthenticatedIdentities" => boolean(),
        "CognitoIdentityProviders" => list(cognito_identity_provider()()),
        "DeveloperProviderName" => String.t(),
        "IdentityPoolId" => String.t(),
        "IdentityPoolName" => String.t(),
        "IdentityPoolTags" => map(),
        "OpenIdConnectProviderARNs" => list(String.t()()),
        "SamlProviderARNs" => list(String.t()()),
        "SupportedLoginProviders" => map()
      }
      
  """
  @type identity_pool() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      get_identity_pool_roles_response() :: %{
        "IdentityPoolId" => String.t(),
        "RoleMappings" => map(),
        "Roles" => map()
      }
      
  """
  @type get_identity_pool_roles_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unlink_developer_identity_input() :: %{
        required("DeveloperProviderName") => String.t(),
        required("DeveloperUserIdentifier") => String.t(),
        required("IdentityId") => String.t(),
        required("IdentityPoolId") => String.t()
      }
      
  """
  @type unlink_developer_identity_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_identity_pools_input() :: %{
        optional("NextToken") => String.t(),
        required("MaxResults") => integer()
      }
      
  """
  @type list_identity_pools_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_identities_response() :: %{
        "UnprocessedIdentityIds" => list(unprocessed_identity_id()())
      }
      
  """
  @type delete_identities_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_identity_pool_roles_input() :: %{
        required("IdentityPoolId") => String.t()
      }
      
  """
  @type get_identity_pool_roles_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      credentials() :: %{
        "AccessKeyId" => String.t(),
        "Expiration" => non_neg_integer(),
        "SecretKey" => String.t(),
        "SessionToken" => String.t()
      }
      
  """
  @type credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lookup_developer_identity_response() :: %{
        "DeveloperUserIdentifierList" => list(String.t()()),
        "IdentityId" => String.t(),
        "NextToken" => String.t()
      }
      
  """
  @type lookup_developer_identity_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unprocessed_identity_id() :: %{
        "ErrorCode" => list(any()),
        "IdentityId" => String.t()
      }
      
  """
  @type unprocessed_identity_id() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_requests_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_identity_pool_roles_input() :: %{
        optional("RoleMappings") => map(),
        required("IdentityPoolId") => String.t(),
        required("Roles") => map()
      }
      
  """
  @type set_identity_pool_roles_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      identity_description() :: %{
        "CreationDate" => non_neg_integer(),
        "IdentityId" => String.t(),
        "LastModifiedDate" => non_neg_integer(),
        "Logins" => list(String.t()())
      }
      
  """
  @type identity_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_identity_pools_response() :: %{
        "IdentityPools" => list(identity_pool_short_description()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_identity_pools_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_credentials_for_identity_input() :: %{
        optional("CustomRoleArn") => String.t(),
        optional("Logins") => map(),
        required("IdentityId") => String.t()
      }
      
  """
  @type get_credentials_for_identity_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_identity_pool_configuration_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_identity_pool_configuration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_principal_tag_attribute_map_input() :: %{
        optional("PrincipalTags") => map(),
        optional("UseDefaults") => boolean(),
        required("IdentityPoolId") => String.t(),
        required("IdentityProviderName") => String.t()
      }
      
  """
  @type set_principal_tag_attribute_map_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rules_configuration_type() :: %{
        "Rules" => list(mapping_rule()())
      }
      
  """
  @type rules_configuration_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      mapping_rule() :: %{
        "Claim" => String.t(),
        "MatchType" => list(any()),
        "RoleARN" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type mapping_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_identities_input() :: %{
        required("IdentityIdsToDelete") => list(String.t()())
      }
      
  """
  @type delete_identities_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_identity_input() :: %{
        required("IdentityId") => String.t()
      }
      
  """
  @type describe_identity_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_identities_input() :: %{
        optional("HideDisabled") => boolean(),
        optional("NextToken") => String.t(),
        required("IdentityPoolId") => String.t(),
        required("MaxResults") => integer()
      }
      
  """
  @type list_identities_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_open_id_token_response() :: %{
        "IdentityId" => String.t(),
        "Token" => String.t()
      }
      
  """
  @type get_open_id_token_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      identity_pool_short_description() :: %{
        "IdentityPoolId" => String.t(),
        "IdentityPoolName" => String.t()
      }
      
  """
  @type identity_pool_short_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      role_mapping() :: %{
        "AmbiguousRoleResolution" => list(any()),
        "RulesConfiguration" => rules_configuration_type(),
        "Type" => list(any())
      }
      
  """
  @type role_mapping() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_principal_tag_attribute_map_input() :: %{
        required("IdentityPoolId") => String.t(),
        required("IdentityProviderName") => String.t()
      }
      
  """
  @type get_principal_tag_attribute_map_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      merge_developer_identities_input() :: %{
        required("DestinationUserIdentifier") => String.t(),
        required("DeveloperProviderName") => String.t(),
        required("IdentityPoolId") => String.t(),
        required("SourceUserIdentifier") => String.t()
      }
      
  """
  @type merge_developer_identities_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_principal_tag_attribute_map_response() :: %{
        "IdentityPoolId" => String.t(),
        "IdentityProviderName" => String.t(),
        "PrincipalTags" => map(),
        "UseDefaults" => boolean()
      }
      
  """
  @type set_principal_tag_attribute_map_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_input() :: %{
        required("ResourceArn") => String.t(),
        required("Tags") => map()
      }
      
  """
  @type tag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cognito_identity_provider() :: %{
        "ClientId" => String.t(),
        "ProviderName" => String.t(),
        "ServerSideTokenCheck" => boolean()
      }
      
  """
  @type cognito_identity_provider() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_identity_pool_input() :: %{
        optional("AllowClassicFlow") => boolean(),
        optional("CognitoIdentityProviders") => list(cognito_identity_provider()()),
        optional("DeveloperProviderName") => String.t(),
        optional("IdentityPoolTags") => map(),
        optional("OpenIdConnectProviderARNs") => list(String.t()()),
        optional("SamlProviderARNs") => list(String.t()()),
        optional("SupportedLoginProviders") => map(),
        required("AllowUnauthenticatedIdentities") => boolean(),
        required("IdentityPoolName") => String.t()
      }
      
  """
  @type create_identity_pool_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      not_authorized_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type not_authorized_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_input() :: %{
        required("ResourceArn") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      lookup_developer_identity_input() :: %{
        optional("DeveloperUserIdentifier") => String.t(),
        optional("IdentityId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("IdentityPoolId") => String.t()
      }
      
  """
  @type lookup_developer_identity_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_id_input() :: %{
        optional("AccountId") => String.t(),
        optional("Logins") => map(),
        required("IdentityPoolId") => String.t()
      }
      
  """
  @type get_id_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      concurrent_modification_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type concurrent_modification_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_open_id_token_for_developer_identity_input() :: %{
        optional("IdentityId") => String.t(),
        optional("PrincipalTags") => map(),
        optional("TokenDuration") => float(),
        required("IdentityPoolId") => String.t(),
        required("Logins") => map()
      }
      
  """
  @type get_open_id_token_for_developer_identity_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_input() :: %{
        required("ResourceArn") => String.t()
      }
      
  """
  @type list_tags_for_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_identities_response() :: %{
        "Identities" => list(identity_description()()),
        "IdentityPoolId" => String.t(),
        "NextToken" => String.t()
      }
      
  """
  @type list_identities_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_identity_pool_input() :: %{
        required("IdentityPoolId") => String.t()
      }
      
  """
  @type delete_identity_pool_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      external_service_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type external_service_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_open_id_token_input() :: %{
        optional("Logins") => map(),
        required("IdentityId") => String.t()
      }
      
  """
  @type get_open_id_token_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_principal_tag_attribute_map_response() :: %{
        "IdentityPoolId" => String.t(),
        "IdentityProviderName" => String.t(),
        "PrincipalTags" => map(),
        "UseDefaults" => boolean()
      }
      
  """
  @type get_principal_tag_attribute_map_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_conflict_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_id_response() :: %{
        "IdentityId" => String.t()
      }
      
  """
  @type get_id_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_error_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type internal_error_exception() :: %{String.t() => any()}

  @type create_identity_pool_errors() ::
          internal_error_exception()
          | resource_conflict_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | too_many_requests_exception()

  @type delete_identities_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | too_many_requests_exception()

  @type delete_identity_pool_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type describe_identity_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type describe_identity_pool_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_credentials_for_identity_errors() ::
          internal_error_exception()
          | resource_conflict_exception()
          | external_service_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | invalid_identity_pool_configuration_exception()
          | too_many_requests_exception()

  @type get_id_errors() ::
          internal_error_exception()
          | resource_conflict_exception()
          | external_service_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_identity_pool_roles_errors() ::
          internal_error_exception()
          | resource_conflict_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_open_id_token_errors() ::
          internal_error_exception()
          | resource_conflict_exception()
          | external_service_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_open_id_token_for_developer_identity_errors() ::
          internal_error_exception()
          | resource_conflict_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | developer_user_already_registered_exception()

  @type get_principal_tag_attribute_map_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type list_identities_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type list_identity_pools_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type list_tags_for_resource_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type lookup_developer_identity_errors() ::
          internal_error_exception()
          | resource_conflict_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type merge_developer_identities_errors() ::
          internal_error_exception()
          | resource_conflict_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type set_identity_pool_roles_errors() ::
          internal_error_exception()
          | resource_conflict_exception()
          | concurrent_modification_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type set_principal_tag_attribute_map_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type tag_resource_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type unlink_developer_identity_errors() ::
          internal_error_exception()
          | resource_conflict_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type unlink_identity_errors() ::
          internal_error_exception()
          | resource_conflict_exception()
          | external_service_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type untag_resource_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type update_identity_pool_errors() ::
          internal_error_exception()
          | resource_conflict_exception()
          | limit_exceeded_exception()
          | concurrent_modification_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  def metadata do
    %{
      api_version: "2014-06-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "cognito-identity",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Cognito Identity",
      signature_version: "v4",
      signing_name: "cognito-identity",
      target_prefix: "AWSCognitoIdentityService"
    }
  end

  @doc """
   
  Creates a new identity pool. The identity pool is a store of user identity
  information that is specific to your AWS account. The keys for
  `SupportedLoginProviders` are as follows:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentity%20CreateIdentityPool&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_identity_pool_input`)
    %{
      optional("AllowClassicFlow") => boolean(),
      optional("CognitoIdentityProviders") => list(cognito_identity_provider()()),
      optional("DeveloperProviderName") => String.t(),
      optional("IdentityPoolTags") => map(),
      optional("OpenIdConnectProviderARNs") => list(String.t()()),
      optional("SamlProviderARNs") => list(String.t()()),
      optional("SupportedLoginProviders") => map(),
      required("AllowUnauthenticatedIdentities") => boolean(),
      required("IdentityPoolName") => String.t()
    }
  """
  @spec create_identity_pool(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, identity_pool(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_identity_pool_errors()}
  def create_identity_pool(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateIdentityPool", input, options)
  end

  @doc """
   
  Deletes identities from an identity pool. You can specify a list of 1-60
  identities that you want to delete.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentity%20DeleteIdentities&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_identities_input`)
    %{
      required("IdentityIdsToDelete") => list(String.t()())
    }
  """
  @spec delete_identities(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_identities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_identities_errors()}
  def delete_identities(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteIdentities", input, options)
  end

  @doc """
   
  Deletes an identity pool. Once a pool is deleted, users will not be able to
  authenticate with the pool.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentity%20DeleteIdentityPool&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_identity_pool_input`)
    %{
      required("IdentityPoolId") => String.t()
    }
  """
  @spec delete_identity_pool(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_identity_pool_errors()}
  def delete_identity_pool(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteIdentityPool", input, options)
  end

  @doc """
   
  Returns metadata related to the given identity, including when the identity was
  created and any associated linked logins.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentity%20DescribeIdentity&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_identity_input`)
    %{
      required("IdentityId") => String.t()
    }
  """
  @spec describe_identity(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, identity_description(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_identity_errors()}
  def describe_identity(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeIdentity", input, options)
  end

  @doc """
   
  Gets details about a particular identity pool, including the pool name, ID
  description, creation date, and current number of users.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentity%20DescribeIdentityPool&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_identity_pool_input`)
    %{
      required("IdentityPoolId") => String.t()
    }
  """
  @spec describe_identity_pool(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, identity_pool(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_identity_pool_errors()}
  def describe_identity_pool(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeIdentityPool", input, options)
  end

  @doc """
   
  Returns credentials for the provided identity ID. Any provided logins will be
  validated against supported login providers. If the token is for
  cognito-identity.amazonaws.com, it will be passed through to AWS Security
  Token Service with the appropriate role for the token.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentity%20GetCredentialsForIdentity&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_credentials_for_identity_input`)
    %{
      optional("CustomRoleArn") => String.t(),
      optional("Logins") => map(),
      required("IdentityId") => String.t()
    }
  """
  @spec get_credentials_for_identity(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_credentials_for_identity_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_credentials_for_identity_errors()}
  def get_credentials_for_identity(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetCredentialsForIdentity", input, options)
  end

  @doc """
   
  Generates (or retrieves) a Cognito ID. Supplying multiple logins will create an
  implicit linked account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentity%20GetId&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_id_input`)
    %{
      optional("AccountId") => String.t(),
      optional("Logins") => map(),
      required("IdentityPoolId") => String.t()
    }
  """
  @spec get_id(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_id_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_id_errors()}
  def get_id(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetId", input, options)
  end

  @doc """
   
  Gets the roles for an identity pool.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentity%20GetIdentityPoolRoles&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_identity_pool_roles_input`)
    %{
      required("IdentityPoolId") => String.t()
    }
  """
  @spec get_identity_pool_roles(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_identity_pool_roles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_identity_pool_roles_errors()}
  def get_identity_pool_roles(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetIdentityPoolRoles", input, options)
  end

  @doc """
   
  Gets an OpenID token, using a known Cognito ID. This known Cognito ID is
  returned by `GetId`. You can optionally add additional logins for the
  identity. Supplying multiple logins creates an implicit link. The OpenID token
  is valid for 10 minutes.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentity%20GetOpenIdToken&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_open_id_token_input`)
    %{
      optional("Logins") => map(),
      required("IdentityId") => String.t()
    }
  """
  @spec get_open_id_token(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_open_id_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_open_id_token_errors()}
  def get_open_id_token(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetOpenIdToken", input, options)
  end

  @doc """
   
  Registers (or retrieves) a Cognito `IdentityId` and an OpenID Connect token for
  a user authenticated by your backend authentication process. Supplying
  multiple logins will create an implicit linked account. You can only specify
  one developer provider as part of the `Logins` map, which is linked to the
  identity pool. The developer provider is the "domain" by which Cognito will
  refer to your users. You can use `GetOpenIdTokenForDeveloperIdentity` to
  create a new identity and to link new logins (that is, user credentials issued
  by a public provider or developer provider) to an existing identity. When you
  want to create a new identity, the `IdentityId` should be null. When you want
  to associate a new login with an existing authenticated/unauthenticated
  identity, you can do so by providing the existing `IdentityId`. This API will
  create the identity in the specified `IdentityPoolId`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentity%20GetOpenIdTokenForDeveloperIdentity&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_open_id_token_for_developer_identity_input`)
    %{
      optional("IdentityId") => String.t(),
      optional("PrincipalTags") => map(),
      optional("TokenDuration") => float(),
      required("IdentityPoolId") => String.t(),
      required("Logins") => map()
    }
  """
  @spec get_open_id_token_for_developer_identity(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_open_id_token_for_developer_identity_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_open_id_token_for_developer_identity_errors()}
  def get_open_id_token_for_developer_identity(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetOpenIdTokenForDeveloperIdentity", input, options)
  end

  @doc """
   
  Use `GetPrincipalTagAttributeMap` to list all mappings between `PrincipalTags`
  and user attributes.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentity%20GetPrincipalTagAttributeMap&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_principal_tag_attribute_map_input`)
    %{
      required("IdentityPoolId") => String.t(),
      required("IdentityProviderName") => String.t()
    }
  """
  @spec get_principal_tag_attribute_map(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_principal_tag_attribute_map_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_principal_tag_attribute_map_errors()}
  def get_principal_tag_attribute_map(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetPrincipalTagAttributeMap", input, options)
  end

  @doc """
   
  Lists the identities in an identity pool.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentity%20ListIdentities&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_identities_input`)
    %{
      optional("HideDisabled") => boolean(),
      optional("NextToken") => String.t(),
      required("IdentityPoolId") => String.t(),
      required("MaxResults") => integer()
    }
  """
  @spec list_identities(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_identities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_identities_errors()}
  def list_identities(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListIdentities", input, options)
  end

  @doc """
   
  Lists all of the Cognito identity pools registered for your account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentity%20ListIdentityPools&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_identity_pools_input`)
    %{
      optional("NextToken") => String.t(),
      required("MaxResults") => integer()
    }
  """
  @spec list_identity_pools(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_identity_pools_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_identity_pools_errors()}
  def list_identity_pools(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListIdentityPools", input, options)
  end

  @doc """
   
  Lists the tags that are assigned to an Amazon Cognito identity pool. A tag is a
  label that you can apply to identity pools to categorize and manage them in
  different ways, such as by purpose, owner, environment, or other criteria.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentity%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_tags_for_resource_input`)
    %{
      required("ResourceArn") => String.t()
    }
  """
  @spec list_tags_for_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
   
  Retrieves the `IdentityID` associated with a `DeveloperUserIdentifier` or the
  list of `DeveloperUserIdentifier` values associated with an `IdentityId` for
  an existing identity. Either `IdentityID` or `DeveloperUserIdentifier` must
  not be null. If you supply only one of these values, the other value will be
  searched in the database and returned as a part of the response. If you supply
  both, `DeveloperUserIdentifier` will be matched against `IdentityID`. If the
  values are verified against the database, the response returns both values and
  is the same as the request. Otherwise a `ResourceConflictException` is thrown.
  `LookupDeveloperIdentity` is intended for low-throughput control plane
  operations: for example, to enable customer service to locate an identity ID
  by username. If you are using it for higher-volume operations such as user
  authentication, your requests are likely to be throttled.
  `GetOpenIdTokenForDeveloperIdentity` is a better option for higher-volume
  operations for user authentication.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentity%20LookupDeveloperIdentity&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:lookup_developer_identity_input`)
    %{
      optional("DeveloperUserIdentifier") => String.t(),
      optional("IdentityId") => String.t(),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("IdentityPoolId") => String.t()
    }
  """
  @spec lookup_developer_identity(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, lookup_developer_identity_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, lookup_developer_identity_errors()}
  def lookup_developer_identity(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "LookupDeveloperIdentity", input, options)
  end

  @doc """
   
  Merges two users having different `IdentityId`s, existing in the same identity
  pool, and identified by the same developer provider. You can use this action
  to request that discrete users be merged and identified as a single user in
  the Cognito environment. Cognito associates the given source user
  (`SourceUserIdentifier`) with the `IdentityId` of the
  `DestinationUserIdentifier`. Only developer-authenticated users can be merged.
  If the users to be merged are associated with the same public provider, but as
  two different users, an exception will be thrown. The number of linked logins
  is limited to 20. So, the number of linked logins for the source user,
  `SourceUserIdentifier`, and the destination user, `DestinationUserIdentifier`,
  together should not be larger than 20. Otherwise, an exception will be thrown.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentity%20MergeDeveloperIdentities&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:merge_developer_identities_input`)
    %{
      required("DestinationUserIdentifier") => String.t(),
      required("DeveloperProviderName") => String.t(),
      required("IdentityPoolId") => String.t(),
      required("SourceUserIdentifier") => String.t()
    }
  """
  @spec merge_developer_identities(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, merge_developer_identities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, merge_developer_identities_errors()}
  def merge_developer_identities(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "MergeDeveloperIdentities", input, options)
  end

  @doc """
   
  Sets the roles for an identity pool. These roles are used when making calls to
  `GetCredentialsForIdentity` action.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentity%20SetIdentityPoolRoles&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:set_identity_pool_roles_input`)
    %{
      optional("RoleMappings") => map(),
      required("IdentityPoolId") => String.t(),
      required("Roles") => map()
    }
  """
  @spec set_identity_pool_roles(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, set_identity_pool_roles_errors()}
  def set_identity_pool_roles(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetIdentityPoolRoles", input, options)
  end

  @doc """
   
  You can use this operation to use default (username and clientID) attribute or
  custom attribute mappings.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentity%20SetPrincipalTagAttributeMap&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:set_principal_tag_attribute_map_input`)
    %{
      optional("PrincipalTags") => map(),
      optional("UseDefaults") => boolean(),
      required("IdentityPoolId") => String.t(),
      required("IdentityProviderName") => String.t()
    }
  """
  @spec set_principal_tag_attribute_map(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, set_principal_tag_attribute_map_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, set_principal_tag_attribute_map_errors()}
  def set_principal_tag_attribute_map(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetPrincipalTagAttributeMap", input, options)
  end

  @doc """
   
  Assigns a set of tags to the specified Amazon Cognito identity pool. A tag is a
  label that you can use to categorize and manage identity pools in different
  ways, such as by purpose, owner, environment, or other criteria. Each tag
  consists of a key and value, both of which you define. A key is a general
  category for more specific values. For example, if you have two versions of an
  identity pool, one for testing and another for production, you might assign an
  `Environment` tag key to both identity pools. The value of this key might be
  `Test` for one identity pool and `Production` for the other.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentity%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:tag_resource_input`)
    %{
      required("ResourceArn") => String.t(),
      required("Tags") => map()
    }
  """
  @spec tag_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
   
  Unlinks a `DeveloperUserIdentifier` from an existing identity. Unlinked
  developer users will be considered new identities next time they are seen. If,
  for a given Cognito identity, you remove all federated identities as well as
  the developer user identifier, the Cognito identity becomes inaccessible.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentity%20UnlinkDeveloperIdentity&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:unlink_developer_identity_input`)
    %{
      required("DeveloperProviderName") => String.t(),
      required("DeveloperUserIdentifier") => String.t(),
      required("IdentityId") => String.t(),
      required("IdentityPoolId") => String.t()
    }
  """
  @spec unlink_developer_identity(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, unlink_developer_identity_errors()}
  def unlink_developer_identity(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UnlinkDeveloperIdentity", input, options)
  end

  @doc """
   
  Unlinks a federated identity from an existing account. Unlinked logins will be
  considered new identities next time they are seen. Removing the last linked
  login will make this identity inaccessible.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentity%20UnlinkIdentity&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:unlink_identity_input`)
    %{
      required("IdentityId") => String.t(),
      required("Logins") => map(),
      required("LoginsToRemove") => list(String.t()())
    }
  """
  @spec unlink_identity(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, unlink_identity_errors()}
  def unlink_identity(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UnlinkIdentity", input, options)
  end

  @doc """
   
  Removes the specified tags from the specified Amazon Cognito identity pool. You
  can use this action up to 5 times per second, per account

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentity%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:untag_resource_input`)
    %{
      required("ResourceArn") => String.t(),
      required("TagKeys") => list(String.t()())
    }
  """
  @spec untag_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
   
  Updates an identity pool.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentity%20UpdateIdentityPool&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:identity_pool`)
    %{
      "AllowClassicFlow" => boolean(),
      "AllowUnauthenticatedIdentities" => boolean(),
      "CognitoIdentityProviders" => list(cognito_identity_provider()()),
      "DeveloperProviderName" => String.t(),
      "IdentityPoolId" => String.t(),
      "IdentityPoolName" => String.t(),
      "IdentityPoolTags" => map(),
      "OpenIdConnectProviderARNs" => list(String.t()()),
      "SamlProviderARNs" => list(String.t()()),
      "SupportedLoginProviders" => map()
    }
  """
  @spec update_identity_pool(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, identity_pool(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_identity_pool_errors()}
  def update_identity_pool(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateIdentityPool", input, options)
  end
end
