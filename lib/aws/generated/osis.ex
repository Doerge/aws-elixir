# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.OSIS do
  @moduledoc """
  Use the Amazon OpenSearch Ingestion API to create and manage ingestion
  pipelines. OpenSearch Ingestion is a fully managed data collector that
  delivers real-time log and trace data to OpenSearch Service domains. For more
  information, see [Getting data into your cluster using OpenSearch
  Ingestion](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/ingestion.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      service_vpc_endpoint() :: %{
        "ServiceName" => list(any()),
        "VpcEndpointId" => String.t()
      }

  """
  @type service_vpc_endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Arn") => String.t(),
        required("Tags") => list(tag()())
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_pipeline_response() :: %{
        "Pipeline" => pipeline()
      }

  """
  @type get_pipeline_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_pipelines_response() :: %{
        "NextToken" => String.t(),
        "Pipelines" => list(pipeline_summary()())
      }

  """
  @type list_pipelines_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_pipeline_response() :: %{
        "Pipeline" => pipeline()
      }

  """
  @type update_pipeline_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_pipelines_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_pipelines_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      create_pipeline_response() :: %{
        "Pipeline" => pipeline()
      }

  """
  @type create_pipeline_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_pipeline_change_progress_response() :: %{
        "ChangeProgressStatuses" => list(change_progress_status()())
      }

  """
  @type get_pipeline_change_progress_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pipeline() :: %{
        "BufferOptions" => buffer_options(),
        "CreatedAt" => non_neg_integer(),
        "Destinations" => list(pipeline_destination()()),
        "EncryptionAtRestOptions" => encryption_at_rest_options(),
        "IngestEndpointUrls" => list(String.t()()),
        "LastUpdatedAt" => non_neg_integer(),
        "LogPublishingOptions" => log_publishing_options(),
        "MaxUnits" => integer(),
        "MinUnits" => integer(),
        "PipelineArn" => String.t(),
        "PipelineConfigurationBody" => String.t(),
        "PipelineName" => String.t(),
        "ServiceVpcEndpoints" => list(service_vpc_endpoint()()),
        "Status" => list(any()),
        "StatusReason" => pipeline_status_reason(),
        "Tags" => list(tag()()),
        "VpcEndpoints" => list(vpc_endpoint()())
      }

  """
  @type pipeline() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_pipeline_response() :: %{
        "Pipeline" => pipeline()
      }

  """
  @type start_pipeline_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disabled_operation_exception() :: %{
        "message" => String.t()
      }

  """
  @type disabled_operation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      change_progress_status() :: %{
        "ChangeProgressStages" => list(change_progress_stage()()),
        "StartTime" => non_neg_integer(),
        "Status" => list(any()),
        "TotalNumberOfStages" => integer()
      }

  """
  @type change_progress_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("Arn") => String.t(),
        required("TagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cloud_watch_log_destination() :: %{
        "LogGroup" => String.t()
      }

  """
  @type cloud_watch_log_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_pipeline_request() :: %{}

  """
  @type start_pipeline_request() :: %{}

  @typedoc """

  ## Example:

      buffer_options() :: %{
        "PersistentBufferEnabled" => boolean()
      }

  """
  @type buffer_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_pipeline_blueprints_request() :: %{}

  """
  @type list_pipeline_blueprints_request() :: %{}

  @typedoc """

  ## Example:

      list_pipeline_blueprints_response() :: %{
        "Blueprints" => list(pipeline_blueprint_summary()())
      }

  """
  @type list_pipeline_blueprints_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }

  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_pipeline_request() :: %{
        optional("BufferOptions") => buffer_options(),
        optional("EncryptionAtRestOptions") => encryption_at_rest_options(),
        optional("LogPublishingOptions") => log_publishing_options(),
        optional("Tags") => list(tag()()),
        optional("VpcOptions") => vpc_options(),
        required("MaxUnits") => integer(),
        required("MinUnits") => integer(),
        required("PipelineConfigurationBody") => String.t(),
        required("PipelineName") => String.t()
      }

  """
  @type create_pipeline_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_pipeline_request() :: %{
        optional("BufferOptions") => buffer_options(),
        optional("EncryptionAtRestOptions") => encryption_at_rest_options(),
        optional("LogPublishingOptions") => log_publishing_options(),
        optional("MaxUnits") => integer(),
        optional("MinUnits") => integer(),
        optional("PipelineConfigurationBody") => String.t()
      }

  """
  @type update_pipeline_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_pipeline_blueprint_request() :: %{
        optional("Format") => String.t()
      }

  """
  @type get_pipeline_blueprint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_pipeline_request() :: %{}

  """
  @type delete_pipeline_request() :: %{}

  @typedoc """

  ## Example:

      get_pipeline_blueprint_response() :: %{
        "Blueprint" => pipeline_blueprint(),
        "Format" => String.t()
      }

  """
  @type get_pipeline_blueprint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_pipeline_change_progress_request() :: %{}

  """
  @type get_pipeline_change_progress_request() :: %{}

  @typedoc """

  ## Example:

      pipeline_summary() :: %{
        "CreatedAt" => non_neg_integer(),
        "Destinations" => list(pipeline_destination()()),
        "LastUpdatedAt" => non_neg_integer(),
        "MaxUnits" => integer(),
        "MinUnits" => integer(),
        "PipelineArn" => String.t(),
        "PipelineName" => String.t(),
        "Status" => list(any()),
        "StatusReason" => pipeline_status_reason(),
        "Tags" => list(tag()())
      }

  """
  @type pipeline_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      encryption_at_rest_options() :: %{
        "KmsKeyArn" => String.t()
      }

  """
  @type encryption_at_rest_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => list(tag()())
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vpc_endpoint() :: %{
        "VpcEndpointId" => String.t(),
        "VpcId" => String.t(),
        "VpcOptions" => vpc_options()
      }

  """
  @type vpc_endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pipeline_blueprint() :: %{
        "BlueprintName" => String.t(),
        "DisplayDescription" => String.t(),
        "DisplayName" => String.t(),
        "PipelineConfigurationBody" => String.t(),
        "Service" => String.t(),
        "UseCase" => String.t()
      }

  """
  @type pipeline_blueprint() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      log_publishing_options() :: %{
        "CloudWatchLogDestination" => cloud_watch_log_destination(),
        "IsLoggingEnabled" => boolean()
      }

  """
  @type log_publishing_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pipeline_blueprint_summary() :: %{
        "BlueprintName" => String.t(),
        "DisplayDescription" => String.t(),
        "DisplayName" => String.t(),
        "Service" => String.t(),
        "UseCase" => String.t()
      }

  """
  @type pipeline_blueprint_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_pipeline_request() :: %{}

  """
  @type stop_pipeline_request() :: %{}

  @typedoc """

  ## Example:

      change_progress_stage() :: %{
        "Description" => String.t(),
        "LastUpdatedAt" => non_neg_integer(),
        "Name" => String.t(),
        "Status" => list(any())
      }

  """
  @type change_progress_stage() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_message() :: %{
        "Message" => String.t()
      }

  """
  @type validation_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_exception() :: %{
        "message" => String.t()
      }

  """
  @type internal_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      stop_pipeline_response() :: %{
        "Pipeline" => pipeline()
      }

  """
  @type stop_pipeline_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validate_pipeline_response() :: %{
        "Errors" => list(validation_message()()),
        "isValid" => boolean()
      }

  """
  @type validate_pipeline_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_pipeline_request() :: %{}

  """
  @type get_pipeline_request() :: %{}

  @typedoc """

  ## Example:

      pipeline_status_reason() :: %{
        "Description" => String.t()
      }

  """
  @type pipeline_status_reason() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pipeline_destination() :: %{
        "Endpoint" => String.t(),
        "ServiceName" => String.t()
      }

  """
  @type pipeline_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => String.t()
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{
        required("Arn") => String.t()
      }

  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vpc_options() :: %{
        "SecurityGroupIds" => list(String.t()()),
        "SubnetIds" => list(String.t()()),
        "VpcAttachmentOptions" => vpc_attachment_options()
      }

  """
  @type vpc_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      limit_exceeded_exception() :: %{
        "message" => String.t()
      }

  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_already_exists_exception() :: %{
        "message" => String.t()
      }

  """
  @type resource_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vpc_attachment_options() :: %{
        "AttachToVpc" => boolean(),
        "CidrBlock" => String.t()
      }

  """
  @type vpc_attachment_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validate_pipeline_request() :: %{
        required("PipelineConfigurationBody") => String.t()
      }

  """
  @type validate_pipeline_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_pipeline_response() :: %{}

  """
  @type delete_pipeline_response() :: %{}

  @typedoc """

  ## Example:

      invalid_pagination_token_exception() :: %{
        "message" => String.t()
      }

  """
  @type invalid_pagination_token_exception() :: %{String.t() => any()}

  @type create_pipeline_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  @type delete_pipeline_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | disabled_operation_exception()

  @type get_pipeline_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  @type get_pipeline_blueprint_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  @type get_pipeline_change_progress_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  @type list_pipeline_blueprints_errors() ::
          invalid_pagination_token_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_exception()
          | disabled_operation_exception()

  @type list_pipelines_errors() ::
          invalid_pagination_token_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_exception()
          | disabled_operation_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  @type start_pipeline_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | disabled_operation_exception()

  @type stop_pipeline_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | disabled_operation_exception()

  @type tag_resource_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  @type untag_resource_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  @type update_pipeline_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | disabled_operation_exception()

  @type validate_pipeline_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_exception()
          | disabled_operation_exception()

  def metadata do
    %{
      api_version: "2022-01-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "osis",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "OSIS",
      signature_version: "v4",
      signing_name: "osis",
      target_prefix: nil
    }
  end

  @doc """
  Creates an OpenSearch Ingestion pipeline. For more information, see [Creating
  Amazon OpenSearch Ingestion
  pipelines](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=osis%20CreatePipeline&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_pipeline(AWS.Client.t(), create_pipeline_request(), Keyword.t()) ::
          {:ok, create_pipeline_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_pipeline_errors()}
  def create_pipeline(%Client{} = client, input, options \\ []) do
    url_path = "/2022-01-01/osis/createPipeline"
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
  Deletes an OpenSearch Ingestion pipeline. For more information, see [Deleting
  Amazon OpenSearch Ingestion
  pipelines](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/delete-pipeline.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=osis%20DeletePipeline&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:pipeline_name` (`t:string`) The name of the pipeline to delete.

  ## Optional parameters:
  """
  @spec delete_pipeline(AWS.Client.t(), String.t(), delete_pipeline_request(), Keyword.t()) ::
          {:ok, delete_pipeline_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_pipeline_errors()}
  def delete_pipeline(%Client{} = client, pipeline_name, input, options \\ []) do
    url_path = "/2022-01-01/osis/deletePipeline/#{AWS.Util.encode_uri(pipeline_name)}"
    headers = []
    query_params = []

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
  Retrieves information about an OpenSearch Ingestion pipeline.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=osis%20GetPipeline&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:pipeline_name` (`t:string`) The name of the pipeline.

  ## Optional parameters:
  """
  @spec get_pipeline(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_pipeline_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_pipeline_errors()}
  def get_pipeline(%Client{} = client, pipeline_name, options \\ []) do
    url_path = "/2022-01-01/osis/getPipeline/#{AWS.Util.encode_uri(pipeline_name)}"

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
  Retrieves information about a specific blueprint for OpenSearch Ingestion.
  Blueprints are templates for the configuration needed for a `CreatePipeline`
  request. For more information, see [Using blueprints to create a
  pipeline](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html#pipeline-blueprint).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=osis%20GetPipelineBlueprint&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:blueprint_name` (`t:string`) The name of the blueprint to retrieve.

  ## Optional parameters:
  * `:format` (`t:string`) The format format of the blueprint to retrieve.
  """
  @spec get_pipeline_blueprint(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_pipeline_blueprint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_pipeline_blueprint_errors()}
  def get_pipeline_blueprint(%Client{} = client, blueprint_name, options \\ []) do
    url_path = "/2022-01-01/osis/getPipelineBlueprint/#{AWS.Util.encode_uri(blueprint_name)}"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [format: nil
    # ])

    headers = []
    query_params = []

    {format, options} = Keyword.pop(options, :format, nil)

    query_params =
      if !is_nil(format) do
        [{"format", format} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns progress information for the current change happening on an OpenSearch
  Ingestion pipeline. Currently, this operation only returns information when a
  pipeline is being created.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=osis%20GetPipelineChangeProgress&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:pipeline_name` (`t:string`) The name of the pipeline.

  ## Optional parameters:
  """
  @spec get_pipeline_change_progress(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_pipeline_change_progress_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_pipeline_change_progress_errors()}
  def get_pipeline_change_progress(%Client{} = client, pipeline_name, options \\ []) do
    url_path = "/2022-01-01/osis/getPipelineChangeProgress/#{AWS.Util.encode_uri(pipeline_name)}"

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
  Retrieves a list of all available blueprints for Data Prepper. For more
  information, see [Using blueprints to create a
  pipeline](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html#pipeline-blueprint).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=osis%20ListPipelineBlueprints&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec list_pipeline_blueprints(AWS.Client.t(), list_pipeline_blueprints_request(), Keyword.t()) ::
          {:ok, list_pipeline_blueprints_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_pipeline_blueprints_errors()}
  def list_pipeline_blueprints(%Client{} = client, input, options \\ []) do
    url_path = "/2022-01-01/osis/listPipelineBlueprints"
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
  Lists all OpenSearch Ingestion pipelines in the current Amazon Web Services
  account and Region. For more information, see [Viewing Amazon OpenSearch
  Ingestion
  pipelines](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/list-pipeline.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=osis%20ListPipelines&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) An optional parameter that specifies the maximum
    number of results to return. You can use nextToken to get the next page of
    results.
  * `:next_token` (`t:string`) If your initial ListPipelines operation returns a
    nextToken, you can include the returned nextToken in subsequent
    ListPipelines operations, which returns results in the next page.
  """
  @spec list_pipelines(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_pipelines_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_pipelines_errors()}
  def list_pipelines(%Client{} = client, options \\ []) do
    url_path = "/2022-01-01/osis/listPipelines"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, next_token: nil
    # ])

    headers = []
    query_params = []

    {next_token, options} = Keyword.pop(options, :next_token, nil)

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    {max_results, options} = Keyword.pop(options, :max_results, nil)

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all resource tags associated with an OpenSearch Ingestion pipeline. For
  more information, see [Tagging Amazon OpenSearch Ingestion
  pipelines](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-pipeline.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=osis%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:arn` (`t:string`) The Amazon Resource Name (ARN) of the pipeline to retrieve
    tags for.
  """
  @spec list_tags_for_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, arn, options \\ []) do
    url_path = "/2022-01-01/osis/listTagsForResource"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [arn: nil
    # ])

    headers = []
    query_params = []

    {arn, options} = Keyword.pop(options, :arn, nil)

    query_params =
      if !is_nil(arn) do
        [{"arn", arn} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Starts an OpenSearch Ingestion pipeline. For more information, see [Starting an
  OpenSearch Ingestion
  pipeline](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/pipeline--stop-start.html#pipeline--start).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=osis%20StartPipeline&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:pipeline_name` (`t:string`) The name of the pipeline to start.

  ## Optional parameters:
  """
  @spec start_pipeline(AWS.Client.t(), String.t(), start_pipeline_request(), Keyword.t()) ::
          {:ok, start_pipeline_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_pipeline_errors()}
  def start_pipeline(%Client{} = client, pipeline_name, input, options \\ []) do
    url_path = "/2022-01-01/osis/startPipeline/#{AWS.Util.encode_uri(pipeline_name)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Stops an OpenSearch Ingestion pipeline. For more information, see [Stopping an
  OpenSearch Ingestion
  pipeline](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/pipeline--stop-start.html#pipeline--stop).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=osis%20StopPipeline&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:pipeline_name` (`t:string`) The name of the pipeline to stop.

  ## Optional parameters:
  """
  @spec stop_pipeline(AWS.Client.t(), String.t(), stop_pipeline_request(), Keyword.t()) ::
          {:ok, stop_pipeline_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_pipeline_errors()}
  def stop_pipeline(%Client{} = client, pipeline_name, input, options \\ []) do
    url_path = "/2022-01-01/osis/stopPipeline/#{AWS.Util.encode_uri(pipeline_name)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Tags an OpenSearch Ingestion pipeline. For more information, see [Tagging Amazon
  OpenSearch Ingestion
  pipelines](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-pipeline.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=osis%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:arn` (`t:string`) The Amazon Resource Name (ARN) of the pipeline to tag.
  """
  @spec tag_resource(AWS.Client.t(), tag_resource_request(), Keyword.t()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/2022-01-01/osis/tagResource"
    headers = []

    {query_params, input} =
      [
        {"Arn", "arn"}
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
  Removes one or more tags from an OpenSearch Ingestion pipeline. For more
  information, see [Tagging Amazon OpenSearch Ingestion
  pipelines](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-pipeline.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=osis%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:arn` (`t:string`) The Amazon Resource Name (ARN) of the pipeline to remove
    tags from.
  """
  @spec untag_resource(AWS.Client.t(), untag_resource_request(), Keyword.t()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/2022-01-01/osis/untagResource"
    headers = []

    {query_params, input} =
      [
        {"Arn", "arn"}
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
  Updates an OpenSearch Ingestion pipeline. For more information, see [Updating
  Amazon OpenSearch Ingestion
  pipelines](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/update-pipeline.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=osis%20UpdatePipeline&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:pipeline_name` (`t:string`) The name of the pipeline to update.

  ## Optional parameters:
  """
  @spec update_pipeline(AWS.Client.t(), String.t(), update_pipeline_request(), Keyword.t()) ::
          {:ok, update_pipeline_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_pipeline_errors()}
  def update_pipeline(%Client{} = client, pipeline_name, input, options \\ []) do
    url_path = "/2022-01-01/osis/updatePipeline/#{AWS.Util.encode_uri(pipeline_name)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Checks whether an OpenSearch Ingestion pipeline configuration is valid prior to
  creation. For more information, see [Creating Amazon OpenSearch Ingestion
  pipelines](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=osis%20ValidatePipeline&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec validate_pipeline(AWS.Client.t(), validate_pipeline_request(), Keyword.t()) ::
          {:ok, validate_pipeline_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, validate_pipeline_errors()}
  def validate_pipeline(%Client{} = client, input, options \\ []) do
    url_path = "/2022-01-01/osis/validatePipeline"
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
