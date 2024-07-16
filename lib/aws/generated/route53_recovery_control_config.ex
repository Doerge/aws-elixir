# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Route53RecoveryControlConfig do
  @moduledoc """
  Recovery Control Configuration API Reference for Amazon Route 53 Application
  Recovery Controller
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      describe_cluster_request() :: %{}

  """
  @type describe_cluster_request() :: %{}

  @typedoc """

  ## Example:

      update_control_panel_response() :: %{
        "ControlPanel" => control_panel()
      }

  """
  @type update_control_panel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_routing_control_response() :: %{
        "RoutingControl" => routing_control()
      }

  """
  @type describe_routing_control_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_safety_rule_response() :: %{
        "AssertionRule" => assertion_rule(),
        "GatingRule" => gating_rule()
      }

  """
  @type describe_safety_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      gating_rule() :: %{
        "ControlPanelArn" => String.t(),
        "GatingControls" => list(String.t()()),
        "Name" => String.t(),
        "Owner" => String.t(),
        "RuleConfig" => rule_config(),
        "SafetyRuleArn" => String.t(),
        "Status" => list(any()),
        "TargetControls" => list(String.t()()),
        "WaitPeriodMs" => integer()
      }

  """
  @type gating_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_cluster_response() :: %{
        "Cluster" => cluster()
      }

  """
  @type describe_cluster_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_control_panel_response() :: %{}

  """
  @type delete_control_panel_response() :: %{}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      create_cluster_response() :: %{
        "Cluster" => cluster()
      }

  """
  @type create_cluster_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_routing_controls_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_routing_controls_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_control_panel_request() :: %{
        required("ControlPanelArn") => String.t(),
        required("ControlPanelName") => String.t()
      }

  """
  @type update_control_panel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_routing_control_request() :: %{}

  """
  @type delete_routing_control_request() :: %{}

  @typedoc """

  ## Example:

      get_resource_policy_response() :: %{
        "Policy" => String.t()
      }

  """
  @type get_resource_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      gating_rule_update() :: %{
        "Name" => String.t(),
        "SafetyRuleArn" => String.t(),
        "WaitPeriodMs" => integer()
      }

  """
  @type gating_rule_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_control_panel_response() :: %{
        "ControlPanel" => control_panel()
      }

  """
  @type describe_control_panel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_control_panels_response() :: %{
        "ControlPanels" => list(control_panel()()),
        "NextToken" => String.t()
      }

  """
  @type list_control_panels_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cluster_endpoint() :: %{
        "Endpoint" => String.t(),
        "Region" => String.t()
      }

  """
  @type cluster_endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_routing_control_request() :: %{
        optional("ClientToken") => String.t(),
        optional("ControlPanelArn") => String.t(),
        required("ClusterArn") => String.t(),
        required("RoutingControlName") => String.t()
      }

  """
  @type create_routing_control_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_routing_control_response() :: %{}

  """
  @type delete_routing_control_response() :: %{}

  @typedoc """

  ## Example:

      update_routing_control_request() :: %{
        required("RoutingControlArn") => String.t(),
        required("RoutingControlName") => String.t()
      }

  """
  @type update_routing_control_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_safety_rule_response() :: %{}

  """
  @type delete_safety_rule_response() :: %{}

  @typedoc """

  ## Example:

      create_cluster_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Tags") => map(),
        required("ClusterName") => String.t()
      }

  """
  @type create_cluster_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assertion_rule_update() :: %{
        "Name" => String.t(),
        "SafetyRuleArn" => String.t(),
        "WaitPeriodMs" => integer()
      }

  """
  @type assertion_rule_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_routing_control_response() :: %{
        "RoutingControl" => routing_control()
      }

  """
  @type create_routing_control_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cluster() :: %{
        "ClusterArn" => String.t(),
        "ClusterEndpoints" => list(cluster_endpoint()()),
        "Name" => String.t(),
        "Owner" => String.t(),
        "Status" => list(any())
      }

  """
  @type cluster() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_control_panel_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Tags") => map(),
        required("ClusterArn") => String.t(),
        required("ControlPanelName") => String.t()
      }

  """
  @type create_control_panel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "Message" => String.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_control_panel_request() :: %{}

  """
  @type describe_control_panel_request() :: %{}

  @typedoc """

  ## Example:

      routing_control() :: %{
        "ControlPanelArn" => String.t(),
        "Name" => String.t(),
        "Owner" => String.t(),
        "RoutingControlArn" => String.t(),
        "Status" => list(any())
      }

  """
  @type routing_control() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_safety_rule_request() :: %{
        optional("AssertionRuleUpdate") => assertion_rule_update(),
        optional("GatingRuleUpdate") => gating_rule_update()
      }

  """
  @type update_safety_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_safety_rule_request() :: %{}

  """
  @type describe_safety_rule_request() :: %{}

  @typedoc """

  ## Example:

      create_safety_rule_request() :: %{
        optional("AssertionRule") => new_assertion_rule(),
        optional("ClientToken") => String.t(),
        optional("GatingRule") => new_gating_rule(),
        optional("Tags") => map()
      }

  """
  @type create_safety_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

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

      list_clusters_response() :: %{
        "Clusters" => list(cluster()()),
        "NextToken" => String.t()
      }

  """
  @type list_clusters_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_resource_policy_request() :: %{}

  """
  @type get_resource_policy_request() :: %{}

  @typedoc """

  ## Example:

      delete_cluster_response() :: %{}

  """
  @type delete_cluster_response() :: %{}

  @typedoc """

  ## Example:

      update_routing_control_response() :: %{
        "RoutingControl" => routing_control()
      }

  """
  @type update_routing_control_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      rule() :: %{
        "ASSERTION" => assertion_rule(),
        "GATING" => gating_rule()
      }

  """
  @type rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      rule_config() :: %{
        "Inverted" => boolean(),
        "Threshold" => integer(),
        "Type" => list(any())
      }

  """
  @type rule_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_safety_rule_request() :: %{}

  """
  @type delete_safety_rule_request() :: %{}

  @typedoc """

  ## Example:

      list_clusters_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_clusters_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_associated_route53_health_checks_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_associated_route53_health_checks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      new_gating_rule() :: %{
        "ControlPanelArn" => String.t(),
        "GatingControls" => list(String.t()()),
        "Name" => String.t(),
        "RuleConfig" => rule_config(),
        "TargetControls" => list(String.t()()),
        "WaitPeriodMs" => integer()
      }

  """
  @type new_gating_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assertion_rule() :: %{
        "AssertedControls" => list(String.t()()),
        "ControlPanelArn" => String.t(),
        "Name" => String.t(),
        "Owner" => String.t(),
        "RuleConfig" => rule_config(),
        "SafetyRuleArn" => String.t(),
        "Status" => list(any()),
        "WaitPeriodMs" => integer()
      }

  """
  @type assertion_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      new_assertion_rule() :: %{
        "AssertedControls" => list(String.t()()),
        "ControlPanelArn" => String.t(),
        "Name" => String.t(),
        "RuleConfig" => rule_config(),
        "WaitPeriodMs" => integer()
      }

  """
  @type new_assertion_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_cluster_request() :: %{}

  """
  @type delete_cluster_request() :: %{}

  @typedoc """

  ## Example:

      control_panel() :: %{
        "ClusterArn" => String.t(),
        "ControlPanelArn" => String.t(),
        "DefaultControlPanel" => boolean(),
        "Name" => String.t(),
        "Owner" => String.t(),
        "RoutingControlCount" => integer(),
        "Status" => list(any())
      }

  """
  @type control_panel() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_control_panel_request() :: %{}

  """
  @type delete_control_panel_request() :: %{}

  @typedoc """

  ## Example:

      update_safety_rule_response() :: %{
        "AssertionRule" => assertion_rule(),
        "GatingRule" => gating_rule()
      }

  """
  @type update_safety_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_associated_route53_health_checks_response() :: %{
        "HealthCheckIds" => list(String.t()()),
        "NextToken" => String.t()
      }

  """
  @type list_associated_route53_health_checks_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_control_panel_response() :: %{
        "ControlPanel" => control_panel()
      }

  """
  @type create_control_panel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Message" => String.t()
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

      list_safety_rules_response() :: %{
        "NextToken" => String.t(),
        "SafetyRules" => list(rule()())
      }

  """
  @type list_safety_rules_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => String.t()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_safety_rules_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_safety_rules_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_control_panels_request() :: %{
        optional("ClusterArn") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_control_panels_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_routing_control_request() :: %{}

  """
  @type describe_routing_control_request() :: %{}

  @typedoc """

  ## Example:

      create_safety_rule_response() :: %{
        "AssertionRule" => assertion_rule(),
        "GatingRule" => gating_rule()
      }

  """
  @type create_safety_rule_response() :: %{String.t() => any()}

  @type create_cluster_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_control_panel_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_routing_control_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_safety_rule_errors() :: validation_exception() | internal_server_exception()

  @type delete_cluster_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_control_panel_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_routing_control_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_safety_rule_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type describe_cluster_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_control_panel_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_routing_control_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_safety_rule_errors() :: validation_exception() | resource_not_found_exception()

  @type get_resource_policy_errors() ::
          internal_server_exception() | resource_not_found_exception()

  @type list_associated_route53_health_checks_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_clusters_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_control_panels_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_routing_controls_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_safety_rules_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type tag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type untag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type update_control_panel_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_routing_control_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_safety_rule_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2020-11-02",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "route53-recovery-control-config",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Route53 Recovery Control Config",
      signature_version: "v4",
      signing_name: "route53-recovery-control-config",
      target_prefix: nil
    }
  end

  @doc """
  Create a new cluster. A cluster is a set of redundant Regional endpoints against
  which you can run API calls to update or get the state of one or more routing
  controls. Each cluster has a name, status, Amazon Resource Name (ARN), and an
  array of the five cluster endpoints (one for each supported Amazon Web
  Services Region) that you can use with API calls to the cluster data plane.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53recoverycontrolconfig%20CreateCluster&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_cluster(AWS.Client.t(), create_cluster_request(), Keyword.t()) ::
          {:ok, create_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_cluster_errors()}
  def create_cluster(%Client{} = client, input, options \\ []) do
    url_path = "/cluster"
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
  Creates a new control panel. A control panel represents a group of routing
  controls that can be changed together in a single transaction. You can use a
  control panel to centrally view the operational status of applications across
  your organization, and trigger multi-app failovers in a single transaction,
  for example, to fail over an Availability Zone or Amazon Web Services Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53recoverycontrolconfig%20CreateControlPanel&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_control_panel(AWS.Client.t(), create_control_panel_request(), Keyword.t()) ::
          {:ok, create_control_panel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_control_panel_errors()}
  def create_control_panel(%Client{} = client, input, options \\ []) do
    url_path = "/controlpanel"
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
  Creates a new routing control. A routing control has one of two states: ON and
  OFF. You can map the routing control state to the state of an Amazon Route 53
  health check, which can be used to control traffic routing.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53recoverycontrolconfig%20CreateRoutingControl&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_routing_control(AWS.Client.t(), create_routing_control_request(), Keyword.t()) ::
          {:ok, create_routing_control_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_routing_control_errors()}
  def create_routing_control(%Client{} = client, input, options \\ []) do
    url_path = "/routingcontrol"
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
  Creates a safety rule in a control panel. Safety rules let you add safeguards
  around changing routing control states, and for enabling and disabling routing
  controls, to help prevent unexpected outcomes. There are two types of safety
  rules: assertion rules and gating rules.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53recoverycontrolconfig%20CreateSafetyRule&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_safety_rule(AWS.Client.t(), create_safety_rule_request(), Keyword.t()) ::
          {:ok, create_safety_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_safety_rule_errors()}
  def create_safety_rule(%Client{} = client, input, options \\ []) do
    url_path = "/safetyrule"
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
  Delete a cluster.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53recoverycontrolconfig%20DeleteCluster&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:cluster_arn` (`t:string`) The Amazon Resource Name (ARN) of the cluster that
    you're deleting.

  ## Optional parameters:
  """
  @spec delete_cluster(AWS.Client.t(), String.t(), delete_cluster_request(), Keyword.t()) ::
          {:ok, delete_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_cluster_errors()}
  def delete_cluster(%Client{} = client, cluster_arn, input, options \\ []) do
    url_path = "/cluster/#{AWS.Util.encode_uri(cluster_arn)}"
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
  Deletes a control panel.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53recoverycontrolconfig%20DeleteControlPanel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:control_panel_arn` (`t:string`) The Amazon Resource Name (ARN) of the
    control panel.

  ## Optional parameters:
  """
  @spec delete_control_panel(
          AWS.Client.t(),
          String.t(),
          delete_control_panel_request(),
          Keyword.t()
        ) ::
          {:ok, delete_control_panel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_control_panel_errors()}
  def delete_control_panel(%Client{} = client, control_panel_arn, input, options \\ []) do
    url_path = "/controlpanel/#{AWS.Util.encode_uri(control_panel_arn)}"
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
  Deletes a routing control.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53recoverycontrolconfig%20DeleteRoutingControl&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:routing_control_arn` (`t:string`) The Amazon Resource Name (ARN) of the
    routing control that you're deleting.

  ## Optional parameters:
  """
  @spec delete_routing_control(
          AWS.Client.t(),
          String.t(),
          delete_routing_control_request(),
          Keyword.t()
        ) ::
          {:ok, delete_routing_control_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_routing_control_errors()}
  def delete_routing_control(%Client{} = client, routing_control_arn, input, options \\ []) do
    url_path = "/routingcontrol/#{AWS.Util.encode_uri(routing_control_arn)}"
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
  Deletes a safety rule.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53recoverycontrolconfig%20DeleteSafetyRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:safety_rule_arn` (`t:string`) The ARN of the safety rule.

  ## Optional parameters:
  """
  @spec delete_safety_rule(AWS.Client.t(), String.t(), delete_safety_rule_request(), Keyword.t()) ::
          {:ok, delete_safety_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_safety_rule_errors()}
  def delete_safety_rule(%Client{} = client, safety_rule_arn, input, options \\ []) do
    url_path = "/safetyrule/#{AWS.Util.encode_uri(safety_rule_arn)}"
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
  Display the details about a cluster. The response includes the cluster name,
  endpoints, status, and Amazon Resource Name (ARN).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53recoverycontrolconfig%20DescribeCluster&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:cluster_arn` (`t:string`) The Amazon Resource Name (ARN) of the cluster.

  ## Optional parameters:
  """
  @spec describe_cluster(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_cluster_errors()}
  def describe_cluster(%Client{} = client, cluster_arn, options \\ []) do
    url_path = "/cluster/#{AWS.Util.encode_uri(cluster_arn)}"

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
  Displays details about a control panel.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53recoverycontrolconfig%20DescribeControlPanel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:control_panel_arn` (`t:string`) The Amazon Resource Name (ARN) of the
    control panel.

  ## Optional parameters:
  """
  @spec describe_control_panel(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_control_panel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_control_panel_errors()}
  def describe_control_panel(%Client{} = client, control_panel_arn, options \\ []) do
    url_path = "/controlpanel/#{AWS.Util.encode_uri(control_panel_arn)}"

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
  Displays details about a routing control. A routing control has one of two
  states: ON and OFF. You can map the routing control state to the state of an
  Amazon Route 53 health check, which can be used to control routing.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53recoverycontrolconfig%20DescribeRoutingControl&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:routing_control_arn` (`t:string`) The Amazon Resource Name (ARN) of the
    routing control.

  ## Optional parameters:
  """
  @spec describe_routing_control(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_routing_control_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_routing_control_errors()}
  def describe_routing_control(%Client{} = client, routing_control_arn, options \\ []) do
    url_path = "/routingcontrol/#{AWS.Util.encode_uri(routing_control_arn)}"

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
  Returns information about a safety rule.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53recoverycontrolconfig%20DescribeSafetyRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:safety_rule_arn` (`t:string`) The ARN of the safety rule.

  ## Optional parameters:
  """
  @spec describe_safety_rule(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_safety_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_safety_rule_errors()}
  def describe_safety_rule(%Client{} = client, safety_rule_arn, options \\ []) do
    url_path = "/safetyrule/#{AWS.Util.encode_uri(safety_rule_arn)}"

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
  Get information about the resource policy for a cluster.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53recoverycontrolconfig%20GetResourcePolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the resource.

  ## Optional parameters:
  """
  @spec get_resource_policy(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_resource_policy_errors()}
  def get_resource_policy(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/resourcePolicy/#{AWS.Util.encode_uri(resource_arn)}"

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
  Returns an array of all Amazon Route 53 health checks associated with a specific
  routing control.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53recoverycontrolconfig%20ListAssociatedRoute53HealthChecks&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:routing_control_arn` (`t:string`) The Amazon Resource Name (ARN) of the
    routing control.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The number of objects that you want to return
    with this call.
  * `:next_token` (`t:string`) The token that identifies which batch of results
    you want to see.
  """
  @spec list_associated_route53_health_checks(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_associated_route53_health_checks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_associated_route53_health_checks_errors()}
  def list_associated_route53_health_checks(
        %Client{} = client,
        routing_control_arn,
        options \\ []
      ) do
    url_path =
      "/routingcontrol/#{AWS.Util.encode_uri(routing_control_arn)}/associatedRoute53HealthChecks"

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

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns an array of all the clusters in an account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53recoverycontrolconfig%20ListClusters&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The number of objects that you want to return
    with this call.
  * `:next_token` (`t:string`) The token that identifies which batch of results
    you want to see.
  """
  @spec list_clusters(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_clusters_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_clusters_errors()}
  def list_clusters(%Client{} = client, options \\ []) do
    url_path = "/cluster"

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

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns an array of control panels in an account or in a cluster.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53recoverycontrolconfig%20ListControlPanels&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:cluster_arn` (`t:string`) The Amazon Resource Name (ARN) of a cluster.
  * `:max_results` (`t:integer`) The number of objects that you want to return
    with this call.
  * `:next_token` (`t:string`) The token that identifies which batch of results
    you want to see.
  """
  @spec list_control_panels(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_control_panels_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_control_panels_errors()}
  def list_control_panels(%Client{} = client, options \\ []) do
    url_path = "/controlpanels"

    # Validate optional parameters
    optional_params = [cluster_arn: nil, max_results: nil, next_token: nil]

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
      if opt_val = Keyword.get(options, :max_results) do
        [{"MaxResults", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :cluster_arn) do
        [{"ClusterArn", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:cluster_arn, :max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns an array of routing controls for a control panel. A routing control is
  an Amazon Route 53 Application Recovery Controller construct that has one of
  two states: ON and OFF. You can map the routing control state to the state of
  an Amazon Route 53 health check, which can be used to control routing.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53recoverycontrolconfig%20ListRoutingControls&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:control_panel_arn` (`t:string`) The Amazon Resource Name (ARN) of the
    control panel.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The number of objects that you want to return
    with this call.
  * `:next_token` (`t:string`) The token that identifies which batch of results
    you want to see.
  """
  @spec list_routing_controls(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_routing_controls_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_routing_controls_errors()}
  def list_routing_controls(%Client{} = client, control_panel_arn, options \\ []) do
    url_path = "/controlpanel/#{AWS.Util.encode_uri(control_panel_arn)}/routingcontrols"

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

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the safety rules (the assertion rules and gating rules) that you've defined
  for the routing controls in a control panel.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53recoverycontrolconfig%20ListSafetyRules&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:control_panel_arn` (`t:string`) The Amazon Resource Name (ARN) of the
    control panel.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The number of objects that you want to return
    with this call.
  * `:next_token` (`t:string`) The token that identifies which batch of results
    you want to see.
  """
  @spec list_safety_rules(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_safety_rules_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_safety_rules_errors()}
  def list_safety_rules(%Client{} = client, control_panel_arn, options \\ []) do
    url_path = "/controlpanel/#{AWS.Util.encode_uri(control_panel_arn)}/safetyrules"

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

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags for a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53recoverycontrolconfig%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) for the resource
    that's tagged.

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
  Adds a tag to a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53recoverycontrolconfig%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) for the resource
    that's tagged.

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
  Removes a tag from a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53recoverycontrolconfig%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) for the resource
    that's tagged.
  * `:tag_keys` (`t:list[com.amazonaws.route53recoverycontrolconfig#__string]`)
    Keys for the tags to be removed.

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
        {"TagKeys", "TagKeys"}
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
  Updates a control panel. The only update you can make to a control panel is to
  change the name of the control panel.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53recoverycontrolconfig%20UpdateControlPanel&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec update_control_panel(AWS.Client.t(), update_control_panel_request(), Keyword.t()) ::
          {:ok, update_control_panel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_control_panel_errors()}
  def update_control_panel(%Client{} = client, input, options \\ []) do
    url_path = "/controlpanel"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a routing control. You can only update the name of the routing control.
  To get or update the routing control state, see the Recovery Cluster (data
  plane) API actions for Amazon Route 53 Application Recovery Controller.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53recoverycontrolconfig%20UpdateRoutingControl&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec update_routing_control(AWS.Client.t(), update_routing_control_request(), Keyword.t()) ::
          {:ok, update_routing_control_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_routing_control_errors()}
  def update_routing_control(%Client{} = client, input, options \\ []) do
    url_path = "/routingcontrol"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Update a safety rule (an assertion rule or gating rule). You can only update the
  name and the waiting period for a safety rule. To make other updates, delete
  the safety rule and create a new one.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53recoverycontrolconfig%20UpdateSafetyRule&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec update_safety_rule(AWS.Client.t(), update_safety_rule_request(), Keyword.t()) ::
          {:ok, update_safety_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_safety_rule_errors()}
  def update_safety_rule(%Client{} = client, input, options \\ []) do
    url_path = "/safetyrule"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
