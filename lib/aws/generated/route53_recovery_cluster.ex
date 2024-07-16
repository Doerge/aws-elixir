# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Route53RecoveryCluster do
  @moduledoc """
  Welcome to the Routing Control (Recovery Cluster) API Reference Guide for Amazon
  Route 53 Application Recovery Controller. With Route 53 ARC, you can use
  routing control with extreme reliability to recover applications by rerouting
  traffic across Availability Zones or Amazon Web Services Regions. Routing
  controls are simple on/off switches hosted on a highly available cluster in
  Route 53 ARC. A cluster provides a set of five redundant Regional endpoints
  against which you can run API calls to get or update the state of routing
  controls. To implement failover, you set one routing control to ON and another
  one to OFF, to reroute traffic from one Availability Zone or Amazon Web
  Services Region to another.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

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
      
      endpoint_temporarily_unavailable_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type endpoint_temporarily_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_routing_control_state_request() :: %{
        required("RoutingControlArn") => String.t()
      }
      
  """
  @type get_routing_control_state_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_routing_control_state_response() :: %{
        "RoutingControlArn" => String.t(),
        "RoutingControlName" => String.t(),
        "RoutingControlState" => list(any())
      }
      
  """
  @type get_routing_control_state_response() :: %{String.t() => any()}

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
      
      list_routing_controls_request() :: %{
        optional("ControlPanelArn") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_routing_controls_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_routing_controls_response() :: %{
        "NextToken" => String.t(),
        "RoutingControls" => list(routing_control()())
      }
      
  """
  @type list_routing_controls_response() :: %{String.t() => any()}

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
      
      routing_control() :: %{
        "ControlPanelArn" => String.t(),
        "ControlPanelName" => String.t(),
        "Owner" => String.t(),
        "RoutingControlArn" => String.t(),
        "RoutingControlName" => String.t(),
        "RoutingControlState" => list(any())
      }
      
  """
  @type routing_control() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_limit_exceeded_exception() :: %{
        "limitCode" => String.t(),
        "message" => String.t(),
        "resourceId" => String.t(),
        "resourceType" => String.t(),
        "serviceCode" => String.t()
      }
      
  """
  @type service_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => String.t(),
        "retryAfterSeconds" => integer()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_routing_control_state_entry() :: %{
        "RoutingControlArn" => String.t(),
        "RoutingControlState" => list(any())
      }
      
  """
  @type update_routing_control_state_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_routing_control_state_request() :: %{
        optional("SafetyRulesToOverride") => list(String.t()()),
        required("RoutingControlArn") => String.t(),
        required("RoutingControlState") => list(any())
      }
      
  """
  @type update_routing_control_state_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_routing_control_state_response() :: %{}
      
  """
  @type update_routing_control_state_response() :: %{}

  @typedoc """

  ## Example:
      
      update_routing_control_states_request() :: %{
        optional("SafetyRulesToOverride") => list(String.t()()),
        required("UpdateRoutingControlStateEntries") => list(update_routing_control_state_entry()())
      }
      
  """
  @type update_routing_control_states_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_routing_control_states_response() :: %{}
      
  """
  @type update_routing_control_states_response() :: %{}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "fields" => list(validation_exception_field()()),
        "message" => String.t(),
        "reason" => list(any())
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception_field() :: %{
        "message" => String.t(),
        "name" => String.t()
      }
      
  """
  @type validation_exception_field() :: %{String.t() => any()}

  @type get_routing_control_state_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | endpoint_temporarily_unavailable_exception()
          | access_denied_exception()

  @type list_routing_controls_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | endpoint_temporarily_unavailable_exception()
          | access_denied_exception()

  @type update_routing_control_state_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | endpoint_temporarily_unavailable_exception()
          | conflict_exception()
          | access_denied_exception()

  @type update_routing_control_states_errors() ::
          validation_exception()
          | throttling_exception()
          | service_limit_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | endpoint_temporarily_unavailable_exception()
          | conflict_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2019-12-02",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "route53-recovery-cluster",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Route53 Recovery Cluster",
      signature_version: "v4",
      signing_name: "route53-recovery-cluster",
      target_prefix: "ToggleCustomerAPI"
    }
  end

  @doc """
  Get the state for a routing control. A routing control is a simple on/off switch
  that you can use to route traffic to cells. When a routing control state is
  set to ON, traffic flows to a cell. When the state is set to OFF, traffic does
  not flow. Before you can create a routing control, you must first create a
  cluster, and then host the control in a control panel on the cluster. For more
  information, see [ Create routing control
  structures](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.create.html)
  in the Amazon Route 53 Application Recovery Controller Developer Guide. You
  access one of the endpoints for the cluster to get or update the routing
  control state to redirect traffic for your application. *You must specify
  Regional endpoints when you work with API cluster operations to get or update
  routing control states in Route 53 ARC.*
  """
  @spec get_routing_control_state(
          AWS.Client.t(),
          get_routing_control_state_request(),
          Keyword.t()
        ) ::
          {:ok, get_routing_control_state_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_routing_control_state_errors()}
  def get_routing_control_state(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetRoutingControlState", input, options)
  end

  @doc """
  List routing control names and Amazon Resource Names (ARNs), as well as the
  routing control state for each routing control, along with the control panel
  name and control panel ARN for the routing controls. If you specify a control
  panel ARN, this call lists the routing controls in the control panel.
  Otherwise, it lists all the routing controls in the cluster. A routing control
  is a simple on/off switch in Route 53 ARC that you can use to route traffic to
  cells. When a routing control state is set to ON, traffic flows to a cell.
  When the state is set to OFF, traffic does not flow.
  """
  @spec list_routing_controls(AWS.Client.t(), list_routing_controls_request(), Keyword.t()) ::
          {:ok, list_routing_controls_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_routing_controls_errors()}
  def list_routing_controls(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListRoutingControls", input, options)
  end

  @doc """
  Set the state of the routing control to reroute traffic. You can set the value
  to ON or OFF. When the state is ON, traffic flows to a cell. When the state is
  OFF, traffic does not flow. With Route 53 ARC, you can add safety rules for
  routing controls, which are safeguards for routing control state updates that
  help prevent unexpected outcomes, like fail open traffic routing. However,
  there are scenarios when you might want to bypass the routing control
  safeguards that are enforced with safety rules that you've configured. For
  example, you might want to fail over quickly for disaster recovery, and one or
  more safety rules might be unexpectedly preventing you from updating a routing
  control state to reroute traffic. In a "break glass" scenario like this, you
  can override one or more safety rules to change a routing control state and
  fail over your application.
  """
  @spec update_routing_control_state(
          AWS.Client.t(),
          update_routing_control_state_request(),
          Keyword.t()
        ) ::
          {:ok, update_routing_control_state_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_routing_control_state_errors()}
  def update_routing_control_state(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateRoutingControlState", input, options)
  end

  @doc """
  Set multiple routing control states. You can set the value for each state to be
  ON or OFF. When the state is ON, traffic flows to a cell. When it's OFF,
  traffic does not flow. With Route 53 ARC, you can add safety rules for routing
  controls, which are safeguards for routing control state updates that help
  prevent unexpected outcomes, like fail open traffic routing. However, there
  are scenarios when you might want to bypass the routing control safeguards
  that are enforced with safety rules that you've configured. For example, you
  might want to fail over quickly for disaster recovery, and one or more safety
  rules might be unexpectedly preventing you from updating a routing control
  state to reroute traffic. In a "break glass" scenario like this, you can
  override one or more safety rules to change a routing control state and fail
  over your application.
  """
  @spec update_routing_control_states(
          AWS.Client.t(),
          update_routing_control_states_request(),
          Keyword.t()
        ) ::
          {:ok, update_routing_control_states_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_routing_control_states_errors()}
  def update_routing_control_states(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateRoutingControlStates", input, options)
  end
end
