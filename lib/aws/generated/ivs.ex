# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Ivs do
  @moduledoc """
  **Introduction** The Amazon Interactive Video Service (IVS) API is REST
  compatible, using a standard HTTP API and an Amazon Web Services EventBridge
  event stream for responses. JSON is used for both requests and responses,
  including errors.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      update_playback_restriction_policy_request() :: %{
        optional("allowedCountries") => list(String.t()()),
        optional("allowedOrigins") => list(String.t()()),
        optional("enableStrictOriginEnforcement") => boolean(),
        optional("name") => String.t(),
        required("arn") => String.t()
      }
      
  """
  @type update_playback_restriction_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_channel_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type delete_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_stream_key_response() :: %{
        optional("streamKey") => stream_key()
      }
      
  """
  @type create_stream_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ingest_configuration() :: %{
        "audio" => audio_configuration(),
        "video" => video_configuration()
      }
      
  """
  @type ingest_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stream_session_summary() :: %{
        "endTime" => non_neg_integer(),
        "hasErrorEvent" => boolean(),
        "startTime" => non_neg_integer(),
        "streamId" => String.t()
      }
      
  """
  @type stream_session_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_channel_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type get_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recording_configuration() :: %{
        "arn" => String.t(),
        "destinationConfiguration" => destination_configuration(),
        "name" => String.t(),
        "recordingReconnectWindowSeconds" => integer(),
        "renditionConfiguration" => rendition_configuration(),
        "state" => String.t(),
        "tags" => map(),
        "thumbnailConfiguration" => thumbnail_configuration()
      }
      
  """
  @type recording_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_channel_response() :: %{
        optional("channel") => channel(),
        optional("streamKey") => stream_key()
      }
      
  """
  @type create_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_playback_key_pair_request() :: %{
        optional("name") => String.t(),
        optional("tags") => map(),
        required("publicKeyMaterial") => String.t()
      }
      
  """
  @type import_playback_key_pair_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_stream_response() :: %{
        optional("stream") => stream()
      }
      
  """
  @type get_stream_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      get_stream_key_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type get_stream_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      playback_restriction_policy() :: %{
        "allowedCountries" => list(String.t()()),
        "allowedOrigins" => list(String.t()()),
        "arn" => String.t(),
        "enableStrictOriginEnforcement" => boolean(),
        "name" => String.t(),
        "tags" => map()
      }
      
  """
  @type playback_restriction_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_playback_restriction_policy_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type delete_playback_restriction_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_stream_sessions_response() :: %{
        optional("nextToken") => String.t(),
        required("streamSessions") => list(stream_session_summary()())
      }
      
  """
  @type list_stream_sessions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      playback_key_pair_summary() :: %{
        "arn" => String.t(),
        "name" => String.t(),
        "tags" => map()
      }
      
  """
  @type playback_key_pair_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_playback_key_pair_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type get_playback_key_pair_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_playback_restriction_policy_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type get_playback_restriction_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_playback_key_pairs_response() :: %{
        optional("nextToken") => String.t(),
        required("keyPairs") => list(playback_key_pair_summary()())
      }
      
  """
  @type list_playback_key_pairs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recording_configuration_summary() :: %{
        "arn" => String.t(),
        "destinationConfiguration" => destination_configuration(),
        "name" => String.t(),
        "state" => String.t(),
        "tags" => map()
      }
      
  """
  @type recording_configuration_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_playback_restriction_policy_response() :: %{
        "playbackRestrictionPolicy" => playback_restriction_policy()
      }
      
  """
  @type update_playback_restriction_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_channel_response() :: %{
        optional("channels") => list(channel()()),
        optional("errors") => list(batch_error()())
      }
      
  """
  @type batch_get_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_recording_configuration_response() :: %{
        optional("recordingConfiguration") => recording_configuration()
      }
      
  """
  @type create_recording_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_playback_key_pair_response() :: %{
        optional("keyPair") => playback_key_pair()
      }
      
  """
  @type import_playback_key_pair_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_playback_key_pair_response() :: %{}
      
  """
  @type delete_playback_key_pair_response() :: %{}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_stream_keys_response() :: %{
        optional("nextToken") => String.t(),
        required("streamKeys") => list(stream_key_summary()())
      }
      
  """
  @type list_stream_keys_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_streams_request() :: %{
        optional("filterBy") => stream_filters(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_streams_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_stream_session_request() :: %{
        optional("streamId") => String.t(),
        required("channelArn") => String.t()
      }
      
  """
  @type get_stream_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stream_key() :: %{
        "arn" => String.t(),
        "channelArn" => String.t(),
        "tags" => map(),
        "value" => String.t()
      }
      
  """
  @type stream_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_start_viewer_session_revocation_request() :: %{
        required("viewerSessions") => list(batch_start_viewer_session_revocation_viewer_session()())
      }
      
  """
  @type batch_start_viewer_session_revocation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_recording_configuration_request() :: %{
        optional("name") => String.t(),
        optional("recordingReconnectWindowSeconds") => integer(),
        optional("renditionConfiguration") => rendition_configuration(),
        optional("tags") => map(),
        optional("thumbnailConfiguration") => thumbnail_configuration(),
        required("destinationConfiguration") => destination_configuration()
      }
      
  """
  @type create_recording_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_stream_key_request() :: %{
        optional("tags") => map(),
        required("channelArn") => String.t()
      }
      
  """
  @type create_stream_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      playback_key_pair() :: %{
        "arn" => String.t(),
        "fingerprint" => String.t(),
        "name" => String.t(),
        "tags" => map()
      }
      
  """
  @type playback_key_pair() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_stream_key_request() :: %{
        required("arns") => list(String.t()())
      }
      
  """
  @type batch_get_stream_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      playback_restriction_policy_summary() :: %{
        "allowedCountries" => list(String.t()()),
        "allowedOrigins" => list(String.t()()),
        "arn" => String.t(),
        "enableStrictOriginEnforcement" => boolean(),
        "name" => String.t(),
        "tags" => map()
      }
      
  """
  @type playback_restriction_policy_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      channel_summary() :: %{
        "arn" => String.t(),
        "authorized" => boolean(),
        "insecureIngest" => boolean(),
        "latencyMode" => String.t(),
        "name" => String.t(),
        "playbackRestrictionPolicyArn" => String.t(),
        "preset" => list(any()),
        "recordingConfigurationArn" => String.t(),
        "tags" => map(),
        "type" => list(any())
      }
      
  """
  @type channel_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_recording_configuration_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type delete_recording_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "exceptionMessage" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "exceptionMessage" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_streams_response() :: %{
        optional("nextToken") => String.t(),
        required("streams") => list(stream_summary()())
      }
      
  """
  @type list_streams_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_recording_configuration_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type get_recording_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_recording_configurations_response() :: %{
        optional("nextToken") => String.t(),
        required("recordingConfigurations") => list(recording_configuration_summary()())
      }
      
  """
  @type list_recording_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "exceptionMessage" => String.t()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stream_session() :: %{
        "channel" => channel(),
        "endTime" => non_neg_integer(),
        "ingestConfiguration" => ingest_configuration(),
        "recordingConfiguration" => recording_configuration(),
        "startTime" => non_neg_integer(),
        "streamId" => String.t(),
        "truncatedEvents" => list(stream_event()())
      }
      
  """
  @type stream_session() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_channel_request() :: %{
        required("arns") => list(String.t()())
      }
      
  """
  @type batch_get_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_stream_key_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type delete_stream_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_destination_configuration() :: %{
        "bucketName" => String.t()
      }
      
  """
  @type s3_destination_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_playback_restriction_policy_response() :: %{
        "playbackRestrictionPolicy" => playback_restriction_policy()
      }
      
  """
  @type get_playback_restriction_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_channel_request() :: %{
        optional("authorized") => boolean(),
        optional("insecureIngest") => boolean(),
        optional("latencyMode") => String.t(),
        optional("name") => String.t(),
        optional("playbackRestrictionPolicyArn") => String.t(),
        optional("preset") => list(any()),
        optional("recordingConfigurationArn") => String.t(),
        optional("tags") => map(),
        optional("type") => list(any())
      }
      
  """
  @type create_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stream_event() :: %{
        "eventTime" => non_neg_integer(),
        "name" => String.t(),
        "type" => String.t()
      }
      
  """
  @type stream_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        required("tags") => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_channels_response() :: %{
        optional("nextToken") => String.t(),
        required("channels") => list(channel_summary()())
      }
      
  """
  @type list_channels_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_channel_request() :: %{
        optional("authorized") => boolean(),
        optional("insecureIngest") => boolean(),
        optional("latencyMode") => String.t(),
        optional("name") => String.t(),
        optional("playbackRestrictionPolicyArn") => String.t(),
        optional("preset") => list(any()),
        optional("recordingConfigurationArn") => String.t(),
        optional("type") => list(any()),
        required("arn") => String.t()
      }
      
  """
  @type update_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_stream_response() :: %{}
      
  """
  @type stop_stream_response() :: %{}

  @typedoc """

  ## Example:
      
      stream_unavailable() :: %{
        "exceptionMessage" => String.t()
      }
      
  """
  @type stream_unavailable() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_playback_key_pair_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type delete_playback_key_pair_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_playback_restriction_policy_response() :: %{
        "playbackRestrictionPolicy" => playback_restriction_policy()
      }
      
  """
  @type create_playback_restriction_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "exceptionMessage" => String.t()
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_stream_sessions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("channelArn") => String.t()
      }
      
  """
  @type list_stream_sessions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_playback_restriction_policies_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_playback_restriction_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_recording_configuration_response() :: %{
        optional("recordingConfiguration") => recording_configuration()
      }
      
  """
  @type get_recording_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_playback_key_pair_response() :: %{
        optional("keyPair") => playback_key_pair()
      }
      
  """
  @type get_playback_key_pair_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "exceptionMessage" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_stream_request() :: %{
        required("channelArn") => String.t()
      }
      
  """
  @type get_stream_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_stream_keys_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("channelArn") => String.t()
      }
      
  """
  @type list_stream_keys_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      audio_configuration() :: %{
        "channels" => float(),
        "codec" => String.t(),
        "sampleRate" => float(),
        "targetBitrate" => float()
      }
      
  """
  @type audio_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      put_metadata_request() :: %{
        required("channelArn") => String.t(),
        required("metadata") => String.t()
      }
      
  """
  @type put_metadata_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      thumbnail_configuration() :: %{
        "recordingMode" => String.t(),
        "resolution" => list(any()),
        "storage" => list(String.t()()),
        "targetIntervalSeconds" => float()
      }
      
  """
  @type thumbnail_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_start_viewer_session_revocation_viewer_session() :: %{
        "channelArn" => String.t(),
        "viewerId" => String.t(),
        "viewerSessionVersionsLessThanOrEqualTo" => integer()
      }
      
  """
  @type batch_start_viewer_session_revocation_viewer_session() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "exceptionMessage" => String.t()
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
      
      rendition_configuration() :: %{
        "renditionSelection" => String.t(),
        "renditions" => list(list(any())())
      }
      
  """
  @type rendition_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_stream_key_response() :: %{
        optional("streamKey") => stream_key()
      }
      
  """
  @type get_stream_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "exceptionMessage" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_playback_restriction_policies_response() :: %{
        "nextToken" => String.t(),
        "playbackRestrictionPolicies" => list(playback_restriction_policy_summary()())
      }
      
  """
  @type list_playback_restriction_policies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      channel() :: %{
        "arn" => String.t(),
        "authorized" => boolean(),
        "ingestEndpoint" => String.t(),
        "insecureIngest" => boolean(),
        "latencyMode" => String.t(),
        "name" => String.t(),
        "playbackRestrictionPolicyArn" => String.t(),
        "playbackUrl" => String.t(),
        "preset" => list(any()),
        "recordingConfigurationArn" => String.t(),
        "srt" => srt(),
        "tags" => map(),
        "type" => list(any())
      }
      
  """
  @type channel() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stream_summary() :: %{
        "channelArn" => String.t(),
        "health" => String.t(),
        "startTime" => non_neg_integer(),
        "state" => String.t(),
        "streamId" => String.t(),
        "viewerCount" => float()
      }
      
  """
  @type stream_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_start_viewer_session_revocation_response() :: %{
        optional("errors") => list(batch_start_viewer_session_revocation_error()())
      }
      
  """
  @type batch_start_viewer_session_revocation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_start_viewer_session_revocation_error() :: %{
        "channelArn" => String.t(),
        "code" => String.t(),
        "message" => String.t(),
        "viewerId" => String.t()
      }
      
  """
  @type batch_start_viewer_session_revocation_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_stream_request() :: %{
        required("channelArn") => String.t()
      }
      
  """
  @type stop_stream_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_channel_response() :: %{
        optional("channel") => channel()
      }
      
  """
  @type get_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stream_filters() :: %{
        "health" => String.t()
      }
      
  """
  @type stream_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stream() :: %{
        "channelArn" => String.t(),
        "health" => String.t(),
        "playbackUrl" => String.t(),
        "startTime" => non_neg_integer(),
        "state" => String.t(),
        "streamId" => String.t(),
        "viewerCount" => float()
      }
      
  """
  @type stream() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_viewer_session_revocation_request() :: %{
        optional("viewerSessionVersionsLessThanOrEqualTo") => integer(),
        required("channelArn") => String.t(),
        required("viewerId") => String.t()
      }
      
  """
  @type start_viewer_session_revocation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_channel_response() :: %{
        optional("channel") => channel()
      }
      
  """
  @type update_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_error() :: %{
        "arn" => String.t(),
        "code" => String.t(),
        "message" => String.t()
      }
      
  """
  @type batch_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_viewer_session_revocation_response() :: %{}
      
  """
  @type start_viewer_session_revocation_response() :: %{}

  @typedoc """

  ## Example:
      
      video_configuration() :: %{
        "avcLevel" => String.t(),
        "avcProfile" => String.t(),
        "codec" => String.t(),
        "encoder" => String.t(),
        "targetBitrate" => float(),
        "targetFramerate" => float(),
        "videoHeight" => float(),
        "videoWidth" => float()
      }
      
  """
  @type video_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_playback_key_pairs_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_playback_key_pairs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_channels_request() :: %{
        optional("filterByName") => String.t(),
        optional("filterByPlaybackRestrictionPolicyArn") => String.t(),
        optional("filterByRecordingConfigurationArn") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_channels_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_stream_session_response() :: %{
        optional("streamSession") => stream_session()
      }
      
  """
  @type get_stream_session_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stream_key_summary() :: %{
        "arn" => String.t(),
        "channelArn" => String.t(),
        "tags" => map()
      }
      
  """
  @type stream_key_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      srt() :: %{
        "endpoint" => String.t(),
        "passphrase" => String.t()
      }
      
  """
  @type srt() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_playback_restriction_policy_request() :: %{
        optional("allowedCountries") => list(String.t()()),
        optional("allowedOrigins") => list(String.t()()),
        optional("enableStrictOriginEnforcement") => boolean(),
        optional("name") => String.t(),
        optional("tags") => map()
      }
      
  """
  @type create_playback_restriction_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_recording_configurations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_recording_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pending_verification() :: %{
        "exceptionMessage" => String.t()
      }
      
  """
  @type pending_verification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      destination_configuration() :: %{
        "s3" => s3_destination_configuration()
      }
      
  """
  @type destination_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_stream_key_response() :: %{
        optional("errors") => list(batch_error()()),
        optional("streamKeys") => list(stream_key()())
      }
      
  """
  @type batch_get_stream_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      channel_not_broadcasting() :: %{
        "exceptionMessage" => String.t()
      }
      
  """
  @type channel_not_broadcasting() :: %{String.t() => any()}

  @type batch_start_viewer_session_revocation_errors() ::
          pending_verification()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()

  @type create_channel_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type create_playback_restriction_policy_errors() ::
          pending_verification()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()

  @type create_recording_configuration_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_stream_key_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type delete_channel_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_playback_key_pair_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type delete_playback_restriction_policy_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_recording_configuration_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_stream_key_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_channel_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type get_playback_key_pair_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type get_playback_restriction_policy_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_recording_configuration_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_stream_errors() ::
          channel_not_broadcasting()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_stream_key_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type get_stream_session_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type import_playback_key_pair_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type list_channels_errors() ::
          validation_exception() | access_denied_exception() | conflict_exception()

  @type list_playback_key_pairs_errors() :: validation_exception() | access_denied_exception()

  @type list_playback_restriction_policies_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | conflict_exception()

  @type list_recording_configurations_errors() ::
          validation_exception() | access_denied_exception() | internal_server_exception()

  @type list_stream_keys_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type list_stream_sessions_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type list_streams_errors() :: validation_exception() | access_denied_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type put_metadata_errors() ::
          channel_not_broadcasting()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type start_viewer_session_revocation_errors() ::
          pending_verification()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type stop_stream_errors() ::
          channel_not_broadcasting()
          | validation_exception()
          | access_denied_exception()
          | stream_unavailable()
          | resource_not_found_exception()

  @type tag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type untag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type update_channel_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_playback_restriction_policy_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2020-07-14",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "ivs",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "ivs",
      signature_version: "v4",
      signing_name: "ivs",
      target_prefix: nil
    }
  end

  @doc """
  Performs `GetChannel` on multiple ARNs simultaneously.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivs%20BatchGetChannel&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec batch_get_channel(AWS.Client.t(), Keyword.t()) ::
          {:ok, batch_get_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def batch_get_channel(%Client{} = client, options \\ []) do
    url_path = "/BatchGetChannel"

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

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Performs `GetStreamKey` on multiple ARNs simultaneously.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivs%20BatchGetStreamKey&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec batch_get_stream_key(AWS.Client.t(), Keyword.t()) ::
          {:ok, batch_get_stream_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def batch_get_stream_key(%Client{} = client, options \\ []) do
    url_path = "/BatchGetStreamKey"

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

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Performs `StartViewerSessionRevocation` on multiple channel ARN and viewer ID
  pairs simultaneously.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivs%20BatchStartViewerSessionRevocation&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec batch_start_viewer_session_revocation(AWS.Client.t(), Keyword.t()) ::
          {:ok, batch_start_viewer_session_revocation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_start_viewer_session_revocation_errors()}
  def batch_start_viewer_session_revocation(%Client{} = client, options \\ []) do
    url_path = "/BatchStartViewerSessionRevocation"

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

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates a new channel and an associated stream key to start streaming.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivs%20CreateChannel&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_channel(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_channel_errors()}
  def create_channel(%Client{} = client, options \\ []) do
    url_path = "/CreateChannel"

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

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates a new playback restriction policy, for constraining playback by
  countries and/or origins.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivs%20CreatePlaybackRestrictionPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_playback_restriction_policy(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_playback_restriction_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_playback_restriction_policy_errors()}
  def create_playback_restriction_policy(%Client{} = client, options \\ []) do
    url_path = "/CreatePlaybackRestrictionPolicy"

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

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates a new recording configuration, used to enable recording to Amazon S3.
  **Known issue:** In the us-east-1 region, if you use the Amazon Web Services
  CLI to create a recording configuration, it returns success even if the S3
  bucket is in a different region. In this case, the `state` of the recording
  configuration is `CREATE_FAILED` (instead of `ACTIVE`). (In other regions, the
  CLI correctly returns failure if the bucket is in a different region.)

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivs%20CreateRecordingConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_recording_configuration(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_recording_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_recording_configuration_errors()}
  def create_recording_configuration(%Client{} = client, options \\ []) do
    url_path = "/CreateRecordingConfiguration"

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

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates a stream key, used to initiate a stream, for the specified channel ARN.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivs%20CreateStreamKey&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_stream_key(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_stream_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_stream_key_errors()}
  def create_stream_key(%Client{} = client, options \\ []) do
    url_path = "/CreateStreamKey"

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

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Deletes the specified channel and its associated stream keys.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivs%20DeleteChannel&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec delete_channel(AWS.Client.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_channel_errors()}
  def delete_channel(%Client{} = client, options \\ []) do
    url_path = "/DeleteChannel"

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

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 204)
  end

  @doc """
  Deletes a specified authorization key pair. This invalidates future viewer
  tokens generated using the key pair’s `privateKey`. For more information, see
  [Setting Up Private
  Channels](https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html)
  in the *Amazon IVS User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivs%20DeletePlaybackKeyPair&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec delete_playback_key_pair(AWS.Client.t(), Keyword.t()) ::
          {:ok, delete_playback_key_pair_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_playback_key_pair_errors()}
  def delete_playback_key_pair(%Client{} = client, options \\ []) do
    url_path = "/DeletePlaybackKeyPair"

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

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Deletes the specified playback restriction policy.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivs%20DeletePlaybackRestrictionPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec delete_playback_restriction_policy(AWS.Client.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_playback_restriction_policy_errors()}
  def delete_playback_restriction_policy(%Client{} = client, options \\ []) do
    url_path = "/DeletePlaybackRestrictionPolicy"

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

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 204)
  end

  @doc """
  Deletes the recording configuration for the specified ARN.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivs%20DeleteRecordingConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec delete_recording_configuration(AWS.Client.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_recording_configuration_errors()}
  def delete_recording_configuration(%Client{} = client, options \\ []) do
    url_path = "/DeleteRecordingConfiguration"

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

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 204)
  end

  @doc """
  Deletes the stream key for the specified ARN, so it can no longer be used to
  stream.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivs%20DeleteStreamKey&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec delete_stream_key(AWS.Client.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_stream_key_errors()}
  def delete_stream_key(%Client{} = client, options \\ []) do
    url_path = "/DeleteStreamKey"

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

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 204)
  end

  @doc """
  Gets the channel configuration for the specified channel ARN. See also
  `BatchGetChannel`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivs%20GetChannel&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec get_channel(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_channel_errors()}
  def get_channel(%Client{} = client, options \\ []) do
    url_path = "/GetChannel"

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

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Gets a specified playback authorization key pair and returns the `arn` and
  `fingerprint`. The `privateKey` held by the caller can be used to generate
  viewer authorization tokens, to grant viewers access to private channels. For
  more information, see [Setting Up Private
  Channels](https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html)
  in the *Amazon IVS User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivs%20GetPlaybackKeyPair&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec get_playback_key_pair(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_playback_key_pair_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_playback_key_pair_errors()}
  def get_playback_key_pair(%Client{} = client, options \\ []) do
    url_path = "/GetPlaybackKeyPair"

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

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Gets the specified playback restriction policy.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivs%20GetPlaybackRestrictionPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec get_playback_restriction_policy(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_playback_restriction_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_playback_restriction_policy_errors()}
  def get_playback_restriction_policy(%Client{} = client, options \\ []) do
    url_path = "/GetPlaybackRestrictionPolicy"

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

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Gets the recording configuration for the specified ARN.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivs%20GetRecordingConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec get_recording_configuration(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_recording_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_recording_configuration_errors()}
  def get_recording_configuration(%Client{} = client, options \\ []) do
    url_path = "/GetRecordingConfiguration"

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

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Gets information about the active (live) stream on a specified channel.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivs%20GetStream&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec get_stream(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_stream_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_stream_errors()}
  def get_stream(%Client{} = client, options \\ []) do
    url_path = "/GetStream"

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

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Gets stream-key information for a specified ARN.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivs%20GetStreamKey&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec get_stream_key(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_stream_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_stream_key_errors()}
  def get_stream_key(%Client{} = client, options \\ []) do
    url_path = "/GetStreamKey"

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

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Gets metadata on a specified stream.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivs%20GetStreamSession&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec get_stream_session(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_stream_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_stream_session_errors()}
  def get_stream_session(%Client{} = client, options \\ []) do
    url_path = "/GetStreamSession"

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

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Imports the public portion of a new key pair and returns its `arn` and
  `fingerprint`. The `privateKey` can then be used to generate viewer
  authorization tokens, to grant viewers access to private channels. For more
  information, see [Setting Up Private
  Channels](https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html)
  in the *Amazon IVS User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivs%20ImportPlaybackKeyPair&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec import_playback_key_pair(AWS.Client.t(), Keyword.t()) ::
          {:ok, import_playback_key_pair_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, import_playback_key_pair_errors()}
  def import_playback_key_pair(%Client{} = client, options \\ []) do
    url_path = "/ImportPlaybackKeyPair"

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

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Gets summary information about all channels in your account, in the Amazon Web
  Services region where the API request is processed. This list can be filtered
  to match a specified name or recording-configuration ARN. Filters are mutually
  exclusive and cannot be used together. If you try to use both filters, you
  will get an error (409 ConflictException).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivs%20ListChannels&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_channels(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_channels_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_channels_errors()}
  def list_channels(%Client{} = client, options \\ []) do
    url_path = "/ListChannels"

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

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Gets summary information about playback key pairs. For more information, see
  [Setting Up Private
  Channels](https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html)
  in the *Amazon IVS User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivs%20ListPlaybackKeyPairs&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_playback_key_pairs(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_playback_key_pairs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_playback_key_pairs_errors()}
  def list_playback_key_pairs(%Client{} = client, options \\ []) do
    url_path = "/ListPlaybackKeyPairs"

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

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Gets summary information about playback restriction policies.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivs%20ListPlaybackRestrictionPolicies&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_playback_restriction_policies(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_playback_restriction_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_playback_restriction_policies_errors()}
  def list_playback_restriction_policies(%Client{} = client, options \\ []) do
    url_path = "/ListPlaybackRestrictionPolicies"

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

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Gets summary information about all recording configurations in your account, in
  the Amazon Web Services region where the API request is processed.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivs%20ListRecordingConfigurations&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_recording_configurations(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_recording_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_recording_configurations_errors()}
  def list_recording_configurations(%Client{} = client, options \\ []) do
    url_path = "/ListRecordingConfigurations"

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

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Gets summary information about stream keys for the specified channel.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivs%20ListStreamKeys&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_stream_keys(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_stream_keys_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_stream_keys_errors()}
  def list_stream_keys(%Client{} = client, options \\ []) do
    url_path = "/ListStreamKeys"

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

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Gets a summary of current and previous streams for a specified channel in your
  account, in the AWS region where the API request is processed.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivs%20ListStreamSessions&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_stream_sessions(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_stream_sessions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_stream_sessions_errors()}
  def list_stream_sessions(%Client{} = client, options \\ []) do
    url_path = "/ListStreamSessions"

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

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Gets summary information about live streams in your account, in the Amazon Web
  Services region where the API request is processed.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivs%20ListStreams&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_streams(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_streams_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_streams_errors()}
  def list_streams(%Client{} = client, options \\ []) do
    url_path = "/ListStreams"

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

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Gets information about Amazon Web Services tags for the specified ARN.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivs%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The ARN of the resource to be retrieved.
  The ARN must be URL-encoded.
  ## Keyword parameters:
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
  Inserts metadata into the active stream of the specified channel. At most 5
  requests per second per channel are allowed, each with a maximum 1 KB payload.
  (If 5 TPS is not sufficient for your needs, we recommend batching your data
  into a single PutMetadata call.) At most 155 requests per second per account
  are allowed. Also see [Embedding Metadata within a Video
  Stream](https://docs.aws.amazon.com/ivs/latest/userguide/metadata.html) in the
  *Amazon IVS User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivs%20PutMetadata&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec put_metadata(AWS.Client.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_metadata_errors()}
  def put_metadata(%Client{} = client, options \\ []) do
    url_path = "/PutMetadata"

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

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 204)
  end

  @doc """
  Starts the process of revoking the viewer session associated with a specified
  channel ARN and viewer ID. Optionally, you can provide a version to revoke
  viewer sessions less than and including that version. For instructions on
  associating a viewer ID with a viewer session, see [Setting Up Private
  Channels](https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivs%20StartViewerSessionRevocation&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec start_viewer_session_revocation(AWS.Client.t(), Keyword.t()) ::
          {:ok, start_viewer_session_revocation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_viewer_session_revocation_errors()}
  def start_viewer_session_revocation(%Client{} = client, options \\ []) do
    url_path = "/StartViewerSessionRevocation"

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

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Disconnects the incoming RTMPS stream for the specified channel. Can be used in
  conjunction with `DeleteStreamKey` to prevent further streaming to a channel.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivs%20StopStream&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec stop_stream(AWS.Client.t(), Keyword.t()) ::
          {:ok, stop_stream_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_stream_errors()}
  def stop_stream(%Client{} = client, options \\ []) do
    url_path = "/StopStream"

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

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Adds or updates tags for the Amazon Web Services resource with the specified
  ARN.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivs%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) ARN of the resource for which tags are
  to be added or updated. The ARN must be URL-encoded.
  ## Keyword parameters:
  """
  @spec tag_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, options \\ []) do
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

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Removes tags from the resource with the specified ARN.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivs%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) ARN of the resource for which tags are
  to be removed. The ARN must be URL-encoded.
  * `:tag_keys` (`t:list[com.amazonaws.ivs#TagKey]` required) Array of tags to be
  removed. Array of maps, each of the form string:string (key:value). See
  Tagging Amazon Web Services Resources for more information, including
  restrictions that apply to tags and "Tag naming limits and requirements";
  Amazon IVS has no service-specific constraints beyond what is documented
  there.
  ## Keyword parameters:
  """
  @spec untag_resource(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, tag_keys, options \\ [])
      when is_binary(tag_keys) do
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
    query_params = [{"tagKeys", tag_keys}]

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Updates a channel's configuration. Live channels cannot be updated. You must
  stop the ongoing stream, update the channel, and restart the stream for the
  changes to take effect.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivs%20UpdateChannel&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec update_channel(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_channel_errors()}
  def update_channel(%Client{} = client, options \\ []) do
    url_path = "/UpdateChannel"

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

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates a specified playback restriction policy.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivs%20UpdatePlaybackRestrictionPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec update_playback_restriction_policy(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_playback_restriction_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_playback_restriction_policy_errors()}
  def update_playback_restriction_policy(%Client{} = client, options \\ []) do
    url_path = "/UpdatePlaybackRestrictionPolicy"

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

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end
end
