# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IVSRealTime do
  @moduledoc """
  The Amazon Interactive Video Service (IVS) real-time API is REST compatible,
  using a standard HTTP API and an AWS EventBridge event stream for responses.
  JSON is used for both requests and responses, including errors. **Key
  Concepts**
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      video() :: %{
        "bitrate" => integer(),
        "framerate" => float(),
        "height" => integer(),
        "width" => integer()
      }
      
  """
  @type video() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_stage_request() :: %{
        optional("autoParticipantRecordingConfiguration") => auto_participant_recording_configuration(),
        optional("name") => String.t(),
        required("arn") => String.t()
      }
      
  """
  @type update_stage_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_composition_response() :: %{
        "composition" => composition()
      }
      
  """
  @type get_composition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stage() :: %{
        "activeSessionId" => String.t(),
        "arn" => String.t(),
        "autoParticipantRecordingConfiguration" => auto_participant_recording_configuration(),
        "endpoints" => stage_endpoints(),
        "name" => String.t(),
        "tags" => map()
      }
      
  """
  @type stage() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_stages_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_stages_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      composition() :: %{
        "arn" => String.t(),
        "destinations" => list(destination()()),
        "endTime" => non_neg_integer(),
        "layout" => layout_configuration(),
        "stageArn" => String.t(),
        "startTime" => non_neg_integer(),
        "state" => String.t(),
        "tags" => map()
      }
      
  """
  @type composition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_storage_configuration_response() :: %{
        "storageConfiguration" => storage_configuration()
      }
      
  """
  @type get_storage_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_stage_response() :: %{
        optional("participantTokens") => list(participant_token()()),
        optional("stage") => stage()
      }
      
  """
  @type create_stage_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recording_configuration() :: %{
        "format" => String.t()
      }
      
  """
  @type recording_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      participant() :: %{
        "attributes" => map(),
        "browserName" => String.t(),
        "browserVersion" => String.t(),
        "firstJoinTime" => non_neg_integer(),
        "ispName" => String.t(),
        "osName" => String.t(),
        "osVersion" => String.t(),
        "participantId" => String.t(),
        "published" => boolean(),
        "recordingS3BucketName" => String.t(),
        "recordingS3Prefix" => String.t(),
        "recordingState" => String.t(),
        "sdkVersion" => String.t(),
        "state" => String.t(),
        "userId" => String.t()
      }
      
  """
  @type participant() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_stage_response() :: %{
        optional("stage") => stage()
      }
      
  """
  @type get_stage_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_composition_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type stop_composition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      pip_configuration() :: %{
        "featuredParticipantAttribute" => String.t(),
        "gridGap" => integer(),
        "omitStoppedVideo" => boolean(),
        "pipBehavior" => list(any()),
        "pipHeight" => integer(),
        "pipOffset" => integer(),
        "pipParticipantAttribute" => String.t(),
        "pipPosition" => list(any()),
        "pipWidth" => integer(),
        "videoFillMode" => list(any())
      }
      
  """
  @type pip_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_compositions_response() :: %{
        "compositions" => list(composition_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_compositions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_public_keys_response() :: %{
        "nextToken" => String.t(),
        "publicKeys" => list(public_key_summary()())
      }
      
  """
  @type list_public_keys_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_encoder_configuration_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type delete_encoder_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_storage_configuration_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type get_storage_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_compositions_request() :: %{
        optional("filterByEncoderConfigurationArn") => String.t(),
        optional("filterByStageArn") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_compositions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      participant_summary() :: %{
        "firstJoinTime" => non_neg_integer(),
        "participantId" => String.t(),
        "published" => boolean(),
        "recordingState" => String.t(),
        "state" => String.t(),
        "userId" => String.t()
      }
      
  """
  @type participant_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disconnect_participant_response() :: %{}
      
  """
  @type disconnect_participant_response() :: %{}

  @typedoc """

  ## Example:
      
      stage_endpoints() :: %{
        "events" => String.t(),
        "whip" => String.t()
      }
      
  """
  @type stage_endpoints() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_stage_session_request() :: %{
        required("sessionId") => String.t(),
        required("stageArn") => String.t()
      }
      
  """
  @type get_stage_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_stage_session_response() :: %{
        "stageSession" => stage_session()
      }
      
  """
  @type get_stage_session_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_stage_response() :: %{
        optional("stage") => stage()
      }
      
  """
  @type update_stage_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      participant_token_configuration() :: %{
        "attributes" => map(),
        "capabilities" => list(String.t()()),
        "duration" => integer(),
        "userId" => String.t()
      }
      
  """
  @type participant_token_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      storage_configuration_summary() :: %{
        "arn" => String.t(),
        "name" => String.t(),
        "s3" => s3_storage_configuration(),
        "tags" => map()
      }
      
  """
  @type storage_configuration_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_public_key_response() :: %{
        "publicKey" => public_key()
      }
      
  """
  @type import_public_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_encoder_configurations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_encoder_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_stage_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type get_stage_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_public_keys_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_public_keys_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_composition_response() :: %{
        "composition" => composition()
      }
      
  """
  @type start_composition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_composition_request() :: %{
        optional("idempotencyToken") => String.t(),
        optional("layout") => layout_configuration(),
        optional("tags") => map(),
        required("destinations") => list(destination_configuration()()),
        required("stageArn") => String.t()
      }
      
  """
  @type start_composition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_stage_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type delete_stage_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_composition_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type get_composition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_encoder_configuration_response() :: %{
        "encoderConfiguration" => encoder_configuration()
      }
      
  """
  @type get_encoder_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_storage_configurations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_storage_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disconnect_participant_request() :: %{
        optional("reason") => String.t(),
        required("participantId") => String.t(),
        required("stageArn") => String.t()
      }
      
  """
  @type disconnect_participant_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_storage_configurations_response() :: %{
        "nextToken" => String.t(),
        "storageConfigurations" => list(storage_configuration_summary()())
      }
      
  """
  @type list_storage_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_public_key_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type delete_public_key_request() :: %{String.t() => any()}

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
      
      list_participants_response() :: %{
        "nextToken" => String.t(),
        "participants" => list(participant_summary()())
      }
      
  """
  @type list_participants_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      channel_destination_configuration() :: %{
        "channelArn" => String.t(),
        "encoderConfigurationArn" => String.t()
      }
      
  """
  @type channel_destination_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_participant_response() :: %{
        "participant" => participant()
      }
      
  """
  @type get_participant_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_participants_request() :: %{
        optional("filterByPublished") => boolean(),
        optional("filterByRecordingState") => String.t(),
        optional("filterByState") => String.t(),
        optional("filterByUserId") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("sessionId") => String.t(),
        required("stageArn") => String.t()
      }
      
  """
  @type list_participants_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "exceptionMessage" => String.t()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_stage_sessions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("stageArn") => String.t()
      }
      
  """
  @type list_stage_sessions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_storage_configuration_response() :: %{
        "storageConfiguration" => storage_configuration()
      }
      
  """
  @type create_storage_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_participant_recording_configuration() :: %{
        "mediaTypes" => list(String.t()()),
        "storageConfigurationArn" => String.t()
      }
      
  """
  @type auto_participant_recording_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_participant_token_response() :: %{
        optional("participantToken") => participant_token()
      }
      
  """
  @type create_participant_token_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_destination_configuration() :: %{
        "encoderConfigurationArns" => list(String.t()()),
        "recordingConfiguration" => recording_configuration(),
        "storageConfigurationArn" => String.t()
      }
      
  """
  @type s3_destination_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      destination_summary() :: %{
        "endTime" => non_neg_integer(),
        "id" => String.t(),
        "startTime" => non_neg_integer(),
        "state" => String.t()
      }
      
  """
  @type destination_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      storage_configuration() :: %{
        "arn" => String.t(),
        "name" => String.t(),
        "s3" => s3_storage_configuration(),
        "tags" => map()
      }
      
  """
  @type storage_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_stage_sessions_response() :: %{
        "nextToken" => String.t(),
        "stageSessions" => list(stage_session_summary()())
      }
      
  """
  @type list_stage_sessions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        required("tags") => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      encoder_configuration() :: %{
        "arn" => String.t(),
        "name" => String.t(),
        "tags" => map(),
        "video" => video()
      }
      
  """
  @type encoder_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      public_key() :: %{
        "arn" => String.t(),
        "fingerprint" => String.t(),
        "name" => String.t(),
        "publicKeyMaterial" => String.t(),
        "tags" => map()
      }
      
  """
  @type public_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      encoder_configuration_summary() :: %{
        "arn" => String.t(),
        "name" => String.t(),
        "tags" => map()
      }
      
  """
  @type encoder_configuration_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stage_session_summary() :: %{
        "endTime" => non_neg_integer(),
        "sessionId" => String.t(),
        "startTime" => non_neg_integer()
      }
      
  """
  @type stage_session_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_stage_response() :: %{}
      
  """
  @type delete_stage_response() :: %{}

  @typedoc """

  ## Example:
      
      create_stage_request() :: %{
        optional("autoParticipantRecordingConfiguration") => auto_participant_recording_configuration(),
        optional("name") => String.t(),
        optional("participantTokenConfigurations") => list(participant_token_configuration()()),
        optional("tags") => map()
      }
      
  """
  @type create_stage_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_detail() :: %{
        "recordingPrefix" => String.t()
      }
      
  """
  @type s3_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "exceptionMessage" => String.t()
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_participant_token_request() :: %{
        optional("attributes") => map(),
        optional("capabilities") => list(String.t()()),
        optional("duration") => integer(),
        optional("userId") => String.t(),
        required("stageArn") => String.t()
      }
      
  """
  @type create_participant_token_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_public_key_request() :: %{
        optional("name") => String.t(),
        optional("tags") => map(),
        required("publicKeyMaterial") => String.t()
      }
      
  """
  @type import_public_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_public_key_response() :: %{}
      
  """
  @type delete_public_key_response() :: %{}

  @typedoc """

  ## Example:
      
      list_stages_response() :: %{
        optional("nextToken") => String.t(),
        required("stages") => list(stage_summary()())
      }
      
  """
  @type list_stages_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event() :: %{
        "errorCode" => String.t(),
        "eventTime" => non_neg_integer(),
        "name" => String.t(),
        "participantId" => String.t(),
        "remoteParticipantId" => String.t()
      }
      
  """
  @type event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_encoder_configurations_response() :: %{
        "encoderConfigurations" => list(encoder_configuration_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_encoder_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_public_key_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type get_public_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_participant_request() :: %{
        required("participantId") => String.t(),
        required("sessionId") => String.t(),
        required("stageArn") => String.t()
      }
      
  """
  @type get_participant_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_public_key_response() :: %{
        "publicKey" => public_key()
      }
      
  """
  @type get_public_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "exceptionMessage" => String.t()
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
      
      delete_storage_configuration_response() :: %{}
      
  """
  @type delete_storage_configuration_response() :: %{}

  @typedoc """

  ## Example:
      
      list_participant_events_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("participantId") => String.t(),
        required("sessionId") => String.t(),
        required("stageArn") => String.t()
      }
      
  """
  @type list_participant_events_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      grid_configuration() :: %{
        "featuredParticipantAttribute" => String.t(),
        "gridGap" => integer(),
        "omitStoppedVideo" => boolean(),
        "videoAspectRatio" => list(any()),
        "videoFillMode" => list(any())
      }
      
  """
  @type grid_configuration() :: %{String.t() => any()}

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
      
      destination() :: %{
        "configuration" => destination_configuration(),
        "detail" => destination_detail(),
        "endTime" => non_neg_integer(),
        "id" => String.t(),
        "startTime" => non_neg_integer(),
        "state" => String.t()
      }
      
  """
  @type destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      participant_token() :: %{
        "attributes" => map(),
        "capabilities" => list(String.t()()),
        "duration" => integer(),
        "expirationTime" => non_neg_integer(),
        "participantId" => String.t(),
        "token" => String.t(),
        "userId" => String.t()
      }
      
  """
  @type participant_token() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_composition_response() :: %{}
      
  """
  @type stop_composition_response() :: %{}

  @typedoc """

  ## Example:
      
      create_storage_configuration_request() :: %{
        optional("name") => String.t(),
        optional("tags") => map(),
        required("s3") => s3_storage_configuration()
      }
      
  """
  @type create_storage_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      destination_detail() :: %{
        "s3" => s3_detail()
      }
      
  """
  @type destination_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_encoder_configuration_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type get_encoder_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      public_key_summary() :: %{
        "arn" => String.t(),
        "name" => String.t(),
        "tags" => map()
      }
      
  """
  @type public_key_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_encoder_configuration_request() :: %{
        optional("name") => String.t(),
        optional("tags") => map(),
        optional("video") => video()
      }
      
  """
  @type create_encoder_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_storage_configuration() :: %{
        "bucketName" => String.t()
      }
      
  """
  @type s3_storage_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stage_session() :: %{
        "endTime" => non_neg_integer(),
        "sessionId" => String.t(),
        "startTime" => non_neg_integer()
      }
      
  """
  @type stage_session() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stage_summary() :: %{
        "activeSessionId" => String.t(),
        "arn" => String.t(),
        "name" => String.t(),
        "tags" => map()
      }
      
  """
  @type stage_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_storage_configuration_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type delete_storage_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      composition_summary() :: %{
        "arn" => String.t(),
        "destinations" => list(destination_summary()()),
        "endTime" => non_neg_integer(),
        "stageArn" => String.t(),
        "startTime" => non_neg_integer(),
        "state" => String.t(),
        "tags" => map()
      }
      
  """
  @type composition_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_encoder_configuration_response() :: %{}
      
  """
  @type delete_encoder_configuration_response() :: %{}

  @typedoc """

  ## Example:
      
      create_encoder_configuration_response() :: %{
        "encoderConfiguration" => encoder_configuration()
      }
      
  """
  @type create_encoder_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      layout_configuration() :: %{
        "grid" => grid_configuration(),
        "pip" => pip_configuration()
      }
      
  """
  @type layout_configuration() :: %{String.t() => any()}

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
        "channel" => channel_destination_configuration(),
        "name" => String.t(),
        "s3" => s3_destination_configuration()
      }
      
  """
  @type destination_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_participant_events_response() :: %{
        "events" => list(event()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_participant_events_response() :: %{String.t() => any()}

  @type create_encoder_configuration_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_participant_token_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type create_stage_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()

  @type create_storage_configuration_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_encoder_configuration_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_public_key_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_stage_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_storage_configuration_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disconnect_participant_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_composition_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_encoder_configuration_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_participant_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type get_public_key_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type get_stage_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type get_stage_session_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type get_storage_configuration_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type import_public_key_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type list_compositions_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type list_encoder_configurations_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type list_participant_events_errors() :: validation_exception() | access_denied_exception()

  @type list_participants_errors() :: validation_exception() | access_denied_exception()

  @type list_public_keys_errors() :: validation_exception() | access_denied_exception()

  @type list_stage_sessions_errors() :: validation_exception() | access_denied_exception()

  @type list_stages_errors() ::
          validation_exception() | access_denied_exception() | conflict_exception()

  @type list_storage_configurations_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type start_composition_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type stop_composition_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type untag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type update_stage_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2020-07-14",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "ivsrealtime",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "IVS RealTime",
      signature_version: "v4",
      signing_name: "ivs",
      target_prefix: nil
    }
  end

  @doc """
  Creates an EncoderConfiguration object.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivsrealtime%20CreateEncoderConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_encoder_configuration(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_encoder_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_encoder_configuration_errors()}
  def create_encoder_configuration(%Client{} = client, options \\ []) do
    url_path = "/CreateEncoderConfiguration"

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
  Creates an additional token for a specified stage. This can be done after stage
  creation or when tokens expire. Tokens always are scoped to the stage for
  which they are created.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivsrealtime%20CreateParticipantToken&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_participant_token(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_participant_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_participant_token_errors()}
  def create_participant_token(%Client{} = client, options \\ []) do
    url_path = "/CreateParticipantToken"

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
  Creates a new stage (and optionally participant tokens).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivsrealtime%20CreateStage&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_stage(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_stage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_stage_errors()}
  def create_stage(%Client{} = client, options \\ []) do
    url_path = "/CreateStage"

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
  Creates a new storage configuration, used to enable recording to Amazon S3. When
  a StorageConfiguration is created, IVS will modify the S3 bucketPolicy of the
  provided bucket. This will ensure that IVS has sufficient permissions to write
  content to the provided bucket.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivsrealtime%20CreateStorageConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_storage_configuration(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_storage_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_storage_configuration_errors()}
  def create_storage_configuration(%Client{} = client, options \\ []) do
    url_path = "/CreateStorageConfiguration"

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
  Deletes an EncoderConfiguration resource. Ensures that no Compositions are using
  this template; otherwise, returns an error.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivsrealtime%20DeleteEncoderConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec delete_encoder_configuration(AWS.Client.t(), Keyword.t()) ::
          {:ok, delete_encoder_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_encoder_configuration_errors()}
  def delete_encoder_configuration(%Client{} = client, options \\ []) do
    url_path = "/DeleteEncoderConfiguration"

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
  Deletes the specified public key used to sign stage participant tokens. This
  invalidates future participant tokens generated using the key pair’s private
  key.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivsrealtime%20DeletePublicKey&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec delete_public_key(AWS.Client.t(), Keyword.t()) ::
          {:ok, delete_public_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_public_key_errors()}
  def delete_public_key(%Client{} = client, options \\ []) do
    url_path = "/DeletePublicKey"

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
  Shuts down and deletes the specified stage (disconnecting all participants).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivsrealtime%20DeleteStage&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec delete_stage(AWS.Client.t(), Keyword.t()) ::
          {:ok, delete_stage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_stage_errors()}
  def delete_stage(%Client{} = client, options \\ []) do
    url_path = "/DeleteStage"

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
  Deletes the storage configuration for the specified ARN.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivsrealtime%20DeleteStorageConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec delete_storage_configuration(AWS.Client.t(), Keyword.t()) ::
          {:ok, delete_storage_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_storage_configuration_errors()}
  def delete_storage_configuration(%Client{} = client, options \\ []) do
    url_path = "/DeleteStorageConfiguration"

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
  Disconnects a specified participant and revokes the participant permanently from
  a specified stage.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivsrealtime%20DisconnectParticipant&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec disconnect_participant(AWS.Client.t(), Keyword.t()) ::
          {:ok, disconnect_participant_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disconnect_participant_errors()}
  def disconnect_participant(%Client{} = client, options \\ []) do
    url_path = "/DisconnectParticipant"

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
  Get information about the specified Composition resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivsrealtime%20GetComposition&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec get_composition(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_composition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_composition_errors()}
  def get_composition(%Client{} = client, options \\ []) do
    url_path = "/GetComposition"

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
  Gets information about the specified EncoderConfiguration resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivsrealtime%20GetEncoderConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec get_encoder_configuration(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_encoder_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_encoder_configuration_errors()}
  def get_encoder_configuration(%Client{} = client, options \\ []) do
    url_path = "/GetEncoderConfiguration"

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
  Gets information about the specified participant token.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivsrealtime%20GetParticipant&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec get_participant(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_participant_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_participant_errors()}
  def get_participant(%Client{} = client, options \\ []) do
    url_path = "/GetParticipant"

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
  Gets information for the specified public key.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivsrealtime%20GetPublicKey&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec get_public_key(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_public_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_public_key_errors()}
  def get_public_key(%Client{} = client, options \\ []) do
    url_path = "/GetPublicKey"

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
  Gets information for the specified stage.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivsrealtime%20GetStage&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec get_stage(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_stage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_stage_errors()}
  def get_stage(%Client{} = client, options \\ []) do
    url_path = "/GetStage"

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
  Gets information for the specified stage session.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivsrealtime%20GetStageSession&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec get_stage_session(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_stage_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_stage_session_errors()}
  def get_stage_session(%Client{} = client, options \\ []) do
    url_path = "/GetStageSession"

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
  Gets the storage configuration for the specified ARN.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivsrealtime%20GetStorageConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec get_storage_configuration(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_storage_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_storage_configuration_errors()}
  def get_storage_configuration(%Client{} = client, options \\ []) do
    url_path = "/GetStorageConfiguration"

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
  Import a public key to be used for signing stage participant tokens.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivsrealtime%20ImportPublicKey&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec import_public_key(AWS.Client.t(), Keyword.t()) ::
          {:ok, import_public_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, import_public_key_errors()}
  def import_public_key(%Client{} = client, options \\ []) do
    url_path = "/ImportPublicKey"

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
  Gets summary information about all Compositions in your account, in the AWS
  region where the API request is processed.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivsrealtime%20ListCompositions&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_compositions(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_compositions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_compositions_errors()}
  def list_compositions(%Client{} = client, options \\ []) do
    url_path = "/ListCompositions"

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
  Gets summary information about all EncoderConfigurations in your account, in the
  AWS region where the API request is processed.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivsrealtime%20ListEncoderConfigurations&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_encoder_configurations(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_encoder_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_encoder_configurations_errors()}
  def list_encoder_configurations(%Client{} = client, options \\ []) do
    url_path = "/ListEncoderConfigurations"

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
  Lists events for a specified participant that occurred during a specified stage
  session.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivsrealtime%20ListParticipantEvents&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_participant_events(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_participant_events_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_participant_events_errors()}
  def list_participant_events(%Client{} = client, options \\ []) do
    url_path = "/ListParticipantEvents"

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
  Lists all participants in a specified stage session.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivsrealtime%20ListParticipants&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_participants(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_participants_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_participants_errors()}
  def list_participants(%Client{} = client, options \\ []) do
    url_path = "/ListParticipants"

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
  Gets summary information about all public keys in your account, in the AWS
  region where the API request is processed.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivsrealtime%20ListPublicKeys&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_public_keys(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_public_keys_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_public_keys_errors()}
  def list_public_keys(%Client{} = client, options \\ []) do
    url_path = "/ListPublicKeys"

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
  Gets all sessions for a specified stage.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivsrealtime%20ListStageSessions&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_stage_sessions(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_stage_sessions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_stage_sessions_errors()}
  def list_stage_sessions(%Client{} = client, options \\ []) do
    url_path = "/ListStageSessions"

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
  Gets summary information about all stages in your account, in the AWS region
  where the API request is processed.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivsrealtime%20ListStages&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_stages(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_stages_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_stages_errors()}
  def list_stages(%Client{} = client, options \\ []) do
    url_path = "/ListStages"

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
  Gets summary information about all storage configurations in your account, in
  the AWS region where the API request is processed.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivsrealtime%20ListStorageConfigurations&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_storage_configurations(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_storage_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_storage_configurations_errors()}
  def list_storage_configurations(%Client{} = client, options \\ []) do
    url_path = "/ListStorageConfigurations"

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
  Gets information about AWS tags for the specified ARN.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivsrealtime%20ListTagsForResource&this_doc_guide=API%2520Reference)

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
  Starts a Composition from a stage based on the configuration provided in the
  request. A Composition is an ephemeral resource that exists after this
  endpoint returns successfully. Composition stops and the resource is deleted:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivsrealtime%20StartComposition&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec start_composition(AWS.Client.t(), Keyword.t()) ::
          {:ok, start_composition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_composition_errors()}
  def start_composition(%Client{} = client, options \\ []) do
    url_path = "/StartComposition"

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
  Stops and deletes a Composition resource. Any broadcast from the Composition
  resource is stopped.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivsrealtime%20StopComposition&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec stop_composition(AWS.Client.t(), Keyword.t()) ::
          {:ok, stop_composition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_composition_errors()}
  def stop_composition(%Client{} = client, options \\ []) do
    url_path = "/StopComposition"

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
  Adds or updates tags for the AWS resource with the specified ARN.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivsrealtime%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The ARN of the resource to be tagged.
  The ARN must be URL-encoded.
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

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivsrealtime%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The ARN of the resource to be untagged.
  The ARN must be URL-encoded.
  * `:tag_keys` (`t:list[com.amazonaws.ivsrealtime#TagKey]` required) Array of
  tags to be removed. Array of maps, each of the form string:string
  (key:value). See Tagging AWS Resources for details, including restrictions
  that apply to tags and "Tag naming limits and requirements"; Amazon IVS has
  no constraints beyond what is documented there.
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
  Updates a stage’s configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ivsrealtime%20UpdateStage&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec update_stage(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_stage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_stage_errors()}
  def update_stage(%Client{} = client, options \\ []) do
    url_path = "/UpdateStage"

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
