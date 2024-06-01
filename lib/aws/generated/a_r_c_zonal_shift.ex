# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ARCZonalShift do
  @moduledoc """
  Welcome to the Zonal Shift API Reference Guide for Amazon Route 53 Application
  Recovery Controller (Route 53 ARC). You can start a zonal shift to move
  traffic for a load balancer resource away from an Availability Zone to help
  your application recover quickly from an impairment in an Availability Zone.
  For example, you can recover your application from a developer's bad code
  deployment or from an Amazon Web Services infrastructure failure in a single
  Availability Zone.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      list_managed_resources_response() :: %{
        "items" => list(managed_resource_summary()()),
        "nextToken" => [String.t()]
      }

  """
  @type list_managed_resources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_managed_resource_response() :: %{
        "appliedWeights" => map(),
        "arn" => String.t(),
        "autoshifts" => list(autoshift_in_resource()()),
        "name" => String.t(),
        "practiceRunConfiguration" => practice_run_configuration(),
        "zonalAutoshiftStatus" => list(any()),
        "zonalShifts" => list(zonal_shift_in_resource()())
      }

  """
  @type get_managed_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_zonal_shifts_response() :: %{
        "items" => list(zonal_shift_summary()()),
        "nextToken" => [String.t()]
      }

  """
  @type list_zonal_shifts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_zonal_shift_request() :: %{
        optional("comment") => String.t(),
        optional("expiresIn") => String.t()
      }

  """
  @type update_zonal_shift_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      autoshift_summary() :: %{
        "awayFrom" => String.t(),
        "endTime" => non_neg_integer(),
        "startTime" => non_neg_integer(),
        "status" => list(any())
      }

  """
  @type autoshift_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_autoshifts_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => [String.t()],
        optional("status") => list(any())
      }

  """
  @type list_autoshifts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      zonal_shift() :: %{
        required("awayFrom") => String.t(),
        required("comment") => String.t(),
        required("expiryTime") => non_neg_integer(),
        required("resourceIdentifier") => String.t(),
        required("startTime") => non_neg_integer(),
        required("status") => list(any()),
        required("zonalShiftId") => String.t()
      }

  """
  @type zonal_shift() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      autoshift_in_resource() :: %{
        "appliedStatus" => list(any()),
        "awayFrom" => String.t(),
        "startTime" => non_neg_integer()
      }

  """
  @type autoshift_in_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      managed_resource_summary() :: %{
        "appliedWeights" => map(),
        "arn" => String.t(),
        "autoshifts" => list(autoshift_in_resource()()),
        "availabilityZones" => list(String.t()()),
        "name" => String.t(),
        "practiceRunStatus" => list(any()),
        "zonalAutoshiftStatus" => list(any()),
        "zonalShifts" => list(zonal_shift_in_resource()())
      }

  """
  @type managed_resource_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_zonal_autoshift_configuration_request() :: %{
        required("zonalAutoshiftStatus") => list(any())
      }

  """
  @type update_zonal_autoshift_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      zonal_shift_summary() :: %{
        "awayFrom" => String.t(),
        "comment" => String.t(),
        "expiryTime" => non_neg_integer(),
        "practiceRunOutcome" => list(any()),
        "resourceIdentifier" => String.t(),
        "startTime" => non_neg_integer(),
        "status" => list(any()),
        "zonalShiftId" => String.t()
      }

  """
  @type zonal_shift_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_zonal_shift_request() :: %{}

  """
  @type cancel_zonal_shift_request() :: %{}

  @typedoc """

  ## Example:

      update_practice_run_configuration_request() :: %{
        optional("blockedDates") => list(String.t()()),
        optional("blockedWindows") => list(String.t()()),
        optional("blockingAlarms") => list(control_condition()()),
        optional("outcomeAlarms") => list(control_condition()())
      }

  """
  @type update_practice_run_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t()],
        "reason" => String.t(),
        "zonalShiftId" => [String.t()]
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      zonal_shift_in_resource() :: %{
        "appliedStatus" => list(any()),
        "awayFrom" => String.t(),
        "comment" => String.t(),
        "expiryTime" => non_neg_integer(),
        "practiceRunOutcome" => list(any()),
        "resourceIdentifier" => String.t(),
        "startTime" => non_neg_integer(),
        "zonalShiftId" => String.t()
      }

  """
  @type zonal_shift_in_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_zonal_shifts_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => [String.t()],
        optional("resourceIdentifier") => String.t(),
        optional("status") => list(any())
      }

  """
  @type list_zonal_shifts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_managed_resources_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => [String.t()]
      }

  """
  @type list_managed_resources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_zonal_autoshift_configuration_response() :: %{
        "resourceIdentifier" => String.t(),
        "zonalAutoshiftStatus" => list(any())
      }

  """
  @type update_zonal_autoshift_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      control_condition() :: %{
        "alarmIdentifier" => String.t(),
        "type" => list(any())
      }

  """
  @type control_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_practice_run_configuration_response() :: %{
        "arn" => String.t(),
        "name" => String.t(),
        "practiceRunConfiguration" => practice_run_configuration(),
        "zonalAutoshiftStatus" => list(any())
      }

  """
  @type create_practice_run_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_managed_resource_request() :: %{}

  """
  @type get_managed_resource_request() :: %{}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_zonal_shift_request() :: %{
        required("awayFrom") => String.t(),
        required("comment") => String.t(),
        required("expiresIn") => String.t(),
        required("resourceIdentifier") => String.t()
      }

  """
  @type start_zonal_shift_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_practice_run_configuration_request() :: %{}

  """
  @type delete_practice_run_configuration_request() :: %{}

  @typedoc """

  ## Example:

      list_autoshifts_response() :: %{
        "items" => list(autoshift_summary()()),
        "nextToken" => [String.t()]
      }

  """
  @type list_autoshifts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => [String.t()],
        "reason" => String.t()
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_practice_run_configuration_response() :: %{
        "arn" => String.t(),
        "name" => String.t(),
        "practiceRunConfiguration" => practice_run_configuration(),
        "zonalAutoshiftStatus" => list(any())
      }

  """
  @type update_practice_run_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_practice_run_configuration_request() :: %{
        optional("blockedDates") => list(String.t()()),
        optional("blockedWindows") => list(String.t()()),
        optional("blockingAlarms") => list(control_condition()()),
        required("outcomeAlarms") => list(control_condition()()),
        required("resourceIdentifier") => String.t()
      }

  """
  @type create_practice_run_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      practice_run_configuration() :: %{
        "blockedDates" => list(String.t()()),
        "blockedWindows" => list(String.t()()),
        "blockingAlarms" => list(control_condition()()),
        "outcomeAlarms" => list(control_condition()())
      }

  """
  @type practice_run_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_practice_run_configuration_response() :: %{
        "arn" => String.t(),
        "name" => String.t(),
        "zonalAutoshiftStatus" => list(any())
      }

  """
  @type delete_practice_run_configuration_response() :: %{String.t() => any()}

  @type cancel_zonal_shift_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_practice_run_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_practice_run_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_managed_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_autoshifts_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_managed_resources_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_zonal_shifts_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type start_zonal_shift_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_practice_run_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_zonal_autoshift_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_zonal_shift_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2022-10-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "arc-zonal-shift",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "ARC Zonal Shift",
      signature_version: "v4",
      signing_name: "arc-zonal-shift",
      target_prefix: nil
    }
  end

  @doc """
  Cancel a zonal shift in Amazon Route 53 Application Recovery Controller. To
  cancel the zonal shift, specify the zonal shift ID.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=arczonalshift%20CancelZonalShift&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:zonal_shift_id` (`t:string`) The internally-generated identifier of a zonal
    shift.

  ## Optional parameters:
  """
  @spec cancel_zonal_shift(AWS.Client.t(), String.t(), cancel_zonal_shift_request(), Keyword.t()) ::
          {:ok, zonal_shift(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_zonal_shift_errors()}
  def cancel_zonal_shift(%Client{} = client, zonal_shift_id, input, options \\ []) do
    url_path = "/zonalshifts/#{AWS.Util.encode_uri(zonal_shift_id)}"
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
  A practice run configuration for zonal autoshift is required when you enable
  zonal autoshift. A practice run configuration includes specifications for
  blocked dates and blocked time windows, and for Amazon CloudWatch alarms that
  you create to use with practice runs. The alarms that you specify are an
  *outcome alarm*, to monitor application health during practice runs and,
  optionally, a *blocking alarm*, to block practice runs from starting.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=arczonalshift%20CreatePracticeRunConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_practice_run_configuration(
          AWS.Client.t(),
          create_practice_run_configuration_request(),
          Keyword.t()
        ) ::
          {:ok, create_practice_run_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_practice_run_configuration_errors()}
  def create_practice_run_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/configuration"
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
  Deletes the practice run configuration for a resource. Before you can delete a
  practice run configuration for a resource., you must disable zonal autoshift
  for the resource. Practice runs must be configured for zonal autoshift to be
  enabled.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=arczonalshift%20DeletePracticeRunConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_identifier` (`t:string`) The identifier for the resource that you
    want to delete the practice run configuration for. The identifier is the
    Amazon Resource Name (ARN) for the resource.

  ## Optional parameters:
  """
  @spec delete_practice_run_configuration(
          AWS.Client.t(),
          String.t(),
          delete_practice_run_configuration_request(),
          Keyword.t()
        ) ::
          {:ok, delete_practice_run_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_practice_run_configuration_errors()}
  def delete_practice_run_configuration(
        %Client{} = client,
        resource_identifier,
        input,
        options \\ []
      ) do
    url_path = "/configuration/#{AWS.Util.encode_uri(resource_identifier)}"
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
  Get information about a resource that's been registered for zonal shifts with
  Amazon Route 53 Application Recovery Controller in this Amazon Web Services
  Region. Resources that are registered for zonal shifts are managed resources
  in Route 53 ARC. You can start zonal shifts and configure zonal autoshift for
  managed resources.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=arczonalshift%20GetManagedResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_identifier` (`t:string`) The identifier for the resource to shift
    away traffic for. The identifier is the Amazon Resource Name (ARN) for the
    resource.

  ## Optional parameters:
  """
  @spec get_managed_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_managed_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_managed_resource_errors()}
  def get_managed_resource(%Client{} = client, resource_identifier, options \\ []) do
    url_path = "/managedresources/#{AWS.Util.encode_uri(resource_identifier)}"

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
  Returns the active autoshifts for a specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=arczonalshift%20ListAutoshifts&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The number of objects that you want to return
    with this call.
  * `:next_token` (`t:`) Specifies that you want to receive the next page of
    results. Valid only if you received a NextToken response in the previous
    request. If you did, it indicates that more output is available. Set this
    parameter to the value provided by the previous call's NextToken response to
    request the next page of results.
  * `:status` (`t:enum["ACTIVE|COMPLETED"]`) The status of the autoshift.
  """
  @spec list_autoshifts(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_autoshifts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_autoshifts_errors()}
  def list_autoshifts(%Client{} = client, options \\ []) do
    url_path = "/autoshifts"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, next_token: nil, status: nil
    # ])

    headers = []
    query_params = []

    {status, options} = Keyword.pop(options, :status, nil)

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
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
  Lists all the resources in your Amazon Web Services account in this Amazon Web
  Services Region that are managed for zonal shifts in Amazon Route 53
  Application Recovery Controller, and information about them. The information
  includes the zonal autoshift status for the resource, as well as the Amazon
  Resource Name (ARN), the Availability Zones that each resource is deployed in,
  and the resource name.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=arczonalshift%20ListManagedResources&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The number of objects that you want to return
    with this call.
  * `:next_token` (`t:`) Specifies that you want to receive the next page of
    results. Valid only if you received a NextToken response in the previous
    request. If you did, it indicates that more output is available. Set this
    parameter to the value provided by the previous call's NextToken response to
    request the next page of results.
  """
  @spec list_managed_resources(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_managed_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_managed_resources_errors()}
  def list_managed_resources(%Client{} = client, options \\ []) do
    url_path = "/managedresources"

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
  Lists all active and completed zonal shifts in Amazon Route 53 Application
  Recovery Controller in your Amazon Web Services account in this Amazon Web
  Services Region. `ListZonalShifts` returns customer-started zonal shifts, as
  well as practice run zonal shifts that Route 53 ARC started on your behalf for
  zonal autoshift.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=arczonalshift%20ListZonalShifts&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The number of objects that you want to return
    with this call.
  * `:next_token` (`t:`) Specifies that you want to receive the next page of
    results. Valid only if you received a NextToken response in the previous
    request. If you did, it indicates that more output is available. Set this
    parameter to the value provided by the previous call's NextToken response to
    request the next page of results.
  * `:resource_identifier` (`t:string`) The identifier for the resource that you
    want to list zonal shifts for. The identifier is the Amazon Resource Name
    (ARN) for the resource.
  * `:status` (`t:enum["ACTIVE|CANCELED|EXPIRED"]`) A status for a zonal shift.
  """
  @spec list_zonal_shifts(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_zonal_shifts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_zonal_shifts_errors()}
  def list_zonal_shifts(%Client{} = client, options \\ []) do
    url_path = "/zonalshifts"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, next_token: nil, resource_identifier: nil, status: nil
    # ])

    headers = []
    query_params = []

    {status, options} = Keyword.pop(options, :status, nil)

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    {resource_identifier, options} = Keyword.pop(options, :resource_identifier, nil)

    query_params =
      if !is_nil(resource_identifier) do
        [{"resourceIdentifier", resource_identifier} | query_params]
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
  You start a zonal shift to temporarily move load balancer traffic away from an
  Availability Zone in an Amazon Web Services Region, to help your application
  recover immediately, for example, from a developer's bad code deployment or
  from an Amazon Web Services infrastructure failure in a single Availability
  Zone. You can start a zonal shift in Route 53 ARC only for managed resources
  in your Amazon Web Services account in an Amazon Web Services Region.
  Resources are automatically registered with Route 53 ARC by Amazon Web
  Services services. At this time, you can only start a zonal shift for Network
  Load Balancers and Application Load Balancers with cross-zone load balancing
  turned off.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=arczonalshift%20StartZonalShift&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec start_zonal_shift(AWS.Client.t(), start_zonal_shift_request(), Keyword.t()) ::
          {:ok, zonal_shift(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_zonal_shift_errors()}
  def start_zonal_shift(%Client{} = client, input, options \\ []) do
    url_path = "/zonalshifts"
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
  Update a practice run configuration to change one or more of the following: add,
  change, or remove the blocking alarm; change the outcome alarm; or add,
  change, or remove blocking dates or time windows.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=arczonalshift%20UpdatePracticeRunConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_identifier` (`t:string`) The identifier for the resource that you
    want to update the practice run configuration for. The identifier is the
    Amazon Resource Name (ARN) for the resource.

  ## Optional parameters:
  """
  @spec update_practice_run_configuration(
          AWS.Client.t(),
          String.t(),
          update_practice_run_configuration_request(),
          Keyword.t()
        ) ::
          {:ok, update_practice_run_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_practice_run_configuration_errors()}
  def update_practice_run_configuration(
        %Client{} = client,
        resource_identifier,
        input,
        options \\ []
      ) do
    url_path = "/configuration/#{AWS.Util.encode_uri(resource_identifier)}"
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
      200
    )
  end

  @doc """
  You can update the zonal autoshift status for a resource, to enable or disable
  zonal autoshift. When zonal autoshift is `ENABLED`, Amazon Web Services shifts
  away resource traffic from an Availability Zone, on your behalf, when Amazon
  Web Services determines that there's an issue in the Availability Zone that
  could potentially affect customers.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=arczonalshift%20UpdateZonalAutoshiftConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_identifier` (`t:string`) The identifier for the resource that you
    want to update the zonal autoshift configuration for. The identifier is the
    Amazon Resource Name (ARN) for the resource.

  ## Optional parameters:
  """
  @spec update_zonal_autoshift_configuration(
          AWS.Client.t(),
          String.t(),
          update_zonal_autoshift_configuration_request(),
          Keyword.t()
        ) ::
          {:ok, update_zonal_autoshift_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_zonal_autoshift_configuration_errors()}
  def update_zonal_autoshift_configuration(
        %Client{} = client,
        resource_identifier,
        input,
        options \\ []
      ) do
    url_path = "/managedresources/#{AWS.Util.encode_uri(resource_identifier)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Update an active zonal shift in Amazon Route 53 Application Recovery Controller
  in your Amazon Web Services account. You can update a zonal shift to set a new
  expiration, or edit or replace the comment for the zonal shift.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=arczonalshift%20UpdateZonalShift&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:zonal_shift_id` (`t:string`) The identifier of a zonal shift.

  ## Optional parameters:
  """
  @spec update_zonal_shift(AWS.Client.t(), String.t(), update_zonal_shift_request(), Keyword.t()) ::
          {:ok, zonal_shift(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_zonal_shift_errors()}
  def update_zonal_shift(%Client{} = client, zonal_shift_id, input, options \\ []) do
    url_path = "/zonalshifts/#{AWS.Util.encode_uri(zonal_shift_id)}"
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
      200
    )
  end
end
