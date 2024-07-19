# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.LicenseManagerUserSubscriptions do
  @moduledoc """
  With License Manager, you can create user-based subscriptions to utilize
  licensed software with a per user subscription fee on Amazon EC2 instances.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      stop_product_subscription_request() :: %{
        optional("Domain") => [String.t()],
        required("IdentityProvider") => list(),
        required("Product") => [String.t()],
        required("Username") => [String.t()]
      }
      
  """
  @type stop_product_subscription_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_user_request() :: %{
        optional("Domain") => [String.t()],
        required("IdentityProvider") => list(),
        required("InstanceId") => [String.t()],
        required("Username") => [String.t()]
      }
      
  """
  @type disassociate_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_identity_providers_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => [String.t()]
      }
      
  """
  @type list_identity_providers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_product_subscriptions_request() :: %{
        optional("Filters") => list(filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => [String.t()],
        required("IdentityProvider") => list(),
        required("Product") => [String.t()]
      }
      
  """
  @type list_product_subscriptions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_user_summary() :: %{
        "AssociationDate" => [String.t()],
        "DisassociationDate" => [String.t()],
        "Domain" => [String.t()],
        "IdentityProvider" => list(),
        "InstanceId" => [String.t()],
        "Status" => [String.t()],
        "StatusMessage" => [String.t()],
        "Username" => [String.t()]
      }
      
  """
  @type instance_user_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_settings() :: %{
        "AddSubnets" => list(String.t()()),
        "RemoveSubnets" => list(String.t()()),
        "SecurityGroupId" => String.t()
      }
      
  """
  @type update_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_identity_provider_request() :: %{
        required("IdentityProvider") => list(),
        required("Product") => [String.t()]
      }
      
  """
  @type deregister_identity_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_user_associations_response() :: %{
        optional("InstanceUserSummaries") => list(instance_user_summary()()),
        optional("NextToken") => [String.t()]
      }
      
  """
  @type list_user_associations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_identity_provider_settings_response() :: %{
        required("IdentityProviderSummary") => identity_provider_summary()
      }
      
  """
  @type update_identity_provider_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_identity_provider_response() :: %{
        required("IdentityProviderSummary") => identity_provider_summary()
      }
      
  """
  @type register_identity_provider_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      settings() :: %{
        "SecurityGroupId" => String.t(),
        "Subnets" => list(String.t()())
      }
      
  """
  @type settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_product_subscription_response() :: %{
        required("ProductUserSummary") => product_user_summary()
      }
      
  """
  @type stop_product_subscription_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_user_response() :: %{
        required("InstanceUserSummary") => instance_user_summary()
      }
      
  """
  @type disassociate_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_user_response() :: %{
        required("InstanceUserSummary") => instance_user_summary()
      }
      
  """
  @type associate_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      product_user_summary() :: %{
        "Domain" => [String.t()],
        "IdentityProvider" => list(),
        "Product" => [String.t()],
        "Status" => [String.t()],
        "StatusMessage" => [String.t()],
        "SubscriptionEndDate" => [String.t()],
        "SubscriptionStartDate" => [String.t()],
        "Username" => [String.t()]
      }
      
  """
  @type product_user_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      identity_provider_summary() :: %{
        "FailureMessage" => [String.t()],
        "IdentityProvider" => list(),
        "Product" => [String.t()],
        "Settings" => settings(),
        "Status" => [String.t()]
      }
      
  """
  @type identity_provider_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_instances_request() :: %{
        optional("Filters") => list(filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => [String.t()]
      }
      
  """
  @type list_instances_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      filter() :: %{
        "Attribute" => [String.t()],
        "Operation" => [String.t()],
        "Value" => [String.t()]
      }
      
  """
  @type filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_product_subscriptions_response() :: %{
        optional("NextToken") => [String.t()],
        optional("ProductUserSummaries") => list(product_user_summary()())
      }
      
  """
  @type list_product_subscriptions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_instances_response() :: %{
        optional("InstanceSummaries") => list(instance_summary()()),
        optional("NextToken") => [String.t()]
      }
      
  """
  @type list_instances_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_identity_provider_settings_request() :: %{
        required("IdentityProvider") => list(),
        required("Product") => [String.t()],
        required("UpdateSettings") => update_settings()
      }
      
  """
  @type update_identity_provider_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_identity_provider_request() :: %{
        optional("Settings") => settings(),
        required("IdentityProvider") => list(),
        required("Product") => [String.t()]
      }
      
  """
  @type register_identity_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_identity_provider_response() :: %{
        required("IdentityProviderSummary") => identity_provider_summary()
      }
      
  """
  @type deregister_identity_provider_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_identity_providers_response() :: %{
        optional("NextToken") => [String.t()],
        required("IdentityProviderSummaries") => list(identity_provider_summary()())
      }
      
  """
  @type list_identity_providers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_summary() :: %{
        "InstanceId" => [String.t()],
        "LastStatusCheckDate" => [String.t()],
        "Products" => list([String.t()]()),
        "Status" => [String.t()],
        "StatusMessage" => [String.t()]
      }
      
  """
  @type instance_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_product_subscription_request() :: %{
        optional("Domain") => [String.t()],
        required("IdentityProvider") => list(),
        required("Product") => [String.t()],
        required("Username") => [String.t()]
      }
      
  """
  @type start_product_subscription_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_product_subscription_response() :: %{
        required("ProductUserSummary") => product_user_summary()
      }
      
  """
  @type start_product_subscription_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_user_request() :: %{
        optional("Domain") => [String.t()],
        required("IdentityProvider") => list(),
        required("InstanceId") => [String.t()],
        required("Username") => [String.t()]
      }
      
  """
  @type associate_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_user_associations_request() :: %{
        optional("Filters") => list(filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => [String.t()],
        required("IdentityProvider") => list(),
        required("InstanceId") => [String.t()]
      }
      
  """
  @type list_user_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      active_directory_identity_provider() :: %{
        "DirectoryId" => [String.t()]
      }
      
  """
  @type active_directory_identity_provider() :: %{String.t() => any()}

  @type associate_user_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type deregister_identity_provider_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_user_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_identity_providers_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_instances_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_product_subscriptions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_user_associations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type register_identity_provider_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_product_subscription_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type stop_product_subscription_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_identity_provider_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "license-manager-user-subscriptions",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "License Manager User Subscriptions",
      signature_version: "v4",
      signing_name: "license-manager-user-subscriptions",
      target_prefix: nil
    }
  end

  @doc """
  Associates the user to an EC2 instance to utilize user-based subscriptions.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=licensemanagerusersubscriptions%20AssociateUser&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec associate_user(AWS.Client.t(), Keyword.t()) ::
          {:ok, associate_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_user_errors()}

  def associate_user(%Client{} = client, options \\ []) do
    url_path = "/user/AssociateUser"

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
  Deregisters the identity provider from providing user-based subscriptions.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=licensemanagerusersubscriptions%20DeregisterIdentityProvider&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec deregister_identity_provider(AWS.Client.t(), Keyword.t()) ::
          {:ok, deregister_identity_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deregister_identity_provider_errors()}

  def deregister_identity_provider(%Client{} = client, options \\ []) do
    url_path = "/identity-provider/DeregisterIdentityProvider"

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
  Disassociates the user from an EC2 instance providing user-based subscriptions.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=licensemanagerusersubscriptions%20DisassociateUser&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec disassociate_user(AWS.Client.t(), Keyword.t()) ::
          {:ok, disassociate_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_user_errors()}

  def disassociate_user(%Client{} = client, options \\ []) do
    url_path = "/user/DisassociateUser"

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
  Lists the identity providers for user-based subscriptions.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=licensemanagerusersubscriptions%20ListIdentityProviders&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec list_identity_providers(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_identity_providers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_identity_providers_errors()}

  def list_identity_providers(%Client{} = client, options \\ []) do
    url_path = "/identity-provider/ListIdentityProviders"

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
  Lists the EC2 instances providing user-based subscriptions.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=licensemanagerusersubscriptions%20ListInstances&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec list_instances(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_instances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_instances_errors()}

  def list_instances(%Client{} = client, options \\ []) do
    url_path = "/instance/ListInstances"

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
  Lists the user-based subscription products available from an identity provider.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=licensemanagerusersubscriptions%20ListProductSubscriptions&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec list_product_subscriptions(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_product_subscriptions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_product_subscriptions_errors()}

  def list_product_subscriptions(%Client{} = client, options \\ []) do
    url_path = "/user/ListProductSubscriptions"

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
  Lists user associations for an identity provider.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=licensemanagerusersubscriptions%20ListUserAssociations&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec list_user_associations(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_user_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_user_associations_errors()}

  def list_user_associations(%Client{} = client, options \\ []) do
    url_path = "/user/ListUserAssociations"

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
  Registers an identity provider for user-based subscriptions.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=licensemanagerusersubscriptions%20RegisterIdentityProvider&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec register_identity_provider(AWS.Client.t(), Keyword.t()) ::
          {:ok, register_identity_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_identity_provider_errors()}

  def register_identity_provider(%Client{} = client, options \\ []) do
    url_path = "/identity-provider/RegisterIdentityProvider"

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
  Starts a product subscription for a user with the specified identity provider.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=licensemanagerusersubscriptions%20StartProductSubscription&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec start_product_subscription(AWS.Client.t(), Keyword.t()) ::
          {:ok, start_product_subscription_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_product_subscription_errors()}

  def start_product_subscription(%Client{} = client, options \\ []) do
    url_path = "/user/StartProductSubscription"

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
  Stops a product subscription for a user with the specified identity provider.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=licensemanagerusersubscriptions%20StopProductSubscription&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec stop_product_subscription(AWS.Client.t(), Keyword.t()) ::
          {:ok, stop_product_subscription_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_product_subscription_errors()}

  def stop_product_subscription(%Client{} = client, options \\ []) do
    url_path = "/user/StopProductSubscription"

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
  Updates additional product configuration settings for the registered identity
  provider.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=licensemanagerusersubscriptions%20UpdateIdentityProviderSettings&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec update_identity_provider_settings(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_identity_provider_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_identity_provider_settings_errors()}

  def update_identity_provider_settings(%Client{} = client, options \\ []) do
    url_path = "/identity-provider/UpdateIdentityProviderSettings"

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
