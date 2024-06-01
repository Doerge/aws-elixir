# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.GameLift do
  @moduledoc """
  Amazon GameLift provides solutions for hosting session-based multiplayer game
  servers in the cloud, including tools for deploying, operating, and scaling
  game servers. Built on Amazon Web Services global computing infrastructure,
  GameLift helps you deliver high-performance, high-reliability, low-cost game
  servers while dynamically scaling your resource usage to meet player demand.
  **About Amazon GameLift solutions**
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      update_game_server_input() :: %{
        optional("GameServerData") => String.t(),
        optional("HealthCheck") => list(any()),
        optional("UtilizationStatus") => list(any()),
        required("GameServerGroupName") => String.t(),
        required("GameServerId") => String.t()
      }
      
  """
  @type update_game_server_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_fleet_status_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_fleet_status_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_game_server_group_input() :: %{
        optional("BalancingStrategy") => list(any()),
        optional("GameServerProtectionPolicy") => list(any()),
        optional("InstanceDefinitions") => list(instance_definition()()),
        optional("RoleArn") => String.t(),
        required("GameServerGroupName") => String.t()
      }
      
  """
  @type update_game_server_group_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_compute_input() :: %{
        optional("Limit") => integer(),
        optional("Location") => String.t(),
        optional("NextToken") => String.t(),
        required("FleetId") => String.t()
      }
      
  """
  @type list_compute_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      fleet_utilization() :: %{
        "ActiveGameSessionCount" => integer(),
        "ActiveServerProcessCount" => integer(),
        "CurrentPlayerSessionCount" => integer(),
        "FleetArn" => String.t(),
        "FleetId" => String.t(),
        "Location" => String.t(),
        "MaximumPlayerSessionCount" => integer()
      }
      
  """
  @type fleet_utilization() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_fleet_port_settings_output() :: %{
        "FleetArn" => String.t(),
        "FleetId" => String.t()
      }
      
  """
  @type update_fleet_port_settings_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_compute_output() :: %{}
      
  """
  @type deregister_compute_output() :: %{}

  @typedoc """

  ## Example:
      
      game_session_connection_info() :: %{
        "DnsName" => String.t(),
        "GameSessionArn" => String.t(),
        "IpAddress" => String.t(),
        "MatchedPlayerSessions" => list(matched_player_session()()),
        "Port" => integer()
      }
      
  """
  @type game_session_connection_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_matchmaking_input() :: %{
        required("TicketIds") => list(String.t()())
      }
      
  """
  @type describe_matchmaking_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_access() :: %{
        "Credentials" => instance_credentials(),
        "FleetId" => String.t(),
        "InstanceId" => String.t(),
        "IpAddress" => String.t(),
        "OperatingSystem" => list(any())
      }
      
  """
  @type instance_access() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceARN") => String.t(),
        required("Tags") => list(tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_locations_output() :: %{
        "Locations" => list(location_model()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_locations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      player_latency() :: %{
        "LatencyInMilliseconds" => float(),
        "PlayerId" => String.t(),
        "RegionIdentifier" => String.t()
      }
      
  """
  @type player_latency() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tagging_failed_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type tagging_failed_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      game_server_instance() :: %{
        "GameServerGroupArn" => String.t(),
        "GameServerGroupName" => String.t(),
        "InstanceId" => String.t(),
        "InstanceStatus" => list(any())
      }
      
  """
  @type game_server_instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_compute_output() :: %{
        "ComputeList" => list(compute()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_compute_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      priority_configuration() :: %{
        "LocationOrder" => list(String.t()()),
        "PriorityOrder" => list(list(any())())
      }
      
  """
  @type priority_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unauthorized_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type unauthorized_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_port_settings_input() :: %{
        optional("Location") => String.t(),
        required("FleetId") => String.t()
      }
      
  """
  @type describe_fleet_port_settings_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_location_input() :: %{
        optional("Tags") => list(tag()()),
        required("LocationName") => String.t()
      }
      
  """
  @type create_location_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_script_input() :: %{
        required("ScriptId") => String.t()
      }
      
  """
  @type delete_script_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_scaling_policy_output() :: %{
        "Name" => String.t()
      }
      
  """
  @type put_scaling_policy_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resolve_alias_input() :: %{
        required("AliasId") => String.t()
      }
      
  """
  @type resolve_alias_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      matched_player_session() :: %{
        "PlayerId" => String.t(),
        "PlayerSessionId" => String.t()
      }
      
  """
  @type matched_player_session() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_game_server_group_output() :: %{
        "GameServerGroup" => game_server_group()
      }
      
  """
  @type create_game_server_group_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_script_output() :: %{
        "Script" => script()
      }
      
  """
  @type describe_script_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_game_server_group_input() :: %{
        required("GameServerGroupName") => String.t()
      }
      
  """
  @type describe_game_server_group_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_location_capacity_output() :: %{
        "FleetCapacity" => fleet_capacity()
      }
      
  """
  @type describe_fleet_location_capacity_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_fleets_output() :: %{
        "FleetIds" => list(String.t()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_fleets_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_credentials() :: %{
        "Secret" => String.t(),
        "UserName" => String.t()
      }
      
  """
  @type instance_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_location_attributes_output() :: %{
        "FleetArn" => String.t(),
        "FleetId" => String.t(),
        "LocationAttributes" => list(location_attributes()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_fleet_location_attributes_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      build() :: %{
        "BuildArn" => String.t(),
        "BuildId" => String.t(),
        "CreationTime" => non_neg_integer(),
        "Name" => String.t(),
        "OperatingSystem" => list(any()),
        "ServerSdkVersion" => String.t(),
        "SizeOnDisk" => float(),
        "Status" => list(any()),
        "Version" => String.t()
      }
      
  """
  @type build() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_definition() :: %{
        "InstanceType" => list(any()),
        "WeightedCapacity" => String.t()
      }
      
  """
  @type instance_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_matchmaking_rule_set_output() :: %{}
      
  """
  @type delete_matchmaking_rule_set_output() :: %{}

  @typedoc """

  ## Example:
      
      start_matchmaking_output() :: %{
        "MatchmakingTicket" => matchmaking_ticket()
      }
      
  """
  @type start_matchmaking_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_compute_output() :: %{
        "Compute" => compute()
      }
      
  """
  @type describe_compute_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      game_server_group() :: %{
        "AutoScalingGroupArn" => String.t(),
        "BalancingStrategy" => list(any()),
        "CreationTime" => non_neg_integer(),
        "GameServerGroupArn" => String.t(),
        "GameServerGroupName" => String.t(),
        "GameServerProtectionPolicy" => list(any()),
        "InstanceDefinitions" => list(instance_definition()()),
        "LastUpdatedTime" => non_neg_integer(),
        "RoleArn" => String.t(),
        "Status" => list(any()),
        "StatusReason" => String.t(),
        "SuspendedActions" => list(list(any())())
      }
      
  """
  @type game_server_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resume_game_server_group_input() :: %{
        required("GameServerGroupName") => String.t(),
        required("ResumeActions") => list(list(any())())
      }
      
  """
  @type resume_game_server_group_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_location_attributes_input() :: %{
        optional("Limit") => integer(),
        optional("Locations") => list(String.t()()),
        optional("NextToken") => String.t(),
        required("FleetId") => String.t()
      }
      
  """
  @type describe_fleet_location_attributes_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_fleet_locations_output() :: %{
        "FleetArn" => String.t(),
        "FleetId" => String.t(),
        "LocationStates" => list(location_state()())
      }
      
  """
  @type delete_fleet_locations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_location_capacity_input() :: %{
        required("FleetId") => String.t(),
        required("Location") => String.t()
      }
      
  """
  @type describe_fleet_location_capacity_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_game_session_queues_output() :: %{
        "GameSessionQueues" => list(game_session_queue()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_game_session_queues_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_player_sessions_output() :: %{
        "PlayerSessions" => list(player_session()())
      }
      
  """
  @type create_player_sessions_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_matchmaking_configuration_input() :: %{
        required("Name") => String.t()
      }
      
  """
  @type delete_matchmaking_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_build_output() :: %{
        "Build" => build()
      }
      
  """
  @type update_build_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validate_matchmaking_rule_set_output() :: %{
        "Valid" => boolean()
      }
      
  """
  @type validate_matchmaking_rule_set_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compute() :: %{
        "ComputeArn" => String.t(),
        "ComputeName" => String.t(),
        "ComputeStatus" => list(any()),
        "ContainerAttributes" => container_attributes(),
        "CreationTime" => non_neg_integer(),
        "DnsName" => String.t(),
        "FleetArn" => String.t(),
        "FleetId" => String.t(),
        "GameLiftAgentEndpoint" => String.t(),
        "GameLiftServiceSdkEndpoint" => String.t(),
        "InstanceId" => String.t(),
        "IpAddress" => String.t(),
        "Location" => String.t(),
        "OperatingSystem" => list(any()),
        "Type" => list(any())
      }
      
  """
  @type compute() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_game_session_queue_output() :: %{}
      
  """
  @type delete_game_session_queue_output() :: %{}

  @typedoc """

  ## Example:
      
      create_vpc_peering_connection_input() :: %{
        required("FleetId") => String.t(),
        required("PeerVpcAwsAccountId") => String.t(),
        required("PeerVpcId") => String.t()
      }
      
  """
  @type create_vpc_peering_connection_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_location_utilization_output() :: %{
        "FleetUtilization" => fleet_utilization()
      }
      
  """
  @type describe_fleet_location_utilization_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      matchmaking_configuration() :: %{
        "AcceptanceRequired" => boolean(),
        "AcceptanceTimeoutSeconds" => integer(),
        "AdditionalPlayerCount" => integer(),
        "BackfillMode" => list(any()),
        "ConfigurationArn" => String.t(),
        "CreationTime" => non_neg_integer(),
        "CustomEventData" => String.t(),
        "Description" => String.t(),
        "FlexMatchMode" => list(any()),
        "GameProperties" => list(game_property()()),
        "GameSessionData" => String.t(),
        "GameSessionQueueArns" => list(String.t()()),
        "Name" => String.t(),
        "NotificationTarget" => String.t(),
        "RequestTimeoutSeconds" => integer(),
        "RuleSetArn" => String.t(),
        "RuleSetName" => String.t()
      }
      
  """
  @type matchmaking_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_vpc_peering_authorizations_output() :: %{
        "VpcPeeringAuthorizations" => list(vpc_peering_authorization()())
      }
      
  """
  @type describe_vpc_peering_authorizations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      suspend_game_server_group_input() :: %{
        required("GameServerGroupName") => String.t(),
        required("SuspendActions") => list(list(any())())
      }
      
  """
  @type suspend_game_server_group_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      game_server_group_auto_scaling_policy() :: %{
        "EstimatedInstanceWarmup" => integer(),
        "TargetTrackingConfiguration" => target_tracking_configuration()
      }
      
  """
  @type game_server_group_auto_scaling_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      runtime_configuration() :: %{
        "GameSessionActivationTimeoutSeconds" => integer(),
        "MaxConcurrentGameSessionActivations" => integer(),
        "ServerProcesses" => list(server_process()())
      }
      
  """
  @type runtime_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_container_group_definitions_output() :: %{
        "ContainerGroupDefinitions" => list(container_group_definition()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_container_group_definitions_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      player_session() :: %{
        "CreationTime" => non_neg_integer(),
        "DnsName" => String.t(),
        "FleetArn" => String.t(),
        "FleetId" => String.t(),
        "GameSessionId" => String.t(),
        "IpAddress" => String.t(),
        "PlayerData" => String.t(),
        "PlayerId" => String.t(),
        "PlayerSessionId" => String.t(),
        "Port" => integer(),
        "Status" => list(any()),
        "TerminationTime" => non_neg_integer()
      }
      
  """
  @type player_session() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_fleet_input() :: %{
        required("FleetId") => String.t()
      }
      
  """
  @type delete_fleet_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      player() :: %{
        "LatencyInMs" => map(),
        "PlayerAttributes" => map(),
        "PlayerId" => String.t(),
        "Team" => String.t()
      }
      
  """
  @type player() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_fleet_attributes_input() :: %{
        optional("AnywhereConfiguration") => anywhere_configuration(),
        optional("Description") => String.t(),
        optional("MetricGroups") => list(String.t()()),
        optional("Name") => String.t(),
        optional("NewGameSessionProtectionPolicy") => list(any()),
        optional("ResourceCreationLimitPolicy") => resource_creation_limit_policy(),
        required("FleetId") => String.t()
      }
      
  """
  @type update_fleet_attributes_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_runtime_configuration_output() :: %{
        "RuntimeConfiguration" => runtime_configuration()
      }
      
  """
  @type describe_runtime_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_aliases_output() :: %{
        "Aliases" => list(alias()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_aliases_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      out_of_capacity_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type out_of_capacity_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      container_group_definition_property() :: %{
        "ContainerGroupDefinitionName" => String.t(),
        "SchedulingStrategy" => list(any())
      }
      
  """
  @type container_group_definition_property() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scaling_policy() :: %{
        "ComparisonOperator" => list(any()),
        "EvaluationPeriods" => integer(),
        "FleetArn" => String.t(),
        "FleetId" => String.t(),
        "Location" => String.t(),
        "MetricName" => list(any()),
        "Name" => String.t(),
        "PolicyType" => list(any()),
        "ScalingAdjustment" => integer(),
        "ScalingAdjustmentType" => list(any()),
        "Status" => list(any()),
        "TargetConfiguration" => target_configuration(),
        "Threshold" => float(),
        "UpdateStatus" => list(any())
      }
      
  """
  @type scaling_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_vpc_peering_connections_output() :: %{
        "VpcPeeringConnections" => list(vpc_peering_connection()())
      }
      
  """
  @type describe_vpc_peering_connections_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_builds_input() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        optional("Status") => list(any())
      }
      
  """
  @type list_builds_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_game_session_log_url_output() :: %{
        "PreSignedUrl" => String.t()
      }
      
  """
  @type get_game_session_log_url_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_container_group_definition_output() :: %{
        "ContainerGroupDefinition" => container_group_definition()
      }
      
  """
  @type create_container_group_definition_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      container_definition_input() :: %{
        "Command" => list(String.t()()),
        "ContainerName" => String.t(),
        "Cpu" => integer(),
        "DependsOn" => list(container_dependency()()),
        "EntryPoint" => list(String.t()()),
        "Environment" => list(container_environment()()),
        "Essential" => boolean(),
        "HealthCheck" => container_health_check(),
        "ImageUri" => String.t(),
        "MemoryLimits" => container_memory_limits(),
        "PortConfiguration" => container_port_configuration(),
        "WorkingDirectory" => String.t()
      }
      
  """
  @type container_definition_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_matchmaking_configuration_output() :: %{
        "Configuration" => matchmaking_configuration()
      }
      
  """
  @type update_matchmaking_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_game_server_group_output() :: %{
        "GameServerGroup" => game_server_group()
      }
      
  """
  @type describe_game_server_group_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_ec2_instance_limits_input() :: %{
        optional("EC2InstanceType") => list(any()),
        optional("Location") => String.t()
      }
      
  """
  @type describe_ec2_instance_limits_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_port_settings_output() :: %{
        "FleetArn" => String.t(),
        "FleetId" => String.t(),
        "InboundPermissions" => list(ip_permission()()),
        "Location" => String.t(),
        "UpdateStatus" => list(any())
      }
      
  """
  @type describe_fleet_port_settings_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_vpc_peering_connections_input() :: %{
        optional("FleetId") => String.t()
      }
      
  """
  @type describe_vpc_peering_connections_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      placed_player_session() :: %{
        "PlayerId" => String.t(),
        "PlayerSessionId" => String.t()
      }
      
  """
  @type placed_player_session() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_game_server_input() :: %{
        required("GameServerGroupName") => String.t(),
        required("GameServerId") => String.t()
      }
      
  """
  @type deregister_game_server_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_service_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_service_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      desired_player_session() :: %{
        "PlayerData" => String.t(),
        "PlayerId" => String.t()
      }
      
  """
  @type desired_player_session() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_game_session_placement_output() :: %{
        "GameSessionPlacement" => game_session_placement()
      }
      
  """
  @type start_game_session_placement_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      fleet_capacity_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type fleet_capacity_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_matchmaking_rule_set_input() :: %{
        optional("Tags") => list(tag()()),
        required("Name") => String.t(),
        required("RuleSetBody") => String.t()
      }
      
  """
  @type create_matchmaking_rule_set_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceARN") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_game_server_input() :: %{
        required("GameServerGroupName") => String.t(),
        required("GameServerId") => String.t()
      }
      
  """
  @type describe_game_server_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      fleet_capacity() :: %{
        "FleetArn" => String.t(),
        "FleetId" => String.t(),
        "InstanceCounts" => ec2_instance_counts(),
        "InstanceType" => list(any()),
        "Location" => String.t(),
        "ReplicaContainerGroupCounts" => replica_container_group_counts()
      }
      
  """
  @type fleet_capacity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_scaling_policy_input() :: %{
        optional("ComparisonOperator") => list(any()),
        optional("EvaluationPeriods") => integer(),
        optional("PolicyType") => list(any()),
        optional("ScalingAdjustment") => integer(),
        optional("ScalingAdjustmentType") => list(any()),
        optional("TargetConfiguration") => target_configuration(),
        optional("Threshold") => float(),
        required("FleetId") => String.t(),
        required("MetricName") => list(any()),
        required("Name") => String.t()
      }
      
  """
  @type put_scaling_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_scripts_input() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_scripts_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_fleet_port_settings_input() :: %{
        optional("InboundPermissionAuthorizations") => list(ip_permission()()),
        optional("InboundPermissionRevocations") => list(ip_permission()()),
        required("FleetId") => String.t()
      }
      
  """
  @type update_fleet_port_settings_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      accept_match_input() :: %{
        required("AcceptanceType") => list(any()),
        required("PlayerIds") => list(String.t()()),
        required("TicketId") => String.t()
      }
      
  """
  @type accept_match_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_game_session_placement_input() :: %{
        required("PlacementId") => String.t()
      }
      
  """
  @type stop_game_session_placement_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      location_configuration() :: %{
        "Location" => String.t()
      }
      
  """
  @type location_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      server_process() :: %{
        "ConcurrentExecutions" => integer(),
        "LaunchPath" => String.t(),
        "Parameters" => String.t()
      }
      
  """
  @type server_process() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      location_state() :: %{
        "Location" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type location_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_game_session_output() :: %{
        "GameSession" => game_session()
      }
      
  """
  @type create_game_session_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resolve_alias_output() :: %{
        "FleetArn" => String.t(),
        "FleetId" => String.t()
      }
      
  """
  @type resolve_alias_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_location_utilization_input() :: %{
        required("FleetId") => String.t(),
        required("Location") => String.t()
      }
      
  """
  @type describe_fleet_location_utilization_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      request_upload_credentials_output() :: %{
        "StorageLocation" => s3_location(),
        "UploadCredentials" => aws_credentials()
      }
      
  """
  @type request_upload_credentials_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_matchmaking_configurations_input() :: %{
        optional("Limit") => integer(),
        optional("Names") => list(String.t()()),
        optional("NextToken") => String.t(),
        optional("RuleSetName") => String.t()
      }
      
  """
  @type describe_matchmaking_configurations_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      container_port_mapping() :: %{
        "ConnectionPort" => integer(),
        "ContainerPort" => integer(),
        "Protocol" => list(any())
      }
      
  """
  @type container_port_mapping() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_game_server_output() :: %{
        "GameServer" => game_server()
      }
      
  """
  @type register_game_server_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_alias_input() :: %{
        required("AliasId") => String.t()
      }
      
  """
  @type delete_alias_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_container_group_definition_input() :: %{
        required("Name") => String.t()
      }
      
  """
  @type delete_container_group_definition_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_game_server_group_output() :: %{
        "GameServerGroup" => game_server_group()
      }
      
  """
  @type update_game_server_group_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      request_upload_credentials_input() :: %{
        required("BuildId") => String.t()
      }
      
  """
  @type request_upload_credentials_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      game_session_queue() :: %{
        "CustomEventData" => String.t(),
        "Destinations" => list(game_session_queue_destination()()),
        "FilterConfiguration" => filter_configuration(),
        "GameSessionQueueArn" => String.t(),
        "Name" => String.t(),
        "NotificationTarget" => String.t(),
        "PlayerLatencyPolicies" => list(player_latency_policy()()),
        "PriorityConfiguration" => priority_configuration(),
        "TimeoutInSeconds" => integer()
      }
      
  """
  @type game_session_queue() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      accept_match_output() :: %{}
      
  """
  @type accept_match_output() :: %{}

  @typedoc """

  ## Example:
      
      location_attributes() :: %{
        "LocationState" => location_state(),
        "StoppedActions" => list(list(any())()),
        "UpdateStatus" => list(any())
      }
      
  """
  @type location_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      claim_game_server_input() :: %{
        optional("FilterOption") => claim_filter_option(),
        optional("GameServerData") => String.t(),
        optional("GameServerId") => String.t(),
        required("GameServerGroupName") => String.t()
      }
      
  """
  @type claim_game_server_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_game_server_groups_output() :: %{
        "GameServerGroups" => list(game_server_group()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_game_server_groups_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_vpc_peering_authorization_input() :: %{
        required("GameLiftAwsAccountId") => String.t(),
        required("PeerVpcId") => String.t()
      }
      
  """
  @type delete_vpc_peering_authorization_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_vpc_peering_connection_input() :: %{
        required("FleetId") => String.t(),
        required("VpcPeeringConnectionId") => String.t()
      }
      
  """
  @type delete_vpc_peering_connection_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_utilization_output() :: %{
        "FleetUtilization" => list(fleet_utilization()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_fleet_utilization_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_script_input() :: %{
        required("ScriptId") => String.t()
      }
      
  """
  @type describe_script_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_game_sessions_input() :: %{
        optional("AliasId") => String.t(),
        optional("FilterExpression") => String.t(),
        optional("FleetId") => String.t(),
        optional("Limit") => integer(),
        optional("Location") => String.t(),
        optional("NextToken") => String.t(),
        optional("SortExpression") => String.t()
      }
      
  """
  @type search_game_sessions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_script_output() :: %{
        "Script" => script()
      }
      
  """
  @type update_script_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      container_group_definition() :: %{
        "ContainerDefinitions" => list(container_definition()()),
        "ContainerGroupDefinitionArn" => String.t(),
        "CreationTime" => non_neg_integer(),
        "Name" => String.t(),
        "OperatingSystem" => list(any()),
        "SchedulingStrategy" => list(any()),
        "Status" => list(any()),
        "StatusReason" => String.t(),
        "TotalCpuLimit" => integer(),
        "TotalMemoryLimit" => integer()
      }
      
  """
  @type container_group_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_game_session_queue_input() :: %{
        optional("CustomEventData") => String.t(),
        optional("Destinations") => list(game_session_queue_destination()()),
        optional("FilterConfiguration") => filter_configuration(),
        optional("NotificationTarget") => String.t(),
        optional("PlayerLatencyPolicies") => list(player_latency_policy()()),
        optional("PriorityConfiguration") => priority_configuration(),
        optional("TimeoutInSeconds") => integer(),
        required("Name") => String.t()
      }
      
  """
  @type update_game_session_queue_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      container_definition() :: %{
        "Command" => list(String.t()()),
        "ContainerName" => String.t(),
        "Cpu" => integer(),
        "DependsOn" => list(container_dependency()()),
        "EntryPoint" => list(String.t()()),
        "Environment" => list(container_environment()()),
        "Essential" => boolean(),
        "HealthCheck" => container_health_check(),
        "ImageUri" => String.t(),
        "MemoryLimits" => container_memory_limits(),
        "PortConfiguration" => container_port_configuration(),
        "ResolvedImageDigest" => String.t(),
        "WorkingDirectory" => String.t()
      }
      
  """
  @type container_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_location_input() :: %{
        required("LocationName") => String.t()
      }
      
  """
  @type delete_location_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_capacity_input() :: %{
        optional("FleetIds") => list(String.t()()),
        optional("Limit") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_fleet_capacity_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_compute_access_output() :: %{
        "ComputeArn" => String.t(),
        "ComputeName" => String.t(),
        "Credentials" => aws_credentials(),
        "FleetArn" => String.t(),
        "FleetId" => String.t(),
        "Target" => String.t()
      }
      
  """
  @type get_compute_access_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_matchmaking_rule_sets_input() :: %{
        optional("Limit") => integer(),
        optional("Names") => list(String.t()()),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_matchmaking_rule_sets_input() :: %{String.t() => any()}

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
      
      describe_game_sessions_output() :: %{
        "GameSessions" => list(game_session()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_game_sessions_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_events_input() :: %{
        optional("EndTime") => non_neg_integer(),
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        optional("StartTime") => non_neg_integer(),
        required("FleetId") => String.t()
      }
      
  """
  @type describe_fleet_events_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_request_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_matchmaking_output() :: %{
        "TicketList" => list(matchmaking_ticket()())
      }
      
  """
  @type describe_matchmaking_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_alias_input() :: %{
        required("AliasId") => String.t()
      }
      
  """
  @type describe_alias_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_runtime_configuration_input() :: %{
        required("FleetId") => String.t(),
        required("RuntimeConfiguration") => runtime_configuration()
      }
      
  """
  @type update_runtime_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_alias_output() :: %{
        "Alias" => alias()
      }
      
  """
  @type create_alias_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_game_session_queue_output() :: %{
        "GameSessionQueue" => game_session_queue()
      }
      
  """
  @type update_game_session_queue_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_fleet_capacity_input() :: %{
        optional("DesiredInstances") => integer(),
        optional("Location") => String.t(),
        optional("MaxSize") => integer(),
        optional("MinSize") => integer(),
        required("FleetId") => String.t()
      }
      
  """
  @type update_fleet_capacity_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      idempotent_parameter_mismatch_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type idempotent_parameter_mismatch_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      container_health_check() :: %{
        "Command" => list(String.t()()),
        "Interval" => integer(),
        "Retries" => integer(),
        "StartPeriod" => integer(),
        "Timeout" => integer()
      }
      
  """
  @type container_health_check() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_player_session_input() :: %{
        optional("PlayerData") => String.t(),
        required("GameSessionId") => String.t(),
        required("PlayerId") => String.t()
      }
      
  """
  @type create_player_session_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ec2_instance_counts() :: %{
        "ACTIVE" => integer(),
        "DESIRED" => integer(),
        "IDLE" => integer(),
        "MAXIMUM" => integer(),
        "MINIMUM" => integer(),
        "PENDING" => integer(),
        "TERMINATING" => integer()
      }
      
  """
  @type ec2_instance_counts() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_alias_output() :: %{
        "Alias" => alias()
      }
      
  """
  @type update_alias_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_fleet_locations_input() :: %{
        required("FleetId") => String.t(),
        required("Locations") => list(String.t()())
      }
      
  """
  @type delete_fleet_locations_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_build_input() :: %{
        required("BuildId") => String.t()
      }
      
  """
  @type describe_build_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      player_latency_policy() :: %{
        "MaximumIndividualPlayerLatencyMilliseconds" => integer(),
        "PolicyDurationSeconds" => integer()
      }
      
  """
  @type player_latency_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_build_input() :: %{
        optional("Name") => String.t(),
        optional("Version") => String.t(),
        required("BuildId") => String.t()
      }
      
  """
  @type update_build_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_compute_output() :: %{
        "Compute" => compute()
      }
      
  """
  @type register_compute_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ip_permission() :: %{
        "FromPort" => integer(),
        "IpRange" => String.t(),
        "Protocol" => list(any()),
        "ToPort" => integer()
      }
      
  """
  @type ip_permission() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_fleet_locations_input() :: %{
        required("FleetId") => String.t(),
        required("Locations") => list(location_configuration()())
      }
      
  """
  @type create_fleet_locations_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_script_input() :: %{
        optional("Name") => String.t(),
        optional("StorageLocation") => s3_location(),
        optional("Version") => String.t(),
        optional("ZipFile") => binary(),
        required("ScriptId") => String.t()
      }
      
  """
  @type update_script_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_vpc_peering_connection_output() :: %{}
      
  """
  @type delete_vpc_peering_connection_output() :: %{}

  @typedoc """

  ## Example:
      
      describe_game_sessions_input() :: %{
        optional("AliasId") => String.t(),
        optional("FleetId") => String.t(),
        optional("GameSessionId") => String.t(),
        optional("Limit") => integer(),
        optional("Location") => String.t(),
        optional("NextToken") => String.t(),
        optional("StatusFilter") => String.t()
      }
      
  """
  @type describe_game_sessions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      filter_configuration() :: %{
        "AllowedLocations" => list(String.t()())
      }
      
  """
  @type filter_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_matchmaking_rule_set_output() :: %{
        "RuleSet" => matchmaking_rule_set()
      }
      
  """
  @type create_matchmaking_rule_set_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_matchmaking_configuration_input() :: %{
        optional("AcceptanceTimeoutSeconds") => integer(),
        optional("AdditionalPlayerCount") => integer(),
        optional("BackfillMode") => list(any()),
        optional("CustomEventData") => String.t(),
        optional("Description") => String.t(),
        optional("FlexMatchMode") => list(any()),
        optional("GameProperties") => list(game_property()()),
        optional("GameSessionData") => String.t(),
        optional("GameSessionQueueArns") => list(String.t()()),
        optional("NotificationTarget") => String.t(),
        optional("Tags") => list(tag()()),
        required("AcceptanceRequired") => boolean(),
        required("Name") => String.t(),
        required("RequestTimeoutSeconds") => integer(),
        required("RuleSetName") => String.t()
      }
      
  """
  @type create_matchmaking_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_game_session_placement_input() :: %{
        optional("DesiredPlayerSessions") => list(desired_player_session()()),
        optional("GameProperties") => list(game_property()()),
        optional("GameSessionData") => String.t(),
        optional("GameSessionName") => String.t(),
        optional("PlayerLatencies") => list(player_latency()()),
        required("GameSessionQueueName") => String.t(),
        required("MaximumPlayerSessionCount") => integer(),
        required("PlacementId") => String.t()
      }
      
  """
  @type start_game_session_placement_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_game_session_placement_input() :: %{
        required("PlacementId") => String.t()
      }
      
  """
  @type describe_game_session_placement_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_fleet_locations_output() :: %{
        "FleetArn" => String.t(),
        "FleetId" => String.t(),
        "LocationStates" => list(location_state()())
      }
      
  """
  @type create_fleet_locations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_matchmaking_input() :: %{
        required("TicketId") => String.t()
      }
      
  """
  @type stop_matchmaking_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_peering_authorization() :: %{
        "CreationTime" => non_neg_integer(),
        "ExpirationTime" => non_neg_integer(),
        "GameLiftAwsAccountId" => String.t(),
        "PeerVpcAwsAccountId" => String.t(),
        "PeerVpcId" => String.t()
      }
      
  """
  @type vpc_peering_authorization() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_runtime_configuration_input() :: %{
        required("FleetId") => String.t()
      }
      
  """
  @type describe_runtime_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_alias_input() :: %{
        optional("Description") => String.t(),
        optional("Name") => String.t(),
        optional("RoutingStrategy") => routing_strategy(),
        required("AliasId") => String.t()
      }
      
  """
  @type update_alias_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_matchmaking_configuration_output() :: %{}
      
  """
  @type delete_matchmaking_configuration_output() :: %{}

  @typedoc """

  ## Example:
      
      not_ready_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type not_ready_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_compute_access_input() :: %{
        required("ComputeName") => String.t(),
        required("FleetId") => String.t()
      }
      
  """
  @type get_compute_access_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attribute_value() :: %{
        "N" => float(),
        "S" => String.t(),
        "SDM" => map(),
        "SL" => list(String.t()())
      }
      
  """
  @type attribute_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_matchmaking_configuration_output() :: %{
        "Configuration" => matchmaking_configuration()
      }
      
  """
  @type create_matchmaking_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      anywhere_configuration() :: %{
        "Cost" => String.t()
      }
      
  """
  @type anywhere_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_location() :: %{
        "Bucket" => String.t(),
        "Key" => String.t(),
        "ObjectVersion" => String.t(),
        "RoleArn" => String.t()
      }
      
  """
  @type s3_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_build_input() :: %{
        required("BuildId") => String.t()
      }
      
  """
  @type delete_build_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_player_sessions_output() :: %{
        "NextToken" => String.t(),
        "PlayerSessions" => list(player_session()())
      }
      
  """
  @type describe_player_sessions_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_instances_output() :: %{
        "Instances" => list(instance()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_instances_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_aliases_input() :: %{
        optional("Limit") => integer(),
        optional("Name") => String.t(),
        optional("NextToken") => String.t(),
        optional("RoutingStrategyType") => list(any())
      }
      
  """
  @type list_aliases_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_utilization_input() :: %{
        optional("FleetIds") => list(String.t()()),
        optional("Limit") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_fleet_utilization_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_instance_access_input() :: %{
        required("FleetId") => String.t(),
        required("InstanceId") => String.t()
      }
      
  """
  @type get_instance_access_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_fleet_output() :: %{
        "FleetAttributes" => fleet_attributes(),
        "LocationStates" => list(location_state()())
      }
      
  """
  @type create_fleet_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      fleet_attributes() :: %{
        "AnywhereConfiguration" => anywhere_configuration(),
        "BuildArn" => String.t(),
        "BuildId" => String.t(),
        "CertificateConfiguration" => certificate_configuration(),
        "ComputeType" => list(any()),
        "ContainerGroupsAttributes" => container_groups_attributes(),
        "CreationTime" => non_neg_integer(),
        "Description" => String.t(),
        "FleetArn" => String.t(),
        "FleetId" => String.t(),
        "FleetType" => list(any()),
        "InstanceRoleArn" => String.t(),
        "InstanceRoleCredentialsProvider" => list(any()),
        "InstanceType" => list(any()),
        "LogPaths" => list(String.t()()),
        "MetricGroups" => list(String.t()()),
        "Name" => String.t(),
        "NewGameSessionProtectionPolicy" => list(any()),
        "OperatingSystem" => list(any()),
        "ResourceCreationLimitPolicy" => resource_creation_limit_policy(),
        "ScriptArn" => String.t(),
        "ScriptId" => String.t(),
        "ServerLaunchParameters" => String.t(),
        "ServerLaunchPath" => String.t(),
        "Status" => list(any()),
        "StoppedActions" => list(list(any())()),
        "TerminationTime" => non_neg_integer()
      }
      
  """
  @type fleet_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_game_server_groups_input() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_game_server_groups_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_container_group_definition_input() :: %{
        optional("SchedulingStrategy") => list(any()),
        optional("Tags") => list(tag()()),
        required("ContainerDefinitions") => list(container_definition_input()()),
        required("Name") => String.t(),
        required("OperatingSystem") => list(any()),
        required("TotalCpuLimit") => integer(),
        required("TotalMemoryLimit") => integer()
      }
      
  """
  @type create_container_group_definition_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_player_sessions_input() :: %{
        optional("GameSessionId") => String.t(),
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        optional("PlayerId") => String.t(),
        optional("PlayerSessionId") => String.t(),
        optional("PlayerSessionStatusFilter") => String.t()
      }
      
  """
  @type describe_player_sessions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_game_session_input() :: %{
        optional("GameProperties") => list(game_property()()),
        optional("MaximumPlayerSessionCount") => integer(),
        optional("Name") => String.t(),
        optional("PlayerSessionCreationPolicy") => list(any()),
        optional("ProtectionPolicy") => list(any()),
        required("GameSessionId") => String.t()
      }
      
  """
  @type update_game_session_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      matchmaking_ticket() :: %{
        "ConfigurationArn" => String.t(),
        "ConfigurationName" => String.t(),
        "EndTime" => non_neg_integer(),
        "EstimatedWaitTime" => integer(),
        "GameSessionConnectionInfo" => game_session_connection_info(),
        "Players" => list(player()()),
        "StartTime" => non_neg_integer(),
        "Status" => list(any()),
        "StatusMessage" => String.t(),
        "StatusReason" => String.t(),
        "TicketId" => String.t()
      }
      
  """
  @type matchmaking_ticket() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_fleet_capacity_output() :: %{
        "FleetArn" => String.t(),
        "FleetId" => String.t(),
        "Location" => String.t()
      }
      
  """
  @type update_fleet_capacity_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_game_server_output() :: %{
        "GameServer" => game_server()
      }
      
  """
  @type update_game_server_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_game_session_queue_input() :: %{
        optional("CustomEventData") => String.t(),
        optional("Destinations") => list(game_session_queue_destination()()),
        optional("FilterConfiguration") => filter_configuration(),
        optional("NotificationTarget") => String.t(),
        optional("PlayerLatencyPolicies") => list(player_latency_policy()()),
        optional("PriorityConfiguration") => priority_configuration(),
        optional("Tags") => list(tag()()),
        optional("TimeoutInSeconds") => integer(),
        required("Name") => String.t()
      }
      
  """
  @type create_game_session_queue_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_game_session_details_input() :: %{
        optional("AliasId") => String.t(),
        optional("FleetId") => String.t(),
        optional("GameSessionId") => String.t(),
        optional("Limit") => integer(),
        optional("Location") => String.t(),
        optional("NextToken") => String.t(),
        optional("StatusFilter") => String.t()
      }
      
  """
  @type describe_game_session_details_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_fleet_actions_output() :: %{
        "FleetArn" => String.t(),
        "FleetId" => String.t()
      }
      
  """
  @type start_fleet_actions_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validate_matchmaking_rule_set_input() :: %{
        required("RuleSetBody") => String.t()
      }
      
  """
  @type validate_matchmaking_rule_set_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_fleets_input() :: %{
        optional("BuildId") => String.t(),
        optional("ContainerGroupDefinitionName") => String.t(),
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        optional("ScriptId") => String.t()
      }
      
  """
  @type list_fleets_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_game_servers_input() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        optional("SortOrder") => list(any()),
        required("GameServerGroupName") => String.t()
      }
      
  """
  @type list_game_servers_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_fleet_input() :: %{
        optional("AnywhereConfiguration") => anywhere_configuration(),
        optional("BuildId") => String.t(),
        optional("CertificateConfiguration") => certificate_configuration(),
        optional("ComputeType") => list(any()),
        optional("ContainerGroupsConfiguration") => container_groups_configuration(),
        optional("Description") => String.t(),
        optional("EC2InboundPermissions") => list(ip_permission()()),
        optional("EC2InstanceType") => list(any()),
        optional("FleetType") => list(any()),
        optional("InstanceRoleArn") => String.t(),
        optional("InstanceRoleCredentialsProvider") => list(any()),
        optional("Locations") => list(location_configuration()()),
        optional("LogPaths") => list(String.t()()),
        optional("MetricGroups") => list(String.t()()),
        optional("NewGameSessionProtectionPolicy") => list(any()),
        optional("PeerVpcAwsAccountId") => String.t(),
        optional("PeerVpcId") => String.t(),
        optional("ResourceCreationLimitPolicy") => resource_creation_limit_policy(),
        optional("RuntimeConfiguration") => runtime_configuration(),
        optional("ScriptId") => String.t(),
        optional("ServerLaunchParameters") => String.t(),
        optional("ServerLaunchPath") => String.t(),
        optional("Tags") => list(tag()()),
        required("Name") => String.t()
      }
      
  """
  @type create_fleet_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_matchmaking_input() :: %{
        optional("TicketId") => String.t(),
        required("ConfigurationName") => String.t(),
        required("Players") => list(player()())
      }
      
  """
  @type start_matchmaking_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      connection_port_range() :: %{
        "FromPort" => integer(),
        "ToPort" => integer()
      }
      
  """
  @type connection_port_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      container_environment() :: %{
        "Name" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type container_environment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replica_container_group_counts() :: %{
        "ACTIVE" => integer(),
        "IDLE" => integer(),
        "PENDING" => integer(),
        "TERMINATING" => integer()
      }
      
  """
  @type replica_container_group_counts() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_fleet_actions_output() :: %{
        "FleetArn" => String.t(),
        "FleetId" => String.t()
      }
      
  """
  @type stop_fleet_actions_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      claim_filter_option() :: %{
        "InstanceStatuses" => list(list(any())())
      }
      
  """
  @type claim_filter_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_game_session_queue_input() :: %{
        required("Name") => String.t()
      }
      
  """
  @type delete_game_session_queue_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_compute_input() :: %{
        required("ComputeName") => String.t(),
        required("FleetId") => String.t()
      }
      
  """
  @type deregister_compute_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_events_output() :: %{
        "Events" => list(event()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_fleet_events_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_vpc_peering_authorization_output() :: %{
        "VpcPeeringAuthorization" => vpc_peering_authorization()
      }
      
  """
  @type create_vpc_peering_authorization_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_game_session_queue_output() :: %{
        "GameSessionQueue" => game_session_queue()
      }
      
  """
  @type create_game_session_queue_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      location_model() :: %{
        "LocationArn" => String.t(),
        "LocationName" => String.t()
      }
      
  """
  @type location_model() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event() :: %{
        "Count" => float(),
        "EventCode" => list(any()),
        "EventId" => String.t(),
        "EventTime" => non_neg_integer(),
        "Message" => String.t(),
        "PreSignedLogUrl" => String.t(),
        "ResourceId" => String.t()
      }
      
  """
  @type event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_instances_input() :: %{
        optional("InstanceId") => String.t(),
        optional("Limit") => integer(),
        optional("Location") => String.t(),
        optional("NextToken") => String.t(),
        required("FleetId") => String.t()
      }
      
  """
  @type describe_instances_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_game_server_output() :: %{
        "GameServer" => game_server()
      }
      
  """
  @type describe_game_server_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_vpc_peering_authorization_input() :: %{
        required("GameLiftAwsAccountId") => String.t(),
        required("PeerVpcId") => String.t()
      }
      
  """
  @type create_vpc_peering_authorization_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_game_session_queues_input() :: %{
        optional("Limit") => integer(),
        optional("Names") => list(String.t()()),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_game_session_queues_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_game_sessions_output() :: %{
        "GameSessions" => list(game_session()()),
        "NextToken" => String.t()
      }
      
  """
  @type search_game_sessions_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_match_backfill_output() :: %{
        "MatchmakingTicket" => matchmaking_ticket()
      }
      
  """
  @type start_match_backfill_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      alias() :: %{
        "AliasArn" => String.t(),
        "AliasId" => String.t(),
        "CreationTime" => non_neg_integer(),
        "Description" => String.t(),
        "LastUpdatedTime" => non_neg_integer(),
        "Name" => String.t(),
        "RoutingStrategy" => routing_strategy()
      }
      
  """
  @type alias() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      container_memory_limits() :: %{
        "HardLimit" => integer(),
        "SoftLimit" => integer()
      }
      
  """
  @type container_memory_limits() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_runtime_configuration_output() :: %{
        "RuntimeConfiguration" => runtime_configuration()
      }
      
  """
  @type update_runtime_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance() :: %{
        "CreationTime" => non_neg_integer(),
        "DnsName" => String.t(),
        "FleetArn" => String.t(),
        "FleetId" => String.t(),
        "InstanceId" => String.t(),
        "IpAddress" => String.t(),
        "Location" => String.t(),
        "OperatingSystem" => list(any()),
        "Status" => list(any()),
        "Type" => list(any())
      }
      
  """
  @type instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_game_session_log_url_input() :: %{
        required("GameSessionId") => String.t()
      }
      
  """
  @type get_game_session_log_url_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_fleet_actions_input() :: %{
        optional("Location") => String.t(),
        required("Actions") => list(list(any())()),
        required("FleetId") => String.t()
      }
      
  """
  @type start_fleet_actions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_matchmaking_configuration_input() :: %{
        optional("AcceptanceRequired") => boolean(),
        optional("AcceptanceTimeoutSeconds") => integer(),
        optional("AdditionalPlayerCount") => integer(),
        optional("BackfillMode") => list(any()),
        optional("CustomEventData") => String.t(),
        optional("Description") => String.t(),
        optional("FlexMatchMode") => list(any()),
        optional("GameProperties") => list(game_property()()),
        optional("GameSessionData") => String.t(),
        optional("GameSessionQueueArns") => list(String.t()()),
        optional("NotificationTarget") => String.t(),
        optional("RequestTimeoutSeconds") => integer(),
        optional("RuleSetName") => String.t(),
        required("Name") => String.t()
      }
      
  """
  @type update_matchmaking_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resume_game_server_group_output() :: %{
        "GameServerGroup" => game_server_group()
      }
      
  """
  @type resume_game_server_group_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_vpc_peering_authorization_output() :: %{}
      
  """
  @type delete_vpc_peering_authorization_output() :: %{}

  @typedoc """

  ## Example:
      
      unsupported_region_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type unsupported_region_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_scripts_output() :: %{
        "NextToken" => String.t(),
        "Scripts" => list(script()())
      }
      
  """
  @type list_scripts_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_game_server_group_input() :: %{
        optional("DeleteOption") => list(any()),
        required("GameServerGroupName") => String.t()
      }
      
  """
  @type delete_game_server_group_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      game_session_full_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type game_session_full_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      aws_credentials() :: %{
        "AccessKeyId" => String.t(),
        "SecretAccessKey" => String.t(),
        "SessionToken" => String.t()
      }
      
  """
  @type aws_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      container_port_range() :: %{
        "FromPort" => integer(),
        "Protocol" => list(any()),
        "ToPort" => integer()
      }
      
  """
  @type container_port_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_matchmaking_rule_sets_output() :: %{
        "NextToken" => String.t(),
        "RuleSets" => list(matchmaking_rule_set()())
      }
      
  """
  @type describe_matchmaking_rule_sets_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      game_property() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type game_property() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_container_group_definitions_input() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        optional("SchedulingStrategy") => list(any())
      }
      
  """
  @type list_container_group_definitions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      suspend_game_server_group_output() :: %{
        "GameServerGroup" => game_server_group()
      }
      
  """
  @type suspend_game_server_group_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_instance_access_output() :: %{
        "InstanceAccess" => instance_access()
      }
      
  """
  @type get_instance_access_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_attributes_input() :: %{
        optional("FleetIds") => list(String.t()()),
        optional("Limit") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_fleet_attributes_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_location_output() :: %{
        "Location" => location_model()
      }
      
  """
  @type create_location_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_game_session_input() :: %{
        optional("AliasId") => String.t(),
        optional("CreatorId") => String.t(),
        optional("FleetId") => String.t(),
        optional("GameProperties") => list(game_property()()),
        optional("GameSessionData") => String.t(),
        optional("GameSessionId") => String.t(),
        optional("IdempotencyToken") => String.t(),
        optional("Location") => String.t(),
        optional("Name") => String.t(),
        required("MaximumPlayerSessionCount") => integer()
      }
      
  """
  @type create_game_session_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      routing_strategy() :: %{
        "FleetId" => String.t(),
        "Message" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type routing_strategy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      game_session_queue_destination() :: %{
        "DestinationArn" => String.t()
      }
      
  """
  @type game_session_queue_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_game_server_instances_output() :: %{
        "GameServerInstances" => list(game_server_instance()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_game_server_instances_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_compute_auth_token_output() :: %{
        "AuthToken" => String.t(),
        "ComputeArn" => String.t(),
        "ComputeName" => String.t(),
        "ExpirationTimestamp" => non_neg_integer(),
        "FleetArn" => String.t(),
        "FleetId" => String.t()
      }
      
  """
  @type get_compute_auth_token_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_ec2_instance_limits_output() :: %{
        "EC2InstanceLimits" => list(ec2_instance_limit()())
      }
      
  """
  @type describe_ec2_instance_limits_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_game_server_group_output() :: %{
        "GameServerGroup" => game_server_group()
      }
      
  """
  @type delete_game_server_group_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_build_output() :: %{
        "Build" => build()
      }
      
  """
  @type describe_build_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      container_attributes() :: %{
        "ContainerPortMappings" => list(container_port_mapping()())
      }
      
  """
  @type container_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_scaling_policy_input() :: %{
        required("FleetId") => String.t(),
        required("Name") => String.t()
      }
      
  """
  @type delete_scaling_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceARN") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      container_groups_attributes() :: %{
        "ConnectionPortRange" => connection_port_range(),
        "ContainerGroupDefinitionProperties" => list(container_group_definition_property()()),
        "ContainerGroupsPerInstance" => container_groups_per_instance()
      }
      
  """
  @type container_groups_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_capacity_output() :: %{
        "FleetCapacity" => list(fleet_capacity()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_fleet_capacity_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_locations_input() :: %{
        optional("Filters") => list(list(any())()),
        optional("Limit") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_locations_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      container_groups_configuration() :: %{
        "ConnectionPortRange" => connection_port_range(),
        "ContainerGroupDefinitionNames" => list(String.t()()),
        "DesiredReplicaContainerGroupsPerInstance" => integer()
      }
      
  """
  @type container_groups_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_attributes_output() :: %{
        "FleetAttributes" => list(fleet_attributes()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_fleet_attributes_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      script() :: %{
        "CreationTime" => non_neg_integer(),
        "Name" => String.t(),
        "ScriptArn" => String.t(),
        "ScriptId" => String.t(),
        "SizeOnDisk" => float(),
        "StorageLocation" => s3_location(),
        "Version" => String.t()
      }
      
  """
  @type script() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_creation_limit_policy() :: %{
        "NewGameSessionsPerCreator" => integer(),
        "PolicyPeriodInMinutes" => integer()
      }
      
  """
  @type resource_creation_limit_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      game_server() :: %{
        "ClaimStatus" => list(any()),
        "ConnectionInfo" => String.t(),
        "GameServerData" => String.t(),
        "GameServerGroupArn" => String.t(),
        "GameServerGroupName" => String.t(),
        "GameServerId" => String.t(),
        "InstanceId" => String.t(),
        "LastClaimTime" => non_neg_integer(),
        "LastHealthCheckTime" => non_neg_integer(),
        "RegistrationTime" => non_neg_integer(),
        "UtilizationStatus" => list(any())
      }
      
  """
  @type game_server() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_player_session_output() :: %{
        "PlayerSession" => player_session()
      }
      
  """
  @type create_player_session_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_alias_output() :: %{
        "Alias" => alias()
      }
      
  """
  @type describe_alias_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      container_groups_per_instance() :: %{
        "DesiredReplicaContainerGroupsPerInstance" => integer(),
        "MaxReplicaContainerGroupsPerInstance" => integer()
      }
      
  """
  @type container_groups_per_instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_game_session_placement_output() :: %{
        "GameSessionPlacement" => game_session_placement()
      }
      
  """
  @type describe_game_session_placement_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_game_session_status_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_game_session_status_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      container_port_configuration() :: %{
        "ContainerPortRanges" => list(container_port_range()())
      }
      
  """
  @type container_port_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_compute_input() :: %{
        optional("CertificatePath") => String.t(),
        optional("DnsName") => String.t(),
        optional("IpAddress") => String.t(),
        optional("Location") => String.t(),
        required("ComputeName") => String.t(),
        required("FleetId") => String.t()
      }
      
  """
  @type register_compute_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_location_output() :: %{}
      
  """
  @type delete_location_output() :: %{}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_matchmaking_output() :: %{}
      
  """
  @type stop_matchmaking_output() :: %{}

  @typedoc """

  ## Example:
      
      create_alias_input() :: %{
        optional("Description") => String.t(),
        optional("Tags") => list(tag()()),
        required("Name") => String.t(),
        required("RoutingStrategy") => routing_strategy()
      }
      
  """
  @type create_alias_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_match_backfill_input() :: %{
        optional("GameSessionArn") => String.t(),
        optional("TicketId") => String.t(),
        required("ConfigurationName") => String.t(),
        required("Players") => list(player()())
      }
      
  """
  @type start_match_backfill_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ec2_instance_limit() :: %{
        "CurrentInstances" => integer(),
        "EC2InstanceType" => list(any()),
        "InstanceLimit" => integer(),
        "Location" => String.t()
      }
      
  """
  @type ec2_instance_limit() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_compute_auth_token_input() :: %{
        required("ComputeName") => String.t(),
        required("FleetId") => String.t()
      }
      
  """
  @type get_compute_auth_token_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      target_configuration() :: %{
        "TargetValue" => float()
      }
      
  """
  @type target_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      launch_template_specification() :: %{
        "LaunchTemplateId" => String.t(),
        "LaunchTemplateName" => String.t(),
        "Version" => String.t()
      }
      
  """
  @type launch_template_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      claim_game_server_output() :: %{
        "GameServer" => game_server()
      }
      
  """
  @type claim_game_server_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_scaling_policies_input() :: %{
        optional("Limit") => integer(),
        optional("Location") => String.t(),
        optional("NextToken") => String.t(),
        optional("StatusFilter") => list(any()),
        required("FleetId") => String.t()
      }
      
  """
  @type describe_scaling_policies_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_game_servers_output() :: %{
        "GameServers" => list(game_server()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_game_servers_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_peering_connection_status() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type vpc_peering_connection_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_scaling_policies_output() :: %{
        "NextToken" => String.t(),
        "ScalingPolicies" => list(scaling_policy()())
      }
      
  """
  @type describe_scaling_policies_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_matchmaking_rule_set_input() :: %{
        required("Name") => String.t()
      }
      
  """
  @type delete_matchmaking_rule_set_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_build_input() :: %{
        optional("Name") => String.t(),
        optional("OperatingSystem") => list(any()),
        optional("ServerSdkVersion") => String.t(),
        optional("StorageLocation") => s3_location(),
        optional("Tags") => list(tag()()),
        optional("Version") => String.t()
      }
      
  """
  @type create_build_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_peering_connection() :: %{
        "FleetArn" => String.t(),
        "FleetId" => String.t(),
        "GameLiftVpcId" => String.t(),
        "IpV4CidrBlock" => String.t(),
        "PeerVpcId" => String.t(),
        "Status" => vpc_peering_connection_status(),
        "VpcPeeringConnectionId" => String.t()
      }
      
  """
  @type vpc_peering_connection() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_fleet_attributes_output() :: %{
        "FleetArn" => String.t(),
        "FleetId" => String.t()
      }
      
  """
  @type update_fleet_attributes_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_build_output() :: %{
        "Build" => build(),
        "StorageLocation" => s3_location(),
        "UploadCredentials" => aws_credentials()
      }
      
  """
  @type create_build_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_game_session_details_output() :: %{
        "GameSessionDetails" => list(game_session_detail()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_game_session_details_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_vpc_peering_connection_output() :: %{}
      
  """
  @type create_vpc_peering_connection_output() :: %{}

  @typedoc """

  ## Example:
      
      game_session_detail() :: %{
        "GameSession" => game_session(),
        "ProtectionPolicy" => list(any())
      }
      
  """
  @type game_session_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_game_session_placement_output() :: %{
        "GameSessionPlacement" => game_session_placement()
      }
      
  """
  @type stop_game_session_placement_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_vpc_peering_authorizations_input() :: %{}
      
  """
  @type describe_vpc_peering_authorizations_input() :: %{}

  @typedoc """

  ## Example:
      
      describe_container_group_definition_output() :: %{
        "ContainerGroupDefinition" => container_group_definition()
      }
      
  """
  @type describe_container_group_definition_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_game_server_group_input() :: %{
        optional("AutoScalingPolicy") => game_server_group_auto_scaling_policy(),
        optional("BalancingStrategy") => list(any()),
        optional("GameServerProtectionPolicy") => list(any()),
        optional("Tags") => list(tag()()),
        optional("VpcSubnets") => list(String.t()()),
        required("GameServerGroupName") => String.t(),
        required("InstanceDefinitions") => list(instance_definition()()),
        required("LaunchTemplate") => launch_template_specification(),
        required("MaxSize") => integer(),
        required("MinSize") => integer(),
        required("RoleArn") => String.t()
      }
      
  """
  @type create_game_server_group_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_fleet_actions_input() :: %{
        optional("Location") => String.t(),
        required("Actions") => list(list(any())()),
        required("FleetId") => String.t()
      }
      
  """
  @type stop_fleet_actions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      certificate_configuration() :: %{
        "CertificateType" => list(any())
      }
      
  """
  @type certificate_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      matchmaking_rule_set() :: %{
        "CreationTime" => non_neg_integer(),
        "RuleSetArn" => String.t(),
        "RuleSetBody" => String.t(),
        "RuleSetName" => String.t()
      }
      
  """
  @type matchmaking_rule_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_compute_input() :: %{
        required("ComputeName") => String.t(),
        required("FleetId") => String.t()
      }
      
  """
  @type describe_compute_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_game_server_input() :: %{
        optional("ConnectionInfo") => String.t(),
        optional("GameServerData") => String.t(),
        required("GameServerGroupName") => String.t(),
        required("GameServerId") => String.t(),
        required("InstanceId") => String.t()
      }
      
  """
  @type register_game_server_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_player_sessions_input() :: %{
        optional("PlayerDataMap") => map(),
        required("GameSessionId") => String.t(),
        required("PlayerIds") => list(String.t()())
      }
      
  """
  @type create_player_sessions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      game_session_placement() :: %{
        "DnsName" => String.t(),
        "EndTime" => non_neg_integer(),
        "GameProperties" => list(game_property()()),
        "GameSessionArn" => String.t(),
        "GameSessionData" => String.t(),
        "GameSessionId" => String.t(),
        "GameSessionName" => String.t(),
        "GameSessionQueueName" => String.t(),
        "GameSessionRegion" => String.t(),
        "IpAddress" => String.t(),
        "MatchmakerData" => String.t(),
        "MaximumPlayerSessionCount" => integer(),
        "PlacedPlayerSessions" => list(placed_player_session()()),
        "PlacementId" => String.t(),
        "PlayerLatencies" => list(player_latency()()),
        "Port" => integer(),
        "StartTime" => non_neg_integer(),
        "Status" => list(any())
      }
      
  """
  @type game_session_placement() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      game_session() :: %{
        "CreationTime" => non_neg_integer(),
        "CreatorId" => String.t(),
        "CurrentPlayerSessionCount" => integer(),
        "DnsName" => String.t(),
        "FleetArn" => String.t(),
        "FleetId" => String.t(),
        "GameProperties" => list(game_property()()),
        "GameSessionData" => String.t(),
        "GameSessionId" => String.t(),
        "IpAddress" => String.t(),
        "Location" => String.t(),
        "MatchmakerData" => String.t(),
        "MaximumPlayerSessionCount" => integer(),
        "Name" => String.t(),
        "PlayerSessionCreationPolicy" => list(any()),
        "Port" => integer(),
        "Status" => list(any()),
        "StatusReason" => list(any()),
        "TerminationTime" => non_neg_integer()
      }
      
  """
  @type game_session() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_game_session_output() :: %{
        "GameSession" => game_session()
      }
      
  """
  @type update_game_session_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_builds_output() :: %{
        "Builds" => list(build()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_builds_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_script_input() :: %{
        optional("Name") => String.t(),
        optional("StorageLocation") => s3_location(),
        optional("Tags") => list(tag()()),
        optional("Version") => String.t(),
        optional("ZipFile") => binary()
      }
      
  """
  @type create_script_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_script_output() :: %{
        "Script" => script()
      }
      
  """
  @type create_script_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      target_tracking_configuration() :: %{
        "TargetValue" => float()
      }
      
  """
  @type target_tracking_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_container_group_definition_input() :: %{
        required("Name") => String.t()
      }
      
  """
  @type describe_container_group_definition_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_matchmaking_configurations_output() :: %{
        "Configurations" => list(matchmaking_configuration()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_matchmaking_configurations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      container_dependency() :: %{
        "Condition" => list(any()),
        "ContainerName" => String.t()
      }
      
  """
  @type container_dependency() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_game_server_instances_input() :: %{
        optional("InstanceIds") => list(String.t()()),
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        required("GameServerGroupName") => String.t()
      }
      
  """
  @type describe_game_server_instances_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      terminal_routing_strategy_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type terminal_routing_strategy_exception() :: %{String.t() => any()}

  @type accept_match_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()

  @type claim_game_server_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | conflict_exception()
          | internal_service_exception()
          | out_of_capacity_exception()
          | unauthorized_exception()

  @type create_alias_errors() ::
          limit_exceeded_exception()
          | invalid_request_exception()
          | conflict_exception()
          | internal_service_exception()
          | unauthorized_exception()
          | tagging_failed_exception()

  @type create_build_errors() ::
          invalid_request_exception()
          | conflict_exception()
          | internal_service_exception()
          | unauthorized_exception()
          | tagging_failed_exception()

  @type create_container_group_definition_errors() ::
          limit_exceeded_exception()
          | unsupported_region_exception()
          | invalid_request_exception()
          | conflict_exception()
          | internal_service_exception()
          | unauthorized_exception()
          | tagging_failed_exception()

  @type create_fleet_errors() ::
          limit_exceeded_exception()
          | unsupported_region_exception()
          | not_ready_exception()
          | not_found_exception()
          | invalid_request_exception()
          | conflict_exception()
          | internal_service_exception()
          | unauthorized_exception()
          | tagging_failed_exception()

  @type create_fleet_locations_errors() ::
          limit_exceeded_exception()
          | unsupported_region_exception()
          | not_ready_exception()
          | not_found_exception()
          | invalid_request_exception()
          | conflict_exception()
          | internal_service_exception()
          | unauthorized_exception()
          | invalid_fleet_status_exception()

  @type create_game_server_group_errors() ::
          limit_exceeded_exception()
          | invalid_request_exception()
          | conflict_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type create_game_session_errors() ::
          terminal_routing_strategy_exception()
          | limit_exceeded_exception()
          | unsupported_region_exception()
          | not_found_exception()
          | idempotent_parameter_mismatch_exception()
          | invalid_request_exception()
          | conflict_exception()
          | fleet_capacity_exceeded_exception()
          | internal_service_exception()
          | unauthorized_exception()
          | invalid_fleet_status_exception()

  @type create_game_session_queue_errors() ::
          limit_exceeded_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()
          | tagging_failed_exception()

  @type create_location_errors() ::
          limit_exceeded_exception()
          | invalid_request_exception()
          | conflict_exception()
          | internal_service_exception()
          | unauthorized_exception()
          | tagging_failed_exception()

  @type create_matchmaking_configuration_errors() ::
          limit_exceeded_exception()
          | unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | tagging_failed_exception()

  @type create_matchmaking_rule_set_errors() ::
          limit_exceeded_exception()
          | unsupported_region_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | tagging_failed_exception()

  @type create_player_session_errors() ::
          terminal_routing_strategy_exception()
          | invalid_game_session_status_exception()
          | game_session_full_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type create_player_sessions_errors() ::
          terminal_routing_strategy_exception()
          | invalid_game_session_status_exception()
          | game_session_full_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type create_script_errors() ::
          invalid_request_exception()
          | conflict_exception()
          | internal_service_exception()
          | unauthorized_exception()
          | tagging_failed_exception()

  @type create_vpc_peering_authorization_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type create_vpc_peering_connection_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type delete_alias_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()
          | tagging_failed_exception()

  @type delete_build_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()
          | tagging_failed_exception()

  @type delete_container_group_definition_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()
          | tagging_failed_exception()

  @type delete_fleet_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()
          | tagging_failed_exception()
          | invalid_fleet_status_exception()

  @type delete_fleet_locations_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type delete_game_server_group_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type delete_game_session_queue_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()
          | tagging_failed_exception()

  @type delete_location_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type delete_matchmaking_configuration_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | tagging_failed_exception()

  @type delete_matchmaking_rule_set_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | tagging_failed_exception()

  @type delete_scaling_policy_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type delete_script_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()
          | tagging_failed_exception()

  @type delete_vpc_peering_authorization_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type delete_vpc_peering_connection_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type deregister_compute_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type deregister_game_server_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_alias_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_build_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_compute_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_container_group_definition_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_ec2_instance_limits_errors() ::
          unsupported_region_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_fleet_attributes_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_fleet_capacity_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_fleet_events_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_fleet_location_attributes_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_fleet_location_capacity_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_fleet_location_utilization_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_fleet_port_settings_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_fleet_utilization_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_game_server_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_game_server_group_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_game_server_instances_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_game_session_details_errors() ::
          terminal_routing_strategy_exception()
          | unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_game_session_placement_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_game_session_queues_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_game_sessions_errors() ::
          terminal_routing_strategy_exception()
          | unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_instances_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_matchmaking_errors() ::
          unsupported_region_exception()
          | invalid_request_exception()
          | internal_service_exception()

  @type describe_matchmaking_configurations_errors() ::
          unsupported_region_exception()
          | invalid_request_exception()
          | internal_service_exception()

  @type describe_matchmaking_rule_sets_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()

  @type describe_player_sessions_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_runtime_configuration_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_scaling_policies_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_script_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_vpc_peering_authorizations_errors() ::
          invalid_request_exception() | internal_service_exception() | unauthorized_exception()

  @type describe_vpc_peering_connections_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type get_compute_access_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type get_compute_auth_token_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type get_game_session_log_url_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type get_instance_access_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type list_aliases_errors() ::
          invalid_request_exception() | internal_service_exception() | unauthorized_exception()

  @type list_builds_errors() ::
          invalid_request_exception() | internal_service_exception() | unauthorized_exception()

  @type list_compute_errors() ::
          invalid_request_exception() | internal_service_exception() | unauthorized_exception()

  @type list_container_group_definitions_errors() ::
          unsupported_region_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type list_fleets_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type list_game_server_groups_errors() ::
          invalid_request_exception() | internal_service_exception() | unauthorized_exception()

  @type list_game_servers_errors() ::
          invalid_request_exception() | internal_service_exception() | unauthorized_exception()

  @type list_locations_errors() ::
          invalid_request_exception() | internal_service_exception() | unauthorized_exception()

  @type list_scripts_errors() ::
          invalid_request_exception() | internal_service_exception() | unauthorized_exception()

  @type list_tags_for_resource_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | tagging_failed_exception()

  @type put_scaling_policy_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type register_compute_errors() ::
          limit_exceeded_exception()
          | not_ready_exception()
          | invalid_request_exception()
          | conflict_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type register_game_server_errors() ::
          limit_exceeded_exception()
          | invalid_request_exception()
          | conflict_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type request_upload_credentials_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type resolve_alias_errors() ::
          terminal_routing_strategy_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type resume_game_server_group_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type search_game_sessions_errors() ::
          terminal_routing_strategy_exception()
          | unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type start_fleet_actions_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type start_game_session_placement_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type start_match_backfill_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()

  @type start_matchmaking_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()

  @type stop_fleet_actions_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type stop_game_session_placement_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type stop_matchmaking_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()

  @type suspend_game_server_group_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type tag_resource_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | tagging_failed_exception()

  @type untag_resource_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | tagging_failed_exception()

  @type update_alias_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type update_build_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type update_fleet_attributes_errors() ::
          limit_exceeded_exception()
          | not_found_exception()
          | invalid_request_exception()
          | conflict_exception()
          | internal_service_exception()
          | unauthorized_exception()
          | invalid_fleet_status_exception()

  @type update_fleet_capacity_errors() ::
          limit_exceeded_exception()
          | unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | conflict_exception()
          | internal_service_exception()
          | unauthorized_exception()
          | invalid_fleet_status_exception()

  @type update_fleet_port_settings_errors() ::
          limit_exceeded_exception()
          | not_found_exception()
          | invalid_request_exception()
          | conflict_exception()
          | internal_service_exception()
          | unauthorized_exception()
          | invalid_fleet_status_exception()

  @type update_game_server_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type update_game_server_group_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type update_game_session_errors() ::
          invalid_game_session_status_exception()
          | not_found_exception()
          | invalid_request_exception()
          | conflict_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type update_game_session_queue_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type update_matchmaking_configuration_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()

  @type update_runtime_configuration_errors() ::
          limit_exceeded_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()
          | invalid_fleet_status_exception()

  @type update_script_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type validate_matchmaking_rule_set_errors() ::
          unsupported_region_exception()
          | invalid_request_exception()
          | internal_service_exception()

  def metadata do
    %{
      api_version: "2015-10-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "gamelift",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "GameLift",
      signature_version: "v4",
      signing_name: "gamelift",
      target_prefix: "GameLift"
    }
  end

  @doc """
  Registers a player's acceptance or rejection of a proposed FlexMatch match. A
  matchmaking configuration may require player acceptance; if so, then matches
  built with that configuration cannot be completed unless all players accept
  the proposed match within a specified time limit. When FlexMatch builds a
  match, all the matchmaking tickets involved in the proposed match are placed
  into status `REQUIRES_ACCEPTANCE`. This is a trigger for your game to get
  acceptance from all players in each ticket. Calls to this action are only
  valid for tickets that are in this status; calls for tickets not in this
  status result in an error.
  """
  @spec accept_match(AWS.Client.t(), accept_match_input(), Keyword.t()) ::
          {:ok, accept_match_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, accept_match_errors()}
  def accept_match(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AcceptMatch", input, options)
  end

  @doc """
  **This operation is used with the Amazon GameLift FleetIQ solution and game
  server groups.** Locates an available game server and temporarily reserves it
  to host gameplay and players. This operation is called from a game client or
  client service (such as a matchmaker) to request hosting resources for a new
  game session. In response, Amazon GameLift FleetIQ locates an available game
  server, places it in `CLAIMED` status for 60 seconds, and returns connection
  information that players can use to connect to the game server.
  """
  @spec claim_game_server(AWS.Client.t(), claim_game_server_input(), Keyword.t()) ::
          {:ok, claim_game_server_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, claim_game_server_errors()}
  def claim_game_server(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ClaimGameServer", input, options)
  end

  @doc """
  Creates an alias for a fleet. In most situations, you can use an alias ID in
  place of a fleet ID. An alias provides a level of abstraction for a fleet that
  is useful when redirecting player traffic from one fleet to another, such as
  when updating your game build. Amazon GameLift supports two types of routing
  strategies for aliases: simple and terminal. A simple alias points to an
  active fleet. A terminal alias is used to display messaging or link to a URL
  instead of routing players to an active fleet. For example, you might use a
  terminal alias when a game version is no longer supported and you want to
  direct players to an upgrade site.
  """
  @spec create_alias(AWS.Client.t(), create_alias_input(), Keyword.t()) ::
          {:ok, create_alias_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_alias_errors()}
  def create_alias(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateAlias", input, options)
  end

  @doc """
  Creates a new Amazon GameLift build resource for your game server binary files.
  Combine game server binaries into a zip file for use with Amazon GameLift.
  When setting up a new game build for Amazon GameLift, we recommend using the
  CLI command **
  [upload-build](https://docs.aws.amazon.com/cli/latest/reference/gamelift/upload-build.html)
  **. This helper command combines two tasks: (1) it uploads your build files
  from a file directory to an Amazon GameLift Amazon S3 location, and (2) it
  creates a new build resource. You can use the `CreateBuild` operation in the
  following scenarios:
  """
  @spec create_build(AWS.Client.t(), create_build_input(), Keyword.t()) ::
          {:ok, create_build_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_build_errors()}
  def create_build(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateBuild", input, options)
  end

  @doc """
  **This operation is used with the Amazon GameLift containers feature, which is
  currently in public preview. ** Creates a `ContainerGroupDefinition` resource
  that describes a set of containers for hosting your game server with Amazon
  GameLift managed EC2 hosting. An Amazon GameLift container group is similar to
  a container "task" and "pod". Each container group can have one or more
  containers.
  """
  @spec create_container_group_definition(
          AWS.Client.t(),
          create_container_group_definition_input(),
          Keyword.t()
        ) ::
          {:ok, create_container_group_definition_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_container_group_definition_errors()}
  def create_container_group_definition(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateContainerGroupDefinition", input, options)
  end

  @doc """
  **This operation has been expanded to use with the Amazon GameLift containers
  feature, which is currently in public preview.** Creates a fleet of compute
  resources to host your game servers. Use this operation to set up the
  following types of fleets based on compute type:
  """
  @spec create_fleet(AWS.Client.t(), create_fleet_input(), Keyword.t()) ::
          {:ok, create_fleet_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_fleet_errors()}
  def create_fleet(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateFleet", input, options)
  end

  @doc """
  **This operation has been expanded to use with the Amazon GameLift containers
  feature, which is currently in public preview.** Adds remote locations to an
  EC2 or container fleet and begins populating the new locations with instances.
  The new instances conform to the fleet's instance type, auto-scaling, and
  other configuration settings.
  """
  @spec create_fleet_locations(AWS.Client.t(), create_fleet_locations_input(), Keyword.t()) ::
          {:ok, create_fleet_locations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_fleet_locations_errors()}
  def create_fleet_locations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateFleetLocations", input, options)
  end

  @doc """
  **This operation is used with the Amazon GameLift FleetIQ solution and game
  server groups.** Creates a Amazon GameLift FleetIQ game server group for
  managing game hosting on a collection of Amazon Elastic Compute Cloud
  instances for game hosting. This operation creates the game server group,
  creates an Auto Scaling group in your Amazon Web Services account, and
  establishes a link between the two groups. You can view the status of your
  game server groups in the Amazon GameLift console. Game server group metrics
  and events are emitted to Amazon CloudWatch.
  """
  @spec create_game_server_group(AWS.Client.t(), create_game_server_group_input(), Keyword.t()) ::
          {:ok, create_game_server_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_game_server_group_errors()}
  def create_game_server_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateGameServerGroup", input, options)
  end

  @doc """
  Creates a multiplayer game session for players in a specific fleet location.
  This operation prompts an available server process to start a game session and
  retrieves connection information for the new game session. As an alternative,
  consider using the Amazon GameLift game session placement feature with
  [StartGameSessionPlacement](https://docs.aws.amazon.com/gamelift/latest/apireference/API_StartGameSessionPlacement.html)
  , which uses the FleetIQ algorithm and queues to optimize the placement
  process. When creating a game session, you specify exactly where you want to
  place it and provide a set of game session configuration settings. The target
  fleet must be in `ACTIVE` status. You can use this operation in the following
  ways:
  """
  @spec create_game_session(AWS.Client.t(), create_game_session_input(), Keyword.t()) ::
          {:ok, create_game_session_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_game_session_errors()}
  def create_game_session(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateGameSession", input, options)
  end

  @doc """
  Creates a placement queue that processes requests for new game sessions. A queue
  uses FleetIQ algorithms to determine the best placement locations and find an
  available game server there, then prompts the game server process to start a
  new game session. A game session queue is configured with a set of
  destinations (Amazon GameLift fleets or aliases), which determine the
  locations where the queue can place new game sessions. These destinations can
  span multiple fleet types (Spot and On-Demand), instance types, and Amazon Web
  Services Regions. If the queue includes multi-location fleets, the queue is
  able to place game sessions in all of a fleet's remote locations. You can opt
  to filter out individual locations if needed.
  """
  @spec create_game_session_queue(AWS.Client.t(), create_game_session_queue_input(), Keyword.t()) ::
          {:ok, create_game_session_queue_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_game_session_queue_errors()}
  def create_game_session_queue(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateGameSessionQueue", input, options)
  end

  @doc """
  Creates a custom location for use in an Anywhere fleet.
  """
  @spec create_location(AWS.Client.t(), create_location_input(), Keyword.t()) ::
          {:ok, create_location_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_location_errors()}
  def create_location(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateLocation", input, options)
  end

  @doc """
  Defines a new matchmaking configuration for use with FlexMatch. Whether your are
  using FlexMatch with Amazon GameLift hosting or as a standalone matchmaking
  service, the matchmaking configuration sets out rules for matching players and
  forming teams. If you're also using Amazon GameLift hosting, it defines how to
  start game sessions for each match. Your matchmaking system can use multiple
  configurations to handle different game scenarios. All matchmaking requests
  identify the matchmaking configuration to use and provide player attributes
  consistent with that configuration. To create a matchmaking configuration, you
  must provide the following: configuration name and FlexMatch mode (with or
  without Amazon GameLift hosting); a rule set that specifies how to evaluate
  players and find acceptable matches; whether player acceptance is required;
  and the maximum time allowed for a matchmaking attempt. When using FlexMatch
  with Amazon GameLift hosting, you also need to identify the game session queue
  to use when starting a game session for the match.
  """
  @spec create_matchmaking_configuration(
          AWS.Client.t(),
          create_matchmaking_configuration_input(),
          Keyword.t()
        ) ::
          {:ok, create_matchmaking_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_matchmaking_configuration_errors()}
  def create_matchmaking_configuration(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateMatchmakingConfiguration", input, options)
  end

  @doc """
  Creates a new rule set for FlexMatch matchmaking. A rule set describes the type
  of match to create, such as the number and size of teams. It also sets the
  parameters for acceptable player matches, such as minimum skill level or
  character type. To create a matchmaking rule set, provide unique rule set name
  and the rule set body in JSON format. Rule sets must be defined in the same
  Region as the matchmaking configuration they are used with.
  """
  @spec create_matchmaking_rule_set(
          AWS.Client.t(),
          create_matchmaking_rule_set_input(),
          Keyword.t()
        ) ::
          {:ok, create_matchmaking_rule_set_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_matchmaking_rule_set_errors()}
  def create_matchmaking_rule_set(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateMatchmakingRuleSet", input, options)
  end

  @doc """
  Reserves an open player slot in a game session for a player. New player sessions
  can be created in any game session with an open slot that is in `ACTIVE`
  status and has a player creation policy of `ACCEPT_ALL`. You can add a group
  of players to a game session with
  [CreatePlayerSessions](https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreatePlayerSessions.html)
  . To create a player session, specify a game session ID, player ID, and
  optionally a set of player data. If successful, a slot is reserved in the game
  session for the player and a new `PlayerSessions` object is returned with a
  player session ID. The player references the player session ID when sending a
  connection request to the game session, and the game server can use it to
  validate the player reservation with the Amazon GameLift service. Player
  sessions cannot be updated.
  """
  @spec create_player_session(AWS.Client.t(), create_player_session_input(), Keyword.t()) ::
          {:ok, create_player_session_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_player_session_errors()}
  def create_player_session(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreatePlayerSession", input, options)
  end

  @doc """
  Reserves open slots in a game session for a group of players. New player
  sessions can be created in any game session with an open slot that is in
  `ACTIVE` status and has a player creation policy of `ACCEPT_ALL`. To add a
  single player to a game session, use
  [CreatePlayerSession](https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreatePlayerSession.html)
  To create player sessions, specify a game session ID and a list of player IDs.
  Optionally, provide a set of player data for each player ID. If successful, a
  slot is reserved in the game session for each player, and new `PlayerSession`
  objects are returned with player session IDs. Each player references their
  player session ID when sending a connection request to the game session, and
  the game server can use it to validate the player reservation with the Amazon
  GameLift service. Player sessions cannot be updated.
  """
  @spec create_player_sessions(AWS.Client.t(), create_player_sessions_input(), Keyword.t()) ::
          {:ok, create_player_sessions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_player_sessions_errors()}
  def create_player_sessions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreatePlayerSessions", input, options)
  end

  @doc """
  Creates a new script record for your Realtime Servers script. Realtime scripts
  are JavaScript that provide configuration settings and optional custom game
  logic for your game. The script is deployed when you create a Realtime Servers
  fleet to host your game sessions. Script logic is executed during an active
  game session. To create a new script record, specify a script name and provide
  the script file(s). The script files and all dependencies must be zipped into
  a single file. You can pull the zip file from either of these locations:
  """
  @spec create_script(AWS.Client.t(), create_script_input(), Keyword.t()) ::
          {:ok, create_script_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_script_errors()}
  def create_script(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateScript", input, options)
  end

  @doc """
  Requests authorization to create or delete a peer connection between the VPC for
  your Amazon GameLift fleet and a virtual private cloud (VPC) in your Amazon
  Web Services account. VPC peering enables the game servers on your fleet to
  communicate directly with other Amazon Web Services resources. After you've
  received authorization, use
  [CreateVpcPeeringConnection](https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateVpcPeeringConnection.html)
  to establish the peering connection. For more information, see [VPC Peering
  with Amazon GameLift
  Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html).
  You can peer with VPCs that are owned by any Amazon Web Services account you
  have access to, including the account that you use to manage your Amazon
  GameLift fleets. You cannot peer with VPCs that are in different Regions. To
  request authorization to create a connection, call this operation from the
  Amazon Web Services account with the VPC that you want to peer to your Amazon
  GameLift fleet. For example, to enable your game servers to retrieve data from
  a DynamoDB table, use the account that manages that DynamoDB resource.
  Identify the following values: (1) The ID of the VPC that you want to peer
  with, and (2) the ID of the Amazon Web Services account that you use to manage
  Amazon GameLift. If successful, VPC peering is authorized for the specified
  VPC.
  """
  @spec create_vpc_peering_authorization(
          AWS.Client.t(),
          create_vpc_peering_authorization_input(),
          Keyword.t()
        ) ::
          {:ok, create_vpc_peering_authorization_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_vpc_peering_authorization_errors()}
  def create_vpc_peering_authorization(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateVpcPeeringAuthorization", input, options)
  end

  @doc """
  Establishes a VPC peering connection between a virtual private cloud (VPC) in an
  Amazon Web Services account with the VPC for your Amazon GameLift fleet. VPC
  peering enables the game servers on your fleet to communicate directly with
  other Amazon Web Services resources. You can peer with VPCs in any Amazon Web
  Services account that you have access to, including the account that you use
  to manage your Amazon GameLift fleets. You cannot peer with VPCs that are in
  different Regions. For more information, see [VPC Peering with Amazon GameLift
  Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html).
  Before calling this operation to establish the peering connection, you first
  need to use
  [CreateVpcPeeringAuthorization](https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateVpcPeeringAuthorization.html)
  and identify the VPC you want to peer with. Once the authorization for the
  specified VPC is issued, you have 24 hours to establish the connection. These
  two operations handle all tasks necessary to peer the two VPCs, including
  acceptance, updating routing tables, etc. To establish the connection, call
  this operation from the Amazon Web Services account that is used to manage the
  Amazon GameLift fleets. Identify the following values: (1) The ID of the fleet
  you want to be enable a VPC peering connection for; (2) The Amazon Web
  Services account with the VPC that you want to peer with; and (3) The ID of
  the VPC you want to peer with. This operation is asynchronous. If successful,
  a connection request is created. You can use continuous polling to track the
  request's status using
  [DescribeVpcPeeringConnections](https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeVpcPeeringConnections.html)
  , or by monitoring fleet events for success or failure using
  [DescribeFleetEvents](https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetEvents.html)
  . **Related actions**
  """
  @spec create_vpc_peering_connection(
          AWS.Client.t(),
          create_vpc_peering_connection_input(),
          Keyword.t()
        ) ::
          {:ok, create_vpc_peering_connection_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_vpc_peering_connection_errors()}
  def create_vpc_peering_connection(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateVpcPeeringConnection", input, options)
  end

  @doc """
  Deletes an alias. This operation removes all record of the alias. Game clients
  attempting to access a server process using the deleted alias receive an
  error. To delete an alias, specify the alias ID to be deleted. **Related
  actions**
  """
  @spec delete_alias(AWS.Client.t(), delete_alias_input(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_alias_errors()}
  def delete_alias(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteAlias", input, options)
  end

  @doc """
  Deletes a build. This operation permanently deletes the build resource and any
  uploaded build files. Deleting a build does not affect the status of any
  active fleets using the build, but you can no longer create new fleets with
  the deleted build. To delete a build, specify the build ID.
  """
  @spec delete_build(AWS.Client.t(), delete_build_input(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_build_errors()}
  def delete_build(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteBuild", input, options)
  end

  @doc """
  **This operation is used with the Amazon GameLift containers feature, which is
  currently in public preview. ** Deletes a container group definition resource.
  You can delete a container group definition if there are no fleets using the
  definition.
  """
  @spec delete_container_group_definition(
          AWS.Client.t(),
          delete_container_group_definition_input(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_container_group_definition_errors()}
  def delete_container_group_definition(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteContainerGroupDefinition", input, options)
  end

  @doc """
  Deletes all resources and information related to a fleet and shuts down any
  currently running fleet instances, including those in remote locations. If the
  fleet being deleted has a VPC peering connection, you first need to get a
  valid authorization (good for 24 hours) by calling
  [CreateVpcPeeringAuthorization](https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateVpcPeeringAuthorization.html).
  You don't need to explicitly delete the VPC peering connection. To delete a
  fleet, specify the fleet ID to be terminated. During the deletion process, the
  fleet status is changed to `DELETING`. When completed, the status switches to
  `TERMINATED` and the fleet event `FLEET_DELETED` is emitted.
  """
  @spec delete_fleet(AWS.Client.t(), delete_fleet_input(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_fleet_errors()}
  def delete_fleet(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteFleet", input, options)
  end

  @doc """
  Removes locations from a multi-location fleet. When deleting a location, all
  game server process and all instances that are still active in the location
  are shut down. To delete fleet locations, identify the fleet ID and provide a
  list of the locations to be deleted.
  """
  @spec delete_fleet_locations(AWS.Client.t(), delete_fleet_locations_input(), Keyword.t()) ::
          {:ok, delete_fleet_locations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_fleet_locations_errors()}
  def delete_fleet_locations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteFleetLocations", input, options)
  end

  @doc """
  **This operation is used with the Amazon GameLift FleetIQ solution and game
  server groups.** Terminates a game server group and permanently deletes the
  game server group record. You have several options for how these resources are
  impacted when deleting the game server group. Depending on the type of delete
  operation selected, this operation might affect these resources:
  """
  @spec delete_game_server_group(AWS.Client.t(), delete_game_server_group_input(), Keyword.t()) ::
          {:ok, delete_game_server_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_game_server_group_errors()}
  def delete_game_server_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteGameServerGroup", input, options)
  end

  @doc """
  Deletes a game session queue. Once a queue is successfully deleted, unfulfilled
  [StartGameSessionPlacement](https://docs.aws.amazon.com/gamelift/latest/apireference/API_StartGameSessionPlacement.html)
  requests that reference the queue will fail. To delete a queue, specify the
  queue name.
  """
  @spec delete_game_session_queue(AWS.Client.t(), delete_game_session_queue_input(), Keyword.t()) ::
          {:ok, delete_game_session_queue_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_game_session_queue_errors()}
  def delete_game_session_queue(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteGameSessionQueue", input, options)
  end

  @doc """
  Deletes a custom location.
  """
  @spec delete_location(AWS.Client.t(), delete_location_input(), Keyword.t()) ::
          {:ok, delete_location_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_location_errors()}
  def delete_location(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteLocation", input, options)
  end

  @doc """
  Permanently removes a FlexMatch matchmaking configuration. To delete, specify
  the configuration name. A matchmaking configuration cannot be deleted if it is
  being used in any active matchmaking tickets.
  """
  @spec delete_matchmaking_configuration(
          AWS.Client.t(),
          delete_matchmaking_configuration_input(),
          Keyword.t()
        ) ::
          {:ok, delete_matchmaking_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_matchmaking_configuration_errors()}
  def delete_matchmaking_configuration(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteMatchmakingConfiguration", input, options)
  end

  @doc """
  Deletes an existing matchmaking rule set. To delete the rule set, provide the
  rule set name. Rule sets cannot be deleted if they are currently being used by
  a matchmaking configuration. **Learn more**
  """
  @spec delete_matchmaking_rule_set(
          AWS.Client.t(),
          delete_matchmaking_rule_set_input(),
          Keyword.t()
        ) ::
          {:ok, delete_matchmaking_rule_set_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_matchmaking_rule_set_errors()}
  def delete_matchmaking_rule_set(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteMatchmakingRuleSet", input, options)
  end

  @doc """
  Deletes a fleet scaling policy. Once deleted, the policy is no longer in force
  and Amazon GameLift removes all record of it. To delete a scaling policy,
  specify both the scaling policy name and the fleet ID it is associated with.
  """
  @spec delete_scaling_policy(AWS.Client.t(), delete_scaling_policy_input(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_scaling_policy_errors()}
  def delete_scaling_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteScalingPolicy", input, options)
  end

  @doc """
  Deletes a Realtime script. This operation permanently deletes the script record.
  If script files were uploaded, they are also deleted (files stored in an S3
  bucket are not deleted). To delete a script, specify the script ID. Before
  deleting a script, be sure to terminate all fleets that are deployed with the
  script being deleted. Fleet instances periodically check for script updates,
  and if the script record no longer exists, the instance will go into an error
  state and be unable to host game sessions.
  """
  @spec delete_script(AWS.Client.t(), delete_script_input(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_script_errors()}
  def delete_script(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteScript", input, options)
  end

  @doc """
  Cancels a pending VPC peering authorization for the specified VPC. If you need
  to delete an existing VPC peering connection, use
  [DeleteVpcPeeringConnection](https://docs.aws.amazon.com/gamelift/latest/apireference/API_DeleteVpcPeeringConnection.html).
  **Related actions**
  """
  @spec delete_vpc_peering_authorization(
          AWS.Client.t(),
          delete_vpc_peering_authorization_input(),
          Keyword.t()
        ) ::
          {:ok, delete_vpc_peering_authorization_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_vpc_peering_authorization_errors()}
  def delete_vpc_peering_authorization(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteVpcPeeringAuthorization", input, options)
  end

  @doc """
  Removes a VPC peering connection. To delete the connection, you must have a
  valid authorization for the VPC peering connection that you want to delete..
  Once a valid authorization exists, call this operation from the Amazon Web
  Services account that is used to manage the Amazon GameLift fleets. Identify
  the connection to delete by the connection ID and fleet ID. If successful, the
  connection is removed.
  """
  @spec delete_vpc_peering_connection(
          AWS.Client.t(),
          delete_vpc_peering_connection_input(),
          Keyword.t()
        ) ::
          {:ok, delete_vpc_peering_connection_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_vpc_peering_connection_errors()}
  def delete_vpc_peering_connection(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteVpcPeeringConnection", input, options)
  end

  @doc """
  **This operation has been expanded to use with the Amazon GameLift containers
  feature, which is currently in public preview.** Removes a compute resource
  from an Amazon GameLift Anywhere fleet or container fleet. Deregistered
  computes can no longer host game sessions through Amazon GameLift.
  """
  @spec deregister_compute(AWS.Client.t(), deregister_compute_input(), Keyword.t()) ::
          {:ok, deregister_compute_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deregister_compute_errors()}
  def deregister_compute(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeregisterCompute", input, options)
  end

  @doc """
  **This operation is used with the Amazon GameLift FleetIQ solution and game
  server groups.** Removes the game server from a game server group. As a result
  of this operation, the deregistered game server can no longer be claimed and
  will not be returned in a list of active game servers.
  """
  @spec deregister_game_server(AWS.Client.t(), deregister_game_server_input(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deregister_game_server_errors()}
  def deregister_game_server(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeregisterGameServer", input, options)
  end

  @doc """
  Retrieves properties for an alias. This operation returns all alias metadata and
  settings. To get an alias's target fleet ID only, use `ResolveAlias`. To get
  alias properties, specify the alias ID. If successful, the requested alias
  record is returned.
  """
  @spec describe_alias(AWS.Client.t(), describe_alias_input(), Keyword.t()) ::
          {:ok, describe_alias_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_alias_errors()}
  def describe_alias(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeAlias", input, options)
  end

  @doc """
  Retrieves properties for a custom game build. To request a build resource,
  specify a build ID. If successful, an object containing the build properties
  is returned. **Learn more**
  """
  @spec describe_build(AWS.Client.t(), describe_build_input(), Keyword.t()) ::
          {:ok, describe_build_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_build_errors()}
  def describe_build(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeBuild", input, options)
  end

  @doc """
  **This operation has been expanded to use with the Amazon GameLift containers
  feature, which is currently in public preview.** Retrieves properties for a
  compute resource in an Amazon GameLift fleet. To get a list of all computes in
  a fleet, call `ListCompute`.
  """
  @spec describe_compute(AWS.Client.t(), describe_compute_input(), Keyword.t()) ::
          {:ok, describe_compute_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_compute_errors()}
  def describe_compute(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeCompute", input, options)
  end

  @doc """
  **This operation is used with the Amazon GameLift containers feature, which is
  currently in public preview. ** Retrieves the properties of a container group
  definition, including all container definitions in the group.
  """
  @spec describe_container_group_definition(
          AWS.Client.t(),
          describe_container_group_definition_input(),
          Keyword.t()
        ) ::
          {:ok, describe_container_group_definition_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_container_group_definition_errors()}
  def describe_container_group_definition(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeContainerGroupDefinition", input, options)
  end

  @doc """
  Retrieves the instance limits and current utilization for an Amazon Web Services
  Region or location. Instance limits control the number of instances, per
  instance type, per location, that your Amazon Web Services account can use.
  Learn more at [Amazon EC2 Instance
  Types](http://aws.amazon.com/ec2/instance-types/). The information returned
  includes the maximum number of instances allowed and your account's current
  usage across all fleets. This information can affect your ability to scale
  your Amazon GameLift fleets. You can request a limit increase for your account
  by using the **Service limits** page in the Amazon GameLift console. Instance
  limits differ based on whether the instances are deployed in a fleet's home
  Region or in a remote location. For remote locations, limits also differ based
  on the combination of home Region and remote location. All requests must
  specify an Amazon Web Services Region (either explicitly or as your default
  settings). To get the limit for a remote location, you must also specify the
  location. For example, the following requests all return different results:
  """
  @spec describe_ec2_instance_limits(
          AWS.Client.t(),
          describe_ec2_instance_limits_input(),
          Keyword.t()
        ) ::
          {:ok, describe_ec2_instance_limits_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_ec2_instance_limits_errors()}
  def describe_ec2_instance_limits(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeEC2InstanceLimits", input, options)
  end

  @doc """
  **This operation has been expanded to use with the Amazon GameLift containers
  feature, which is currently in public preview.** Retrieves core fleet-wide
  properties for fleets in an Amazon Web Services Region. Properties include the
  computing hardware and deployment configuration for instances in the fleet.
  """
  @spec describe_fleet_attributes(AWS.Client.t(), describe_fleet_attributes_input(), Keyword.t()) ::
          {:ok, describe_fleet_attributes_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_fleet_attributes_errors()}
  def describe_fleet_attributes(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeFleetAttributes", input, options)
  end

  @doc """
  **This operation has been expanded to use with the Amazon GameLift containers
  feature, which is currently in public preview.** Retrieves the resource
  capacity settings for one or more fleets. For a container fleet, this
  operation also returns counts for replica container groups.
  """
  @spec describe_fleet_capacity(AWS.Client.t(), describe_fleet_capacity_input(), Keyword.t()) ::
          {:ok, describe_fleet_capacity_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_fleet_capacity_errors()}
  def describe_fleet_capacity(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeFleetCapacity", input, options)
  end

  @doc """
  Retrieves entries from a fleet's event log. Fleet events are initiated by
  changes in status, such as during fleet creation and termination, changes in
  capacity, etc. If a fleet has multiple locations, events are also initiated by
  changes to status and capacity in remote locations. You can specify a time
  range to limit the result set. Use the pagination parameters to retrieve
  results as a set of sequential pages.
  """
  @spec describe_fleet_events(AWS.Client.t(), describe_fleet_events_input(), Keyword.t()) ::
          {:ok, describe_fleet_events_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_fleet_events_errors()}
  def describe_fleet_events(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeFleetEvents", input, options)
  end

  @doc """
  Retrieves information on a fleet's remote locations, including life-cycle status
  and any suspended fleet activity. This operation can be used in the following
  ways:
  """
  @spec describe_fleet_location_attributes(
          AWS.Client.t(),
          describe_fleet_location_attributes_input(),
          Keyword.t()
        ) ::
          {:ok, describe_fleet_location_attributes_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_fleet_location_attributes_errors()}
  def describe_fleet_location_attributes(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeFleetLocationAttributes", input, options)
  end

  @doc """
  Retrieves the resource capacity settings for a fleet location. The data returned
  includes the current capacity (number of EC2 instances) and some scaling
  settings for the requested fleet location. For a container fleet, this
  operation also returns counts for replica container groups. Use this operation
  to retrieve capacity information for a fleet's remote location or home Region
  (you can also retrieve home Region capacity by calling
  `DescribeFleetCapacity`).
  """
  @spec describe_fleet_location_capacity(
          AWS.Client.t(),
          describe_fleet_location_capacity_input(),
          Keyword.t()
        ) ::
          {:ok, describe_fleet_location_capacity_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_fleet_location_capacity_errors()}
  def describe_fleet_location_capacity(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeFleetLocationCapacity", input, options)
  end

  @doc """
  Retrieves current usage data for a fleet location. Utilization data provides a
  snapshot of current game hosting activity at the requested location. Use this
  operation to retrieve utilization information for a fleet's remote location or
  home Region (you can also retrieve home Region utilization by calling
  `DescribeFleetUtilization`). To retrieve utilization data, identify a fleet
  and location.
  """
  @spec describe_fleet_location_utilization(
          AWS.Client.t(),
          describe_fleet_location_utilization_input(),
          Keyword.t()
        ) ::
          {:ok, describe_fleet_location_utilization_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_fleet_location_utilization_errors()}
  def describe_fleet_location_utilization(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeFleetLocationUtilization", input, options)
  end

  @doc """
  Retrieves a fleet's inbound connection permissions. Connection permissions
  specify IP addresses and port settings that incoming traffic can use to access
  server processes in the fleet. Game server processes that are running in the
  fleet must use a port that falls within this range. To connect to game server
  processes on a container fleet, the port settings should include one or more
  of the fleet's connection ports. Use this operation in the following ways:
  """
  @spec describe_fleet_port_settings(
          AWS.Client.t(),
          describe_fleet_port_settings_input(),
          Keyword.t()
        ) ::
          {:ok, describe_fleet_port_settings_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_fleet_port_settings_errors()}
  def describe_fleet_port_settings(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeFleetPortSettings", input, options)
  end

  @doc """
  Retrieves utilization statistics for one or more fleets. Utilization data
  provides a snapshot of how the fleet's hosting resources are currently being
  used. For fleets with remote locations, this operation retrieves data for the
  fleet's home Region only. See
  [DescribeFleetLocationUtilization](https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetLocationUtilization.html)
  to get utilization statistics for a fleet's remote locations. This operation
  can be used in the following ways:
  """
  @spec describe_fleet_utilization(
          AWS.Client.t(),
          describe_fleet_utilization_input(),
          Keyword.t()
        ) ::
          {:ok, describe_fleet_utilization_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_fleet_utilization_errors()}
  def describe_fleet_utilization(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeFleetUtilization", input, options)
  end

  @doc """
  **This operation is used with the Amazon GameLift FleetIQ solution and game
  server groups.** Retrieves information for a registered game server.
  Information includes game server status, health check info, and the instance
  that the game server is running on.
  """
  @spec describe_game_server(AWS.Client.t(), describe_game_server_input(), Keyword.t()) ::
          {:ok, describe_game_server_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_game_server_errors()}
  def describe_game_server(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeGameServer", input, options)
  end

  @doc """
  **This operation is used with the Amazon GameLift FleetIQ solution and game
  server groups.** Retrieves information on a game server group. This operation
  returns only properties related to Amazon GameLift FleetIQ. To view or update
  properties for the corresponding Auto Scaling group, such as launch template,
  auto scaling policies, and maximum/minimum group size, access the Auto Scaling
  group directly.
  """
  @spec describe_game_server_group(
          AWS.Client.t(),
          describe_game_server_group_input(),
          Keyword.t()
        ) ::
          {:ok, describe_game_server_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_game_server_group_errors()}
  def describe_game_server_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeGameServerGroup", input, options)
  end

  @doc """
  **This operation is used with the Amazon GameLift FleetIQ solution and game
  server groups.** Retrieves status information about the Amazon EC2 instances
  associated with a Amazon GameLift FleetIQ game server group. Use this
  operation to detect when instances are active or not available to host new
  game servers.
  """
  @spec describe_game_server_instances(
          AWS.Client.t(),
          describe_game_server_instances_input(),
          Keyword.t()
        ) ::
          {:ok, describe_game_server_instances_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_game_server_instances_errors()}
  def describe_game_server_instances(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeGameServerInstances", input, options)
  end

  @doc """
  Retrieves additional game session properties, including the game session
  protection policy in force, a set of one or more game sessions in a specific
  fleet location. You can optionally filter the results by current game session
  status. This operation can be used in the following ways:
  """
  @spec describe_game_session_details(
          AWS.Client.t(),
          describe_game_session_details_input(),
          Keyword.t()
        ) ::
          {:ok, describe_game_session_details_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_game_session_details_errors()}
  def describe_game_session_details(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeGameSessionDetails", input, options)
  end

  @doc """
  Retrieves information, including current status, about a game session placement
  request. To get game session placement details, specify the placement ID.
  """
  @spec describe_game_session_placement(
          AWS.Client.t(),
          describe_game_session_placement_input(),
          Keyword.t()
        ) ::
          {:ok, describe_game_session_placement_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_game_session_placement_errors()}
  def describe_game_session_placement(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeGameSessionPlacement", input, options)
  end

  @doc """
  Retrieves the properties for one or more game session queues. When requesting
  multiple queues, use the pagination parameters to retrieve results as a set of
  sequential pages. When specifying a list of queues, objects are returned only
  for queues that currently exist in the Region. **Learn more**
  """
  @spec describe_game_session_queues(
          AWS.Client.t(),
          describe_game_session_queues_input(),
          Keyword.t()
        ) ::
          {:ok, describe_game_session_queues_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_game_session_queues_errors()}
  def describe_game_session_queues(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeGameSessionQueues", input, options)
  end

  @doc """
  Retrieves a set of one or more game sessions in a specific fleet location. You
  can optionally filter the results by current game session status. This
  operation can be used in the following ways:
  """
  @spec describe_game_sessions(AWS.Client.t(), describe_game_sessions_input(), Keyword.t()) ::
          {:ok, describe_game_sessions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_game_sessions_errors()}
  def describe_game_sessions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeGameSessions", input, options)
  end

  @doc """
  Retrieves information about the EC2 instances in an Amazon GameLift managed
  fleet, including instance ID, connection data, and status. You can use this
  operation with a multi-location fleet to get location-specific instance
  information. As an alternative, use the operations `ListCompute` and
  `DescribeCompute` to retrieve information for compute resources, including EC2
  and Anywhere fleets. You can call this operation in the following ways:
  """
  @spec describe_instances(AWS.Client.t(), describe_instances_input(), Keyword.t()) ::
          {:ok, describe_instances_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_instances_errors()}
  def describe_instances(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeInstances", input, options)
  end

  @doc """
  Retrieves one or more matchmaking tickets. Use this operation to retrieve ticket
  information, including--after a successful match is made--connection
  information for the resulting new game session. To request matchmaking
  tickets, provide a list of up to 10 ticket IDs. If the request is successful,
  a ticket object is returned for each requested ID that currently exists.
  """
  @spec describe_matchmaking(AWS.Client.t(), describe_matchmaking_input(), Keyword.t()) ::
          {:ok, describe_matchmaking_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_matchmaking_errors()}
  def describe_matchmaking(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeMatchmaking", input, options)
  end

  @doc """
  Retrieves the details of FlexMatch matchmaking configurations. This operation
  offers the following options: (1) retrieve all matchmaking configurations, (2)
  retrieve configurations for a specified list, or (3) retrieve all
  configurations that use a specified rule set name. When requesting multiple
  items, use the pagination parameters to retrieve results as a set of
  sequential pages.
  """
  @spec describe_matchmaking_configurations(
          AWS.Client.t(),
          describe_matchmaking_configurations_input(),
          Keyword.t()
        ) ::
          {:ok, describe_matchmaking_configurations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_matchmaking_configurations_errors()}
  def describe_matchmaking_configurations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeMatchmakingConfigurations", input, options)
  end

  @doc """
  Retrieves the details for FlexMatch matchmaking rule sets. You can request all
  existing rule sets for the Region, or provide a list of one or more rule set
  names. When requesting multiple items, use the pagination parameters to
  retrieve results as a set of sequential pages. If successful, a rule set is
  returned for each requested name. **Learn more**
  """
  @spec describe_matchmaking_rule_sets(
          AWS.Client.t(),
          describe_matchmaking_rule_sets_input(),
          Keyword.t()
        ) ::
          {:ok, describe_matchmaking_rule_sets_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_matchmaking_rule_sets_errors()}
  def describe_matchmaking_rule_sets(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeMatchmakingRuleSets", input, options)
  end

  @doc """
  Retrieves properties for one or more player sessions. This action can be used in
  the following ways:
  """
  @spec describe_player_sessions(AWS.Client.t(), describe_player_sessions_input(), Keyword.t()) ::
          {:ok, describe_player_sessions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_player_sessions_errors()}
  def describe_player_sessions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribePlayerSessions", input, options)
  end

  @doc """
  Retrieves a fleet's runtime configuration settings. The runtime configuration
  determines which server processes run, and how, on computes in the fleet. For
  managed EC2 fleets, the runtime configuration describes server processes that
  run on each fleet instance. For container fleets, the runtime configuration
  describes server processes that run in each replica container group. You can
  update a fleet's runtime configuration at any time using
  `UpdateRuntimeConfiguration`. To get the current runtime configuration for a
  fleet, provide the fleet ID.
  """
  @spec describe_runtime_configuration(
          AWS.Client.t(),
          describe_runtime_configuration_input(),
          Keyword.t()
        ) ::
          {:ok, describe_runtime_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_runtime_configuration_errors()}
  def describe_runtime_configuration(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeRuntimeConfiguration", input, options)
  end

  @doc """
  Retrieves all scaling policies applied to a fleet. To get a fleet's scaling
  policies, specify the fleet ID. You can filter this request by policy status,
  such as to retrieve only active scaling policies. Use the pagination
  parameters to retrieve results as a set of sequential pages. If successful,
  set of `ScalingPolicy` objects is returned for the fleet.
  """
  @spec describe_scaling_policies(AWS.Client.t(), describe_scaling_policies_input(), Keyword.t()) ::
          {:ok, describe_scaling_policies_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_scaling_policies_errors()}
  def describe_scaling_policies(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeScalingPolicies", input, options)
  end

  @doc """
  Retrieves properties for a Realtime script. To request a script record, specify
  the script ID. If successful, an object containing the script properties is
  returned.
  """
  @spec describe_script(AWS.Client.t(), describe_script_input(), Keyword.t()) ::
          {:ok, describe_script_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_script_errors()}
  def describe_script(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeScript", input, options)
  end

  @doc """
  Retrieves valid VPC peering authorizations that are pending for the Amazon Web
  Services account. This operation returns all VPC peering authorizations and
  requests for peering. This includes those initiated and received by this
  account. **Related actions**
  """
  @spec describe_vpc_peering_authorizations(
          AWS.Client.t(),
          describe_vpc_peering_authorizations_input(),
          Keyword.t()
        ) ::
          {:ok, describe_vpc_peering_authorizations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_vpc_peering_authorizations_errors()}
  def describe_vpc_peering_authorizations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeVpcPeeringAuthorizations", input, options)
  end

  @doc """
  Retrieves information on VPC peering connections. Use this operation to get
  peering information for all fleets or for one specific fleet ID. To retrieve
  connection information, call this operation from the Amazon Web Services
  account that is used to manage the Amazon GameLift fleets. Specify a fleet ID
  or leave the parameter empty to retrieve all connection records. If
  successful, the retrieved information includes both active and pending
  connections. Active connections identify the IpV4 CIDR block that the VPC uses
  to connect.
  """
  @spec describe_vpc_peering_connections(
          AWS.Client.t(),
          describe_vpc_peering_connections_input(),
          Keyword.t()
        ) ::
          {:ok, describe_vpc_peering_connections_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_vpc_peering_connections_errors()}
  def describe_vpc_peering_connections(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeVpcPeeringConnections", input, options)
  end

  @doc """
  **This operation has been expanded to use with the Amazon GameLift containers
  feature, which is currently in public preview.** Requests authorization to
  remotely connect to a hosting resource in a Amazon GameLift managed fleet.
  This operation is not used with Amazon GameLift Anywhere fleets
  """
  @spec get_compute_access(AWS.Client.t(), get_compute_access_input(), Keyword.t()) ::
          {:ok, get_compute_access_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_compute_access_errors()}
  def get_compute_access(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetComputeAccess", input, options)
  end

  @doc """
  Requests an authentication token from Amazon GameLift for a compute resource in
  an Amazon GameLift Anywhere fleet or container fleet. Game servers that are
  running on the compute use this token to communicate with the Amazon GameLift
  service, such as when calling the Amazon GameLift server SDK action
  `InitSDK()`. Authentication tokens are valid for a limited time span, so you
  need to request a fresh token before the current token expires. Use this
  operation based on the fleet compute type:
  """
  @spec get_compute_auth_token(AWS.Client.t(), get_compute_auth_token_input(), Keyword.t()) ::
          {:ok, get_compute_auth_token_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_compute_auth_token_errors()}
  def get_compute_auth_token(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetComputeAuthToken", input, options)
  end

  @doc """
  Retrieves the location of stored game session logs for a specified game session
  on Amazon GameLift managed fleets. When a game session is terminated, Amazon
  GameLift automatically stores the logs in Amazon S3 and retains them for 14
  days. Use this URL to download the logs.
  """
  @spec get_game_session_log_url(AWS.Client.t(), get_game_session_log_url_input(), Keyword.t()) ::
          {:ok, get_game_session_log_url_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_game_session_log_url_errors()}
  def get_game_session_log_url(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetGameSessionLogUrl", input, options)
  end

  @doc """
  Requests authorization to remotely connect to an instance in an Amazon GameLift
  managed fleet. Use this operation to connect to instances with game servers
  that use Amazon GameLift server SDK 4.x or earlier. To connect to instances
  with game servers that use server SDK 5.x or later, call `GetComputeAccess`.
  To request access to an instance, specify IDs for the instance and the fleet
  it belongs to. You can retrieve instance IDs for a fleet by calling
  [DescribeInstances](https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeInstances.html)
  with the fleet ID. If successful, this operation returns an IP address and
  credentials. The returned credentials match the operating system of the
  instance, as follows:
  """
  @spec get_instance_access(AWS.Client.t(), get_instance_access_input(), Keyword.t()) ::
          {:ok, get_instance_access_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_instance_access_errors()}
  def get_instance_access(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetInstanceAccess", input, options)
  end

  @doc """
  Retrieves all aliases for this Amazon Web Services account. You can filter the
  result set by alias name and/or routing strategy type. Use the pagination
  parameters to retrieve results in sequential pages. Returned aliases are not
  listed in any particular order.
  """
  @spec list_aliases(AWS.Client.t(), list_aliases_input(), Keyword.t()) ::
          {:ok, list_aliases_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_aliases_errors()}
  def list_aliases(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAliases", input, options)
  end

  @doc """
  Retrieves build resources for all builds associated with the Amazon Web Services
  account in use. You can limit results to builds that are in a specific status
  by using the `Status` parameter. Use the pagination parameters to retrieve
  results in a set of sequential pages. Build resources are not listed in any
  particular order.
  """
  @spec list_builds(AWS.Client.t(), list_builds_input(), Keyword.t()) ::
          {:ok, list_builds_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_builds_errors()}
  def list_builds(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListBuilds", input, options)
  end

  @doc """
  **This operation has been expanded to use with the Amazon GameLift containers
  feature, which is currently in public preview.** Retrieves information on the
  compute resources in an Amazon GameLift fleet.
  """
  @spec list_compute(AWS.Client.t(), list_compute_input(), Keyword.t()) ::
          {:ok, list_compute_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_compute_errors()}
  def list_compute(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListCompute", input, options)
  end

  @doc """
  **This operation is used with the Amazon GameLift containers feature, which is
  currently in public preview. ** Retrieves all container group definitions for
  the Amazon Web Services account and Amazon Web Services Region that are
  currently in use. You can filter the result set by the container groups'
  scheduling strategy. Use the pagination parameters to retrieve results in a
  set of sequential pages.
  """
  @spec list_container_group_definitions(
          AWS.Client.t(),
          list_container_group_definitions_input(),
          Keyword.t()
        ) ::
          {:ok, list_container_group_definitions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_container_group_definitions_errors()}
  def list_container_group_definitions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListContainerGroupDefinitions", input, options)
  end

  @doc """
  **This operation has been expanded to use with the Amazon GameLift containers
  feature, which is currently in public preview.** Retrieves a collection of
  fleet resources in an Amazon Web Services Region. You can filter the result
  set to find only those fleets that are deployed with a specific build or
  script. For fleets that have multiple locations, this operation retrieves
  fleets based on their home Region only.
  """
  @spec list_fleets(AWS.Client.t(), list_fleets_input(), Keyword.t()) ::
          {:ok, list_fleets_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_fleets_errors()}
  def list_fleets(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListFleets", input, options)
  end

  @doc """
  Lists a game server groups.
  """
  @spec list_game_server_groups(AWS.Client.t(), list_game_server_groups_input(), Keyword.t()) ::
          {:ok, list_game_server_groups_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_game_server_groups_errors()}
  def list_game_server_groups(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListGameServerGroups", input, options)
  end

  @doc """
  **This operation is used with the Amazon GameLift FleetIQ solution and game
  server groups.** Retrieves information on all game servers that are currently
  active in a specified game server group. You can opt to sort the list by game
  server age. Use the pagination parameters to retrieve results in a set of
  sequential segments.
  """
  @spec list_game_servers(AWS.Client.t(), list_game_servers_input(), Keyword.t()) ::
          {:ok, list_game_servers_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_game_servers_errors()}
  def list_game_servers(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListGameServers", input, options)
  end

  @doc """
  Lists all custom and Amazon Web Services locations.
  """
  @spec list_locations(AWS.Client.t(), list_locations_input(), Keyword.t()) ::
          {:ok, list_locations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_locations_errors()}
  def list_locations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListLocations", input, options)
  end

  @doc """
  Retrieves script records for all Realtime scripts that are associated with the
  Amazon Web Services account in use. **Learn more**
  """
  @spec list_scripts(AWS.Client.t(), list_scripts_input(), Keyword.t()) ::
          {:ok, list_scripts_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_scripts_errors()}
  def list_scripts(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListScripts", input, options)
  end

  @doc """
  Retrieves all tags assigned to a Amazon GameLift resource. Use resource tags to
  organize Amazon Web Services resources for a range of purposes. This operation
  handles the permissions necessary to manage tags for Amazon GameLift resources
  that support tagging. To list tags for a resource, specify the unique ARN
  value for the resource.
  """
  @spec list_tags_for_resource(AWS.Client.t(), list_tags_for_resource_request(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Creates or updates a scaling policy for a fleet. Scaling policies are used to
  automatically scale a fleet's hosting capacity to meet player demand. An
  active scaling policy instructs Amazon GameLift to track a fleet metric and
  automatically change the fleet's capacity when a certain threshold is reached.
  There are two types of scaling policies: target-based and rule-based. Use a
  target-based policy to quickly and efficiently manage fleet scaling; this
  option is the most commonly used. Use rule-based policies when you need to
  exert fine-grained control over auto-scaling. Fleets can have multiple scaling
  policies of each type in force at the same time; you can have one target-based
  policy, one or multiple rule-based scaling policies, or both. We recommend
  caution, however, because multiple auto-scaling policies can have unintended
  consequences.
  """
  @spec put_scaling_policy(AWS.Client.t(), put_scaling_policy_input(), Keyword.t()) ::
          {:ok, put_scaling_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_scaling_policy_errors()}
  def put_scaling_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutScalingPolicy", input, options)
  end

  @doc """
  **This operation has been expanded to use with the Amazon GameLift containers
  feature, which is currently in public preview.** Registers a compute resource
  in an Amazon GameLift fleet. Register computes with an Amazon GameLift
  Anywhere fleet or a container fleet.
  """
  @spec register_compute(AWS.Client.t(), register_compute_input(), Keyword.t()) ::
          {:ok, register_compute_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_compute_errors()}
  def register_compute(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RegisterCompute", input, options)
  end

  @doc """
  **This operation is used with the Amazon GameLift FleetIQ solution and game
  server groups.** Creates a new game server resource and notifies Amazon
  GameLift FleetIQ that the game server is ready to host gameplay and players.
  This operation is called by a game server process that is running on an
  instance in a game server group. Registering game servers enables Amazon
  GameLift FleetIQ to track available game servers and enables game clients and
  services to claim a game server for a new game session.
  """
  @spec register_game_server(AWS.Client.t(), register_game_server_input(), Keyword.t()) ::
          {:ok, register_game_server_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_game_server_errors()}
  def register_game_server(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RegisterGameServer", input, options)
  end

  @doc """
  Retrieves a fresh set of credentials for use when uploading a new set of game
  build files to Amazon GameLift's Amazon S3. This is done as part of the build
  creation process; see
  [CreateBuild](https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateBuild.html).
  To request new credentials, specify the build ID as returned with an initial
  `CreateBuild` request. If successful, a new set of credentials are returned,
  along with the S3 storage location associated with the build ID. **Learn
  more**
  """
  @spec request_upload_credentials(
          AWS.Client.t(),
          request_upload_credentials_input(),
          Keyword.t()
        ) ::
          {:ok, request_upload_credentials_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, request_upload_credentials_errors()}
  def request_upload_credentials(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RequestUploadCredentials", input, options)
  end

  @doc """
  Attempts to retrieve a fleet ID that is associated with an alias. Specify a
  unique alias identifier. If the alias has a `SIMPLE` routing strategy, Amazon
  GameLift returns a fleet ID. If the alias has a `TERMINAL` routing strategy,
  the result is a `TerminalRoutingStrategyException`.
  """
  @spec resolve_alias(AWS.Client.t(), resolve_alias_input(), Keyword.t()) ::
          {:ok, resolve_alias_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resolve_alias_errors()}
  def resolve_alias(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ResolveAlias", input, options)
  end

  @doc """
  **This operation is used with the Amazon GameLift FleetIQ solution and game
  server groups.** Reinstates activity on a game server group after it has been
  suspended. A game server group might be suspended by the
  [SuspendGameServerGroup](gamelift/latest/apireference/API_SuspendGameServerGroup.html)
  operation, or it might be suspended involuntarily due to a configuration
  problem. In the second case, you can manually resume activity on the group
  once the configuration problem has been resolved. Refer to the game server
  group status and status reason for more information on why group activity is
  suspended. To resume activity, specify a game server group ARN and the type of
  activity to be resumed. If successful, a `GameServerGroup` object is returned
  showing that the resumed activity is no longer listed in `SuspendedActions`.
  """
  @spec resume_game_server_group(AWS.Client.t(), resume_game_server_group_input(), Keyword.t()) ::
          {:ok, resume_game_server_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resume_game_server_group_errors()}
  def resume_game_server_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ResumeGameServerGroup", input, options)
  end

  @doc """
  Retrieves all active game sessions that match a set of search criteria and sorts
  them into a specified order. This operation is not designed to continually
  track game session status because that practice can cause you to exceed your
  API limit and generate errors. Instead, configure an Amazon Simple
  Notification Service (Amazon SNS) topic to receive notifications from a
  matchmaker or a game session placement queue.
  """
  @spec search_game_sessions(AWS.Client.t(), search_game_sessions_input(), Keyword.t()) ::
          {:ok, search_game_sessions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_game_sessions_errors()}
  def search_game_sessions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "SearchGameSessions", input, options)
  end

  @doc """
  Resumes certain types of activity on fleet instances that were suspended with
  [StopFleetActions](https://docs.aws.amazon.com/gamelift/latest/apireference/API_StopFleetActions.html).
  For multi-location fleets, fleet actions are managed separately for each
  location. Currently, this operation is used to restart a fleet's auto-scaling
  activity. This operation can be used in the following ways:
  """
  @spec start_fleet_actions(AWS.Client.t(), start_fleet_actions_input(), Keyword.t()) ::
          {:ok, start_fleet_actions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_fleet_actions_errors()}
  def start_fleet_actions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartFleetActions", input, options)
  end

  @doc """
  Places a request for a new game session in a queue. When processing a placement
  request, Amazon GameLift searches for available resources on the queue's
  destinations, scanning each until it finds resources or the placement request
  times out. A game session placement request can also request player sessions.
  When a new game session is successfully created, Amazon GameLift creates a
  player session for each player included in the request.
  """
  @spec start_game_session_placement(
          AWS.Client.t(),
          start_game_session_placement_input(),
          Keyword.t()
        ) ::
          {:ok, start_game_session_placement_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_game_session_placement_errors()}
  def start_game_session_placement(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartGameSessionPlacement", input, options)
  end

  @doc """
  Finds new players to fill open slots in currently running game sessions. The
  backfill match process is essentially identical to the process of forming new
  matches. Backfill requests use the same matchmaker that was used to make the
  original match, and they provide matchmaking data for all players currently in
  the game session. FlexMatch uses this information to select new players so
  that backfilled match continues to meet the original match requirements. When
  using FlexMatch with Amazon GameLift managed hosting, you can request a
  backfill match from a client service by calling this operation with a
  `GameSessions` ID. You also have the option of making backfill requests
  directly from your game server. In response to a request, FlexMatch creates
  player sessions for the new players, updates the `GameSession` resource, and
  sends updated matchmaking data to the game server. You can request a backfill
  match at any point after a game session is started. Each game session can have
  only one active backfill request at a time; a subsequent request automatically
  replaces the earlier request.
  """
  @spec start_match_backfill(AWS.Client.t(), start_match_backfill_input(), Keyword.t()) ::
          {:ok, start_match_backfill_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_match_backfill_errors()}
  def start_match_backfill(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartMatchBackfill", input, options)
  end

  @doc """
  Uses FlexMatch to create a game match for a group of players based on custom
  matchmaking rules. With games that use Amazon GameLift managed hosting, this
  operation also triggers Amazon GameLift to find hosting resources and start a
  new game session for the new match. Each matchmaking request includes
  information on one or more players and specifies the FlexMatch matchmaker to
  use. When a request is for multiple players, FlexMatch attempts to build a
  match that includes all players in the request, placing them in the same team
  and finding additional players as needed to fill the match. To start
  matchmaking, provide a unique ticket ID, specify a matchmaking configuration,
  and include the players to be matched. You must also include any player
  attributes that are required by the matchmaking configuration's rule set. If
  successful, a matchmaking ticket is returned with status set to `QUEUED`.
  """
  @spec start_matchmaking(AWS.Client.t(), start_matchmaking_input(), Keyword.t()) ::
          {:ok, start_matchmaking_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_matchmaking_errors()}
  def start_matchmaking(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartMatchmaking", input, options)
  end

  @doc """
  Suspends certain types of activity in a fleet location. Currently, this
  operation is used to stop auto-scaling activity. For multi-location fleets,
  fleet actions are managed separately for each location. Stopping fleet actions
  has several potential purposes. It allows you to temporarily stop auto-scaling
  activity but retain your scaling policies for use in the future. For
  multi-location fleets, you can set up fleet-wide auto-scaling, and then opt
  out of it for certain locations.
  """
  @spec stop_fleet_actions(AWS.Client.t(), stop_fleet_actions_input(), Keyword.t()) ::
          {:ok, stop_fleet_actions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_fleet_actions_errors()}
  def stop_fleet_actions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopFleetActions", input, options)
  end

  @doc """
  Cancels a game session placement that is in `PENDING` status. To stop a
  placement, provide the placement ID values. If successful, the placement is
  moved to `CANCELLED` status.
  """
  @spec stop_game_session_placement(
          AWS.Client.t(),
          stop_game_session_placement_input(),
          Keyword.t()
        ) ::
          {:ok, stop_game_session_placement_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_game_session_placement_errors()}
  def stop_game_session_placement(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopGameSessionPlacement", input, options)
  end

  @doc """
  Cancels a matchmaking ticket or match backfill ticket that is currently being
  processed. To stop the matchmaking operation, specify the ticket ID. If
  successful, work on the ticket is stopped, and the ticket status is changed to
  `CANCELLED`. This call is also used to turn off automatic backfill for an
  individual game session. This is for game sessions that are created with a
  matchmaking configuration that has automatic backfill enabled. The ticket ID
  is included in the `MatchmakerData` of an updated game session object, which
  is provided to the game server.
  """
  @spec stop_matchmaking(AWS.Client.t(), stop_matchmaking_input(), Keyword.t()) ::
          {:ok, stop_matchmaking_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_matchmaking_errors()}
  def stop_matchmaking(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopMatchmaking", input, options)
  end

  @doc """
  **This operation is used with the Amazon GameLift FleetIQ solution and game
  server groups.** Temporarily stops activity on a game server group without
  terminating instances or the game server group. You can restart activity by
  calling
  [ResumeGameServerGroup](gamelift/latest/apireference/API_ResumeGameServerGroup.html).
  You can suspend the following activity:
  """
  @spec suspend_game_server_group(AWS.Client.t(), suspend_game_server_group_input(), Keyword.t()) ::
          {:ok, suspend_game_server_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, suspend_game_server_group_errors()}
  def suspend_game_server_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "SuspendGameServerGroup", input, options)
  end

  @doc """
  Assigns a tag to an Amazon GameLift resource. You can use tags to organize
  resources, create IAM permissions policies to manage access to groups of
  resources, customize Amazon Web Services cost breakdowns, and more. This
  operation handles the permissions necessary to manage tags for Amazon GameLift
  resources that support tagging. To add a tag to a resource, specify the unique
  ARN value for the resource and provide a tag list containing one or more tags.
  The operation succeeds even if the list includes tags that are already
  assigned to the resource.
  """
  @spec tag_resource(AWS.Client.t(), tag_resource_request(), Keyword.t()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes a tag assigned to a Amazon GameLift resource. You can use resource tags
  to organize Amazon Web Services resources for a range of purposes. This
  operation handles the permissions necessary to manage tags for Amazon GameLift
  resources that support tagging. To remove a tag from a resource, specify the
  unique ARN value for the resource and provide a string list containing one or
  more tags to remove. This operation succeeds even if the list includes tags
  that aren't assigned to the resource.
  """
  @spec untag_resource(AWS.Client.t(), untag_resource_request(), Keyword.t()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates properties for an alias. Specify the unique identifier of the alias to
  be updated and the new property values. When reassigning an alias to a new
  fleet, provide an updated routing strategy. If successful, the updated alias
  record is returned. **Related actions**
  """
  @spec update_alias(AWS.Client.t(), update_alias_input(), Keyword.t()) ::
          {:ok, update_alias_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_alias_errors()}
  def update_alias(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateAlias", input, options)
  end

  @doc """
  Updates metadata in a build resource, including the build name and version. To
  update the metadata, specify the build ID to update and provide the new
  values. If successful, a build object containing the updated metadata is
  returned. **Learn more**
  """
  @spec update_build(AWS.Client.t(), update_build_input(), Keyword.t()) ::
          {:ok, update_build_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_build_errors()}
  def update_build(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateBuild", input, options)
  end

  @doc """
  Updates a fleet's mutable attributes, such as game session protection and
  resource creation limits. To update fleet attributes, specify the fleet ID and
  the property values that you want to change. If successful, Amazon GameLift
  returns the identifiers for the updated fleet.
  """
  @spec update_fleet_attributes(AWS.Client.t(), update_fleet_attributes_input(), Keyword.t()) ::
          {:ok, update_fleet_attributes_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_fleet_attributes_errors()}
  def update_fleet_attributes(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateFleetAttributes", input, options)
  end

  @doc """
  **This operation has been expanded to use with the Amazon GameLift containers
  feature, which is currently in public preview.** Updates capacity settings for
  a managed EC2 fleet or container fleet. For these fleets, you adjust capacity
  by changing the number of instances in the fleet. Fleet capacity determines
  the number of game sessions and players that the fleet can host based on its
  configuration. For fleets with multiple locations, use this operation to
  manage capacity settings in each location individually.
  """
  @spec update_fleet_capacity(AWS.Client.t(), update_fleet_capacity_input(), Keyword.t()) ::
          {:ok, update_fleet_capacity_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_fleet_capacity_errors()}
  def update_fleet_capacity(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateFleetCapacity", input, options)
  end

  @doc """
  Updates permissions that allow inbound traffic to connect to game sessions in
  the fleet. To update settings, specify the fleet ID to be updated and specify
  the changes to be made. List the permissions you want to add in
  `InboundPermissionAuthorizations`, and permissions you want to remove in
  `InboundPermissionRevocations`. Permissions to be removed must match existing
  fleet permissions.
  """
  @spec update_fleet_port_settings(
          AWS.Client.t(),
          update_fleet_port_settings_input(),
          Keyword.t()
        ) ::
          {:ok, update_fleet_port_settings_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_fleet_port_settings_errors()}
  def update_fleet_port_settings(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateFleetPortSettings", input, options)
  end

  @doc """
  **This operation is used with the Amazon GameLift FleetIQ solution and game
  server groups.** Updates information about a registered game server to help
  Amazon GameLift FleetIQ track game server availability. This operation is
  called by a game server process that is running on an instance in a game
  server group.
  """
  @spec update_game_server(AWS.Client.t(), update_game_server_input(), Keyword.t()) ::
          {:ok, update_game_server_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_game_server_errors()}
  def update_game_server(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateGameServer", input, options)
  end

  @doc """
  **This operation is used with the Amazon GameLift FleetIQ solution and game
  server groups.** Updates Amazon GameLift FleetIQ-specific properties for a
  game server group. Many Auto Scaling group properties are updated on the Auto
  Scaling group directly, including the launch template, Auto Scaling policies,
  and maximum/minimum/desired instance counts.
  """
  @spec update_game_server_group(AWS.Client.t(), update_game_server_group_input(), Keyword.t()) ::
          {:ok, update_game_server_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_game_server_group_errors()}
  def update_game_server_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateGameServerGroup", input, options)
  end

  @doc """
  Updates the mutable properties of a game session. To update a game session,
  specify the game session ID and the values you want to change.
  """
  @spec update_game_session(AWS.Client.t(), update_game_session_input(), Keyword.t()) ::
          {:ok, update_game_session_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_game_session_errors()}
  def update_game_session(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateGameSession", input, options)
  end

  @doc """
  Updates the configuration of a game session queue, which determines how the
  queue processes new game session requests. To update settings, specify the
  queue name to be updated and provide the new settings. When updating
  destinations, provide a complete list of destinations. **Learn more**
  """
  @spec update_game_session_queue(AWS.Client.t(), update_game_session_queue_input(), Keyword.t()) ::
          {:ok, update_game_session_queue_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_game_session_queue_errors()}
  def update_game_session_queue(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateGameSessionQueue", input, options)
  end

  @doc """
  Updates settings for a FlexMatch matchmaking configuration. These changes affect
  all matches and game sessions that are created after the update. To update
  settings, specify the configuration name to be updated and provide the new
  settings. **Learn more**
  """
  @spec update_matchmaking_configuration(
          AWS.Client.t(),
          update_matchmaking_configuration_input(),
          Keyword.t()
        ) ::
          {:ok, update_matchmaking_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_matchmaking_configuration_errors()}
  def update_matchmaking_configuration(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateMatchmakingConfiguration", input, options)
  end

  @doc """
  Updates the runtime configuration for the specified fleet. The runtime
  configuration tells Amazon GameLift how to launch server processes on computes
  in the fleet. For managed EC2 fleets, it determines what server processes to
  run on each fleet instance. For container fleets, it describes what server
  processes to run in each replica container group. You can update a fleet's
  runtime configuration at any time after the fleet is created; it does not need
  to be in `ACTIVE` status. To update runtime configuration, specify the fleet
  ID and provide a `RuntimeConfiguration` with an updated set of server process
  configurations.
  """
  @spec update_runtime_configuration(
          AWS.Client.t(),
          update_runtime_configuration_input(),
          Keyword.t()
        ) ::
          {:ok, update_runtime_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_runtime_configuration_errors()}
  def update_runtime_configuration(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateRuntimeConfiguration", input, options)
  end

  @doc """
  Updates Realtime script metadata and content. To update script metadata, specify
  the script ID and provide updated name and/or version values.
  """
  @spec update_script(AWS.Client.t(), update_script_input(), Keyword.t()) ::
          {:ok, update_script_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_script_errors()}
  def update_script(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateScript", input, options)
  end

  @doc """
  Validates the syntax of a matchmaking rule or rule set. This operation checks
  that the rule set is using syntactically correct JSON and that it conforms to
  allowed property expressions. To validate syntax, provide a rule set JSON
  string. **Learn more**
  """
  @spec validate_matchmaking_rule_set(
          AWS.Client.t(),
          validate_matchmaking_rule_set_input(),
          Keyword.t()
        ) ::
          {:ok, validate_matchmaking_rule_set_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, validate_matchmaking_rule_set_errors()}
  def validate_matchmaking_rule_set(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ValidateMatchmakingRuleSet", input, options)
  end
end
