# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.OAM do
  @moduledoc """
  Use Amazon CloudWatch Observability Access Manager to create and manage links
  between source accounts and monitoring accounts by using *CloudWatch
  cross-account observability*. With CloudWatch cross-account observability, you
  can monitor and troubleshoot applications that span multiple accounts within a
  Region. Seamlessly search, visualize, and analyze your metrics, logs, traces,
  and Application Insights applications in any of the linked accounts without
  account boundaries.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      create_sink_input() :: %{
        optional("Tags") => map(),
        required("Name") => String.t()
      }
      
  """
  @type create_sink_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_link_output() :: %{
        "Arn" => [String.t()],
        "Id" => [String.t()],
        "Label" => [String.t()],
        "LabelTemplate" => [String.t()],
        "LinkConfiguration" => link_configuration(),
        "ResourceTypes" => list([String.t()]()),
        "SinkArn" => [String.t()],
        "Tags" => map()
      }
      
  """
  @type get_link_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_link_input() :: %{
        required("Identifier") => String.t()
      }
      
  """
  @type delete_link_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_configuration() :: %{
        "Filter" => String.t()
      }
      
  """
  @type metric_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      log_group_configuration() :: %{
        "Filter" => String.t()
      }
      
  """
  @type log_group_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      missing_required_parameter_exception() :: %{
        "amznErrorType" => [String.t()],
        "message" => [String.t()]
      }
      
  """
  @type missing_required_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_sink_output() :: %{}
      
  """
  @type delete_sink_output() :: %{}

  @typedoc """

  ## Example:
      
      list_links_output() :: %{
        "Items" => list(list_links_item()()),
        "NextToken" => [String.t()]
      }
      
  """
  @type list_links_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_sink_policy_output() :: %{
        "Policy" => [String.t()],
        "SinkArn" => [String.t()],
        "SinkId" => [String.t()]
      }
      
  """
  @type put_sink_policy_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_attached_links_output() :: %{
        "Items" => list(list_attached_links_item()()),
        "NextToken" => [String.t()]
      }
      
  """
  @type list_attached_links_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_output() :: %{
        "Tags" => map()
      }
      
  """
  @type list_tags_for_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_sink_input() :: %{
        required("Identifier") => String.t()
      }
      
  """
  @type delete_sink_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_sink_policy_input() :: %{
        required("SinkIdentifier") => String.t()
      }
      
  """
  @type get_sink_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_sink_policy_output() :: %{
        "Policy" => [String.t()],
        "SinkArn" => [String.t()],
        "SinkId" => [String.t()]
      }
      
  """
  @type get_sink_policy_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_attached_links_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("SinkIdentifier") => String.t()
      }
      
  """
  @type list_attached_links_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_link_input() :: %{
        optional("LinkConfiguration") => link_configuration(),
        optional("Tags") => map(),
        required("LabelTemplate") => String.t(),
        required("ResourceTypes") => list(list(any())()),
        required("SinkIdentifier") => String.t()
      }
      
  """
  @type create_link_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Message" => [String.t()],
        "amznErrorType" => [String.t()]
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => [String.t()],
        "amznErrorType" => [String.t()]
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_attached_links_item() :: %{
        "Label" => [String.t()],
        "LinkArn" => [String.t()],
        "ResourceTypes" => list([String.t()]())
      }
      
  """
  @type list_attached_links_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_links_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_links_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "Message" => [String.t()],
        "amznErrorType" => [String.t()]
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_link_input() :: %{
        optional("LinkConfiguration") => link_configuration(),
        required("Identifier") => String.t(),
        required("ResourceTypes") => list(list(any())())
      }
      
  """
  @type update_link_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_sink_output() :: %{
        "Arn" => [String.t()],
        "Id" => [String.t()],
        "Name" => [String.t()],
        "Tags" => map()
      }
      
  """
  @type create_sink_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_sink_input() :: %{
        required("Identifier") => String.t()
      }
      
  """
  @type get_sink_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_input() :: %{
        required("Tags") => map()
      }
      
  """
  @type tag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_link_output() :: %{
        "Arn" => [String.t()],
        "Id" => [String.t()],
        "Label" => [String.t()],
        "LabelTemplate" => [String.t()],
        "LinkConfiguration" => link_configuration(),
        "ResourceTypes" => list([String.t()]()),
        "SinkArn" => [String.t()],
        "Tags" => map()
      }
      
  """
  @type create_link_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      link_configuration() :: %{
        "LogGroupConfiguration" => log_group_configuration(),
        "MetricConfiguration" => metric_configuration()
      }
      
  """
  @type link_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_output() :: %{}
      
  """
  @type tag_resource_output() :: %{}

  @typedoc """

  ## Example:
      
      list_links_item() :: %{
        "Arn" => [String.t()],
        "Id" => [String.t()],
        "Label" => [String.t()],
        "ResourceTypes" => list([String.t()]()),
        "SinkArn" => [String.t()]
      }
      
  """
  @type list_links_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_sinks_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_sinks_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_exception() :: %{
        "amznErrorType" => [String.t()],
        "message" => [String.t()]
      }
      
  """
  @type invalid_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_sinks_output() :: %{
        "Items" => list(list_sinks_item()()),
        "NextToken" => [String.t()]
      }
      
  """
  @type list_sinks_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_input() :: %{
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
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
      
      untag_resource_output() :: %{}
      
  """
  @type untag_resource_output() :: %{}

  @typedoc """

  ## Example:
      
      get_link_input() :: %{
        required("Identifier") => String.t()
      }
      
  """
  @type get_link_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_link_output() :: %{}
      
  """
  @type delete_link_output() :: %{}

  @typedoc """

  ## Example:
      
      internal_service_fault() :: %{
        "Message" => [String.t()],
        "amznErrorType" => [String.t()]
      }
      
  """
  @type internal_service_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_sinks_item() :: %{
        "Arn" => [String.t()],
        "Id" => [String.t()],
        "Name" => [String.t()]
      }
      
  """
  @type list_sinks_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_sink_output() :: %{
        "Arn" => [String.t()],
        "Id" => [String.t()],
        "Name" => [String.t()],
        "Tags" => map()
      }
      
  """
  @type get_sink_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_link_output() :: %{
        "Arn" => [String.t()],
        "Id" => [String.t()],
        "Label" => [String.t()],
        "LabelTemplate" => String.t(),
        "LinkConfiguration" => link_configuration(),
        "ResourceTypes" => list([String.t()]()),
        "SinkArn" => [String.t()],
        "Tags" => map()
      }
      
  """
  @type update_link_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_tags_exception() :: %{
        "Message" => [String.t()]
      }
      
  """
  @type too_many_tags_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_sink_policy_input() :: %{
        required("Policy") => String.t(),
        required("SinkIdentifier") => String.t()
      }
      
  """
  @type put_sink_policy_input() :: %{String.t() => any()}

  @type create_link_errors() ::
          internal_service_fault()
          | invalid_parameter_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()
          | missing_required_parameter_exception()

  @type create_sink_errors() ::
          internal_service_fault()
          | invalid_parameter_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()
          | missing_required_parameter_exception()

  @type delete_link_errors() ::
          internal_service_fault()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | missing_required_parameter_exception()

  @type delete_sink_errors() ::
          internal_service_fault()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | missing_required_parameter_exception()

  @type get_link_errors() ::
          internal_service_fault()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | missing_required_parameter_exception()

  @type get_sink_errors() ::
          internal_service_fault()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | missing_required_parameter_exception()

  @type get_sink_policy_errors() ::
          internal_service_fault()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | missing_required_parameter_exception()

  @type list_attached_links_errors() ::
          internal_service_fault()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | missing_required_parameter_exception()

  @type list_links_errors() ::
          internal_service_fault()
          | invalid_parameter_exception()
          | resource_not_found_exception()

  @type list_sinks_errors() ::
          internal_service_fault()
          | invalid_parameter_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() :: validation_exception() | resource_not_found_exception()

  @type put_sink_policy_errors() ::
          internal_service_fault()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | missing_required_parameter_exception()

  @type tag_resource_errors() ::
          too_many_tags_exception() | validation_exception() | resource_not_found_exception()

  @type untag_resource_errors() :: validation_exception() | resource_not_found_exception()

  @type update_link_errors() ::
          internal_service_fault()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | missing_required_parameter_exception()

  def metadata do
    %{
      api_version: "2022-06-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "oam",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "OAM",
      signature_version: "v4",
      signing_name: "oam",
      target_prefix: nil
    }
  end

  @doc """
  Creates a link between a source account and a sink that you have created in a
  monitoring account. After the link is created, data is sent from the source
  account to the monitoring account. When you create a link, you can optionally
  specify filters that specify which metric namespaces and which log groups are
  shared from the source account to the monitoring account. Before you create a
  link, you must create a sink in the monitoring account and create a sink
  policy in that account. The sink policy must permit the source account to link
  to it. You can grant permission to source accounts by granting permission to
  an entire organization or to individual accounts.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=oam%20CreateLink&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_link(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_link_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_link_errors()}

  def create_link(%Client{} = client, options \\ []) do
    url_path = "/CreateLink"

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
  Use this to create a *sink* in the current account, so that it can be used as a
  monitoring account in CloudWatch cross-account observability. A sink is a
  resource that represents an attachment point in a monitoring account. Source
  accounts can link to the sink to send observability data. After you create a
  sink, you must create a sink policy that allows source accounts to attach to
  it. For more information, see
  [PutSinkPolicy](https://docs.aws.amazon.com/OAM/latest/APIReference/API_PutSinkPolicy.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=oam%20CreateSink&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_sink(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_sink_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_sink_errors()}

  def create_sink(%Client{} = client, options \\ []) do
    url_path = "/CreateSink"

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
  Deletes a link between a monitoring account sink and a source account. You must
  run this operation in the source account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=oam%20DeleteLink&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec delete_link(AWS.Client.t(), Keyword.t()) ::
          {:ok, delete_link_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_link_errors()}

  def delete_link(%Client{} = client, options \\ []) do
    url_path = "/DeleteLink"

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
  Deletes a sink. You must delete all links to a sink before you can delete that
  sink.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=oam%20DeleteSink&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec delete_sink(AWS.Client.t(), Keyword.t()) ::
          {:ok, delete_sink_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_sink_errors()}

  def delete_sink(%Client{} = client, options \\ []) do
    url_path = "/DeleteSink"

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
  Returns complete information about one link.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=oam%20GetLink&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec get_link(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_link_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_link_errors()}

  def get_link(%Client{} = client, options \\ []) do
    url_path = "/GetLink"

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
  Returns complete information about one monitoring account sink.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=oam%20GetSink&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec get_sink(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_sink_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_sink_errors()}

  def get_sink(%Client{} = client, options \\ []) do
    url_path = "/GetSink"

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
  Returns the current sink policy attached to this sink. The sink policy specifies
  what accounts can attach to this sink as source accounts, and what types of
  data they can share.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=oam%20GetSinkPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec get_sink_policy(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_sink_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_sink_policy_errors()}

  def get_sink_policy(%Client{} = client, options \\ []) do
    url_path = "/GetSinkPolicy"

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
  Returns a list of source account links that are linked to this monitoring
  account sink.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=oam%20ListAttachedLinks&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec list_attached_links(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_attached_links_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_attached_links_errors()}

  def list_attached_links(%Client{} = client, options \\ []) do
    url_path = "/ListAttachedLinks"

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
  Use this operation in a source account to return a list of links to monitoring
  account sinks that this source account has.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=oam%20ListLinks&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec list_links(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_links_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_links_errors()}

  def list_links(%Client{} = client, options \\ []) do
    url_path = "/ListLinks"

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
  Use this operation in a monitoring account to return the list of sinks created
  in that account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=oam%20ListSinks&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec list_sinks(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_sinks_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_sinks_errors()}

  def list_sinks(%Client{} = client, options \\ []) do
    url_path = "/ListSinks"

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
  Displays the tags associated with a resource. Both sinks and links support
  tagging.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=oam%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The ARN of the resource that you want to view
  tags for.

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
  Creates or updates the resource policy that grants permissions to source
  accounts to link to the monitoring account sink. When you create a sink
  policy, you can grant permissions to all accounts in an organization or to
  individual accounts. You can also use a sink policy to limit the types of data
  that is shared. The three types that you can allow or deny are:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=oam%20PutSinkPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec put_sink_policy(AWS.Client.t(), Keyword.t()) ::
          {:ok, put_sink_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_sink_policy_errors()}

  def put_sink_policy(%Client{} = client, options \\ []) do
    url_path = "/PutSinkPolicy"

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
  Assigns one or more tags (key-value pairs) to the specified resource. Both sinks
  and links can be tagged. Tags can help you organize and categorize your
  resources. You can also use them to scope user permissions by granting a user
  permission to access or change only resources with certain tag values.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=oam%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The ARN of the resource that you're adding tags
  to.

  ## Optional parameters:
  """

  @spec tag_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, tag_resource_output(), any()}
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
  Removes one or more tags from the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=oam%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The ARN of the resource that you're removing tags
  from.
  * `:tag_keys` (`t:list[com.amazonaws.oam#TagKey]`) The list of tag keys to
  remove from the resource.

  ## Optional parameters:
  """

  @spec untag_resource(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, untag_resource_output(), any()}
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
  Use this operation to change what types of data are shared from a source account
  to its linked monitoring account sink. You can't change the sink or change the
  monitoring account with this operation. When you update a link, you can
  optionally specify filters that specify which metric namespaces and which log
  groups are shared from the source account to the monitoring account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=oam%20UpdateLink&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec update_link(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_link_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_link_errors()}

  def update_link(%Client{} = client, options \\ []) do
    url_path = "/UpdateLink"

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
