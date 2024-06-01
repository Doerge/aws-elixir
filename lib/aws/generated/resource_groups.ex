# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ResourceGroups do
  @moduledoc """
  Resource Groups lets you organize Amazon Web Services resources such as Amazon
  Elastic Compute Cloud instances, Amazon Relational Database Service databases,
  and Amazon Simple Storage Service buckets into groups using criteria that you
  define as tags. A resource group is a collection of resources that match the
  resource types specified in a query, and share one or more tags or portions of
  tags. You can create a group of resources based on their roles in your cloud
  infrastructure, lifecycle stages, regions, application layers, or virtually
  any criteria. Resource Groups enable you to automate management tasks, such as
  those in Amazon Web Services Systems Manager Automation documents, on
  tag-related resources in Amazon Web Services Systems Manager. Groups of tagged
  resources also let you quickly view a custom console in Amazon Web Services
  Systems Manager that shows Config compliance and other monitoring data about
  member resources. To create a resource group, build a resource query, and
  specify tags that identify the criteria that members of the group have in
  common. Tags are key-value pairs.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      resource_filter() :: %{
        "Name" => list(any()),
        "Values" => list(String.t()())
      }

  """
  @type resource_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unauthorized_exception() :: %{
        "Message" => String.t()
      }

  """
  @type unauthorized_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_group_input() :: %{
        optional("Configuration") => list(group_configuration_item()()),
        optional("Description") => String.t(),
        optional("ResourceQuery") => resource_query(),
        optional("Tags") => map(),
        required("Name") => String.t()
      }

  """
  @type create_group_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_group_query_output() :: %{
        "GroupQuery" => group_query()
      }

  """
  @type update_group_query_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_group_resources_item() :: %{
        "Identifier" => resource_identifier(),
        "Status" => resource_status()
      }

  """
  @type list_group_resources_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      forbidden_exception() :: %{
        "Message" => String.t()
      }

  """
  @type forbidden_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_output() :: %{
        "Arn" => String.t(),
        "Tags" => map()
      }

  """
  @type tag_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      method_not_allowed_exception() :: %{
        "Message" => String.t()
      }

  """
  @type method_not_allowed_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_group_query_input() :: %{
        optional("Group") => String.t(),
        optional("GroupName") => String.t(),
        required("ResourceQuery") => resource_query()
      }

  """
  @type update_group_query_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_group_configuration_input() :: %{
        optional("Group") => String.t()
      }

  """
  @type get_group_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_status() :: %{
        "Name" => list(any())
      }

  """
  @type resource_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_query() :: %{
        "Query" => String.t(),
        "Type" => list(any())
      }

  """
  @type resource_query() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_requests_exception() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      group_identifier() :: %{
        "GroupArn" => String.t(),
        "GroupName" => String.t()
      }

  """
  @type group_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_tags_output() :: %{
        "Arn" => String.t(),
        "Tags" => map()
      }

  """
  @type get_tags_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_input() :: %{
        required("Keys") => list(String.t()())
      }

  """
  @type untag_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_group_output() :: %{
        "Group" => group()
      }

  """
  @type update_group_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_group_configuration_input() :: %{
        optional("Configuration") => list(group_configuration_item()()),
        optional("Group") => String.t()
      }

  """
  @type put_group_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_groups_output() :: %{
        "GroupIdentifiers" => list(group_identifier()()),
        "Groups" => list(group()()),
        "NextToken" => String.t()
      }

  """
  @type list_groups_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_group_query_input() :: %{
        optional("Group") => String.t(),
        optional("GroupName") => String.t()
      }

  """
  @type get_group_query_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_group_configuration_output() :: %{
        "GroupConfiguration" => group_configuration()
      }

  """
  @type get_group_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pending_resource() :: %{
        "ResourceArn" => String.t()
      }

  """
  @type pending_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_group_query_output() :: %{
        "GroupQuery" => group_query()
      }

  """
  @type get_group_query_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      group_resources_output() :: %{
        "Failed" => list(failed_resource()()),
        "Pending" => list(pending_resource()()),
        "Succeeded" => list(String.t()())
      }

  """
  @type group_resources_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_identifier() :: %{
        "ResourceArn" => String.t(),
        "ResourceType" => String.t()
      }

  """
  @type resource_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      group_configuration_parameter() :: %{
        "Name" => String.t(),
        "Values" => list(String.t()())
      }

  """
  @type group_configuration_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_group_output() :: %{
        "Group" => group(),
        "GroupConfiguration" => group_configuration(),
        "ResourceQuery" => resource_query(),
        "Tags" => map()
      }

  """
  @type create_group_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ungroup_resources_output() :: %{
        "Failed" => list(failed_resource()()),
        "Pending" => list(pending_resource()()),
        "Succeeded" => list(String.t()())
      }

  """
  @type ungroup_resources_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_resources_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ResourceQuery") => resource_query()
      }

  """
  @type search_resources_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      not_found_exception() :: %{
        "Message" => String.t()
      }

  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      group_filter() :: %{
        "Name" => list(any()),
        "Values" => list(String.t()())
      }

  """
  @type group_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      group_resources_input() :: %{
        required("Group") => String.t(),
        required("ResourceArns") => list(String.t()())
      }

  """
  @type group_resources_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_resources_output() :: %{
        "NextToken" => String.t(),
        "QueryErrors" => list(query_error()()),
        "ResourceIdentifiers" => list(resource_identifier()())
      }

  """
  @type search_resources_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_group_resources_output() :: %{
        "NextToken" => String.t(),
        "QueryErrors" => list(query_error()()),
        "ResourceIdentifiers" => list(resource_identifier()()),
        "Resources" => list(list_group_resources_item()())
      }

  """
  @type list_group_resources_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_group_input() :: %{
        optional("Group") => String.t(),
        optional("GroupName") => String.t()
      }

  """
  @type delete_group_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      group_query() :: %{
        "GroupName" => String.t(),
        "ResourceQuery" => resource_query()
      }

  """
  @type group_query() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_account_settings_input() :: %{
        optional("GroupLifecycleEventsDesiredStatus") => list(any())
      }

  """
  @type update_account_settings_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_group_output() :: %{
        "Group" => group()
      }

  """
  @type get_group_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_account_settings_output() :: %{
        "AccountSettings" => account_settings()
      }

  """
  @type update_account_settings_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_group_input() :: %{
        optional("Group") => String.t(),
        optional("GroupName") => String.t()
      }

  """
  @type get_group_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_group_resources_input() :: %{
        optional("Filters") => list(resource_filter()()),
        optional("Group") => String.t(),
        optional("GroupName") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_group_resources_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      account_settings() :: %{
        "GroupLifecycleEventsDesiredStatus" => list(any()),
        "GroupLifecycleEventsStatus" => list(any()),
        "GroupLifecycleEventsStatusMessage" => String.t()
      }

  """
  @type account_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_group_input() :: %{
        optional("Description") => String.t(),
        optional("Group") => String.t(),
        optional("GroupName") => String.t()
      }

  """
  @type update_group_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_error_exception() :: %{
        "Message" => String.t()
      }

  """
  @type internal_server_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_tags_input() :: %{}

  """
  @type get_tags_input() :: %{}

  @typedoc """

  ## Example:

      group() :: %{
        "Description" => String.t(),
        "GroupArn" => String.t(),
        "Name" => String.t()
      }

  """
  @type group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_account_settings_output() :: %{
        "AccountSettings" => account_settings()
      }

  """
  @type get_account_settings_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ungroup_resources_input() :: %{
        required("Group") => String.t(),
        required("ResourceArns") => list(String.t()())
      }

  """
  @type ungroup_resources_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_groups_input() :: %{
        optional("Filters") => list(group_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_groups_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_output() :: %{
        "Arn" => String.t(),
        "Keys" => list(String.t()())
      }

  """
  @type untag_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      failed_resource() :: %{
        "ErrorCode" => String.t(),
        "ErrorMessage" => String.t(),
        "ResourceArn" => String.t()
      }

  """
  @type failed_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "Message" => String.t()
      }

  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_group_output() :: %{
        "Group" => group()
      }

  """
  @type delete_group_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      group_configuration() :: %{
        "Configuration" => list(group_configuration_item()()),
        "FailureReason" => String.t(),
        "ProposedConfiguration" => list(group_configuration_item()()),
        "Status" => list(any())
      }

  """
  @type group_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      query_error() :: %{
        "ErrorCode" => list(any()),
        "Message" => String.t()
      }

  """
  @type query_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_group_configuration_output() :: %{}

  """
  @type put_group_configuration_output() :: %{}

  @typedoc """

  ## Example:

      group_configuration_item() :: %{
        "Parameters" => list(group_configuration_parameter()()),
        "Type" => String.t()
      }

  """
  @type group_configuration_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_input() :: %{
        required("Tags") => map()
      }

  """
  @type tag_input() :: %{String.t() => any()}

  @type create_group_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type delete_group_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_account_settings_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_group_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_group_configuration_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_group_query_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_tags_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type group_resources_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type list_group_resources_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type list_groups_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type put_group_configuration_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type search_resources_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type tag_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type ungroup_resources_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type untag_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type update_account_settings_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type update_group_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type update_group_query_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  def metadata do
    %{
      api_version: "2017-11-27",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "resource-groups",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Resource Groups",
      signature_version: "v4",
      signing_name: "resource-groups",
      target_prefix: nil
    }
  end

  @doc """
  Creates a resource group with the specified name and description. You can
  optionally include either a resource query or a service configuration. For
  more information about constructing a resource query, see [Build queries and
  groups in Resource
  Groups](https://docs.aws.amazon.com/ARG/latest/userguide/getting_started-query.html)
  in the *Resource Groups User Guide*. For more information about service-linked
  groups and service configurations, see [Service configurations for Resource
  Groups](https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html).
  **Minimum permissions**

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourcegroups%20CreateGroup&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_group(AWS.Client.t(), create_group_input(), Keyword.t()) ::
          {:ok, create_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_group_errors()}
  def create_group(%Client{} = client, input, options \\ []) do
    url_path = "/groups"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes the specified resource group. Deleting a resource group does not delete
  any resources that are members of the group; it only deletes the group
  structure. **Minimum permissions**

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourcegroups%20DeleteGroup&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec delete_group(AWS.Client.t(), delete_group_input(), Keyword.t()) ::
          {:ok, delete_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_group_errors()}
  def delete_group(%Client{} = client, input, options \\ []) do
    url_path = "/delete-group"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Retrieves the current status of optional features in Resource Groups.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourcegroups%20GetAccountSettings&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec get_account_settings(AWS.Client.t(), %{}, Keyword.t()) ::
          {:ok, get_account_settings_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_account_settings_errors()}
  def get_account_settings(%Client{} = client, input, options \\ []) do
    url_path = "/get-account-settings"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns information about a specified resource group. **Minimum permissions**

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourcegroups%20GetGroup&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec get_group(AWS.Client.t(), get_group_input(), Keyword.t()) ::
          {:ok, get_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_group_errors()}
  def get_group(%Client{} = client, input, options \\ []) do
    url_path = "/get-group"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Retrieves the service configuration associated with the specified resource
  group. For details about the service configuration syntax, see [Service
  configurations for Resource
  Groups](https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html).
  **Minimum permissions**

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourcegroups%20GetGroupConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec get_group_configuration(AWS.Client.t(), get_group_configuration_input(), Keyword.t()) ::
          {:ok, get_group_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_group_configuration_errors()}
  def get_group_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/get-group-configuration"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Retrieves the resource query associated with the specified resource group. For
  more information about resource queries, see [Create a tag-based group in
  Resource
  Groups](https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag).
  **Minimum permissions**

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourcegroups%20GetGroupQuery&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec get_group_query(AWS.Client.t(), get_group_query_input(), Keyword.t()) ::
          {:ok, get_group_query_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_group_query_errors()}
  def get_group_query(%Client{} = client, input, options \\ []) do
    url_path = "/get-group-query"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns a list of tags that are associated with a resource group, specified by
  an ARN. **Minimum permissions**

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourcegroups%20GetTags&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:arn` (`t:string`) The ARN of the resource group whose tags you want to
    retrieve.

  ## Optional parameters:
  """
  @spec get_tags(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_tags_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_tags_errors()}
  def get_tags(%Client{} = client, arn, options \\ []) do
    url_path = "/resources/#{AWS.Util.encode_uri(arn)}/tags"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [
    # ])

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Adds the specified resources to the specified group. You can use this operation
  with only resource groups that are configured with the following types:
  `AWS::EC2::HostManagement` `AWS::EC2::CapacityReservationPool` Other resource
  group type and resource types aren't currently supported by this operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourcegroups%20GroupResources&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec group_resources(AWS.Client.t(), group_resources_input(), Keyword.t()) ::
          {:ok, group_resources_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, group_resources_errors()}
  def group_resources(%Client{} = client, input, options \\ []) do
    url_path = "/group-resources"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns a list of ARNs of the resources that are members of a specified resource
  group. **Minimum permissions**

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourcegroups%20ListGroupResources&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec list_group_resources(AWS.Client.t(), list_group_resources_input(), Keyword.t()) ::
          {:ok, list_group_resources_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_group_resources_errors()}
  def list_group_resources(%Client{} = client, input, options \\ []) do
    url_path = "/list-group-resources"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns a list of existing Resource Groups in your account. **Minimum
  permissions**

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourcegroups%20ListGroups&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The total number of results that you want
    included on each page of the response. If you do not include this parameter,
    it defaults to a value that is specific to the operation. If additional
    items exist beyond the maximum you specify, the NextToken response element
    is present and has a value (is not null). Include that value as the
    NextToken request parameter in the next call to the operation to get the
    next part of the results. Note that the service might return fewer results
    than the maximum even when there are more results available. You should
    check NextToken after every operation to ensure that you receive all of the
    results.
  * `:next_token` (`t:string`) The parameter for receiving additional results if
    you receive a NextToken response in a previous request. A NextToken response
    indicates that more output is available. Set this parameter to the value
    provided by a previous call's NextToken response to indicate where the
    output should continue from.
  """
  @spec list_groups(AWS.Client.t(), list_groups_input(), Keyword.t()) ::
          {:ok, list_groups_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_groups_errors()}
  def list_groups(%Client{} = client, input, options \\ []) do
    url_path = "/groups-list"
    headers = []

    {query_params, input} =
      [
        {"MaxResults", "maxResults"},
        {"NextToken", "nextToken"}
      ]
      |> Request.build_params(input)

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Attaches a service configuration to the specified group. This occurs
  asynchronously, and can take time to complete. You can use
  `GetGroupConfiguration` to check the status of the update. **Minimum
  permissions**

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourcegroups%20PutGroupConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec put_group_configuration(AWS.Client.t(), put_group_configuration_input(), Keyword.t()) ::
          {:ok, put_group_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_group_configuration_errors()}
  def put_group_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/put-group-configuration"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  Returns a list of Amazon Web Services resource identifiers that matches the
  specified query. The query uses the same format as a resource query in a
  `CreateGroup` or `UpdateGroupQuery` operation. **Minimum permissions**

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourcegroups%20SearchResources&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec search_resources(AWS.Client.t(), search_resources_input(), Keyword.t()) ::
          {:ok, search_resources_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_resources_errors()}
  def search_resources(%Client{} = client, input, options \\ []) do
    url_path = "/resources/search"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Adds tags to a resource group with the specified ARN. Existing tags on a
  resource group are not changed if they are not specified in the request
  parameters. Do not store personally identifiable information (PII) or other
  confidential or sensitive information in tags. We use tags to provide you with
  billing and administration services. Tags are not intended to be used for
  private or sensitive data.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourcegroups%20Tag&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:arn` (`t:string`) The ARN of the resource group to which to add tags.

  ## Optional parameters:
  """
  @spec tag(AWS.Client.t(), String.t(), tag_input(), Keyword.t()) ::
          {:ok, tag_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_errors()}
  def tag(%Client{} = client, arn, input, options \\ []) do
    url_path = "/resources/#{AWS.Util.encode_uri(arn)}/tags"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Removes the specified resources from the specified group. This operation works
  only with static groups that you populated using the `GroupResources`
  operation. It doesn't work with any resource groups that are automatically
  populated by tag-based or CloudFormation stack-based queries. **Minimum
  permissions**

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourcegroups%20UngroupResources&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec ungroup_resources(AWS.Client.t(), ungroup_resources_input(), Keyword.t()) ::
          {:ok, ungroup_resources_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, ungroup_resources_errors()}
  def ungroup_resources(%Client{} = client, input, options \\ []) do
    url_path = "/ungroup-resources"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes tags from a specified resource group. **Minimum permissions**

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourcegroups%20Untag&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:arn` (`t:string`) The ARN of the resource group from which to remove tags.
    The command removed both the specified keys and any values associated with
    those keys.

  ## Optional parameters:
  """
  @spec untag(AWS.Client.t(), String.t(), untag_input(), Keyword.t()) ::
          {:ok, untag_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_errors()}
  def untag(%Client{} = client, arn, input, options \\ []) do
    url_path = "/resources/#{AWS.Util.encode_uri(arn)}/tags"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Turns on or turns off optional features in Resource Groups.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourcegroups%20UpdateAccountSettings&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec update_account_settings(AWS.Client.t(), update_account_settings_input(), Keyword.t()) ::
          {:ok, update_account_settings_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_account_settings_errors()}
  def update_account_settings(%Client{} = client, input, options \\ []) do
    url_path = "/update-account-settings"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the description for an existing group. You cannot update the name of a
  resource group. **Minimum permissions**

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourcegroups%20UpdateGroup&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec update_group(AWS.Client.t(), update_group_input(), Keyword.t()) ::
          {:ok, update_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_group_errors()}
  def update_group(%Client{} = client, input, options \\ []) do
    url_path = "/update-group"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the resource query of a group. For more information about resource
  queries, see [Create a tag-based group in Resource
  Groups](https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag).
  **Minimum permissions**

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourcegroups%20UpdateGroupQuery&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec update_group_query(AWS.Client.t(), update_group_query_input(), Keyword.t()) ::
          {:ok, update_group_query_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_group_query_errors()}
  def update_group_query(%Client{} = client, input, options \\ []) do
    url_path = "/update-group-query"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
