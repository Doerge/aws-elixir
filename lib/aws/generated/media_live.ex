# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MediaLive do
  @moduledoc """
  API for AWS Elemental MediaLive
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      static_image_output_deactivate_schedule_action_settings() :: %{
        "FadeOut" => integer(),
        "Layer" => integer(),
        "OutputNames" => list(String.t()())
      }

  """
  @type static_image_output_deactivate_schedule_action_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      scte27_destination_settings() :: %{}

  """
  @type scte27_destination_settings() :: %{}

  @typedoc """

  ## Example:

      delete_cloud_watch_alarm_template_group_request() :: %{}

  """
  @type delete_cloud_watch_alarm_template_group_request() :: %{}

  @typedoc """

  ## Example:

      archive_s3_settings() :: %{
        "CannedAcl" => list(any())
      }

  """
  @type archive_s3_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      caption_rectangle() :: %{
        "Height" => float(),
        "LeftOffset" => float(),
        "TopOffset" => float(),
        "Width" => float()
      }

  """
  @type caption_rectangle() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      scte35_time_signal_apos() :: %{
        "AdAvailOffset" => integer(),
        "NoRegionalBlackoutFlag" => list(any()),
        "WebDeliveryAllowedFlag" => list(any())
      }

  """
  @type scte35_time_signal_apos() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_cloud_watch_alarm_template_group_response() :: %{
        "Arn" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "Id" => String.t(),
        "ModifiedAt" => non_neg_integer(),
        "Name" => String.t(),
        "Tags" => map()
      }

  """
  @type update_cloud_watch_alarm_template_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_channel_request() :: %{}

  """
  @type delete_channel_request() :: %{}

  @typedoc """

  ## Example:

      event_bridge_rule_template_summary() :: %{
        "Arn" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "EventTargetCount" => integer(),
        "EventType" => list(any()),
        "GroupId" => String.t(),
        "Id" => String.t(),
        "ModifiedAt" => non_neg_integer(),
        "Name" => String.t(),
        "Tags" => map()
      }

  """
  @type event_bridge_rule_template_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      frame_capture_group_settings() :: %{
        "Destination" => output_location_ref(),
        "FrameCaptureCdnSettings" => frame_capture_cdn_settings()
      }

  """
  @type frame_capture_group_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      input_device_settings() :: %{
        "Id" => String.t()
      }

  """
  @type input_device_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_input_security_groups_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_input_security_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_event_bridge_rule_templates_request() :: %{
        optional("GroupIdentifier") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SignalMapIdentifier") => String.t()
      }

  """
  @type list_event_bridge_rule_templates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_timecode() :: %{
        "LastFrameClippingBehavior" => list(any()),
        "Timecode" => String.t()
      }

  """
  @type stop_timecode() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      input_destination() :: %{
        "Ip" => String.t(),
        "Port" => String.t(),
        "Url" => String.t(),
        "Vpc" => input_destination_vpc()
      }

  """
  @type input_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_input_device_response() :: %{
        "Arn" => String.t(),
        "AvailabilityZone" => String.t(),
        "ConnectionState" => list(any()),
        "DeviceSettingsSyncState" => list(any()),
        "DeviceUpdateStatus" => list(any()),
        "HdDeviceSettings" => input_device_hd_settings(),
        "Id" => String.t(),
        "MacAddress" => String.t(),
        "MedialiveInputArns" => list(String.t()()),
        "Name" => String.t(),
        "NetworkSettings" => input_device_network_settings(),
        "OutputType" => list(any()),
        "SerialNumber" => String.t(),
        "Tags" => map(),
        "Type" => list(any()),
        "UhdDeviceSettings" => input_device_uhd_settings()
      }

  """
  @type describe_input_device_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_start_response() :: %{
        "Failed" => list(batch_failed_result_model()()),
        "Successful" => list(batch_successful_result_model()())
      }

  """
  @type batch_start_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      scte20_source_settings() :: %{
        "Convert608To708" => list(any()),
        "Source608ChannelNumber" => integer()
      }

  """
  @type scte20_source_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_cloud_watch_alarm_template_request() :: %{}

  """
  @type delete_cloud_watch_alarm_template_request() :: %{}

  @typedoc """

  ## Example:

      list_signal_maps_response() :: %{
        "NextToken" => String.t(),
        "SignalMaps" => list(signal_map_summary()())
      }

  """
  @type list_signal_maps_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_multiplex_program_request() :: %{}

  """
  @type delete_multiplex_program_request() :: %{}

  @typedoc """

  ## Example:

      input_clipping_settings() :: %{
        "InputTimecodeSource" => list(any()),
        "StartTimecode" => start_timecode(),
        "StopTimecode" => stop_timecode()
      }

  """
  @type input_clipping_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      input_source() :: %{
        "PasswordParam" => String.t(),
        "Url" => String.t(),
        "Username" => String.t()
      }

  """
  @type input_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_input_device_transfer_response() :: %{}

  """
  @type cancel_input_device_transfer_response() :: %{}

  @typedoc """

  ## Example:

      output_destination() :: %{
        "Id" => String.t(),
        "MediaPackageSettings" => list(media_package_output_destination_settings()()),
        "MultiplexSettings" => multiplex_program_channel_destination_settings(),
        "Settings" => list(output_destination_settings()())
      }

  """
  @type output_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      video_selector_settings() :: %{
        "VideoSelectorPid" => video_selector_pid(),
        "VideoSelectorProgramId" => video_selector_program_id()
      }

  """
  @type video_selector_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_update_schedule_request() :: %{
        optional("Creates") => batch_schedule_action_create_request(),
        optional("Deletes") => batch_schedule_action_delete_request()
      }

  """
  @type batch_update_schedule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      multiplex_summary() :: %{
        "Arn" => String.t(),
        "AvailabilityZones" => list(String.t()()),
        "Id" => String.t(),
        "MultiplexSettings" => multiplex_settings_summary(),
        "Name" => String.t(),
        "PipelinesRunningCount" => integer(),
        "ProgramCount" => integer(),
        "State" => list(any()),
        "Tags" => map()
      }

  """
  @type multiplex_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_multiplex_request() :: %{}

  """
  @type stop_multiplex_request() :: %{}

  @typedoc """

  ## Example:

      delete_tags_request() :: %{
        required("TagKeys") => list(String.t()())
      }

  """
  @type delete_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_input_device_request() :: %{
        optional("AvailabilityZone") => String.t(),
        optional("HdDeviceSettings") => input_device_configurable_settings(),
        optional("Name") => String.t(),
        optional("UhdDeviceSettings") => input_device_configurable_settings()
      }

  """
  @type update_input_device_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_multiplex_programs_response() :: %{
        "MultiplexPrograms" => list(multiplex_program_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_multiplex_programs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_input_request() :: %{}

  """
  @type describe_input_request() :: %{}

  @typedoc """

  ## Example:

      scte27_source_settings() :: %{
        "OcrLanguage" => list(any()),
        "Pid" => integer()
      }

  """
  @type scte27_source_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      restart_channel_pipelines_response() :: %{
        "Arn" => String.t(),
        "CdiInputSpecification" => cdi_input_specification(),
        "ChannelClass" => list(any()),
        "Destinations" => list(output_destination()()),
        "EgressEndpoints" => list(channel_egress_endpoint()()),
        "EncoderSettings" => encoder_settings(),
        "Id" => String.t(),
        "InputAttachments" => list(input_attachment()()),
        "InputSpecification" => input_specification(),
        "LogLevel" => list(any()),
        "Maintenance" => maintenance_status(),
        "MaintenanceStatus" => String.t(),
        "Name" => String.t(),
        "PipelineDetails" => list(pipeline_detail()()),
        "PipelinesRunningCount" => integer(),
        "RoleArn" => String.t(),
        "State" => list(any()),
        "Tags" => map(),
        "Vpc" => vpc_output_settings_description()
      }

  """
  @type restart_channel_pipelines_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_channel_class_response() :: %{
        "Channel" => channel()
      }

  """
  @type update_channel_class_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      archive_group_settings() :: %{
        "ArchiveCdnSettings" => archive_cdn_settings(),
        "Destination" => output_location_ref(),
        "RolloverInterval" => integer()
      }

  """
  @type archive_group_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hls_akamai_settings() :: %{
        "ConnectionRetryInterval" => integer(),
        "FilecacheDuration" => integer(),
        "HttpTransferMode" => list(any()),
        "NumRetries" => integer(),
        "RestartDelay" => integer(),
        "Salt" => String.t(),
        "Token" => String.t()
      }

  """
  @type hls_akamai_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_signal_map_request() :: %{}

  """
  @type get_signal_map_request() :: %{}

  @typedoc """

  ## Example:

      audio_only_hls_settings() :: %{
        "AudioGroupId" => String.t(),
        "AudioOnlyImage" => input_location(),
        "AudioTrackType" => list(any()),
        "SegmentType" => list(any())
      }

  """
  @type audio_only_hls_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      scte35_delivery_restrictions() :: %{
        "ArchiveAllowedFlag" => list(any()),
        "DeviceRestrictions" => list(any()),
        "NoRegionalBlackoutFlag" => list(any()),
        "WebDeliveryAllowedFlag" => list(any())
      }

  """
  @type scte35_delivery_restrictions() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      multiplex_program_summary() :: %{
        "ChannelId" => String.t(),
        "ProgramName" => String.t()
      }

  """
  @type multiplex_program_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_cloud_watch_alarm_template_request() :: %{
        optional("ComparisonOperator") => list(any()),
        optional("DatapointsToAlarm") => integer(),
        optional("Description") => String.t(),
        optional("EvaluationPeriods") => integer(),
        optional("GroupIdentifier") => String.t(),
        optional("MetricName") => String.t(),
        optional("Name") => String.t(),
        optional("Period") => integer(),
        optional("Statistic") => list(any()),
        optional("TargetResourceType") => list(any()),
        optional("Threshold") => float(),
        optional("TreatMissingData") => list(any())
      }

  """
  @type update_cloud_watch_alarm_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_channel_response() :: %{
        "Channel" => channel()
      }

  """
  @type create_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      scte35_return_to_network_schedule_action_settings() :: %{
        "SpliceEventId" => float()
      }

  """
  @type scte35_return_to_network_schedule_action_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_input_device_request() :: %{}

  """
  @type start_input_device_request() :: %{}

  @typedoc """

  ## Example:

      pause_state_schedule_action_settings() :: %{
        "Pipelines" => list(pipeline_pause_state_settings()())
      }

  """
  @type pause_state_schedule_action_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      network_input_settings() :: %{
        "HlsInputSettings" => hls_input_settings(),
        "ServerValidation" => list(any())
      }

  """
  @type network_input_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      mp2_settings() :: %{
        "Bitrate" => float(),
        "CodingMode" => list(any()),
        "SampleRate" => float()
      }

  """
  @type mp2_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_reservation_request() :: %{}

  """
  @type delete_reservation_request() :: %{}

  @typedoc """

  ## Example:

      multiplex_output_destination() :: %{
        "MediaConnectSettings" => multiplex_media_connect_output_destination_settings()
      }

  """
  @type multiplex_output_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      monitor_deployment() :: %{
        "DetailsUri" => String.t(),
        "ErrorMessage" => String.t(),
        "Status" => list(any())
      }

  """
  @type monitor_deployment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_failed_result_model() :: %{
        "Arn" => String.t(),
        "Code" => String.t(),
        "Id" => String.t(),
        "Message" => String.t()
      }

  """
  @type batch_failed_result_model() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_channel_response() :: %{
        "Arn" => String.t(),
        "CdiInputSpecification" => cdi_input_specification(),
        "ChannelClass" => list(any()),
        "Destinations" => list(output_destination()()),
        "EgressEndpoints" => list(channel_egress_endpoint()()),
        "EncoderSettings" => encoder_settings(),
        "Id" => String.t(),
        "InputAttachments" => list(input_attachment()()),
        "InputSpecification" => input_specification(),
        "LogLevel" => list(any()),
        "Maintenance" => maintenance_status(),
        "Name" => String.t(),
        "PipelineDetails" => list(pipeline_detail()()),
        "PipelinesRunningCount" => integer(),
        "RoleArn" => String.t(),
        "State" => list(any()),
        "Tags" => map(),
        "Vpc" => vpc_output_settings_description()
      }

  """
  @type delete_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      account_configuration() :: %{
        "KmsKeyId" => String.t()
      }

  """
  @type account_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_input_security_group_request() :: %{
        optional("Tags") => map(),
        optional("WhitelistRules") => list(input_whitelist_rule_cidr()())
      }

  """
  @type update_input_security_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      thumbnail() :: %{
        "Body" => String.t(),
        "ContentType" => String.t(),
        "ThumbnailType" => list(any()),
        "TimeStamp" => non_neg_integer()
      }

  """
  @type thumbnail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      udp_output_settings() :: %{
        "BufferMsec" => integer(),
        "ContainerSettings" => udp_container_settings(),
        "Destination" => output_location_ref(),
        "FecOutputSettings" => fec_output_settings()
      }

  """
  @type udp_output_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      input_location() :: %{
        "PasswordParam" => String.t(),
        "Uri" => String.t(),
        "Username" => String.t()
      }

  """
  @type input_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_account_configuration_request() :: %{}

  """
  @type describe_account_configuration_request() :: %{}

  @typedoc """

  ## Example:

      nielsen_configuration() :: %{
        "DistributorId" => String.t(),
        "NielsenPcmToId3Tagging" => list(any())
      }

  """
  @type nielsen_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      caption_selector() :: %{
        "LanguageCode" => String.t(),
        "Name" => String.t(),
        "SelectorSettings" => caption_selector_settings()
      }

  """
  @type caption_selector() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_input_device_response() :: %{
        "Arn" => String.t(),
        "AvailabilityZone" => String.t(),
        "ConnectionState" => list(any()),
        "DeviceSettingsSyncState" => list(any()),
        "DeviceUpdateStatus" => list(any()),
        "HdDeviceSettings" => input_device_hd_settings(),
        "Id" => String.t(),
        "MacAddress" => String.t(),
        "MedialiveInputArns" => list(String.t()()),
        "Name" => String.t(),
        "NetworkSettings" => input_device_network_settings(),
        "OutputType" => list(any()),
        "SerialNumber" => String.t(),
        "Tags" => map(),
        "Type" => list(any()),
        "UhdDeviceSettings" => input_device_uhd_settings()
      }

  """
  @type update_input_device_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bad_gateway_exception() :: %{
        "Message" => String.t()
      }

  """
  @type bad_gateway_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      input_device_request() :: %{
        "Id" => String.t()
      }

  """
  @type input_device_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      input_device_network_settings() :: %{
        "DnsAddresses" => list(String.t()()),
        "Gateway" => String.t(),
        "IpAddress" => String.t(),
        "IpScheme" => list(any()),
        "SubnetMask" => String.t()
      }

  """
  @type input_device_network_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_event_bridge_rule_template_group_response() :: %{
        "Arn" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "Id" => String.t(),
        "ModifiedAt" => non_neg_integer(),
        "Name" => String.t(),
        "Tags" => map()
      }

  """
  @type get_event_bridge_rule_template_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      multiplex_program() :: %{
        "ChannelId" => String.t(),
        "MultiplexProgramSettings" => multiplex_program_settings(),
        "PacketIdentifiersMap" => multiplex_program_packet_identifiers_map(),
        "PipelineDetails" => list(multiplex_program_pipeline_detail()()),
        "ProgramName" => String.t()
      }

  """
  @type multiplex_program() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      caption_selector_settings() :: %{
        "AncillarySourceSettings" => ancillary_source_settings(),
        "AribSourceSettings" => arib_source_settings(),
        "DvbSubSourceSettings" => dvb_sub_source_settings(),
        "EmbeddedSourceSettings" => embedded_source_settings(),
        "Scte20SourceSettings" => scte20_source_settings(),
        "Scte27SourceSettings" => scte27_source_settings(),
        "TeletextSourceSettings" => teletext_source_settings()
      }

  """
  @type caption_selector_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      input_loss_failover_settings() :: %{
        "InputLossThresholdMsec" => integer()
      }

  """
  @type input_loss_failover_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_multiplex_program_request() :: %{
        required("MultiplexProgramSettings") => multiplex_program_settings(),
        required("ProgramName") => String.t(),
        required("RequestId") => String.t()
      }

  """
  @type create_multiplex_program_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      transfer_input_device_response() :: %{}

  """
  @type transfer_input_device_response() :: %{}

  @typedoc """

  ## Example:

      forbidden_exception() :: %{
        "Message" => String.t()
      }

  """
  @type forbidden_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_reservations_request() :: %{
        optional("ChannelClass") => String.t(),
        optional("Codec") => String.t(),
        optional("MaxResults") => integer(),
        optional("MaximumBitrate") => String.t(),
        optional("MaximumFramerate") => String.t(),
        optional("NextToken") => String.t(),
        optional("Resolution") => String.t(),
        optional("ResourceType") => String.t(),
        optional("SpecialFeature") => String.t(),
        optional("VideoQuality") => String.t()
      }

  """
  @type list_reservations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hls_cdn_settings() :: %{
        "HlsAkamaiSettings" => hls_akamai_settings(),
        "HlsBasicPutSettings" => hls_basic_put_settings(),
        "HlsMediaStoreSettings" => hls_media_store_settings(),
        "HlsS3Settings" => hls_s3_settings(),
        "HlsWebdavSettings" => hls_webdav_settings()
      }

  """
  @type hls_cdn_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      event_bridge_rule_template_group_summary() :: %{
        "Arn" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "Id" => String.t(),
        "ModifiedAt" => non_neg_integer(),
        "Name" => String.t(),
        "Tags" => map(),
        "TemplateCount" => integer()
      }

  """
  @type event_bridge_rule_template_group_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      audio_codec_settings() :: %{
        "AacSettings" => aac_settings(),
        "Ac3Settings" => ac3_settings(),
        "Eac3AtmosSettings" => eac3_atmos_settings(),
        "Eac3Settings" => eac3_settings(),
        "Mp2Settings" => mp2_settings(),
        "PassThroughSettings" => pass_through_settings(),
        "WavSettings" => wav_settings()
      }

  """
  @type audio_codec_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_cloud_watch_alarm_template_response() :: %{
        "Arn" => String.t(),
        "ComparisonOperator" => list(any()),
        "CreatedAt" => non_neg_integer(),
        "DatapointsToAlarm" => integer(),
        "Description" => String.t(),
        "EvaluationPeriods" => integer(),
        "GroupId" => String.t(),
        "Id" => String.t(),
        "MetricName" => String.t(),
        "ModifiedAt" => non_neg_integer(),
        "Name" => String.t(),
        "Period" => integer(),
        "Statistic" => list(any()),
        "Tags" => map(),
        "TargetResourceType" => list(any()),
        "Threshold" => float(),
        "TreatMissingData" => list(any())
      }

  """
  @type update_cloud_watch_alarm_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_offerings_request() :: %{
        optional("ChannelClass") => String.t(),
        optional("ChannelConfiguration") => String.t(),
        optional("Codec") => String.t(),
        optional("Duration") => String.t(),
        optional("MaxResults") => integer(),
        optional("MaximumBitrate") => String.t(),
        optional("MaximumFramerate") => String.t(),
        optional("NextToken") => String.t(),
        optional("Resolution") => String.t(),
        optional("ResourceType") => String.t(),
        optional("SpecialFeature") => String.t(),
        optional("VideoQuality") => String.t()
      }

  """
  @type list_offerings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_account_configuration_response() :: %{
        "AccountConfiguration" => account_configuration()
      }

  """
  @type describe_account_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_input_security_group_response() :: %{}

  """
  @type delete_input_security_group_response() :: %{}

  @typedoc """

  ## Example:

      list_offerings_response() :: %{
        "NextToken" => String.t(),
        "Offerings" => list(offering()())
      }

  """
  @type list_offerings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_signal_map_request() :: %{}

  """
  @type delete_signal_map_request() :: %{}

  @typedoc """

  ## Example:

      update_input_security_group_response() :: %{
        "SecurityGroup" => input_security_group()
      }

  """
  @type update_input_security_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_event_bridge_rule_template_response() :: %{
        "Arn" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "EventTargets" => list(event_bridge_rule_template_target()()),
        "EventType" => list(any()),
        "GroupId" => String.t(),
        "Id" => String.t(),
        "ModifiedAt" => non_neg_integer(),
        "Name" => String.t(),
        "Tags" => map()
      }

  """
  @type create_event_bridge_rule_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      transferring_input_device_summary() :: %{
        "Id" => String.t(),
        "Message" => String.t(),
        "TargetCustomerId" => String.t(),
        "TransferType" => list(any())
      }

  """
  @type transferring_input_device_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      aac_settings() :: %{
        "Bitrate" => float(),
        "CodingMode" => list(any()),
        "InputType" => list(any()),
        "Profile" => list(any()),
        "RateControlMode" => list(any()),
        "RawFormat" => list(any()),
        "SampleRate" => float(),
        "Spec" => list(any()),
        "VbrQuality" => list(any())
      }

  """
  @type aac_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      input_settings() :: %{
        "AudioSelectors" => list(audio_selector()()),
        "CaptionSelectors" => list(caption_selector()()),
        "DeblockFilter" => list(any()),
        "DenoiseFilter" => list(any()),
        "FilterStrength" => integer(),
        "InputFilter" => list(any()),
        "NetworkInputSettings" => network_input_settings(),
        "Scte35Pid" => integer(),
        "Smpte2038DataPreference" => list(any()),
        "SourceEndBehavior" => list(any()),
        "VideoSelector" => video_selector()
      }

  """
  @type input_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_multiplex_request() :: %{
        optional("Tags") => map(),
        required("AvailabilityZones") => list(String.t()()),
        required("MultiplexSettings") => multiplex_settings(),
        required("Name") => String.t(),
        required("RequestId") => String.t()
      }

  """
  @type create_multiplex_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      h265_color_space_settings() :: %{
        "ColorSpacePassthroughSettings" => color_space_passthrough_settings(),
        "DolbyVision81Settings" => dolby_vision81_settings(),
        "Hdr10Settings" => hdr10_settings(),
        "Rec601Settings" => rec601_settings(),
        "Rec709Settings" => rec709_settings()
      }

  """
  @type h265_color_space_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      multiplex_program_channel_destination_settings() :: %{
        "MultiplexId" => String.t(),
        "ProgramName" => String.t()
      }

  """
  @type multiplex_program_channel_destination_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      frame_capture_output_settings() :: %{
        "NameModifier" => String.t()
      }

  """
  @type frame_capture_output_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_delete_response() :: %{
        "Failed" => list(batch_failed_result_model()()),
        "Successful" => list(batch_successful_result_model()())
      }

  """
  @type batch_delete_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      rec709_settings() :: %{}

  """
  @type rec709_settings() :: %{}

  @typedoc """

  ## Example:

      video_selector_pid() :: %{
        "Pid" => integer()
      }

  """
  @type video_selector_pid() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      m3u8_settings() :: %{
        "AudioFramesPerPes" => integer(),
        "AudioPids" => String.t(),
        "EcmPid" => String.t(),
        "KlvBehavior" => list(any()),
        "KlvDataPids" => String.t(),
        "NielsenId3Behavior" => list(any()),
        "PatInterval" => integer(),
        "PcrControl" => list(any()),
        "PcrPeriod" => integer(),
        "PcrPid" => String.t(),
        "PmtInterval" => integer(),
        "PmtPid" => String.t(),
        "ProgramNum" => integer(),
        "Scte35Behavior" => list(any()),
        "Scte35Pid" => String.t(),
        "TimedMetadataBehavior" => list(any()),
        "TimedMetadataPid" => String.t(),
        "TransportStreamId" => integer(),
        "VideoPid" => String.t()
      }

  """
  @type m3u8_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dvb_sub_source_settings() :: %{
        "OcrLanguage" => list(any()),
        "Pid" => integer()
      }

  """
  @type dvb_sub_source_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      media_connect_flow() :: %{
        "FlowArn" => String.t()
      }

  """
  @type media_connect_flow() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      scte35_splice_insert_schedule_action_settings() :: %{
        "Duration" => float(),
        "SpliceEventId" => float()
      }

  """
  @type scte35_splice_insert_schedule_action_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      motion_graphics_configuration() :: %{
        "MotionGraphicsInsertion" => list(any()),
        "MotionGraphicsSettings" => motion_graphics_settings()
      }

  """
  @type motion_graphics_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_event_bridge_rule_template_group_response() :: %{
        "Arn" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "Id" => String.t(),
        "ModifiedAt" => non_neg_integer(),
        "Name" => String.t(),
        "Tags" => map()
      }

  """
  @type update_event_bridge_rule_template_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_event_bridge_rule_template_group_request() :: %{
        optional("Description") => String.t(),
        optional("Tags") => map(),
        required("Name") => String.t()
      }

  """
  @type create_event_bridge_rule_template_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      udp_container_settings() :: %{
        "M2tsSettings" => m2ts_settings()
      }

  """
  @type udp_container_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_schedule_response() :: %{}

  """
  @type delete_schedule_response() :: %{}

  @typedoc """

  ## Example:

      maintenance_update_settings() :: %{
        "MaintenanceDay" => list(any()),
        "MaintenanceScheduledDate" => String.t(),
        "MaintenanceStartTime" => String.t()
      }

  """
  @type maintenance_update_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      input_security_group() :: %{
        "Arn" => String.t(),
        "Id" => String.t(),
        "Inputs" => list(String.t()()),
        "State" => list(any()),
        "Tags" => map(),
        "WhitelistRules" => list(input_whitelist_rule()())
      }

  """
  @type input_security_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_cloud_watch_alarm_template_response() :: %{
        "Arn" => String.t(),
        "ComparisonOperator" => list(any()),
        "CreatedAt" => non_neg_integer(),
        "DatapointsToAlarm" => integer(),
        "Description" => String.t(),
        "EvaluationPeriods" => integer(),
        "GroupId" => String.t(),
        "Id" => String.t(),
        "MetricName" => String.t(),
        "ModifiedAt" => non_neg_integer(),
        "Name" => String.t(),
        "Period" => integer(),
        "Statistic" => list(any()),
        "Tags" => map(),
        "TargetResourceType" => list(any()),
        "Threshold" => float(),
        "TreatMissingData" => list(any())
      }

  """
  @type create_cloud_watch_alarm_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      input_channel_level() :: %{
        "Gain" => integer(),
        "InputChannel" => integer()
      }

  """
  @type input_channel_level() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ms_smooth_output_settings() :: %{
        "H265PackagingType" => list(any()),
        "NameModifier" => String.t()
      }

  """
  @type ms_smooth_output_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reboot_input_device_request() :: %{
        optional("Force") => list(any())
      }

  """
  @type reboot_input_device_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      embedded_plus_scte20_destination_settings() :: %{}

  """
  @type embedded_plus_scte20_destination_settings() :: %{}

  @typedoc """

  ## Example:

      list_cloud_watch_alarm_template_groups_response() :: %{
        "CloudWatchAlarmTemplateGroups" => list(cloud_watch_alarm_template_group_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_cloud_watch_alarm_template_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_requests_exception() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      motion_graphics_deactivate_schedule_action_settings() :: %{}

  """
  @type motion_graphics_deactivate_schedule_action_settings() :: %{}

  @typedoc """

  ## Example:

      input_whitelist_rule_cidr() :: %{
        "Cidr" => String.t()
      }

  """
  @type input_whitelist_rule_cidr() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      input_device_configurable_settings() :: %{
        "AudioChannelPairs" => list(input_device_configurable_audio_channel_pair_config()()),
        "Codec" => list(any()),
        "ConfiguredInput" => list(any()),
        "LatencyMs" => integer(),
        "MaxBitrate" => integer(),
        "MediaconnectSettings" => input_device_media_connect_configurable_settings()
      }

  """
  @type input_device_configurable_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      event_bridge_rule_template_target() :: %{
        "Arn" => String.t()
      }

  """
  @type event_bridge_rule_template_target() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      smpte_tt_destination_settings() :: %{}

  """
  @type smpte_tt_destination_settings() :: %{}

  @typedoc """

  ## Example:

      stop_channel_request() :: %{}

  """
  @type stop_channel_request() :: %{}

  @typedoc """

  ## Example:

      caption_language_mapping() :: %{
        "CaptionChannel" => integer(),
        "LanguageCode" => String.t(),
        "LanguageDescription" => String.t()
      }

  """
  @type caption_language_mapping() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_multiplex_programs_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_multiplex_programs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reservation_resource_specification() :: %{
        "ChannelClass" => list(any()),
        "Codec" => list(any()),
        "MaximumBitrate" => list(any()),
        "MaximumFramerate" => list(any()),
        "Resolution" => list(any()),
        "ResourceType" => list(any()),
        "SpecialFeature" => list(any()),
        "VideoQuality" => list(any())
      }

  """
  @type reservation_resource_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_input_security_group_request() :: %{
        optional("Tags") => map(),
        optional("WhitelistRules") => list(input_whitelist_rule_cidr()())
      }

  """
  @type create_input_security_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_monitor_deployment_request() :: %{
        optional("DryRun") => boolean()
      }

  """
  @type start_monitor_deployment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_delete_request() :: %{
        optional("ChannelIds") => list(String.t()()),
        optional("InputIds") => list(String.t()()),
        optional("InputSecurityGroupIds") => list(String.t()()),
        optional("MultiplexIds") => list(String.t()())
      }

  """
  @type batch_delete_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_input_security_groups_response() :: %{
        "InputSecurityGroups" => list(input_security_group()()),
        "NextToken" => String.t()
      }

  """
  @type list_input_security_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      video_description() :: %{
        "CodecSettings" => video_codec_settings(),
        "Height" => integer(),
        "Name" => String.t(),
        "RespondToAfd" => list(any()),
        "ScalingBehavior" => list(any()),
        "Sharpness" => integer(),
        "Width" => integer()
      }

  """
  @type video_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ttml_destination_settings() :: %{
        "StyleControl" => list(any())
      }

  """
  @type ttml_destination_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_multiplex_request() :: %{}

  """
  @type start_multiplex_request() :: %{}

  @typedoc """

  ## Example:

      input_attachment() :: %{
        "AutomaticInputFailoverSettings" => automatic_input_failover_settings(),
        "InputAttachmentName" => String.t(),
        "InputId" => String.t(),
        "InputSettings" => input_settings()
      }

  """
  @type input_attachment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cdi_input_specification() :: %{
        "Resolution" => list(any())
      }

  """
  @type cdi_input_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      audio_track() :: %{
        "Track" => integer()
      }

  """
  @type audio_track() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      media_package_output_settings() :: %{}

  """
  @type media_package_output_settings() :: %{}

  @typedoc """

  ## Example:

      timecode_config() :: %{
        "Source" => list(any()),
        "SyncThreshold" => integer()
      }

  """
  @type timecode_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      accept_input_device_transfer_request() :: %{}

  """
  @type accept_input_device_transfer_request() :: %{}

  @typedoc """

  ## Example:

      list_input_devices_response() :: %{
        "InputDevices" => list(input_device_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_input_devices_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      input_specification() :: %{
        "Codec" => list(any()),
        "MaximumBitrate" => list(any()),
        "Resolution" => list(any())
      }

  """
  @type input_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pipeline_locking_settings() :: %{}

  """
  @type pipeline_locking_settings() :: %{}

  @typedoc """

  ## Example:

      create_partner_input_request() :: %{
        optional("RequestId") => String.t(),
        optional("Tags") => map()
      }

  """
  @type create_partner_input_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_schedule_action_create_request() :: %{
        "ScheduleActions" => list(schedule_action()())
      }

  """
  @type batch_schedule_action_create_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      output_group_settings() :: %{
        "ArchiveGroupSettings" => archive_group_settings(),
        "CmafIngestGroupSettings" => cmaf_ingest_group_settings(),
        "FrameCaptureGroupSettings" => frame_capture_group_settings(),
        "HlsGroupSettings" => hls_group_settings(),
        "MediaPackageGroupSettings" => media_package_group_settings(),
        "MsSmoothGroupSettings" => ms_smooth_group_settings(),
        "MultiplexGroupSettings" => multiplex_group_settings(),
        "RtmpGroupSettings" => rtmp_group_settings(),
        "UdpGroupSettings" => udp_group_settings()
      }

  """
  @type output_group_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_schedule_response() :: %{
        "NextToken" => String.t(),
        "ScheduleActions" => list(schedule_action()())
      }

  """
  @type describe_schedule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      h264_color_space_settings() :: %{
        "ColorSpacePassthroughSettings" => color_space_passthrough_settings(),
        "Rec601Settings" => rec601_settings(),
        "Rec709Settings" => rec709_settings()
      }

  """
  @type h264_color_space_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_reservation_request() :: %{
        optional("Name") => String.t(),
        optional("RenewalSettings") => renewal_settings()
      }

  """
  @type update_reservation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_tags_request() :: %{
        optional("Tags") => map()
      }

  """
  @type create_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_multiplex_response() :: %{
        "Arn" => String.t(),
        "AvailabilityZones" => list(String.t()()),
        "Destinations" => list(multiplex_output_destination()()),
        "Id" => String.t(),
        "MultiplexSettings" => multiplex_settings(),
        "Name" => String.t(),
        "PipelinesRunningCount" => integer(),
        "ProgramCount" => integer(),
        "State" => list(any()),
        "Tags" => map()
      }

  """
  @type stop_multiplex_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_input_response() :: %{
        "Input" => input()
      }

  """
  @type create_input_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      input_device_uhd_audio_channel_pair_config() :: %{
        "Id" => integer(),
        "Profile" => list(any())
      }

  """
  @type input_device_uhd_audio_channel_pair_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      video_selector_program_id() :: %{
        "ProgramId" => integer()
      }

  """
  @type video_selector_program_id() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ms_smooth_group_settings() :: %{
        "AcquisitionPointId" => String.t(),
        "AudioOnlyTimecodeControl" => list(any()),
        "CertificateMode" => list(any()),
        "ConnectionRetryInterval" => integer(),
        "Destination" => output_location_ref(),
        "EventId" => String.t(),
        "EventIdMode" => list(any()),
        "EventStopBehavior" => list(any()),
        "FilecacheDuration" => integer(),
        "FragmentLength" => integer(),
        "InputLossAction" => list(any()),
        "NumRetries" => integer(),
        "RestartDelay" => integer(),
        "SegmentationMode" => list(any()),
        "SendDelayMs" => integer(),
        "SparseTrackType" => list(any()),
        "StreamManifestBehavior" => list(any()),
        "TimestampOffset" => String.t(),
        "TimestampOffsetMode" => list(any())
      }

  """
  @type ms_smooth_group_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_cloud_watch_alarm_template_group_response() :: %{
        "Arn" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "Id" => String.t(),
        "ModifiedAt" => non_neg_integer(),
        "Name" => String.t(),
        "Tags" => map()
      }

  """
  @type get_cloud_watch_alarm_template_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_input_request() :: %{
        optional("Destinations") => list(input_destination_request()()),
        optional("InputDevices") => list(input_device_settings()()),
        optional("InputSecurityGroups") => list(String.t()()),
        optional("MediaConnectFlows") => list(media_connect_flow_request()()),
        optional("Name") => String.t(),
        optional("RequestId") => String.t(),
        optional("RoleArn") => String.t(),
        optional("Sources") => list(input_source_request()()),
        optional("Tags") => map(),
        optional("Type") => list(any()),
        optional("Vpc") => input_vpc_request()
      }

  """
  @type create_input_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hls_id3_segment_tagging_schedule_action_settings() :: %{
        "Id3" => String.t(),
        "Tag" => String.t()
      }

  """
  @type hls_id3_segment_tagging_schedule_action_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_multiplex_program_response() :: %{
        "ChannelId" => String.t(),
        "MultiplexProgramSettings" => multiplex_program_settings(),
        "PacketIdentifiersMap" => multiplex_program_packet_identifiers_map(),
        "PipelineDetails" => list(multiplex_program_pipeline_detail()()),
        "ProgramName" => String.t()
      }

  """
  @type delete_multiplex_program_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      channel_summary() :: %{
        "Arn" => String.t(),
        "CdiInputSpecification" => cdi_input_specification(),
        "ChannelClass" => list(any()),
        "Destinations" => list(output_destination()()),
        "EgressEndpoints" => list(channel_egress_endpoint()()),
        "Id" => String.t(),
        "InputAttachments" => list(input_attachment()()),
        "InputSpecification" => input_specification(),
        "LogLevel" => list(any()),
        "Maintenance" => maintenance_status(),
        "Name" => String.t(),
        "PipelinesRunningCount" => integer(),
        "RoleArn" => String.t(),
        "State" => list(any()),
        "Tags" => map(),
        "Vpc" => vpc_output_settings_description()
      }

  """
  @type channel_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hls_settings() :: %{
        "AudioOnlyHlsSettings" => audio_only_hls_settings(),
        "Fmp4HlsSettings" => fmp4_hls_settings(),
        "FrameCaptureHlsSettings" => frame_capture_hls_settings(),
        "StandardHlsSettings" => standard_hls_settings()
      }

  """
  @type hls_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      archive_container_settings() :: %{
        "M2tsSettings" => m2ts_settings(),
        "RawSettings" => raw_settings()
      }

  """
  @type archive_container_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_channel_response() :: %{
        "Arn" => String.t(),
        "CdiInputSpecification" => cdi_input_specification(),
        "ChannelClass" => list(any()),
        "Destinations" => list(output_destination()()),
        "EgressEndpoints" => list(channel_egress_endpoint()()),
        "EncoderSettings" => encoder_settings(),
        "Id" => String.t(),
        "InputAttachments" => list(input_attachment()()),
        "InputSpecification" => input_specification(),
        "LogLevel" => list(any()),
        "Maintenance" => maintenance_status(),
        "Name" => String.t(),
        "PipelineDetails" => list(pipeline_detail()()),
        "PipelinesRunningCount" => integer(),
        "RoleArn" => String.t(),
        "State" => list(any()),
        "Tags" => map(),
        "Vpc" => vpc_output_settings_description()
      }

  """
  @type stop_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_channel_request() :: %{}

  """
  @type start_channel_request() :: %{}

  @typedoc """

  ## Example:

      avail_configuration() :: %{
        "AvailSettings" => avail_settings(),
        "Scte35SegmentationScope" => list(any())
      }

  """
  @type avail_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_thumbnails_response() :: %{
        "ThumbnailDetails" => list(thumbnail_detail()())
      }

  """
  @type describe_thumbnails_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      global_configuration() :: %{
        "InitialAudioGain" => integer(),
        "InputEndAction" => list(any()),
        "InputLossBehavior" => input_loss_behavior(),
        "OutputLockingMode" => list(any()),
        "OutputLockingSettings" => output_locking_settings(),
        "OutputTimingSource" => list(any()),
        "SupportLowFramerateInputs" => list(any())
      }

  """
  @type global_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_stop_response() :: %{
        "Failed" => list(batch_failed_result_model()()),
        "Successful" => list(batch_successful_result_model()())
      }

  """
  @type batch_stop_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      input() :: %{
        "Arn" => String.t(),
        "AttachedChannels" => list(String.t()()),
        "Destinations" => list(input_destination()()),
        "Id" => String.t(),
        "InputClass" => list(any()),
        "InputDevices" => list(input_device_settings()()),
        "InputPartnerIds" => list(String.t()()),
        "InputSourceType" => list(any()),
        "MediaConnectFlows" => list(media_connect_flow()()),
        "Name" => String.t(),
        "RoleArn" => String.t(),
        "SecurityGroups" => list(String.t()()),
        "Sources" => list(input_source()()),
        "State" => list(any()),
        "Tags" => map(),
        "Type" => list(any())
      }

  """
  @type input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      automatic_input_failover_settings() :: %{
        "ErrorClearTimeMsec" => integer(),
        "FailoverConditions" => list(failover_condition()()),
        "InputPreference" => list(any()),
        "SecondaryInputId" => String.t()
      }

  """
  @type automatic_input_failover_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_input_device_maintenance_window_response() :: %{}

  """
  @type start_input_device_maintenance_window_response() :: %{}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_input_request() :: %{}

  """
  @type delete_input_request() :: %{}

  @typedoc """

  ## Example:

      update_input_request() :: %{
        optional("Destinations") => list(input_destination_request()()),
        optional("InputDevices") => list(input_device_request()()),
        optional("InputSecurityGroups") => list(String.t()()),
        optional("MediaConnectFlows") => list(media_connect_flow_request()()),
        optional("Name") => String.t(),
        optional("RoleArn") => String.t(),
        optional("Sources") => list(input_source_request()())
      }

  """
  @type update_input_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      schedule_action_settings() :: %{
        "HlsId3SegmentTaggingSettings" => hls_id3_segment_tagging_schedule_action_settings(),
        "HlsTimedMetadataSettings" => hls_timed_metadata_schedule_action_settings(),
        "InputPrepareSettings" => input_prepare_schedule_action_settings(),
        "InputSwitchSettings" => input_switch_schedule_action_settings(),
        "MotionGraphicsImageActivateSettings" => motion_graphics_activate_schedule_action_settings(),
        "MotionGraphicsImageDeactivateSettings" => motion_graphics_deactivate_schedule_action_settings(),
        "PauseStateSettings" => pause_state_schedule_action_settings(),
        "Scte35InputSettings" => scte35_input_schedule_action_settings(),
        "Scte35ReturnToNetworkSettings" => scte35_return_to_network_schedule_action_settings(),
        "Scte35SpliceInsertSettings" => scte35_splice_insert_schedule_action_settings(),
        "Scte35TimeSignalSettings" => scte35_time_signal_schedule_action_settings(),
        "StaticImageActivateSettings" => static_image_activate_schedule_action_settings(),
        "StaticImageDeactivateSettings" => static_image_deactivate_schedule_action_settings(),
        "StaticImageOutputActivateSettings" => static_image_output_activate_schedule_action_settings(),
        "StaticImageOutputDeactivateSettings" => static_image_output_deactivate_schedule_action_settings()
      }

  """
  @type schedule_action_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      multiplex_media_connect_output_destination_settings() :: %{
        "EntitlementArn" => String.t()
      }

  """
  @type multiplex_media_connect_output_destination_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_reservation_response() :: %{
        "Arn" => String.t(),
        "Count" => integer(),
        "CurrencyCode" => String.t(),
        "Duration" => integer(),
        "DurationUnits" => list(any()),
        "End" => String.t(),
        "FixedPrice" => float(),
        "Name" => String.t(),
        "OfferingDescription" => String.t(),
        "OfferingId" => String.t(),
        "OfferingType" => list(any()),
        "Region" => String.t(),
        "RenewalSettings" => renewal_settings(),
        "ReservationId" => String.t(),
        "ResourceSpecification" => reservation_resource_specification(),
        "Start" => String.t(),
        "State" => list(any()),
        "Tags" => map(),
        "UsagePrice" => float()
      }

  """
  @type delete_reservation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      nielsen_naes_ii_nw() :: %{
        "CheckDigitString" => String.t(),
        "Sid" => float(),
        "Timezone" => list(any())
      }

  """
  @type nielsen_naes_ii_nw() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      rec601_settings() :: %{}

  """
  @type rec601_settings() :: %{}

  @typedoc """

  ## Example:

      get_cloud_watch_alarm_template_group_request() :: %{}

  """
  @type get_cloud_watch_alarm_template_group_request() :: %{}

  @typedoc """

  ## Example:

      batch_stop_request() :: %{
        optional("ChannelIds") => list(String.t()()),
        optional("MultiplexIds") => list(String.t()())
      }

  """
  @type batch_stop_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_event_bridge_rule_template_group_request() :: %{}

  """
  @type get_event_bridge_rule_template_group_request() :: %{}

  @typedoc """

  ## Example:

      cancel_input_device_transfer_request() :: %{}

  """
  @type cancel_input_device_transfer_request() :: %{}

  @typedoc """

  ## Example:

      output_group() :: %{
        "Name" => String.t(),
        "OutputGroupSettings" => output_group_settings(),
        "Outputs" => list(output()())
      }

  """
  @type output_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      input_device_uhd_settings() :: %{
        "ActiveInput" => list(any()),
        "AudioChannelPairs" => list(input_device_uhd_audio_channel_pair_config()()),
        "Codec" => list(any()),
        "ConfiguredInput" => list(any()),
        "DeviceState" => list(any()),
        "Framerate" => float(),
        "Height" => integer(),
        "LatencyMs" => integer(),
        "MaxBitrate" => integer(),
        "MediaconnectSettings" => input_device_media_connect_settings(),
        "ScanType" => list(any()),
        "Width" => integer()
      }

  """
  @type input_device_uhd_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      arib_source_settings() :: %{}

  """
  @type arib_source_settings() :: %{}

  @typedoc """

  ## Example:

      list_inputs_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_inputs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_input_security_group_request() :: %{}

  """
  @type delete_input_security_group_request() :: %{}

  @typedoc """

  ## Example:

      multiplex_group_settings() :: %{}

  """
  @type multiplex_group_settings() :: %{}

  @typedoc """

  ## Example:

      audio_description() :: %{
        "AudioDashRoles" => list(list(any())()),
        "AudioNormalizationSettings" => audio_normalization_settings(),
        "AudioSelectorName" => String.t(),
        "AudioType" => list(any()),
        "AudioTypeControl" => list(any()),
        "AudioWatermarkingSettings" => audio_watermark_settings(),
        "CodecSettings" => audio_codec_settings(),
        "DvbDashAccessibility" => list(any()),
        "LanguageCode" => String.t(),
        "LanguageCodeControl" => list(any()),
        "Name" => String.t(),
        "RemixSettings" => remix_settings(),
        "StreamName" => String.t()
      }

  """
  @type audio_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_partner_input_response() :: %{
        "Input" => input()
      }

  """
  @type create_partner_input_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      archive_output_settings() :: %{
        "ContainerSettings" => archive_container_settings(),
        "Extension" => String.t(),
        "NameModifier" => String.t()
      }

  """
  @type archive_output_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_channel_class_request() :: %{
        optional("Destinations") => list(output_destination()()),
        required("ChannelClass") => list(any())
      }

  """
  @type update_channel_class_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      video_codec_settings() :: %{
        "FrameCaptureSettings" => frame_capture_settings(),
        "H264Settings" => h264_settings(),
        "H265Settings" => h265_settings(),
        "Mpeg2Settings" => mpeg2_settings()
      }

  """
  @type video_codec_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      udp_group_settings() :: %{
        "InputLossAction" => list(any()),
        "TimedMetadataId3Frame" => list(any()),
        "TimedMetadataId3Period" => integer()
      }

  """
  @type udp_group_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_input_security_group_response() :: %{
        "SecurityGroup" => input_security_group()
      }

  """
  @type create_input_security_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_channel_response() :: %{
        "Arn" => String.t(),
        "CdiInputSpecification" => cdi_input_specification(),
        "ChannelClass" => list(any()),
        "Destinations" => list(output_destination()()),
        "EgressEndpoints" => list(channel_egress_endpoint()()),
        "EncoderSettings" => encoder_settings(),
        "Id" => String.t(),
        "InputAttachments" => list(input_attachment()()),
        "InputSpecification" => input_specification(),
        "LogLevel" => list(any()),
        "Maintenance" => maintenance_status(),
        "Name" => String.t(),
        "PipelineDetails" => list(pipeline_detail()()),
        "PipelinesRunningCount" => integer(),
        "RoleArn" => String.t(),
        "State" => list(any()),
        "Tags" => map(),
        "Vpc" => vpc_output_settings_description()
      }

  """
  @type describe_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_multiplex_program_response() :: %{
        "ChannelId" => String.t(),
        "MultiplexProgramSettings" => multiplex_program_settings(),
        "PacketIdentifiersMap" => multiplex_program_packet_identifiers_map(),
        "PipelineDetails" => list(multiplex_program_pipeline_detail()()),
        "ProgramName" => String.t()
      }

  """
  @type describe_multiplex_program_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      rtmp_group_settings() :: %{
        "AdMarkers" => list(list(any())()),
        "AuthenticationScheme" => list(any()),
        "CacheFullBehavior" => list(any()),
        "CacheLength" => integer(),
        "CaptionData" => list(any()),
        "IncludeFillerNalUnits" => list(any()),
        "InputLossAction" => list(any()),
        "RestartDelay" => integer()
      }

  """
  @type rtmp_group_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_cloud_watch_alarm_template_response() :: %{
        "Arn" => String.t(),
        "ComparisonOperator" => list(any()),
        "CreatedAt" => non_neg_integer(),
        "DatapointsToAlarm" => integer(),
        "Description" => String.t(),
        "EvaluationPeriods" => integer(),
        "GroupId" => String.t(),
        "Id" => String.t(),
        "MetricName" => String.t(),
        "ModifiedAt" => non_neg_integer(),
        "Name" => String.t(),
        "Period" => integer(),
        "Statistic" => list(any()),
        "Tags" => map(),
        "TargetResourceType" => list(any()),
        "Threshold" => float(),
        "TreatMissingData" => list(any())
      }

  """
  @type get_cloud_watch_alarm_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      input_loss_behavior() :: %{
        "BlackFrameMsec" => integer(),
        "InputLossImageColor" => String.t(),
        "InputLossImageSlate" => input_location(),
        "InputLossImageType" => list(any()),
        "RepeatFrameMsec" => integer()
      }

  """
  @type input_loss_behavior() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_multiplex_request() :: %{
        optional("MultiplexSettings") => multiplex_settings(),
        optional("Name") => String.t()
      }

  """
  @type update_multiplex_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      eac3_settings() :: %{
        "AttenuationControl" => list(any()),
        "Bitrate" => float(),
        "BitstreamMode" => list(any()),
        "CodingMode" => list(any()),
        "DcFilter" => list(any()),
        "Dialnorm" => integer(),
        "DrcLine" => list(any()),
        "DrcRf" => list(any()),
        "LfeControl" => list(any()),
        "LfeFilter" => list(any()),
        "LoRoCenterMixLevel" => float(),
        "LoRoSurroundMixLevel" => float(),
        "LtRtCenterMixLevel" => float(),
        "LtRtSurroundMixLevel" => float(),
        "MetadataControl" => list(any()),
        "PassthroughControl" => list(any()),
        "PhaseControl" => list(any()),
        "StereoDownmix" => list(any()),
        "SurroundExMode" => list(any()),
        "SurroundMode" => list(any())
      }

  """
  @type eac3_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_thumbnails_request() :: %{
        required("PipelineId") => String.t(),
        required("ThumbnailType") => String.t()
      }

  """
  @type describe_thumbnails_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      scte20_plus_embedded_destination_settings() :: %{}

  """
  @type scte20_plus_embedded_destination_settings() :: %{}

  @typedoc """

  ## Example:

      create_signal_map_response() :: %{
        "Arn" => String.t(),
        "CloudWatchAlarmTemplateGroupIds" => list(String.t()()),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "DiscoveryEntryPointArn" => String.t(),
        "ErrorMessage" => String.t(),
        "EventBridgeRuleTemplateGroupIds" => list(String.t()()),
        "FailedMediaResourceMap" => map(),
        "Id" => String.t(),
        "LastDiscoveredAt" => non_neg_integer(),
        "LastSuccessfulMonitorDeployment" => successful_monitor_deployment(),
        "MediaResourceMap" => map(),
        "ModifiedAt" => non_neg_integer(),
        "MonitorChangesPendingDeployment" => boolean(),
        "MonitorDeployment" => monitor_deployment(),
        "Name" => String.t(),
        "Status" => list(any()),
        "Tags" => map()
      }

  """
  @type create_signal_map_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      not_found_exception() :: %{
        "Message" => String.t()
      }

  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_timecode() :: %{
        "Timecode" => String.t()
      }

  """
  @type start_timecode() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_cloud_watch_alarm_template_group_request() :: %{
        optional("Description") => String.t()
      }

  """
  @type update_cloud_watch_alarm_template_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_channel_request() :: %{}

  """
  @type describe_channel_request() :: %{}

  @typedoc """

  ## Example:

      batch_update_schedule_response() :: %{
        "Creates" => batch_schedule_action_create_result(),
        "Deletes" => batch_schedule_action_delete_result()
      }

  """
  @type batch_update_schedule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      scte35_input_schedule_action_settings() :: %{
        "InputAttachmentNameReference" => String.t(),
        "Mode" => list(any())
      }

  """
  @type scte35_input_schedule_action_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      caption_destination_settings() :: %{
        "AribDestinationSettings" => arib_destination_settings(),
        "BurnInDestinationSettings" => burn_in_destination_settings(),
        "DvbSubDestinationSettings" => dvb_sub_destination_settings(),
        "EbuTtDDestinationSettings" => ebu_tt_d_destination_settings(),
        "EmbeddedDestinationSettings" => embedded_destination_settings(),
        "EmbeddedPlusScte20DestinationSettings" => embedded_plus_scte20_destination_settings(),
        "RtmpCaptionInfoDestinationSettings" => rtmp_caption_info_destination_settings(),
        "Scte20PlusEmbeddedDestinationSettings" => scte20_plus_embedded_destination_settings(),
        "Scte27DestinationSettings" => scte27_destination_settings(),
        "SmpteTtDestinationSettings" => smpte_tt_destination_settings(),
        "TeletextDestinationSettings" => teletext_destination_settings(),
        "TtmlDestinationSettings" => ttml_destination_settings(),
        "WebvttDestinationSettings" => webvtt_destination_settings()
      }

  """
  @type caption_destination_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_input_response() :: %{
        "Arn" => String.t(),
        "AttachedChannels" => list(String.t()()),
        "Destinations" => list(input_destination()()),
        "Id" => String.t(),
        "InputClass" => list(any()),
        "InputDevices" => list(input_device_settings()()),
        "InputPartnerIds" => list(String.t()()),
        "InputSourceType" => list(any()),
        "MediaConnectFlows" => list(media_connect_flow()()),
        "Name" => String.t(),
        "RoleArn" => String.t(),
        "SecurityGroups" => list(String.t()()),
        "Sources" => list(input_source()()),
        "State" => list(any()),
        "Tags" => map(),
        "Type" => list(any())
      }

  """
  @type describe_input_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      media_resource_neighbor() :: %{
        "Arn" => String.t(),
        "Name" => String.t()
      }

  """
  @type media_resource_neighbor() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_channel_request() :: %{
        optional("CdiInputSpecification") => cdi_input_specification(),
        optional("ChannelClass") => list(any()),
        optional("Destinations") => list(output_destination()()),
        optional("EncoderSettings") => encoder_settings(),
        optional("InputAttachments") => list(input_attachment()()),
        optional("InputSpecification") => input_specification(),
        optional("LogLevel") => list(any()),
        optional("Maintenance") => maintenance_create_settings(),
        optional("Name") => String.t(),
        optional("RequestId") => String.t(),
        optional("Reserved") => String.t(),
        optional("RoleArn") => String.t(),
        optional("Tags") => map(),
        optional("Vpc") => vpc_output_settings()
      }

  """
  @type create_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_delete_monitor_deployment_response() :: %{
        "Arn" => String.t(),
        "CloudWatchAlarmTemplateGroupIds" => list(String.t()()),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "DiscoveryEntryPointArn" => String.t(),
        "ErrorMessage" => String.t(),
        "EventBridgeRuleTemplateGroupIds" => list(String.t()()),
        "FailedMediaResourceMap" => map(),
        "Id" => String.t(),
        "LastDiscoveredAt" => non_neg_integer(),
        "LastSuccessfulMonitorDeployment" => successful_monitor_deployment(),
        "MediaResourceMap" => map(),
        "ModifiedAt" => non_neg_integer(),
        "MonitorChangesPendingDeployment" => boolean(),
        "MonitorDeployment" => monitor_deployment(),
        "Name" => String.t(),
        "Status" => list(any()),
        "Tags" => map()
      }

  """
  @type start_delete_monitor_deployment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      motion_graphics_settings() :: %{
        "HtmlMotionGraphicsSettings" => html_motion_graphics_settings()
      }

  """
  @type motion_graphics_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_event_bridge_rule_template_group_request() :: %{}

  """
  @type delete_event_bridge_rule_template_group_request() :: %{}

  @typedoc """

  ## Example:

      h265_settings() :: %{
        "MvTemporalPredictor" => list(any()),
        "LookAheadRateControl" => list(any()),
        "TileWidth" => integer(),
        "TreeblockSize" => list(any()),
        "ColorSpaceSettings" => h265_color_space_settings(),
        "QvbrQualityLevel" => integer(),
        "Profile" => list(any()),
        "AlternativeTransferFunction" => list(any()),
        "FilterSettings" => h265_filter_settings(),
        "TileHeight" => integer(),
        "Bitrate" => integer(),
        "BufSize" => integer(),
        "RateControlMode" => list(any()),
        "GopSizeUnits" => list(any()),
        "MinIInterval" => integer(),
        "AdaptiveQuantization" => list(any()),
        "MvOverPictureBoundaries" => list(any()),
        "Level" => list(any()),
        "TimecodeBurninSettings" => timecode_burnin_settings(),
        "FramerateDenominator" => integer(),
        "FlickerAq" => list(any()),
        "TimecodeInsertion" => list(any()),
        "TilePadding" => list(any()),
        "ParNumerator" => integer(),
        "GopClosedCadence" => integer(),
        "FramerateNumerator" => integer(),
        "Tier" => list(any()),
        "ParDenominator" => integer(),
        "ScanType" => list(any()),
        "GopSize" => float(),
        "FixedAfd" => list(any()),
        "ColorMetadata" => list(any()),
        "SceneChangeDetect" => list(any()),
        "AfdSignaling" => list(any()),
        "Slices" => integer(),
        "MaxBitrate" => integer()
      }

  """
  @type h265_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      output_locking_settings() :: %{
        "EpochLockingSettings" => epoch_locking_settings(),
        "PipelineLockingSettings" => pipeline_locking_settings()
      }

  """
  @type output_locking_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      teletext_destination_settings() :: %{}

  """
  @type teletext_destination_settings() :: %{}

  @typedoc """

  ## Example:

      color_space_passthrough_settings() :: %{}

  """
  @type color_space_passthrough_settings() :: %{}

  @typedoc """

  ## Example:

      create_multiplex_program_response() :: %{
        "MultiplexProgram" => multiplex_program()
      }

  """
  @type create_multiplex_program_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_multiplex_response() :: %{
        "Arn" => String.t(),
        "AvailabilityZones" => list(String.t()()),
        "Destinations" => list(multiplex_output_destination()()),
        "Id" => String.t(),
        "MultiplexSettings" => multiplex_settings(),
        "Name" => String.t(),
        "PipelinesRunningCount" => integer(),
        "ProgramCount" => integer(),
        "State" => list(any()),
        "Tags" => map()
      }

  """
  @type start_multiplex_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_error() :: %{
        "ElementPath" => String.t(),
        "ErrorMessage" => String.t()
      }

  """
  @type validation_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      transfer_input_device_request() :: %{
        optional("TargetCustomerId") => String.t(),
        optional("TargetRegion") => String.t(),
        optional("TransferMessage") => String.t()
      }

  """
  @type transfer_input_device_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      multiplex_program_packet_identifiers_map() :: %{
        "AudioPids" => list(integer()()),
        "DvbSubPids" => list(integer()()),
        "DvbTeletextPid" => integer(),
        "EtvPlatformPid" => integer(),
        "EtvSignalPid" => integer(),
        "KlvDataPids" => list(integer()()),
        "PcrPid" => integer(),
        "PmtPid" => integer(),
        "PrivateMetadataPid" => integer(),
        "Scte27Pids" => list(integer()()),
        "Scte35Pid" => integer(),
        "TimedMetadataPid" => integer(),
        "VideoPid" => integer()
      }

  """
  @type multiplex_program_packet_identifiers_map() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_input_device_request() :: %{}

  """
  @type stop_input_device_request() :: %{}

  @typedoc """

  ## Example:

      update_multiplex_response() :: %{
        "Multiplex" => multiplex()
      }

  """
  @type update_multiplex_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      feature_activations() :: %{
        "InputPrepareScheduleActions" => list(any()),
        "OutputStaticImageOverlayScheduleActions" => list(any())
      }

  """
  @type feature_activations() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      multiplex_output_settings() :: %{
        "Destination" => output_location_ref()
      }

  """
  @type multiplex_output_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reservation() :: %{
        "Arn" => String.t(),
        "Count" => integer(),
        "CurrencyCode" => String.t(),
        "Duration" => integer(),
        "DurationUnits" => list(any()),
        "End" => String.t(),
        "FixedPrice" => float(),
        "Name" => String.t(),
        "OfferingDescription" => String.t(),
        "OfferingId" => String.t(),
        "OfferingType" => list(any()),
        "Region" => String.t(),
        "RenewalSettings" => renewal_settings(),
        "ReservationId" => String.t(),
        "ResourceSpecification" => reservation_resource_specification(),
        "Start" => String.t(),
        "State" => list(any()),
        "Tags" => map(),
        "UsagePrice" => float()
      }

  """
  @type reservation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_schedule_action_create_result() :: %{
        "ScheduleActions" => list(schedule_action()())
      }

  """
  @type batch_schedule_action_create_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      archive_cdn_settings() :: %{
        "ArchiveS3Settings" => archive_s3_settings()
      }

  """
  @type archive_cdn_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_input_device_thumbnail_request() :: %{
        required("Accept") => list(any())
      }

  """
  @type describe_input_device_thumbnail_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_inputs_response() :: %{
        "Inputs" => list(input()()),
        "NextToken" => String.t()
      }

  """
  @type list_inputs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ancillary_source_settings() :: %{
        "SourceAncillaryChannelNumber" => integer()
      }

  """
  @type ancillary_source_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_event_bridge_rule_template_request() :: %{}

  """
  @type delete_event_bridge_rule_template_request() :: %{}

  @typedoc """

  ## Example:

      html_motion_graphics_settings() :: %{}

  """
  @type html_motion_graphics_settings() :: %{}

  @typedoc """

  ## Example:

      list_channels_response() :: %{
        "Channels" => list(channel_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_channels_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_delete_monitor_deployment_request() :: %{}

  """
  @type start_delete_monitor_deployment_request() :: %{}

  @typedoc """

  ## Example:

      nielsen_c_b_e_t() :: %{
        "CbetCheckDigitString" => String.t(),
        "CbetStepaside" => list(any()),
        "Csid" => String.t()
      }

  """
  @type nielsen_c_b_e_t() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      audio_selector_settings() :: %{
        "AudioHlsRenditionSelection" => audio_hls_rendition_selection(),
        "AudioLanguageSelection" => audio_language_selection(),
        "AudioPidSelection" => audio_pid_selection(),
        "AudioTrackSelection" => audio_track_selection()
      }

  """
  @type audio_selector_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      input_switch_schedule_action_settings() :: %{
        "InputAttachmentNameReference" => String.t(),
        "InputClippingSettings" => input_clipping_settings(),
        "UrlPath" => list(String.t()())
      }

  """
  @type input_switch_schedule_action_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dvb_sub_destination_settings() :: %{
        "Alignment" => list(any()),
        "BackgroundColor" => list(any()),
        "BackgroundOpacity" => integer(),
        "Font" => input_location(),
        "FontColor" => list(any()),
        "FontOpacity" => integer(),
        "FontResolution" => integer(),
        "FontSize" => String.t(),
        "OutlineColor" => list(any()),
        "OutlineSize" => integer(),
        "ShadowColor" => list(any()),
        "ShadowOpacity" => integer(),
        "ShadowXOffset" => integer(),
        "ShadowYOffset" => integer(),
        "TeletextGridControl" => list(any()),
        "XPosition" => integer(),
        "YPosition" => integer()
      }

  """
  @type dvb_sub_destination_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      video_selector() :: %{
        "ColorSpace" => list(any()),
        "ColorSpaceSettings" => video_selector_color_space_settings(),
        "ColorSpaceUsage" => list(any()),
        "SelectorSettings" => video_selector_settings()
      }

  """
  @type video_selector() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      audio_language_selection() :: %{
        "LanguageCode" => String.t(),
        "LanguageSelectionPolicy" => list(any())
      }

  """
  @type audio_language_selection() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      audio_channel_mapping() :: %{
        "InputChannelLevels" => list(input_channel_level()()),
        "OutputChannel" => integer()
      }

  """
  @type audio_channel_mapping() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hls_group_settings() :: %{
        "RedundantManifest" => list(any()),
        "HlsId3SegmentTagging" => list(any()),
        "TimestampDeltaMilliseconds" => integer(),
        "DirectoryStructure" => list(any()),
        "KeyProviderSettings" => key_provider_settings(),
        "EncryptionType" => list(any()),
        "SegmentationMode" => list(any()),
        "StreamInfResolution" => list(any()),
        "Mode" => list(any()),
        "IndexNSegments" => integer(),
        "ClientCache" => list(any()),
        "SegmentLength" => integer(),
        "CaptionLanguageSetting" => list(any()),
        "HlsCdnSettings" => hls_cdn_settings(),
        "ConstantIv" => String.t(),
        "DiscontinuityTags" => list(any()),
        "Destination" => output_location_ref(),
        "BaseUrlManifest" => String.t(),
        "TsFileMode" => list(any()),
        "OutputSelection" => list(any()),
        "CaptionLanguageMappings" => list(caption_language_mapping()()),
        "KeepSegments" => integer(),
        "TimedMetadataId3Frame" => list(any()),
        "SegmentsPerSubdirectory" => integer(),
        "KeyFormatVersions" => String.t(),
        "ManifestCompression" => list(any()),
        "ProgramDateTimePeriod" => integer(),
        "TimedMetadataId3Period" => integer(),
        "BaseUrlContent1" => String.t(),
        "IvInManifest" => list(any()),
        "MinSegmentLength" => integer(),
        "InputLossAction" => list(any()),
        "ProgramDateTime" => list(any()),
        "CodecSpecification" => list(any()),
        "ProgramDateTimeClock" => list(any()),
        "ManifestDurationFormat" => list(any()),
        "IFrameOnlyPlaylists" => list(any()),
        "IncompleteSegmentBehavior" => list(any()),
        "BaseUrlManifest1" => String.t(),
        "AdMarkers" => list(list(any())()),
        "BaseUrlContent" => String.t(),
        "IvSource" => list(any()),
        "KeyFormat" => String.t()
      }

  """
  @type hls_group_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      h264_filter_settings() :: %{
        "TemporalFilterSettings" => temporal_filter_settings()
      }

  """
  @type h264_filter_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      output_settings() :: %{
        "ArchiveOutputSettings" => archive_output_settings(),
        "CmafIngestOutputSettings" => cmaf_ingest_output_settings(),
        "FrameCaptureOutputSettings" => frame_capture_output_settings(),
        "HlsOutputSettings" => hls_output_settings(),
        "MediaPackageOutputSettings" => media_package_output_settings(),
        "MsSmoothOutputSettings" => ms_smooth_output_settings(),
        "MultiplexOutputSettings" => multiplex_output_settings(),
        "RtmpOutputSettings" => rtmp_output_settings(),
        "UdpOutputSettings" => udp_output_settings()
      }

  """
  @type output_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_channel_request() :: %{
        optional("CdiInputSpecification") => cdi_input_specification(),
        optional("Destinations") => list(output_destination()()),
        optional("EncoderSettings") => encoder_settings(),
        optional("InputAttachments") => list(input_attachment()()),
        optional("InputSpecification") => input_specification(),
        optional("LogLevel") => list(any()),
        optional("Maintenance") => maintenance_update_settings(),
        optional("Name") => String.t(),
        optional("RoleArn") => String.t()
      }

  """
  @type update_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      fmp4_hls_settings() :: %{
        "AudioRenditionSets" => String.t(),
        "NielsenId3Behavior" => list(any()),
        "TimedMetadataBehavior" => list(any())
      }

  """
  @type fmp4_hls_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      multiplex_settings() :: %{
        "MaximumVideoBufferDelayMilliseconds" => integer(),
        "TransportStreamBitrate" => integer(),
        "TransportStreamId" => integer(),
        "TransportStreamReservedBitrate" => integer()
      }

  """
  @type multiplex_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      audio_selector() :: %{
        "Name" => String.t(),
        "SelectorSettings" => audio_selector_settings()
      }

  """
  @type audio_selector() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      input_device_configurable_audio_channel_pair_config() :: %{
        "Id" => integer(),
        "Profile" => list(any())
      }

  """
  @type input_device_configurable_audio_channel_pair_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      multiplex_program_service_descriptor() :: %{
        "ProviderName" => String.t(),
        "ServiceName" => String.t()
      }

  """
  @type multiplex_program_service_descriptor() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      media_connect_flow_request() :: %{
        "FlowArn" => String.t()
      }

  """
  @type media_connect_flow_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_multiplex_response() :: %{
        "Arn" => String.t(),
        "AvailabilityZones" => list(String.t()()),
        "Destinations" => list(multiplex_output_destination()()),
        "Id" => String.t(),
        "MultiplexSettings" => multiplex_settings(),
        "Name" => String.t(),
        "PipelinesRunningCount" => integer(),
        "ProgramCount" => integer(),
        "State" => list(any()),
        "Tags" => map()
      }

  """
  @type describe_multiplex_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_signal_map_response() :: %{
        "Arn" => String.t(),
        "CloudWatchAlarmTemplateGroupIds" => list(String.t()()),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "DiscoveryEntryPointArn" => String.t(),
        "ErrorMessage" => String.t(),
        "EventBridgeRuleTemplateGroupIds" => list(String.t()()),
        "FailedMediaResourceMap" => map(),
        "Id" => String.t(),
        "LastDiscoveredAt" => non_neg_integer(),
        "LastSuccessfulMonitorDeployment" => successful_monitor_deployment(),
        "MediaResourceMap" => map(),
        "ModifiedAt" => non_neg_integer(),
        "MonitorChangesPendingDeployment" => boolean(),
        "MonitorDeployment" => monitor_deployment(),
        "Name" => String.t(),
        "Status" => list(any()),
        "Tags" => map()
      }

  """
  @type get_signal_map_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_cloud_watch_alarm_template_request() :: %{}

  """
  @type get_cloud_watch_alarm_template_request() :: %{}

  @typedoc """

  ## Example:

      describe_input_device_thumbnail_response() :: %{
        "Body" => binary(),
        "ContentLength" => float(),
        "ContentType" => list(any()),
        "ETag" => String.t(),
        "LastModified" => non_neg_integer()
      }

  """
  @type describe_input_device_thumbnail_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      motion_graphics_activate_schedule_action_settings() :: %{
        "Duration" => float(),
        "PasswordParam" => String.t(),
        "Url" => String.t(),
        "Username" => String.t()
      }

  """
  @type motion_graphics_activate_schedule_action_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      nielsen_watermarks_settings() :: %{
        "NielsenCbetSettings" => nielsen_c_b_e_t(),
        "NielsenDistributionType" => list(any()),
        "NielsenNaesIiNwSettings" => nielsen_naes_ii_nw()
      }

  """
  @type nielsen_watermarks_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      key_provider_settings() :: %{
        "StaticKeySettings" => static_key_settings()
      }

  """
  @type key_provider_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      avail_blanking() :: %{
        "AvailBlankingImage" => input_location(),
        "State" => list(any())
      }

  """
  @type avail_blanking() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      output_location_ref() :: %{
        "DestinationRefId" => String.t()
      }

  """
  @type output_location_ref() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      temporal_filter_settings() :: %{
        "PostFilterSharpening" => list(any()),
        "Strength" => list(any())
      }

  """
  @type temporal_filter_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_multiplex_program_response() :: %{
        "MultiplexProgram" => multiplex_program()
      }

  """
  @type update_multiplex_program_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_input_response() :: %{}

  """
  @type delete_input_response() :: %{}

  @typedoc """

  ## Example:

      frame_capture_s3_settings() :: %{
        "CannedAcl" => list(any())
      }

  """
  @type frame_capture_s3_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      scte35_time_signal_schedule_action_settings() :: %{
        "Scte35Descriptors" => list(scte35_descriptor()())
      }

  """
  @type scte35_time_signal_schedule_action_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      arib_destination_settings() :: %{}

  """
  @type arib_destination_settings() :: %{}

  @typedoc """

  ## Example:

      cmaf_ingest_output_settings() :: %{
        "NameModifier" => String.t()
      }

  """
  @type cmaf_ingest_output_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      schedule_action() :: %{
        "ActionName" => String.t(),
        "ScheduleActionSettings" => schedule_action_settings(),
        "ScheduleActionStartSettings" => schedule_action_start_settings()
      }

  """
  @type schedule_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_multiplex_program_request() :: %{
        optional("MultiplexProgramSettings") => multiplex_program_settings()
      }

  """
  @type update_multiplex_program_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      epoch_locking_settings() :: %{
        "CustomEpoch" => String.t(),
        "JamSyncTime" => String.t()
      }

  """
  @type epoch_locking_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      static_image_deactivate_schedule_action_settings() :: %{
        "FadeOut" => integer(),
        "Layer" => integer()
      }

  """
  @type static_image_deactivate_schedule_action_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_multiplex_request() :: %{}

  """
  @type describe_multiplex_request() :: %{}

  @typedoc """

  ## Example:

      media_package_group_settings() :: %{
        "Destination" => output_location_ref()
      }

  """
  @type media_package_group_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_signal_map_request() :: %{
        optional("CloudWatchAlarmTemplateGroupIdentifiers") => list(String.t()()),
        optional("Description") => String.t(),
        optional("EventBridgeRuleTemplateGroupIdentifiers") => list(String.t()()),
        optional("Tags") => map(),
        required("DiscoveryEntryPointArn") => String.t(),
        required("Name") => String.t()
      }

  """
  @type create_signal_map_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_multiplex_request() :: %{}

  """
  @type delete_multiplex_request() :: %{}

  @typedoc """

  ## Example:

      teletext_source_settings() :: %{
        "OutputRectangle" => caption_rectangle(),
        "PageNumber" => String.t()
      }

  """
  @type teletext_source_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      maintenance_status() :: %{
        "MaintenanceDay" => list(any()),
        "MaintenanceDeadline" => String.t(),
        "MaintenanceScheduledDate" => String.t(),
        "MaintenanceStartTime" => String.t()
      }

  """
  @type maintenance_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      frame_capture_hls_settings() :: %{}

  """
  @type frame_capture_hls_settings() :: %{}

  @typedoc """

  ## Example:

      esam() :: %{
        "AcquisitionPointId" => String.t(),
        "AdAvailOffset" => integer(),
        "PasswordParam" => String.t(),
        "PoisEndpoint" => String.t(),
        "Username" => String.t(),
        "ZoneIdentity" => String.t()
      }

  """
  @type esam() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      static_image_output_activate_schedule_action_settings() :: %{
        "Duration" => integer(),
        "FadeIn" => integer(),
        "FadeOut" => integer(),
        "Height" => integer(),
        "Image" => input_location(),
        "ImageX" => integer(),
        "ImageY" => integer(),
        "Layer" => integer(),
        "Opacity" => integer(),
        "OutputNames" => list(String.t()()),
        "Width" => integer()
      }

  """
  @type static_image_output_activate_schedule_action_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      input_whitelist_rule() :: %{
        "Cidr" => String.t()
      }

  """
  @type input_whitelist_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_input_security_group_request() :: %{}

  """
  @type describe_input_security_group_request() :: %{}

  @typedoc """

  ## Example:

      vpc_output_settings_description() :: %{
        "AvailabilityZones" => list(String.t()()),
        "NetworkInterfaceIds" => list(String.t()()),
        "SecurityGroupIds" => list(String.t()()),
        "SubnetIds" => list(String.t()())
      }

  """
  @type vpc_output_settings_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      blackout_slate() :: %{
        "BlackoutSlateImage" => input_location(),
        "NetworkEndBlackout" => list(any()),
        "NetworkEndBlackoutImage" => input_location(),
        "NetworkId" => String.t(),
        "State" => list(any())
      }

  """
  @type blackout_slate() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vpc_output_settings() :: %{
        "PublicAddressAllocationIds" => list(String.t()()),
        "SecurityGroupIds" => list(String.t()()),
        "SubnetIds" => list(String.t()())
      }

  """
  @type vpc_output_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      input_prepare_schedule_action_settings() :: %{
        "InputAttachmentNameReference" => String.t(),
        "InputClippingSettings" => input_clipping_settings(),
        "UrlPath" => list(String.t()())
      }

  """
  @type input_prepare_schedule_action_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_event_bridge_rule_template_group_response() :: %{
        "Arn" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "Id" => String.t(),
        "ModifiedAt" => non_neg_integer(),
        "Name" => String.t(),
        "Tags" => map()
      }

  """
  @type create_event_bridge_rule_template_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      failover_condition() :: %{
        "FailoverConditionSettings" => failover_condition_settings()
      }

  """
  @type failover_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_event_bridge_rule_template_request() :: %{
        optional("Description") => String.t(),
        optional("EventTargets") => list(event_bridge_rule_template_target()()),
        optional("EventType") => list(any()),
        optional("GroupIdentifier") => String.t(),
        optional("Name") => String.t()
      }

  """
  @type update_event_bridge_rule_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dvb_tdt_settings() :: %{
        "RepInterval" => integer()
      }

  """
  @type dvb_tdt_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_input_devices_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_input_devices_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      standard_hls_settings() :: %{
        "AudioRenditionSets" => String.t(),
        "M3u8Settings" => m3u8_settings()
      }

  """
  @type standard_hls_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unprocessable_entity_exception() :: %{
        "Message" => String.t(),
        "ValidationErrors" => list(validation_error()())
      }

  """
  @type unprocessable_entity_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      encoder_settings() :: %{
        "AudioDescriptions" => list(audio_description()()),
        "AvailBlanking" => avail_blanking(),
        "AvailConfiguration" => avail_configuration(),
        "BlackoutSlate" => blackout_slate(),
        "CaptionDescriptions" => list(caption_description()()),
        "ColorCorrectionSettings" => color_correction_settings(),
        "FeatureActivations" => feature_activations(),
        "GlobalConfiguration" => global_configuration(),
        "MotionGraphicsConfiguration" => motion_graphics_configuration(),
        "NielsenConfiguration" => nielsen_configuration(),
        "OutputGroups" => list(output_group()()),
        "ThumbnailConfiguration" => thumbnail_configuration(),
        "TimecodeConfig" => timecode_config(),
        "VideoDescriptions" => list(video_description()())
      }

  """
  @type encoder_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      webvtt_destination_settings() :: %{
        "StyleControl" => list(any())
      }

  """
  @type webvtt_destination_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      avail_settings() :: %{
        "Esam" => esam(),
        "Scte35SpliceInsert" => scte35_splice_insert(),
        "Scte35TimeSignalApos" => scte35_time_signal_apos()
      }

  """
  @type avail_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dolby_vision81_settings() :: %{}

  """
  @type dolby_vision81_settings() :: %{}

  @typedoc """

  ## Example:

      list_reservations_response() :: %{
        "NextToken" => String.t(),
        "Reservations" => list(reservation()())
      }

  """
  @type list_reservations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_input_device_maintenance_window_request() :: %{}

  """
  @type start_input_device_maintenance_window_request() :: %{}

  @typedoc """

  ## Example:

      h265_filter_settings() :: %{
        "TemporalFilterSettings" => temporal_filter_settings()
      }

  """
  @type h265_filter_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hls_timed_metadata_schedule_action_settings() :: %{
        "Id3" => String.t()
      }

  """
  @type hls_timed_metadata_schedule_action_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      successful_monitor_deployment() :: %{
        "DetailsUri" => String.t(),
        "Status" => list(any())
      }

  """
  @type successful_monitor_deployment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      immediate_mode_schedule_action_start_settings() :: %{}

  """
  @type immediate_mode_schedule_action_start_settings() :: %{}

  @typedoc """

  ## Example:

      thumbnail_configuration() :: %{
        "State" => list(any())
      }

  """
  @type thumbnail_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_reservation_response() :: %{
        "Arn" => String.t(),
        "Count" => integer(),
        "CurrencyCode" => String.t(),
        "Duration" => integer(),
        "DurationUnits" => list(any()),
        "End" => String.t(),
        "FixedPrice" => float(),
        "Name" => String.t(),
        "OfferingDescription" => String.t(),
        "OfferingId" => String.t(),
        "OfferingType" => list(any()),
        "Region" => String.t(),
        "RenewalSettings" => renewal_settings(),
        "ReservationId" => String.t(),
        "ResourceSpecification" => reservation_resource_specification(),
        "Start" => String.t(),
        "State" => list(any()),
        "Tags" => map(),
        "UsagePrice" => float()
      }

  """
  @type describe_reservation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      remix_settings() :: %{
        "ChannelMappings" => list(audio_channel_mapping()()),
        "ChannelsIn" => integer(),
        "ChannelsOut" => integer()
      }

  """
  @type remix_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      static_key_settings() :: %{
        "KeyProviderServer" => input_location(),
        "StaticKeyValue" => String.t()
      }

  """
  @type static_key_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      thumbnail_detail() :: %{
        "PipelineId" => String.t(),
        "Thumbnails" => list(thumbnail()())
      }

  """
  @type thumbnail_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      multiplex_video_settings() :: %{
        "ConstantBitrate" => integer(),
        "StatmuxSettings" => multiplex_statmux_video_settings()
      }

  """
  @type multiplex_video_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      burn_in_destination_settings() :: %{
        "Alignment" => list(any()),
        "BackgroundColor" => list(any()),
        "BackgroundOpacity" => integer(),
        "Font" => input_location(),
        "FontColor" => list(any()),
        "FontOpacity" => integer(),
        "FontResolution" => integer(),
        "FontSize" => String.t(),
        "OutlineColor" => list(any()),
        "OutlineSize" => integer(),
        "ShadowColor" => list(any()),
        "ShadowOpacity" => integer(),
        "ShadowXOffset" => integer(),
        "ShadowYOffset" => integer(),
        "TeletextGridControl" => list(any()),
        "XPosition" => integer(),
        "YPosition" => integer()
      }

  """
  @type burn_in_destination_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      mpeg2_settings() :: %{
        "AdaptiveQuantization" => list(any()),
        "AfdSignaling" => list(any()),
        "ColorMetadata" => list(any()),
        "ColorSpace" => list(any()),
        "DisplayAspectRatio" => list(any()),
        "FilterSettings" => mpeg2_filter_settings(),
        "FixedAfd" => list(any()),
        "FramerateDenominator" => integer(),
        "FramerateNumerator" => integer(),
        "GopClosedCadence" => integer(),
        "GopNumBFrames" => integer(),
        "GopSize" => float(),
        "GopSizeUnits" => list(any()),
        "ScanType" => list(any()),
        "SubgopLength" => list(any()),
        "TimecodeBurninSettings" => timecode_burnin_settings(),
        "TimecodeInsertion" => list(any())
      }

  """
  @type mpeg2_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_event_bridge_rule_template_response() :: %{
        "Arn" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "EventTargets" => list(event_bridge_rule_template_target()()),
        "EventType" => list(any()),
        "GroupId" => String.t(),
        "Id" => String.t(),
        "ModifiedAt" => non_neg_integer(),
        "Name" => String.t(),
        "Tags" => map()
      }

  """
  @type update_event_bridge_rule_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_cloud_watch_alarm_template_group_response() :: %{
        "Arn" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "Id" => String.t(),
        "ModifiedAt" => non_neg_integer(),
        "Name" => String.t(),
        "Tags" => map()
      }

  """
  @type create_cloud_watch_alarm_template_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      multiplex() :: %{
        "Arn" => String.t(),
        "AvailabilityZones" => list(String.t()()),
        "Destinations" => list(multiplex_output_destination()()),
        "Id" => String.t(),
        "MultiplexSettings" => multiplex_settings(),
        "Name" => String.t(),
        "PipelinesRunningCount" => integer(),
        "ProgramCount" => integer(),
        "State" => list(any()),
        "Tags" => map()
      }

  """
  @type multiplex() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cmaf_ingest_group_settings() :: %{
        "Destination" => output_location_ref(),
        "NielsenId3Behavior" => list(any()),
        "Scte35Type" => list(any()),
        "SegmentLength" => integer(),
        "SegmentLengthUnits" => list(any()),
        "SendDelayMs" => integer()
      }

  """
  @type cmaf_ingest_group_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      input_vpc_request() :: %{
        "SecurityGroupIds" => list(String.t()()),
        "SubnetIds" => list(String.t()())
      }

  """
  @type input_vpc_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hls_output_settings() :: %{
        "H265PackagingType" => list(any()),
        "HlsSettings" => hls_settings(),
        "NameModifier" => String.t(),
        "SegmentModifier" => String.t()
      }

  """
  @type hls_output_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      accept_input_device_transfer_response() :: %{}

  """
  @type accept_input_device_transfer_response() :: %{}

  @typedoc """

  ## Example:

      update_event_bridge_rule_template_group_request() :: %{
        optional("Description") => String.t()
      }

  """
  @type update_event_bridge_rule_template_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      input_device_summary() :: %{
        "Arn" => String.t(),
        "AvailabilityZone" => String.t(),
        "ConnectionState" => list(any()),
        "DeviceSettingsSyncState" => list(any()),
        "DeviceUpdateStatus" => list(any()),
        "HdDeviceSettings" => input_device_hd_settings(),
        "Id" => String.t(),
        "MacAddress" => String.t(),
        "MedialiveInputArns" => list(String.t()()),
        "Name" => String.t(),
        "NetworkSettings" => input_device_network_settings(),
        "OutputType" => list(any()),
        "SerialNumber" => String.t(),
        "Tags" => map(),
        "Type" => list(any()),
        "UhdDeviceSettings" => input_device_uhd_settings()
      }

  """
  @type input_device_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ac3_settings() :: %{
        "AttenuationControl" => list(any()),
        "Bitrate" => float(),
        "BitstreamMode" => list(any()),
        "CodingMode" => list(any()),
        "Dialnorm" => integer(),
        "DrcProfile" => list(any()),
        "LfeFilter" => list(any()),
        "MetadataControl" => list(any())
      }

  """
  @type ac3_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      multiplex_program_settings() :: %{
        "PreferredChannelPipeline" => list(any()),
        "ProgramNumber" => integer(),
        "ServiceDescriptor" => multiplex_program_service_descriptor(),
        "VideoSettings" => multiplex_video_settings()
      }

  """
  @type multiplex_program_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      color_correction_settings() :: %{
        "GlobalColorCorrections" => list(color_correction()())
      }

  """
  @type color_correction_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      describe_input_security_group_response() :: %{
        "Arn" => String.t(),
        "Id" => String.t(),
        "Inputs" => list(String.t()()),
        "State" => list(any()),
        "Tags" => map(),
        "WhitelistRules" => list(input_whitelist_rule()())
      }

  """
  @type describe_input_security_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_reservation_request() :: %{}

  """
  @type describe_reservation_request() :: %{}

  @typedoc """

  ## Example:

      internal_server_error_exception() :: %{
        "Message" => String.t()
      }

  """
  @type internal_server_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_cloud_watch_alarm_templates_response() :: %{
        "CloudWatchAlarmTemplates" => list(cloud_watch_alarm_template_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_cloud_watch_alarm_templates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_event_bridge_rule_template_groups_response() :: %{
        "EventBridgeRuleTemplateGroups" => list(event_bridge_rule_template_group_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_event_bridge_rule_template_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reject_input_device_transfer_response() :: %{}

  """
  @type reject_input_device_transfer_response() :: %{}

  @typedoc """

  ## Example:

      embedded_source_settings() :: %{
        "Convert608To708" => list(any()),
        "Scte20Detection" => list(any()),
        "Source608ChannelNumber" => integer(),
        "Source608TrackNumber" => integer()
      }

  """
  @type embedded_source_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_multiplex_response() :: %{
        "Multiplex" => multiplex()
      }

  """
  @type create_multiplex_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_event_bridge_rule_template_groups_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SignalMapIdentifier") => String.t()
      }

  """
  @type list_event_bridge_rule_template_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      media_resource() :: %{
        "Destinations" => list(media_resource_neighbor()()),
        "Name" => String.t(),
        "Sources" => list(media_resource_neighbor()())
      }

  """
  @type media_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_cloud_watch_alarm_template_request() :: %{
        optional("DatapointsToAlarm") => integer(),
        optional("Description") => String.t(),
        optional("Tags") => map(),
        required("ComparisonOperator") => list(any()),
        required("EvaluationPeriods") => integer(),
        required("GroupIdentifier") => String.t(),
        required("MetricName") => String.t(),
        required("Name") => String.t(),
        required("Period") => integer(),
        required("Statistic") => list(any()),
        required("TargetResourceType") => list(any()),
        required("Threshold") => float(),
        required("TreatMissingData") => list(any())
      }

  """
  @type create_cloud_watch_alarm_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      channel() :: %{
        "Arn" => String.t(),
        "CdiInputSpecification" => cdi_input_specification(),
        "ChannelClass" => list(any()),
        "Destinations" => list(output_destination()()),
        "EgressEndpoints" => list(channel_egress_endpoint()()),
        "EncoderSettings" => encoder_settings(),
        "Id" => String.t(),
        "InputAttachments" => list(input_attachment()()),
        "InputSpecification" => input_specification(),
        "LogLevel" => list(any()),
        "Maintenance" => maintenance_status(),
        "Name" => String.t(),
        "PipelineDetails" => list(pipeline_detail()()),
        "PipelinesRunningCount" => integer(),
        "RoleArn" => String.t(),
        "State" => list(any()),
        "Tags" => map(),
        "Vpc" => vpc_output_settings_description()
      }

  """
  @type channel() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      caption_description() :: %{
        "Accessibility" => list(any()),
        "CaptionDashRoles" => list(list(any())()),
        "CaptionSelectorName" => String.t(),
        "DestinationSettings" => caption_destination_settings(),
        "DvbDashAccessibility" => list(any()),
        "LanguageCode" => String.t(),
        "LanguageDescription" => String.t(),
        "Name" => String.t()
      }

  """
  @type caption_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      input_device_media_connect_settings() :: %{
        "FlowArn" => String.t(),
        "RoleArn" => String.t(),
        "SecretArn" => String.t(),
        "SourceName" => String.t()
      }

  """
  @type input_device_media_connect_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_channel_response() :: %{
        "Arn" => String.t(),
        "CdiInputSpecification" => cdi_input_specification(),
        "ChannelClass" => list(any()),
        "Destinations" => list(output_destination()()),
        "EgressEndpoints" => list(channel_egress_endpoint()()),
        "EncoderSettings" => encoder_settings(),
        "Id" => String.t(),
        "InputAttachments" => list(input_attachment()()),
        "InputSpecification" => input_specification(),
        "LogLevel" => list(any()),
        "Maintenance" => maintenance_status(),
        "Name" => String.t(),
        "PipelineDetails" => list(pipeline_detail()()),
        "PipelinesRunningCount" => integer(),
        "RoleArn" => String.t(),
        "State" => list(any()),
        "Tags" => map(),
        "Vpc" => vpc_output_settings_description()
      }

  """
  @type start_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      frame_capture_cdn_settings() :: %{
        "FrameCaptureS3Settings" => frame_capture_s3_settings()
      }

  """
  @type frame_capture_cdn_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hdr10_settings() :: %{
        "MaxCll" => integer(),
        "MaxFall" => integer()
      }

  """
  @type hdr10_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      offering() :: %{
        "Arn" => String.t(),
        "CurrencyCode" => String.t(),
        "Duration" => integer(),
        "DurationUnits" => list(any()),
        "FixedPrice" => float(),
        "OfferingDescription" => String.t(),
        "OfferingId" => String.t(),
        "OfferingType" => list(any()),
        "Region" => String.t(),
        "ResourceSpecification" => reservation_resource_specification(),
        "UsagePrice" => float()
      }

  """
  @type offering() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      raw_settings() :: %{}

  """
  @type raw_settings() :: %{}

  @typedoc """

  ## Example:

      claim_device_response() :: %{}

  """
  @type claim_device_response() :: %{}

  @typedoc """

  ## Example:

      pipeline_pause_state_settings() :: %{
        "PipelineId" => list(any())
      }

  """
  @type pipeline_pause_state_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      video_selector_color_space_settings() :: %{
        "Hdr10Settings" => hdr10_settings()
      }

  """
  @type video_selector_color_space_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      audio_track_selection() :: %{
        "DolbyEDecode" => audio_dolby_e_decode(),
        "Tracks" => list(audio_track()())
      }

  """
  @type audio_track_selection() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      frame_capture_settings() :: %{
        "CaptureInterval" => integer(),
        "CaptureIntervalUnits" => list(any()),
        "TimecodeBurninSettings" => timecode_burnin_settings()
      }

  """
  @type frame_capture_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      audio_silence_failover_settings() :: %{
        "AudioSelectorName" => String.t(),
        "AudioSilenceThresholdMsec" => integer()
      }

  """
  @type audio_silence_failover_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reboot_input_device_response() :: %{}

  """
  @type reboot_input_device_response() :: %{}

  @typedoc """

  ## Example:

      gateway_timeout_exception() :: %{
        "Message" => String.t()
      }

  """
  @type gateway_timeout_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      rtmp_output_settings() :: %{
        "CertificateMode" => list(any()),
        "ConnectionRetryInterval" => integer(),
        "Destination" => output_location_ref(),
        "NumRetries" => integer()
      }

  """
  @type rtmp_output_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      m2ts_settings() :: %{
        "TimedMetadataPid" => String.t(),
        "Scte35PrerollPullupMilliseconds" => float(),
        "EtvPlatformPid" => String.t(),
        "NullPacketBitrate" => float(),
        "PcrPid" => String.t(),
        "Klv" => list(any()),
        "DvbTeletextPid" => String.t(),
        "AudioBufferModel" => list(any()),
        "PcrPeriod" => integer(),
        "DvbSdtSettings" => dvb_sdt_settings(),
        "AribCaptionsPid" => String.t(),
        "TransportStreamId" => integer(),
        "PatInterval" => integer(),
        "Bitrate" => integer(),
        "EcmPid" => String.t(),
        "PmtPid" => String.t(),
        "EbpPlacement" => list(any()),
        "Scte35Pid" => String.t(),
        "AudioStreamType" => list(any()),
        "Ebif" => list(any()),
        "FragmentTime" => float(),
        "AudioFramesPerPes" => integer(),
        "SegmentationMarkers" => list(any()),
        "CcDescriptor" => list(any()),
        "Scte35Control" => list(any()),
        "SegmentationTime" => float(),
        "PcrControl" => list(any()),
        "EbpLookaheadMs" => integer(),
        "VideoPid" => String.t(),
        "DvbTdtSettings" => dvb_tdt_settings(),
        "DvbSubPids" => String.t(),
        "AudioPids" => String.t(),
        "AribCaptionsPidControl" => list(any()),
        "KlvDataPids" => String.t(),
        "Arib" => list(any()),
        "AbsentInputAudioBehavior" => list(any()),
        "EtvSignalPid" => String.t(),
        "BufferModel" => list(any()),
        "DvbNitSettings" => dvb_nit_settings(),
        "RateMode" => list(any()),
        "TimedMetadataBehavior" => list(any()),
        "EbpAudioInterval" => list(any()),
        "ProgramNum" => integer(),
        "Scte27Pids" => String.t(),
        "EsRateInPes" => list(any()),
        "PmtInterval" => integer(),
        "NielsenId3Behavior" => list(any()),
        "SegmentationStyle" => list(any())
      }

  """
  @type m2ts_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dvb_sdt_settings() :: %{
        "OutputSdt" => list(any()),
        "RepInterval" => integer(),
        "ServiceName" => String.t(),
        "ServiceProviderName" => String.t()
      }

  """
  @type dvb_sdt_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      input_destination_request() :: %{
        "StreamName" => String.t()
      }

  """
  @type input_destination_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      schedule_action_start_settings() :: %{
        "FixedModeScheduleActionStartSettings" => fixed_mode_schedule_action_start_settings(),
        "FollowModeScheduleActionStartSettings" => follow_mode_schedule_action_start_settings(),
        "ImmediateModeScheduleActionStartSettings" => immediate_mode_schedule_action_start_settings()
      }

  """
  @type schedule_action_start_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_input_response() :: %{
        "Input" => input()
      }

  """
  @type update_input_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      input_destination_vpc() :: %{
        "AvailabilityZone" => String.t(),
        "NetworkInterfaceId" => String.t()
      }

  """
  @type input_destination_vpc() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_schedule_request() :: %{}

  """
  @type delete_schedule_request() :: %{}

  @typedoc """

  ## Example:

      eac3_atmos_settings() :: %{
        "Bitrate" => float(),
        "CodingMode" => list(any()),
        "Dialnorm" => integer(),
        "DrcLine" => list(any()),
        "DrcRf" => list(any()),
        "HeightTrim" => float(),
        "SurroundTrim" => float()
      }

  """
  @type eac3_atmos_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pipeline_detail() :: %{
        "ActiveInputAttachmentName" => String.t(),
        "ActiveInputSwitchActionName" => String.t(),
        "ActiveMotionGraphicsActionName" => String.t(),
        "ActiveMotionGraphicsUri" => String.t(),
        "PipelineId" => String.t()
      }

  """
  @type pipeline_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_event_bridge_rule_templates_response() :: %{
        "EventBridgeRuleTemplates" => list(event_bridge_rule_template_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_event_bridge_rule_templates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      rtmp_caption_info_destination_settings() :: %{}

  """
  @type rtmp_caption_info_destination_settings() :: %{}

  @typedoc """

  ## Example:

      get_event_bridge_rule_template_request() :: %{}

  """
  @type get_event_bridge_rule_template_request() :: %{}

  @typedoc """

  ## Example:

      wav_settings() :: %{
        "BitDepth" => float(),
        "CodingMode" => list(any()),
        "SampleRate" => float()
      }

  """
  @type wav_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      fec_output_settings() :: %{
        "ColumnDepth" => integer(),
        "IncludeFec" => list(any()),
        "RowLength" => integer()
      }

  """
  @type fec_output_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hls_input_settings() :: %{
        "Bandwidth" => integer(),
        "BufferSegments" => integer(),
        "Retries" => integer(),
        "RetryInterval" => integer(),
        "Scte35Source" => list(any())
      }

  """
  @type hls_input_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "Message" => String.t()
      }

  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_schedule_action_delete_result() :: %{
        "ScheduleActions" => list(schedule_action()())
      }

  """
  @type batch_schedule_action_delete_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reject_input_device_transfer_request() :: %{}

  """
  @type reject_input_device_transfer_request() :: %{}

  @typedoc """

  ## Example:

      get_event_bridge_rule_template_response() :: %{
        "Arn" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "EventTargets" => list(event_bridge_rule_template_target()()),
        "EventType" => list(any()),
        "GroupId" => String.t(),
        "Id" => String.t(),
        "ModifiedAt" => non_neg_integer(),
        "Name" => String.t(),
        "Tags" => map()
      }

  """
  @type get_event_bridge_rule_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_schedule_action_delete_request() :: %{
        "ActionNames" => list(String.t()())
      }

  """
  @type batch_schedule_action_delete_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_input_device_transfers_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("TransferType") => String.t()
      }

  """
  @type list_input_device_transfers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      embedded_destination_settings() :: %{}

  """
  @type embedded_destination_settings() :: %{}

  @typedoc """

  ## Example:

      maintenance_create_settings() :: %{
        "MaintenanceDay" => list(any()),
        "MaintenanceStartTime" => String.t()
      }

  """
  @type maintenance_create_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      restart_channel_pipelines_request() :: %{
        optional("PipelineIds") => list(list(any())())
      }

  """
  @type restart_channel_pipelines_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      failover_condition_settings() :: %{
        "AudioSilenceSettings" => audio_silence_failover_settings(),
        "InputLossSettings" => input_loss_failover_settings(),
        "VideoBlackSettings" => video_black_failover_settings()
      }

  """
  @type failover_condition_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      channel_egress_endpoint() :: %{
        "SourceIp" => String.t()
      }

  """
  @type channel_egress_endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      input_device_media_connect_configurable_settings() :: %{
        "FlowArn" => String.t(),
        "RoleArn" => String.t(),
        "SecretArn" => String.t(),
        "SourceName" => String.t()
      }

  """
  @type input_device_media_connect_configurable_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_monitor_deployment_response() :: %{
        "Arn" => String.t(),
        "CloudWatchAlarmTemplateGroupIds" => list(String.t()()),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "DiscoveryEntryPointArn" => String.t(),
        "ErrorMessage" => String.t(),
        "EventBridgeRuleTemplateGroupIds" => list(String.t()()),
        "FailedMediaResourceMap" => map(),
        "Id" => String.t(),
        "LastDiscoveredAt" => non_neg_integer(),
        "LastSuccessfulMonitorDeployment" => successful_monitor_deployment(),
        "MediaResourceMap" => map(),
        "ModifiedAt" => non_neg_integer(),
        "MonitorChangesPendingDeployment" => boolean(),
        "MonitorDeployment" => monitor_deployment(),
        "Name" => String.t(),
        "Status" => list(any()),
        "Tags" => map()
      }

  """
  @type start_monitor_deployment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_multiplexes_response() :: %{
        "Multiplexes" => list(multiplex_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_multiplexes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pass_through_settings() :: %{}

  """
  @type pass_through_settings() :: %{}

  @typedoc """

  ## Example:

      list_multiplexes_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_multiplexes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_cloud_watch_alarm_template_groups_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Scope") => String.t(),
        optional("SignalMapIdentifier") => String.t()
      }

  """
  @type list_cloud_watch_alarm_template_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_channel_response() :: %{
        "Channel" => channel()
      }

  """
  @type update_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      audio_pid_selection() :: %{
        "Pid" => integer()
      }

  """
  @type audio_pid_selection() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      input_source_request() :: %{
        "PasswordParam" => String.t(),
        "Url" => String.t(),
        "Username" => String.t()
      }

  """
  @type input_source_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      mpeg2_filter_settings() :: %{
        "TemporalFilterSettings" => temporal_filter_settings()
      }

  """
  @type mpeg2_filter_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      audio_normalization_settings() :: %{
        "Algorithm" => list(any()),
        "AlgorithmControl" => list(any()),
        "TargetLkfs" => float()
      }

  """
  @type audio_normalization_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hls_s3_settings() :: %{
        "CannedAcl" => list(any())
      }

  """
  @type hls_s3_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      output_destination_settings() :: %{
        "PasswordParam" => String.t(),
        "StreamName" => String.t(),
        "Url" => String.t(),
        "Username" => String.t()
      }

  """
  @type output_destination_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      scte35_segmentation_descriptor() :: %{
        "DeliveryRestrictions" => scte35_delivery_restrictions(),
        "SegmentNum" => integer(),
        "SegmentationCancelIndicator" => list(any()),
        "SegmentationDuration" => float(),
        "SegmentationEventId" => float(),
        "SegmentationTypeId" => integer(),
        "SegmentationUpid" => String.t(),
        "SegmentationUpidType" => integer(),
        "SegmentsExpected" => integer(),
        "SubSegmentNum" => integer(),
        "SubSegmentsExpected" => integer()
      }

  """
  @type scte35_segmentation_descriptor() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      timecode_burnin_settings() :: %{
        "FontSize" => list(any()),
        "Position" => list(any()),
        "Prefix" => String.t()
      }

  """
  @type timecode_burnin_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      renewal_settings() :: %{
        "AutomaticRenewal" => list(any()),
        "RenewalCount" => integer()
      }

  """
  @type renewal_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ebu_tt_d_destination_settings() :: %{
        "CopyrightHolder" => String.t(),
        "FillLineGap" => list(any()),
        "FontFamily" => String.t(),
        "StyleControl" => list(any())
      }

  """
  @type ebu_tt_d_destination_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_account_configuration_response() :: %{
        "AccountConfiguration" => account_configuration()
      }

  """
  @type update_account_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_event_bridge_rule_template_request() :: %{
        optional("Description") => String.t(),
        optional("EventTargets") => list(event_bridge_rule_template_target()()),
        optional("Tags") => map(),
        required("EventType") => list(any()),
        required("GroupIdentifier") => String.t(),
        required("Name") => String.t()
      }

  """
  @type create_event_bridge_rule_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      video_black_failover_settings() :: %{
        "BlackDetectThreshold" => float(),
        "VideoBlackThresholdMsec" => integer()
      }

  """
  @type video_black_failover_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      audio_hls_rendition_selection() :: %{
        "GroupId" => String.t(),
        "Name" => String.t()
      }

  """
  @type audio_hls_rendition_selection() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      multiplex_settings_summary() :: %{
        "TransportStreamBitrate" => integer()
      }

  """
  @type multiplex_settings_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      audio_dolby_e_decode() :: %{
        "ProgramSelection" => list(any())
      }

  """
  @type audio_dolby_e_decode() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      follow_mode_schedule_action_start_settings() :: %{
        "FollowPoint" => list(any()),
        "ReferenceActionName" => String.t()
      }

  """
  @type follow_mode_schedule_action_start_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      audio_watermark_settings() :: %{
        "NielsenWatermarksSettings" => nielsen_watermarks_settings()
      }

  """
  @type audio_watermark_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      scte35_splice_insert() :: %{
        "AdAvailOffset" => integer(),
        "NoRegionalBlackoutFlag" => list(any()),
        "WebDeliveryAllowedFlag" => list(any())
      }

  """
  @type scte35_splice_insert() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      claim_device_request() :: %{
        optional("Id") => String.t()
      }

  """
  @type claim_device_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_update_signal_map_response() :: %{
        "Arn" => String.t(),
        "CloudWatchAlarmTemplateGroupIds" => list(String.t()()),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "DiscoveryEntryPointArn" => String.t(),
        "ErrorMessage" => String.t(),
        "EventBridgeRuleTemplateGroupIds" => list(String.t()()),
        "FailedMediaResourceMap" => map(),
        "Id" => String.t(),
        "LastDiscoveredAt" => non_neg_integer(),
        "LastSuccessfulMonitorDeployment" => successful_monitor_deployment(),
        "MediaResourceMap" => map(),
        "ModifiedAt" => non_neg_integer(),
        "MonitorChangesPendingDeployment" => boolean(),
        "MonitorDeployment" => monitor_deployment(),
        "Name" => String.t(),
        "Status" => list(any()),
        "Tags" => map()
      }

  """
  @type start_update_signal_map_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_signal_maps_request() :: %{
        optional("CloudWatchAlarmTemplateGroupIdentifier") => String.t(),
        optional("EventBridgeRuleTemplateGroupIdentifier") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_signal_maps_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      input_device_hd_settings() :: %{
        "ActiveInput" => list(any()),
        "ConfiguredInput" => list(any()),
        "DeviceState" => list(any()),
        "Framerate" => float(),
        "Height" => integer(),
        "LatencyMs" => integer(),
        "MaxBitrate" => integer(),
        "ScanType" => list(any()),
        "Width" => integer()
      }

  """
  @type input_device_hd_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      scte35_descriptor_settings() :: %{
        "SegmentationDescriptorScte35DescriptorSettings" => scte35_segmentation_descriptor()
      }

  """
  @type scte35_descriptor_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_input_device_response() :: %{}

  """
  @type start_input_device_response() :: %{}

  @typedoc """

  ## Example:

      list_channels_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_channels_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dvb_nit_settings() :: %{
        "NetworkId" => integer(),
        "NetworkName" => String.t(),
        "RepInterval" => integer()
      }

  """
  @type dvb_nit_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_schedule_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type describe_schedule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cloud_watch_alarm_template_summary() :: %{
        "Arn" => String.t(),
        "ComparisonOperator" => list(any()),
        "CreatedAt" => non_neg_integer(),
        "DatapointsToAlarm" => integer(),
        "Description" => String.t(),
        "EvaluationPeriods" => integer(),
        "GroupId" => String.t(),
        "Id" => String.t(),
        "MetricName" => String.t(),
        "ModifiedAt" => non_neg_integer(),
        "Name" => String.t(),
        "Period" => integer(),
        "Statistic" => list(any()),
        "Tags" => map(),
        "TargetResourceType" => list(any()),
        "Threshold" => float(),
        "TreatMissingData" => list(any())
      }

  """
  @type cloud_watch_alarm_template_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_input_device_response() :: %{}

  """
  @type stop_input_device_response() :: %{}

  @typedoc """

  ## Example:

      cloud_watch_alarm_template_group_summary() :: %{
        "Arn" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "Id" => String.t(),
        "ModifiedAt" => non_neg_integer(),
        "Name" => String.t(),
        "Tags" => map(),
        "TemplateCount" => integer()
      }

  """
  @type cloud_watch_alarm_template_group_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_account_configuration_request() :: %{
        optional("AccountConfiguration") => account_configuration()
      }

  """
  @type update_account_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_offering_response() :: %{
        "Arn" => String.t(),
        "CurrencyCode" => String.t(),
        "Duration" => integer(),
        "DurationUnits" => list(any()),
        "FixedPrice" => float(),
        "OfferingDescription" => String.t(),
        "OfferingId" => String.t(),
        "OfferingType" => list(any()),
        "Region" => String.t(),
        "ResourceSpecification" => reservation_resource_specification(),
        "UsagePrice" => float()
      }

  """
  @type describe_offering_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hls_basic_put_settings() :: %{
        "ConnectionRetryInterval" => integer(),
        "FilecacheDuration" => integer(),
        "NumRetries" => integer(),
        "RestartDelay" => integer()
      }

  """
  @type hls_basic_put_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      fixed_mode_schedule_action_start_settings() :: %{
        "Time" => String.t()
      }

  """
  @type fixed_mode_schedule_action_start_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_input_device_transfers_response() :: %{
        "InputDeviceTransfers" => list(transferring_input_device_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_input_device_transfers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      signal_map_summary() :: %{
        "Arn" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "Id" => String.t(),
        "ModifiedAt" => non_neg_integer(),
        "MonitorDeploymentStatus" => list(any()),
        "Name" => String.t(),
        "Status" => list(any()),
        "Tags" => map()
      }

  """
  @type signal_map_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      media_package_output_destination_settings() :: %{
        "ChannelId" => String.t()
      }

  """
  @type media_package_output_destination_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_cloud_watch_alarm_template_group_request() :: %{
        optional("Description") => String.t(),
        optional("Tags") => map(),
        required("Name") => String.t()
      }

  """
  @type create_cloud_watch_alarm_template_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_successful_result_model() :: %{
        "Arn" => String.t(),
        "Id" => String.t(),
        "State" => String.t()
      }

  """
  @type batch_successful_result_model() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_offering_request() :: %{}

  """
  @type describe_offering_request() :: %{}

  @typedoc """

  ## Example:

      list_cloud_watch_alarm_templates_request() :: %{
        optional("GroupIdentifier") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Scope") => String.t(),
        optional("SignalMapIdentifier") => String.t()
      }

  """
  @type list_cloud_watch_alarm_templates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_start_request() :: %{
        optional("ChannelIds") => list(String.t()()),
        optional("MultiplexIds") => list(String.t()())
      }

  """
  @type batch_start_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hls_webdav_settings() :: %{
        "ConnectionRetryInterval" => integer(),
        "FilecacheDuration" => integer(),
        "HttpTransferMode" => list(any()),
        "NumRetries" => integer(),
        "RestartDelay" => integer()
      }

  """
  @type hls_webdav_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      multiplex_statmux_video_settings() :: %{
        "MaximumBitrate" => integer(),
        "MinimumBitrate" => integer(),
        "Priority" => integer()
      }

  """
  @type multiplex_statmux_video_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      output() :: %{
        "AudioDescriptionNames" => list(String.t()()),
        "CaptionDescriptionNames" => list(String.t()()),
        "OutputName" => String.t(),
        "OutputSettings" => output_settings(),
        "VideoDescriptionName" => String.t()
      }

  """
  @type output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      purchase_offering_response() :: %{
        "Reservation" => reservation()
      }

  """
  @type purchase_offering_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_multiplex_response() :: %{
        "Arn" => String.t(),
        "AvailabilityZones" => list(String.t()()),
        "Destinations" => list(multiplex_output_destination()()),
        "Id" => String.t(),
        "MultiplexSettings" => multiplex_settings(),
        "Name" => String.t(),
        "PipelinesRunningCount" => integer(),
        "ProgramCount" => integer(),
        "State" => list(any()),
        "Tags" => map()
      }

  """
  @type delete_multiplex_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      static_image_activate_schedule_action_settings() :: %{
        "Duration" => integer(),
        "FadeIn" => integer(),
        "FadeOut" => integer(),
        "Height" => integer(),
        "Image" => input_location(),
        "ImageX" => integer(),
        "ImageY" => integer(),
        "Layer" => integer(),
        "Opacity" => integer(),
        "Width" => integer()
      }

  """
  @type static_image_activate_schedule_action_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_multiplex_program_request() :: %{}

  """
  @type describe_multiplex_program_request() :: %{}

  @typedoc """

  ## Example:

      scte35_descriptor() :: %{
        "Scte35DescriptorSettings" => scte35_descriptor_settings()
      }

  """
  @type scte35_descriptor() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      purchase_offering_request() :: %{
        optional("Name") => String.t(),
        optional("RenewalSettings") => renewal_settings(),
        optional("RequestId") => String.t(),
        optional("Start") => String.t(),
        optional("Tags") => map(),
        required("Count") => integer()
      }

  """
  @type purchase_offering_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      h264_settings() :: %{
        "LookAheadRateControl" => list(any()),
        "ParControl" => list(any()),
        "ColorSpaceSettings" => h264_color_space_settings(),
        "SubgopLength" => list(any()),
        "QvbrQualityLevel" => integer(),
        "Profile" => list(any()),
        "FilterSettings" => h264_filter_settings(),
        "Bitrate" => integer(),
        "TemporalAq" => list(any()),
        "BufSize" => integer(),
        "RateControlMode" => list(any()),
        "GopSizeUnits" => list(any()),
        "MinIInterval" => integer(),
        "QualityLevel" => list(any()),
        "EntropyEncoding" => list(any()),
        "NumRefFrames" => integer(),
        "Softness" => integer(),
        "AdaptiveQuantization" => list(any()),
        "FramerateControl" => list(any()),
        "Level" => list(any()),
        "TimecodeBurninSettings" => timecode_burnin_settings(),
        "FramerateDenominator" => integer(),
        "GopNumBFrames" => integer(),
        "FlickerAq" => list(any()),
        "TimecodeInsertion" => list(any()),
        "ParNumerator" => integer(),
        "GopClosedCadence" => integer(),
        "FramerateNumerator" => integer(),
        "ForceFieldPictures" => list(any()),
        "ParDenominator" => integer(),
        "ScanType" => list(any()),
        "Syntax" => list(any()),
        "BufFillPct" => integer(),
        "GopSize" => float(),
        "FixedAfd" => list(any()),
        "SpatialAq" => list(any()),
        "ColorMetadata" => list(any()),
        "GopBReference" => list(any()),
        "SceneChangeDetect" => list(any()),
        "AfdSignaling" => list(any()),
        "Slices" => integer(),
        "MaxBitrate" => integer()
      }

  """
  @type h264_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      multiplex_program_pipeline_detail() :: %{
        "ActiveChannelPipeline" => String.t(),
        "PipelineId" => String.t()
      }

  """
  @type multiplex_program_pipeline_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      color_correction() :: %{
        "InputColorSpace" => list(any()),
        "OutputColorSpace" => list(any()),
        "Uri" => String.t()
      }

  """
  @type color_correction() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_update_signal_map_request() :: %{
        optional("CloudWatchAlarmTemplateGroupIdentifiers") => list(String.t()()),
        optional("Description") => String.t(),
        optional("DiscoveryEntryPointArn") => String.t(),
        optional("EventBridgeRuleTemplateGroupIdentifiers") => list(String.t()()),
        optional("ForceRediscovery") => boolean(),
        optional("Name") => String.t()
      }

  """
  @type start_update_signal_map_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_reservation_response() :: %{
        "Reservation" => reservation()
      }

  """
  @type update_reservation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hls_media_store_settings() :: %{
        "ConnectionRetryInterval" => integer(),
        "FilecacheDuration" => integer(),
        "MediaStoreStorageClass" => list(any()),
        "NumRetries" => integer(),
        "RestartDelay" => integer()
      }

  """
  @type hls_media_store_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_input_device_request() :: %{}

  """
  @type describe_input_device_request() :: %{}

  @type accept_input_device_transfer_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | unprocessable_entity_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type batch_delete_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type batch_start_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type batch_stop_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type batch_update_schedule_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | unprocessable_entity_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type cancel_input_device_transfer_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | unprocessable_entity_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type claim_device_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | unprocessable_entity_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type create_channel_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | unprocessable_entity_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type create_cloud_watch_alarm_template_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type create_cloud_watch_alarm_template_group_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type create_event_bridge_rule_template_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type create_event_bridge_rule_template_group_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type create_input_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type create_input_security_group_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type create_multiplex_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | unprocessable_entity_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type create_multiplex_program_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | unprocessable_entity_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type create_partner_input_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type create_signal_map_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type create_tags_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | forbidden_exception()

  @type delete_channel_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type delete_cloud_watch_alarm_template_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type delete_cloud_watch_alarm_template_group_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type delete_event_bridge_rule_template_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type delete_event_bridge_rule_template_group_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type delete_input_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type delete_input_security_group_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type delete_multiplex_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type delete_multiplex_program_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type delete_reservation_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type delete_schedule_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type delete_signal_map_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type delete_tags_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | forbidden_exception()

  @type describe_account_configuration_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type describe_channel_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type describe_input_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type describe_input_device_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type describe_input_device_thumbnail_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type describe_input_security_group_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type describe_multiplex_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type describe_multiplex_program_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type describe_offering_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type describe_reservation_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type describe_schedule_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type describe_thumbnails_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type get_cloud_watch_alarm_template_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type get_cloud_watch_alarm_template_group_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type get_event_bridge_rule_template_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type get_event_bridge_rule_template_group_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type get_signal_map_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type list_channels_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type list_cloud_watch_alarm_template_groups_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type list_cloud_watch_alarm_templates_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type list_event_bridge_rule_template_groups_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type list_event_bridge_rule_templates_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type list_input_device_transfers_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | unprocessable_entity_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type list_input_devices_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type list_input_security_groups_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type list_inputs_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type list_multiplex_programs_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type list_multiplexes_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type list_offerings_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type list_reservations_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type list_signal_maps_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type list_tags_for_resource_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | forbidden_exception()

  @type purchase_offering_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type reboot_input_device_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | unprocessable_entity_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type reject_input_device_transfer_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | unprocessable_entity_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type restart_channel_pipelines_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type start_channel_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type start_delete_monitor_deployment_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type start_input_device_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | unprocessable_entity_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type start_input_device_maintenance_window_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | unprocessable_entity_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type start_monitor_deployment_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type start_multiplex_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type start_update_signal_map_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type stop_channel_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type stop_input_device_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | unprocessable_entity_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type stop_multiplex_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type transfer_input_device_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | unprocessable_entity_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type update_account_configuration_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | unprocessable_entity_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type update_channel_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | unprocessable_entity_exception()
          | conflict_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type update_channel_class_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | unprocessable_entity_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type update_cloud_watch_alarm_template_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type update_cloud_watch_alarm_template_group_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type update_event_bridge_rule_template_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type update_event_bridge_rule_template_group_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type update_input_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type update_input_device_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | unprocessable_entity_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type update_input_security_group_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type update_multiplex_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | unprocessable_entity_exception()
          | not_found_exception()
          | conflict_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type update_multiplex_program_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | unprocessable_entity_exception()
          | not_found_exception()
          | conflict_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  @type update_reservation_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | bad_gateway_exception()

  def metadata do
    %{
      api_version: "2017-10-14",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "medialive",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "MediaLive",
      signature_version: "v4",
      signing_name: "medialive",
      target_prefix: nil
    }
  end

  @doc """
  Accept an incoming input device transfer.

  The ownership of the device will transfer to your AWS account.

  ## Required positional parameters:
   • :input_device_id (t:string String.t/0) (InputDeviceId)

  ## Optional parameters:
  """
  @spec accept_input_device_transfer(
          AWS.Client.t(),
          String.t(),
          accept_input_device_transfer_request(),
          Keyword.t()
        ) ::
          {:ok, accept_input_device_transfer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, accept_input_device_transfer_errors()}
  def accept_input_device_transfer(%Client{} = client, input_device_id, input, options \\ []) do
    url_path = "/prod/inputDevices/#{AWS.Util.encode_uri(input_device_id)}/accept"
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
  Starts delete of resources.

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec batch_delete(AWS.Client.t(), batch_delete_request(), Keyword.t()) ::
          {:ok, batch_delete_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_delete_errors()}
  def batch_delete(%Client{} = client, input, options \\ []) do
    url_path = "/prod/batch/delete"
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
  Starts existing resources

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec batch_start(AWS.Client.t(), batch_start_request(), Keyword.t()) ::
          {:ok, batch_start_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_start_errors()}
  def batch_start(%Client{} = client, input, options \\ []) do
    url_path = "/prod/batch/start"
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
  Stops running resources

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec batch_stop(AWS.Client.t(), batch_stop_request(), Keyword.t()) ::
          {:ok, batch_stop_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_stop_errors()}
  def batch_stop(%Client{} = client, input, options \\ []) do
    url_path = "/prod/batch/stop"
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
  Update a channel schedule

  ## Required positional parameters:
   • :channel_id (t:string String.t/0) (ChannelId)

  ## Optional parameters:
  """
  @spec batch_update_schedule(
          AWS.Client.t(),
          String.t(),
          batch_update_schedule_request(),
          Keyword.t()
        ) ::
          {:ok, batch_update_schedule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_update_schedule_errors()}
  def batch_update_schedule(%Client{} = client, channel_id, input, options \\ []) do
    url_path = "/prod/channels/#{AWS.Util.encode_uri(channel_id)}/schedule"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Cancel an input device transfer that you have requested.

  ## Required positional parameters:
   • :input_device_id (t:string String.t/0) (InputDeviceId)

  ## Optional parameters:
  """
  @spec cancel_input_device_transfer(
          AWS.Client.t(),
          String.t(),
          cancel_input_device_transfer_request(),
          Keyword.t()
        ) ::
          {:ok, cancel_input_device_transfer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_input_device_transfer_errors()}
  def cancel_input_device_transfer(%Client{} = client, input_device_id, input, options \\ []) do
    url_path = "/prod/inputDevices/#{AWS.Util.encode_uri(input_device_id)}/cancel"
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
  Send a request to claim an AWS Elemental device that you have purchased from a
  third-party vendor.

  After the request succeeds, you will own the device.

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec claim_device(AWS.Client.t(), claim_device_request(), Keyword.t()) ::
          {:ok, claim_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, claim_device_errors()}
  def claim_device(%Client{} = client, input, options \\ []) do
    url_path = "/prod/claimDevice"
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
  Creates a new channel

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec create_channel(AWS.Client.t(), create_channel_request(), Keyword.t()) ::
          {:ok, create_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_channel_errors()}
  def create_channel(%Client{} = client, input, options \\ []) do
    url_path = "/prod/channels"
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
  Creates a cloudwatch alarm template to dynamically generate cloudwatch metric
  alarms on targeted resource types.

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec create_cloud_watch_alarm_template(
          AWS.Client.t(),
          create_cloud_watch_alarm_template_request(),
          Keyword.t()
        ) ::
          {:ok, create_cloud_watch_alarm_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_cloud_watch_alarm_template_errors()}
  def create_cloud_watch_alarm_template(%Client{} = client, input, options \\ []) do
    url_path = "/prod/cloudwatch-alarm-templates"
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
  Creates a cloudwatch alarm template group to group your cloudwatch alarm
  templates and to attach to signal maps for dynamically creating alarms.

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec create_cloud_watch_alarm_template_group(
          AWS.Client.t(),
          create_cloud_watch_alarm_template_group_request(),
          Keyword.t()
        ) ::
          {:ok, create_cloud_watch_alarm_template_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_cloud_watch_alarm_template_group_errors()}
  def create_cloud_watch_alarm_template_group(%Client{} = client, input, options \\ []) do
    url_path = "/prod/cloudwatch-alarm-template-groups"
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
  Creates an eventbridge rule template to monitor events and send notifications to
  your targeted resources.

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec create_event_bridge_rule_template(
          AWS.Client.t(),
          create_event_bridge_rule_template_request(),
          Keyword.t()
        ) ::
          {:ok, create_event_bridge_rule_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_event_bridge_rule_template_errors()}
  def create_event_bridge_rule_template(%Client{} = client, input, options \\ []) do
    url_path = "/prod/eventbridge-rule-templates"
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
  Creates an eventbridge rule template group to group your eventbridge rule
  templates and to attach to signal maps for dynamically creating notification
  rules.

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec create_event_bridge_rule_template_group(
          AWS.Client.t(),
          create_event_bridge_rule_template_group_request(),
          Keyword.t()
        ) ::
          {:ok, create_event_bridge_rule_template_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_event_bridge_rule_template_group_errors()}
  def create_event_bridge_rule_template_group(%Client{} = client, input, options \\ []) do
    url_path = "/prod/eventbridge-rule-template-groups"
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
  Create an input

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec create_input(AWS.Client.t(), create_input_request(), Keyword.t()) ::
          {:ok, create_input_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_input_errors()}
  def create_input(%Client{} = client, input, options \\ []) do
    url_path = "/prod/inputs"
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
  Creates a Input Security Group

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec create_input_security_group(
          AWS.Client.t(),
          create_input_security_group_request(),
          Keyword.t()
        ) ::
          {:ok, create_input_security_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_input_security_group_errors()}
  def create_input_security_group(%Client{} = client, input, options \\ []) do
    url_path = "/prod/inputSecurityGroups"
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
  Create a new multiplex.

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec create_multiplex(AWS.Client.t(), create_multiplex_request(), Keyword.t()) ::
          {:ok, create_multiplex_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_multiplex_errors()}
  def create_multiplex(%Client{} = client, input, options \\ []) do
    url_path = "/prod/multiplexes"
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
  Create a new program in the multiplex.

  ## Required positional parameters:
   • :multiplex_id (t:string String.t/0) (MultiplexId)

  ## Optional parameters:
  """
  @spec create_multiplex_program(
          AWS.Client.t(),
          String.t(),
          create_multiplex_program_request(),
          Keyword.t()
        ) ::
          {:ok, create_multiplex_program_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_multiplex_program_errors()}
  def create_multiplex_program(%Client{} = client, multiplex_id, input, options \\ []) do
    url_path = "/prod/multiplexes/#{AWS.Util.encode_uri(multiplex_id)}/programs"
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
  Create a partner input

  ## Required positional parameters:
   • :input_id (t:string String.t/0) (InputId)

  ## Optional parameters:
  """
  @spec create_partner_input(
          AWS.Client.t(),
          String.t(),
          create_partner_input_request(),
          Keyword.t()
        ) ::
          {:ok, create_partner_input_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_partner_input_errors()}
  def create_partner_input(%Client{} = client, input_id, input, options \\ []) do
    url_path = "/prod/inputs/#{AWS.Util.encode_uri(input_id)}/partners"
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
  Initiates the creation of a new signal map.

  Will discover a new mediaResourceMap based on the provided
  discoveryEntryPointArn.

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec create_signal_map(AWS.Client.t(), create_signal_map_request(), Keyword.t()) ::
          {:ok, create_signal_map_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_signal_map_errors()}
  def create_signal_map(%Client{} = client, input, options \\ []) do
    url_path = "/prod/signal-maps"
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
  Create tags for a resource

  ## Required positional parameters:
   • :resource_arn (t:string String.t/0) (ResourceArn)

  ## Optional parameters:
  """
  @spec create_tags(AWS.Client.t(), String.t(), create_tags_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_tags_errors()}
  def create_tags(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/prod/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
      204
    )
  end

  @doc """
  Starts deletion of channel.

  The associated outputs are also deleted.

  ## Required positional parameters:
   • :channel_id (t:string String.t/0) (ChannelId)

  ## Optional parameters:
  """
  @spec delete_channel(AWS.Client.t(), String.t(), delete_channel_request(), Keyword.t()) ::
          {:ok, delete_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_channel_errors()}
  def delete_channel(%Client{} = client, channel_id, input, options \\ []) do
    url_path = "/prod/channels/#{AWS.Util.encode_uri(channel_id)}"
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
  Deletes a cloudwatch alarm template.

  ## Required positional parameters:
   • :identifier (t:string String.t/0) (Identifier)

  ## Optional parameters:
  """
  @spec delete_cloud_watch_alarm_template(
          AWS.Client.t(),
          String.t(),
          delete_cloud_watch_alarm_template_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_cloud_watch_alarm_template_errors()}
  def delete_cloud_watch_alarm_template(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/prod/cloudwatch-alarm-templates/#{AWS.Util.encode_uri(identifier)}"
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
      204
    )
  end

  @doc """
  Deletes a cloudwatch alarm template group.

  You must detach this group from all signal maps and ensure its existing
  templates are moved to another group or deleted.

  ## Required positional parameters:
   • :identifier (t:string String.t/0) (Identifier)

  ## Optional parameters:
  """
  @spec delete_cloud_watch_alarm_template_group(
          AWS.Client.t(),
          String.t(),
          delete_cloud_watch_alarm_template_group_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_cloud_watch_alarm_template_group_errors()}
  def delete_cloud_watch_alarm_template_group(
        %Client{} = client,
        identifier,
        input,
        options \\ []
      ) do
    url_path = "/prod/cloudwatch-alarm-template-groups/#{AWS.Util.encode_uri(identifier)}"
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
      204
    )
  end

  @doc """
  Deletes an eventbridge rule template.

  ## Required positional parameters:
   • :identifier (t:string String.t/0) (Identifier)

  ## Optional parameters:
  """
  @spec delete_event_bridge_rule_template(
          AWS.Client.t(),
          String.t(),
          delete_event_bridge_rule_template_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_event_bridge_rule_template_errors()}
  def delete_event_bridge_rule_template(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/prod/eventbridge-rule-templates/#{AWS.Util.encode_uri(identifier)}"
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
      204
    )
  end

  @doc """
  Deletes an eventbridge rule template group.

  You must detach this group from all signal maps and ensure its existing
  templates are moved to another group or deleted.

  ## Required positional parameters:
   • :identifier (t:string String.t/0) (Identifier)

  ## Optional parameters:
  """
  @spec delete_event_bridge_rule_template_group(
          AWS.Client.t(),
          String.t(),
          delete_event_bridge_rule_template_group_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_event_bridge_rule_template_group_errors()}
  def delete_event_bridge_rule_template_group(
        %Client{} = client,
        identifier,
        input,
        options \\ []
      ) do
    url_path = "/prod/eventbridge-rule-template-groups/#{AWS.Util.encode_uri(identifier)}"
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
      204
    )
  end

  @doc """
  Deletes the input end point

  ## Required positional parameters:
   • :input_id (t:string String.t/0) (InputId)

  ## Optional parameters:
  """
  @spec delete_input(AWS.Client.t(), String.t(), delete_input_request(), Keyword.t()) ::
          {:ok, delete_input_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_input_errors()}
  def delete_input(%Client{} = client, input_id, input, options \\ []) do
    url_path = "/prod/inputs/#{AWS.Util.encode_uri(input_id)}"
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
  Deletes an Input Security Group

  ## Required positional parameters:
   • :input_security_group_id (t:string String.t/0) (InputSecurityGroupId)

  ## Optional parameters:
  """
  @spec delete_input_security_group(
          AWS.Client.t(),
          String.t(),
          delete_input_security_group_request(),
          Keyword.t()
        ) ::
          {:ok, delete_input_security_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_input_security_group_errors()}
  def delete_input_security_group(
        %Client{} = client,
        input_security_group_id,
        input,
        options \\ []
      ) do
    url_path = "/prod/inputSecurityGroups/#{AWS.Util.encode_uri(input_security_group_id)}"
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
  Delete a multiplex.

  The multiplex must be idle.

  ## Required positional parameters:
   • :multiplex_id (t:string String.t/0) (MultiplexId)

  ## Optional parameters:
  """
  @spec delete_multiplex(AWS.Client.t(), String.t(), delete_multiplex_request(), Keyword.t()) ::
          {:ok, delete_multiplex_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_multiplex_errors()}
  def delete_multiplex(%Client{} = client, multiplex_id, input, options \\ []) do
    url_path = "/prod/multiplexes/#{AWS.Util.encode_uri(multiplex_id)}"
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
      202
    )
  end

  @doc """
  Delete a program from a multiplex.

  ## Required positional parameters:
   • :multiplex_id (t:string String.t/0) (MultiplexId)
   • :program_name (t:string String.t/0) (ProgramName)

  ## Optional parameters:
  """
  @spec delete_multiplex_program(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_multiplex_program_request(),
          Keyword.t()
        ) ::
          {:ok, delete_multiplex_program_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_multiplex_program_errors()}
  def delete_multiplex_program(
        %Client{} = client,
        multiplex_id,
        program_name,
        input,
        options \\ []
      ) do
    url_path =
      "/prod/multiplexes/#{AWS.Util.encode_uri(multiplex_id)}/programs/#{AWS.Util.encode_uri(program_name)}"

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
  Delete an expired reservation.

  ## Required positional parameters:
   • :reservation_id (t:string String.t/0) (ReservationId)

  ## Optional parameters:
  """
  @spec delete_reservation(AWS.Client.t(), String.t(), delete_reservation_request(), Keyword.t()) ::
          {:ok, delete_reservation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_reservation_errors()}
  def delete_reservation(%Client{} = client, reservation_id, input, options \\ []) do
    url_path = "/prod/reservations/#{AWS.Util.encode_uri(reservation_id)}"
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
  Delete all schedule actions on a channel.

  ## Required positional parameters:
   • :channel_id (t:string String.t/0) (ChannelId)

  ## Optional parameters:
  """
  @spec delete_schedule(AWS.Client.t(), String.t(), delete_schedule_request(), Keyword.t()) ::
          {:ok, delete_schedule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_schedule_errors()}
  def delete_schedule(%Client{} = client, channel_id, input, options \\ []) do
    url_path = "/prod/channels/#{AWS.Util.encode_uri(channel_id)}/schedule"
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
  Deletes the specified signal map.

  ## Required positional parameters:
   • :identifier (t:string String.t/0) (Identifier)

  ## Optional parameters:
  """
  @spec delete_signal_map(AWS.Client.t(), String.t(), delete_signal_map_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_signal_map_errors()}
  def delete_signal_map(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/prod/signal-maps/#{AWS.Util.encode_uri(identifier)}"
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
      204
    )
  end

  @doc """
  Removes tags for a resource

  ## Required positional parameters:
   • :resource_arn (t:string String.t/0) (ResourceArn)

  ## Optional parameters:
   • :tag_keys (t:String.t/0) (tagKeys)
  """
  @spec delete_tags(AWS.Client.t(), String.t(), delete_tags_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_tags_errors()}
  def delete_tags(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/prod/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
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
      204
    )
  end

  @doc """
  Describe account configuration

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec describe_account_configuration(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_account_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_account_configuration_errors()}
  def describe_account_configuration(%Client{} = client, options \\ []) do
    url_path = "/prod/accountConfiguration"

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
  Gets details about a channel

  ## Required positional parameters:
   • :channel_id (t:string String.t/0) (ChannelId)

  ## Optional parameters:
  """
  @spec describe_channel(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_channel_errors()}
  def describe_channel(%Client{} = client, channel_id, options \\ []) do
    url_path = "/prod/channels/#{AWS.Util.encode_uri(channel_id)}"

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
  Produces details about an input

  ## Required positional parameters:
   • :input_id (t:string String.t/0) (InputId)

  ## Optional parameters:
  """
  @spec describe_input(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_input_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_input_errors()}
  def describe_input(%Client{} = client, input_id, options \\ []) do
    url_path = "/prod/inputs/#{AWS.Util.encode_uri(input_id)}"

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
  Gets the details for the input device

  ## Required positional parameters:
   • :input_device_id (t:string String.t/0) (InputDeviceId)

  ## Optional parameters:
  """
  @spec describe_input_device(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_input_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_input_device_errors()}
  def describe_input_device(%Client{} = client, input_device_id, options \\ []) do
    url_path = "/prod/inputDevices/#{AWS.Util.encode_uri(input_device_id)}"

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
  Get the latest thumbnail data for the input device.

  ## Required positional parameters:
   • :input_device_id (t:string String.t/0) (InputDeviceId)

  ## Optional parameters:
   • :accept (t:String.t/0) (accept)
  """
  @spec describe_input_device_thumbnail(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_input_device_thumbnail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_input_device_thumbnail_errors()}
  def describe_input_device_thumbnail(%Client{} = client, input_device_id, accept, options \\ []) do
    url_path = "/prod/inputDevices/#{AWS.Util.encode_uri(input_device_id)}/thumbnailData"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [accept: nil
    # ])

    headers = []

    {accept, options} = Keyword.pop(options, :accept, nil)

    headers =
      if !is_nil(accept) do
        [{"accept", accept} | headers]
      else
        headers
      end

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"Content-Length", "ContentLength"},
          {"Content-Type", "ContentType"},
          {"ETag", "ETag"},
          {"Last-Modified", "LastModified"}
        ]
      )

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Produces a summary of an Input Security Group

  ## Required positional parameters:
   • :input_security_group_id (t:string String.t/0) (InputSecurityGroupId)

  ## Optional parameters:
  """
  @spec describe_input_security_group(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_input_security_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_input_security_group_errors()}
  def describe_input_security_group(%Client{} = client, input_security_group_id, options \\ []) do
    url_path = "/prod/inputSecurityGroups/#{AWS.Util.encode_uri(input_security_group_id)}"

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
  Gets details about a multiplex.

  ## Required positional parameters:
   • :multiplex_id (t:string String.t/0) (MultiplexId)

  ## Optional parameters:
  """
  @spec describe_multiplex(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_multiplex_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_multiplex_errors()}
  def describe_multiplex(%Client{} = client, multiplex_id, options \\ []) do
    url_path = "/prod/multiplexes/#{AWS.Util.encode_uri(multiplex_id)}"

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
  Get the details for a program in a multiplex.

  ## Required positional parameters:
   • :multiplex_id (t:string String.t/0) (MultiplexId)
   • :program_name (t:string String.t/0) (ProgramName)

  ## Optional parameters:
  """
  @spec describe_multiplex_program(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_multiplex_program_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_multiplex_program_errors()}
  def describe_multiplex_program(%Client{} = client, multiplex_id, program_name, options \\ []) do
    url_path =
      "/prod/multiplexes/#{AWS.Util.encode_uri(multiplex_id)}/programs/#{AWS.Util.encode_uri(program_name)}"

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
  Get details for an offering.

  ## Required positional parameters:
   • :offering_id (t:string String.t/0) (OfferingId)

  ## Optional parameters:
  """
  @spec describe_offering(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_offering_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_offering_errors()}
  def describe_offering(%Client{} = client, offering_id, options \\ []) do
    url_path = "/prod/offerings/#{AWS.Util.encode_uri(offering_id)}"

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
  Get details for a reservation.

  ## Required positional parameters:
   • :reservation_id (t:string String.t/0) (ReservationId)

  ## Optional parameters:
  """
  @spec describe_reservation(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_reservation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_reservation_errors()}
  def describe_reservation(%Client{} = client, reservation_id, options \\ []) do
    url_path = "/prod/reservations/#{AWS.Util.encode_uri(reservation_id)}"

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
  Get a channel schedule

  ## Required positional parameters:
   • :channel_id (t:string String.t/0) (ChannelId)

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec describe_schedule(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_schedule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_schedule_errors()}
  def describe_schedule(%Client{} = client, channel_id, options \\ []) do
    url_path = "/prod/channels/#{AWS.Util.encode_uri(channel_id)}/schedule"

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
  Describe the latest thumbnails data.

  ## Required positional parameters:
   • :channel_id (t:string String.t/0) (ChannelId)

  ## Optional parameters:
   • :pipeline_id (t:String.t/0) (pipelineId)
   • :thumbnail_type (t:String.t/0) (thumbnailType)
  """
  @spec describe_thumbnails(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_thumbnails_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_thumbnails_errors()}
  def describe_thumbnails(
        %Client{} = client,
        channel_id,
        pipeline_id,
        thumbnail_type,
        options \\ []
      ) do
    url_path = "/prod/channels/#{AWS.Util.encode_uri(channel_id)}/thumbnails"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [pipeline_id: nil, thumbnail_type: nil
    # ])

    headers = []
    query_params = []

    {thumbnail_type, options} = Keyword.pop(options, :thumbnail_type, nil)

    query_params =
      if !is_nil(thumbnail_type) do
        [{"thumbnailType", thumbnail_type} | query_params]
      else
        query_params
      end

    {pipeline_id, options} = Keyword.pop(options, :pipeline_id, nil)

    query_params =
      if !is_nil(pipeline_id) do
        [{"pipelineId", pipeline_id} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the specified cloudwatch alarm template.

  ## Required positional parameters:
   • :identifier (t:string String.t/0) (Identifier)

  ## Optional parameters:
  """
  @spec get_cloud_watch_alarm_template(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_cloud_watch_alarm_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_cloud_watch_alarm_template_errors()}
  def get_cloud_watch_alarm_template(%Client{} = client, identifier, options \\ []) do
    url_path = "/prod/cloudwatch-alarm-templates/#{AWS.Util.encode_uri(identifier)}"

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
  Retrieves the specified cloudwatch alarm template group.

  ## Required positional parameters:
   • :identifier (t:string String.t/0) (Identifier)

  ## Optional parameters:
  """
  @spec get_cloud_watch_alarm_template_group(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_cloud_watch_alarm_template_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_cloud_watch_alarm_template_group_errors()}
  def get_cloud_watch_alarm_template_group(%Client{} = client, identifier, options \\ []) do
    url_path = "/prod/cloudwatch-alarm-template-groups/#{AWS.Util.encode_uri(identifier)}"

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
  Retrieves the specified eventbridge rule template.

  ## Required positional parameters:
   • :identifier (t:string String.t/0) (Identifier)

  ## Optional parameters:
  """
  @spec get_event_bridge_rule_template(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_event_bridge_rule_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_event_bridge_rule_template_errors()}
  def get_event_bridge_rule_template(%Client{} = client, identifier, options \\ []) do
    url_path = "/prod/eventbridge-rule-templates/#{AWS.Util.encode_uri(identifier)}"

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
  Retrieves the specified eventbridge rule template group.

  ## Required positional parameters:
   • :identifier (t:string String.t/0) (Identifier)

  ## Optional parameters:
  """
  @spec get_event_bridge_rule_template_group(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_event_bridge_rule_template_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_event_bridge_rule_template_group_errors()}
  def get_event_bridge_rule_template_group(%Client{} = client, identifier, options \\ []) do
    url_path = "/prod/eventbridge-rule-template-groups/#{AWS.Util.encode_uri(identifier)}"

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
  Retrieves the specified signal map.

  ## Required positional parameters:
   • :identifier (t:string String.t/0) (Identifier)

  ## Optional parameters:
  """
  @spec get_signal_map(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_signal_map_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_signal_map_errors()}
  def get_signal_map(%Client{} = client, identifier, options \\ []) do
    url_path = "/prod/signal-maps/#{AWS.Util.encode_uri(identifier)}"

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
  Produces list of channels that have been created

  ## Required positional parameters:

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec list_channels(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_channels_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_channels_errors()}
  def list_channels(%Client{} = client, options \\ []) do
    url_path = "/prod/channels"

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
  Lists cloudwatch alarm template groups.

  ## Required positional parameters:

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
   • :scope (t:String.t/0) (scope)
   • :signal_map_identifier (t:String.t/0) (signalMapIdentifier)
  """
  @spec list_cloud_watch_alarm_template_groups(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_cloud_watch_alarm_template_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_cloud_watch_alarm_template_groups_errors()}
  def list_cloud_watch_alarm_template_groups(%Client{} = client, options \\ []) do
    url_path = "/prod/cloudwatch-alarm-template-groups"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, next_token: nil, scope: nil, signal_map_identifier: nil
    # ])

    headers = []
    query_params = []

    {signal_map_identifier, options} = Keyword.pop(options, :signal_map_identifier, nil)

    query_params =
      if !is_nil(signal_map_identifier) do
        [{"signalMapIdentifier", signal_map_identifier} | query_params]
      else
        query_params
      end

    {scope, options} = Keyword.pop(options, :scope, nil)

    query_params =
      if !is_nil(scope) do
        [{"scope", scope} | query_params]
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
  Lists cloudwatch alarm templates.

  ## Required positional parameters:

  ## Optional parameters:
   • :group_identifier (t:String.t/0) (groupIdentifier)
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
   • :scope (t:String.t/0) (scope)
   • :signal_map_identifier (t:String.t/0) (signalMapIdentifier)
  """
  @spec list_cloud_watch_alarm_templates(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_cloud_watch_alarm_templates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_cloud_watch_alarm_templates_errors()}
  def list_cloud_watch_alarm_templates(%Client{} = client, options \\ []) do
    url_path = "/prod/cloudwatch-alarm-templates"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [group_identifier: nil, max_results: nil, next_token: nil, scope: nil, signal_map_identifier: nil
    # ])

    headers = []
    query_params = []

    {signal_map_identifier, options} = Keyword.pop(options, :signal_map_identifier, nil)

    query_params =
      if !is_nil(signal_map_identifier) do
        [{"signalMapIdentifier", signal_map_identifier} | query_params]
      else
        query_params
      end

    {scope, options} = Keyword.pop(options, :scope, nil)

    query_params =
      if !is_nil(scope) do
        [{"scope", scope} | query_params]
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

    {group_identifier, options} = Keyword.pop(options, :group_identifier, nil)

    query_params =
      if !is_nil(group_identifier) do
        [{"groupIdentifier", group_identifier} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists eventbridge rule template groups.

  ## Required positional parameters:

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
   • :signal_map_identifier (t:String.t/0) (signalMapIdentifier)
  """
  @spec list_event_bridge_rule_template_groups(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_event_bridge_rule_template_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_event_bridge_rule_template_groups_errors()}
  def list_event_bridge_rule_template_groups(%Client{} = client, options \\ []) do
    url_path = "/prod/eventbridge-rule-template-groups"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, next_token: nil, signal_map_identifier: nil
    # ])

    headers = []
    query_params = []

    {signal_map_identifier, options} = Keyword.pop(options, :signal_map_identifier, nil)

    query_params =
      if !is_nil(signal_map_identifier) do
        [{"signalMapIdentifier", signal_map_identifier} | query_params]
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
  Lists eventbridge rule templates.

  ## Required positional parameters:

  ## Optional parameters:
   • :group_identifier (t:String.t/0) (groupIdentifier)
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
   • :signal_map_identifier (t:String.t/0) (signalMapIdentifier)
  """
  @spec list_event_bridge_rule_templates(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_event_bridge_rule_templates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_event_bridge_rule_templates_errors()}
  def list_event_bridge_rule_templates(%Client{} = client, options \\ []) do
    url_path = "/prod/eventbridge-rule-templates"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [group_identifier: nil, max_results: nil, next_token: nil, signal_map_identifier: nil
    # ])

    headers = []
    query_params = []

    {signal_map_identifier, options} = Keyword.pop(options, :signal_map_identifier, nil)

    query_params =
      if !is_nil(signal_map_identifier) do
        [{"signalMapIdentifier", signal_map_identifier} | query_params]
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

    {group_identifier, options} = Keyword.pop(options, :group_identifier, nil)

    query_params =
      if !is_nil(group_identifier) do
        [{"groupIdentifier", group_identifier} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List input devices that are currently being transferred.

  List input devices that you are transferring from your AWS account or input
  devices that another AWS account is transferring to you.

  ## Required positional parameters:

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
   • :transfer_type (t:String.t/0) (transferType)
  """
  @spec list_input_device_transfers(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_input_device_transfers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_input_device_transfers_errors()}
  def list_input_device_transfers(%Client{} = client, transfer_type, options \\ []) do
    url_path = "/prod/inputDeviceTransfers"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, next_token: nil, transfer_type: nil
    # ])

    headers = []
    query_params = []

    {transfer_type, options} = Keyword.pop(options, :transfer_type, nil)

    query_params =
      if !is_nil(transfer_type) do
        [{"transferType", transfer_type} | query_params]
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
  List input devices

  ## Required positional parameters:

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec list_input_devices(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_input_devices_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_input_devices_errors()}
  def list_input_devices(%Client{} = client, options \\ []) do
    url_path = "/prod/inputDevices"

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
  Produces a list of Input Security Groups for an account

  ## Required positional parameters:

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec list_input_security_groups(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_input_security_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_input_security_groups_errors()}
  def list_input_security_groups(%Client{} = client, options \\ []) do
    url_path = "/prod/inputSecurityGroups"

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
  Produces list of inputs that have been created

  ## Required positional parameters:

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec list_inputs(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_inputs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_inputs_errors()}
  def list_inputs(%Client{} = client, options \\ []) do
    url_path = "/prod/inputs"

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
  List the programs that currently exist for a specific multiplex.

  ## Required positional parameters:
   • :multiplex_id (t:string String.t/0) (MultiplexId)

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec list_multiplex_programs(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_multiplex_programs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_multiplex_programs_errors()}
  def list_multiplex_programs(%Client{} = client, multiplex_id, options \\ []) do
    url_path = "/prod/multiplexes/#{AWS.Util.encode_uri(multiplex_id)}/programs"

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
  Retrieve a list of the existing multiplexes.

  ## Required positional parameters:

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec list_multiplexes(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_multiplexes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_multiplexes_errors()}
  def list_multiplexes(%Client{} = client, options \\ []) do
    url_path = "/prod/multiplexes"

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
  List offerings available for purchase.

  ## Required positional parameters:

  ## Optional parameters:
   • :channel_class (t:String.t/0) (channelClass)
   • :channel_configuration (t:String.t/0) (channelConfiguration)
   • :codec (t:String.t/0) (codec)
   • :duration (t:String.t/0) (duration)
   • :max_results (t:String.t/0) (maxResults)
   • :maximum_bitrate (t:String.t/0) (maximumBitrate)
   • :maximum_framerate (t:String.t/0) (maximumFramerate)
   • :next_token (t:String.t/0) (nextToken)
   • :resolution (t:String.t/0) (resolution)
   • :resource_type (t:String.t/0) (resourceType)
   • :special_feature (t:String.t/0) (specialFeature)
   • :video_quality (t:String.t/0) (videoQuality)
  """
  @spec list_offerings(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_offerings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_offerings_errors()}
  def list_offerings(%Client{} = client, options \\ []) do
    url_path = "/prod/offerings"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [channel_class: nil, channel_configuration: nil, codec: nil, duration: nil, max_results: nil, maximum_bitrate: nil, maximum_framerate: nil, next_token: nil, resolution: nil, resource_type: nil, special_feature: nil, video_quality: nil
    # ])

    headers = []
    query_params = []

    {video_quality, options} = Keyword.pop(options, :video_quality, nil)

    query_params =
      if !is_nil(video_quality) do
        [{"videoQuality", video_quality} | query_params]
      else
        query_params
      end

    {special_feature, options} = Keyword.pop(options, :special_feature, nil)

    query_params =
      if !is_nil(special_feature) do
        [{"specialFeature", special_feature} | query_params]
      else
        query_params
      end

    {resource_type, options} = Keyword.pop(options, :resource_type, nil)

    query_params =
      if !is_nil(resource_type) do
        [{"resourceType", resource_type} | query_params]
      else
        query_params
      end

    {resolution, options} = Keyword.pop(options, :resolution, nil)

    query_params =
      if !is_nil(resolution) do
        [{"resolution", resolution} | query_params]
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

    {maximum_framerate, options} = Keyword.pop(options, :maximum_framerate, nil)

    query_params =
      if !is_nil(maximum_framerate) do
        [{"maximumFramerate", maximum_framerate} | query_params]
      else
        query_params
      end

    {maximum_bitrate, options} = Keyword.pop(options, :maximum_bitrate, nil)

    query_params =
      if !is_nil(maximum_bitrate) do
        [{"maximumBitrate", maximum_bitrate} | query_params]
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

    {duration, options} = Keyword.pop(options, :duration, nil)

    query_params =
      if !is_nil(duration) do
        [{"duration", duration} | query_params]
      else
        query_params
      end

    {codec, options} = Keyword.pop(options, :codec, nil)

    query_params =
      if !is_nil(codec) do
        [{"codec", codec} | query_params]
      else
        query_params
      end

    {channel_configuration, options} = Keyword.pop(options, :channel_configuration, nil)

    query_params =
      if !is_nil(channel_configuration) do
        [{"channelConfiguration", channel_configuration} | query_params]
      else
        query_params
      end

    {channel_class, options} = Keyword.pop(options, :channel_class, nil)

    query_params =
      if !is_nil(channel_class) do
        [{"channelClass", channel_class} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List purchased reservations.

  ## Required positional parameters:

  ## Optional parameters:
   • :channel_class (t:String.t/0) (channelClass)
   • :codec (t:String.t/0) (codec)
   • :max_results (t:String.t/0) (maxResults)
   • :maximum_bitrate (t:String.t/0) (maximumBitrate)
   • :maximum_framerate (t:String.t/0) (maximumFramerate)
   • :next_token (t:String.t/0) (nextToken)
   • :resolution (t:String.t/0) (resolution)
   • :resource_type (t:String.t/0) (resourceType)
   • :special_feature (t:String.t/0) (specialFeature)
   • :video_quality (t:String.t/0) (videoQuality)
  """
  @spec list_reservations(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_reservations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_reservations_errors()}
  def list_reservations(%Client{} = client, options \\ []) do
    url_path = "/prod/reservations"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [channel_class: nil, codec: nil, max_results: nil, maximum_bitrate: nil, maximum_framerate: nil, next_token: nil, resolution: nil, resource_type: nil, special_feature: nil, video_quality: nil
    # ])

    headers = []
    query_params = []

    {video_quality, options} = Keyword.pop(options, :video_quality, nil)

    query_params =
      if !is_nil(video_quality) do
        [{"videoQuality", video_quality} | query_params]
      else
        query_params
      end

    {special_feature, options} = Keyword.pop(options, :special_feature, nil)

    query_params =
      if !is_nil(special_feature) do
        [{"specialFeature", special_feature} | query_params]
      else
        query_params
      end

    {resource_type, options} = Keyword.pop(options, :resource_type, nil)

    query_params =
      if !is_nil(resource_type) do
        [{"resourceType", resource_type} | query_params]
      else
        query_params
      end

    {resolution, options} = Keyword.pop(options, :resolution, nil)

    query_params =
      if !is_nil(resolution) do
        [{"resolution", resolution} | query_params]
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

    {maximum_framerate, options} = Keyword.pop(options, :maximum_framerate, nil)

    query_params =
      if !is_nil(maximum_framerate) do
        [{"maximumFramerate", maximum_framerate} | query_params]
      else
        query_params
      end

    {maximum_bitrate, options} = Keyword.pop(options, :maximum_bitrate, nil)

    query_params =
      if !is_nil(maximum_bitrate) do
        [{"maximumBitrate", maximum_bitrate} | query_params]
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

    {codec, options} = Keyword.pop(options, :codec, nil)

    query_params =
      if !is_nil(codec) do
        [{"codec", codec} | query_params]
      else
        query_params
      end

    {channel_class, options} = Keyword.pop(options, :channel_class, nil)

    query_params =
      if !is_nil(channel_class) do
        [{"channelClass", channel_class} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists signal maps.

  ## Required positional parameters:

  ## Optional parameters:
   • :cloud_watch_alarm_template_group_identifier (t:String.t/0) (cloudWatchAlarmTemplateGroupIdentifier)
   • :event_bridge_rule_template_group_identifier (t:String.t/0) (eventBridgeRuleTemplateGroupIdentifier)
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec list_signal_maps(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_signal_maps_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_signal_maps_errors()}
  def list_signal_maps(%Client{} = client, options \\ []) do
    url_path = "/prod/signal-maps"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [cloud_watch_alarm_template_group_identifier: nil, event_bridge_rule_template_group_identifier: nil, max_results: nil, next_token: nil
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

    {event_bridge_rule_template_group_identifier, options} =
      Keyword.pop(options, :event_bridge_rule_template_group_identifier, nil)

    query_params =
      if !is_nil(event_bridge_rule_template_group_identifier) do
        [
          {"eventBridgeRuleTemplateGroupIdentifier", event_bridge_rule_template_group_identifier}
          | query_params
        ]
      else
        query_params
      end

    {cloud_watch_alarm_template_group_identifier, options} =
      Keyword.pop(options, :cloud_watch_alarm_template_group_identifier, nil)

    query_params =
      if !is_nil(cloud_watch_alarm_template_group_identifier) do
        [
          {"cloudWatchAlarmTemplateGroupIdentifier", cloud_watch_alarm_template_group_identifier}
          | query_params
        ]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Produces list of tags that have been created for a resource

  ## Required positional parameters:
   • :resource_arn (t:string String.t/0) (ResourceArn)

  ## Optional parameters:
  """
  @spec list_tags_for_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/prod/tags/#{AWS.Util.encode_uri(resource_arn)}"

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
  Purchase an offering and create a reservation.

  ## Required positional parameters:
   • :offering_id (t:string String.t/0) (OfferingId)

  ## Optional parameters:
  """
  @spec purchase_offering(AWS.Client.t(), String.t(), purchase_offering_request(), Keyword.t()) ::
          {:ok, purchase_offering_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, purchase_offering_errors()}
  def purchase_offering(%Client{} = client, offering_id, input, options \\ []) do
    url_path = "/prod/offerings/#{AWS.Util.encode_uri(offering_id)}/purchase"
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
  Send a reboot command to the specified input device.

  The device will begin rebooting within a few seconds of sending the command.
  When the reboot is complete, the device’s connection status will change to
  connected.

  ## Required positional parameters:
   • :input_device_id (t:string String.t/0) (InputDeviceId)

  ## Optional parameters:
  """
  @spec reboot_input_device(
          AWS.Client.t(),
          String.t(),
          reboot_input_device_request(),
          Keyword.t()
        ) ::
          {:ok, reboot_input_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reboot_input_device_errors()}
  def reboot_input_device(%Client{} = client, input_device_id, input, options \\ []) do
    url_path = "/prod/inputDevices/#{AWS.Util.encode_uri(input_device_id)}/reboot"
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
  Reject the transfer of the specified input device to your AWS account.

  ## Required positional parameters:
   • :input_device_id (t:string String.t/0) (InputDeviceId)

  ## Optional parameters:
  """
  @spec reject_input_device_transfer(
          AWS.Client.t(),
          String.t(),
          reject_input_device_transfer_request(),
          Keyword.t()
        ) ::
          {:ok, reject_input_device_transfer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reject_input_device_transfer_errors()}
  def reject_input_device_transfer(%Client{} = client, input_device_id, input, options \\ []) do
    url_path = "/prod/inputDevices/#{AWS.Util.encode_uri(input_device_id)}/reject"
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
  Restart pipelines in one channel that is currently running.

  ## Required positional parameters:
   • :channel_id (t:string String.t/0) (ChannelId)

  ## Optional parameters:
  """
  @spec restart_channel_pipelines(
          AWS.Client.t(),
          String.t(),
          restart_channel_pipelines_request(),
          Keyword.t()
        ) ::
          {:ok, restart_channel_pipelines_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, restart_channel_pipelines_errors()}
  def restart_channel_pipelines(%Client{} = client, channel_id, input, options \\ []) do
    url_path = "/prod/channels/#{AWS.Util.encode_uri(channel_id)}/restartChannelPipelines"
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
  Starts an existing channel

  ## Required positional parameters:
   • :channel_id (t:string String.t/0) (ChannelId)

  ## Optional parameters:
  """
  @spec start_channel(AWS.Client.t(), String.t(), start_channel_request(), Keyword.t()) ::
          {:ok, start_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_channel_errors()}
  def start_channel(%Client{} = client, channel_id, input, options \\ []) do
    url_path = "/prod/channels/#{AWS.Util.encode_uri(channel_id)}/start"
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
  Initiates a deployment to delete the monitor of the specified signal map.

  ## Required positional parameters:
   • :identifier (t:string String.t/0) (Identifier)

  ## Optional parameters:
  """
  @spec start_delete_monitor_deployment(
          AWS.Client.t(),
          String.t(),
          start_delete_monitor_deployment_request(),
          Keyword.t()
        ) ::
          {:ok, start_delete_monitor_deployment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_delete_monitor_deployment_errors()}
  def start_delete_monitor_deployment(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/prod/signal-maps/#{AWS.Util.encode_uri(identifier)}/monitor-deployment"
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
      202
    )
  end

  @doc """
  Start an input device that is attached to a MediaConnect flow.

  (There is no need to start a device that is attached to a MediaLive input;
  MediaLive starts the device when the channel starts.)

  ## Required positional parameters:
   • :input_device_id (t:string String.t/0) (InputDeviceId)

  ## Optional parameters:
  """
  @spec start_input_device(AWS.Client.t(), String.t(), start_input_device_request(), Keyword.t()) ::
          {:ok, start_input_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_input_device_errors()}
  def start_input_device(%Client{} = client, input_device_id, input, options \\ []) do
    url_path = "/prod/inputDevices/#{AWS.Util.encode_uri(input_device_id)}/start"
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
  Start a maintenance window for the specified input device.

  Starting a maintenance window will give the device up to two hours to install
  software. If the device was streaming prior to the maintenance, it will resume
  streaming when the software is fully installed. Devices automatically install
  updates while they are powered on and their MediaLive channels are stopped. A
  maintenance window allows you to update a device without having to stop
  MediaLive channels that use the device. The device must remain powered on and
  connected to the internet for the duration of the maintenance.

  ## Required positional parameters:
   • :input_device_id (t:string String.t/0) (InputDeviceId)

  ## Optional parameters:
  """
  @spec start_input_device_maintenance_window(
          AWS.Client.t(),
          String.t(),
          start_input_device_maintenance_window_request(),
          Keyword.t()
        ) ::
          {:ok, start_input_device_maintenance_window_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_input_device_maintenance_window_errors()}
  def start_input_device_maintenance_window(
        %Client{} = client,
        input_device_id,
        input,
        options \\ []
      ) do
    url_path =
      "/prod/inputDevices/#{AWS.Util.encode_uri(input_device_id)}/startInputDeviceMaintenanceWindow"

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
  Initiates a deployment to deploy the latest monitor of the specified signal map.

  ## Required positional parameters:
   • :identifier (t:string String.t/0) (Identifier)

  ## Optional parameters:
  """
  @spec start_monitor_deployment(
          AWS.Client.t(),
          String.t(),
          start_monitor_deployment_request(),
          Keyword.t()
        ) ::
          {:ok, start_monitor_deployment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_monitor_deployment_errors()}
  def start_monitor_deployment(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/prod/signal-maps/#{AWS.Util.encode_uri(identifier)}/monitor-deployment"
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
      202
    )
  end

  @doc """
  Start (run) the multiplex.

  Starting the multiplex does not start the channels. You must explicitly start
  each channel.

  ## Required positional parameters:
   • :multiplex_id (t:string String.t/0) (MultiplexId)

  ## Optional parameters:
  """
  @spec start_multiplex(AWS.Client.t(), String.t(), start_multiplex_request(), Keyword.t()) ::
          {:ok, start_multiplex_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_multiplex_errors()}
  def start_multiplex(%Client{} = client, multiplex_id, input, options \\ []) do
    url_path = "/prod/multiplexes/#{AWS.Util.encode_uri(multiplex_id)}/start"
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
      202
    )
  end

  @doc """
  Initiates an update for the specified signal map.

  Will discover a new signal map if a changed discoveryEntryPointArn is provided.

  ## Required positional parameters:
   • :identifier (t:string String.t/0) (Identifier)

  ## Optional parameters:
  """
  @spec start_update_signal_map(
          AWS.Client.t(),
          String.t(),
          start_update_signal_map_request(),
          Keyword.t()
        ) ::
          {:ok, start_update_signal_map_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_update_signal_map_errors()}
  def start_update_signal_map(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/prod/signal-maps/#{AWS.Util.encode_uri(identifier)}"
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
      202
    )
  end

  @doc """
  Stops a running channel

  ## Required positional parameters:
   • :channel_id (t:string String.t/0) (ChannelId)

  ## Optional parameters:
  """
  @spec stop_channel(AWS.Client.t(), String.t(), stop_channel_request(), Keyword.t()) ::
          {:ok, stop_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_channel_errors()}
  def stop_channel(%Client{} = client, channel_id, input, options \\ []) do
    url_path = "/prod/channels/#{AWS.Util.encode_uri(channel_id)}/stop"
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
  Stop an input device that is attached to a MediaConnect flow.

  (There is no need to stop a device that is attached to a MediaLive input;
  MediaLive automatically stops the device when the channel stops.)

  ## Required positional parameters:
   • :input_device_id (t:string String.t/0) (InputDeviceId)

  ## Optional parameters:
  """
  @spec stop_input_device(AWS.Client.t(), String.t(), stop_input_device_request(), Keyword.t()) ::
          {:ok, stop_input_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_input_device_errors()}
  def stop_input_device(%Client{} = client, input_device_id, input, options \\ []) do
    url_path = "/prod/inputDevices/#{AWS.Util.encode_uri(input_device_id)}/stop"
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
  Stops a running multiplex.

  If the multiplex isn't running, this action has no effect.

  ## Required positional parameters:
   • :multiplex_id (t:string String.t/0) (MultiplexId)

  ## Optional parameters:
  """
  @spec stop_multiplex(AWS.Client.t(), String.t(), stop_multiplex_request(), Keyword.t()) ::
          {:ok, stop_multiplex_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_multiplex_errors()}
  def stop_multiplex(%Client{} = client, multiplex_id, input, options \\ []) do
    url_path = "/prod/multiplexes/#{AWS.Util.encode_uri(multiplex_id)}/stop"
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
      202
    )
  end

  @doc """
  Start an input device transfer to another AWS account.

  After you make the request, the other account must accept or reject the
  transfer.

  ## Required positional parameters:
   • :input_device_id (t:string String.t/0) (InputDeviceId)

  ## Optional parameters:
  """
  @spec transfer_input_device(
          AWS.Client.t(),
          String.t(),
          transfer_input_device_request(),
          Keyword.t()
        ) ::
          {:ok, transfer_input_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, transfer_input_device_errors()}
  def transfer_input_device(%Client{} = client, input_device_id, input, options \\ []) do
    url_path = "/prod/inputDevices/#{AWS.Util.encode_uri(input_device_id)}/transfer"
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
  Update account configuration

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec update_account_configuration(
          AWS.Client.t(),
          update_account_configuration_request(),
          Keyword.t()
        ) ::
          {:ok, update_account_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_account_configuration_errors()}
  def update_account_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/prod/accountConfiguration"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a channel.

  ## Required positional parameters:
   • :channel_id (t:string String.t/0) (ChannelId)

  ## Optional parameters:
  """
  @spec update_channel(AWS.Client.t(), String.t(), update_channel_request(), Keyword.t()) ::
          {:ok, update_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_channel_errors()}
  def update_channel(%Client{} = client, channel_id, input, options \\ []) do
    url_path = "/prod/channels/#{AWS.Util.encode_uri(channel_id)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Changes the class of the channel.

  ## Required positional parameters:
   • :channel_id (t:string String.t/0) (ChannelId)

  ## Optional parameters:
  """
  @spec update_channel_class(
          AWS.Client.t(),
          String.t(),
          update_channel_class_request(),
          Keyword.t()
        ) ::
          {:ok, update_channel_class_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_channel_class_errors()}
  def update_channel_class(%Client{} = client, channel_id, input, options \\ []) do
    url_path = "/prod/channels/#{AWS.Util.encode_uri(channel_id)}/channelClass"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the specified cloudwatch alarm template.

  ## Required positional parameters:
   • :identifier (t:string String.t/0) (Identifier)

  ## Optional parameters:
  """
  @spec update_cloud_watch_alarm_template(
          AWS.Client.t(),
          String.t(),
          update_cloud_watch_alarm_template_request(),
          Keyword.t()
        ) ::
          {:ok, update_cloud_watch_alarm_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_cloud_watch_alarm_template_errors()}
  def update_cloud_watch_alarm_template(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/prod/cloudwatch-alarm-templates/#{AWS.Util.encode_uri(identifier)}"
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
  Updates the specified cloudwatch alarm template group.

  ## Required positional parameters:
   • :identifier (t:string String.t/0) (Identifier)

  ## Optional parameters:
  """
  @spec update_cloud_watch_alarm_template_group(
          AWS.Client.t(),
          String.t(),
          update_cloud_watch_alarm_template_group_request(),
          Keyword.t()
        ) ::
          {:ok, update_cloud_watch_alarm_template_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_cloud_watch_alarm_template_group_errors()}
  def update_cloud_watch_alarm_template_group(
        %Client{} = client,
        identifier,
        input,
        options \\ []
      ) do
    url_path = "/prod/cloudwatch-alarm-template-groups/#{AWS.Util.encode_uri(identifier)}"
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
  Updates the specified eventbridge rule template.

  ## Required positional parameters:
   • :identifier (t:string String.t/0) (Identifier)

  ## Optional parameters:
  """
  @spec update_event_bridge_rule_template(
          AWS.Client.t(),
          String.t(),
          update_event_bridge_rule_template_request(),
          Keyword.t()
        ) ::
          {:ok, update_event_bridge_rule_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_event_bridge_rule_template_errors()}
  def update_event_bridge_rule_template(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/prod/eventbridge-rule-templates/#{AWS.Util.encode_uri(identifier)}"
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
  Updates the specified eventbridge rule template group.

  ## Required positional parameters:
   • :identifier (t:string String.t/0) (Identifier)

  ## Optional parameters:
  """
  @spec update_event_bridge_rule_template_group(
          AWS.Client.t(),
          String.t(),
          update_event_bridge_rule_template_group_request(),
          Keyword.t()
        ) ::
          {:ok, update_event_bridge_rule_template_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_event_bridge_rule_template_group_errors()}
  def update_event_bridge_rule_template_group(
        %Client{} = client,
        identifier,
        input,
        options \\ []
      ) do
    url_path = "/prod/eventbridge-rule-template-groups/#{AWS.Util.encode_uri(identifier)}"
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
  Updates an input.

  ## Required positional parameters:
   • :input_id (t:string String.t/0) (InputId)

  ## Optional parameters:
  """
  @spec update_input(AWS.Client.t(), String.t(), update_input_request(), Keyword.t()) ::
          {:ok, update_input_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_input_errors()}
  def update_input(%Client{} = client, input_id, input, options \\ []) do
    url_path = "/prod/inputs/#{AWS.Util.encode_uri(input_id)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the parameters for the input device.

  ## Required positional parameters:
   • :input_device_id (t:string String.t/0) (InputDeviceId)

  ## Optional parameters:
  """
  @spec update_input_device(
          AWS.Client.t(),
          String.t(),
          update_input_device_request(),
          Keyword.t()
        ) ::
          {:ok, update_input_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_input_device_errors()}
  def update_input_device(%Client{} = client, input_device_id, input, options \\ []) do
    url_path = "/prod/inputDevices/#{AWS.Util.encode_uri(input_device_id)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Update an Input Security Group's Whilelists.

  ## Required positional parameters:
   • :input_security_group_id (t:string String.t/0) (InputSecurityGroupId)

  ## Optional parameters:
  """
  @spec update_input_security_group(
          AWS.Client.t(),
          String.t(),
          update_input_security_group_request(),
          Keyword.t()
        ) ::
          {:ok, update_input_security_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_input_security_group_errors()}
  def update_input_security_group(
        %Client{} = client,
        input_security_group_id,
        input,
        options \\ []
      ) do
    url_path = "/prod/inputSecurityGroups/#{AWS.Util.encode_uri(input_security_group_id)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a multiplex.

  ## Required positional parameters:
   • :multiplex_id (t:string String.t/0) (MultiplexId)

  ## Optional parameters:
  """
  @spec update_multiplex(AWS.Client.t(), String.t(), update_multiplex_request(), Keyword.t()) ::
          {:ok, update_multiplex_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_multiplex_errors()}
  def update_multiplex(%Client{} = client, multiplex_id, input, options \\ []) do
    url_path = "/prod/multiplexes/#{AWS.Util.encode_uri(multiplex_id)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Update a program in a multiplex.

  ## Required positional parameters:
   • :multiplex_id (t:string String.t/0) (MultiplexId)
   • :program_name (t:string String.t/0) (ProgramName)

  ## Optional parameters:
  """
  @spec update_multiplex_program(
          AWS.Client.t(),
          String.t(),
          String.t(),
          update_multiplex_program_request(),
          Keyword.t()
        ) ::
          {:ok, update_multiplex_program_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_multiplex_program_errors()}
  def update_multiplex_program(
        %Client{} = client,
        multiplex_id,
        program_name,
        input,
        options \\ []
      ) do
    url_path =
      "/prod/multiplexes/#{AWS.Util.encode_uri(multiplex_id)}/programs/#{AWS.Util.encode_uri(program_name)}"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Update reservation.

  ## Required positional parameters:
   • :reservation_id (t:string String.t/0) (ReservationId)

  ## Optional parameters:
  """
  @spec update_reservation(AWS.Client.t(), String.t(), update_reservation_request(), Keyword.t()) ::
          {:ok, update_reservation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_reservation_errors()}
  def update_reservation(%Client{} = client, reservation_id, input, options \\ []) do
    url_path = "/prod/reservations/#{AWS.Util.encode_uri(reservation_id)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
