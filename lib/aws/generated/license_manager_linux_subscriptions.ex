# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.LicenseManagerLinuxSubscriptions do
  @moduledoc """
  With License Manager, you can discover and track your commercial Linux
  subscriptions on running Amazon EC2 instances.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      deregister_subscription_provider_request() :: %{
        required("SubscriptionProviderArn") => String.t()
      }
      
  """
  @type deregister_subscription_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_subscription_provider_response() :: %{}
      
  """
  @type deregister_subscription_provider_response() :: %{}

  @typedoc """

  ## Example:
      
      filter() :: %{
        "Name" => [String.t()],
        "Operator" => String.t(),
        "Values" => list([String.t()]())
      }
      
  """
  @type filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_registered_subscription_provider_request() :: %{
        required("SubscriptionProviderArn") => String.t()
      }
      
  """
  @type get_registered_subscription_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_registered_subscription_provider_response() :: %{
        "LastSuccessfulDataRetrievalTime" => [String.t()],
        "SecretArn" => String.t(),
        "SubscriptionProviderArn" => String.t(),
        "SubscriptionProviderSource" => String.t(),
        "SubscriptionProviderStatus" => String.t(),
        "SubscriptionProviderStatusMessage" => [String.t()]
      }
      
  """
  @type get_registered_subscription_provider_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_service_settings_request() :: %{}
      
  """
  @type get_service_settings_request() :: %{}

  @typedoc """

  ## Example:
      
      get_service_settings_response() :: %{
        optional("HomeRegions") => list([String.t()]()),
        optional("LinuxSubscriptionsDiscovery") => String.t(),
        optional("LinuxSubscriptionsDiscoverySettings") => linux_subscriptions_discovery_settings(),
        optional("Status") => String.t(),
        optional("StatusMessage") => map()
      }
      
  """
  @type get_service_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance() :: %{
        "AccountID" => [String.t()],
        "AmiId" => [String.t()],
        "DualSubscription" => [String.t()],
        "InstanceID" => [String.t()],
        "InstanceType" => [String.t()],
        "LastUpdatedTime" => [String.t()],
        "OsVersion" => [String.t()],
        "ProductCode" => list([String.t()]()),
        "Region" => [String.t()],
        "RegisteredWithSubscriptionProvider" => [String.t()],
        "Status" => [String.t()],
        "SubscriptionName" => [String.t()],
        "SubscriptionProviderCreateTime" => [String.t()],
        "SubscriptionProviderUpdateTime" => [String.t()],
        "UsageOperation" => [String.t()]
      }
      
  """
  @type instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      linux_subscriptions_discovery_settings() :: %{
        "OrganizationIntegration" => String.t(),
        "SourceRegions" => list([String.t()]())
      }
      
  """
  @type linux_subscriptions_discovery_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_linux_subscription_instances_request() :: %{
        "Filters" => list(filter()()),
        "MaxResults" => integer(),
        "NextToken" => [String.t()]
      }
      
  """
  @type list_linux_subscription_instances_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_linux_subscription_instances_response() :: %{
        optional("Instances") => list(instance()()),
        optional("NextToken") => [String.t()]
      }
      
  """
  @type list_linux_subscription_instances_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_linux_subscriptions_request() :: %{
        "Filters" => list(filter()()),
        "MaxResults" => integer(),
        "NextToken" => [String.t()]
      }
      
  """
  @type list_linux_subscriptions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_linux_subscriptions_response() :: %{
        optional("NextToken") => [String.t()],
        optional("Subscriptions") => list(subscription()())
      }
      
  """
  @type list_linux_subscriptions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_registered_subscription_providers_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => [String.t()],
        optional("SubscriptionProviderSources") => list(String.t()())
      }
      
  """
  @type list_registered_subscription_providers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_registered_subscription_providers_response() :: %{
        "NextToken" => [String.t()],
        "RegisteredSubscriptionProviders" => list(registered_subscription_provider()())
      }
      
  """
  @type list_registered_subscription_providers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{}
      
  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "tags" => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_subscription_provider_request() :: %{
        optional("Tags") => map(),
        required("SecretArn") => String.t(),
        required("SubscriptionProviderSource") => String.t()
      }
      
  """
  @type register_subscription_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_subscription_provider_response() :: %{
        "SubscriptionProviderArn" => [String.t()],
        "SubscriptionProviderSource" => String.t(),
        "SubscriptionProviderStatus" => String.t()
      }
      
  """
  @type register_subscription_provider_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      registered_subscription_provider() :: %{
        "LastSuccessfulDataRetrievalTime" => [String.t()],
        "SecretArn" => String.t(),
        "SubscriptionProviderArn" => String.t(),
        "SubscriptionProviderSource" => String.t(),
        "SubscriptionProviderStatus" => String.t(),
        "SubscriptionProviderStatusMessage" => [String.t()]
      }
      
  """
  @type registered_subscription_provider() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subscription() :: %{
        "InstanceCount" => float(),
        "Name" => [String.t()],
        "Type" => [String.t()]
      }
      
  """
  @type subscription() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("tagKeys") => list([String.t()]())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      update_service_settings_request() :: %{
        optional("AllowUpdate") => [boolean()],
        required("LinuxSubscriptionsDiscovery") => String.t(),
        required("LinuxSubscriptionsDiscoverySettings") => linux_subscriptions_discovery_settings()
      }
      
  """
  @type update_service_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_service_settings_response() :: %{
        optional("HomeRegions") => list([String.t()]()),
        optional("LinuxSubscriptionsDiscovery") => String.t(),
        optional("LinuxSubscriptionsDiscoverySettings") => linux_subscriptions_discovery_settings(),
        optional("Status") => String.t(),
        optional("StatusMessage") => map()
      }
      
  """
  @type update_service_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @type deregister_subscription_provider_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()

  @type get_registered_subscription_provider_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()

  @type get_service_settings_errors() ::
          validation_exception() | throttling_exception() | internal_server_exception()

  @type list_linux_subscription_instances_errors() ::
          validation_exception() | throttling_exception() | internal_server_exception()

  @type list_linux_subscriptions_errors() ::
          validation_exception() | throttling_exception() | internal_server_exception()

  @type list_registered_subscription_providers_errors() ::
          validation_exception() | throttling_exception() | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | resource_not_found_exception() | internal_server_exception()

  @type register_subscription_provider_errors() ::
          validation_exception() | throttling_exception() | internal_server_exception()

  @type tag_resource_errors() ::
          validation_exception() | resource_not_found_exception() | internal_server_exception()

  @type untag_resource_errors() :: resource_not_found_exception() | internal_server_exception()

  @type update_service_settings_errors() ::
          validation_exception() | throttling_exception() | internal_server_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "license-manager-linux-subscriptions",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "License Manager Linux Subscriptions",
      signature_version: "v4",
      signing_name: "license-manager-linux-subscriptions",
      target_prefix: nil
    }
  end

  @doc """
  Remove a third-party subscription provider from the Bring Your Own License
  (BYOL) subscriptions registered to your account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=licensemanagerlinuxsubscriptions%20DeregisterSubscriptionProvider&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec deregister_subscription_provider(AWS.Client.t(), Keyword.t()) ::
          {:ok, deregister_subscription_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deregister_subscription_provider_errors()}
  def deregister_subscription_provider(%Client{} = client, options \\ []) do
    url_path = "/subscription/DeregisterSubscriptionProvider"

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
  Get details for a Bring Your Own License (BYOL) subscription that's registered
  to your account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=licensemanagerlinuxsubscriptions%20GetRegisteredSubscriptionProvider&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec get_registered_subscription_provider(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_registered_subscription_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_registered_subscription_provider_errors()}
  def get_registered_subscription_provider(%Client{} = client, options \\ []) do
    url_path = "/subscription/GetRegisteredSubscriptionProvider"

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
  Lists the Linux subscriptions service settings for your account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=licensemanagerlinuxsubscriptions%20GetServiceSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec get_service_settings(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_service_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_service_settings_errors()}
  def get_service_settings(%Client{} = client, options \\ []) do
    url_path = "/subscription/GetServiceSettings"

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
  Lists the running Amazon EC2 instances that were discovered with commercial
  Linux subscriptions.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=licensemanagerlinuxsubscriptions%20ListLinuxSubscriptionInstances&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec list_linux_subscription_instances(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_linux_subscription_instances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_linux_subscription_instances_errors()}
  def list_linux_subscription_instances(%Client{} = client, options \\ []) do
    url_path = "/subscription/ListLinuxSubscriptionInstances"

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
  Lists the Linux subscriptions that have been discovered. If you have linked your
  organization, the returned results will include data aggregated across your
  accounts in Organizations.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=licensemanagerlinuxsubscriptions%20ListLinuxSubscriptions&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec list_linux_subscriptions(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_linux_subscriptions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_linux_subscriptions_errors()}
  def list_linux_subscriptions(%Client{} = client, options \\ []) do
    url_path = "/subscription/ListLinuxSubscriptions"

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
  List Bring Your Own License (BYOL) subscription registration resources for your
  account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=licensemanagerlinuxsubscriptions%20ListRegisteredSubscriptionProviders&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec list_registered_subscription_providers(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_registered_subscription_providers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_registered_subscription_providers_errors()}
  def list_registered_subscription_providers(%Client{} = client, options \\ []) do
    url_path = "/subscription/ListRegisteredSubscriptionProviders"

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
  List the metadata tags that are assigned to the specified Amazon Web Services
  resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=licensemanagerlinuxsubscriptions%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
    resource for which to list metadata tags.
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
  Register the supported third-party subscription provider for your Bring Your Own
  License (BYOL) subscription.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=licensemanagerlinuxsubscriptions%20RegisterSubscriptionProvider&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec register_subscription_provider(AWS.Client.t(), Keyword.t()) ::
          {:ok, register_subscription_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_subscription_provider_errors()}
  def register_subscription_provider(%Client{} = client, options \\ []) do
    url_path = "/subscription/RegisterSubscriptionProvider"

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
  Add metadata tags to the specified Amazon Web Services resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=licensemanagerlinuxsubscriptions%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
    Amazon Web Services resource to which to add the specified metadata tags.
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

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Remove one or more metadata tag from the specified Amazon Web Services resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=licensemanagerlinuxsubscriptions%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
    Amazon Web Services resource to remove the metadata tags from.
  * `:tag_keys` (`t:list[smithy.api#String]` required) A list of metadata tag keys
    to remove from the requested resource.
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

  @doc """
  Updates the service settings for Linux subscriptions.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=licensemanagerlinuxsubscriptions%20UpdateServiceSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec update_service_settings(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_service_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_service_settings_errors()}
  def update_service_settings(%Client{} = client, options \\ []) do
    url_path = "/subscription/UpdateServiceSettings"

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
