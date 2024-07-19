# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SageMakerA2IRuntime do
  @moduledoc """
  Amazon Augmented AI (Amazon A2I) adds the benefit of human judgment to any
  machine learning application. When an AI application can't evaluate data with
  a high degree of confidence, human reviewers can take over. This human review
  is called a human review workflow. To create and start a human review
  workflow, you need three resources: a *worker task template*, a *flow
  definition*, and a *human loop*. For information about these resources and
  prerequisites for using Amazon A2I, see [Get Started with Amazon Augmented
  AI](https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-getting-started.html)
  in the Amazon SageMaker Developer Guide. This API reference includes
  information about API actions and data types that you can use to interact with
  Amazon A2I programmatically. Use this guide to:
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_human_loop_request() :: %{}
      
  """
  @type delete_human_loop_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_human_loop_response() :: %{}
      
  """
  @type delete_human_loop_response() :: %{}

  @typedoc """

  ## Example:
      
      describe_human_loop_request() :: %{}
      
  """
  @type describe_human_loop_request() :: %{}

  @typedoc """

  ## Example:
      
      describe_human_loop_response() :: %{
        "CreationTime" => non_neg_integer(),
        "FailureCode" => String.t(),
        "FailureReason" => String.t(),
        "FlowDefinitionArn" => String.t(),
        "HumanLoopArn" => String.t(),
        "HumanLoopName" => String.t(),
        "HumanLoopOutput" => human_loop_output(),
        "HumanLoopStatus" => list(any())
      }
      
  """
  @type describe_human_loop_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      human_loop_data_attributes() :: %{
        "ContentClassifiers" => list(list(any())())
      }
      
  """
  @type human_loop_data_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      human_loop_input() :: %{
        "InputContent" => String.t()
      }
      
  """
  @type human_loop_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      human_loop_output() :: %{
        "OutputS3Uri" => String.t()
      }
      
  """
  @type human_loop_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      human_loop_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "FailureReason" => String.t(),
        "FlowDefinitionArn" => String.t(),
        "HumanLoopName" => String.t(),
        "HumanLoopStatus" => list(any())
      }
      
  """
  @type human_loop_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_human_loops_request() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SortOrder") => list(any()),
        required("FlowDefinitionArn") => String.t()
      }
      
  """
  @type list_human_loops_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_human_loops_response() :: %{
        "HumanLoopSummaries" => list(human_loop_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_human_loops_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_human_loop_request() :: %{
        optional("DataAttributes") => human_loop_data_attributes(),
        required("FlowDefinitionArn") => String.t(),
        required("HumanLoopInput") => human_loop_input(),
        required("HumanLoopName") => String.t()
      }
      
  """
  @type start_human_loop_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_human_loop_response() :: %{
        "HumanLoopArn" => String.t()
      }
      
  """
  @type start_human_loop_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_human_loop_request() :: %{
        required("HumanLoopName") => String.t()
      }
      
  """
  @type stop_human_loop_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_human_loop_response() :: %{}
      
  """
  @type stop_human_loop_response() :: %{}

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

  @type delete_human_loop_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()

  @type describe_human_loop_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()

  @type list_human_loops_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()

  @type start_human_loop_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | internal_server_exception()
          | conflict_exception()

  @type stop_human_loop_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()

  def metadata do
    %{
      api_version: "2019-11-07",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "a2i-runtime.sagemaker",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "SageMaker A2I Runtime",
      signature_version: "v4",
      signing_name: "sagemaker",
      target_prefix: nil
    }
  end

  @doc """
  Deletes the specified human loop for a flow definition.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sagemakera2iruntime%20DeleteHumanLoop&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:human_loop_name` (`t:string`) The name of the human loop that you want to
  delete.

  ## Optional parameters:
  """

  @spec delete_human_loop(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_human_loop_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_human_loop_errors()}

  def delete_human_loop(%Client{} = client, human_loop_name, options \\ []) do
    url_path = "/human-loops/#{AWS.Util.encode_uri(human_loop_name)}"

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
  Returns information about the specified human loop. If the human loop was
  deleted, this operation will return a `ResourceNotFoundException` error.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sagemakera2iruntime%20DescribeHumanLoop&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:human_loop_name` (`t:string`) The name of the human loop that you want
  information about.

  ## Optional parameters:
  """

  @spec describe_human_loop(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_human_loop_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_human_loop_errors()}

  def describe_human_loop(%Client{} = client, human_loop_name, options \\ []) do
    url_path = "/human-loops/#{AWS.Util.encode_uri(human_loop_name)}"

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
  Returns information about human loops, given the specified parameters. If a
  human loop was deleted, it will not be included.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sagemakera2iruntime%20ListHumanLoops&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:flow_definition_arn` (`t:string`) The Amazon Resource Name (ARN) of a flow
  definition.

  ## Optional parameters:
  * `:creation_time_after` (`t:timestamp[date-time]`) (Optional) The timestamp of
  the date when you want the human loops to begin in ISO 8601 format. For
  example, 2020-02-24.
  * `:creation_time_before` (`t:timestamp[date-time]`) (Optional) The timestamp of
  the date before which you want the human loops to begin in ISO 8601 format.
  For example, 2020-02-24.
  * `:max_results` (`t:integer`) The total number of items to return. If the total
  number of available items is more than the value specified in MaxResults,
  then a NextToken is returned in the output. You can use this token to
  display the next page of results.
  * `:next_token` (`t:string`) A token to display the next page of results.
  * `:sort_order` (`t:enum["ASCENDING|DESCENDING"]`) Optional. The order for
  displaying results. Valid values: Ascending and Descending.
  """

  @spec list_human_loops(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_human_loops_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_human_loops_errors()}

  def list_human_loops(%Client{} = client, flow_definition_arn, options \\ [])
      when is_binary(flow_definition_arn) do
    url_path = "/human-loops"

    # Validate optional parameters
    optional_params = [
      creation_time_after: nil,
      creation_time_before: nil,
      max_results: nil,
      next_token: nil,
      sort_order: nil
    ]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"FlowDefinitionArn", flow_definition_arn}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :sort_order) do
        [{"SortOrder", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"NextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"MaxResults", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :creation_time_before) do
        [{"CreationTimeBefore", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :creation_time_after) do
        [{"CreationTimeAfter", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :creation_time_after,
        :creation_time_before,
        :max_results,
        :next_token,
        :sort_order
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Starts a human loop, provided that at least one activation condition is met.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sagemakera2iruntime%20StartHumanLoop&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec start_human_loop(AWS.Client.t(), Keyword.t()) ::
          {:ok, start_human_loop_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_human_loop_errors()}

  def start_human_loop(%Client{} = client, options \\ []) do
    url_path = "/human-loops"

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
  Stops the specified human loop.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sagemakera2iruntime%20StopHumanLoop&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec stop_human_loop(AWS.Client.t(), Keyword.t()) ::
          {:ok, stop_human_loop_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_human_loop_errors()}

  def stop_human_loop(%Client{} = client, options \\ []) do
    url_path = "/human-loops/stop"

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
