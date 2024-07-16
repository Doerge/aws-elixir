# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ResourceExplorer2 do
  @moduledoc """
  Amazon Web Services Resource Explorer is a resource search and discovery
  service. By using Resource Explorer, you can explore your resources using an
  internet search engine-like experience. Examples of resources include Amazon
  Relational Database Service (Amazon RDS) instances, Amazon Simple Storage
  Service (Amazon S3) buckets, or Amazon DynamoDB tables. You can search for
  your resources using resource metadata like names, tags, and IDs. Resource
  Explorer can search across all of the Amazon Web Services Regions in your
  account in which you turn the service on, to simplify your cross-Region
  workloads.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      create_index_output() :: %{
        optional("Arn") => [String.t()],
        optional("CreatedAt") => [non_neg_integer()],
        optional("State") => String.t()
      }

  """
  @type create_index_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_property() :: %{
        "Data" => [any()],
        "LastReportedAt" => [non_neg_integer()],
        "Name" => [String.t()]
      }

  """
  @type resource_property() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_view_output() :: %{
        optional("Errors") => list(batch_get_view_error()()),
        optional("Views") => list(view()())
      }

  """
  @type batch_get_view_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unauthorized_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type unauthorized_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_view_output() :: %{
        optional("View") => view()
      }

  """
  @type create_view_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_indexes_for_members_input() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => [String.t()],
        required("AccountIdList") => list(String.t()())
      }

  """
  @type list_indexes_for_members_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      included_property() :: %{
        "Name" => [String.t()]
      }

  """
  @type included_property() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_input() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => [String.t()],
        optional("ViewArn") => [String.t()],
        required("QueryString") => String.t()
      }

  """
  @type search_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      view() :: %{
        "Filters" => search_filter(),
        "IncludedProperties" => list(included_property()()),
        "LastUpdatedAt" => [non_neg_integer()],
        "Owner" => [String.t()],
        "Scope" => [String.t()],
        "ViewArn" => [String.t()]
      }

  """
  @type view() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_default_view_input() :: %{
        required("ViewArn") => [String.t()]
      }

  """
  @type associate_default_view_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_view_input() :: %{
        required("ViewArn") => [String.t()]
      }

  """
  @type delete_view_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_views_output() :: %{
        optional("NextToken") => [String.t()],
        optional("Views") => list([String.t()]())
      }

  """
  @type list_views_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_view_output() :: %{
        optional("ViewArn") => [String.t()]
      }

  """
  @type delete_view_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_output() :: %{
        optional("Tags") => map()
      }

  """
  @type list_tags_for_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_count() :: %{
        "Complete" => [boolean()],
        "TotalResources" => [float()]
      }

  """
  @type resource_count() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_view_input() :: %{
        optional("ViewArns") => list([String.t()]())
      }

  """
  @type batch_get_view_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_supported_resource_types_input() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => [String.t()]
      }

  """
  @type list_supported_resource_types_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_index_output() :: %{
        optional("Arn") => [String.t()],
        optional("CreatedAt") => [non_neg_integer()],
        optional("LastUpdatedAt") => [non_neg_integer()],
        optional("ReplicatingFrom") => list([String.t()]()),
        optional("ReplicatingTo") => list([String.t()]()),
        optional("State") => String.t(),
        optional("Tags") => map(),
        optional("Type") => String.t()
      }

  """
  @type get_index_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_output() :: %{
        optional("Count") => resource_count(),
        optional("NextToken") => [String.t()],
        optional("Resources") => list(resource()()),
        optional("ViewArn") => [String.t()]
      }

  """
  @type search_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_filter() :: %{
        "FilterString" => [String.t()]
      }

  """
  @type search_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      index() :: %{
        "Arn" => [String.t()],
        "Region" => [String.t()],
        "Type" => String.t()
      }

  """
  @type index() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_indexes_for_members_output() :: %{
        "Indexes" => list(member_index()()),
        "NextToken" => [String.t()]
      }

  """
  @type list_indexes_for_members_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_view_error() :: %{
        "ErrorMessage" => [String.t()],
        "ViewArn" => [String.t()]
      }

  """
  @type batch_get_view_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_view_input() :: %{
        optional("Filters") => search_filter(),
        optional("IncludedProperties") => list(included_property()()),
        required("ViewArn") => [String.t()]
      }

  """
  @type update_view_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "Message" => [String.t()],
        "Name" => [String.t()],
        "Value" => [String.t()]
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_indexes_input() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => [String.t()],
        optional("Regions") => list([String.t()]()),
        optional("Type") => String.t()
      }

  """
  @type list_indexes_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_views_input() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => [String.t()]
      }

  """
  @type list_views_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "Name" => [String.t()],
        "ValidationIssue" => [String.t()]
      }

  """
  @type validation_exception_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      org_configuration() :: %{
        "AWSServiceAccessStatus" => String.t(),
        "ServiceLinkedRole" => [String.t()]
      }

  """
  @type org_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_input() :: %{
        optional("Tags") => map()
      }

  """
  @type tag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_default_view_output() :: %{
        optional("ViewArn") => [String.t()]
      }

  """
  @type associate_default_view_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_output() :: %{}

  """
  @type tag_resource_output() :: %{}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_index_output() :: %{
        optional("Arn") => [String.t()],
        optional("LastUpdatedAt") => [non_neg_integer()],
        optional("State") => String.t()
      }

  """
  @type delete_index_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_index_type_input() :: %{
        required("Arn") => [String.t()],
        required("Type") => String.t()
      }

  """
  @type update_index_type_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_input() :: %{
        required("tagKeys") => list([String.t()]())
      }

  """
  @type untag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_view_input() :: %{
        optional("ClientToken") => [String.t()],
        optional("Filters") => search_filter(),
        optional("IncludedProperties") => list(included_property()()),
        optional("Scope") => [String.t()],
        optional("Tags") => map(),
        required("ViewName") => String.t()
      }

  """
  @type create_view_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_view_input() :: %{
        required("ViewArn") => [String.t()]
      }

  """
  @type get_view_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "FieldList" => list(validation_exception_field()()),
        "Message" => [String.t()]
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_input() :: %{}

  """
  @type list_tags_for_resource_input() :: %{}

  @typedoc """

  ## Example:

      delete_index_input() :: %{
        required("Arn") => [String.t()]
      }

  """
  @type delete_index_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      supported_resource_type() :: %{
        "ResourceType" => [String.t()],
        "Service" => [String.t()]
      }

  """
  @type supported_resource_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_output() :: %{}

  """
  @type untag_resource_output() :: %{}

  @typedoc """

  ## Example:

      update_view_output() :: %{
        optional("View") => view()
      }

  """
  @type update_view_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_account_level_service_configuration_output() :: %{
        "OrgConfiguration" => org_configuration()
      }

  """
  @type get_account_level_service_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_indexes_output() :: %{
        optional("Indexes") => list(index()()),
        optional("NextToken") => [String.t()]
      }

  """
  @type list_indexes_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_view_output() :: %{
        optional("Tags") => map(),
        optional("View") => view()
      }

  """
  @type get_view_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_supported_resource_types_output() :: %{
        optional("NextToken") => [String.t()],
        optional("ResourceTypes") => list(supported_resource_type()())
      }

  """
  @type list_supported_resource_types_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_index_input() :: %{
        optional("ClientToken") => [String.t()],
        optional("Tags") => map()
      }

  """
  @type create_index_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_index_type_output() :: %{
        optional("Arn") => [String.t()],
        optional("LastUpdatedAt") => [non_neg_integer()],
        optional("State") => String.t(),
        optional("Type") => String.t()
      }

  """
  @type update_index_type_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      member_index() :: %{
        "AccountId" => [String.t()],
        "Arn" => [String.t()],
        "Region" => [String.t()],
        "Type" => String.t()
      }

  """
  @type member_index() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_default_view_output() :: %{
        optional("ViewArn") => [String.t()]
      }

  """
  @type get_default_view_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource() :: %{
        "Arn" => [String.t()],
        "LastReportedAt" => [non_neg_integer()],
        "OwningAccountId" => [String.t()],
        "Properties" => list(resource_property()()),
        "Region" => [String.t()],
        "ResourceType" => [String.t()],
        "Service" => [String.t()]
      }

  """
  @type resource() :: %{String.t() => any()}

  @type associate_default_view_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type batch_get_view_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | unauthorized_exception()

  @type create_index_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type create_view_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type delete_index_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_view_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type disassociate_default_view_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_account_level_service_configuration_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_default_view_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_index_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_view_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type list_indexes_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_indexes_for_members_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_supported_resource_types_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type list_views_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type search_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type update_index_type_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_view_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | unauthorized_exception()

  def metadata do
    %{
      api_version: "2022-07-28",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "resource-explorer-2",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Resource Explorer 2",
      signature_version: "v4",
      signing_name: "resource-explorer-2",
      target_prefix: nil
    }
  end

  @doc """
  Sets the specified view as the default for the Amazon Web Services Region in
  which you call this operation. When a user performs a `Search` that doesn't
  explicitly specify which view to use, then Amazon Web Services Resource
  Explorer automatically chooses this default view for searches performed in
  this Amazon Web Services Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourceexplorer2%20AssociateDefaultView&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec associate_default_view(AWS.Client.t(), associate_default_view_input(), Keyword.t()) ::
          {:ok, associate_default_view_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_default_view_errors()}
  def associate_default_view(%Client{} = client, input, options \\ []) do
    url_path = "/AssociateDefaultView"
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
  Retrieves details about a list of views.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourceexplorer2%20BatchGetView&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec batch_get_view(AWS.Client.t(), batch_get_view_input(), Keyword.t()) ::
          {:ok, batch_get_view_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_get_view_errors()}
  def batch_get_view(%Client{} = client, input, options \\ []) do
    url_path = "/BatchGetView"
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
  Turns on Amazon Web Services Resource Explorer in the Amazon Web Services Region
  in which you called this operation by creating an index. Resource Explorer
  begins discovering the resources in this Region and stores the details about
  the resources in the index so that they can be queried by using the `Search`
  operation. You can create only one index in a Region. This operation creates
  only a *local* index. To promote the local index in one Amazon Web Services
  Region into the aggregator index for the Amazon Web Services account, use the
  `UpdateIndexType` operation. For more information, see [Turning on
  cross-Region search by creating an aggregator
  index](https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-aggregator-region.html)
  in the *Amazon Web Services Resource Explorer User Guide*. For more details
  about what happens when you turn on Resource Explorer in an Amazon Web
  Services Region, see [Turn on Resource Explorer to index your resources in an
  Amazon Web Services
  Region](https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-service-activate.html)
  in the *Amazon Web Services Resource Explorer User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourceexplorer2%20CreateIndex&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_index(AWS.Client.t(), create_index_input(), Keyword.t()) ::
          {:ok, create_index_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_index_errors()}
  def create_index(%Client{} = client, input, options \\ []) do
    url_path = "/CreateIndex"
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
  Creates a view that users can query by using the `Search` operation. Results
  from queries that you make using this view include only resources that match
  the view's `Filters`. For more information about Amazon Web Services Resource
  Explorer views, see [Managing
  views](https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-views.html)
  in the *Amazon Web Services Resource Explorer User Guide*. Only the principals
  with an IAM identity-based policy that grants `Allow` to the `Search` action
  on a `Resource` with the [Amazon resource name
  (ARN)](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
  of this view can `Search` using views you create with this operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourceexplorer2%20CreateView&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_view(AWS.Client.t(), create_view_input(), Keyword.t()) ::
          {:ok, create_view_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_view_errors()}
  def create_view(%Client{} = client, input, options \\ []) do
    url_path = "/CreateView"
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
  Deletes the specified index and turns off Amazon Web Services Resource Explorer
  in the specified Amazon Web Services Region. When you delete an index,
  Resource Explorer stops discovering and indexing resources in that Region.
  Resource Explorer also deletes all views in that Region. These actions occur
  as asynchronous background tasks. You can check to see when the actions are
  complete by using the `GetIndex` operation and checking the `Status` response
  value.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourceexplorer2%20DeleteIndex&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec delete_index(AWS.Client.t(), delete_index_input(), Keyword.t()) ::
          {:ok, delete_index_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_index_errors()}
  def delete_index(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteIndex"
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
  Deletes the specified view.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourceexplorer2%20DeleteView&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec delete_view(AWS.Client.t(), delete_view_input(), Keyword.t()) ::
          {:ok, delete_view_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_view_errors()}
  def delete_view(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteView"
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
  After you call this operation, the affected Amazon Web Services Region no longer
  has a default view. All `Search` operations in that Region must explicitly
  specify a view or the operation fails. You can configure a new default by
  calling the `AssociateDefaultView` operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourceexplorer2%20DisassociateDefaultView&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec disassociate_default_view(AWS.Client.t(), %{}, Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_default_view_errors()}
  def disassociate_default_view(%Client{} = client, input, options \\ []) do
    url_path = "/DisassociateDefaultView"
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
  Retrieves the status of your account's Amazon Web Services service access, and
  validates the service linked role required to access the multi-account search
  feature. Only the management account or a delegated administrator with service
  access enabled can invoke this API call.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourceexplorer2%20GetAccountLevelServiceConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec get_account_level_service_configuration(AWS.Client.t(), %{}, Keyword.t()) ::
          {:ok, get_account_level_service_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_account_level_service_configuration_errors()}
  def get_account_level_service_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/GetAccountLevelServiceConfiguration"
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
  Retrieves the Amazon Resource Name (ARN) of the view that is the default for the
  Amazon Web Services Region in which you call this operation. You can then call
  `GetView` to retrieve the details of that view.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourceexplorer2%20GetDefaultView&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec get_default_view(AWS.Client.t(), %{}, Keyword.t()) ::
          {:ok, get_default_view_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_default_view_errors()}
  def get_default_view(%Client{} = client, input, options \\ []) do
    url_path = "/GetDefaultView"
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
  Retrieves details about the Amazon Web Services Resource Explorer index in the
  Amazon Web Services Region in which you invoked the operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourceexplorer2%20GetIndex&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec get_index(AWS.Client.t(), %{}, Keyword.t()) ::
          {:ok, get_index_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_index_errors()}
  def get_index(%Client{} = client, input, options \\ []) do
    url_path = "/GetIndex"
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
  Retrieves details of the specified view.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourceexplorer2%20GetView&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec get_view(AWS.Client.t(), get_view_input(), Keyword.t()) ::
          {:ok, get_view_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_view_errors()}
  def get_view(%Client{} = client, input, options \\ []) do
    url_path = "/GetView"
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
  Retrieves a list of all of the indexes in Amazon Web Services Regions that are
  currently collecting resource information for Amazon Web Services Resource
  Explorer.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourceexplorer2%20ListIndexes&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec list_indexes(AWS.Client.t(), list_indexes_input(), Keyword.t()) ::
          {:ok, list_indexes_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_indexes_errors()}
  def list_indexes(%Client{} = client, input, options \\ []) do
    url_path = "/ListIndexes"
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
  Retrieves a list of a member's indexes in all Amazon Web Services Regions that
  are currently collecting resource information for Amazon Web Services Resource
  Explorer. Only the management account or a delegated administrator with
  service access enabled can invoke this API call.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourceexplorer2%20ListIndexesForMembers&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec list_indexes_for_members(AWS.Client.t(), list_indexes_for_members_input(), Keyword.t()) ::
          {:ok, list_indexes_for_members_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_indexes_for_members_errors()}
  def list_indexes_for_members(%Client{} = client, input, options \\ []) do
    url_path = "/ListIndexesForMembers"
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
  Retrieves a list of all resource types currently supported by Amazon Web
  Services Resource Explorer.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourceexplorer2%20ListSupportedResourceTypes&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec list_supported_resource_types(
          AWS.Client.t(),
          list_supported_resource_types_input(),
          Keyword.t()
        ) ::
          {:ok, list_supported_resource_types_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_supported_resource_types_errors()}
  def list_supported_resource_types(%Client{} = client, input, options \\ []) do
    url_path = "/ListSupportedResourceTypes"
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
  Lists the tags that are attached to the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourceexplorer2%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:`) The Amazon resource name (ARN) of the view or index
    that you want to attach tags to.

  ## Optional parameters:
  """
  @spec list_tags_for_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_output(), any()}
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
  Lists the [Amazon resource names
  (ARNs)](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
  of the views available in the Amazon Web Services Region in which you call
  this operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourceexplorer2%20ListViews&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec list_views(AWS.Client.t(), list_views_input(), Keyword.t()) ::
          {:ok, list_views_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_views_errors()}
  def list_views(%Client{} = client, input, options \\ []) do
    url_path = "/ListViews"
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
  Searches for resources and displays details about all resources that match the
  specified criteria. You must specify a query string. All search queries must
  use a view. If you don't explicitly specify a view, then Amazon Web Services
  Resource Explorer uses the default view for the Amazon Web Services Region in
  which you call this operation. The results are the logical intersection of the
  results that match both the `QueryString` parameter supplied to this operation
  and the `SearchFilter` parameter attached to the view.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourceexplorer2%20Search&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec search(AWS.Client.t(), search_input(), Keyword.t()) ::
          {:ok, search_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_errors()}
  def search(%Client{} = client, input, options \\ []) do
    url_path = "/Search"
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
  Adds one or more tag key and value pairs to an Amazon Web Services Resource
  Explorer view or index.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourceexplorer2%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:`) The Amazon Resource Name (ARN) of the view or index
    that you want to attach tags to.

  ## Optional parameters:
  """
  @spec tag_resource(AWS.Client.t(), String.t(), tag_resource_input(), Keyword.t()) ::
          {:ok, tag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Removes one or more tag key and value pairs from an Amazon Web Services Resource
  Explorer view or index.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourceexplorer2%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:`) The Amazon Resource Name (ARN) of the view or index
    that you want to remove tags from.
  * `:tag_keys` (`t:list[smithy.api#String]`) A list of the keys for the tags that
    you want to remove from the specified view or index.

  ## Optional parameters:
  """
  @spec untag_resource(AWS.Client.t(), String.t(), untag_resource_input(), Keyword.t()) ::
          {:ok, untag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Changes the type of the index from one of the following types to the other. For
  more information about indexes and the role they perform in Amazon Web
  Services Resource Explorer, see [Turning on cross-Region search by creating an
  aggregator
  index](https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-aggregator-region.html)
  in the *Amazon Web Services Resource Explorer User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourceexplorer2%20UpdateIndexType&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec update_index_type(AWS.Client.t(), update_index_type_input(), Keyword.t()) ::
          {:ok, update_index_type_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_index_type_errors()}
  def update_index_type(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateIndexType"
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
  Modifies some of the details of a view. You can change the filter string and the
  list of included properties. You can't change the name of the view.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourceexplorer2%20UpdateView&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec update_view(AWS.Client.t(), update_view_input(), Keyword.t()) ::
          {:ok, update_view_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_view_errors()}
  def update_view(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateView"
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
