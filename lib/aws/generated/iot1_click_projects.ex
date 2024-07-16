# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoT1ClickProjects do
  @moduledoc """
  The AWS IoT 1-Click Projects API Reference
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      describe_project_response() :: %{
        "project" => project_description()
      }

  """
  @type describe_project_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      project_description() :: %{
        "arn" => String.t(),
        "createdDate" => non_neg_integer(),
        "description" => String.t(),
        "placementTemplate" => placement_template(),
        "projectName" => String.t(),
        "tags" => map(),
        "updatedDate" => non_neg_integer()
      }

  """
  @type project_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_failure_exception() :: %{
        "code" => String.t(),
        "message" => String.t()
      }

  """
  @type internal_failure_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_placement_request() :: %{
        optional("attributes") => map(),
        required("placementName") => String.t()
      }

  """
  @type create_placement_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_placement_response() :: %{}

  """
  @type update_placement_response() :: %{}

  @typedoc """

  ## Example:

      project_summary() :: %{
        "arn" => String.t(),
        "createdDate" => non_neg_integer(),
        "projectName" => String.t(),
        "tags" => map(),
        "updatedDate" => non_neg_integer()
      }

  """
  @type project_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_placements_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_placements_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_project_request() :: %{}

  """
  @type describe_project_request() :: %{}

  @typedoc """

  ## Example:

      placement_description() :: %{
        "attributes" => map(),
        "createdDate" => non_neg_integer(),
        "placementName" => String.t(),
        "projectName" => String.t(),
        "updatedDate" => non_neg_integer()
      }

  """
  @type placement_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      placement_template() :: %{
        "defaultAttributes" => map(),
        "deviceTemplates" => map()
      }

  """
  @type placement_template() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_requests_exception() :: %{
        "code" => String.t(),
        "message" => String.t()
      }

  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_project_response() :: %{}

  """
  @type update_project_response() :: %{}

  @typedoc """

  ## Example:

      list_placements_response() :: %{
        "nextToken" => String.t(),
        "placements" => list(placement_summary()())
      }

  """
  @type list_placements_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_project_response() :: %{}

  """
  @type create_project_response() :: %{}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "code" => String.t(),
        "message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_request_exception() :: %{
        "code" => String.t(),
        "message" => String.t()
      }

  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_device_with_placement_request() :: %{
        required("deviceId") => String.t()
      }

  """
  @type associate_device_with_placement_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_placement_response() :: %{
        "placement" => placement_description()
      }

  """
  @type describe_placement_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_placement_response() :: %{}

  """
  @type delete_placement_response() :: %{}

  @typedoc """

  ## Example:

      list_projects_response() :: %{
        "nextToken" => String.t(),
        "projects" => list(project_summary()())
      }

  """
  @type list_projects_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      placement_summary() :: %{
        "createdDate" => non_neg_integer(),
        "placementName" => String.t(),
        "projectName" => String.t(),
        "updatedDate" => non_neg_integer()
      }

  """
  @type placement_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_placement_response() :: %{}

  """
  @type create_placement_response() :: %{}

  @typedoc """

  ## Example:

      delete_project_response() :: %{}

  """
  @type delete_project_response() :: %{}

  @typedoc """

  ## Example:

      update_project_request() :: %{
        optional("description") => String.t(),
        optional("placementTemplate") => placement_template()
      }

  """
  @type update_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_placement_request() :: %{
        optional("attributes") => map()
      }

  """
  @type update_placement_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      associate_device_with_placement_response() :: %{}

  """
  @type associate_device_with_placement_response() :: %{}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      create_project_request() :: %{
        optional("description") => String.t(),
        optional("placementTemplate") => placement_template(),
        optional("tags") => map(),
        required("projectName") => String.t()
      }

  """
  @type create_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_projects_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_projects_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_placement_request() :: %{}

  """
  @type describe_placement_request() :: %{}

  @typedoc """

  ## Example:

      disassociate_device_from_placement_response() :: %{}

  """
  @type disassociate_device_from_placement_response() :: %{}

  @typedoc """

  ## Example:

      delete_placement_request() :: %{}

  """
  @type delete_placement_request() :: %{}

  @typedoc """

  ## Example:

      device_template() :: %{
        "callbackOverrides" => map(),
        "deviceType" => String.t()
      }

  """
  @type device_template() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_project_request() :: %{}

  """
  @type delete_project_request() :: %{}

  @typedoc """

  ## Example:

      get_devices_in_placement_request() :: %{}

  """
  @type get_devices_in_placement_request() :: %{}

  @typedoc """

  ## Example:

      resource_conflict_exception() :: %{
        "code" => String.t(),
        "message" => String.t()
      }

  """
  @type resource_conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_devices_in_placement_response() :: %{
        "devices" => map()
      }

  """
  @type get_devices_in_placement_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_device_from_placement_request() :: %{}

  """
  @type disassociate_device_from_placement_request() :: %{}

  @type associate_device_with_placement_errors() ::
          resource_conflict_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type create_placement_errors() ::
          resource_conflict_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type create_project_errors() ::
          resource_conflict_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type delete_placement_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | internal_failure_exception()

  @type delete_project_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | internal_failure_exception()

  @type describe_placement_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_project_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type disassociate_device_from_placement_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | internal_failure_exception()

  @type get_devices_in_placement_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_placements_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_projects_errors() :: invalid_request_exception() | internal_failure_exception()

  @type list_tags_for_resource_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type tag_resource_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type untag_resource_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type update_placement_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | internal_failure_exception()

  @type update_project_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | internal_failure_exception()

  def metadata do
    %{
      api_version: "2018-05-14",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "projects.iot1click",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "IoT 1Click Projects",
      signature_version: "v4",
      signing_name: "iot1click",
      target_prefix: nil
    }
  end

  @doc """
  Associates a physical device with a placement.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iot1clickprojects%20AssociateDeviceWithPlacement&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:device_template_name` (`t:string`) The device template name to associate
    with the device ID.
  * `:placement_name` (`t:string`) The name of the placement in which to associate
    the device.
  * `:project_name` (`t:string`) The name of the project containing the placement
    in which to associate the device.

  ## Optional parameters:
  """
  @spec associate_device_with_placement(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          associate_device_with_placement_request(),
          Keyword.t()
        ) ::
          {:ok, associate_device_with_placement_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_device_with_placement_errors()}
  def associate_device_with_placement(
        %Client{} = client,
        device_template_name,
        placement_name,
        project_name,
        input,
        options \\ []
      ) do
    url_path =
      "/projects/#{AWS.Util.encode_uri(project_name)}/placements/#{AWS.Util.encode_uri(placement_name)}/devices/#{AWS.Util.encode_uri(device_template_name)}"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates an empty placement.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iot1clickprojects%20CreatePlacement&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:project_name` (`t:string`) The name of the project in which to create the
    placement.

  ## Optional parameters:
  """
  @spec create_placement(AWS.Client.t(), String.t(), create_placement_request(), Keyword.t()) ::
          {:ok, create_placement_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_placement_errors()}
  def create_placement(%Client{} = client, project_name, input, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project_name)}/placements"
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
  Creates an empty project with a placement template. A project contains zero or
  more placements that adhere to the placement template defined in the project.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iot1clickprojects%20CreateProject&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_project(AWS.Client.t(), create_project_request(), Keyword.t()) ::
          {:ok, create_project_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_project_errors()}
  def create_project(%Client{} = client, input, options \\ []) do
    url_path = "/projects"
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
  Deletes a placement. To delete a placement, it must not have any devices
  associated with it.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iot1clickprojects%20DeletePlacement&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:placement_name` (`t:string`) The name of the empty placement to delete.
  * `:project_name` (`t:string`) The project containing the empty placement to
    delete.

  ## Optional parameters:
  """
  @spec delete_placement(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_placement_request(),
          Keyword.t()
        ) ::
          {:ok, delete_placement_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_placement_errors()}
  def delete_placement(%Client{} = client, placement_name, project_name, input, options \\ []) do
    url_path =
      "/projects/#{AWS.Util.encode_uri(project_name)}/placements/#{AWS.Util.encode_uri(placement_name)}"

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
  Deletes a project. To delete a project, it must not have any placements
  associated with it.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iot1clickprojects%20DeleteProject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:project_name` (`t:string`) The name of the empty project to delete.

  ## Optional parameters:
  """
  @spec delete_project(AWS.Client.t(), String.t(), delete_project_request(), Keyword.t()) ::
          {:ok, delete_project_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_project_errors()}
  def delete_project(%Client{} = client, project_name, input, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project_name)}"
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
  Describes a placement in a project.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iot1clickprojects%20DescribePlacement&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:placement_name` (`t:string`) The name of the placement within a project.
  * `:project_name` (`t:string`) The project containing the placement to be
    described.

  ## Optional parameters:
  """
  @spec describe_placement(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_placement_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_placement_errors()}
  def describe_placement(%Client{} = client, placement_name, project_name, options \\ []) do
    url_path =
      "/projects/#{AWS.Util.encode_uri(project_name)}/placements/#{AWS.Util.encode_uri(placement_name)}"

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
  Returns an object describing a project.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iot1clickprojects%20DescribeProject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:project_name` (`t:string`) The name of the project to be described.

  ## Optional parameters:
  """
  @spec describe_project(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_project_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_project_errors()}
  def describe_project(%Client{} = client, project_name, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project_name)}"

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
  Removes a physical device from a placement.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iot1clickprojects%20DisassociateDeviceFromPlacement&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:device_template_name` (`t:string`) The device ID that should be removed from
    the placement.
  * `:placement_name` (`t:string`) The name of the placement that the device
    should be removed from.
  * `:project_name` (`t:string`) The name of the project that contains the
    placement.

  ## Optional parameters:
  """
  @spec disassociate_device_from_placement(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          disassociate_device_from_placement_request(),
          Keyword.t()
        ) ::
          {:ok, disassociate_device_from_placement_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_device_from_placement_errors()}
  def disassociate_device_from_placement(
        %Client{} = client,
        device_template_name,
        placement_name,
        project_name,
        input,
        options \\ []
      ) do
    url_path =
      "/projects/#{AWS.Util.encode_uri(project_name)}/placements/#{AWS.Util.encode_uri(placement_name)}/devices/#{AWS.Util.encode_uri(device_template_name)}"

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
  Returns an object enumerating the devices in a placement.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iot1clickprojects%20GetDevicesInPlacement&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:placement_name` (`t:string`) The name of the placement to get the devices
    from.
  * `:project_name` (`t:string`) The name of the project containing the placement.

  ## Optional parameters:
  """
  @spec get_devices_in_placement(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_devices_in_placement_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_devices_in_placement_errors()}
  def get_devices_in_placement(%Client{} = client, placement_name, project_name, options \\ []) do
    url_path =
      "/projects/#{AWS.Util.encode_uri(project_name)}/placements/#{AWS.Util.encode_uri(placement_name)}/devices"

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
  Lists the placement(s) of a project.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iot1clickprojects%20ListPlacements&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:project_name` (`t:string`) The project containing the placements to be
    listed.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per
    request. If not set, a default value of 100 is used.
  * `:next_token` (`t:string`) The token to retrieve the next set of results.
  """
  @spec list_placements(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_placements_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_placements_errors()}
  def list_placements(%Client{} = client, project_name, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project_name)}/placements"

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
  Lists the AWS IoT 1-Click project(s) associated with your AWS account and
  region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iot1clickprojects%20ListProjects&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per
    request. If not set, a default value of 100 is used.
  * `:next_token` (`t:string`) The token to retrieve the next set of results.
  """
  @spec list_projects(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_projects_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_projects_errors()}
  def list_projects(%Client{} = client, options \\ []) do
    url_path = "/projects"

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
  Lists the tags (metadata key/value pairs) which you have assigned to the
  resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iot1clickprojects%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The ARN of the resource whose tags you want to
    list.

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
  Creates or modifies tags for a resource. Tags are key/value pairs (metadata)
  that can be used to manage a resource. For more information, see [AWS Tagging
  Strategies](https://aws.amazon.com/answers/account-management/aws-tagging-strategies/).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iot1clickprojects%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The ARN of the resouce for which tag(s) should be
    added or modified.

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
  Removes one or more tags (metadata key/value pairs) from a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iot1clickprojects%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The ARN of the resource whose tag you want to
    remove.
  * `:tag_keys` (`t:list[com.amazonaws.iot1clickprojects#TagKey]`) The keys of
    those tags which you want to remove.

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
  Updates a placement with the given attributes. To clear an attribute, pass an
  empty value (i.e., "").

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iot1clickprojects%20UpdatePlacement&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:placement_name` (`t:string`) The name of the placement to update.
  * `:project_name` (`t:string`) The name of the project containing the placement
    to be updated.

  ## Optional parameters:
  """
  @spec update_placement(
          AWS.Client.t(),
          String.t(),
          String.t(),
          update_placement_request(),
          Keyword.t()
        ) ::
          {:ok, update_placement_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_placement_errors()}
  def update_placement(%Client{} = client, placement_name, project_name, input, options \\ []) do
    url_path =
      "/projects/#{AWS.Util.encode_uri(project_name)}/placements/#{AWS.Util.encode_uri(placement_name)}"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a project associated with your AWS account and region. With the
  exception of device template names, you can pass just the values that need to
  be updated because the update request will change only the values that are
  provided. To clear a value, pass the empty string (i.e., `""`).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iot1clickprojects%20UpdateProject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:project_name` (`t:string`) The name of the project to be updated.

  ## Optional parameters:
  """
  @spec update_project(AWS.Client.t(), String.t(), update_project_request(), Keyword.t()) ::
          {:ok, update_project_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_project_errors()}
  def update_project(%Client{} = client, project_name, input, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project_name)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
