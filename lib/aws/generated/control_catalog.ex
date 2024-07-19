# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ControlCatalog do
  @moduledoc """
  Welcome to the Amazon Web Services Control Catalog API reference. This guide is
  for developers who need detailed information about how to programmatically
  identify and filter the common controls and related metadata that are
  available to Amazon Web Services customers. This API reference provides
  descriptions, syntax, and usage examples for each of the actions and data
  types that are supported by Amazon Web Services Control Catalog. Use the
  following links to get started with the Amazon Web Services Control Catalog
  API:
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => [String.t()]
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associated_domain_summary() :: %{
        "Arn" => String.t(),
        "Name" => [String.t()]
      }
      
  """
  @type associated_domain_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associated_objective_summary() :: %{
        "Arn" => String.t(),
        "Name" => [String.t()]
      }
      
  """
  @type associated_objective_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      common_control_filter() :: %{
        "Objectives" => list(objective_resource_filter()())
      }
      
  """
  @type common_control_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      common_control_summary() :: %{
        "Arn" => String.t(),
        "CreateTime" => [non_neg_integer()],
        "Description" => [String.t()],
        "Domain" => associated_domain_summary(),
        "LastUpdateTime" => [non_neg_integer()],
        "Name" => [String.t()],
        "Objective" => associated_objective_summary()
      }
      
  """
  @type common_control_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      domain_resource_filter() :: %{
        "Arn" => String.t()
      }
      
  """
  @type domain_resource_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      domain_summary() :: %{
        "Arn" => String.t(),
        "CreateTime" => [non_neg_integer()],
        "Description" => [String.t()],
        "LastUpdateTime" => [non_neg_integer()],
        "Name" => [String.t()]
      }
      
  """
  @type domain_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "Message" => [String.t()]
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_common_controls_request() :: %{
        optional("CommonControlFilter") => common_control_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_common_controls_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_common_controls_response() :: %{
        "CommonControls" => list(common_control_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_common_controls_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_domains_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_domains_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_domains_response() :: %{
        "Domains" => list(domain_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_domains_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_objectives_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ObjectiveFilter") => objective_filter()
      }
      
  """
  @type list_objectives_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_objectives_response() :: %{
        "NextToken" => String.t(),
        "Objectives" => list(objective_summary()())
      }
      
  """
  @type list_objectives_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      objective_filter() :: %{
        "Domains" => list(domain_resource_filter()())
      }
      
  """
  @type objective_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      objective_resource_filter() :: %{
        "Arn" => String.t()
      }
      
  """
  @type objective_resource_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      objective_summary() :: %{
        "Arn" => String.t(),
        "CreateTime" => [non_neg_integer()],
        "Description" => [String.t()],
        "Domain" => associated_domain_summary(),
        "LastUpdateTime" => [non_neg_integer()],
        "Name" => [String.t()]
      }
      
  """
  @type objective_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Message" => [String.t()]
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "Message" => [String.t()]
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @type list_common_controls_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_domains_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_objectives_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "controlcatalog",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "ControlCatalog",
      signature_version: "v4",
      signing_name: "controlcatalog",
      target_prefix: nil
    }
  end

  @doc """
  Returns a paginated list of common controls from the Amazon Web Services Control
  Catalog.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=controlcatalog%20ListCommonControls&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results on a page or for an
  API request call.
  * `:next_token` (`t:string`) The pagination token that's used to fetch the next
  set of results.
  """

  @spec list_common_controls(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_common_controls_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_common_controls_errors()}

  def list_common_controls(%Client{} = client, options \\ []) do
    url_path = "/common-controls"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

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

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Returns a paginated list of domains from the Amazon Web Services Control
  Catalog.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=controlcatalog%20ListDomains&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results on a page or for an
  API request call.
  * `:next_token` (`t:string`) The pagination token that's used to fetch the next
  set of results.
  """

  @spec list_domains(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_domains_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_domains_errors()}

  def list_domains(%Client{} = client, options \\ []) do
    url_path = "/domains"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

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

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Returns a paginated list of objectives from the Amazon Web Services Control
  Catalog.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=controlcatalog%20ListObjectives&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results on a page or for an
  API request call.
  * `:next_token` (`t:string`) The pagination token that's used to fetch the next
  set of results.
  """

  @spec list_objectives(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_objectives_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_objectives_errors()}

  def list_objectives(%Client{} = client, options \\ []) do
    url_path = "/objectives"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

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

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end
end
