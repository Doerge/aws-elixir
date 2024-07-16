# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MediaTailor do
  @moduledoc """
  Use the AWS Elemental MediaTailor SDKs and CLI to configure scalable ad
  insertion and linear channels. With MediaTailor, you can assemble existing
  content into a linear stream and serve targeted ads to viewers while
  maintaining broadcast quality in over-the-top (OTT) video applications. For
  information about using the service, including detailed information about the
  settings covered in this guide, see the [AWS Elemental MediaTailor User
  Guide](https://docs.aws.amazon.com/mediatailor/latest/ug/).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      put_channel_policy_request() :: %{
        required("Policy") => String.t()
      }

  """
  @type put_channel_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_program_response() :: %{}

  """
  @type delete_program_response() :: %{}

  @typedoc """

  ## Example:

      live_pre_roll_configuration() :: %{
        "AdDecisionServerUrl" => String.t(),
        "MaxDurationSeconds" => integer()
      }

  """
  @type live_pre_roll_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_channel_request() :: %{}

  """
  @type delete_channel_request() :: %{}

  @typedoc """

  ## Example:

      response_output_item() :: %{
        "DashPlaylistSettings" => dash_playlist_settings(),
        "HlsPlaylistSettings" => hls_playlist_settings(),
        "ManifestName" => String.t(),
        "PlaybackUrl" => String.t(),
        "SourceGroup" => String.t()
      }

  """
  @type response_output_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_channel_policy_response() :: %{}

  """
  @type put_channel_policy_response() :: %{}

  @typedoc """

  ## Example:

      vod_source() :: %{
        "Arn" => String.t(),
        "CreationTime" => non_neg_integer(),
        "HttpPackageConfigurations" => list(http_package_configuration()()),
        "LastModifiedTime" => non_neg_integer(),
        "SourceLocationName" => String.t(),
        "Tags" => map(),
        "VodSourceName" => String.t()
      }

  """
  @type vod_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_vod_source_request() :: %{}

  """
  @type describe_vod_source_request() :: %{}

  @typedoc """

  ## Example:

      configure_logs_for_playback_configuration_response() :: %{
        optional("PlaybackConfigurationName") => String.t(),
        required("PercentEnabled") => integer()
      }

  """
  @type configure_logs_for_playback_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_vod_source_response() :: %{
        optional("Arn") => String.t(),
        optional("CreationTime") => non_neg_integer(),
        optional("HttpPackageConfigurations") => list(http_package_configuration()()),
        optional("LastModifiedTime") => non_neg_integer(),
        optional("SourceLocationName") => String.t(),
        optional("Tags") => map(),
        optional("VodSourceName") => String.t()
      }

  """
  @type update_vod_source_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_vod_source_request() :: %{}

  """
  @type delete_vod_source_request() :: %{}

  @typedoc """

  ## Example:

      describe_vod_source_response() :: %{
        optional("AdBreakOpportunities") => list(ad_break_opportunity()()),
        optional("Arn") => String.t(),
        optional("CreationTime") => non_neg_integer(),
        optional("HttpPackageConfigurations") => list(http_package_configuration()()),
        optional("LastModifiedTime") => non_neg_integer(),
        optional("SourceLocationName") => String.t(),
        optional("Tags") => map(),
        optional("VodSourceName") => String.t()
      }

  """
  @type describe_vod_source_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_channel_response() :: %{
        optional("Arn") => String.t(),
        optional("Audiences") => list([String.t()]()),
        optional("ChannelName") => String.t(),
        optional("ChannelState") => list(any()),
        optional("CreationTime") => non_neg_integer(),
        optional("FillerSlate") => slate_source(),
        optional("LastModifiedTime") => non_neg_integer(),
        optional("Outputs") => list(response_output_item()()),
        optional("PlaybackMode") => String.t(),
        optional("Tags") => map(),
        optional("Tier") => String.t(),
        optional("TimeShiftConfiguration") => time_shift_configuration()
      }

  """
  @type create_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configure_logs_for_channel_request() :: %{
        required("ChannelName") => String.t(),
        required("LogTypes") => list(list(any())())
      }

  """
  @type configure_logs_for_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_playback_configuration_request() :: %{}

  """
  @type delete_playback_configuration_request() :: %{}

  @typedoc """

  ## Example:

      delete_vod_source_response() :: %{}

  """
  @type delete_vod_source_response() :: %{}

  @typedoc """

  ## Example:

      delete_channel_response() :: %{}

  """
  @type delete_channel_response() :: %{}

  @typedoc """

  ## Example:

      playback_configuration() :: %{
        "AdDecisionServerUrl" => String.t(),
        "AvailSuppression" => avail_suppression(),
        "Bumper" => bumper(),
        "CdnConfiguration" => cdn_configuration(),
        "ConfigurationAliases" => map(),
        "DashConfiguration" => dash_configuration(),
        "HlsConfiguration" => hls_configuration(),
        "InsertionMode" => list(any()),
        "LivePreRollConfiguration" => live_pre_roll_configuration(),
        "LogConfiguration" => log_configuration(),
        "ManifestProcessingRules" => manifest_processing_rules(),
        "Name" => String.t(),
        "PersonalizationThresholdSeconds" => integer(),
        "PlaybackConfigurationArn" => String.t(),
        "PlaybackEndpointPrefix" => String.t(),
        "SessionInitializationEndpointPrefix" => String.t(),
        "SlateAdUrl" => String.t(),
        "Tags" => map(),
        "TranscodeProfileName" => String.t(),
        "VideoContentSourceUrl" => String.t()
      }

  """
  @type playback_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_channel_schedule_request() :: %{
        optional("Audience") => String.t(),
        optional("DurationMinutes") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type get_channel_schedule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_alerts_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ResourceArn") => String.t()
      }

  """
  @type list_alerts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_prefetch_schedules_response() :: %{
        optional("Items") => list(prefetch_schedule()()),
        optional("NextToken") => String.t()
      }

  """
  @type list_prefetch_schedules_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      prefetch_consumption() :: %{
        "AvailMatchingCriteria" => list(avail_matching_criteria()()),
        "EndTime" => non_neg_integer(),
        "StartTime" => non_neg_integer()
      }

  """
  @type prefetch_consumption() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_channel_policy_request() :: %{}

  """
  @type delete_channel_policy_request() :: %{}

  @typedoc """

  ## Example:

      list_vod_sources_response() :: %{
        optional("Items") => list(vod_source()()),
        optional("NextToken") => String.t()
      }

  """
  @type list_vod_sources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configure_logs_for_playback_configuration_request() :: %{
        "PercentEnabled" => integer(),
        "PlaybackConfigurationName" => String.t()
      }

  """
  @type configure_logs_for_playback_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_source_location_response() :: %{
        optional("AccessConfiguration") => access_configuration(),
        optional("Arn") => String.t(),
        optional("CreationTime") => non_neg_integer(),
        optional("DefaultSegmentDeliveryConfiguration") => default_segment_delivery_configuration(),
        optional("HttpConfiguration") => http_configuration(),
        optional("LastModifiedTime") => non_neg_integer(),
        optional("SegmentDeliveryConfigurations") => list(segment_delivery_configuration()()),
        optional("SourceLocationName") => String.t(),
        optional("Tags") => map()
      }

  """
  @type update_source_location_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      default_segment_delivery_configuration() :: %{
        "BaseUrl" => String.t()
      }

  """
  @type default_segment_delivery_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_channel_schedule_response() :: %{
        optional("Items") => list(schedule_entry()()),
        optional("NextToken") => String.t()
      }

  """
  @type get_channel_schedule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ad_break_opportunity() :: %{
        "OffsetMillis" => float()
      }

  """
  @type ad_break_opportunity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_prefetch_schedule_request() :: %{}

  """
  @type get_prefetch_schedule_request() :: %{}

  @typedoc """

  ## Example:

      manifest_processing_rules() :: %{
        "AdMarkerPassthrough" => ad_marker_passthrough()
      }

  """
  @type manifest_processing_rules() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dash_playlist_settings() :: %{
        "ManifestWindowSeconds" => integer(),
        "MinBufferTimeSeconds" => integer(),
        "MinUpdatePeriodSeconds" => integer(),
        "SuggestedPresentationDelaySeconds" => integer()
      }

  """
  @type dash_playlist_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_channel_request() :: %{}

  """
  @type stop_channel_request() :: %{}

  @typedoc """

  ## Example:

      audience_media() :: %{
        "AlternateMedia" => list(alternate_media()()),
        "Audience" => String.t()
      }

  """
  @type audience_media() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_source_location_response() :: %{
        optional("AccessConfiguration") => access_configuration(),
        optional("Arn") => String.t(),
        optional("CreationTime") => non_neg_integer(),
        optional("DefaultSegmentDeliveryConfiguration") => default_segment_delivery_configuration(),
        optional("HttpConfiguration") => http_configuration(),
        optional("LastModifiedTime") => non_neg_integer(),
        optional("SegmentDeliveryConfigurations") => list(segment_delivery_configuration()()),
        optional("SourceLocationName") => String.t(),
        optional("Tags") => map()
      }

  """
  @type describe_source_location_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_playback_configurations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_playback_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_prefetch_schedule_response() :: %{
        optional("Arn") => String.t(),
        optional("Consumption") => prefetch_consumption(),
        optional("Name") => String.t(),
        optional("PlaybackConfigurationName") => String.t(),
        optional("Retrieval") => prefetch_retrieval(),
        optional("StreamId") => String.t()
      }

  """
  @type get_prefetch_schedule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      clip_range() :: %{
        "EndOffsetMillis" => float(),
        "StartOffsetMillis" => float()
      }

  """
  @type clip_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_program_response() :: %{
        optional("AdBreaks") => list(ad_break()()),
        optional("Arn") => String.t(),
        optional("AudienceMedia") => list(audience_media()()),
        optional("ChannelName") => String.t(),
        optional("ClipRange") => clip_range(),
        optional("CreationTime") => non_neg_integer(),
        optional("DurationMillis") => float(),
        optional("LiveSourceName") => String.t(),
        optional("ProgramName") => String.t(),
        optional("ScheduledStartTime") => non_neg_integer(),
        optional("SourceLocationName") => String.t(),
        optional("VodSourceName") => String.t()
      }

  """
  @type create_program_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_live_sources_response() :: %{
        optional("Items") => list(live_source()()),
        optional("NextToken") => String.t()
      }

  """
  @type list_live_sources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_source_location_response() :: %{
        optional("AccessConfiguration") => access_configuration(),
        optional("Arn") => String.t(),
        optional("CreationTime") => non_neg_integer(),
        optional("DefaultSegmentDeliveryConfiguration") => default_segment_delivery_configuration(),
        optional("HttpConfiguration") => http_configuration(),
        optional("LastModifiedTime") => non_neg_integer(),
        optional("SegmentDeliveryConfigurations") => list(segment_delivery_configuration()()),
        optional("SourceLocationName") => String.t(),
        optional("Tags") => map()
      }

  """
  @type create_source_location_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_live_source_request() :: %{
        required("HttpPackageConfigurations") => list(http_package_configuration()())
      }

  """
  @type update_live_source_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      secrets_manager_access_token_configuration() :: %{
        "HeaderName" => String.t(),
        "SecretArn" => String.t(),
        "SecretStringKey" => String.t()
      }

  """
  @type secrets_manager_access_token_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_channel_response() :: %{}

  """
  @type stop_channel_response() :: %{}

  @typedoc """

  ## Example:

      start_channel_request() :: %{}

  """
  @type start_channel_request() :: %{}

  @typedoc """

  ## Example:

      get_playback_configuration_request() :: %{}

  """
  @type get_playback_configuration_request() :: %{}

  @typedoc """

  ## Example:

      http_configuration() :: %{
        "BaseUrl" => String.t()
      }

  """
  @type http_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cdn_configuration() :: %{
        "AdSegmentUrlPrefix" => String.t(),
        "ContentSegmentUrlPrefix" => String.t()
      }

  """
  @type cdn_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      avail_suppression() :: %{
        "FillPolicy" => list(any()),
        "Mode" => list(any()),
        "Value" => String.t()
      }

  """
  @type avail_suppression() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_program_schedule_configuration() :: %{
        "ClipRange" => clip_range(),
        "Transition" => update_program_transition()
      }

  """
  @type update_program_schedule_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      http_package_configuration() :: %{
        "Path" => String.t(),
        "SourceGroup" => String.t(),
        "Type" => list(any())
      }

  """
  @type http_package_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_live_source_request() :: %{
        optional("Tags") => map(),
        required("HttpPackageConfigurations") => list(http_package_configuration()())
      }

  """
  @type create_live_source_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_prefetch_schedule_response() :: %{
        optional("Arn") => String.t(),
        optional("Consumption") => prefetch_consumption(),
        optional("Name") => String.t(),
        optional("PlaybackConfigurationName") => String.t(),
        optional("Retrieval") => prefetch_retrieval(),
        optional("StreamId") => String.t()
      }

  """
  @type create_prefetch_schedule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_channel_policy_response() :: %{}

  """
  @type delete_channel_policy_response() :: %{}

  @typedoc """

  ## Example:

      describe_channel_response() :: %{
        optional("Arn") => String.t(),
        optional("Audiences") => list([String.t()]()),
        optional("ChannelName") => String.t(),
        optional("ChannelState") => list(any()),
        optional("CreationTime") => non_neg_integer(),
        optional("FillerSlate") => slate_source(),
        optional("LastModifiedTime") => non_neg_integer(),
        optional("Outputs") => list(response_output_item()()),
        optional("PlaybackMode") => String.t(),
        optional("Tags") => map(),
        optional("Tier") => String.t(),
        optional("TimeShiftConfiguration") => time_shift_configuration(),
        required("LogConfiguration") => log_configuration_for_channel()
      }

  """
  @type describe_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      log_configuration_for_channel() :: %{
        "LogTypes" => list(list(any())())
      }

  """
  @type log_configuration_for_channel() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_channel_request() :: %{}

  """
  @type describe_channel_request() :: %{}

  @typedoc """

  ## Example:

      alternate_media() :: %{
        "AdBreaks" => list(ad_break()()),
        "ClipRange" => clip_range(),
        "DurationMillis" => float(),
        "LiveSourceName" => String.t(),
        "ScheduledStartTimeMillis" => float(),
        "SourceLocationName" => String.t(),
        "VodSourceName" => String.t()
      }

  """
  @type alternate_media() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      live_source() :: %{
        "Arn" => String.t(),
        "CreationTime" => non_neg_integer(),
        "HttpPackageConfigurations" => list(http_package_configuration()()),
        "LastModifiedTime" => non_neg_integer(),
        "LiveSourceName" => String.t(),
        "SourceLocationName" => String.t(),
        "Tags" => map()
      }

  """
  @type live_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      schedule_entry() :: %{
        "ApproximateDurationSeconds" => float(),
        "ApproximateStartTime" => non_neg_integer(),
        "Arn" => String.t(),
        "Audiences" => list([String.t()]()),
        "ChannelName" => String.t(),
        "LiveSourceName" => String.t(),
        "ProgramName" => String.t(),
        "ScheduleAdBreaks" => list(schedule_ad_break()()),
        "ScheduleEntryType" => list(any()),
        "SourceLocationName" => String.t(),
        "VodSourceName" => String.t()
      }

  """
  @type schedule_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_channel_request() :: %{
        optional("Audiences") => list([String.t()]()),
        optional("FillerSlate") => slate_source(),
        optional("Tags") => map(),
        optional("Tier") => list(any()),
        optional("TimeShiftConfiguration") => time_shift_configuration(),
        required("Outputs") => list(request_output_item()()),
        required("PlaybackMode") => list(any())
      }

  """
  @type create_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_source_location_request() :: %{}

  """
  @type describe_source_location_request() :: %{}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        optional("Tags") => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_channel_policy_response() :: %{
        optional("Policy") => String.t()
      }

  """
  @type get_channel_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      prefetch_retrieval() :: %{
        "DynamicVariables" => map(),
        "EndTime" => non_neg_integer(),
        "StartTime" => non_neg_integer()
      }

  """
  @type prefetch_retrieval() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configure_logs_for_channel_response() :: %{
        optional("ChannelName") => String.t(),
        optional("LogTypes") => list(list(any())())
      }

  """
  @type configure_logs_for_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_channels_response() :: %{
        optional("Items") => list(channel()()),
        optional("NextToken") => String.t()
      }

  """
  @type list_channels_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_prefetch_schedule_request() :: %{
        optional("StreamId") => String.t(),
        required("Consumption") => prefetch_consumption(),
        required("Retrieval") => prefetch_retrieval()
      }

  """
  @type create_prefetch_schedule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_prefetch_schedule_response() :: %{}

  """
  @type delete_prefetch_schedule_response() :: %{}

  @typedoc """

  ## Example:

      update_channel_request() :: %{
        optional("Audiences") => list([String.t()]()),
        optional("FillerSlate") => slate_source(),
        optional("TimeShiftConfiguration") => time_shift_configuration(),
        required("Outputs") => list(request_output_item()())
      }

  """
  @type update_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dash_configuration() :: %{
        "ManifestEndpointPrefix" => String.t(),
        "MpdLocation" => String.t(),
        "OriginManifestType" => list(any())
      }

  """
  @type dash_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_source_location_request() :: %{}

  """
  @type delete_source_location_request() :: %{}

  @typedoc """

  ## Example:

      update_source_location_request() :: %{
        optional("AccessConfiguration") => access_configuration(),
        optional("DefaultSegmentDeliveryConfiguration") => default_segment_delivery_configuration(),
        optional("SegmentDeliveryConfigurations") => list(segment_delivery_configuration()()),
        required("HttpConfiguration") => http_configuration()
      }

  """
  @type update_source_location_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_source_locations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_source_locations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      time_shift_configuration() :: %{
        "MaxTimeDelaySeconds" => integer()
      }

  """
  @type time_shift_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_program_response() :: %{
        optional("AdBreaks") => list(ad_break()()),
        optional("Arn") => String.t(),
        optional("AudienceMedia") => list(audience_media()()),
        optional("ChannelName") => String.t(),
        optional("ClipRange") => clip_range(),
        optional("CreationTime") => non_neg_integer(),
        optional("DurationMillis") => [float()],
        optional("LiveSourceName") => String.t(),
        optional("ProgramName") => String.t(),
        optional("ScheduledStartTime") => non_neg_integer(),
        optional("SourceLocationName") => String.t(),
        optional("VodSourceName") => String.t()
      }

  """
  @type describe_program_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ad_break() :: %{
        "AdBreakMetadata" => list(key_value_pair()()),
        "MessageType" => list(any()),
        "OffsetMillis" => float(),
        "Slate" => slate_source(),
        "SpliceInsertMessage" => splice_insert_message(),
        "TimeSignalMessage" => time_signal_message()
      }

  """
  @type ad_break() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      slate_source() :: %{
        "SourceLocationName" => String.t(),
        "VodSourceName" => String.t()
      }

  """
  @type slate_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ad_marker_passthrough() :: %{
        "Enabled" => boolean()
      }

  """
  @type ad_marker_passthrough() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_vod_sources_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_vod_sources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_program_request() :: %{
        optional("AdBreaks") => list(ad_break()()),
        optional("AudienceMedia") => list(audience_media()()),
        optional("LiveSourceName") => String.t(),
        optional("VodSourceName") => String.t(),
        required("ScheduleConfiguration") => schedule_configuration(),
        required("SourceLocationName") => String.t()
      }

  """
  @type create_program_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_prefetch_schedule_request() :: %{}

  """
  @type delete_prefetch_schedule_request() :: %{}

  @typedoc """

  ## Example:

      segmentation_descriptor() :: %{
        "SegmentNum" => [integer()],
        "SegmentationEventId" => [integer()],
        "SegmentationTypeId" => [integer()],
        "SegmentationUpid" => [String.t()],
        "SegmentationUpidType" => [integer()],
        "SegmentsExpected" => [integer()],
        "SubSegmentNum" => [integer()],
        "SubSegmentsExpected" => [integer()]
      }

  """
  @type segmentation_descriptor() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      transition() :: %{
        "DurationMillis" => float(),
        "RelativePosition" => list(any()),
        "RelativeProgram" => String.t(),
        "ScheduledStartTimeMillis" => float(),
        "Type" => String.t()
      }

  """
  @type transition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_program_request() :: %{
        optional("AdBreaks") => list(ad_break()()),
        optional("AudienceMedia") => list(audience_media()()),
        required("ScheduleConfiguration") => update_program_schedule_configuration()
      }

  """
  @type update_program_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_playback_configuration_response() :: %{
        optional("AdDecisionServerUrl") => String.t(),
        optional("AvailSuppression") => avail_suppression(),
        optional("Bumper") => bumper(),
        optional("CdnConfiguration") => cdn_configuration(),
        optional("ConfigurationAliases") => map(),
        optional("DashConfiguration") => dash_configuration(),
        optional("HlsConfiguration") => hls_configuration(),
        optional("InsertionMode") => list(any()),
        optional("LivePreRollConfiguration") => live_pre_roll_configuration(),
        optional("LogConfiguration") => log_configuration(),
        optional("ManifestProcessingRules") => manifest_processing_rules(),
        optional("Name") => String.t(),
        optional("PersonalizationThresholdSeconds") => integer(),
        optional("PlaybackConfigurationArn") => String.t(),
        optional("PlaybackEndpointPrefix") => String.t(),
        optional("SessionInitializationEndpointPrefix") => String.t(),
        optional("SlateAdUrl") => String.t(),
        optional("Tags") => map(),
        optional("TranscodeProfileName") => String.t(),
        optional("VideoContentSourceUrl") => String.t()
      }

  """
  @type get_playback_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_program_request() :: %{}

  """
  @type describe_program_request() :: %{}

  @typedoc """

  ## Example:

      delete_live_source_response() :: %{}

  """
  @type delete_live_source_response() :: %{}

  @typedoc """

  ## Example:

      source_location() :: %{
        "AccessConfiguration" => access_configuration(),
        "Arn" => String.t(),
        "CreationTime" => non_neg_integer(),
        "DefaultSegmentDeliveryConfiguration" => default_segment_delivery_configuration(),
        "HttpConfiguration" => http_configuration(),
        "LastModifiedTime" => non_neg_integer(),
        "SegmentDeliveryConfigurations" => list(segment_delivery_configuration()()),
        "SourceLocationName" => String.t(),
        "Tags" => map()
      }

  """
  @type source_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      time_signal_message() :: %{
        "SegmentationDescriptors" => list(segmentation_descriptor()())
      }

  """
  @type time_signal_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      key_value_pair() :: %{
        "Key" => [String.t()],
        "Value" => [String.t()]
      }

  """
  @type key_value_pair() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      update_live_source_response() :: %{
        optional("Arn") => String.t(),
        optional("CreationTime") => non_neg_integer(),
        optional("HttpPackageConfigurations") => list(http_package_configuration()()),
        optional("LastModifiedTime") => non_neg_integer(),
        optional("LiveSourceName") => String.t(),
        optional("SourceLocationName") => String.t(),
        optional("Tags") => map()
      }

  """
  @type update_live_source_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_live_source_response() :: %{
        optional("Arn") => String.t(),
        optional("CreationTime") => non_neg_integer(),
        optional("HttpPackageConfigurations") => list(http_package_configuration()()),
        optional("LastModifiedTime") => non_neg_integer(),
        optional("LiveSourceName") => String.t(),
        optional("SourceLocationName") => String.t(),
        optional("Tags") => map()
      }

  """
  @type create_live_source_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      request_output_item() :: %{
        "DashPlaylistSettings" => dash_playlist_settings(),
        "HlsPlaylistSettings" => hls_playlist_settings(),
        "ManifestName" => String.t(),
        "SourceGroup" => String.t()
      }

  """
  @type request_output_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      schedule_configuration() :: %{
        "ClipRange" => clip_range(),
        "Transition" => transition()
      }

  """
  @type schedule_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      alert() :: %{
        "AlertCode" => String.t(),
        "AlertMessage" => String.t(),
        "Category" => list(any()),
        "LastModifiedTime" => non_neg_integer(),
        "RelatedResourceArns" => list(String.t()()),
        "ResourceArn" => String.t()
      }

  """
  @type alert() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_program_request() :: %{}

  """
  @type delete_program_request() :: %{}

  @typedoc """

  ## Example:

      delete_playback_configuration_response() :: %{}

  """
  @type delete_playback_configuration_response() :: %{}

  @typedoc """

  ## Example:

      channel() :: %{
        "Arn" => String.t(),
        "Audiences" => list([String.t()]()),
        "ChannelName" => String.t(),
        "ChannelState" => String.t(),
        "CreationTime" => non_neg_integer(),
        "FillerSlate" => slate_source(),
        "LastModifiedTime" => non_neg_integer(),
        "LogConfiguration" => log_configuration_for_channel(),
        "Outputs" => list(response_output_item()()),
        "PlaybackMode" => String.t(),
        "Tags" => map(),
        "Tier" => String.t()
      }

  """
  @type channel() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_vod_source_request() :: %{
        required("HttpPackageConfigurations") => list(http_package_configuration()())
      }

  """
  @type update_vod_source_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_channel_response() :: %{}

  """
  @type start_channel_response() :: %{}

  @typedoc """

  ## Example:

      put_playback_configuration_request() :: %{
        optional("AdDecisionServerUrl") => String.t(),
        optional("AvailSuppression") => avail_suppression(),
        optional("Bumper") => bumper(),
        optional("CdnConfiguration") => cdn_configuration(),
        optional("ConfigurationAliases") => map(),
        optional("DashConfiguration") => dash_configuration_for_put(),
        optional("InsertionMode") => list(any()),
        optional("LivePreRollConfiguration") => live_pre_roll_configuration(),
        optional("ManifestProcessingRules") => manifest_processing_rules(),
        optional("PersonalizationThresholdSeconds") => integer(),
        optional("SlateAdUrl") => String.t(),
        optional("Tags") => map(),
        optional("TranscodeProfileName") => String.t(),
        optional("VideoContentSourceUrl") => String.t(),
        required("Name") => String.t()
      }

  """
  @type put_playback_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_program_response() :: %{
        optional("AdBreaks") => list(ad_break()()),
        optional("Arn") => String.t(),
        optional("AudienceMedia") => list(audience_media()()),
        optional("ChannelName") => String.t(),
        optional("ClipRange") => clip_range(),
        optional("CreationTime") => non_neg_integer(),
        optional("DurationMillis") => float(),
        optional("LiveSourceName") => String.t(),
        optional("ProgramName") => String.t(),
        optional("ScheduledStartTime") => non_neg_integer(),
        optional("SourceLocationName") => String.t(),
        optional("VodSourceName") => String.t()
      }

  """
  @type update_program_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_alerts_response() :: %{
        optional("Items") => list(alert()()),
        optional("NextToken") => String.t()
      }

  """
  @type list_alerts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      schedule_ad_break() :: %{
        "ApproximateDurationSeconds" => float(),
        "ApproximateStartTime" => non_neg_integer(),
        "SourceLocationName" => String.t(),
        "VodSourceName" => String.t()
      }

  """
  @type schedule_ad_break() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hls_configuration() :: %{
        "ManifestEndpointPrefix" => String.t()
      }

  """
  @type hls_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_vod_source_response() :: %{
        optional("Arn") => String.t(),
        optional("CreationTime") => non_neg_integer(),
        optional("HttpPackageConfigurations") => list(http_package_configuration()()),
        optional("LastModifiedTime") => non_neg_integer(),
        optional("SourceLocationName") => String.t(),
        optional("Tags") => map(),
        optional("VodSourceName") => String.t()
      }

  """
  @type create_vod_source_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_prefetch_schedules_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("StreamId") => String.t()
      }

  """
  @type list_prefetch_schedules_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      avail_matching_criteria() :: %{
        "DynamicVariable" => String.t(),
        "Operator" => list(any())
      }

  """
  @type avail_matching_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "Message" => String.t()
      }

  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_vod_source_request() :: %{
        optional("Tags") => map(),
        required("HttpPackageConfigurations") => list(http_package_configuration()())
      }

  """
  @type create_vod_source_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_channel_response() :: %{
        optional("Arn") => String.t(),
        optional("Audiences") => list([String.t()]()),
        optional("ChannelName") => String.t(),
        optional("ChannelState") => list(any()),
        optional("CreationTime") => non_neg_integer(),
        optional("FillerSlate") => slate_source(),
        optional("LastModifiedTime") => non_neg_integer(),
        optional("Outputs") => list(response_output_item()()),
        optional("PlaybackMode") => String.t(),
        optional("Tags") => map(),
        optional("Tier") => String.t(),
        optional("TimeShiftConfiguration") => time_shift_configuration()
      }

  """
  @type update_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_playback_configuration_response() :: %{
        optional("AdDecisionServerUrl") => String.t(),
        optional("AvailSuppression") => avail_suppression(),
        optional("Bumper") => bumper(),
        optional("CdnConfiguration") => cdn_configuration(),
        optional("ConfigurationAliases") => map(),
        optional("DashConfiguration") => dash_configuration(),
        optional("HlsConfiguration") => hls_configuration(),
        optional("InsertionMode") => list(any()),
        optional("LivePreRollConfiguration") => live_pre_roll_configuration(),
        optional("LogConfiguration") => log_configuration(),
        optional("ManifestProcessingRules") => manifest_processing_rules(),
        optional("Name") => String.t(),
        optional("PersonalizationThresholdSeconds") => integer(),
        optional("PlaybackConfigurationArn") => String.t(),
        optional("PlaybackEndpointPrefix") => String.t(),
        optional("SessionInitializationEndpointPrefix") => String.t(),
        optional("SlateAdUrl") => String.t(),
        optional("Tags") => map(),
        optional("TranscodeProfileName") => String.t(),
        optional("VideoContentSourceUrl") => String.t()
      }

  """
  @type put_playback_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_channel_policy_request() :: %{}

  """
  @type get_channel_policy_request() :: %{}

  @typedoc """

  ## Example:

      describe_live_source_response() :: %{
        optional("Arn") => String.t(),
        optional("CreationTime") => non_neg_integer(),
        optional("HttpPackageConfigurations") => list(http_package_configuration()()),
        optional("LastModifiedTime") => non_neg_integer(),
        optional("LiveSourceName") => String.t(),
        optional("SourceLocationName") => String.t(),
        optional("Tags") => map()
      }

  """
  @type describe_live_source_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      segment_delivery_configuration() :: %{
        "BaseUrl" => String.t(),
        "Name" => String.t()
      }

  """
  @type segment_delivery_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_configuration() :: %{
        "AccessType" => list(any()),
        "SecretsManagerAccessTokenConfiguration" => secrets_manager_access_token_configuration()
      }

  """
  @type access_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_source_location_request() :: %{
        optional("AccessConfiguration") => access_configuration(),
        optional("DefaultSegmentDeliveryConfiguration") => default_segment_delivery_configuration(),
        optional("SegmentDeliveryConfigurations") => list(segment_delivery_configuration()()),
        optional("Tags") => map(),
        required("HttpConfiguration") => http_configuration()
      }

  """
  @type create_source_location_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      log_configuration() :: %{
        "PercentEnabled" => integer()
      }

  """
  @type log_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_source_location_response() :: %{}

  """
  @type delete_source_location_response() :: %{}

  @typedoc """

  ## Example:

      list_live_sources_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_live_sources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_program_transition() :: %{
        "DurationMillis" => float(),
        "ScheduledStartTimeMillis" => float()
      }

  """
  @type update_program_transition() :: %{String.t() => any()}

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

      list_source_locations_response() :: %{
        optional("Items") => list(source_location()()),
        optional("NextToken") => String.t()
      }

  """
  @type list_source_locations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bumper() :: %{
        "EndUrl" => String.t(),
        "StartUrl" => String.t()
      }

  """
  @type bumper() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dash_configuration_for_put() :: %{
        "MpdLocation" => String.t(),
        "OriginManifestType" => list(any())
      }

  """
  @type dash_configuration_for_put() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_live_source_request() :: %{}

  """
  @type delete_live_source_request() :: %{}

  @typedoc """

  ## Example:

      prefetch_schedule() :: %{
        "Arn" => String.t(),
        "Consumption" => prefetch_consumption(),
        "Name" => String.t(),
        "PlaybackConfigurationName" => String.t(),
        "Retrieval" => prefetch_retrieval(),
        "StreamId" => String.t()
      }

  """
  @type prefetch_schedule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_playback_configurations_response() :: %{
        optional("Items") => list(playback_configuration()()),
        optional("NextToken") => String.t()
      }

  """
  @type list_playback_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hls_playlist_settings() :: %{
        "AdMarkupType" => list(list(any())()),
        "ManifestWindowSeconds" => integer()
      }

  """
  @type hls_playlist_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_live_source_request() :: %{}

  """
  @type describe_live_source_request() :: %{}

  @typedoc """

  ## Example:

      splice_insert_message() :: %{
        "AvailNum" => integer(),
        "AvailsExpected" => integer(),
        "SpliceEventId" => integer(),
        "UniqueProgramId" => integer()
      }

  """
  @type splice_insert_message() :: %{String.t() => any()}

  @type list_tags_for_resource_errors() :: bad_request_exception()

  @type tag_resource_errors() :: bad_request_exception()

  @type untag_resource_errors() :: bad_request_exception()

  def metadata do
    %{
      api_version: "2018-04-23",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "api.mediatailor",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "MediaTailor",
      signature_version: "v4",
      signing_name: "mediatailor",
      target_prefix: nil
    }
  end

  @doc """
  Configures Amazon CloudWatch log settings for a channel.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediatailor%20ConfigureLogsForChannel&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec configure_logs_for_channel(
          AWS.Client.t(),
          configure_logs_for_channel_request(),
          Keyword.t()
        ) ::
          {:ok, configure_logs_for_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def configure_logs_for_channel(%Client{} = client, input, options \\ []) do
    url_path = "/configureLogs/channel"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Amazon CloudWatch log settings for a playback configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediatailor%20ConfigureLogsForPlaybackConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec configure_logs_for_playback_configuration(
          AWS.Client.t(),
          configure_logs_for_playback_configuration_request(),
          Keyword.t()
        ) ::
          {:ok, configure_logs_for_playback_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def configure_logs_for_playback_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/configureLogs/playbackConfiguration"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a channel. For information about MediaTailor channels, see [Working with
  channels](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html)
  in the *MediaTailor User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediatailor%20CreateChannel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_name` (`t:string`) The name of the channel.

  ## Optional parameters:
  """
  @spec create_channel(AWS.Client.t(), String.t(), create_channel_request(), Keyword.t()) ::
          {:ok, create_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def create_channel(%Client{} = client, channel_name, input, options \\ []) do
    url_path = "/channel/#{AWS.Util.encode_uri(channel_name)}"
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
  The live source configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediatailor%20CreateLiveSource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:live_source_name` (`t:string`) The name of the live source.
  * `:source_location_name` (`t:string`) The name of the source location.

  ## Optional parameters:
  """
  @spec create_live_source(
          AWS.Client.t(),
          String.t(),
          String.t(),
          create_live_source_request(),
          Keyword.t()
        ) ::
          {:ok, create_live_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def create_live_source(
        %Client{} = client,
        live_source_name,
        source_location_name,
        input,
        options \\ []
      ) do
    url_path =
      "/sourceLocation/#{AWS.Util.encode_uri(source_location_name)}/liveSource/#{AWS.Util.encode_uri(live_source_name)}"

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
  Creates a prefetch schedule for a playback configuration. A prefetch schedule
  allows you to tell MediaTailor to fetch and prepare certain ads before an ad
  break happens. For more information about ad prefetching, see [Using ad
  prefetching](https://docs.aws.amazon.com/mediatailor/latest/ug/prefetching-ads.html)
  in the *MediaTailor User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediatailor%20CreatePrefetchSchedule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name to assign to the schedule request.
  * `:playback_configuration_name` (`t:string`) The name to assign to the playback
    configuration.

  ## Optional parameters:
  """
  @spec create_prefetch_schedule(
          AWS.Client.t(),
          String.t(),
          String.t(),
          create_prefetch_schedule_request(),
          Keyword.t()
        ) ::
          {:ok, create_prefetch_schedule_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def create_prefetch_schedule(
        %Client{} = client,
        name,
        playback_configuration_name,
        input,
        options \\ []
      ) do
    url_path =
      "/prefetchSchedule/#{AWS.Util.encode_uri(playback_configuration_name)}/#{AWS.Util.encode_uri(name)}"

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
  Creates a program within a channel. For information about programs, see [Working
  with
  programs](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-programs.html)
  in the *MediaTailor User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediatailor%20CreateProgram&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_name` (`t:string`) The name of the channel for this Program.
  * `:program_name` (`t:string`) The name of the Program.

  ## Optional parameters:
  """
  @spec create_program(
          AWS.Client.t(),
          String.t(),
          String.t(),
          create_program_request(),
          Keyword.t()
        ) ::
          {:ok, create_program_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def create_program(%Client{} = client, channel_name, program_name, input, options \\ []) do
    url_path =
      "/channel/#{AWS.Util.encode_uri(channel_name)}/program/#{AWS.Util.encode_uri(program_name)}"

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
  Creates a source location. A source location is a container for sources. For
  more information about source locations, see [Working with source
  locations](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-source-locations.html)
  in the *MediaTailor User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediatailor%20CreateSourceLocation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:source_location_name` (`t:string`) The name associated with the source
    location.

  ## Optional parameters:
  """
  @spec create_source_location(
          AWS.Client.t(),
          String.t(),
          create_source_location_request(),
          Keyword.t()
        ) ::
          {:ok, create_source_location_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def create_source_location(%Client{} = client, source_location_name, input, options \\ []) do
    url_path = "/sourceLocation/#{AWS.Util.encode_uri(source_location_name)}"
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
  The VOD source configuration parameters.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediatailor%20CreateVodSource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:source_location_name` (`t:string`) The name of the source location for this
    VOD source.
  * `:vod_source_name` (`t:string`) The name associated with the VOD source.>

  ## Optional parameters:
  """
  @spec create_vod_source(
          AWS.Client.t(),
          String.t(),
          String.t(),
          create_vod_source_request(),
          Keyword.t()
        ) ::
          {:ok, create_vod_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def create_vod_source(
        %Client{} = client,
        source_location_name,
        vod_source_name,
        input,
        options \\ []
      ) do
    url_path =
      "/sourceLocation/#{AWS.Util.encode_uri(source_location_name)}/vodSource/#{AWS.Util.encode_uri(vod_source_name)}"

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
  Deletes a channel. For information about MediaTailor channels, see [Working with
  channels](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html)
  in the *MediaTailor User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediatailor%20DeleteChannel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_name` (`t:string`) The name of the channel.

  ## Optional parameters:
  """
  @spec delete_channel(AWS.Client.t(), String.t(), delete_channel_request(), Keyword.t()) ::
          {:ok, delete_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def delete_channel(%Client{} = client, channel_name, input, options \\ []) do
    url_path = "/channel/#{AWS.Util.encode_uri(channel_name)}"
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
  The channel policy to delete.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediatailor%20DeleteChannelPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_name` (`t:string`) The name of the channel associated with this
    channel policy.

  ## Optional parameters:
  """
  @spec delete_channel_policy(
          AWS.Client.t(),
          String.t(),
          delete_channel_policy_request(),
          Keyword.t()
        ) ::
          {:ok, delete_channel_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def delete_channel_policy(%Client{} = client, channel_name, input, options \\ []) do
    url_path = "/channel/#{AWS.Util.encode_uri(channel_name)}/policy"
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
  The live source to delete.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediatailor%20DeleteLiveSource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:live_source_name` (`t:string`) The name of the live source.
  * `:source_location_name` (`t:string`) The name of the source location
    associated with this Live Source.

  ## Optional parameters:
  """
  @spec delete_live_source(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_live_source_request(),
          Keyword.t()
        ) ::
          {:ok, delete_live_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def delete_live_source(
        %Client{} = client,
        live_source_name,
        source_location_name,
        input,
        options \\ []
      ) do
    url_path =
      "/sourceLocation/#{AWS.Util.encode_uri(source_location_name)}/liveSource/#{AWS.Util.encode_uri(live_source_name)}"

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
  Deletes a playback configuration. For information about MediaTailor
  configurations, see [Working with configurations in AWS Elemental
  MediaTailor](https://docs.aws.amazon.com/mediatailor/latest/ug/configurations.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediatailor%20DeletePlaybackConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of the playback configuration.

  ## Optional parameters:
  """
  @spec delete_playback_configuration(
          AWS.Client.t(),
          String.t(),
          delete_playback_configuration_request(),
          Keyword.t()
        ) ::
          {:ok, delete_playback_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def delete_playback_configuration(%Client{} = client, name, input, options \\ []) do
    url_path = "/playbackConfiguration/#{AWS.Util.encode_uri(name)}"
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
  Deletes a prefetch schedule for a specific playback configuration. If you call
  `DeletePrefetchSchedule` on an expired prefetch schedule, MediaTailor returns
  an HTTP 404 status code. For more information about ad prefetching, see [Using
  ad
  prefetching](https://docs.aws.amazon.com/mediatailor/latest/ug/prefetching-ads.html)
  in the *MediaTailor User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediatailor%20DeletePrefetchSchedule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of the prefetch schedule. If the action is
    successful, the service sends back an HTTP 204 response with an empty HTTP
    body.
  * `:playback_configuration_name` (`t:string`) The name of the playback
    configuration for this prefetch schedule.

  ## Optional parameters:
  """
  @spec delete_prefetch_schedule(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_prefetch_schedule_request(),
          Keyword.t()
        ) ::
          {:ok, delete_prefetch_schedule_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def delete_prefetch_schedule(
        %Client{} = client,
        name,
        playback_configuration_name,
        input,
        options \\ []
      ) do
    url_path =
      "/prefetchSchedule/#{AWS.Util.encode_uri(playback_configuration_name)}/#{AWS.Util.encode_uri(name)}"

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
  Deletes a program within a channel. For information about programs, see [Working
  with
  programs](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-programs.html)
  in the *MediaTailor User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediatailor%20DeleteProgram&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_name` (`t:string`) The name of the channel.
  * `:program_name` (`t:string`) The name of the program.

  ## Optional parameters:
  """
  @spec delete_program(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_program_request(),
          Keyword.t()
        ) ::
          {:ok, delete_program_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def delete_program(%Client{} = client, channel_name, program_name, input, options \\ []) do
    url_path =
      "/channel/#{AWS.Util.encode_uri(channel_name)}/program/#{AWS.Util.encode_uri(program_name)}"

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
  Deletes a source location. A source location is a container for sources. For
  more information about source locations, see [Working with source
  locations](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-source-locations.html)
  in the *MediaTailor User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediatailor%20DeleteSourceLocation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:source_location_name` (`t:string`) The name of the source location.

  ## Optional parameters:
  """
  @spec delete_source_location(
          AWS.Client.t(),
          String.t(),
          delete_source_location_request(),
          Keyword.t()
        ) ::
          {:ok, delete_source_location_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def delete_source_location(%Client{} = client, source_location_name, input, options \\ []) do
    url_path = "/sourceLocation/#{AWS.Util.encode_uri(source_location_name)}"
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
  The video on demand (VOD) source to delete.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediatailor%20DeleteVodSource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:source_location_name` (`t:string`) The name of the source location
    associated with this VOD Source.
  * `:vod_source_name` (`t:string`) The name of the VOD source.

  ## Optional parameters:
  """
  @spec delete_vod_source(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_vod_source_request(),
          Keyword.t()
        ) ::
          {:ok, delete_vod_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def delete_vod_source(
        %Client{} = client,
        source_location_name,
        vod_source_name,
        input,
        options \\ []
      ) do
    url_path =
      "/sourceLocation/#{AWS.Util.encode_uri(source_location_name)}/vodSource/#{AWS.Util.encode_uri(vod_source_name)}"

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
  Describes a channel. For information about MediaTailor channels, see [Working
  with
  channels](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html)
  in the *MediaTailor User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediatailor%20DescribeChannel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_name` (`t:string`) The name of the channel.

  ## Optional parameters:
  """
  @spec describe_channel(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_channel(%Client{} = client, channel_name, options \\ []) do
    url_path = "/channel/#{AWS.Util.encode_uri(channel_name)}"

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
  The live source to describe.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediatailor%20DescribeLiveSource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:live_source_name` (`t:string`) The name of the live source.
  * `:source_location_name` (`t:string`) The name of the source location
    associated with this Live Source.

  ## Optional parameters:
  """
  @spec describe_live_source(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_live_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_live_source(
        %Client{} = client,
        live_source_name,
        source_location_name,
        options \\ []
      ) do
    url_path =
      "/sourceLocation/#{AWS.Util.encode_uri(source_location_name)}/liveSource/#{AWS.Util.encode_uri(live_source_name)}"

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
  Describes a program within a channel. For information about programs, see
  [Working with
  programs](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-programs.html)
  in the *MediaTailor User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediatailor%20DescribeProgram&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_name` (`t:string`) The name of the channel associated with this
    Program.
  * `:program_name` (`t:string`) The name of the program.

  ## Optional parameters:
  """
  @spec describe_program(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_program_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_program(%Client{} = client, channel_name, program_name, options \\ []) do
    url_path =
      "/channel/#{AWS.Util.encode_uri(channel_name)}/program/#{AWS.Util.encode_uri(program_name)}"

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
  Describes a source location. A source location is a container for sources. For
  more information about source locations, see [Working with source
  locations](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-source-locations.html)
  in the *MediaTailor User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediatailor%20DescribeSourceLocation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:source_location_name` (`t:string`) The name of the source location.

  ## Optional parameters:
  """
  @spec describe_source_location(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_source_location_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_source_location(%Client{} = client, source_location_name, options \\ []) do
    url_path = "/sourceLocation/#{AWS.Util.encode_uri(source_location_name)}"

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
  Provides details about a specific video on demand (VOD) source in a specific
  source location.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediatailor%20DescribeVodSource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:source_location_name` (`t:string`) The name of the source location
    associated with this VOD Source.
  * `:vod_source_name` (`t:string`) The name of the VOD Source.

  ## Optional parameters:
  """
  @spec describe_vod_source(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_vod_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_vod_source(
        %Client{} = client,
        source_location_name,
        vod_source_name,
        options \\ []
      ) do
    url_path =
      "/sourceLocation/#{AWS.Util.encode_uri(source_location_name)}/vodSource/#{AWS.Util.encode_uri(vod_source_name)}"

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
  Returns the channel's IAM policy. IAM policies are used to control access to
  your channel.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediatailor%20GetChannelPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_name` (`t:string`) The name of the channel associated with this
    Channel Policy.

  ## Optional parameters:
  """
  @spec get_channel_policy(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_channel_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def get_channel_policy(%Client{} = client, channel_name, options \\ []) do
    url_path = "/channel/#{AWS.Util.encode_uri(channel_name)}/policy"

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
  Retrieves information about your channel's schedule.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediatailor%20GetChannelSchedule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_name` (`t:string`) The name of the channel associated with this
    Channel Schedule.

  ## Optional parameters:
  * `:audience` (`t:string`) The single audience for GetChannelScheduleRequest.
  * `:duration_minutes` (`t:string`) The duration in minutes of the channel
    schedule.
  * `:max_results` (`t:integer`) The maximum number of channel schedules that you
    want MediaTailor to return in response to the current request. If there are
    more than MaxResults channel schedules, use the value of NextToken in the
    response to get the next page of results.
  * `:next_token` (`t:string`) (Optional) If the playback configuration has more
    than MaxResults channel schedules, use NextToken to get the second and
    subsequent pages of results.
  """
  @spec get_channel_schedule(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_channel_schedule_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def get_channel_schedule(%Client{} = client, channel_name, options \\ []) do
    url_path = "/channel/#{AWS.Util.encode_uri(channel_name)}/schedule"

    # Validate optional parameters
    optional_params = [audience: nil, duration_minutes: nil, max_results: nil, next_token: nil]

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

    query_params =
      if opt_val = Keyword.get(options, :duration_minutes) do
        [{"durationMinutes", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :audience) do
        [{"audience", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:audience, :duration_minutes, :max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a playback configuration. For information about MediaTailor
  configurations, see [Working with configurations in AWS Elemental
  MediaTailor](https://docs.aws.amazon.com/mediatailor/latest/ug/configurations.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediatailor%20GetPlaybackConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The identifier for the playback configuration.

  ## Optional parameters:
  """
  @spec get_playback_configuration(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_playback_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def get_playback_configuration(%Client{} = client, name, options \\ []) do
    url_path = "/playbackConfiguration/#{AWS.Util.encode_uri(name)}"

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
  Retrieves a prefetch schedule for a playback configuration. A prefetch schedule
  allows you to tell MediaTailor to fetch and prepare certain ads before an ad
  break happens. For more information about ad prefetching, see [Using ad
  prefetching](https://docs.aws.amazon.com/mediatailor/latest/ug/prefetching-ads.html)
  in the *MediaTailor User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediatailor%20GetPrefetchSchedule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of the prefetch schedule. The name must be
    unique among all prefetch schedules that are associated with the specified
    playback configuration.
  * `:playback_configuration_name` (`t:string`) Returns information about the
    prefetch schedule for a specific playback configuration. If you call
    GetPrefetchSchedule on an expired prefetch schedule, MediaTailor returns an
    HTTP 404 status code.

  ## Optional parameters:
  """
  @spec get_prefetch_schedule(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_prefetch_schedule_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def get_prefetch_schedule(%Client{} = client, name, playback_configuration_name, options \\ []) do
    url_path =
      "/prefetchSchedule/#{AWS.Util.encode_uri(playback_configuration_name)}/#{AWS.Util.encode_uri(name)}"

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
  Lists the alerts that are associated with a MediaTailor channel assembly
  resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediatailor%20ListAlerts&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the resource.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of alerts that you want
    MediaTailor to return in response to the current request. If there are more
    than MaxResults alerts, use the value of NextToken in the response to get
    the next page of results.
  * `:next_token` (`t:string`) Pagination token returned by the list request when
    results exceed the maximum allowed. Use the token to fetch the next page of
    results.
  """
  @spec list_alerts(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_alerts_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_alerts(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/alerts"

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
    query_params = [{"resourceArn", resource_arn}]

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
  Retrieves information about the channels that are associated with the current
  AWS account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediatailor%20ListChannels&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of channels that you want
    MediaTailor to return in response to the current request. If there are more
    than MaxResults channels, use the value of NextToken in the response to get
    the next page of results.
  * `:next_token` (`t:string`) Pagination token returned by the list request when
    results exceed the maximum allowed. Use the token to fetch the next page of
    results.
  """
  @spec list_channels(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_channels_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_channels(%Client{} = client, options \\ []) do
    url_path = "/channels"

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
  Lists the live sources contained in a source location. A source represents a
  piece of content.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediatailor%20ListLiveSources&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:source_location_name` (`t:string`) The name of the source location
    associated with this Live Sources list.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of live sources that you want
    MediaTailor to return in response to the current request. If there are more
    than MaxResults live sources, use the value of NextToken in the response to
    get the next page of results.
  * `:next_token` (`t:string`) Pagination token returned by the list request when
    results exceed the maximum allowed. Use the token to fetch the next page of
    results.
  """
  @spec list_live_sources(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_live_sources_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_live_sources(%Client{} = client, source_location_name, options \\ []) do
    url_path = "/sourceLocation/#{AWS.Util.encode_uri(source_location_name)}/liveSources"

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
  Retrieves existing playback configurations. For information about MediaTailor
  configurations, see [Working with Configurations in AWS Elemental
  MediaTailor](https://docs.aws.amazon.com/mediatailor/latest/ug/configurations.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediatailor%20ListPlaybackConfigurations&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of playback configurations
    that you want MediaTailor to return in response to the current request. If
    there are more than MaxResults playback configurations, use the value of
    NextToken in the response to get the next page of results.
  * `:next_token` (`t:string`) Pagination token returned by the list request when
    results exceed the maximum allowed. Use the token to fetch the next page of
    results.
  """
  @spec list_playback_configurations(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_playback_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_playback_configurations(%Client{} = client, options \\ []) do
    url_path = "/playbackConfigurations"

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
  Lists the prefetch schedules for a playback configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediatailor%20ListPrefetchSchedules&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:playback_configuration_name` (`t:string`) Retrieves the prefetch schedule(s)
    for a specific playback configuration.

  ## Optional parameters:
  """
  @spec list_prefetch_schedules(
          AWS.Client.t(),
          String.t(),
          list_prefetch_schedules_request(),
          Keyword.t()
        ) ::
          {:ok, list_prefetch_schedules_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_prefetch_schedules(
        %Client{} = client,
        playback_configuration_name,
        input,
        options \\ []
      ) do
    url_path = "/prefetchSchedule/#{AWS.Util.encode_uri(playback_configuration_name)}"
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
  Lists the source locations for a channel. A source location defines the host
  server URL, and contains a list of sources.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediatailor%20ListSourceLocations&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of source locations that you
    want MediaTailor to return in response to the current request. If there are
    more than MaxResults source locations, use the value of NextToken in the
    response to get the next page of results.
  * `:next_token` (`t:string`) Pagination token returned by the list request when
    results exceed the maximum allowed. Use the token to fetch the next page of
    results.
  """
  @spec list_source_locations(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_source_locations_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_source_locations(%Client{} = client, options \\ []) do
    url_path = "/sourceLocations"

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
  A list of tags that are associated with this resource. Tags are key-value pairs
  that you can associate with Amazon resources to help with organization, access
  control, and cost tracking. For more information, see [Tagging AWS Elemental
  MediaTailor
  Resources](https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediatailor%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) associated with
    this resource.

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
  Lists the VOD sources contained in a source location. A source represents a
  piece of content.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediatailor%20ListVodSources&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:source_location_name` (`t:string`) The name of the source location
    associated with this VOD Source list.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of VOD sources that you want
    MediaTailor to return in response to the current request. If there are more
    than MaxResults VOD sources, use the value of NextToken in the response to
    get the next page of results.
  * `:next_token` (`t:string`) Pagination token returned by the list request when
    results exceed the maximum allowed. Use the token to fetch the next page of
    results.
  """
  @spec list_vod_sources(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_vod_sources_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_vod_sources(%Client{} = client, source_location_name, options \\ []) do
    url_path = "/sourceLocation/#{AWS.Util.encode_uri(source_location_name)}/vodSources"

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
  Creates an IAM policy for the channel. IAM policies are used to control access
  to your channel.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediatailor%20PutChannelPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_name` (`t:string`) The channel name associated with this Channel
    Policy.

  ## Optional parameters:
  """
  @spec put_channel_policy(AWS.Client.t(), String.t(), put_channel_policy_request(), Keyword.t()) ::
          {:ok, put_channel_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def put_channel_policy(%Client{} = client, channel_name, input, options \\ []) do
    url_path = "/channel/#{AWS.Util.encode_uri(channel_name)}/policy"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a playback configuration. For information about MediaTailor
  configurations, see [Working with configurations in AWS Elemental
  MediaTailor](https://docs.aws.amazon.com/mediatailor/latest/ug/configurations.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediatailor%20PutPlaybackConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec put_playback_configuration(
          AWS.Client.t(),
          put_playback_configuration_request(),
          Keyword.t()
        ) ::
          {:ok, put_playback_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def put_playback_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/playbackConfiguration"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Starts a channel. For information about MediaTailor channels, see [Working with
  channels](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html)
  in the *MediaTailor User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediatailor%20StartChannel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_name` (`t:string`) The name of the channel.

  ## Optional parameters:
  """
  @spec start_channel(AWS.Client.t(), String.t(), start_channel_request(), Keyword.t()) ::
          {:ok, start_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def start_channel(%Client{} = client, channel_name, input, options \\ []) do
    url_path = "/channel/#{AWS.Util.encode_uri(channel_name)}/start"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Stops a channel. For information about MediaTailor channels, see [Working with
  channels](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html)
  in the *MediaTailor User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediatailor%20StopChannel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_name` (`t:string`) The name of the channel.

  ## Optional parameters:
  """
  @spec stop_channel(AWS.Client.t(), String.t(), stop_channel_request(), Keyword.t()) ::
          {:ok, stop_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def stop_channel(%Client{} = client, channel_name, input, options \\ []) do
    url_path = "/channel/#{AWS.Util.encode_uri(channel_name)}/stop"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  The resource to tag. Tags are key-value pairs that you can associate with Amazon
  resources to help with organization, access control, and cost tracking. For
  more information, see [Tagging AWS Elemental MediaTailor
  Resources](https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediatailor%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) associated with
    the resource.

  ## Optional parameters:
  """
  @spec tag_resource(AWS.Client.t(), String.t(), tag_resource_request(), Keyword.t()) ::
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
      204
    )
  end

  @doc """
  The resource to untag.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediatailor%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the resource to
    untag.
  * `:tag_keys` (`t:list[com.amazonaws.mediatailor#__string]`) The tag keys
    associated with the resource.

  ## Optional parameters:
  """
  @spec untag_resource(AWS.Client.t(), String.t(), untag_resource_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Updates a channel. For information about MediaTailor channels, see [Working with
  channels](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html)
  in the *MediaTailor User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediatailor%20UpdateChannel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_name` (`t:string`) The name of the channel.

  ## Optional parameters:
  """
  @spec update_channel(AWS.Client.t(), String.t(), update_channel_request(), Keyword.t()) ::
          {:ok, update_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def update_channel(%Client{} = client, channel_name, input, options \\ []) do
    url_path = "/channel/#{AWS.Util.encode_uri(channel_name)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a live source's configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediatailor%20UpdateLiveSource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:live_source_name` (`t:string`) The name of the live source.
  * `:source_location_name` (`t:string`) The name of the source location
    associated with this Live Source.

  ## Optional parameters:
  """
  @spec update_live_source(
          AWS.Client.t(),
          String.t(),
          String.t(),
          update_live_source_request(),
          Keyword.t()
        ) ::
          {:ok, update_live_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def update_live_source(
        %Client{} = client,
        live_source_name,
        source_location_name,
        input,
        options \\ []
      ) do
    url_path =
      "/sourceLocation/#{AWS.Util.encode_uri(source_location_name)}/liveSource/#{AWS.Util.encode_uri(live_source_name)}"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a program within a channel.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediatailor%20UpdateProgram&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_name` (`t:string`) The name of the channel for this Program.
  * `:program_name` (`t:string`) The name of the Program.

  ## Optional parameters:
  """
  @spec update_program(
          AWS.Client.t(),
          String.t(),
          String.t(),
          update_program_request(),
          Keyword.t()
        ) ::
          {:ok, update_program_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def update_program(%Client{} = client, channel_name, program_name, input, options \\ []) do
    url_path =
      "/channel/#{AWS.Util.encode_uri(channel_name)}/program/#{AWS.Util.encode_uri(program_name)}"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a source location. A source location is a container for sources. For
  more information about source locations, see [Working with source
  locations](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-source-locations.html)
  in the *MediaTailor User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediatailor%20UpdateSourceLocation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:source_location_name` (`t:string`) The name of the source location.

  ## Optional parameters:
  """
  @spec update_source_location(
          AWS.Client.t(),
          String.t(),
          update_source_location_request(),
          Keyword.t()
        ) ::
          {:ok, update_source_location_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def update_source_location(%Client{} = client, source_location_name, input, options \\ []) do
    url_path = "/sourceLocation/#{AWS.Util.encode_uri(source_location_name)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a VOD source's configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediatailor%20UpdateVodSource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:source_location_name` (`t:string`) The name of the source location
    associated with this VOD Source.
  * `:vod_source_name` (`t:string`) The name of the VOD source.

  ## Optional parameters:
  """
  @spec update_vod_source(
          AWS.Client.t(),
          String.t(),
          String.t(),
          update_vod_source_request(),
          Keyword.t()
        ) ::
          {:ok, update_vod_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def update_vod_source(
        %Client{} = client,
        source_location_name,
        vod_source_name,
        input,
        options \\ []
      ) do
    url_path =
      "/sourceLocation/#{AWS.Util.encode_uri(source_location_name)}/vodSource/#{AWS.Util.encode_uri(vod_source_name)}"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
