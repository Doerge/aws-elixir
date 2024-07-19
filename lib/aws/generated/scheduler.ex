# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Scheduler do
  @moduledoc """
  Amazon EventBridge Scheduler is a serverless scheduler that allows you to
  create, run, and manage tasks from one central, managed service. EventBridge
  Scheduler delivers your tasks reliably, with built-in mechanisms that adjust
  your schedules based on the availability of downstream targets. The following
  reference lists the available API actions, and data types for EventBridge
  Scheduler.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      delete_schedule_group_output() :: %{}
      
  """
  @type delete_schedule_group_output() :: %{}

  @typedoc """

  ## Example:
      
      delete_schedule_output() :: %{}
      
  """
  @type delete_schedule_output() :: %{}

  @typedoc """

  ## Example:
      
      get_schedule_group_input() :: %{}
      
  """
  @type get_schedule_group_input() :: %{}

  @typedoc """

  ## Example:
      
      schedule_group_summary() :: %{
        "Arn" => String.t(),
        "CreationDate" => non_neg_integer(),
        "LastModificationDate" => non_neg_integer(),
        "Name" => String.t(),
        "State" => String.t()
      }
      
  """
  @type schedule_group_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sage_maker_pipeline_parameter() :: %{
        "Name" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type sage_maker_pipeline_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      flexible_time_window() :: %{
        "MaximumWindowInMinutes" => integer(),
        "Mode" => String.t()
      }
      
  """
  @type flexible_time_window() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_output() :: %{
        optional("Tags") => list(tag()())
      }
      
  """
  @type list_tags_for_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_schedule_output() :: %{
        optional("ActionAfterCompletion") => String.t(),
        optional("Arn") => String.t(),
        optional("CreationDate") => non_neg_integer(),
        optional("Description") => String.t(),
        optional("EndDate") => non_neg_integer(),
        optional("FlexibleTimeWindow") => flexible_time_window(),
        optional("GroupName") => String.t(),
        optional("KmsKeyArn") => String.t(),
        optional("LastModificationDate") => non_neg_integer(),
        optional("Name") => String.t(),
        optional("ScheduleExpression") => String.t(),
        optional("ScheduleExpressionTimezone") => String.t(),
        optional("StartDate") => non_neg_integer(),
        optional("State") => String.t(),
        optional("Target") => target()
      }
      
  """
  @type get_schedule_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_schedule_input() :: %{
        optional("ClientToken") => String.t(),
        optional("GroupName") => String.t()
      }
      
  """
  @type delete_schedule_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_schedule_output() :: %{
        required("ScheduleArn") => String.t()
      }
      
  """
  @type update_schedule_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      target() :: %{
        "Arn" => String.t(),
        "DeadLetterConfig" => dead_letter_config(),
        "EcsParameters" => ecs_parameters(),
        "EventBridgeParameters" => event_bridge_parameters(),
        "Input" => String.t(),
        "KinesisParameters" => kinesis_parameters(),
        "RetryPolicy" => retry_policy(),
        "RoleArn" => String.t(),
        "SageMakerPipelineParameters" => sage_maker_pipeline_parameters(),
        "SqsParameters" => sqs_parameters()
      }
      
  """
  @type target() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_schedule_group_output() :: %{
        optional("Arn") => String.t(),
        optional("CreationDate") => non_neg_integer(),
        optional("LastModificationDate") => non_neg_integer(),
        optional("Name") => String.t(),
        optional("State") => String.t()
      }
      
  """
  @type get_schedule_group_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Message" => [String.t()]
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_schedule_groups_output() :: %{
        optional("NextToken") => String.t(),
        required("ScheduleGroups") => list(schedule_group_summary()())
      }
      
  """
  @type list_schedule_groups_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => [String.t()]
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
      
      service_quota_exceeded_exception() :: %{
        "Message" => [String.t()]
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      target_summary() :: %{
        "Arn" => String.t()
      }
      
  """
  @type target_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_schedule_input() :: %{
        optional("ActionAfterCompletion") => String.t(),
        optional("ClientToken") => String.t(),
        optional("Description") => String.t(),
        optional("EndDate") => non_neg_integer(),
        optional("GroupName") => String.t(),
        optional("KmsKeyArn") => String.t(),
        optional("ScheduleExpressionTimezone") => String.t(),
        optional("StartDate") => non_neg_integer(),
        optional("State") => String.t(),
        required("FlexibleTimeWindow") => flexible_time_window(),
        required("ScheduleExpression") => String.t(),
        required("Target") => target()
      }
      
  """
  @type update_schedule_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sage_maker_pipeline_parameters() :: %{
        "PipelineParameterList" => list(sage_maker_pipeline_parameter()())
      }
      
  """
  @type sage_maker_pipeline_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sqs_parameters() :: %{
        "MessageGroupId" => String.t()
      }
      
  """
  @type sqs_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      schedule_summary() :: %{
        "Arn" => String.t(),
        "CreationDate" => non_neg_integer(),
        "GroupName" => String.t(),
        "LastModificationDate" => non_neg_integer(),
        "Name" => String.t(),
        "State" => String.t(),
        "Target" => target_summary()
      }
      
  """
  @type schedule_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_bridge_parameters() :: %{
        "DetailType" => String.t(),
        "Source" => String.t()
      }
      
  """
  @type event_bridge_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_input() :: %{
        required("Tags") => list(tag()())
      }
      
  """
  @type tag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_schedule_input() :: %{
        optional("ActionAfterCompletion") => String.t(),
        optional("ClientToken") => String.t(),
        optional("Description") => String.t(),
        optional("EndDate") => non_neg_integer(),
        optional("GroupName") => String.t(),
        optional("KmsKeyArn") => String.t(),
        optional("ScheduleExpressionTimezone") => String.t(),
        optional("StartDate") => non_neg_integer(),
        optional("State") => String.t(),
        required("FlexibleTimeWindow") => flexible_time_window(),
        required("ScheduleExpression") => String.t(),
        required("Target") => target()
      }
      
  """
  @type create_schedule_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_schedule_group_input() :: %{
        optional("ClientToken") => String.t()
      }
      
  """
  @type delete_schedule_group_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_schedule_input() :: %{
        optional("GroupName") => String.t()
      }
      
  """
  @type get_schedule_input() :: %{String.t() => any()}

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
      
      capacity_provider_strategy_item() :: %{
        "base" => integer(),
        "capacityProvider" => String.t(),
        "weight" => integer()
      }
      
  """
  @type capacity_provider_strategy_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      placement_constraint() :: %{
        "expression" => String.t(),
        "type" => String.t()
      }
      
  """
  @type placement_constraint() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_configuration() :: %{
        "awsvpcConfiguration" => aws_vpc_configuration()
      }
      
  """
  @type network_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_schedule_group_output() :: %{
        required("ScheduleGroupArn") => String.t()
      }
      
  """
  @type create_schedule_group_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_schedule_groups_input() :: %{
        optional("MaxResults") => integer(),
        optional("NamePrefix") => String.t(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_schedule_groups_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_schedules_output() :: %{
        optional("NextToken") => String.t(),
        required("Schedules") => list(schedule_summary()())
      }
      
  """
  @type list_schedules_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_input() :: %{
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dead_letter_config() :: %{
        "Arn" => String.t()
      }
      
  """
  @type dead_letter_config() :: %{String.t() => any()}

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
      
      list_schedules_input() :: %{
        optional("GroupName") => String.t(),
        optional("MaxResults") => integer(),
        optional("NamePrefix") => String.t(),
        optional("NextToken") => String.t(),
        optional("State") => String.t()
      }
      
  """
  @type list_schedules_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Message" => [String.t()]
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_schedule_output() :: %{
        required("ScheduleArn") => String.t()
      }
      
  """
  @type create_schedule_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aws_vpc_configuration() :: %{
        "AssignPublicIp" => String.t(),
        "SecurityGroups" => list(String.t()()),
        "Subnets" => list(String.t()())
      }
      
  """
  @type aws_vpc_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kinesis_parameters() :: %{
        "PartitionKey" => String.t()
      }
      
  """
  @type kinesis_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_schedule_group_input() :: %{
        optional("ClientToken") => String.t(),
        optional("Tags") => list(tag()())
      }
      
  """
  @type create_schedule_group_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      retry_policy() :: %{
        "MaximumEventAgeInSeconds" => integer(),
        "MaximumRetryAttempts" => integer()
      }
      
  """
  @type retry_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      placement_strategy() :: %{
        "field" => String.t(),
        "type" => String.t()
      }
      
  """
  @type placement_strategy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ecs_parameters() :: %{
        "CapacityProviderStrategy" => list(capacity_provider_strategy_item()()),
        "EnableECSManagedTags" => boolean(),
        "EnableExecuteCommand" => boolean(),
        "Group" => String.t(),
        "LaunchType" => String.t(),
        "NetworkConfiguration" => network_configuration(),
        "PlacementConstraints" => list(placement_constraint()()),
        "PlacementStrategy" => list(placement_strategy()()),
        "PlatformVersion" => String.t(),
        "PropagateTags" => String.t(),
        "ReferenceId" => String.t(),
        "Tags" => list(map()()),
        "TaskCount" => integer(),
        "TaskDefinitionArn" => String.t()
      }
      
  """
  @type ecs_parameters() :: %{String.t() => any()}

  @type create_schedule_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_schedule_group_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_schedule_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_schedule_group_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_schedule_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_schedule_group_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_schedule_groups_errors() ::
          throttling_exception() | validation_exception() | internal_server_exception()

  @type list_schedules_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_schedule_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2021-06-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "scheduler",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Scheduler",
      signature_version: "v4",
      signing_name: "scheduler",
      target_prefix: nil
    }
  end

  @doc """
  Creates the specified schedule.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=scheduler%20CreateSchedule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of the schedule that you are creating.

  ## Optional parameters:
  """

  @spec create_schedule(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_schedule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_schedule_errors()}

  def create_schedule(%Client{} = client, name, options \\ []) do
    url_path = "/schedules/#{AWS.Util.encode_uri(name)}"

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
  Creates the specified schedule group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=scheduler%20CreateScheduleGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of the schedule group that you are creating.

  ## Optional parameters:
  """

  @spec create_schedule_group(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_schedule_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_schedule_group_errors()}

  def create_schedule_group(%Client{} = client, name, options \\ []) do
    url_path = "/schedule-groups/#{AWS.Util.encode_uri(name)}"

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
  Deletes the specified schedule.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=scheduler%20DeleteSchedule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of the schedule to delete.

  ## Optional parameters:
  * `:client_token` (`t:string`) Unique, case-sensitive identifier you provide to
  ensure the idempotency of the request. If you do not specify a client token,
  EventBridge Scheduler uses a randomly generated token for the request to
  ensure idempotency.
  * `:group_name` (`t:string`) The name of the schedule group associated with this
  schedule. If you omit this, the default schedule group is used.
  """

  @spec delete_schedule(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_schedule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_schedule_errors()}

  def delete_schedule(%Client{} = client, name, options \\ []) do
    url_path = "/schedules/#{AWS.Util.encode_uri(name)}"

    # Validate optional parameters
    optional_params = [client_token: nil, group_name: nil]

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
      if opt_val = Keyword.get(options, :group_name) do
        [{"groupName", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :client_token) do
        [{"clientToken", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token, :group_name])

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
  Deletes the specified schedule group. Deleting a schedule group results in
  EventBridge Scheduler deleting all schedules associated with the group. When
  you delete a group, it remains in a `DELETING` state until all of its
  associated schedules are deleted. Schedules associated with the group that are
  set to run while the schedule group is in the process of being deleted might
  continue to invoke their targets until the schedule group and its associated
  schedules are deleted.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=scheduler%20DeleteScheduleGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of the schedule group to delete.

  ## Optional parameters:
  * `:client_token` (`t:string`) Unique, case-sensitive identifier you provide to
  ensure the idempotency of the request. If you do not specify a client token,
  EventBridge Scheduler uses a randomly generated token for the request to
  ensure idempotency.
  """

  @spec delete_schedule_group(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_schedule_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_schedule_group_errors()}

  def delete_schedule_group(%Client{} = client, name, options \\ []) do
    url_path = "/schedule-groups/#{AWS.Util.encode_uri(name)}"

    # Validate optional parameters
    optional_params = [client_token: nil]

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
      if opt_val = Keyword.get(options, :client_token) do
        [{"clientToken", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

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
  Retrieves the specified schedule.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=scheduler%20GetSchedule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of the schedule to retrieve.

  ## Optional parameters:
  * `:group_name` (`t:string`) The name of the schedule group associated with this
  schedule. If you omit this, EventBridge Scheduler assumes that the schedule
  is associated with the default group.
  """

  @spec get_schedule(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_schedule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_schedule_errors()}

  def get_schedule(%Client{} = client, name, options \\ []) do
    url_path = "/schedules/#{AWS.Util.encode_uri(name)}"

    # Validate optional parameters
    optional_params = [group_name: nil]

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
      if opt_val = Keyword.get(options, :group_name) do
        [{"groupName", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:group_name])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the specified schedule group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=scheduler%20GetScheduleGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of the schedule group to retrieve.

  ## Optional parameters:
  """

  @spec get_schedule_group(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_schedule_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_schedule_group_errors()}

  def get_schedule_group(%Client{} = client, name, options \\ []) do
    url_path = "/schedule-groups/#{AWS.Util.encode_uri(name)}"

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
  Returns a paginated list of your schedule groups.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=scheduler%20ListScheduleGroups&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) If specified, limits the number of results
  returned by this operation. The operation also returns a NextToken which you
  can use in a subsequent operation to retrieve the next set of results.
  * `:name_prefix` (`t:string`) The name prefix that you can use to return a
  filtered list of your schedule groups.
  * `:next_token` (`t:string`) The token returned by a previous call to retrieve
  the next set of results.
  """

  @spec list_schedule_groups(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_schedule_groups_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_schedule_groups_errors()}

  def list_schedule_groups(%Client{} = client, options \\ []) do
    url_path = "/schedule-groups"

    # Validate optional parameters
    optional_params = [max_results: nil, name_prefix: nil, next_token: nil]

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
        [{"NextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :name_prefix) do
        [{"NamePrefix", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"MaxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :name_prefix, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a paginated list of your EventBridge Scheduler schedules.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=scheduler%20ListSchedules&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:group_name` (`t:string`) If specified, only lists the schedules whose
  associated schedule group matches the given filter.
  * `:max_results` (`t:integer`) If specified, limits the number of results
  returned by this operation. The operation also returns a NextToken which you
  can use in a subsequent operation to retrieve the next set of results.
  * `:name_prefix` (`t:string`) Schedule name prefix to return the filtered list
  of resources.
  * `:next_token` (`t:string`) The token returned by a previous call to retrieve
  the next set of results.
  * `:state` (`t:string`) If specified, only lists the schedules whose current
  state matches the given filter.
  """

  @spec list_schedules(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_schedules_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_schedules_errors()}

  def list_schedules(%Client{} = client, options \\ []) do
    url_path = "/schedules"

    # Validate optional parameters
    optional_params = [
      group_name: nil,
      max_results: nil,
      name_prefix: nil,
      next_token: nil,
      state: nil
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
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :state) do
        [{"State", opt_val} | query_params]
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
      if opt_val = Keyword.get(options, :name_prefix) do
        [{"NamePrefix", opt_val} | query_params]
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
      if opt_val = Keyword.get(options, :group_name) do
        [{"ScheduleGroup", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:group_name, :max_results, :name_prefix, :next_token, :state])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags associated with the Scheduler resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=scheduler%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The ARN of the EventBridge Scheduler resource for
  which you want to view tags.

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
  Assigns one or more tags (key-value pairs) to the specified EventBridge
  Scheduler resource. You can only assign tags to schedule groups.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=scheduler%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the schedule
  group that you are adding tags to.

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Removes one or more tags from the specified EventBridge Scheduler schedule
  group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=scheduler%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the schedule
  group from which you are removing tags.
  * `:tag_keys` (`t:list[com.amazonaws.scheduler#TagKey]`) The list of tag keys to
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
    query_params = [{"TagKeys", tag_keys}]

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
  Updates the specified schedule. When you call `UpdateSchedule`, EventBridge
  Scheduler uses all values, including empty values, specified in the request
  and overrides the existing schedule. This is by design. This means that if you
  do not set an optional field in your request, that field will be set to its
  system-default value after the update.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=scheduler%20UpdateSchedule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of the schedule that you are updating.

  ## Optional parameters:
  """

  @spec update_schedule(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_schedule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_schedule_errors()}

  def update_schedule(%Client{} = client, name, options \\ []) do
    url_path = "/schedules/#{AWS.Util.encode_uri(name)}"

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
end
