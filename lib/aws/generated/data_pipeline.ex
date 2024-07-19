# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DataPipeline do
  @moduledoc """
  AWS Data Pipeline configures and manages a data-driven workflow called a
  pipeline. AWS Data Pipeline handles the details of scheduling and ensuring
  that data dependencies are met so that your application can focus on
  processing the data. AWS Data Pipeline provides a JAR implementation of a task
  runner called AWS Data Pipeline Task Runner. AWS Data Pipeline Task Runner
  provides logic for common data management scenarios, such as performing
  database queries and running data analysis using Amazon Elastic MapReduce
  (Amazon EMR). You can use AWS Data Pipeline Task Runner as your task runner,
  or you can write your own task runner to provide custom data management.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      set_status_input() :: %{
        required("objectIds") => list(String.t()()),
        required("pipelineId") => String.t(),
        required("status") => String.t()
      }
      
  """
  @type set_status_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deactivate_pipeline_input() :: %{
        optional("cancelActive") => boolean(),
        required("pipelineId") => String.t()
      }
      
  """
  @type deactivate_pipeline_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      query_objects_input() :: %{
        optional("limit") => integer(),
        optional("marker") => String.t(),
        optional("query") => query(),
        required("pipelineId") => String.t(),
        required("sphere") => String.t()
      }
      
  """
  @type query_objects_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pipeline_deleted_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type pipeline_deleted_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_pipeline_output() :: %{
        "pipelineId" => String.t()
      }
      
  """
  @type create_pipeline_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validate_pipeline_definition_output() :: %{
        "errored" => boolean(),
        "validationErrors" => list(validation_error()()),
        "validationWarnings" => list(validation_warning()())
      }
      
  """
  @type validate_pipeline_definition_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pipeline_object() :: %{
        "fields" => list(field()()),
        "id" => String.t(),
        "name" => String.t()
      }
      
  """
  @type pipeline_object() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluate_expression_input() :: %{
        required("expression") => String.t(),
        required("objectId") => String.t(),
        required("pipelineId") => String.t()
      }
      
  """
  @type evaluate_expression_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validate_pipeline_definition_input() :: %{
        optional("parameterObjects") => list(parameter_object()()),
        optional("parameterValues") => list(parameter_value()()),
        required("pipelineId") => String.t(),
        required("pipelineObjects") => list(pipeline_object()())
      }
      
  """
  @type validate_pipeline_definition_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      poll_for_task_input() :: %{
        optional("hostname") => String.t(),
        optional("instanceIdentity") => instance_identity(),
        required("workerGroup") => String.t()
      }
      
  """
  @type poll_for_task_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_tags_output() :: %{}
      
  """
  @type add_tags_output() :: %{}

  @typedoc """

  ## Example:
      
      selector() :: %{
        "fieldName" => String.t(),
        "operator" => operator()
      }
      
  """
  @type selector() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      report_task_progress_output() :: %{
        "canceled" => boolean()
      }
      
  """
  @type report_task_progress_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_task_status_input() :: %{
        optional("errorId") => String.t(),
        optional("errorMessage") => String.t(),
        optional("errorStackTrace") => String.t(),
        required("taskId") => String.t(),
        required("taskStatus") => list(any())
      }
      
  """
  @type set_task_status_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_tags_input() :: %{
        required("pipelineId") => String.t(),
        required("tags") => list(tag()())
      }
      
  """
  @type add_tags_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_pipeline_definition_output() :: %{
        "parameterObjects" => list(parameter_object()()),
        "parameterValues" => list(parameter_value()()),
        "pipelineObjects" => list(pipeline_object()())
      }
      
  """
  @type get_pipeline_definition_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_pipelines_input() :: %{
        required("pipelineIds") => list(String.t()())
      }
      
  """
  @type describe_pipelines_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_tags_output() :: %{}
      
  """
  @type remove_tags_output() :: %{}

  @typedoc """

  ## Example:
      
      operator() :: %{
        "type" => list(any()),
        "values" => list(String.t()())
      }
      
  """
  @type operator() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_pipeline_input() :: %{
        required("pipelineId") => String.t()
      }
      
  """
  @type delete_pipeline_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parameter_value() :: %{
        "id" => String.t(),
        "stringValue" => String.t()
      }
      
  """
  @type parameter_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_pipeline_input() :: %{
        optional("description") => String.t(),
        optional("tags") => list(tag()()),
        required("name") => String.t(),
        required("uniqueId") => String.t()
      }
      
  """
  @type create_pipeline_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_task_status_output() :: %{}
      
  """
  @type set_task_status_output() :: %{}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "key" => String.t(),
        "value" => String.t()
      }
      
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_request_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_pipelines_input() :: %{
        optional("marker") => String.t()
      }
      
  """
  @type list_pipelines_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      report_task_runner_heartbeat_output() :: %{
        "terminate" => boolean()
      }
      
  """
  @type report_task_runner_heartbeat_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_pipelines_output() :: %{
        "pipelineDescriptionList" => list(pipeline_description()())
      }
      
  """
  @type describe_pipelines_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      field() :: %{
        "key" => String.t(),
        "refValue" => String.t(),
        "stringValue" => String.t()
      }
      
  """
  @type field() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_error() :: %{
        "errors" => list(String.t()()),
        "id" => String.t()
      }
      
  """
  @type validation_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      report_task_runner_heartbeat_input() :: %{
        optional("hostname") => String.t(),
        optional("workerGroup") => String.t(),
        required("taskrunnerId") => String.t()
      }
      
  """
  @type report_task_runner_heartbeat_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluate_expression_output() :: %{
        "evaluatedExpression" => String.t()
      }
      
  """
  @type evaluate_expression_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      task_object() :: %{
        "attemptId" => String.t(),
        "objects" => map(),
        "pipelineId" => String.t(),
        "taskId" => String.t()
      }
      
  """
  @type task_object() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_objects_output() :: %{
        "hasMoreResults" => boolean(),
        "marker" => String.t(),
        "pipelineObjects" => list(pipeline_object()())
      }
      
  """
  @type describe_objects_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_pipeline_definition_input() :: %{
        optional("version") => String.t(),
        required("pipelineId") => String.t()
      }
      
  """
  @type get_pipeline_definition_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      query_objects_output() :: %{
        "hasMoreResults" => boolean(),
        "ids" => list(String.t()()),
        "marker" => String.t()
      }
      
  """
  @type query_objects_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_warning() :: %{
        "id" => String.t(),
        "warnings" => list(String.t()())
      }
      
  """
  @type validation_warning() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pipeline_description() :: %{
        "description" => String.t(),
        "fields" => list(field()()),
        "name" => String.t(),
        "pipelineId" => String.t(),
        "tags" => list(tag()())
      }
      
  """
  @type pipeline_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_service_error() :: %{
        "message" => String.t()
      }
      
  """
  @type internal_service_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deactivate_pipeline_output() :: %{}
      
  """
  @type deactivate_pipeline_output() :: %{}

  @typedoc """

  ## Example:
      
      poll_for_task_output() :: %{
        "taskObject" => task_object()
      }
      
  """
  @type poll_for_task_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activate_pipeline_input() :: %{
        optional("parameterValues") => list(parameter_value()()),
        optional("startTimestamp") => non_neg_integer(),
        required("pipelineId") => String.t()
      }
      
  """
  @type activate_pipeline_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pipeline_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type pipeline_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_pipelines_output() :: %{
        "hasMoreResults" => boolean(),
        "marker" => String.t(),
        "pipelineIdList" => list(pipeline_id_name()())
      }
      
  """
  @type list_pipelines_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      task_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type task_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_pipeline_definition_output() :: %{
        "errored" => boolean(),
        "validationErrors" => list(validation_error()()),
        "validationWarnings" => list(validation_warning()())
      }
      
  """
  @type put_pipeline_definition_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_pipeline_definition_input() :: %{
        optional("parameterObjects") => list(parameter_object()()),
        optional("parameterValues") => list(parameter_value()()),
        required("pipelineId") => String.t(),
        required("pipelineObjects") => list(pipeline_object()())
      }
      
  """
  @type put_pipeline_definition_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      query() :: %{
        "selectors" => list(selector()())
      }
      
  """
  @type query() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_tags_input() :: %{
        required("pipelineId") => String.t(),
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type remove_tags_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_objects_input() :: %{
        optional("evaluateExpressions") => boolean(),
        optional("marker") => String.t(),
        required("objectIds") => list(String.t()()),
        required("pipelineId") => String.t()
      }
      
  """
  @type describe_objects_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      report_task_progress_input() :: %{
        optional("fields") => list(field()()),
        required("taskId") => String.t()
      }
      
  """
  @type report_task_progress_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_identity() :: %{
        "document" => String.t(),
        "signature" => String.t()
      }
      
  """
  @type instance_identity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parameter_attribute() :: %{
        "key" => String.t(),
        "stringValue" => String.t()
      }
      
  """
  @type parameter_attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activate_pipeline_output() :: %{}
      
  """
  @type activate_pipeline_output() :: %{}

  @typedoc """

  ## Example:
      
      parameter_object() :: %{
        "attributes" => list(parameter_attribute()()),
        "id" => String.t()
      }
      
  """
  @type parameter_object() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pipeline_id_name() :: %{
        "id" => String.t(),
        "name" => String.t()
      }
      
  """
  @type pipeline_id_name() :: %{String.t() => any()}

  @type activate_pipeline_errors() ::
          pipeline_not_found_exception()
          | internal_service_error()
          | invalid_request_exception()
          | pipeline_deleted_exception()

  @type add_tags_errors() ::
          pipeline_not_found_exception()
          | internal_service_error()
          | invalid_request_exception()
          | pipeline_deleted_exception()

  @type create_pipeline_errors() :: internal_service_error() | invalid_request_exception()

  @type deactivate_pipeline_errors() ::
          pipeline_not_found_exception()
          | internal_service_error()
          | invalid_request_exception()
          | pipeline_deleted_exception()

  @type delete_pipeline_errors() ::
          pipeline_not_found_exception() | internal_service_error() | invalid_request_exception()

  @type describe_objects_errors() ::
          pipeline_not_found_exception()
          | internal_service_error()
          | invalid_request_exception()
          | pipeline_deleted_exception()

  @type describe_pipelines_errors() ::
          pipeline_not_found_exception()
          | internal_service_error()
          | invalid_request_exception()
          | pipeline_deleted_exception()

  @type evaluate_expression_errors() ::
          task_not_found_exception()
          | pipeline_not_found_exception()
          | internal_service_error()
          | invalid_request_exception()
          | pipeline_deleted_exception()

  @type get_pipeline_definition_errors() ::
          pipeline_not_found_exception()
          | internal_service_error()
          | invalid_request_exception()
          | pipeline_deleted_exception()

  @type list_pipelines_errors() :: internal_service_error() | invalid_request_exception()

  @type poll_for_task_errors() ::
          task_not_found_exception() | internal_service_error() | invalid_request_exception()

  @type put_pipeline_definition_errors() ::
          pipeline_not_found_exception()
          | internal_service_error()
          | invalid_request_exception()
          | pipeline_deleted_exception()

  @type query_objects_errors() ::
          pipeline_not_found_exception()
          | internal_service_error()
          | invalid_request_exception()
          | pipeline_deleted_exception()

  @type remove_tags_errors() ::
          pipeline_not_found_exception()
          | internal_service_error()
          | invalid_request_exception()
          | pipeline_deleted_exception()

  @type report_task_progress_errors() ::
          task_not_found_exception()
          | pipeline_not_found_exception()
          | internal_service_error()
          | invalid_request_exception()
          | pipeline_deleted_exception()

  @type report_task_runner_heartbeat_errors() ::
          internal_service_error() | invalid_request_exception()

  @type set_status_errors() ::
          pipeline_not_found_exception()
          | internal_service_error()
          | invalid_request_exception()
          | pipeline_deleted_exception()

  @type set_task_status_errors() ::
          task_not_found_exception()
          | pipeline_not_found_exception()
          | internal_service_error()
          | invalid_request_exception()
          | pipeline_deleted_exception()

  @type validate_pipeline_definition_errors() ::
          pipeline_not_found_exception()
          | internal_service_error()
          | invalid_request_exception()
          | pipeline_deleted_exception()

  def metadata do
    %{
      api_version: "2012-10-29",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "datapipeline",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Data Pipeline",
      signature_version: "v4",
      signing_name: "datapipeline",
      target_prefix: "DataPipeline"
    }
  end

  @doc """
  Validates the specified pipeline and starts processing pipeline tasks. If the
  pipeline does not pass validation, activation fails. If you need to pause the
  pipeline to investigate an issue with a component, such as a data source or
  script, call `DeactivatePipeline`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datapipeline%20ActivatePipeline&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:activate_pipeline_input`)
    %{
      optional("parameterValues") => list(parameter_value()()),
      optional("startTimestamp") => non_neg_integer(),
      required("pipelineId") => String.t()
    }
  """

  @spec activate_pipeline(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, activate_pipeline_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, activate_pipeline_errors()}

  def activate_pipeline(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ActivatePipeline", input, options)
  end

  @doc """
  Adds or modifies tags for the specified pipeline.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datapipeline%20AddTags&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:add_tags_input`)
    %{
      required("pipelineId") => String.t(),
      required("tags") => list(tag()())
    }
  """

  @spec add_tags(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, add_tags_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, add_tags_errors()}

  def add_tags(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AddTags", input, options)
  end

  @doc """
  Creates a new, empty pipeline. Use `PutPipelineDefinition` to populate the
  pipeline.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datapipeline%20CreatePipeline&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_pipeline_input`)
    %{
      optional("description") => String.t(),
      optional("tags") => list(tag()()),
      required("name") => String.t(),
      required("uniqueId") => String.t()
    }
  """

  @spec create_pipeline(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_pipeline_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_pipeline_errors()}

  def create_pipeline(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreatePipeline", input, options)
  end

  @doc """
  Deactivates the specified running pipeline. The pipeline is set to the
  `DEACTIVATING` state until the deactivation process completes.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datapipeline%20DeactivatePipeline&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:deactivate_pipeline_input`)
    %{
      optional("cancelActive") => boolean(),
      required("pipelineId") => String.t()
    }
  """

  @spec deactivate_pipeline(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, deactivate_pipeline_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deactivate_pipeline_errors()}

  def deactivate_pipeline(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeactivatePipeline", input, options)
  end

  @doc """
  Deletes a pipeline, its pipeline definition, and its run history. AWS Data
  Pipeline attempts to cancel instances associated with the pipeline that are
  currently being processed by task runners. Deleting a pipeline cannot be
  undone. You cannot query or restore a deleted pipeline. To temporarily pause a
  pipeline instead of deleting it, call `SetStatus` with the status set to
  `PAUSE` on individual components. Components that are paused by `SetStatus`
  can be resumed.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datapipeline%20DeletePipeline&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_pipeline_input`)
    %{
      required("pipelineId") => String.t()
    }
  """

  @spec delete_pipeline(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_pipeline_errors()}

  def delete_pipeline(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeletePipeline", input, options)
  end

  @doc """
  Gets the object definitions for a set of objects associated with the pipeline.
  Object definitions are composed of a set of fields that define the properties
  of the object.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datapipeline%20DescribeObjects&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_objects_input`)
    %{
      optional("evaluateExpressions") => boolean(),
      optional("marker") => String.t(),
      required("objectIds") => list(String.t()()),
      required("pipelineId") => String.t()
    }
  """

  @spec describe_objects(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_objects_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_objects_errors()}

  def describe_objects(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeObjects", input, options)
  end

  @doc """
  Retrieves metadata about one or more pipelines. The information retrieved
  includes the name of the pipeline, the pipeline identifier, its current state,
  and the user account that owns the pipeline. Using account credentials, you
  can retrieve metadata about pipelines that you or your IAM users have created.
  If you are using an IAM user account, you can retrieve metadata about only
  those pipelines for which you have read permissions. To retrieve the full
  pipeline definition instead of metadata about the pipeline, call
  `GetPipelineDefinition`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datapipeline%20DescribePipelines&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_pipelines_input`)
    %{
      required("pipelineIds") => list(String.t()())
    }
  """

  @spec describe_pipelines(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_pipelines_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_pipelines_errors()}

  def describe_pipelines(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribePipelines", input, options)
  end

  @doc """
  Task runners call `EvaluateExpression` to evaluate a string in the context of
  the specified object. For example, a task runner can evaluate SQL queries
  stored in Amazon S3.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datapipeline%20EvaluateExpression&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:evaluate_expression_input`)
    %{
      required("expression") => String.t(),
      required("objectId") => String.t(),
      required("pipelineId") => String.t()
    }
  """

  @spec evaluate_expression(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, evaluate_expression_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, evaluate_expression_errors()}

  def evaluate_expression(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "EvaluateExpression", input, options)
  end

  @doc """
  Gets the definition of the specified pipeline. You can call
  `GetPipelineDefinition` to retrieve the pipeline definition that you provided
  using `PutPipelineDefinition`. <examples>

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datapipeline%20GetPipelineDefinition&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_pipeline_definition_input`)
    %{
      optional("version") => String.t(),
      required("pipelineId") => String.t()
    }
  """

  @spec get_pipeline_definition(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_pipeline_definition_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_pipeline_definition_errors()}

  def get_pipeline_definition(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetPipelineDefinition", input, options)
  end

  @doc """
  Lists the pipeline identifiers for all active pipelines that you have permission
  to access.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datapipeline%20ListPipelines&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_pipelines_input`)
    %{
      optional("marker") => String.t()
    }
  """

  @spec list_pipelines(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_pipelines_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_pipelines_errors()}

  def list_pipelines(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListPipelines", input, options)
  end

  @doc """
  Task runners call `PollForTask` to receive a task to perform from AWS Data
  Pipeline. The task runner specifies which tasks it can perform by setting a
  value for the `workerGroup` parameter. The task returned can come from any of
  the pipelines that match the `workerGroup` value passed in by the task runner
  and that was launched using the IAM user credentials specified by the task
  runner. If tasks are ready in the work queue, `PollForTask` returns a response
  immediately. If no tasks are available in the queue, `PollForTask` uses
  long-polling and holds on to a poll connection for up to a 90 seconds, during
  which time the first newly scheduled task is handed to the task runner. To
  accomodate this, set the socket timeout in your task runner to 90 seconds. The
  task runner should not call `PollForTask` again on the same `workerGroup`
  until it receives a response, and this can take up to 90 seconds.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datapipeline%20PollForTask&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:poll_for_task_input`)
    %{
      optional("hostname") => String.t(),
      optional("instanceIdentity") => instance_identity(),
      required("workerGroup") => String.t()
    }
  """

  @spec poll_for_task(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, poll_for_task_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, poll_for_task_errors()}

  def poll_for_task(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PollForTask", input, options)
  end

  @doc """
  Adds tasks, schedules, and preconditions to the specified pipeline. You can use
  `PutPipelineDefinition` to populate a new pipeline. `PutPipelineDefinition`
  also validates the configuration as it adds it to the pipeline. Changes to the
  pipeline are saved unless one of the following three validation errors exists
  in the pipeline.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datapipeline%20PutPipelineDefinition&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_pipeline_definition_input`)
    %{
      optional("parameterObjects") => list(parameter_object()()),
      optional("parameterValues") => list(parameter_value()()),
      required("pipelineId") => String.t(),
      required("pipelineObjects") => list(pipeline_object()())
    }
  """

  @spec put_pipeline_definition(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_pipeline_definition_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_pipeline_definition_errors()}

  def put_pipeline_definition(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutPipelineDefinition", input, options)
  end

  @doc """
  Queries the specified pipeline for the names of objects that match the specified
  set of conditions.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datapipeline%20QueryObjects&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:query_objects_input`)
    %{
      optional("limit") => integer(),
      optional("marker") => String.t(),
      optional("query") => query(),
      required("pipelineId") => String.t(),
      required("sphere") => String.t()
    }
  """

  @spec query_objects(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, query_objects_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, query_objects_errors()}

  def query_objects(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "QueryObjects", input, options)
  end

  @doc """
  Removes existing tags from the specified pipeline.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datapipeline%20RemoveTags&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:remove_tags_input`)
    %{
      required("pipelineId") => String.t(),
      required("tagKeys") => list(String.t()())
    }
  """

  @spec remove_tags(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, remove_tags_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, remove_tags_errors()}

  def remove_tags(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "RemoveTags", input, options)
  end

  @doc """
  Task runners call `ReportTaskProgress` when assigned a task to acknowledge that
  it has the task. If the web service does not receive this acknowledgement
  within 2 minutes, it assigns the task in a subsequent `PollForTask` call.
  After this initial acknowledgement, the task runner only needs to report
  progress every 15 minutes to maintain its ownership of the task. You can
  change this reporting time from 15 minutes by specifying a
  `reportProgressTimeout` field in your pipeline. If a task runner does not
  report its status after 5 minutes, AWS Data Pipeline assumes that the task
  runner is unable to process the task and reassigns the task in a subsequent
  response to `PollForTask`. Task runners should call `ReportTaskProgress` every
  60 seconds.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datapipeline%20ReportTaskProgress&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:report_task_progress_input`)
    %{
      optional("fields") => list(field()()),
      required("taskId") => String.t()
    }
  """

  @spec report_task_progress(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, report_task_progress_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, report_task_progress_errors()}

  def report_task_progress(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ReportTaskProgress", input, options)
  end

  @doc """
  Task runners call `ReportTaskRunnerHeartbeat` every 15 minutes to indicate that
  they are operational. If the AWS Data Pipeline Task Runner is launched on a
  resource managed by AWS Data Pipeline, the web service can use this call to
  detect when the task runner application has failed and restart a new instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datapipeline%20ReportTaskRunnerHeartbeat&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:report_task_runner_heartbeat_input`)
    %{
      optional("hostname") => String.t(),
      optional("workerGroup") => String.t(),
      required("taskrunnerId") => String.t()
    }
  """

  @spec report_task_runner_heartbeat(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, report_task_runner_heartbeat_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, report_task_runner_heartbeat_errors()}

  def report_task_runner_heartbeat(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ReportTaskRunnerHeartbeat", input, options)
  end

  @doc """
  Requests that the status of the specified physical or logical pipeline objects
  be updated in the specified pipeline. This update might not occur immediately,
  but is eventually consistent. The status that can be set depends on the type
  of object (for example, DataNode or Activity). You cannot perform this
  operation on `FINISHED` pipelines and attempting to do so returns
  `InvalidRequestException`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datapipeline%20SetStatus&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:set_status_input`)
    %{
      required("objectIds") => list(String.t()()),
      required("pipelineId") => String.t(),
      required("status") => String.t()
    }
  """

  @spec set_status(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, set_status_errors()}

  def set_status(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetStatus", input, options)
  end

  @doc """
  Task runners call `SetTaskStatus` to notify AWS Data Pipeline that a task is
  completed and provide information about the final status. A task runner makes
  this call regardless of whether the task was sucessful. A task runner does not
  need to call `SetTaskStatus` for tasks that are canceled by the web service
  during a call to `ReportTaskProgress`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datapipeline%20SetTaskStatus&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:set_task_status_input`)
    %{
      optional("errorId") => String.t(),
      optional("errorMessage") => String.t(),
      optional("errorStackTrace") => String.t(),
      required("taskId") => String.t(),
      required("taskStatus") => list(any())
    }
  """

  @spec set_task_status(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, set_task_status_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, set_task_status_errors()}

  def set_task_status(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetTaskStatus", input, options)
  end

  @doc """
  Validates the specified pipeline definition to ensure that it is well formed and
  can be run without error. <examples>

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=datapipeline%20ValidatePipelineDefinition&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:validate_pipeline_definition_input`)
    %{
      optional("parameterObjects") => list(parameter_object()()),
      optional("parameterValues") => list(parameter_value()()),
      required("pipelineId") => String.t(),
      required("pipelineObjects") => list(pipeline_object()())
    }
  """

  @spec validate_pipeline_definition(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, validate_pipeline_definition_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, validate_pipeline_definition_errors()}

  def validate_pipeline_definition(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ValidatePipelineDefinition", input, options)
  end
end
