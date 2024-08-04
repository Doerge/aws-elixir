# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.S3Outposts do
  @moduledoc """
  Amazon S3 on Outposts provides access to S3 on Outposts operations.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_endpoint_request() :: %{
        optional("AccessType") => list(any()),
        optional("CustomerOwnedIpv4Pool") => String.t(),
        required("OutpostId") => String.t(),
        required("SecurityGroupId") => String.t(),
        required("SubnetId") => String.t()
      }
      
  """
  @type create_endpoint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_endpoint_result() :: %{
        "EndpointArn" => String.t()
      }
      
  """
  @type create_endpoint_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_endpoint_request() :: %{
        required("EndpointId") => String.t(),
        required("OutpostId") => String.t()
      }
      
  """
  @type delete_endpoint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      endpoint() :: %{
        "AccessType" => list(any()),
        "CidrBlock" => String.t(),
        "CreationTime" => non_neg_integer(),
        "CustomerOwnedIpv4Pool" => String.t(),
        "EndpointArn" => String.t(),
        "FailedReason" => failed_reason(),
        "NetworkInterfaces" => list(network_interface()()),
        "OutpostsId" => String.t(),
        "SecurityGroupId" => String.t(),
        "Status" => list(any()),
        "SubnetId" => String.t(),
        "VpcId" => String.t()
      }
      
  """
  @type endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      failed_reason() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type failed_reason() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_endpoints_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_endpoints_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_endpoints_result() :: %{
        "Endpoints" => list(endpoint()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_endpoints_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_outposts_with_s3_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_outposts_with_s3_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_outposts_with_s3_result() :: %{
        "NextToken" => String.t(),
        "Outposts" => list(outpost()())
      }
      
  """
  @type list_outposts_with_s3_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_shared_endpoints_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("OutpostId") => String.t()
      }
      
  """
  @type list_shared_endpoints_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_shared_endpoints_result() :: %{
        "Endpoints" => list(endpoint()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_shared_endpoints_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_interface() :: %{
        "NetworkInterfaceId" => String.t()
      }
      
  """
  @type network_interface() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      outpost() :: %{
        "CapacityInBytes" => float(),
        "OutpostArn" => String.t(),
        "OutpostId" => String.t(),
        "OwnerId" => String.t(),
        "S3OutpostArn" => String.t()
      }
      
  """
  @type outpost() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      outpost_offline_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type outpost_offline_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @type create_endpoint_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | outpost_offline_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type delete_endpoint_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | outpost_offline_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_endpoints_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_outposts_with_s3_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_shared_endpoints_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2017-07-25",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "s3-outposts",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "S3Outposts",
      signature_version: "v4",
      signing_name: "s3-outposts",
      target_prefix: nil
    }
  end

  @doc """
  Creates an endpoint and associates it with the specified Outpost. It can take up
  to 5 minutes for this action to finish.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3outposts%20CreateEndpoint&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec create_endpoint(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_endpoint_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_endpoint_errors()}
  def create_endpoint(%Client{} = client, options \\ []) do
    url_path = "/S3Outposts/CreateEndpoint"

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
  Deletes an endpoint. It can take up to 5 minutes for this action to finish.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3outposts%20DeleteEndpoint&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:endpoint_id` (`t:string` required) The ID of the endpoint.
  * `:outpost_id` (`t:string` required) The ID of the Outposts.
  """
  @spec delete_endpoint(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_endpoint_errors()}
  def delete_endpoint(%Client{} = client, endpoint_id, outpost_id, options \\ [])
      when is_binary(endpoint_id) and is_binary(outpost_id) do
    url_path = "/S3Outposts/DeleteEndpoint"

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
    query_params = [{"endpointId", endpoint_id}, {"outpostId", outpost_id}]

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
  Lists endpoints associated with the specified Outpost. Related actions include:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3outposts%20ListEndpoints&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of endpoints that will be
    returned in the response.
  * `:next_token` (`t:string`) If a previous response from this operation included
    a NextToken value, provide that value here to retrieve the next page of
    results.
  """
  @spec list_endpoints(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_endpoints_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_endpoints_errors()}
  def list_endpoints(%Client{} = client, options \\ []) do
    url_path = "/S3Outposts/ListEndpoints"

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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the Outposts with S3 on Outposts capacity for your Amazon Web Services
  account. Includes S3 on Outposts that you have access to as the Outposts
  owner, or as a shared user from Resource Access Manager (RAM).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3outposts%20ListOutpostsWithS3&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of Outposts to return. The
    limit is 100.
  * `:next_token` (`t:string`) When you can get additional results from the
    ListOutpostsWithS3 call, a NextToken parameter is returned in the output.
    You can then pass in a subsequent command to the NextToken parameter to
    continue listing additional Outposts.
  """
  @spec list_outposts_with_s3(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_outposts_with_s3_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_outposts_with_s3_errors()}
  def list_outposts_with_s3(%Client{} = client, options \\ []) do
    url_path = "/S3Outposts/ListOutpostsWithS3"

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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all endpoints associated with an Outpost that has been shared by Amazon
  Web Services Resource Access Manager (RAM). Related actions include:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=s3outposts%20ListSharedEndpoints&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:outpost_id` (`t:string` required) The ID of the Amazon Web Services Outpost.

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of endpoints that will be
    returned in the response.
  * `:next_token` (`t:string`) If a previous response from this operation included
    a NextToken value, you can provide that value here to retrieve the next page
    of results.
  """
  @spec list_shared_endpoints(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_shared_endpoints_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_shared_endpoints_errors()}
  def list_shared_endpoints(%Client{} = client, outpost_id, options \\ [])
      when is_binary(outpost_id) do
    url_path = "/S3Outposts/ListSharedEndpoints"

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
    query_params = [{"outpostId", outpost_id}]

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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end
end
