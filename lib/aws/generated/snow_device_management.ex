# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SnowDeviceManagement do
  @moduledoc """
  Amazon Web Services Snow Device Management documentation.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      physical_network_interface() :: %{
        "defaultGateway" => [String.t()],
        "ipAddress" => [String.t()],
        "ipAddressAssignment" => String.t(),
        "macAddress" => [String.t()],
        "netmask" => [String.t()],
        "physicalConnectorType" => String.t(),
        "physicalNetworkInterfaceId" => [String.t()]
      }

  """
  @type physical_network_interface() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_devices_output() :: %{
        optional("devices") => list(device_summary()()),
        optional("nextToken") => String.t()
      }

  """
  @type list_devices_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_executions_output() :: %{
        optional("executions") => list(execution_summary()()),
        optional("nextToken") => String.t()
      }

  """
  @type list_executions_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_device_ec2_output() :: %{
        optional("instances") => list(instance_summary()())
      }

  """
  @type describe_device_ec2_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_task_input() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("tags") => map(),
        required("command") => list(),
        required("targets") => list([String.t()]())
      }

  """
  @type create_task_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_execution_input() :: %{}

  """
  @type describe_execution_input() :: %{}

  @typedoc """

  ## Example:

      describe_execution_output() :: %{
        optional("executionId") => String.t(),
        optional("lastUpdatedAt") => [non_neg_integer()],
        optional("managedDeviceId") => String.t(),
        optional("startedAt") => [non_neg_integer()],
        optional("state") => String.t(),
        optional("taskId") => String.t()
      }

  """
  @type describe_execution_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      instance_block_device_mapping() :: %{
        "deviceName" => [String.t()],
        "ebs" => ebs_instance_block_device()
      }

  """
  @type instance_block_device_mapping() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_task_output() :: %{
        optional("taskId") => [String.t()]
      }

  """
  @type cancel_task_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      task_summary() :: %{
        "state" => String.t(),
        "tags" => map(),
        "taskArn" => [String.t()],
        "taskId" => String.t()
      }

  """
  @type task_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_device_input() :: %{}

  """
  @type describe_device_input() :: %{}

  @typedoc """

  ## Example:

      create_task_output() :: %{
        optional("taskArn") => [String.t()],
        optional("taskId") => [String.t()]
      }

  """
  @type create_task_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_summary() :: %{
        "arn" => [String.t()],
        "id" => [String.t()],
        "resourceType" => [String.t()]
      }

  """
  @type resource_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_output() :: %{
        optional("tags") => map()
      }

  """
  @type list_tags_for_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      capacity() :: %{
        "available" => [float()],
        "name" => [String.t()],
        "total" => [float()],
        "unit" => [String.t()],
        "used" => [float()]
      }

  """
  @type capacity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      execution_summary() :: %{
        "executionId" => String.t(),
        "managedDeviceId" => String.t(),
        "state" => String.t(),
        "taskId" => String.t()
      }

  """
  @type execution_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tasks_output() :: %{
        optional("nextToken") => String.t(),
        optional("tasks") => list(task_summary()())
      }

  """
  @type list_tasks_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_device_output() :: %{
        optional("associatedWithJob") => [String.t()],
        optional("deviceCapacities") => list(capacity()()),
        optional("deviceState") => String.t(),
        optional("deviceType") => [String.t()],
        optional("lastReachedOutAt") => [non_neg_integer()],
        optional("lastUpdatedAt") => [non_neg_integer()],
        optional("managedDeviceArn") => [String.t()],
        optional("managedDeviceId") => String.t(),
        optional("physicalNetworkInterfaces") => list(physical_network_interface()()),
        optional("software") => software_information(),
        optional("tags") => map()
      }

  """
  @type describe_device_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cpu_options() :: %{
        "coreCount" => [integer()],
        "threadsPerCore" => [integer()]
      }

  """
  @type cpu_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_devices_input() :: %{
        optional("jobId") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_devices_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_input() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      instance_state() :: %{
        "code" => [integer()],
        "name" => String.t()
      }

  """
  @type instance_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reboot() :: %{}

  """
  @type reboot() :: %{}

  @typedoc """

  ## Example:

      list_device_resources_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("type") => [String.t()]
      }

  """
  @type list_device_resources_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      device_summary() :: %{
        "associatedWithJob" => [String.t()],
        "managedDeviceArn" => [String.t()],
        "managedDeviceId" => String.t(),
        "tags" => map()
      }

  """
  @type device_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_device_ec2_input() :: %{
        required("instanceIds") => list([String.t()]())
      }

  """
  @type describe_device_ec2_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      instance() :: %{
        "amiLaunchIndex" => [integer()],
        "blockDeviceMappings" => list(instance_block_device_mapping()()),
        "cpuOptions" => cpu_options(),
        "createdAt" => [non_neg_integer()],
        "imageId" => [String.t()],
        "instanceId" => [String.t()],
        "instanceType" => [String.t()],
        "privateIpAddress" => [String.t()],
        "publicIpAddress" => [String.t()],
        "rootDeviceName" => [String.t()],
        "securityGroups" => list(security_group_identifier()()),
        "state" => instance_state(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unlock() :: %{}

  """
  @type unlock() :: %{}

  @typedoc """

  ## Example:

      untag_resource_input() :: %{
        required("tagKeys") => list([String.t()]())
      }

  """
  @type untag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_device_resources_output() :: %{
        optional("nextToken") => String.t(),
        optional("resources") => list(resource_summary()())
      }

  """
  @type list_device_resources_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_task_output() :: %{
        optional("completedAt") => [non_neg_integer()],
        optional("createdAt") => [non_neg_integer()],
        optional("description") => String.t(),
        optional("lastUpdatedAt") => [non_neg_integer()],
        optional("state") => String.t(),
        optional("tags") => map(),
        optional("targets") => list([String.t()]()),
        optional("taskArn") => [String.t()],
        optional("taskId") => [String.t()]
      }

  """
  @type describe_task_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ebs_instance_block_device() :: %{
        "attachTime" => [non_neg_integer()],
        "deleteOnTermination" => [boolean()],
        "status" => String.t(),
        "volumeId" => [String.t()]
      }

  """
  @type ebs_instance_block_device() :: %{String.t() => any()}

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

      describe_task_input() :: %{}

  """
  @type describe_task_input() :: %{}

  @typedoc """

  ## Example:

      instance_summary() :: %{
        "instance" => instance(),
        "lastUpdatedAt" => [non_neg_integer()]
      }

  """
  @type instance_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      security_group_identifier() :: %{
        "groupId" => [String.t()],
        "groupName" => [String.t()]
      }

  """
  @type security_group_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      software_information() :: %{
        "installState" => [String.t()],
        "installedVersion" => [String.t()],
        "installingVersion" => [String.t()]
      }

  """
  @type software_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tasks_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("state") => String.t()
      }

  """
  @type list_tasks_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_executions_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("state") => String.t(),
        required("taskId") => String.t()
      }

  """
  @type list_executions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_task_input() :: %{}

  """
  @type cancel_task_input() :: %{}

  @type cancel_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type describe_device_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_device_ec2_instances_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_execution_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_device_resources_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_devices_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_executions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_tasks_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type tag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type untag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2021-08-04",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "snow-device-management",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Snow Device Management",
      signature_version: "v4",
      signing_name: "snow-device-management",
      target_prefix: nil
    }
  end

  @doc """
  Sends a cancel request for a specified task.

  You can cancel a task only if it's still in a
  `QUEUED` state. Tasks that are already running can't be cancelled.

  A task might still run if it's processed from the queue before the
  `CancelTask` operation changes the task's state.

  ## Required positional parameters:
   • :task_id (t:string String.t/0) (taskId)

  ## Optional parameters:
  """
  @spec cancel_task(AWS.Client.t(), String.t(), cancel_task_input(), Keyword.t()) ::
          {:ok, cancel_task_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_task_errors()}
  def cancel_task(%Client{} = client, task_id, input, options \\ []) do
    url_path = "/task/#{AWS.Util.encode_uri(task_id)}/cancel"
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
  Instructs one or more devices to start a task, such as unlocking or rebooting.

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec create_task(AWS.Client.t(), create_task_input(), Keyword.t()) ::
          {:ok, create_task_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_task_errors()}
  def create_task(%Client{} = client, input, options \\ []) do
    url_path = "/task"
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
  Checks device-specific information, such as the device type, software version,
  IP
  addresses, and lock status.

  ## Required positional parameters:
   • :managed_device_id (t:string String.t/0) (managedDeviceId)

  ## Optional parameters:
  """
  @spec describe_device(AWS.Client.t(), String.t(), describe_device_input(), Keyword.t()) ::
          {:ok, describe_device_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_device_errors()}
  def describe_device(%Client{} = client, managed_device_id, input, options \\ []) do
    url_path = "/managed-device/#{AWS.Util.encode_uri(managed_device_id)}/describe"
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
  Checks the current state of the Amazon EC2 instances.

  The output is similar to
  `describeDevice`, but the results are sourced from the device cache in the
  Amazon Web Services Cloud and include a subset of the available fields.

  ## Required positional parameters:
   • :managed_device_id (t:string String.t/0) (managedDeviceId)

  ## Optional parameters:
  """
  @spec describe_device_ec2_instances(
          AWS.Client.t(),
          String.t(),
          describe_device_ec2_input(),
          Keyword.t()
        ) ::
          {:ok, describe_device_ec2_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_device_ec2_instances_errors()}
  def describe_device_ec2_instances(%Client{} = client, managed_device_id, input, options \\ []) do
    url_path = "/managed-device/#{AWS.Util.encode_uri(managed_device_id)}/resources/ec2/describe"
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
  Checks the status of a remote task running on one or more target devices.

  ## Required positional parameters:
   • :managed_device_id (t:string String.t/0) (managedDeviceId)
   • :task_id (t:string String.t/0) (taskId)

  ## Optional parameters:
  """
  @spec describe_execution(
          AWS.Client.t(),
          String.t(),
          String.t(),
          describe_execution_input(),
          Keyword.t()
        ) ::
          {:ok, describe_execution_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_execution_errors()}
  def describe_execution(%Client{} = client, managed_device_id, task_id, input, options \\ []) do
    url_path =
      "/task/#{AWS.Util.encode_uri(task_id)}/execution/#{AWS.Util.encode_uri(managed_device_id)}"

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
  Checks the metadata for a given task on a device.

  ## Required positional parameters:
   • :task_id (t:string String.t/0) (taskId)

  ## Optional parameters:
  """
  @spec describe_task(AWS.Client.t(), String.t(), describe_task_input(), Keyword.t()) ::
          {:ok, describe_task_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_task_errors()}
  def describe_task(%Client{} = client, task_id, input, options \\ []) do
    url_path = "/task/#{AWS.Util.encode_uri(task_id)}"
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
  Returns a list of the Amazon Web Services resources available for a device.

  Currently, Amazon EC2 instances are the only supported resource type.

  ## Required positional parameters:
   • :managed_device_id (t:string String.t/0) (managedDeviceId)

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
   • :type (t:String.t/0) (type)
  """
  @spec list_device_resources(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_device_resources_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_device_resources_errors()}
  def list_device_resources(%Client{} = client, managed_device_id, options \\ []) do
    url_path = "/managed-device/#{AWS.Util.encode_uri(managed_device_id)}/resources"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, next_token: nil, type: nil
    # ])

    headers = []
    query_params = []

    {type, options} = Keyword.pop(options, :type, nil)

    query_params =
      if !is_nil(type) do
        [{"type", type} | query_params]
      else
        query_params
      end

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
  Returns a list of all devices on your Amazon Web Services account that have
  Amazon Web Services Snow Device Management
  enabled in the Amazon Web Services Region where the command is run.

  ## Required positional parameters:

  ## Optional parameters:
   • :job_id (t:String.t/0) (jobId)
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec list_devices(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_devices_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_devices_errors()}
  def list_devices(%Client{} = client, options \\ []) do
    url_path = "/managed-devices"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [job_id: nil, max_results: nil, next_token: nil
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

    {job_id, options} = Keyword.pop(options, :job_id, nil)

    query_params =
      if !is_nil(job_id) do
        [{"jobId", job_id} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the status of tasks for one or more target devices.

  ## Required positional parameters:

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
   • :state (t:String.t/0) (state)
   • :task_id (t:String.t/0) (taskId)
  """
  @spec list_executions(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_executions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_executions_errors()}
  def list_executions(%Client{} = client, task_id, options \\ []) do
    url_path = "/executions"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, next_token: nil, state: nil, task_id: nil
    # ])

    headers = []
    query_params = []

    {task_id, options} = Keyword.pop(options, :task_id, nil)

    query_params =
      if !is_nil(task_id) do
        [{"taskId", task_id} | query_params]
      else
        query_params
      end

    {state, options} = Keyword.pop(options, :state, nil)

    query_params =
      if !is_nil(state) do
        [{"state", state} | query_params]
      else
        query_params
      end

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
  Returns a list of tags for a managed device or task.

  ## Required positional parameters:
   • :resource_arn (t: String.t/0) (resourceArn)

  ## Optional parameters:
  """
  @spec list_tags_for_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"

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
  Returns a list of tasks that can be filtered by state.

  ## Required positional parameters:

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
   • :state (t:String.t/0) (state)
  """
  @spec list_tasks(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_tasks_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tasks_errors()}
  def list_tasks(%Client{} = client, options \\ []) do
    url_path = "/tasks"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, next_token: nil, state: nil
    # ])

    headers = []
    query_params = []

    {state, options} = Keyword.pop(options, :state, nil)

    query_params =
      if !is_nil(state) do
        [{"state", state} | query_params]
      else
        query_params
      end

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
  Adds or replaces tags on a device or task.

  ## Required positional parameters:
   • :resource_arn (t: String.t/0) (resourceArn)

  ## Optional parameters:
  """
  @spec tag_resource(AWS.Client.t(), String.t(), tag_resource_input(), Keyword.t()) ::
          {:ok, nil, any()}
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
  Removes a tag from a device or task.

  ## Required positional parameters:
   • :resource_arn (t: String.t/0) (resourceArn)

  ## Optional parameters:
   • :tag_keys (t:String.t/0) (tagKeys)
  """
  @spec untag_resource(AWS.Client.t(), String.t(), untag_resource_input(), Keyword.t()) ::
          {:ok, nil, any()}
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
end
