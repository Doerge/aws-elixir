# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoTFleetHub do
  @moduledoc """
  With Fleet Hub for IoT Device Management you can build stand-alone web
  applications for monitoring the health of your device fleets.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      application_summary() :: %{
        "applicationCreationDate" => float(),
        "applicationDescription" => String.t(),
        "applicationId" => String.t(),
        "applicationLastUpdateDate" => float(),
        "applicationName" => String.t(),
        "applicationState" => list(any()),
        "applicationUrl" => String.t()
      }

  """
  @type application_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_application_request() :: %{
        optional("applicationDescription") => String.t(),
        optional("clientToken") => String.t(),
        optional("tags") => map(),
        required("applicationName") => String.t(),
        required("roleArn") => String.t()
      }

  """
  @type create_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_application_response() :: %{
        "applicationArn" => String.t(),
        "applicationId" => String.t()
      }

  """
  @type create_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_application_request() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type delete_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_application_response() :: %{}

  """
  @type delete_application_response() :: %{}

  @typedoc """

  ## Example:

      describe_application_request() :: %{}

  """
  @type describe_application_request() :: %{}

  @typedoc """

  ## Example:

      describe_application_response() :: %{
        "applicationArn" => String.t(),
        "applicationCreationDate" => float(),
        "applicationDescription" => String.t(),
        "applicationId" => String.t(),
        "applicationLastUpdateDate" => float(),
        "applicationName" => String.t(),
        "applicationState" => list(any()),
        "applicationUrl" => String.t(),
        "errorMessage" => String.t(),
        "roleArn" => String.t(),
        "ssoClientId" => String.t(),
        "tags" => map()
      }

  """
  @type describe_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_failure_exception() :: %{
        "message" => String.t()
      }

  """
  @type internal_failure_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_request_exception() :: %{
        "message" => String.t()
      }

  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      limit_exceeded_exception() :: %{
        "message" => String.t()
      }

  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_applications_request() :: %{
        optional("nextToken") => String.t()
      }

  """
  @type list_applications_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_applications_response() :: %{
        "applicationSummaries" => list(application_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_applications_response() :: %{String.t() => any()}

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

      resource_not_found_exception() :: %{
        "message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

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
        "message" => String.t()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
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

      update_application_request() :: %{
        optional("applicationDescription") => String.t(),
        optional("applicationName") => String.t(),
        optional("clientToken") => String.t()
      }

  """
  @type update_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_application_response() :: %{}

  """
  @type update_application_response() :: %{}

  @type create_application_errors() ::
          throttling_exception()
          | limit_exceeded_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type delete_application_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type describe_application_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type list_applications_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type list_tags_for_resource_errors() ::
          resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type tag_resource_errors() ::
          resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type untag_resource_errors() ::
          resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type update_application_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2020-11-03",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "api.fleethub.iot",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "IoTFleetHub",
      signature_version: "v4",
      signing_name: "iotfleethub",
      target_prefix: nil
    }
  end

  @doc """
  Creates a Fleet Hub for IoT Device Management web application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotfleethub%20CreateApplication&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_application(AWS.Client.t(), create_application_request(), Keyword.t()) ::
          {:ok, create_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_application_errors()}
  def create_application(%Client{} = client, input, options \\ []) do
    url_path = "/applications"
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
      201
    )
  end

  @doc """
  Deletes a Fleet Hub for IoT Device Management web application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotfleethub%20DeleteApplication&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The unique Id of the web application.

  ## Optional parameters:
  * `:client_token` (`t:string`) A unique case-sensitive identifier that you can
    provide to ensure the idempotency of the request. Don't reuse this client
    token if a new idempotent request is required.
  """
  @spec delete_application(AWS.Client.t(), String.t(), delete_application_request(), Keyword.t()) ::
          {:ok, delete_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_application_errors()}
  def delete_application(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}"
    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Gets information about a Fleet Hub for IoT Device Management web application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotfleethub%20DescribeApplication&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The unique Id of the web application.

  ## Optional parameters:
  """
  @spec describe_application(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_application_errors()}
  def describe_application(%Client{} = client, application_id, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}"

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
  Gets a list of Fleet Hub for IoT Device Management web applications for the
  current account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotfleethub%20ListApplications&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:next_token` (`t:string`) A token used to get the next set of results.
  """
  @spec list_applications(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_applications_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_applications_errors()}
  def list_applications(%Client{} = client, options \\ []) do
    url_path = "/applications"

    # Validate optional parameters
    optional_params = [next_token: nil]

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

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags for the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotfleethub%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The ARN of the resource.

  ## Optional parameters:
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
  Adds to or modifies the tags of the specified resource. Tags are metadata which
  can be used to manage a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotfleethub%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The ARN of the resource.

  ## Optional parameters:
  """
  @spec tag_resource(AWS.Client.t(), String.t(), tag_resource_request(), Keyword.t()) ::
          {:ok, tag_resource_response(), any()}
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
  Removes the specified tags (metadata) from the resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotfleethub%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The ARN of the resource.
  * `:tag_keys` (`t:list[com.amazonaws.iotfleethub#TagKey]`) A list of the keys of
    the tags to be removed from the resource.

  ## Optional parameters:
  """
  @spec untag_resource(AWS.Client.t(), String.t(), untag_resource_request(), Keyword.t()) ::
          {:ok, untag_resource_response(), any()}
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
  Updates information about a Fleet Hub for IoT Device Management web application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotfleethub%20UpdateApplication&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:application_id` (`t:string`) The unique Id of the web application.

  ## Optional parameters:
  """
  @spec update_application(AWS.Client.t(), String.t(), update_application_request(), Keyword.t()) ::
          {:ok, update_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_application_errors()}
  def update_application(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}"
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
      202
    )
  end
end
