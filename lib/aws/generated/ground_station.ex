# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.GroundStation do
  @moduledoc """
  Welcome to the AWS Ground Station API Reference. AWS Ground Station is a fully
  managed service that enables you to control satellite communications, downlink
  and process satellite data, and scale your satellite operations efficiently
  and cost-effectively without having to build or manage your own ground station
  infrastructure.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      list_configs_request() :: %{
        "maxResults" => integer(),
        "nextToken" => String.t()
      }

  """
  @type list_configs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      register_agent_response() :: %{
        optional("agentId") => String.t()
      }

  """
  @type register_agent_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      antenna_downlink_demod_decode_config() :: %{
        "decodeConfig" => decode_config(),
        "demodulationConfig" => demodulation_config(),
        "spectrumConfig" => spectrum_config()
      }

  """
  @type antenna_downlink_demod_decode_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      component_status_data() :: %{
        "bytesReceived" => [float()],
        "bytesSent" => [float()],
        "capabilityArn" => String.t(),
        "componentType" => String.t(),
        "dataflowId" => String.t(),
        "packetsDropped" => [float()],
        "status" => String.t()
      }

  """
  @type component_status_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_config_request() :: %{
        "configData" => list(),
        "name" => String.t(),
        "tags" => map()
      }

  """
  @type create_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_minute_usage_request() :: %{
        "month" => integer(),
        "year" => integer()
      }

  """
  @type get_minute_usage_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_configs_response() :: %{
        "configList" => list(config_list_item()()),
        "nextToken" => String.t()
      }

  """
  @type list_configs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dependency_exception() :: %{
        "message" => [String.t()],
        "parameterName" => [String.t()]
      }

  """
  @type dependency_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        "tags" => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dataflow_endpoint_config() :: %{
        "dataflowEndpointName" => [String.t()],
        "dataflowEndpointRegion" => [String.t()]
      }

  """
  @type dataflow_endpoint_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_satellite_request() :: %{}

  """
  @type get_satellite_request() :: %{}

  @typedoc """

  ## Example:

      describe_contact_request() :: %{}

  """
  @type describe_contact_request() :: %{}

  @typedoc """

  ## Example:

      get_agent_configuration_response() :: %{
        optional("agentId") => String.t(),
        optional("taskingDocument") => [String.t()]
      }

  """
  @type get_agent_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dataflow_detail() :: %{
        "destination" => destination(),
        "errorMessage" => [String.t()],
        "source" => source()
      }

  """
  @type dataflow_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_config_request() :: %{}

  """
  @type get_config_request() :: %{}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      describe_contact_response() :: %{
        "contactId" => String.t(),
        "contactStatus" => String.t(),
        "dataflowList" => list(dataflow_detail()()),
        "endTime" => [non_neg_integer()],
        "errorMessage" => [String.t()],
        "groundStation" => [String.t()],
        "maximumElevation" => elevation(),
        "missionProfileArn" => String.t(),
        "postPassEndTime" => [non_neg_integer()],
        "prePassStartTime" => [non_neg_integer()],
        "region" => [String.t()],
        "satelliteArn" => String.t(),
        "startTime" => [non_neg_integer()],
        "tags" => map(),
        "visibilityEndTime" => [non_neg_integer()],
        "visibilityStartTime" => [non_neg_integer()]
      }

  """
  @type describe_contact_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_config_request() :: %{
        "configData" => list(),
        "name" => String.t()
      }

  """
  @type update_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      register_agent_request() :: %{
        required("agentDetails") => agent_details(),
        required("discoveryData") => discovery_data()
      }

  """
  @type register_agent_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tracking_config() :: %{
        "autotrack" => String.t()
      }

  """
  @type tracking_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ephemeris_description() :: %{
        "ephemerisData" => String.t(),
        "sourceS3Object" => s3_object()
      }

  """
  @type ephemeris_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      spectrum_config() :: %{
        "bandwidth" => frequency_bandwidth(),
        "centerFrequency" => frequency(),
        "polarization" => String.t()
      }

  """
  @type spectrum_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      socket_address() :: %{
        "name" => [String.t()],
        "port" => [integer()]
      }

  """
  @type socket_address() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      endpoint_details() :: %{
        "awsGroundStationAgentEndpoint" => aws_ground_station_agent_endpoint(),
        "endpoint" => dataflow_endpoint(),
        "healthReasons" => list(String.t()()),
        "healthStatus" => String.t(),
        "securityDetails" => security_details()
      }

  """
  @type endpoint_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_config_response() :: %{
        "configArn" => String.t(),
        "configData" => list(),
        "configId" => [String.t()],
        "configType" => String.t(),
        "name" => [String.t()],
        "tags" => map()
      }

  """
  @type get_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ephemeris_item() :: %{
        "creationTime" => [non_neg_integer()],
        "enabled" => [boolean()],
        "ephemerisId" => String.t(),
        "name" => String.t(),
        "priority" => integer(),
        "sourceS3Object" => s3_object(),
        "status" => String.t()
      }

  """
  @type ephemeris_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ranged_socket_address() :: %{
        "name" => String.t(),
        "portRange" => integer_range()
      }

  """
  @type ranged_socket_address() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      antenna_uplink_config() :: %{
        "spectrumConfig" => uplink_spectrum_config(),
        "targetEirp" => eirp(),
        "transmitDisabled" => [boolean()]
      }

  """
  @type antenna_uplink_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ephemeris_meta_data() :: %{
        "ephemerisId" => String.t(),
        "epoch" => [non_neg_integer()],
        "name" => String.t(),
        "source" => String.t()
      }

  """
  @type ephemeris_meta_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      uplink_echo_config() :: %{
        "antennaUplinkConfigArn" => String.t(),
        "enabled" => [boolean()]
      }

  """
  @type uplink_echo_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ranged_connection_details() :: %{
        "mtu" => [integer()],
        "socketAddress" => ranged_socket_address()
      }

  """
  @type ranged_connection_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_object() :: %{
        "bucket" => String.t(),
        "key" => String.t(),
        "version" => String.t()
      }

  """
  @type s3_object() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      config_list_item() :: %{
        "configArn" => String.t(),
        "configId" => [String.t()],
        "configType" => String.t(),
        "name" => [String.t()]
      }

  """
  @type config_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_contact_request() :: %{}

  """
  @type cancel_contact_request() :: %{}

  @typedoc """

  ## Example:

      agent_details() :: %{
        "agentCpuCores" => list([integer()]()),
        "agentVersion" => String.t(),
        "componentVersions" => list(component_version()()),
        "instanceId" => String.t(),
        "instanceType" => String.t(),
        "reservedCpuCores" => list([integer()]())
      }

  """
  @type agent_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      decode_config() :: %{
        "unvalidatedJSON" => String.t()
      }

  """
  @type decode_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reserve_contact_request() :: %{
        "endTime" => [non_neg_integer()],
        "groundStation" => String.t(),
        "missionProfileArn" => String.t(),
        "satelliteArn" => String.t(),
        "startTime" => [non_neg_integer()],
        "tags" => map()
      }

  """
  @type reserve_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        "tagKeys" => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      aws_ground_station_agent_endpoint() :: %{
        "agentStatus" => String.t(),
        "auditResults" => String.t(),
        "egressAddress" => connection_details(),
        "ingressAddress" => ranged_connection_details(),
        "name" => String.t()
      }

  """
  @type aws_ground_station_agent_endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_config_request() :: %{}

  """
  @type delete_config_request() :: %{}

  @typedoc """

  ## Example:

      list_dataflow_endpoint_groups_response() :: %{
        "dataflowEndpointGroupList" => list(dataflow_endpoint_list_item()()),
        "nextToken" => String.t()
      }

  """
  @type list_dataflow_endpoint_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      satellite_list_item() :: %{
        "currentEphemeris" => ephemeris_meta_data(),
        "groundStations" => list(String.t()()),
        "noradSatelliteID" => integer(),
        "satelliteArn" => String.t(),
        "satelliteId" => String.t()
      }

  """
  @type satellite_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      config_id_response() :: %{
        "configArn" => String.t(),
        "configId" => [String.t()],
        "configType" => String.t()
      }

  """
  @type config_id_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dataflow_endpoint_list_item() :: %{
        "dataflowEndpointGroupArn" => String.t(),
        "dataflowEndpointGroupId" => String.t()
      }

  """
  @type dataflow_endpoint_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      frequency() :: %{
        "units" => String.t(),
        "value" => [float()]
      }

  """
  @type frequency() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      integer_range() :: %{
        "maximum" => [integer()],
        "minimum" => [integer()]
      }

  """
  @type integer_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      mission_profile_id_response() :: %{
        "missionProfileId" => String.t()
      }

  """
  @type mission_profile_id_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_mission_profiles_response() :: %{
        "missionProfileList" => list(mission_profile_list_item()()),
        "nextToken" => String.t()
      }

  """
  @type list_mission_profiles_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_mission_profiles_request() :: %{
        "maxResults" => integer(),
        "nextToken" => String.t()
      }

  """
  @type list_mission_profiles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_agent_status_response() :: %{
        required("agentId") => String.t()
      }

  """
  @type update_agent_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      contact_data() :: %{
        "contactId" => String.t(),
        "contactStatus" => String.t(),
        "endTime" => [non_neg_integer()],
        "errorMessage" => [String.t()],
        "groundStation" => [String.t()],
        "maximumElevation" => elevation(),
        "missionProfileArn" => String.t(),
        "postPassEndTime" => [non_neg_integer()],
        "prePassStartTime" => [non_neg_integer()],
        "region" => [String.t()],
        "satelliteArn" => String.t(),
        "startTime" => [non_neg_integer()],
        "tags" => map(),
        "visibilityEndTime" => [non_neg_integer()],
        "visibilityStartTime" => [non_neg_integer()]
      }

  """
  @type contact_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ground_station_data() :: %{
        "groundStationId" => String.t(),
        "groundStationName" => String.t(),
        "region" => String.t()
      }

  """
  @type ground_station_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_mission_profile_request() :: %{}

  """
  @type get_mission_profile_request() :: %{}

  @typedoc """

  ## Example:

      resource_limit_exceeded_exception() :: %{
        "message" => [String.t()],
        "parameterName" => [String.t()]
      }

  """
  @type resource_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      demodulation_config() :: %{
        "unvalidatedJSON" => String.t()
      }

  """
  @type demodulation_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      contact_id_response() :: %{
        "contactId" => String.t()
      }

  """
  @type contact_id_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_agent_status_request() :: %{
        required("aggregateStatus") => aggregate_status(),
        required("componentStatuses") => list(component_status_data()()),
        required("taskId") => String.t()
      }

  """
  @type update_agent_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_dataflow_endpoint_group_response() :: %{
        "contactPostPassDurationSeconds" => integer(),
        "contactPrePassDurationSeconds" => integer(),
        "dataflowEndpointGroupArn" => String.t(),
        "dataflowEndpointGroupId" => String.t(),
        "endpointsDetails" => list(endpoint_details()()),
        "tags" => map()
      }

  """
  @type get_dataflow_endpoint_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      aggregate_status() :: %{
        "signatureMap" => map(),
        "status" => String.t()
      }

  """
  @type aggregate_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_ephemeris_request() :: %{
        optional("name") => String.t(),
        optional("priority") => integer(),
        required("enabled") => [boolean()]
      }

  """
  @type update_ephemeris_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ephemeris_id_response() :: %{
        optional("ephemerisId") => String.t()
      }

  """
  @type ephemeris_id_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dataflow_endpoint() :: %{
        "address" => socket_address(),
        "mtu" => [integer()],
        "name" => String.t(),
        "status" => String.t()
      }

  """
  @type dataflow_endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_minute_usage_response() :: %{
        "estimatedMinutesRemaining" => [integer()],
        "isReservedMinutesCustomer" => [boolean()],
        "totalReservedMinuteAllocation" => [integer()],
        "totalScheduledMinutes" => [integer()],
        "upcomingMinutesScheduled" => [integer()]
      }

  """
  @type get_minute_usage_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_ephemeris_request() :: %{
        optional("enabled") => [boolean()],
        optional("ephemeris") => list(),
        optional("expirationTime") => [non_neg_integer()],
        optional("kmsKeyArn") => String.t(),
        optional("priority") => integer(),
        optional("tags") => map(),
        required("name") => String.t(),
        required("satelliteId") => String.t()
      }

  """
  @type create_ephemeris_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dataflow_endpoint_group_id_response() :: %{
        "dataflowEndpointGroupId" => String.t()
      }

  """
  @type dataflow_endpoint_group_id_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      component_version() :: %{
        "componentType" => String.t(),
        "versions" => list(String.t()())
      }

  """
  @type component_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_ground_stations_request() :: %{
        "maxResults" => integer(),
        "nextToken" => String.t(),
        "satelliteId" => String.t()
      }

  """
  @type list_ground_stations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_ephemerides_response() :: %{
        optional("ephemerides") => list(ephemeris_item()()),
        optional("nextToken") => String.t()
      }

  """
  @type list_ephemerides_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      source() :: %{
        "configDetails" => list(),
        "configId" => [String.t()],
        "configType" => String.t(),
        "dataflowSourceRegion" => [String.t()]
      }

  """
  @type source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_contacts_request() :: %{
        "endTime" => [non_neg_integer()],
        "groundStation" => String.t(),
        "maxResults" => integer(),
        "missionProfileArn" => String.t(),
        "nextToken" => String.t(),
        "satelliteArn" => String.t(),
        "startTime" => [non_neg_integer()],
        "statusList" => list(String.t()())
      }

  """
  @type list_contacts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_ephemeris_request() :: %{}

  """
  @type delete_ephemeris_request() :: %{}

  @typedoc """

  ## Example:

      mission_profile_list_item() :: %{
        "missionProfileArn" => String.t(),
        "missionProfileId" => String.t(),
        "name" => String.t(),
        "region" => String.t()
      }

  """
  @type mission_profile_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      o_e_m_ephemeris() :: %{
        "oemData" => String.t(),
        "s3Object" => s3_object()
      }

  """
  @type o_e_m_ephemeris() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      uplink_spectrum_config() :: %{
        "centerFrequency" => frequency(),
        "polarization" => String.t()
      }

  """
  @type uplink_spectrum_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_mission_profile_request() :: %{}

  """
  @type delete_mission_profile_request() :: %{}

  @typedoc """

  ## Example:

      list_contacts_response() :: %{
        "contactList" => list(contact_data()()),
        "nextToken" => String.t()
      }

  """
  @type list_contacts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_dataflow_endpoint_group_request() :: %{}

  """
  @type delete_dataflow_endpoint_group_request() :: %{}

  @typedoc """

  ## Example:

      time_range() :: %{
        "endTime" => [non_neg_integer()],
        "startTime" => [non_neg_integer()]
      }

  """
  @type time_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_parameter_exception() :: %{
        "message" => [String.t()],
        "parameterName" => [String.t()]
      }

  """
  @type invalid_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_satellite_response() :: %{
        "currentEphemeris" => ephemeris_meta_data(),
        "groundStations" => list(String.t()()),
        "noradSatelliteID" => integer(),
        "satelliteArn" => String.t(),
        "satelliteId" => String.t()
      }

  """
  @type get_satellite_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_satellites_response() :: %{
        "nextToken" => String.t(),
        "satellites" => list(satellite_list_item()())
      }

  """
  @type list_satellites_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_ephemeris_request() :: %{}

  """
  @type describe_ephemeris_request() :: %{}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      destination() :: %{
        "configDetails" => list(),
        "configId" => String.t(),
        "configType" => String.t(),
        "dataflowDestinationRegion" => [String.t()]
      }

  """
  @type destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      t_l_e_ephemeris() :: %{
        "s3Object" => s3_object(),
        "tleData" => list(t_l_e_data()())
      }

  """
  @type t_l_e_ephemeris() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      security_details() :: %{
        "roleArn" => String.t(),
        "securityGroupIds" => list([String.t()]()),
        "subnetIds" => list([String.t()]())
      }

  """
  @type security_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_recording_config() :: %{
        "bucketArn" => String.t(),
        "prefix" => String.t(),
        "roleArn" => String.t()
      }

  """
  @type s3_recording_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_ephemerides_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("statusList") => list(String.t()()),
        required("endTime") => [non_neg_integer()],
        required("satelliteId") => String.t(),
        required("startTime") => [non_neg_integer()]
      }

  """
  @type list_ephemerides_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_recording_details() :: %{
        "bucketArn" => String.t(),
        "keyTemplate" => [String.t()]
      }

  """
  @type s3_recording_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      antenna_demod_decode_details() :: %{
        "outputNode" => [String.t()]
      }

  """
  @type antenna_demod_decode_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      t_l_e_data() :: %{
        "tleLine1" => String.t(),
        "tleLine2" => String.t(),
        "validTimeRange" => time_range()
      }

  """
  @type t_l_e_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      frequency_bandwidth() :: %{
        "units" => String.t(),
        "value" => [float()]
      }

  """
  @type frequency_bandwidth() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      antenna_downlink_config() :: %{
        "spectrumConfig" => spectrum_config()
      }

  """
  @type antenna_downlink_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_dataflow_endpoint_groups_request() :: %{
        "maxResults" => integer(),
        "nextToken" => String.t()
      }

  """
  @type list_dataflow_endpoint_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      eirp() :: %{
        "units" => String.t(),
        "value" => [float()]
      }

  """
  @type eirp() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_ground_stations_response() :: %{
        "groundStationList" => list(ground_station_data()()),
        "nextToken" => String.t()
      }

  """
  @type list_ground_stations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_mission_profile_response() :: %{
        "contactPostPassDurationSeconds" => integer(),
        "contactPrePassDurationSeconds" => integer(),
        "dataflowEdges" => list(list(String.t()())()),
        "minimumViableContactDurationSeconds" => integer(),
        "missionProfileArn" => String.t(),
        "missionProfileId" => String.t(),
        "name" => String.t(),
        "region" => String.t(),
        "streamsKmsKey" => list(),
        "streamsKmsRole" => String.t(),
        "tags" => map(),
        "trackingConfigArn" => String.t()
      }

  """
  @type get_mission_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      connection_details() :: %{
        "mtu" => [integer()],
        "socketAddress" => socket_address()
      }

  """
  @type connection_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      discovery_data() :: %{
        "capabilityArns" => list(String.t()()),
        "privateIpAddresses" => list(String.t()()),
        "publicIpAddresses" => list(String.t()())
      }

  """
  @type discovery_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_ephemeris_response() :: %{
        "creationTime" => [non_neg_integer()],
        "enabled" => [boolean()],
        "ephemerisId" => String.t(),
        "invalidReason" => String.t(),
        "name" => String.t(),
        "priority" => integer(),
        "satelliteId" => String.t(),
        "status" => String.t(),
        "suppliedData" => list(),
        "tags" => map()
      }

  """
  @type describe_ephemeris_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_satellites_request() :: %{
        "maxResults" => integer(),
        "nextToken" => String.t()
      }

  """
  @type list_satellites_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_dataflow_endpoint_group_request() :: %{
        "contactPostPassDurationSeconds" => integer(),
        "contactPrePassDurationSeconds" => integer(),
        "endpointDetails" => list(endpoint_details()()),
        "tags" => map()
      }

  """
  @type create_dataflow_endpoint_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      elevation() :: %{
        "unit" => String.t(),
        "value" => [float()]
      }

  """
  @type elevation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_dataflow_endpoint_group_request() :: %{}

  """
  @type get_dataflow_endpoint_group_request() :: %{}

  @typedoc """

  ## Example:

      get_agent_configuration_request() :: %{}

  """
  @type get_agent_configuration_request() :: %{}

  @typedoc """

  ## Example:

      create_mission_profile_request() :: %{
        "contactPostPassDurationSeconds" => integer(),
        "contactPrePassDurationSeconds" => integer(),
        "dataflowEdges" => list(list(String.t()())()),
        "minimumViableContactDurationSeconds" => integer(),
        "name" => String.t(),
        "streamsKmsKey" => list(),
        "streamsKmsRole" => String.t(),
        "tags" => map(),
        "trackingConfigArn" => String.t()
      }

  """
  @type create_mission_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_mission_profile_request() :: %{
        "contactPostPassDurationSeconds" => integer(),
        "contactPrePassDurationSeconds" => integer(),
        "dataflowEdges" => list(list(String.t()())()),
        "minimumViableContactDurationSeconds" => integer(),
        "name" => String.t(),
        "streamsKmsKey" => list(),
        "streamsKmsRole" => String.t(),
        "trackingConfigArn" => String.t()
      }

  """
  @type update_mission_profile_request() :: %{String.t() => any()}

  @type cancel_contact_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type create_config_errors() ::
          invalid_parameter_exception()
          | resource_limit_exceeded_exception()
          | resource_not_found_exception()
          | dependency_exception()

  @type create_dataflow_endpoint_group_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type create_ephemeris_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type create_mission_profile_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type delete_config_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type delete_dataflow_endpoint_group_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type delete_ephemeris_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type delete_mission_profile_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type describe_contact_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type describe_ephemeris_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type get_agent_configuration_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type get_config_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type get_dataflow_endpoint_group_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type get_minute_usage_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type get_mission_profile_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type get_satellite_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type list_configs_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type list_contacts_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type list_dataflow_endpoint_groups_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type list_ephemerides_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type list_ground_stations_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type list_mission_profiles_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type list_satellites_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type list_tags_for_resource_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type register_agent_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type reserve_contact_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type tag_resource_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type untag_resource_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type update_agent_status_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type update_config_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type update_ephemeris_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type update_mission_profile_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  def metadata do
    %{
      api_version: "2019-05-23",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "groundstation",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "GroundStation",
      signature_version: "v4",
      signing_name: "groundstation",
      target_prefix: nil
    }
  end

  @doc """
  Cancels a contact with a specified contact ID.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=groundstation%20CancelContact&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:contact_id` (`t:string`) UUID of a contact.

  ## Optional parameters:
  """
  @spec cancel_contact(AWS.Client.t(), String.t(), cancel_contact_request(), Keyword.t()) ::
          {:ok, contact_id_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_contact_errors()}
  def cancel_contact(%Client{} = client, contact_id, input, options \\ []) do
    url_path = "/contact/#{AWS.Util.encode_uri(contact_id)}"
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
  Creates a `Config` with the specified `configData` parameters.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=groundstation%20CreateConfig&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_config(AWS.Client.t(), create_config_request(), Keyword.t()) ::
          {:ok, config_id_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_config_errors()}
  def create_config(%Client{} = client, input, options \\ []) do
    url_path = "/config"
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
  Creates a `DataflowEndpoint` group containing the specified list of
  `DataflowEndpoint` objects. The `name` field in each endpoint is used in your
  mission profile `DataflowEndpointConfig` to specify which endpoints to use
  during a contact.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=groundstation%20CreateDataflowEndpointGroup&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_dataflow_endpoint_group(
          AWS.Client.t(),
          create_dataflow_endpoint_group_request(),
          Keyword.t()
        ) ::
          {:ok, dataflow_endpoint_group_id_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_dataflow_endpoint_group_errors()}
  def create_dataflow_endpoint_group(%Client{} = client, input, options \\ []) do
    url_path = "/dataflowEndpointGroup"
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
  Creates an Ephemeris with the specified `EphemerisData`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=groundstation%20CreateEphemeris&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_ephemeris(AWS.Client.t(), create_ephemeris_request(), Keyword.t()) ::
          {:ok, ephemeris_id_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_ephemeris_errors()}
  def create_ephemeris(%Client{} = client, input, options \\ []) do
    url_path = "/ephemeris"
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
  Creates a mission profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=groundstation%20CreateMissionProfile&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_mission_profile(AWS.Client.t(), create_mission_profile_request(), Keyword.t()) ::
          {:ok, mission_profile_id_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_mission_profile_errors()}
  def create_mission_profile(%Client{} = client, input, options \\ []) do
    url_path = "/missionprofile"
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
  Deletes a `Config`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=groundstation%20DeleteConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:config_id` (`t:string`) UUID of a Config.
  * `:config_type` (`t:string`) Type of a Config.

  ## Optional parameters:
  """
  @spec delete_config(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_config_request(),
          Keyword.t()
        ) ::
          {:ok, config_id_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_config_errors()}
  def delete_config(%Client{} = client, config_id, config_type, input, options \\ []) do
    url_path = "/config/#{AWS.Util.encode_uri(config_type)}/#{AWS.Util.encode_uri(config_id)}"
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
  Deletes a dataflow endpoint group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=groundstation%20DeleteDataflowEndpointGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:dataflow_endpoint_group_id` (`t:string`) UUID of a dataflow endpoint group.

  ## Optional parameters:
  """
  @spec delete_dataflow_endpoint_group(
          AWS.Client.t(),
          String.t(),
          delete_dataflow_endpoint_group_request(),
          Keyword.t()
        ) ::
          {:ok, dataflow_endpoint_group_id_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_dataflow_endpoint_group_errors()}
  def delete_dataflow_endpoint_group(
        %Client{} = client,
        dataflow_endpoint_group_id,
        input,
        options \\ []
      ) do
    url_path = "/dataflowEndpointGroup/#{AWS.Util.encode_uri(dataflow_endpoint_group_id)}"
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
  Deletes an ephemeris

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=groundstation%20DeleteEphemeris&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:ephemeris_id` (`t:string`) The AWS Ground Station ephemeris ID.

  ## Optional parameters:
  """
  @spec delete_ephemeris(AWS.Client.t(), String.t(), delete_ephemeris_request(), Keyword.t()) ::
          {:ok, ephemeris_id_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_ephemeris_errors()}
  def delete_ephemeris(%Client{} = client, ephemeris_id, input, options \\ []) do
    url_path = "/ephemeris/#{AWS.Util.encode_uri(ephemeris_id)}"
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
  Deletes a mission profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=groundstation%20DeleteMissionProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:mission_profile_id` (`t:string`) UUID of a mission profile.

  ## Optional parameters:
  """
  @spec delete_mission_profile(
          AWS.Client.t(),
          String.t(),
          delete_mission_profile_request(),
          Keyword.t()
        ) ::
          {:ok, mission_profile_id_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_mission_profile_errors()}
  def delete_mission_profile(%Client{} = client, mission_profile_id, input, options \\ []) do
    url_path = "/missionprofile/#{AWS.Util.encode_uri(mission_profile_id)}"
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
  Describes an existing contact.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=groundstation%20DescribeContact&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:contact_id` (`t:string`) UUID of a contact.

  ## Optional parameters:
  """
  @spec describe_contact(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_contact_errors()}
  def describe_contact(%Client{} = client, contact_id, options \\ []) do
    url_path = "/contact/#{AWS.Util.encode_uri(contact_id)}"

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
  Describes an existing ephemeris.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=groundstation%20DescribeEphemeris&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:ephemeris_id` (`t:string`) The AWS Ground Station ephemeris ID.

  ## Optional parameters:
  """
  @spec describe_ephemeris(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_ephemeris_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_ephemeris_errors()}
  def describe_ephemeris(%Client{} = client, ephemeris_id, options \\ []) do
    url_path = "/ephemeris/#{AWS.Util.encode_uri(ephemeris_id)}"

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
  For use by AWS Ground Station Agent and shouldn't be called directly.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=groundstation%20GetAgentConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:agent_id` (`t:string`) UUID of agent to get configuration information for.

  ## Optional parameters:
  """
  @spec get_agent_configuration(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_agent_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_agent_configuration_errors()}
  def get_agent_configuration(%Client{} = client, agent_id, options \\ []) do
    url_path = "/agent/#{AWS.Util.encode_uri(agent_id)}/configuration"

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
  Returns `Config` information.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=groundstation%20GetConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:config_id` (`t:string`) UUID of a Config.
  * `:config_type` (`t:string`) Type of a Config.

  ## Optional parameters:
  """
  @spec get_config(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_config_errors()}
  def get_config(%Client{} = client, config_id, config_type, options \\ []) do
    url_path = "/config/#{AWS.Util.encode_uri(config_type)}/#{AWS.Util.encode_uri(config_id)}"

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
  Returns the dataflow endpoint group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=groundstation%20GetDataflowEndpointGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:dataflow_endpoint_group_id` (`t:string`) UUID of a dataflow endpoint group.

  ## Optional parameters:
  """
  @spec get_dataflow_endpoint_group(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_dataflow_endpoint_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_dataflow_endpoint_group_errors()}
  def get_dataflow_endpoint_group(%Client{} = client, dataflow_endpoint_group_id, options \\ []) do
    url_path = "/dataflowEndpointGroup/#{AWS.Util.encode_uri(dataflow_endpoint_group_id)}"

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
  Returns the number of reserved minutes used by account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=groundstation%20GetMinuteUsage&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec get_minute_usage(AWS.Client.t(), get_minute_usage_request(), Keyword.t()) ::
          {:ok, get_minute_usage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_minute_usage_errors()}
  def get_minute_usage(%Client{} = client, input, options \\ []) do
    url_path = "/minute-usage"
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
  Returns a mission profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=groundstation%20GetMissionProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:mission_profile_id` (`t:string`) UUID of a mission profile.

  ## Optional parameters:
  """
  @spec get_mission_profile(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_mission_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_mission_profile_errors()}
  def get_mission_profile(%Client{} = client, mission_profile_id, options \\ []) do
    url_path = "/missionprofile/#{AWS.Util.encode_uri(mission_profile_id)}"

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
  Returns a satellite.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=groundstation%20GetSatellite&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:satellite_id` (`t:string`) UUID of a satellite.

  ## Optional parameters:
  """
  @spec get_satellite(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_satellite_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_satellite_errors()}
  def get_satellite(%Client{} = client, satellite_id, options \\ []) do
    url_path = "/satellite/#{AWS.Util.encode_uri(satellite_id)}"

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
  Returns a list of `Config` objects.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=groundstation%20ListConfigs&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) Maximum number of Configs returned.
  * `:next_token` (`t:string`) Next token returned in the request of a previous
    ListConfigs call. Used to get the next page of results.
  """
  @spec list_configs(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_configs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_configs_errors()}
  def list_configs(%Client{} = client, options \\ []) do
    url_path = "/config"

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
  Returns a list of contacts.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=groundstation%20ListContacts&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec list_contacts(AWS.Client.t(), list_contacts_request(), Keyword.t()) ::
          {:ok, list_contacts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_contacts_errors()}
  def list_contacts(%Client{} = client, input, options \\ []) do
    url_path = "/contacts"
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
  Returns a list of `DataflowEndpoint` groups.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=groundstation%20ListDataflowEndpointGroups&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) Maximum number of dataflow endpoint groups
    returned.
  * `:next_token` (`t:string`) Next token returned in the request of a previous
    ListDataflowEndpointGroups call. Used to get the next page of results.
  """
  @spec list_dataflow_endpoint_groups(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_dataflow_endpoint_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_dataflow_endpoint_groups_errors()}
  def list_dataflow_endpoint_groups(%Client{} = client, options \\ []) do
    url_path = "/dataflowEndpointGroup"

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
  List existing ephemerides.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=groundstation%20ListEphemerides&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) Maximum number of ephemerides to return.
  * `:next_token` (`t:string`) Pagination token.
  """
  @spec list_ephemerides(AWS.Client.t(), list_ephemerides_request(), Keyword.t()) ::
          {:ok, list_ephemerides_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_ephemerides_errors()}
  def list_ephemerides(%Client{} = client, input, options \\ []) do
    url_path = "/ephemerides"
    headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
      ]
      |> Request.build_params(input)

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
  Returns a list of ground stations.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=groundstation%20ListGroundStations&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) Maximum number of ground stations returned.
  * `:next_token` (`t:string`) Next token that can be supplied in the next call to
    get the next page of ground stations.
  * `:satellite_id` (`t:string`) Satellite ID to retrieve on-boarded ground
    stations.
  """
  @spec list_ground_stations(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_ground_stations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_ground_stations_errors()}
  def list_ground_stations(%Client{} = client, options \\ []) do
    url_path = "/groundstation"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, next_token: nil, satellite_id: nil
    # ])

    headers = []
    query_params = []

    {satellite_id, options} = Keyword.pop(options, :satellite_id, nil)

    query_params =
      if !is_nil(satellite_id) do
        [{"satelliteId", satellite_id} | query_params]
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
  Returns a list of mission profiles.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=groundstation%20ListMissionProfiles&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) Maximum number of mission profiles returned.
  * `:next_token` (`t:string`) Next token returned in the request of a previous
    ListMissionProfiles call. Used to get the next page of results.
  """
  @spec list_mission_profiles(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_mission_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_mission_profiles_errors()}
  def list_mission_profiles(%Client{} = client, options \\ []) do
    url_path = "/missionprofile"

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
  Returns a list of satellites.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=groundstation%20ListSatellites&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) Maximum number of satellites returned.
  * `:next_token` (`t:string`) Next token that can be supplied in the next call to
    get the next page of satellites.
  """
  @spec list_satellites(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_satellites_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_satellites_errors()}
  def list_satellites(%Client{} = client, options \\ []) do
    url_path = "/satellite"

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
  Returns a list of tags for a specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=groundstation%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) ARN of a resource.

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
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  For use by AWS Ground Station Agent and shouldn't be called directly.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=groundstation%20RegisterAgent&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec register_agent(AWS.Client.t(), register_agent_request(), Keyword.t()) ::
          {:ok, register_agent_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_agent_errors()}
  def register_agent(%Client{} = client, input, options \\ []) do
    url_path = "/agent"
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
  Reserves a contact using specified parameters.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=groundstation%20ReserveContact&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec reserve_contact(AWS.Client.t(), reserve_contact_request(), Keyword.t()) ::
          {:ok, contact_id_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reserve_contact_errors()}
  def reserve_contact(%Client{} = client, input, options \\ []) do
    url_path = "/contact"
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
  Assigns a tag to a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=groundstation%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) ARN of a resource tag.

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
  Deassigns a resource tag.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=groundstation%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) ARN of a resource.

  ## Optional parameters:
  * `:tag_keys` (`t:list[com.amazonaws.groundstation#UnboundedString]`) Keys of a
    resource tag.
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
  For use by AWS Ground Station Agent and shouldn't be called directly.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=groundstation%20UpdateAgentStatus&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:agent_id` (`t:string`) UUID of agent to update.

  ## Optional parameters:
  """
  @spec update_agent_status(
          AWS.Client.t(),
          String.t(),
          update_agent_status_request(),
          Keyword.t()
        ) ::
          {:ok, update_agent_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_agent_status_errors()}
  def update_agent_status(%Client{} = client, agent_id, input, options \\ []) do
    url_path = "/agent/#{AWS.Util.encode_uri(agent_id)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the `Config` used when scheduling contacts.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=groundstation%20UpdateConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:config_id` (`t:string`) UUID of a Config.
  * `:config_type` (`t:string`) Type of a Config.

  ## Optional parameters:
  """
  @spec update_config(
          AWS.Client.t(),
          String.t(),
          String.t(),
          update_config_request(),
          Keyword.t()
        ) ::
          {:ok, config_id_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_config_errors()}
  def update_config(%Client{} = client, config_id, config_type, input, options \\ []) do
    url_path = "/config/#{AWS.Util.encode_uri(config_type)}/#{AWS.Util.encode_uri(config_id)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates an existing ephemeris

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=groundstation%20UpdateEphemeris&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:ephemeris_id` (`t:string`) The AWS Ground Station ephemeris ID.

  ## Optional parameters:
  """
  @spec update_ephemeris(AWS.Client.t(), String.t(), update_ephemeris_request(), Keyword.t()) ::
          {:ok, ephemeris_id_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_ephemeris_errors()}
  def update_ephemeris(%Client{} = client, ephemeris_id, input, options \\ []) do
    url_path = "/ephemeris/#{AWS.Util.encode_uri(ephemeris_id)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a mission profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=groundstation%20UpdateMissionProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:mission_profile_id` (`t:string`) UUID of a mission profile.

  ## Optional parameters:
  """
  @spec update_mission_profile(
          AWS.Client.t(),
          String.t(),
          update_mission_profile_request(),
          Keyword.t()
        ) ::
          {:ok, mission_profile_id_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_mission_profile_errors()}
  def update_mission_profile(%Client{} = client, mission_profile_id, input, options \\ []) do
    url_path = "/missionprofile/#{AWS.Util.encode_uri(mission_profile_id)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
