# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.NetworkMonitor do
  @moduledoc """
  Amazon CloudWatch Network Monitor is an Amazon Web Services active network
  monitoring service that identifies if a network issues exists within the
  Amazon Web Services network or your own company network. Within Network
  Monitor you'll choose the source VPCs and subnets from the Amazon Web Services
  network in which you operate and then you'll choose the destination IP
  addresses from your on-premises network. From these sources and destinations,
  Network Monitor creates a monitor containing all the possible source and
  destination combinations, each of which is called a probe, within a single
  monitor. These probes then monitor network traffic to help you identify where
  network issues might be affecting your traffic. Before you begin, ensure the
  Amazon Web Services CLI is configured in the Amazon Web Services Account where
  you will create the Network Monitor resource. Network Monitor doesn’t support
  creation on cross-account resources, but you can create a Network Monitor in
  any subnet belonging to a VPC owned by your Account.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      list_monitors_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("state") => [String.t()]
      }
      
  """
  @type list_monitors_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_monitor_output() :: %{
        "aggregationPeriod" => float(),
        "createdAt" => non_neg_integer(),
        "modifiedAt" => non_neg_integer(),
        "monitorArn" => String.t(),
        "monitorName" => String.t(),
        "probes" => list(probe()()),
        "state" => list(any()),
        "tags" => map()
      }
      
  """
  @type get_monitor_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_monitors_output() :: %{
        "monitors" => list(monitor_summary()()),
        "nextToken" => [String.t()]
      }
      
  """
  @type list_monitors_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_monitor_probe_input() :: %{
        "destination" => String.t(),
        "destinationPort" => integer(),
        "packetSize" => integer(),
        "probeTags" => map(),
        "protocol" => list(any()),
        "sourceArn" => String.t()
      }
      
  """
  @type create_monitor_probe_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_probe_output() :: %{
        "addressFamily" => list(any()),
        "createdAt" => non_neg_integer(),
        "destination" => String.t(),
        "destinationPort" => integer(),
        "modifiedAt" => non_neg_integer(),
        "packetSize" => integer(),
        "probeArn" => String.t(),
        "probeId" => String.t(),
        "protocol" => list(any()),
        "sourceArn" => String.t(),
        "state" => list(any()),
        "tags" => map(),
        "vpcId" => String.t()
      }
      
  """
  @type update_probe_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_monitor_output() :: %{}
      
  """
  @type delete_monitor_output() :: %{}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_output() :: %{
        "tags" => map()
      }
      
  """
  @type list_tags_for_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_monitor_input() :: %{}
      
  """
  @type delete_monitor_input() :: %{}

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
      
      create_probe_input() :: %{
        optional("clientToken") => [String.t()],
        optional("tags") => map(),
        required("probe") => probe_input()
      }
      
  """
  @type create_probe_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_probe_input() :: %{}
      
  """
  @type delete_probe_input() :: %{}

  @typedoc """

  ## Example:
      
      get_probe_input() :: %{}
      
  """
  @type get_probe_input() :: %{}

  @typedoc """

  ## Example:
      
      get_monitor_input() :: %{}
      
  """
  @type get_monitor_input() :: %{}

  @typedoc """

  ## Example:
      
      create_probe_output() :: %{
        "addressFamily" => list(any()),
        "createdAt" => non_neg_integer(),
        "destination" => String.t(),
        "destinationPort" => integer(),
        "modifiedAt" => non_neg_integer(),
        "packetSize" => integer(),
        "probeArn" => String.t(),
        "probeId" => String.t(),
        "protocol" => list(any()),
        "sourceArn" => String.t(),
        "state" => list(any()),
        "tags" => map(),
        "vpcId" => String.t()
      }
      
  """
  @type create_probe_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_input() :: %{
        required("tags") => map()
      }
      
  """
  @type tag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_probe_output() :: %{}
      
  """
  @type delete_probe_output() :: %{}

  @typedoc """

  ## Example:
      
      tag_resource_output() :: %{}
      
  """
  @type tag_resource_output() :: %{}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_probe_input() :: %{
        optional("destination") => String.t(),
        optional("destinationPort") => integer(),
        optional("packetSize") => integer(),
        optional("protocol") => list(any()),
        optional("state") => list(any())
      }
      
  """
  @type update_probe_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_input() :: %{
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      probe_input() :: %{
        "destination" => String.t(),
        "destinationPort" => integer(),
        "packetSize" => integer(),
        "protocol" => list(any()),
        "sourceArn" => String.t(),
        "tags" => map()
      }
      
  """
  @type probe_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_monitor_input() :: %{
        required("aggregationPeriod") => float()
      }
      
  """
  @type update_monitor_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "message" => [String.t()]
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
      
      probe() :: %{
        "addressFamily" => list(any()),
        "createdAt" => non_neg_integer(),
        "destination" => String.t(),
        "destinationPort" => integer(),
        "modifiedAt" => non_neg_integer(),
        "packetSize" => integer(),
        "probeArn" => String.t(),
        "probeId" => String.t(),
        "protocol" => list(any()),
        "sourceArn" => String.t(),
        "state" => list(any()),
        "tags" => map(),
        "vpcId" => String.t()
      }
      
  """
  @type probe() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_output() :: %{}
      
  """
  @type untag_resource_output() :: %{}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_probe_output() :: %{
        "addressFamily" => list(any()),
        "createdAt" => non_neg_integer(),
        "destination" => String.t(),
        "destinationPort" => integer(),
        "modifiedAt" => non_neg_integer(),
        "packetSize" => integer(),
        "probeArn" => String.t(),
        "probeId" => String.t(),
        "protocol" => list(any()),
        "sourceArn" => String.t(),
        "state" => list(any()),
        "tags" => map(),
        "vpcId" => String.t()
      }
      
  """
  @type get_probe_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_monitor_output() :: %{
        "aggregationPeriod" => float(),
        "monitorArn" => String.t(),
        "monitorName" => String.t(),
        "state" => list(any()),
        "tags" => map()
      }
      
  """
  @type create_monitor_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      monitor_summary() :: %{
        "aggregationPeriod" => float(),
        "monitorArn" => String.t(),
        "monitorName" => String.t(),
        "state" => list(any()),
        "tags" => map()
      }
      
  """
  @type monitor_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_monitor_output() :: %{
        "aggregationPeriod" => float(),
        "monitorArn" => String.t(),
        "monitorName" => String.t(),
        "state" => list(any()),
        "tags" => map()
      }
      
  """
  @type update_monitor_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_monitor_input() :: %{
        optional("aggregationPeriod") => float(),
        optional("clientToken") => [String.t()],
        optional("probes") => list(create_monitor_probe_input()()),
        optional("tags") => map(),
        required("monitorName") => String.t()
      }
      
  """
  @type create_monitor_input() :: %{String.t() => any()}

  @type create_monitor_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_probe_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type delete_monitor_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_probe_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type get_monitor_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_probe_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_monitors_errors() ::
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
          | conflict_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_monitor_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type update_probe_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2023-08-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "networkmonitor",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "NetworkMonitor",
      signature_version: "v4",
      signing_name: "networkmonitor",
      target_prefix: nil
    }
  end

  @doc """
  Creates a monitor between a source subnet and destination IP address. Within a
  monitor you'll create one or more probes that monitor network traffic between
  your source Amazon Web Services VPC subnets and your destination IP addresses.
  Each probe then aggregates and sends metrics to Amazon CloudWatch. You can
  also create a monitor with probes using this command. For each probe, you
  define the following:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=networkmonitor%20CreateMonitor&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec create_monitor(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_monitor_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_monitor_errors()}
  def create_monitor(%Client{} = client, options \\ []) do
    url_path = "/monitors"

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
  Create a probe within a monitor. Once you create a probe, and it begins
  monitoring your network traffic, you'll incur billing charges for that probe.
  This action requires the `monitorName` parameter. Run `ListMonitors` to get a
  list of monitor names. Note the name of the `monitorName` you want to create
  the probe for.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=networkmonitor%20CreateProbe&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:monitor_name` (`t:string` required) The name of the monitor to associated
    with the probe.
  """
  @spec create_probe(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_probe_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_probe_errors()}
  def create_probe(%Client{} = client, monitor_name, options \\ []) do
    url_path = "/monitors/#{AWS.Util.encode_uri(monitor_name)}/probes"

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
  Deletes a specified monitor.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=networkmonitor%20DeleteMonitor&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:monitor_name` (`t:string` required) The name of the monitor to delete.
  """
  @spec delete_monitor(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_monitor_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_monitor_errors()}
  def delete_monitor(%Client{} = client, monitor_name, options \\ []) do
    url_path = "/monitors/#{AWS.Util.encode_uri(monitor_name)}"

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
  Deletes the specified probe. Once a probe is deleted you'll no longer incur any
  billing fees for that probe.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=networkmonitor%20DeleteProbe&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:monitor_name` (`t:string` required) The name of the monitor to delete.
  * `:probe_id` (`t:string` required) The ID of the probe to delete.
  """
  @spec delete_probe(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_probe_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_probe_errors()}
  def delete_probe(%Client{} = client, monitor_name, probe_id, options \\ []) do
    url_path =
      "/monitors/#{AWS.Util.encode_uri(monitor_name)}/probes/#{AWS.Util.encode_uri(probe_id)}"

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
  Returns details about a specific monitor.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=networkmonitor%20GetMonitor&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:monitor_name` (`t:string` required) The name of the monitor that details are
    returned for.
  """
  @spec get_monitor(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_monitor_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_monitor_errors()}
  def get_monitor(%Client{} = client, monitor_name, options \\ []) do
    url_path = "/monitors/#{AWS.Util.encode_uri(monitor_name)}"

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
  Returns the details about a probe. This action requires both the `monitorName`
  and `probeId` parameters. Run `ListMonitors` to get a list of monitor names.
  Run `GetMonitor` to get a list of probes and probe IDs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=networkmonitor%20GetProbe&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:monitor_name` (`t:string` required) The name of the monitor associated with
    the probe. Run ListMonitors to get a list of monitor names.
  * `:probe_id` (`t:string` required) The ID of the probe to get information
    about. Run GetMonitor action to get a list of probes and probe IDs for the
    monitor.
  """
  @spec get_probe(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_probe_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_probe_errors()}
  def get_probe(%Client{} = client, monitor_name, probe_id, options \\ []) do
    url_path =
      "/monitors/#{AWS.Util.encode_uri(monitor_name)}/probes/#{AWS.Util.encode_uri(probe_id)}"

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
  Returns a list of all of your monitors.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=networkmonitor%20ListMonitors&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return with a
    single call. To retrieve the remaining results, make another call with the
    returned nextToken value.
  * `:next_token` (`t:string`) The token for the next page of results.
  * `:state` (`t:string`) The list of all monitors and their states.
  """
  @spec list_monitors(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_monitors_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_monitors_errors()}
  def list_monitors(%Client{} = client, options \\ []) do
    url_path = "/monitors"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, state: nil]

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
      if opt_val = Keyword.get(options, :state) do
        [{"state", opt_val} | query_params]
      else
        query_params
      end

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
      |> Keyword.drop([:max_results, :next_token, :state])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags assigned to this resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=networkmonitor%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The
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
  Adds key-value pairs to a monitor or probe.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=networkmonitor%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The ARN of the monitor or probe to tag.
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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Removes a key-value pair from a monitor or probe.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=networkmonitor%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The ARN of the monitor or probe that the
    tag should be removed from.
  * `:tag_keys` (`t:list[com.amazonaws.networkmonitor#TagKey]` required) The
    key-value pa
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
  Updates the `aggregationPeriod` for a monitor. Monitors support an
  `aggregationPeriod` of either `30` or `60` seconds. This action requires the
  `monitorName` and `probeId` parameter. Run `ListMonitors` to get a list of
  monitor names.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=networkmonitor%20UpdateMonitor&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:monitor_name` (`t:string` required) The name of the monitor to update.
  """
  @spec update_monitor(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_monitor_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_monitor_errors()}
  def update_monitor(%Client{} = client, monitor_name, options \\ []) do
    url_path = "/monitors/#{AWS.Util.encode_uri(monitor_name)}"

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

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Updates a monitor probe. This action requires both the `monitorName` and
  `probeId` parameters. Run `ListMonitors` to get a list of monitor names. Run
  `GetMonitor` to get a list of probes and probe IDs. You can update the
  following para create a monitor with probes using this command. For each
  probe, you define the following:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=networkmonitor%20UpdateProbe&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:monitor_name` (`t:string` required) The name of the monitor that the probe
    was updated for.
  * `:probe_id` (`t:string` required) The ID of the probe to update.
  """
  @spec update_probe(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_probe_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_probe_errors()}
  def update_probe(%Client{} = client, monitor_name, probe_id, options \\ []) do
    url_path =
      "/monitors/#{AWS.Util.encode_uri(monitor_name)}/probes/#{AWS.Util.encode_uri(probe_id)}"

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

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end
end
