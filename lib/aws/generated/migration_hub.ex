# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MigrationHub do
  @moduledoc """
  The AWS Migration Hub API methods help to obtain server and application
  migration status and integrate your resource-specific migration tool by
  providing a programmatic interface to Migration Hub.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      list_application_states_request() :: %{
        optional("ApplicationIds") => list(String.t()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_application_states_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      task() :: %{
        "ProgressPercent" => integer(),
        "Status" => list(any()),
        "StatusDetail" => String.t()
      }
      
  """
  @type task() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_attribute() :: %{
        "Type" => list(any()),
        "Value" => String.t()
      }
      
  """
  @type resource_attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notify_application_state_request() :: %{
        optional("DryRun") => boolean(),
        optional("UpdateDateTime") => non_neg_integer(),
        required("ApplicationId") => String.t(),
        required("Status") => list(any())
      }
      
  """
  @type notify_application_state_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_migration_tasks_result() :: %{
        "MigrationTaskSummaryList" => list(migration_task_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_migration_tasks_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notify_migration_task_state_result() :: %{}
      
  """
  @type notify_migration_task_state_result() :: %{}

  @typedoc """

  ## Example:
      
      disassociate_discovered_resource_result() :: %{}
      
  """
  @type disassociate_discovered_resource_result() :: %{}

  @typedoc """

  ## Example:
      
      put_resource_attributes_request() :: %{
        optional("DryRun") => boolean(),
        required("MigrationTaskName") => String.t(),
        required("ProgressUpdateStream") => String.t(),
        required("ResourceAttributeList") => list(resource_attribute()())
      }
      
  """
  @type put_resource_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_progress_update_streams_result() :: %{
        "NextToken" => String.t(),
        "ProgressUpdateStreamSummaryList" => list(progress_update_stream_summary()())
      }
      
  """
  @type list_progress_update_streams_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_resource_attributes_result() :: %{}
      
  """
  @type put_resource_attributes_result() :: %{}

  @typedoc """

  ## Example:
      
      delete_progress_update_stream_request() :: %{
        optional("DryRun") => boolean(),
        required("ProgressUpdateStreamName") => String.t()
      }
      
  """
  @type delete_progress_update_stream_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_created_artifact_result() :: %{}
      
  """
  @type disassociate_created_artifact_result() :: %{}

  @typedoc """

  ## Example:
      
      associate_discovered_resource_request() :: %{
        optional("DryRun") => boolean(),
        required("DiscoveredResource") => discovered_resource(),
        required("MigrationTaskName") => String.t(),
        required("ProgressUpdateStream") => String.t()
      }
      
  """
  @type associate_discovered_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unauthorized_operation() :: %{
        "Message" => String.t()
      }
      
  """
  @type unauthorized_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_progress_update_stream_request() :: %{
        optional("DryRun") => boolean(),
        required("ProgressUpdateStreamName") => String.t()
      }
      
  """
  @type create_progress_update_stream_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_progress_update_stream_result() :: %{}
      
  """
  @type delete_progress_update_stream_result() :: %{}

  @typedoc """

  ## Example:
      
      dry_run_operation() :: %{
        "Message" => String.t()
      }
      
  """
  @type dry_run_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_application_states_result() :: %{
        "ApplicationStateList" => list(application_state()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_application_states_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_migration_task_request() :: %{
        optional("DryRun") => boolean(),
        required("MigrationTaskName") => String.t(),
        required("ProgressUpdateStream") => String.t()
      }
      
  """
  @type import_migration_task_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      created_artifact() :: %{
        "Description" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type created_artifact() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_discovered_resources_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("MigrationTaskName") => String.t(),
        required("ProgressUpdateStream") => String.t()
      }
      
  """
  @type list_discovered_resources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_progress_update_streams_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_progress_update_streams_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_created_artifacts_result() :: %{
        "CreatedArtifactList" => list(created_artifact()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_created_artifacts_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_input_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_input_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      progress_update_stream_summary() :: %{
        "ProgressUpdateStreamName" => String.t()
      }
      
  """
  @type progress_update_stream_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_created_artifact_request() :: %{
        optional("DryRun") => boolean(),
        required("CreatedArtifact") => created_artifact(),
        required("MigrationTaskName") => String.t(),
        required("ProgressUpdateStream") => String.t()
      }
      
  """
  @type associate_created_artifact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_migration_task_result() :: %{}
      
  """
  @type import_migration_task_result() :: %{}

  @typedoc """

  ## Example:
      
      disassociate_discovered_resource_request() :: %{
        optional("DryRun") => boolean(),
        required("ConfigurationId") => String.t(),
        required("MigrationTaskName") => String.t(),
        required("ProgressUpdateStream") => String.t()
      }
      
  """
  @type disassociate_discovered_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_unavailable_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notify_migration_task_state_request() :: %{
        optional("DryRun") => boolean(),
        required("MigrationTaskName") => String.t(),
        required("NextUpdateSeconds") => integer(),
        required("ProgressUpdateStream") => String.t(),
        required("Task") => task(),
        required("UpdateDateTime") => non_neg_integer()
      }
      
  """
  @type notify_migration_task_state_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_created_artifact_request() :: %{
        optional("DryRun") => boolean(),
        required("CreatedArtifactName") => String.t(),
        required("MigrationTaskName") => String.t(),
        required("ProgressUpdateStream") => String.t()
      }
      
  """
  @type disassociate_created_artifact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_created_artifacts_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("MigrationTaskName") => String.t(),
        required("ProgressUpdateStream") => String.t()
      }
      
  """
  @type list_created_artifacts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      discovered_resource() :: %{
        "ConfigurationId" => String.t(),
        "Description" => String.t()
      }
      
  """
  @type discovered_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_error() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_server_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_migration_task_request() :: %{
        required("MigrationTaskName") => String.t(),
        required("ProgressUpdateStream") => String.t()
      }
      
  """
  @type describe_migration_task_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_migration_tasks_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ResourceName") => String.t()
      }
      
  """
  @type list_migration_tasks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_migration_task_result() :: %{
        "MigrationTask" => migration_task()
      }
      
  """
  @type describe_migration_task_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_error_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type policy_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Message" => String.t(),
        "RetryAfterSeconds" => integer()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_progress_update_stream_result() :: %{}
      
  """
  @type create_progress_update_stream_result() :: %{}

  @typedoc """

  ## Example:
      
      home_region_not_set_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type home_region_not_set_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_created_artifact_result() :: %{}
      
  """
  @type associate_created_artifact_result() :: %{}

  @typedoc """

  ## Example:
      
      associate_discovered_resource_result() :: %{}
      
  """
  @type associate_discovered_resource_result() :: %{}

  @typedoc """

  ## Example:
      
      notify_application_state_result() :: %{}
      
  """
  @type notify_application_state_result() :: %{}

  @typedoc """

  ## Example:
      
      describe_application_state_request() :: %{
        required("ApplicationId") => String.t()
      }
      
  """
  @type describe_application_state_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      migration_task_summary() :: %{
        "MigrationTaskName" => String.t(),
        "ProgressPercent" => integer(),
        "ProgressUpdateStream" => String.t(),
        "Status" => list(any()),
        "StatusDetail" => String.t(),
        "UpdateDateTime" => non_neg_integer()
      }
      
  """
  @type migration_task_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_discovered_resources_result() :: %{
        "DiscoveredResourceList" => list(discovered_resource()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_discovered_resources_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      application_state() :: %{
        "ApplicationId" => String.t(),
        "ApplicationStatus" => list(any()),
        "LastUpdatedTime" => non_neg_integer()
      }
      
  """
  @type application_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_application_state_result() :: %{
        "ApplicationStatus" => list(any()),
        "LastUpdatedTime" => non_neg_integer()
      }
      
  """
  @type describe_application_state_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      migration_task() :: %{
        "MigrationTaskName" => String.t(),
        "ProgressUpdateStream" => String.t(),
        "ResourceAttributeList" => list(resource_attribute()()),
        "Task" => task(),
        "UpdateDateTime" => non_neg_integer()
      }
      
  """
  @type migration_task() :: %{String.t() => any()}

  @type associate_created_artifact_errors() ::
          home_region_not_set_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_error()
          | service_unavailable_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | dry_run_operation()
          | unauthorized_operation()

  @type associate_discovered_resource_errors() ::
          home_region_not_set_exception()
          | throttling_exception()
          | policy_error_exception()
          | access_denied_exception()
          | internal_server_error()
          | service_unavailable_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | dry_run_operation()
          | unauthorized_operation()

  @type create_progress_update_stream_errors() ::
          home_region_not_set_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_error()
          | service_unavailable_exception()
          | invalid_input_exception()
          | dry_run_operation()
          | unauthorized_operation()

  @type delete_progress_update_stream_errors() ::
          home_region_not_set_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_error()
          | service_unavailable_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | dry_run_operation()
          | unauthorized_operation()

  @type describe_application_state_errors() ::
          home_region_not_set_exception()
          | throttling_exception()
          | policy_error_exception()
          | access_denied_exception()
          | internal_server_error()
          | service_unavailable_exception()
          | invalid_input_exception()
          | resource_not_found_exception()

  @type describe_migration_task_errors() ::
          home_region_not_set_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_error()
          | service_unavailable_exception()
          | invalid_input_exception()
          | resource_not_found_exception()

  @type disassociate_created_artifact_errors() ::
          home_region_not_set_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_error()
          | service_unavailable_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | dry_run_operation()
          | unauthorized_operation()

  @type disassociate_discovered_resource_errors() ::
          home_region_not_set_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_error()
          | service_unavailable_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | dry_run_operation()
          | unauthorized_operation()

  @type import_migration_task_errors() ::
          home_region_not_set_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_error()
          | service_unavailable_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | dry_run_operation()
          | unauthorized_operation()

  @type list_application_states_errors() ::
          home_region_not_set_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_error()
          | service_unavailable_exception()
          | invalid_input_exception()

  @type list_created_artifacts_errors() ::
          home_region_not_set_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_error()
          | service_unavailable_exception()
          | invalid_input_exception()
          | resource_not_found_exception()

  @type list_discovered_resources_errors() ::
          home_region_not_set_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_error()
          | service_unavailable_exception()
          | invalid_input_exception()
          | resource_not_found_exception()

  @type list_migration_tasks_errors() ::
          home_region_not_set_exception()
          | throttling_exception()
          | policy_error_exception()
          | access_denied_exception()
          | internal_server_error()
          | service_unavailable_exception()
          | invalid_input_exception()
          | resource_not_found_exception()

  @type list_progress_update_streams_errors() ::
          home_region_not_set_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_error()
          | service_unavailable_exception()
          | invalid_input_exception()

  @type notify_application_state_errors() ::
          home_region_not_set_exception()
          | throttling_exception()
          | policy_error_exception()
          | access_denied_exception()
          | internal_server_error()
          | service_unavailable_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | dry_run_operation()
          | unauthorized_operation()

  @type notify_migration_task_state_errors() ::
          home_region_not_set_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_error()
          | service_unavailable_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | dry_run_operation()
          | unauthorized_operation()

  @type put_resource_attributes_errors() ::
          home_region_not_set_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_error()
          | service_unavailable_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | dry_run_operation()
          | unauthorized_operation()

  def metadata do
    %{
      api_version: "2017-05-31",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "mgh",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Migration Hub",
      signature_version: "v4",
      signing_name: "mgh",
      target_prefix: "AWSMigrationHub"
    }
  end

  @doc """
  Associates a created artifact of an AWS cloud resource, the target receiving the
  migration, with the migration task performed by a migration tool. This API has
  the following traits:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=migrationhub%20AssociateCreatedArtifact&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:associate_created_artifact_request`)
    %{
      optional("DryRun") => boolean(),
      required("CreatedArtifact") => created_artifact(),
      required("MigrationTaskName") => String.t(),
      required("ProgressUpdateStream") => String.t()
    }
  """

  @spec associate_created_artifact(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, associate_created_artifact_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_created_artifact_errors()}

  def associate_created_artifact(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssociateCreatedArtifact", input, options)
  end

  @doc """
  Associates a discovered resource ID from Application Discovery Service with a
  migration task.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=migrationhub%20AssociateDiscoveredResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:associate_discovered_resource_request`)
    %{
      optional("DryRun") => boolean(),
      required("DiscoveredResource") => discovered_resource(),
      required("MigrationTaskName") => String.t(),
      required("ProgressUpdateStream") => String.t()
    }
  """

  @spec associate_discovered_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, associate_discovered_resource_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_discovered_resource_errors()}

  def associate_discovered_resource(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssociateDiscoveredResource", input, options)
  end

  @doc """
  Creates a progress update stream which is an AWS resource used for access
  control as well as a namespace for migration task names that is implicitly
  linked to your AWS account. It must uniquely identify the migration tool as it
  is used for all updates made by the tool; however, it does not need to be
  unique for each AWS account because it is scoped to the AWS account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=migrationhub%20CreateProgressUpdateStream&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_progress_update_stream_request`)
    %{
      optional("DryRun") => boolean(),
      required("ProgressUpdateStreamName") => String.t()
    }
  """

  @spec create_progress_update_stream(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_progress_update_stream_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_progress_update_stream_errors()}

  def create_progress_update_stream(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateProgressUpdateStream", input, options)
  end

  @doc """
  Deletes a progress update stream, including all of its tasks, which was
  previously created as an AWS resource used for access control. This API has
  the following traits:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=migrationhub%20DeleteProgressUpdateStream&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_progress_update_stream_request`)
    %{
      optional("DryRun") => boolean(),
      required("ProgressUpdateStreamName") => String.t()
    }
  """

  @spec delete_progress_update_stream(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_progress_update_stream_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_progress_update_stream_errors()}

  def delete_progress_update_stream(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteProgressUpdateStream", input, options)
  end

  @doc """
  Gets the migration status of an application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=migrationhub%20DescribeApplicationState&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_application_state_request`)
    %{
      required("ApplicationId") => String.t()
    }
  """

  @spec describe_application_state(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_application_state_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_application_state_errors()}

  def describe_application_state(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeApplicationState", input, options)
  end

  @doc """
  Retrieves a list of all attributes associated with a specific migration task.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=migrationhub%20DescribeMigrationTask&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_migration_task_request`)
    %{
      required("MigrationTaskName") => String.t(),
      required("ProgressUpdateStream") => String.t()
    }
  """

  @spec describe_migration_task(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_migration_task_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_migration_task_errors()}

  def describe_migration_task(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeMigrationTask", input, options)
  end

  @doc """
  Disassociates a created artifact of an AWS resource with a migration task
  performed by a migration tool that was previously associated. This API has the
  following traits:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=migrationhub%20DisassociateCreatedArtifact&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:disassociate_created_artifact_request`)
    %{
      optional("DryRun") => boolean(),
      required("CreatedArtifactName") => String.t(),
      required("MigrationTaskName") => String.t(),
      required("ProgressUpdateStream") => String.t()
    }
  """

  @spec disassociate_created_artifact(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, disassociate_created_artifact_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_created_artifact_errors()}

  def disassociate_created_artifact(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisassociateCreatedArtifact", input, options)
  end

  @doc """
  Disassociate an Application Discovery Service discovered resource from a
  migration task.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=migrationhub%20DisassociateDiscoveredResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:disassociate_discovered_resource_request`)
    %{
      optional("DryRun") => boolean(),
      required("ConfigurationId") => String.t(),
      required("MigrationTaskName") => String.t(),
      required("ProgressUpdateStream") => String.t()
    }
  """

  @spec disassociate_discovered_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, disassociate_discovered_resource_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_discovered_resource_errors()}

  def disassociate_discovered_resource(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisassociateDiscoveredResource", input, options)
  end

  @doc """
  Registers a new migration task which represents a server, database, etc., being
  migrated to AWS by a migration tool.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=migrationhub%20ImportMigrationTask&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:import_migration_task_request`)
    %{
      optional("DryRun") => boolean(),
      required("MigrationTaskName") => String.t(),
      required("ProgressUpdateStream") => String.t()
    }
  """

  @spec import_migration_task(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, import_migration_task_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, import_migration_task_errors()}

  def import_migration_task(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ImportMigrationTask", input, options)
  end

  @doc """
  Lists all the migration statuses for your applications. If you use the optional
  `ApplicationIds` parameter, only the migration statuses for those applications
  will be returned.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=migrationhub%20ListApplicationStates&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_application_states_request`)
    %{
      optional("ApplicationIds") => list(String.t()()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec list_application_states(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_application_states_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_application_states_errors()}

  def list_application_states(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListApplicationStates", input, options)
  end

  @doc """
  Lists the created artifacts attached to a given migration task in an update
  stream. This API has the following traits:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=migrationhub%20ListCreatedArtifacts&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_created_artifacts_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("MigrationTaskName") => String.t(),
      required("ProgressUpdateStream") => String.t()
    }
  """

  @spec list_created_artifacts(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_created_artifacts_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_created_artifacts_errors()}

  def list_created_artifacts(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListCreatedArtifacts", input, options)
  end

  @doc """
  Lists discovered resources associated with the given `MigrationTask`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=migrationhub%20ListDiscoveredResources&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_discovered_resources_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("MigrationTaskName") => String.t(),
      required("ProgressUpdateStream") => String.t()
    }
  """

  @spec list_discovered_resources(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_discovered_resources_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_discovered_resources_errors()}

  def list_discovered_resources(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListDiscoveredResources", input, options)
  end

  @doc """
  Lists all, or filtered by resource name, migration tasks associated with the
  user account making this call. This API has the following traits:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=migrationhub%20ListMigrationTasks&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_migration_tasks_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("ResourceName") => String.t()
    }
  """

  @spec list_migration_tasks(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_migration_tasks_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_migration_tasks_errors()}

  def list_migration_tasks(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListMigrationTasks", input, options)
  end

  @doc """
  Lists progress update streams associated with the user account making this call.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=migrationhub%20ListProgressUpdateStreams&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_progress_update_streams_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec list_progress_update_streams(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_progress_update_streams_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_progress_update_streams_errors()}

  def list_progress_update_streams(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListProgressUpdateStreams", input, options)
  end

  @doc """
  Sets the migration state of an application. For a given application identified
  by the value passed to `ApplicationId`, its status is set or updated by
  passing one of three values to `Status`: ``` NOT_STARTED | IN_PROGRESS |
  COMPLETED ``` .

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=migrationhub%20NotifyApplicationState&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:notify_application_state_request`)
    %{
      optional("DryRun") => boolean(),
      optional("UpdateDateTime") => non_neg_integer(),
      required("ApplicationId") => String.t(),
      required("Status") => list(any())
    }
  """

  @spec notify_application_state(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, notify_application_state_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, notify_application_state_errors()}

  def notify_application_state(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "NotifyApplicationState", input, options)
  end

  @doc """
  Notifies Migration Hub of the current status, progress, or other detail
  regarding a migration task. This API has the following traits:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=migrationhub%20NotifyMigrationTaskState&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:notify_migration_task_state_request`)
    %{
      optional("DryRun") => boolean(),
      required("MigrationTaskName") => String.t(),
      required("NextUpdateSeconds") => integer(),
      required("ProgressUpdateStream") => String.t(),
      required("Task") => task(),
      required("UpdateDateTime") => non_neg_integer()
    }
  """

  @spec notify_migration_task_state(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, notify_migration_task_state_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, notify_migration_task_state_errors()}

  def notify_migration_task_state(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "NotifyMigrationTaskState", input, options)
  end

  @doc """
  Provides identifying details of the resource being migrated so that it can be
  associated in the Application Discovery Service repository. This association
  occurs asynchronously after `PutResourceAttributes` returns. Keep in mind that
  subsequent calls to PutResourceAttributes will override previously stored
  attributes. For example, if it is first called with a MAC address, but later,
  it is desired to *add* an IP address, it will then be required to call it with
  *both* the IP and MAC addresses to prevent overriding the MAC address. Note
  the instructions regarding the special use case of the [
  `ResourceAttributeList`
  ](https://docs.aws.amazon.com/migrationhub/latest/ug/API_PutResourceAttributes.html#migrationhub-PutResourceAttributes-request-ResourceAttributeList)
  parameter when specifying any "VM" related value.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=migrationhub%20PutResourceAttributes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_resource_attributes_request`)
    %{
      optional("DryRun") => boolean(),
      required("MigrationTaskName") => String.t(),
      required("ProgressUpdateStream") => String.t(),
      required("ResourceAttributeList") => list(resource_attribute()())
    }
  """

  @spec put_resource_attributes(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_resource_attributes_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_resource_attributes_errors()}

  def put_resource_attributes(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutResourceAttributes", input, options)
  end
end
