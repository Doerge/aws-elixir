# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.WorkSpacesThinClient do
  @moduledoc """
  Amazon WorkSpaces Thin Client is an affordable device built to work with Amazon
  Web Services End User Computing (EUC) virtual desktops to provide users with a
  complete cloud desktop solution. WorkSpaces Thin Client is a compact device
  designed to connect up to two monitors and USB devices like a keyboard, mouse,
  headset, and webcam. To maximize endpoint security, WorkSpaces Thin Client
  devices do not allow local data storage or installation of unapproved
  applications. The WorkSpaces Thin Client device ships preloaded with device
  management software.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      update_environment_response() :: %{
        "environment" => environment_summary()
      }

  """
  @type update_environment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_devices_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_devices_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_software_set_request() :: %{
        required("validationStatus") => list(any())
      }

  """
  @type update_software_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_device_response() :: %{
        "device" => device_summary()
      }

  """
  @type update_device_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      update_device_request() :: %{
        optional("desiredSoftwareSetId") => String.t(),
        optional("name") => String.t(),
        optional("softwareSetUpdateSchedule") => list(any())
      }

  """
  @type update_device_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      environment_summary() :: %{
        "activationCode" => String.t(),
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "desiredSoftwareSetId" => String.t(),
        "desktopArn" => String.t(),
        "desktopEndpoint" => String.t(),
        "desktopType" => list(any()),
        "id" => String.t(),
        "maintenanceWindow" => maintenance_window(),
        "name" => String.t(),
        "pendingSoftwareSetId" => String.t(),
        "softwareSetUpdateMode" => list(any()),
        "softwareSetUpdateSchedule" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type environment_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_environment_request() :: %{}

  """
  @type get_environment_request() :: %{}

  @typedoc """

  ## Example:

      get_software_set_request() :: %{}

  """
  @type get_software_set_request() :: %{}

  @typedoc """

  ## Example:

      delete_device_request() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type delete_device_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      software_set_summary() :: %{
        "arn" => String.t(),
        "id" => String.t(),
        "releasedAt" => non_neg_integer(),
        "supportedUntil" => non_neg_integer(),
        "validationStatus" => list(any()),
        "version" => [String.t()]
      }

  """
  @type software_set_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_environment_response() :: %{
        "environment" => environment()
      }

  """
  @type get_environment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list([String.t()]())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      software_set() :: %{
        "arn" => String.t(),
        "id" => String.t(),
        "releasedAt" => non_neg_integer(),
        "software" => list(software()()),
        "supportedUntil" => non_neg_integer(),
        "tags" => map(),
        "validationStatus" => list(any()),
        "version" => [String.t()]
      }

  """
  @type software_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t(),
        "resourceId" => String.t(),
        "resourceType" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t(),
        "resourceId" => String.t(),
        "resourceType" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_software_set_response() :: %{
        "softwareSet" => software_set()
      }

  """
  @type get_software_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      environment() :: %{
        "activationCode" => String.t(),
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "desiredSoftwareSetId" => String.t(),
        "desktopArn" => String.t(),
        "desktopEndpoint" => String.t(),
        "desktopType" => list(any()),
        "id" => String.t(),
        "kmsKeyArn" => String.t(),
        "maintenanceWindow" => maintenance_window(),
        "name" => String.t(),
        "pendingSoftwareSetId" => String.t(),
        "pendingSoftwareSetVersion" => [String.t()],
        "registeredDevicesCount" => [integer()],
        "softwareSetComplianceStatus" => list(any()),
        "softwareSetUpdateMode" => list(any()),
        "softwareSetUpdateSchedule" => list(any()),
        "tags" => map(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type environment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => String.t(),
        "quotaCode" => String.t(),
        "resourceId" => String.t(),
        "resourceType" => String.t(),
        "serviceCode" => String.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_devices_response() :: %{
        "devices" => list(device_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_devices_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_environments_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_environments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      deregister_device_response() :: %{}

  """
  @type deregister_device_response() :: %{}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "message" => String.t(),
        "name" => String.t()
      }

  """
  @type validation_exception_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_software_sets_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_software_sets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      deregister_device_request() :: %{
        optional("clientToken") => String.t(),
        optional("targetDeviceStatus") => list(any())
      }

  """
  @type deregister_device_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_device_request() :: %{}

  """
  @type get_device_request() :: %{}

  @typedoc """

  ## Example:

      create_environment_response() :: %{
        "environment" => environment_summary()
      }

  """
  @type create_environment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_device_response() :: %{}

  """
  @type delete_device_response() :: %{}

  @typedoc """

  ## Example:

      device_summary() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "currentSoftwareSetId" => String.t(),
        "desiredSoftwareSetId" => String.t(),
        "environmentId" => String.t(),
        "id" => String.t(),
        "lastConnectedAt" => non_neg_integer(),
        "lastPostureAt" => non_neg_integer(),
        "model" => [String.t()],
        "name" => String.t(),
        "pendingSoftwareSetId" => String.t(),
        "serialNumber" => [String.t()],
        "softwareSetUpdateSchedule" => list(any()),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type device_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t(),
        "retryAfterSeconds" => integer()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_environment_request() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type delete_environment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_software_sets_response() :: %{
        "nextToken" => String.t(),
        "softwareSets" => list(software_set_summary()())
      }

  """
  @type list_software_sets_response() :: %{String.t() => any()}

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

      software() :: %{
        "name" => [String.t()],
        "version" => [String.t()]
      }

  """
  @type software() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()()),
        "message" => String.t(),
        "reason" => list(any())
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t(),
        "quotaCode" => String.t(),
        "retryAfterSeconds" => integer(),
        "serviceCode" => String.t()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_environments_response() :: %{
        "environments" => list(environment_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_environments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      device() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "currentSoftwareSetId" => String.t(),
        "currentSoftwareSetVersion" => [String.t()],
        "desiredSoftwareSetId" => String.t(),
        "environmentId" => String.t(),
        "id" => String.t(),
        "kmsKeyArn" => String.t(),
        "lastConnectedAt" => non_neg_integer(),
        "lastPostureAt" => non_neg_integer(),
        "model" => [String.t()],
        "name" => String.t(),
        "pendingSoftwareSetId" => String.t(),
        "pendingSoftwareSetVersion" => [String.t()],
        "serialNumber" => [String.t()],
        "softwareSetComplianceStatus" => list(any()),
        "softwareSetUpdateSchedule" => list(any()),
        "softwareSetUpdateStatus" => list(any()),
        "status" => list(any()),
        "tags" => map(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type device() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_environment_request() :: %{
        optional("clientToken") => String.t(),
        optional("desiredSoftwareSetId") => String.t(),
        optional("desktopEndpoint") => String.t(),
        optional("kmsKeyArn") => String.t(),
        optional("maintenanceWindow") => maintenance_window(),
        optional("name") => String.t(),
        optional("softwareSetUpdateMode") => list(any()),
        optional("softwareSetUpdateSchedule") => list(any()),
        optional("tags") => map(),
        required("desktopArn") => String.t()
      }

  """
  @type create_environment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_environment_request() :: %{
        optional("desiredSoftwareSetId") => String.t(),
        optional("desktopArn") => String.t(),
        optional("desktopEndpoint") => String.t(),
        optional("maintenanceWindow") => maintenance_window(),
        optional("name") => String.t(),
        optional("softwareSetUpdateMode") => list(any()),
        optional("softwareSetUpdateSchedule") => list(any())
      }

  """
  @type update_environment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      maintenance_window() :: %{
        "applyTimeOf" => list(any()),
        "daysOfTheWeek" => list(list(any())()),
        "endTimeHour" => integer(),
        "endTimeMinute" => integer(),
        "startTimeHour" => integer(),
        "startTimeMinute" => integer(),
        "type" => list(any())
      }

  """
  @type maintenance_window() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_environment_response() :: %{}

  """
  @type delete_environment_response() :: %{}

  @typedoc """

  ## Example:

      update_software_set_response() :: %{}

  """
  @type update_software_set_response() :: %{}

  @typedoc """

  ## Example:

      get_device_response() :: %{
        "device" => device()
      }

  """
  @type get_device_response() :: %{String.t() => any()}

  @type create_environment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_device_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_environment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type deregister_device_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_device_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_environment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_software_set_errors() ::
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

  @type list_environments_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_software_sets_errors() ::
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

  @type update_device_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_environment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_software_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2023-08-22",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "thinclient",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "WorkSpaces Thin Client",
      signature_version: "v4",
      signing_name: "thinclient",
      target_prefix: nil
    }
  end

  @doc """
  Creates an environment for your thin client devices.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesthinclient%20CreateEnvironment&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_environment(AWS.Client.t(), create_environment_request(), Keyword.t()) ::
          {:ok, create_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_environment_errors()}
  def create_environment(%Client{} = client, input, options \\ []) do
    url_path = "/environments"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "api.")

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
  Deletes a thin client device.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesthinclient%20DeleteDevice&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The ID of the device to delete.

  ## Optional parameters:
  * `:client_token` (`t:string`) Specifies a unique, case-sensitive identifier
    that you provide to ensure the idempotency of the request. This lets you
    safely retry the request without accidentally performing the same operation
    a second time. Passing the same value to a later call to an operation
    requires that you also pass the same value for all other parameters. We
    recommend that you use a UUID type of value.
  """
  @spec delete_device(AWS.Client.t(), String.t(), delete_device_request(), Keyword.t()) ::
          {:ok, delete_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_device_errors()}
  def delete_device(%Client{} = client, id, input, options \\ []) do
    url_path = "/devices/#{AWS.Util.encode_uri(id)}"
    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta =
      metadata() |> Map.put_new(:host_prefix, "api.")

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
  Deletes an environment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesthinclient%20DeleteEnvironment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The ID of the environment to delete.

  ## Optional parameters:
  * `:client_token` (`t:string`) Specifies a unique, case-sensitive identifier
    that you provide to ensure the idempotency of the request. This lets you
    safely retry the request without accidentally performing the same operation
    a second time. Passing the same value to a later call to an operation
    requires that you also pass the same value for all other parameters. We
    recommend that you use a UUID type of value.
  """
  @spec delete_environment(AWS.Client.t(), String.t(), delete_environment_request(), Keyword.t()) ::
          {:ok, delete_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_environment_errors()}
  def delete_environment(%Client{} = client, id, input, options \\ []) do
    url_path = "/environments/#{AWS.Util.encode_uri(id)}"
    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta =
      metadata() |> Map.put_new(:host_prefix, "api.")

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
  Deregisters a thin client device.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesthinclient%20DeregisterDevice&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The ID of the device to deregister.

  ## Optional parameters:
  """
  @spec deregister_device(AWS.Client.t(), String.t(), deregister_device_request(), Keyword.t()) ::
          {:ok, deregister_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deregister_device_errors()}
  def deregister_device(%Client{} = client, id, input, options \\ []) do
    url_path = "/deregister-device/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  Returns information for a thin client device.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesthinclient%20GetDevice&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The ID of the device for which to return information.

  ## Optional parameters:
  """
  @spec get_device(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_device_errors()}
  def get_device(%Client{} = client, id, options \\ []) do
    url_path = "/devices/#{AWS.Util.encode_uri(id)}"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [
    # ])

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information for an environment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesthinclient%20GetEnvironment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The ID of the environment for which to return information.

  ## Optional parameters:
  """
  @spec get_environment(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_environment_errors()}
  def get_environment(%Client{} = client, id, options \\ []) do
    url_path = "/environments/#{AWS.Util.encode_uri(id)}"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [
    # ])

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information for a software set.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesthinclient%20GetSoftwareSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The ID of the software set for which to return information.

  ## Optional parameters:
  """
  @spec get_software_set(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_software_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_software_set_errors()}
  def get_software_set(%Client{} = client, id, options \\ []) do
    url_path = "/softwaresets/#{AWS.Util.encode_uri(id)}"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [
    # ])

    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of thin client devices.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesthinclient%20ListDevices&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results that are returned
    per call. You can use nextToken to obtain further pages of results.
  * `:next_token` (`t:string`) If nextToken is returned, there are more results
    available. The value of nextToken is a unique pagination token for each
    page. Make the call again using the returned token to retrieve the next
    page. Keep all other arguments unchanged. Each pagination token expires
    after 24 hours. Using an expired pagination token will return an HTTP 400
    InvalidToken error.
  """
  @spec list_devices(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_devices_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_devices_errors()}
  def list_devices(%Client{} = client, options \\ []) do
    url_path = "/devices"

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
      metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of environments.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesthinclient%20ListEnvironments&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results that are returned
    per call. You can use nextToken to obtain further pages of results.
  * `:next_token` (`t:string`) If nextToken is returned, there are more results
    available. The value of nextToken is a unique pagination token for each
    page. Make the call again using the returned token to retrieve the next
    page. Keep all other arguments unchanged. Each pagination token expires
    after 24 hours. Using an expired pagination token will return an HTTP 400
    InvalidToken error.
  """
  @spec list_environments(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_environments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_environments_errors()}
  def list_environments(%Client{} = client, options \\ []) do
    url_path = "/environments"

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
      metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of software sets.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesthinclient%20ListSoftwareSets&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results that are returned
    per call. You can use nextToken to obtain further pages of results.
  * `:next_token` (`t:string`) If nextToken is returned, there are more results
    available. The value of nextToken is a unique pagination token for each
    page. Make the call again using the returned token to retrieve the next
    page. Keep all other arguments unchanged. Each pagination token expires
    after 24 hours. Using an expired pagination token will return an HTTP 400
    InvalidToken error.
  """
  @spec list_software_sets(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_software_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_software_sets_errors()}
  def list_software_sets(%Client{} = client, options \\ []) do
    url_path = "/softwaresets"

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
      metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of tags for a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesthinclient%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:`) The Amazon Resource Name (ARN) of the resource for
    which you want to retrieve tags.

  ## Optional parameters:
  """
  @spec list_tags_for_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
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
      metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Assigns one or more tags (key-value pairs) to the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesthinclient%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:`) The Amazon Resource Name (ARN) of the resource that you
    want to tag.

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
      metadata() |> Map.put_new(:host_prefix, "api.")

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
  Removes a tag or tags from a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesthinclient%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:`) The Amazon Resource Name (ARN) of the resource that you
    want to untag.

  ## Optional parameters:
  * `:tag_keys` (`t:list[smithy.api#String]`) The keys of the key-value pairs for
    the tag or tags you want to remove from the specified resource.
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
      metadata() |> Map.put_new(:host_prefix, "api.")

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
  Updates a thin client device.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesthinclient%20UpdateDevice&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The ID of the device to update.

  ## Optional parameters:
  """
  @spec update_device(AWS.Client.t(), String.t(), update_device_request(), Keyword.t()) ::
          {:ok, update_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_device_errors()}
  def update_device(%Client{} = client, id, input, options \\ []) do
    url_path = "/devices/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates an environment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesthinclient%20UpdateEnvironment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The ID of the environment to update.

  ## Optional parameters:
  """
  @spec update_environment(AWS.Client.t(), String.t(), update_environment_request(), Keyword.t()) ::
          {:ok, update_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_environment_errors()}
  def update_environment(%Client{} = client, id, input, options \\ []) do
    url_path = "/environments/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a software set.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesthinclient%20UpdateSoftwareSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The ID of the software set to update.

  ## Optional parameters:
  """
  @spec update_software_set(
          AWS.Client.t(),
          String.t(),
          update_software_set_request(),
          Keyword.t()
        ) ::
          {:ok, update_software_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_software_set_errors()}
  def update_software_set(%Client{} = client, id, input, options \\ []) do
    url_path = "/softwaresets/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta =
      metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end
end
