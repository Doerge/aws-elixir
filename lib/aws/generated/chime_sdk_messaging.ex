# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ChimeSDKMessaging do
  @moduledoc """
  The Amazon Chime SDK messaging APIs in this section allow software developers to
  send and receive messages in custom messaging applications. These APIs depend
  on the frameworks provided by the Amazon Chime SDK identity APIs. For more
  information about the messaging APIs, see [Amazon Chime SDK
  messaging](https://docs.aws.amazon.com/chime/latest/APIReference/API_Operations_Amazon_Chime_SDK_Messaging.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      get_messaging_streaming_configurations_response() :: %{
        "StreamingConfigurations" => list(streaming_configuration()())
      }
      
  """
  @type get_messaging_streaming_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_channel_flows_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("AppInstanceArn") => String.t()
      }
      
  """
  @type list_channel_flows_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      streaming_configuration() :: %{
        "DataType" => list(any()),
        "ResourceArn" => String.t()
      }
      
  """
  @type streaming_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_channel_memberships_for_app_instance_user_request() :: %{
        optional("AppInstanceUserArn") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ChimeBearer") => String.t()
      }
      
  """
  @type list_channel_memberships_for_app_instance_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_channel_request() :: %{
        required("ChimeBearer") => String.t()
      }
      
  """
  @type delete_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sub_channel_summary() :: %{
        "MembershipCount" => integer(),
        "SubChannelId" => String.t()
      }
      
  """
  @type sub_channel_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_channel_bans_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ChimeBearer") => String.t()
      }
      
  """
  @type list_channel_bans_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_channel_moderated_by_app_instance_user_request() :: %{
        required("AppInstanceUserArn") => String.t(),
        required("ChimeBearer") => String.t()
      }
      
  """
  @type describe_channel_moderated_by_app_instance_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_channel_moderator_response() :: %{
        "ChannelModerator" => channel_moderator()
      }
      
  """
  @type describe_channel_moderator_response() :: %{String.t() => any()}

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
      
      redact_channel_message_response() :: %{
        "ChannelArn" => String.t(),
        "MessageId" => String.t(),
        "SubChannelId" => String.t()
      }
      
  """
  @type redact_channel_message_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_channel_moderator_response() :: %{
        "ChannelArn" => String.t(),
        "ChannelModerator" => identity()
      }
      
  """
  @type create_channel_moderator_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_channel_moderator_request() :: %{
        required("ChimeBearer") => String.t()
      }
      
  """
  @type delete_channel_moderator_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_channel_response() :: %{
        "ChannelArn" => String.t()
      }
      
  """
  @type create_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      channel_membership_for_app_instance_user_summary() :: %{
        "AppInstanceUserMembershipSummary" => app_instance_user_membership_summary(),
        "ChannelSummary" => channel_summary()
      }
      
  """
  @type channel_membership_for_app_instance_user_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_channel_flows_response() :: %{
        "ChannelFlows" => list(channel_flow_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_channel_flows_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_channel_flow_response() :: %{
        "ChannelFlow" => channel_flow()
      }
      
  """
  @type describe_channel_flow_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_channel_messages_response() :: %{
        "ChannelArn" => String.t(),
        "ChannelMessages" => list(channel_message_summary()()),
        "NextToken" => String.t(),
        "SubChannelId" => String.t()
      }
      
  """
  @type list_channel_messages_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_create_channel_membership_response() :: %{
        "BatchChannelMemberships" => batch_channel_memberships(),
        "Errors" => list(batch_create_channel_membership_error()())
      }
      
  """
  @type batch_create_channel_membership_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_channel_expiration_settings_response() :: %{
        "ChannelArn" => String.t(),
        "ExpirationSettings" => expiration_settings()
      }
      
  """
  @type put_channel_expiration_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_failure_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t()
      }
      
  """
  @type service_failure_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      identity() :: %{
        "Arn" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type identity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      forbidden_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t()
      }
      
  """
  @type forbidden_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_channel_flow_response() :: %{
        "ChannelFlowArn" => String.t()
      }
      
  """
  @type update_channel_flow_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_channel_moderated_by_app_instance_user_response() :: %{
        "Channel" => channel_moderated_by_app_instance_user_summary()
      }
      
  """
  @type describe_channel_moderated_by_app_instance_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      channel_membership() :: %{
        "ChannelArn" => String.t(),
        "CreatedTimestamp" => non_neg_integer(),
        "InvitedBy" => identity(),
        "LastUpdatedTimestamp" => non_neg_integer(),
        "Member" => identity(),
        "SubChannelId" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type channel_membership() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      message_attribute_value() :: %{
        "StringValues" => list(String.t()())
      }
      
  """
  @type message_attribute_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unauthorized_client_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t()
      }
      
  """
  @type unauthorized_client_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      redact_channel_message_request() :: %{
        optional("SubChannelId") => String.t(),
        required("ChimeBearer") => String.t()
      }
      
  """
  @type redact_channel_message_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_channels_request() :: %{
        optional("ChimeBearer") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("Fields") => list(search_field()())
      }
      
  """
  @type search_channels_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_channel_message_request() :: %{
        optional("ContentType") => String.t(),
        optional("Metadata") => String.t(),
        optional("SubChannelId") => String.t(),
        required("ChimeBearer") => String.t(),
        required("Content") => String.t()
      }
      
  """
  @type update_channel_message_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_channel_moderator_request() :: %{
        required("ChannelModeratorArn") => String.t(),
        required("ChimeBearer") => String.t()
      }
      
  """
  @type create_channel_moderator_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttled_client_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t()
      }
      
  """
  @type throttled_client_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_channels_associated_with_channel_flow_response() :: %{
        "Channels" => list(channel_associated_with_flow_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_channels_associated_with_channel_flow_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_channel_membership_response() :: %{
        "ChannelMembership" => channel_membership()
      }
      
  """
  @type describe_channel_membership_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_channel_ban_request() :: %{
        required("ChimeBearer") => String.t(),
        required("MemberArn") => String.t()
      }
      
  """
  @type create_channel_ban_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_channel_flow_request() :: %{}
      
  """
  @type describe_channel_flow_request() :: %{}

  @typedoc """

  ## Example:
      
      app_instance_user_membership_summary() :: %{
        "ReadMarkerTimestamp" => non_neg_integer(),
        "SubChannelId" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type app_instance_user_membership_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_channel_message_response() :: %{
        "ChannelArn" => String.t(),
        "MessageId" => String.t(),
        "Status" => channel_message_status_structure(),
        "SubChannelId" => String.t()
      }
      
  """
  @type send_channel_message_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      processor() :: %{
        "Configuration" => processor_configuration(),
        "ExecutionOrder" => integer(),
        "FallbackAction" => list(any()),
        "Name" => String.t()
      }
      
  """
  @type processor() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      expiration_settings() :: %{
        "ExpirationCriterion" => list(any()),
        "ExpirationDays" => integer()
      }
      
  """
  @type expiration_settings() :: %{String.t() => any()}

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
      
      channel_message_callback() :: %{
        "Content" => String.t(),
        "ContentType" => String.t(),
        "MessageAttributes" => map(),
        "MessageId" => String.t(),
        "Metadata" => String.t(),
        "PushNotification" => push_notification_configuration(),
        "SubChannelId" => String.t()
      }
      
  """
  @type channel_message_callback() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_sub_channels_response() :: %{
        "ChannelArn" => String.t(),
        "NextToken" => String.t(),
        "SubChannels" => list(sub_channel_summary()())
      }
      
  """
  @type list_sub_channels_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_channel_membership_preferences_request() :: %{
        required("ChimeBearer") => String.t()
      }
      
  """
  @type get_channel_membership_preferences_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_channels_moderated_by_app_instance_user_response() :: %{
        "Channels" => list(channel_moderated_by_app_instance_user_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_channels_moderated_by_app_instance_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_channel_membership_preferences_request() :: %{
        required("ChimeBearer") => String.t(),
        required("Preferences") => channel_membership_preferences()
      }
      
  """
  @type put_channel_membership_preferences_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_channels_moderated_by_app_instance_user_request() :: %{
        optional("AppInstanceUserArn") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ChimeBearer") => String.t()
      }
      
  """
  @type list_channels_moderated_by_app_instance_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      target() :: %{
        "MemberArn" => String.t()
      }
      
  """
  @type target() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_channel_moderator_request() :: %{
        required("ChimeBearer") => String.t()
      }
      
  """
  @type describe_channel_moderator_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      channel_flow() :: %{
        "ChannelFlowArn" => String.t(),
        "CreatedTimestamp" => non_neg_integer(),
        "LastUpdatedTimestamp" => non_neg_integer(),
        "Name" => String.t(),
        "Processors" => list(processor()())
      }
      
  """
  @type channel_flow() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      channel_summary() :: %{
        "ChannelArn" => String.t(),
        "LastMessageTimestamp" => non_neg_integer(),
        "Metadata" => String.t(),
        "Mode" => list(any()),
        "Name" => String.t(),
        "Privacy" => list(any())
      }
      
  """
  @type channel_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      channel_flow_callback_request() :: %{
        optional("DeleteResource") => boolean(),
        required("CallbackId") => String.t(),
        required("ChannelMessage") => channel_message_callback()
      }
      
  """
  @type channel_flow_callback_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_channel_message_response() :: %{
        "ChannelMessage" => channel_message()
      }
      
  """
  @type get_channel_message_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_channel_membership_request() :: %{
        optional("SubChannelId") => String.t(),
        required("ChimeBearer") => String.t()
      }
      
  """
  @type describe_channel_membership_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_messaging_streaming_configurations_response() :: %{
        "StreamingConfigurations" => list(streaming_configuration()())
      }
      
  """
  @type put_messaging_streaming_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_channel_flow_request() :: %{
        required("Name") => String.t(),
        required("Processors") => list(processor()())
      }
      
  """
  @type update_channel_flow_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_channel_flow_request() :: %{
        required("ChimeBearer") => String.t()
      }
      
  """
  @type disassociate_channel_flow_request() :: %{String.t() => any()}

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
      
      channel_membership_preferences() :: %{
        "PushNotifications" => push_notification_preferences()
      }
      
  """
  @type channel_membership_preferences() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      channel_ban_summary() :: %{
        "Member" => identity()
      }
      
  """
  @type channel_ban_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_channel_response() :: %{
        "Channel" => channel()
      }
      
  """
  @type describe_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_channel_ban_request() :: %{
        required("ChimeBearer") => String.t()
      }
      
  """
  @type delete_channel_ban_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_limit_exceeded_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t()
      }
      
  """
  @type resource_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_channel_bans_response() :: %{
        "ChannelArn" => String.t(),
        "ChannelBans" => list(channel_ban_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_channel_bans_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      not_found_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t()
      }
      
  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_channel_request() :: %{
        required("ChimeBearer") => String.t()
      }
      
  """
  @type describe_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_channel_memberships_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SubChannelId") => String.t(),
        optional("Type") => list(any()),
        required("ChimeBearer") => String.t()
      }
      
  """
  @type list_channel_memberships_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      channel_membership_summary() :: %{
        "Member" => identity()
      }
      
  """
  @type channel_membership_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_channel_request() :: %{
        optional("ChannelId") => String.t(),
        optional("ElasticChannelConfiguration") => elastic_channel_configuration(),
        optional("ExpirationSettings") => expiration_settings(),
        optional("MemberArns") => list(String.t()()),
        optional("Metadata") => String.t(),
        optional("Mode") => list(any()),
        optional("ModeratorArns") => list(String.t()()),
        optional("Privacy") => list(any()),
        optional("Tags") => list(tag()()),
        required("AppInstanceArn") => String.t(),
        required("ChimeBearer") => String.t(),
        required("ClientRequestToken") => String.t(),
        required("Name") => String.t()
      }
      
  """
  @type create_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_messaging_session_endpoint_request() :: %{}
      
  """
  @type get_messaging_session_endpoint_request() :: %{}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_messaging_streaming_configurations_request() :: %{
        required("StreamingConfigurations") => list(streaming_configuration()())
      }
      
  """
  @type put_messaging_streaming_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_unavailable_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t()
      }
      
  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_channel_memberships_for_app_instance_user_response() :: %{
        "ChannelMemberships" => list(channel_membership_for_app_instance_user_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_channel_memberships_for_app_instance_user_response() :: %{String.t() => any()}

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
      
      create_channel_membership_request() :: %{
        optional("SubChannelId") => String.t(),
        required("ChimeBearer") => String.t(),
        required("MemberArn") => String.t(),
        required("Type") => list(any())
      }
      
  """
  @type create_channel_membership_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      push_notification_preferences() :: %{
        "AllowNotifications" => list(any()),
        "FilterRule" => String.t()
      }
      
  """
  @type push_notification_preferences() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_messaging_session_endpoint_response() :: %{
        "Endpoint" => messaging_session_endpoint()
      }
      
  """
  @type get_messaging_session_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_channel_request() :: %{
        optional("Metadata") => String.t(),
        optional("Mode") => list(any()),
        optional("Name") => String.t(),
        required("ChimeBearer") => String.t()
      }
      
  """
  @type update_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_channel_membership_preferences_response() :: %{
        "ChannelArn" => String.t(),
        "Member" => identity(),
        "Preferences" => channel_membership_preferences()
      }
      
  """
  @type put_channel_membership_preferences_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_channel_flow_request() :: %{
        optional("Tags") => list(tag()()),
        required("AppInstanceArn") => String.t(),
        required("ClientRequestToken") => String.t(),
        required("Name") => String.t(),
        required("Processors") => list(processor()())
      }
      
  """
  @type create_channel_flow_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_channel_read_marker_request() :: %{
        required("ChimeBearer") => String.t()
      }
      
  """
  @type update_channel_read_marker_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      channel_moderated_by_app_instance_user_summary() :: %{
        "ChannelSummary" => channel_summary()
      }
      
  """
  @type channel_moderated_by_app_instance_user_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      channel_message() :: %{
        "ChannelArn" => String.t(),
        "Content" => String.t(),
        "ContentType" => String.t(),
        "CreatedTimestamp" => non_neg_integer(),
        "LastEditedTimestamp" => non_neg_integer(),
        "LastUpdatedTimestamp" => non_neg_integer(),
        "MessageAttributes" => map(),
        "MessageId" => String.t(),
        "Metadata" => String.t(),
        "Persistence" => list(any()),
        "Redacted" => boolean(),
        "Sender" => identity(),
        "Status" => channel_message_status_structure(),
        "SubChannelId" => String.t(),
        "Target" => list(target()()),
        "Type" => list(any())
      }
      
  """
  @type channel_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      messaging_session_endpoint() :: %{
        "Url" => String.t()
      }
      
  """
  @type messaging_session_endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_channel_message_response() :: %{
        "ChannelArn" => String.t(),
        "MessageId" => String.t(),
        "Status" => channel_message_status_structure(),
        "SubChannelId" => String.t()
      }
      
  """
  @type update_channel_message_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      channel_associated_with_flow_summary() :: %{
        "ChannelArn" => String.t(),
        "Metadata" => String.t(),
        "Mode" => list(any()),
        "Name" => String.t(),
        "Privacy" => list(any())
      }
      
  """
  @type channel_associated_with_flow_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_channel_message_request() :: %{
        optional("SubChannelId") => String.t(),
        required("ChimeBearer") => String.t()
      }
      
  """
  @type delete_channel_message_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_field() :: %{
        "Key" => list(any()),
        "Operator" => list(any()),
        "Values" => list(String.t()())
      }
      
  """
  @type search_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_channel_flow_request() :: %{}
      
  """
  @type delete_channel_flow_request() :: %{}

  @typedoc """

  ## Example:
      
      list_channel_moderators_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ChimeBearer") => String.t()
      }
      
  """
  @type list_channel_moderators_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lambda_configuration() :: %{
        "InvocationType" => list(any()),
        "ResourceArn" => String.t()
      }
      
  """
  @type lambda_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_channels_associated_with_channel_flow_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ChannelFlowArn") => String.t()
      }
      
  """
  @type list_channels_associated_with_channel_flow_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_create_channel_membership_request() :: %{
        optional("SubChannelId") => String.t(),
        optional("Type") => list(any()),
        required("ChimeBearer") => String.t(),
        required("MemberArns") => list(String.t()())
      }
      
  """
  @type batch_create_channel_membership_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_channel_membership_for_app_instance_user_request() :: %{
        required("AppInstanceUserArn") => String.t(),
        required("ChimeBearer") => String.t()
      }
      
  """
  @type describe_channel_membership_for_app_instance_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_channel_membership_request() :: %{
        optional("SubChannelId") => String.t(),
        required("ChimeBearer") => String.t()
      }
      
  """
  @type delete_channel_membership_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_channel_messages_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("NotAfter") => non_neg_integer(),
        optional("NotBefore") => non_neg_integer(),
        optional("SortOrder") => list(any()),
        optional("SubChannelId") => String.t(),
        required("ChimeBearer") => String.t()
      }
      
  """
  @type list_channel_messages_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_channel_message_request() :: %{
        optional("ContentType") => String.t(),
        optional("MessageAttributes") => map(),
        optional("Metadata") => String.t(),
        optional("PushNotification") => push_notification_configuration(),
        optional("SubChannelId") => String.t(),
        optional("Target") => list(target()()),
        required("ChimeBearer") => String.t(),
        required("ClientRequestToken") => String.t(),
        required("Content") => String.t(),
        required("Persistence") => list(any()),
        required("Type") => list(any())
      }
      
  """
  @type send_channel_message_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceARN") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_messaging_streaming_configurations_request() :: %{}
      
  """
  @type delete_messaging_streaming_configurations_request() :: %{}

  @typedoc """

  ## Example:
      
      get_channel_message_status_response() :: %{
        "Status" => channel_message_status_structure()
      }
      
  """
  @type get_channel_message_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      processor_configuration() :: %{
        "Lambda" => lambda_configuration()
      }
      
  """
  @type processor_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_channel_moderators_response() :: %{
        "ChannelArn" => String.t(),
        "ChannelModerators" => list(channel_moderator_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_channel_moderators_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_channel_message_request() :: %{
        optional("SubChannelId") => String.t(),
        required("ChimeBearer") => String.t()
      }
      
  """
  @type get_channel_message_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_channel_ban_response() :: %{
        "ChannelBan" => channel_ban()
      }
      
  """
  @type describe_channel_ban_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_channel_flow_response() :: %{
        "ChannelFlowArn" => String.t()
      }
      
  """
  @type create_channel_flow_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_sub_channels_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ChimeBearer") => String.t()
      }
      
  """
  @type list_sub_channels_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      channel_ban() :: %{
        "ChannelArn" => String.t(),
        "CreatedBy" => identity(),
        "CreatedTimestamp" => non_neg_integer(),
        "Member" => identity()
      }
      
  """
  @type channel_ban() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      push_notification_configuration() :: %{
        "Body" => String.t(),
        "Title" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type push_notification_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_channel_flow_request() :: %{
        required("ChannelFlowArn") => String.t(),
        required("ChimeBearer") => String.t()
      }
      
  """
  @type associate_channel_flow_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      channel() :: %{
        "ChannelArn" => String.t(),
        "ChannelFlowArn" => String.t(),
        "CreatedBy" => identity(),
        "CreatedTimestamp" => non_neg_integer(),
        "ElasticChannelConfiguration" => elastic_channel_configuration(),
        "ExpirationSettings" => expiration_settings(),
        "LastMessageTimestamp" => non_neg_integer(),
        "LastUpdatedTimestamp" => non_neg_integer(),
        "Metadata" => String.t(),
        "Mode" => list(any()),
        "Name" => String.t(),
        "Privacy" => list(any())
      }
      
  """
  @type channel() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_channel_memberships_response() :: %{
        "ChannelArn" => String.t(),
        "ChannelMemberships" => list(channel_membership_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_channel_memberships_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      channel_moderator() :: %{
        "ChannelArn" => String.t(),
        "CreatedBy" => identity(),
        "CreatedTimestamp" => non_neg_integer(),
        "Moderator" => identity()
      }
      
  """
  @type channel_moderator() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      channel_message_status_structure() :: %{
        "Detail" => String.t(),
        "Value" => list(any())
      }
      
  """
  @type channel_message_status_structure() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_channel_expiration_settings_request() :: %{
        optional("ChimeBearer") => String.t(),
        optional("ExpirationSettings") => expiration_settings()
      }
      
  """
  @type put_channel_expiration_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_channel_ban_response() :: %{
        "ChannelArn" => String.t(),
        "Member" => identity()
      }
      
  """
  @type create_channel_ban_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_create_channel_membership_error() :: %{
        "ErrorCode" => list(any()),
        "ErrorMessage" => String.t(),
        "MemberArn" => String.t()
      }
      
  """
  @type batch_create_channel_membership_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      channel_flow_summary() :: %{
        "ChannelFlowArn" => String.t(),
        "Name" => String.t(),
        "Processors" => list(processor()())
      }
      
  """
  @type channel_flow_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bad_request_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t()
      }
      
  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_channel_read_marker_response() :: %{
        "ChannelArn" => String.t()
      }
      
  """
  @type update_channel_read_marker_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_channel_membership_preferences_response() :: %{
        "ChannelArn" => String.t(),
        "Member" => identity(),
        "Preferences" => channel_membership_preferences()
      }
      
  """
  @type get_channel_membership_preferences_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      channel_moderator_summary() :: %{
        "Moderator" => identity()
      }
      
  """
  @type channel_moderator_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_channel_memberships() :: %{
        "ChannelArn" => String.t(),
        "InvitedBy" => identity(),
        "Members" => list(identity()()),
        "SubChannelId" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type batch_channel_memberships() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_channel_response() :: %{
        "ChannelArn" => String.t()
      }
      
  """
  @type update_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_channel_ban_request() :: %{
        required("ChimeBearer") => String.t()
      }
      
  """
  @type describe_channel_ban_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_channel_membership_for_app_instance_user_response() :: %{
        "ChannelMembership" => channel_membership_for_app_instance_user_summary()
      }
      
  """
  @type describe_channel_membership_for_app_instance_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      channel_flow_callback_response() :: %{
        "CallbackId" => String.t(),
        "ChannelArn" => String.t()
      }
      
  """
  @type channel_flow_callback_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_channels_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Privacy") => list(any()),
        required("AppInstanceArn") => String.t(),
        required("ChimeBearer") => String.t()
      }
      
  """
  @type list_channels_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      elastic_channel_configuration() :: %{
        "MaximumSubChannels" => integer(),
        "MinimumMembershipPercentage" => integer(),
        "TargetMembershipsPerSubChannel" => integer()
      }
      
  """
  @type elastic_channel_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      channel_message_summary() :: %{
        "Content" => String.t(),
        "ContentType" => String.t(),
        "CreatedTimestamp" => non_neg_integer(),
        "LastEditedTimestamp" => non_neg_integer(),
        "LastUpdatedTimestamp" => non_neg_integer(),
        "MessageAttributes" => map(),
        "MessageId" => String.t(),
        "Metadata" => String.t(),
        "Redacted" => boolean(),
        "Sender" => identity(),
        "Status" => channel_message_status_structure(),
        "Target" => list(target()()),
        "Type" => list(any())
      }
      
  """
  @type channel_message_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_channel_message_status_request() :: %{
        optional("SubChannelId") => String.t(),
        required("ChimeBearer") => String.t()
      }
      
  """
  @type get_channel_message_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_messaging_streaming_configurations_request() :: %{}
      
  """
  @type get_messaging_streaming_configurations_request() :: %{}

  @typedoc """

  ## Example:
      
      search_channels_response() :: %{
        "Channels" => list(channel_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type search_channels_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_channel_membership_response() :: %{
        "ChannelArn" => String.t(),
        "Member" => identity(),
        "SubChannelId" => String.t()
      }
      
  """
  @type create_channel_membership_response() :: %{String.t() => any()}

  @type associate_channel_flow_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type batch_create_channel_membership_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | resource_limit_exceeded_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type channel_flow_callback_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_channel_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_channel_ban_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_channel_flow_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_channel_membership_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_channel_moderator_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_channel_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_channel_ban_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_channel_flow_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_channel_membership_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_channel_message_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_channel_moderator_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_messaging_streaming_configurations_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type describe_channel_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type describe_channel_ban_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type describe_channel_flow_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type describe_channel_membership_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type describe_channel_membership_for_app_instance_user_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type describe_channel_moderated_by_app_instance_user_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type describe_channel_moderator_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type disassociate_channel_flow_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_channel_membership_preferences_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_channel_message_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_channel_message_status_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_messaging_session_endpoint_errors() ::
          service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_messaging_streaming_configurations_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_channel_bans_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_channel_flows_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_channel_memberships_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_channel_memberships_for_app_instance_user_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_channel_messages_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_channel_moderators_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_channels_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_channels_associated_with_channel_flow_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_channels_moderated_by_app_instance_user_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_sub_channels_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_tags_for_resource_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type put_channel_expiration_settings_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type put_channel_membership_preferences_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type put_messaging_streaming_configurations_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type redact_channel_message_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type search_channels_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type send_channel_message_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type tag_resource_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type untag_resource_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_channel_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_channel_flow_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_channel_message_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_channel_read_marker_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  def metadata do
    %{
      api_version: "2021-05-15",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "messaging-chime",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Chime SDK Messaging",
      signature_version: "v4",
      signing_name: "chime",
      target_prefix: nil
    }
  end

  @doc """
  Associates a channel flow with a channel. Once associated, all messages to that
  channel go through channel flow processors. To stop processing, use the
  `DisassociateChannelFlow` API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20AssociateChannelFlow&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_arn` (`t:string` required) The ARN of the channel.
  * `:chime_bearer` (`t:string` required) The AppInstanceUserArn of the user
    making the API call.
  """
  @spec associate_channel_flow(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_channel_flow_errors()}
  def associate_channel_flow(%Client{} = client, channel_arn, chime_bearer, options \\ [])
      when is_binary(chime_bearer) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}/channel-flow"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-chime-bearer", chime_bearer}]

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Adds a specified number of users and bots to a channel.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20BatchCreateChannelMembership&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_arn` (`t:string` required) The ARN of the channel to which you're
    adding users or bots.
  * `:chime_bearer` (`t:string` required) The ARN of the AppInstanceUser or
    AppInstanceBot that makes the API call.
  """
  @spec batch_create_channel_membership(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, batch_create_channel_membership_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_create_channel_membership_errors()}
  def batch_create_channel_membership(
        %Client{} = client,
        channel_arn,
        chime_bearer,
        options \\ []
      )
      when is_binary(chime_bearer) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}/memberships?operation=batch-create"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-chime-bearer", chime_bearer}]

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
  Calls back Amazon Chime SDK messaging with a processing response message. This
  should be invoked from the processor Lambda. This is a developer API. You can
  return one of the following processing responses:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20ChannelFlowCallback&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_arn` (`t:string` required) The ARN of the channel.
  """
  @spec channel_flow_callback(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, channel_flow_callback_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, channel_flow_callback_errors()}
  def channel_flow_callback(%Client{} = client, channel_arn, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}?operation=channel-flow-callback"

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
  Creates a channel to which you can add users and send messages. **Restriction**:
  You can't change a channel's privacy.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20CreateChannel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:chime_bearer` (`t:string` required) The ARN of the AppInstanceUser or
    AppInstanceBot that makes the API call.
  """
  @spec create_channel(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_channel_errors()}
  def create_channel(%Client{} = client, chime_bearer, options \\ [])
      when is_binary(chime_bearer) do
    url_path = "/channels"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-chime-bearer", chime_bearer}]

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Permanently bans a member from a channel. Moderators can't add banned members to
  a channel. To undo a ban, you first have to `DeleteChannelBan`, and then
  `CreateChannelMembership`. Bans are cleaned up when you delete users or
  channels. If you ban a user who is already part of a channel, that user is
  automatically kicked from the channel.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20CreateChannelBan&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_arn` (`t:string` required) The ARN of the ban request.
  * `:chime_bearer` (`t:string` required) The ARN of the AppInstanceUser or
    AppInstanceBot that makes the API call.
  """
  @spec create_channel_ban(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, create_channel_ban_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_channel_ban_errors()}
  def create_channel_ban(%Client{} = client, channel_arn, chime_bearer, options \\ [])
      when is_binary(chime_bearer) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}/bans"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-chime-bearer", chime_bearer}]

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Creates a channel flow, a container for processors. Processors are AWS Lambda
  functions that perform actions on chat messages, such as stripping out
  profanity. You can associate channel flows with channels, and the processors
  in the channel flow then take action on all messages sent to that channel.
  This is a developer API. Channel flows process the following items:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20CreateChannelFlow&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec create_channel_flow(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_channel_flow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_channel_flow_errors()}
  def create_channel_flow(%Client{} = client, options \\ []) do
    url_path = "/channel-flows"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Adds a member to a channel. The `InvitedBy` field in `ChannelMembership` is
  derived from the request header. A channel member can:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20CreateChannelMembership&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_arn` (`t:string` required) The ARN of the channel to which you're
    adding users.
  * `:chime_bearer` (`t:string` required) The ARN of the AppInstanceUser or
    AppInstanceBot that makes the API call.
  """
  @spec create_channel_membership(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, create_channel_membership_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_channel_membership_errors()}
  def create_channel_membership(%Client{} = client, channel_arn, chime_bearer, options \\ [])
      when is_binary(chime_bearer) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}/memberships"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-chime-bearer", chime_bearer}]

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Creates a new `ChannelModerator`. A channel moderator can:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20CreateChannelModerator&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_arn` (`t:string` required) The ARN of the channel.
  * `:chime_bearer` (`t:string` required) The ARN of the AppInstanceUser or
    AppInstanceBot that makes the API call.
  """
  @spec create_channel_moderator(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, create_channel_moderator_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_channel_moderator_errors()}
  def create_channel_moderator(%Client{} = client, channel_arn, chime_bearer, options \\ [])
      when is_binary(chime_bearer) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}/moderators"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-chime-bearer", chime_bearer}]

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Immediately makes a channel and its memberships inaccessible and marks them for
  deletion. This is an irreversible process.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20DeleteChannel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_arn` (`t:string` required) The ARN of the channel being deleted.
  * `:chime_bearer` (`t:string` required) The ARN of the AppInstanceUser or
    AppInstanceBot that makes the API call.
  """
  @spec delete_channel(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_channel_errors()}
  def delete_channel(%Client{} = client, channel_arn, chime_bearer, options \\ [])
      when is_binary(chime_bearer) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-chime-bearer", chime_bearer}]

    # Optional headers

    # Required query params
    query_params = []

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
      204
    )
  end

  @doc """
  Removes a member from a channel's ban list.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20DeleteChannelBan&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_arn` (`t:string` required) The ARN of the channel from which the
    AppInstanceUser was banned.
  * `:member_arn` (`t:string` required) The ARN of the AppInstanceUser that you
    want to reinstate.
  * `:chime_bearer` (`t:string` required) The ARN of the AppInstanceUser or
    AppInstanceBot that makes the API call.
  """
  @spec delete_channel_ban(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_channel_ban_errors()}
  def delete_channel_ban(%Client{} = client, channel_arn, member_arn, chime_bearer, options \\ [])
      when is_binary(chime_bearer) do
    url_path =
      "/channels/#{AWS.Util.encode_uri(channel_arn)}/bans/#{AWS.Util.encode_uri(member_arn)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-chime-bearer", chime_bearer}]

    # Optional headers

    # Required query params
    query_params = []

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
      204
    )
  end

  @doc """
  Deletes a channel flow, an irreversible process. This is a developer API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20DeleteChannelFlow&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_flow_arn` (`t:string` required) The ARN of the channel flow.
  """
  @spec delete_channel_flow(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_channel_flow_errors()}
  def delete_channel_flow(%Client{} = client, channel_flow_arn, options \\ []) do
    url_path = "/channel-flows/#{AWS.Util.encode_uri(channel_flow_arn)}"

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

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      204
    )
  end

  @doc """
  Removes a member from a channel.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20DeleteChannelMembership&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_arn` (`t:string` required) The ARN of the channel from which you
    want to remove the user.
  * `:member_arn` (`t:string` required) The AppInstanceUserArn of the member that
    you're removing from the channel.
  * `:chime_bearer` (`t:string` required) The ARN of the AppInstanceUser or
    AppInstanceBot that makes the API call.

  ## Keyword parameters:
  * `:sub_channel_id` (`t:string`) The ID of the SubChannel in the request.
  """
  @spec delete_channel_membership(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_channel_membership_errors()}
  def delete_channel_membership(
        %Client{} = client,
        channel_arn,
        member_arn,
        chime_bearer,
        options \\ []
      )
      when is_binary(chime_bearer) do
    url_path =
      "/channels/#{AWS.Util.encode_uri(channel_arn)}/memberships/#{AWS.Util.encode_uri(member_arn)}"

    # Validate optional parameters
    optional_params = [sub_channel_id: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-chime-bearer", chime_bearer}]

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :sub_channel_id) do
        [{"sub-channel-id", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:sub_channel_id])

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
      204
    )
  end

  @doc """
  Deletes a channel message. Only admins can perform this action. Deletion makes
  messages inaccessible immediately. A background process deletes any revisions
  created by `UpdateChannelMessage`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20DeleteChannelMessage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_arn` (`t:string` required) The ARN of the channel.
  * `:message_id` (`t:string` required) The ID of the message being deleted.
  * `:chime_bearer` (`t:string` required) The ARN of the AppInstanceUser or
    AppInstanceBot that makes the API call.

  ## Keyword parameters:
  * `:sub_channel_id` (`t:string`) The ID of the SubChannel in the request.
  """
  @spec delete_channel_message(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_channel_message_errors()}
  def delete_channel_message(
        %Client{} = client,
        channel_arn,
        message_id,
        chime_bearer,
        options \\ []
      )
      when is_binary(chime_bearer) do
    url_path =
      "/channels/#{AWS.Util.encode_uri(channel_arn)}/messages/#{AWS.Util.encode_uri(message_id)}"

    # Validate optional parameters
    optional_params = [sub_channel_id: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-chime-bearer", chime_bearer}]

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :sub_channel_id) do
        [{"sub-channel-id", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:sub_channel_id])

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
      204
    )
  end

  @doc """
  Deletes a channel moderator.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20DeleteChannelModerator&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_arn` (`t:string` required) The ARN of the channel.
  * `:channel_moderator_arn` (`t:string` required) The AppInstanceUserArn of the
    moderator being deleted.
  * `:chime_bearer` (`t:string` required) The ARN of the AppInstanceUser or
    AppInstanceBot that makes the API call.
  """
  @spec delete_channel_moderator(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_channel_moderator_errors()}
  def delete_channel_moderator(
        %Client{} = client,
        channel_arn,
        channel_moderator_arn,
        chime_bearer,
        options \\ []
      )
      when is_binary(chime_bearer) do
    url_path =
      "/channels/#{AWS.Util.encode_uri(channel_arn)}/moderators/#{AWS.Util.encode_uri(channel_moderator_arn)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-chime-bearer", chime_bearer}]

    # Optional headers

    # Required query params
    query_params = []

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
      204
    )
  end

  @doc """
  Deletes the streaming configurations for an `AppInstance`. For more information,
  see [Streaming messaging
  data](https://docs.aws.amazon.com/chime-sdk/latest/dg/streaming-export.html)
  in the *Amazon Chime SDK Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20DeleteMessagingStreamingConfigurations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_instance_arn` (`t:string` required) The ARN of the streaming
    configurations being deleted.
  """
  @spec delete_messaging_streaming_configurations(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_messaging_streaming_configurations_errors()}
  def delete_messaging_streaming_configurations(
        %Client{} = client,
        app_instance_arn,
        options \\ []
      ) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}/streaming-configurations"

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

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      204
    )
  end

  @doc """
  Returns the full details of a channel in an Amazon Chime `AppInstance`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20DescribeChannel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_arn` (`t:string` required) The ARN of the channel.
  * `:chime_bearer` (`t:string` required) The ARN of the AppInstanceUser or
    AppInstanceBot that makes the API call.
  """
  @spec describe_channel(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_channel_errors()}
  def describe_channel(%Client{} = client, channel_arn, chime_bearer, options \\ [])
      when is_binary(chime_bearer) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-chime-bearer", chime_bearer}]

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the full details of a channel ban.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20DescribeChannelBan&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_arn` (`t:string` required) The ARN of the channel from which the
    user is banned.
  * `:member_arn` (`t:string` required) The AppInstanceUserArn of the member being
    banned.
  * `:chime_bearer` (`t:string` required) The ARN of the AppInstanceUser or
    AppInstanceBot that makes the API call.
  """
  @spec describe_channel_ban(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_channel_ban_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_channel_ban_errors()}
  def describe_channel_ban(
        %Client{} = client,
        channel_arn,
        member_arn,
        chime_bearer,
        options \\ []
      )
      when is_binary(chime_bearer) do
    url_path =
      "/channels/#{AWS.Util.encode_uri(channel_arn)}/bans/#{AWS.Util.encode_uri(member_arn)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-chime-bearer", chime_bearer}]

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the full details of a channel flow in an Amazon Chime `AppInstance`.
  This is a developer API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20DescribeChannelFlow&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_flow_arn` (`t:string` required) The ARN of the channel flow.
  """
  @spec describe_channel_flow(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_channel_flow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_channel_flow_errors()}
  def describe_channel_flow(%Client{} = client, channel_flow_arn, options \\ []) do
    url_path = "/channel-flows/#{AWS.Util.encode_uri(channel_flow_arn)}"

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
  Returns the full details of a user's channel membership.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20DescribeChannelMembership&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_arn` (`t:string` required) The ARN of the channel.
  * `:member_arn` (`t:string` required) The AppInstanceUserArn of the member.
  * `:chime_bearer` (`t:string` required) The ARN of the AppInstanceUser or
    AppInstanceBot that makes the API call.

  ## Keyword parameters:
  * `:sub_channel_id` (`t:string`) The ID of the SubChannel in the request. The
    response contains an ElasticChannelConfiguration object.
  """
  @spec describe_channel_membership(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, describe_channel_membership_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_channel_membership_errors()}
  def describe_channel_membership(
        %Client{} = client,
        channel_arn,
        member_arn,
        chime_bearer,
        options \\ []
      )
      when is_binary(chime_bearer) do
    url_path =
      "/channels/#{AWS.Util.encode_uri(channel_arn)}/memberships/#{AWS.Util.encode_uri(member_arn)}"

    # Validate optional parameters
    optional_params = [sub_channel_id: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-chime-bearer", chime_bearer}]

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :sub_channel_id) do
        [{"sub-channel-id", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:sub_channel_id])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the details of a channel based on the membership of the specified
  `AppInstanceUser` or `AppInstanceBot`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20DescribeChannelMembershipForAppInstanceUser&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_arn` (`t:string` required) The ARN of the channel to which the user
    belongs.
  * `:app_instance_user_arn` (`t:string` required) The ARN of the user or bot in a
    channel.
  * `:chime_bearer` (`t:string` required) The ARN of the AppInstanceUser or
    AppInstanceBot that makes the API call.
  """
  @spec describe_channel_membership_for_app_instance_user(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, describe_channel_membership_for_app_instance_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_channel_membership_for_app_instance_user_errors()}
  def describe_channel_membership_for_app_instance_user(
        %Client{} = client,
        channel_arn,
        app_instance_user_arn,
        chime_bearer,
        options \\ []
      )
      when is_binary(app_instance_user_arn) and is_binary(chime_bearer) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}?scope=app-instance-user-membership"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-chime-bearer", chime_bearer}]

    # Optional headers

    # Required query params
    query_params = [{"app-instance-user-arn", app_instance_user_arn}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the full details of a channel moderated by the specified
  `AppInstanceUser` or `AppInstanceBot`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20DescribeChannelModeratedByAppInstanceUser&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_arn` (`t:string` required) The ARN of the moderated channel.
  * `:app_instance_user_arn` (`t:string` required) The ARN of the user or bot in
    the moderated channel.
  * `:chime_bearer` (`t:string` required) The ARN of the AppInstanceUser or
    AppInstanceBot that makes the API call.
  """
  @spec describe_channel_moderated_by_app_instance_user(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, describe_channel_moderated_by_app_instance_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_channel_moderated_by_app_instance_user_errors()}
  def describe_channel_moderated_by_app_instance_user(
        %Client{} = client,
        channel_arn,
        app_instance_user_arn,
        chime_bearer,
        options \\ []
      )
      when is_binary(app_instance_user_arn) and is_binary(chime_bearer) do
    url_path =
      "/channels/#{AWS.Util.encode_uri(channel_arn)}?scope=app-instance-user-moderated-channel"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-chime-bearer", chime_bearer}]

    # Optional headers

    # Required query params
    query_params = [{"app-instance-user-arn", app_instance_user_arn}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the full details of a single ChannelModerator.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20DescribeChannelModerator&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_arn` (`t:string` required) The ARN of the channel.
  * `:channel_moderator_arn` (`t:string` required) The AppInstanceUserArn of the
    channel moderator.
  * `:chime_bearer` (`t:string` required) The ARN of the AppInstanceUser or
    AppInstanceBot that makes the API call.
  """
  @spec describe_channel_moderator(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, describe_channel_moderator_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_channel_moderator_errors()}
  def describe_channel_moderator(
        %Client{} = client,
        channel_arn,
        channel_moderator_arn,
        chime_bearer,
        options \\ []
      )
      when is_binary(chime_bearer) do
    url_path =
      "/channels/#{AWS.Util.encode_uri(channel_arn)}/moderators/#{AWS.Util.encode_uri(channel_moderator_arn)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-chime-bearer", chime_bearer}]

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Disassociates a channel flow from all its channels. Once disassociated, all
  messages to that channel stop going through the channel flow processor.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20DisassociateChannelFlow&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_arn` (`t:string` required) The ARN of the channel.
  * `:channel_flow_arn` (`t:string` required) The ARN of the channel flow.
  * `:chime_bearer` (`t:string` required) The AppInstanceUserArn of the user
    making the API call.
  """
  @spec disassociate_channel_flow(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_channel_flow_errors()}
  def disassociate_channel_flow(
        %Client{} = client,
        channel_arn,
        channel_flow_arn,
        chime_bearer,
        options \\ []
      )
      when is_binary(chime_bearer) do
    url_path =
      "/channels/#{AWS.Util.encode_uri(channel_arn)}/channel-flow/#{AWS.Util.encode_uri(channel_flow_arn)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-chime-bearer", chime_bearer}]

    # Optional headers

    # Required query params
    query_params = []

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
      204
    )
  end

  @doc """
  Gets the membership preferences of an `AppInstanceUser` or `AppInstanceBot` for
  the specified channel. A user or a bot must be a member of the channel and own
  the membership in order to retrieve membership preferences. Users or bots in
  the `AppInstanceAdmin` and channel moderator roles can't retrieve preferences
  for other users or bots. Banned users or bots can't retrieve membership
  preferences for the channel from which they are banned.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20GetChannelMembershipPreferences&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_arn` (`t:string` required) The ARN of the channel.
  * `:member_arn` (`t:string` required) The AppInstanceUserArn of the member
    retrieving the preferences.
  * `:chime_bearer` (`t:string` required) The ARN of the AppInstanceUser or
    AppInstanceBot that makes the API call.
  """
  @spec get_channel_membership_preferences(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, get_channel_membership_preferences_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_channel_membership_preferences_errors()}
  def get_channel_membership_preferences(
        %Client{} = client,
        channel_arn,
        member_arn,
        chime_bearer,
        options \\ []
      )
      when is_binary(chime_bearer) do
    url_path =
      "/channels/#{AWS.Util.encode_uri(channel_arn)}/memberships/#{AWS.Util.encode_uri(member_arn)}/preferences"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-chime-bearer", chime_bearer}]

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the full details of a channel message.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20GetChannelMessage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_arn` (`t:string` required) The ARN of the channel.
  * `:message_id` (`t:string` required) The ID of the message.
  * `:chime_bearer` (`t:string` required) The ARN of the AppInstanceUser or
    AppInstanceBot that makes the API call.

  ## Keyword parameters:
  * `:sub_channel_id` (`t:string`) The ID of the SubChannel in the request.
  """
  @spec get_channel_message(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_channel_message_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_channel_message_errors()}
  def get_channel_message(
        %Client{} = client,
        channel_arn,
        message_id,
        chime_bearer,
        options \\ []
      )
      when is_binary(chime_bearer) do
    url_path =
      "/channels/#{AWS.Util.encode_uri(channel_arn)}/messages/#{AWS.Util.encode_uri(message_id)}"

    # Validate optional parameters
    optional_params = [sub_channel_id: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-chime-bearer", chime_bearer}]

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :sub_channel_id) do
        [{"sub-channel-id", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:sub_channel_id])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets message status for a specified `messageId`. Use this API to determine the
  intermediate status of messages going through channel flow processing. The API
  provides an alternative to retrieving message status if the event was not
  received because a client wasn't connected to a websocket. Messages can have
  any one of these statuses.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20GetChannelMessageStatus&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_arn` (`t:string` required) The ARN of the channel
  * `:message_id` (`t:string` required) The ID of the message.
  * `:chime_bearer` (`t:string` required) The AppInstanceUserArn of the user
    making the API call.

  ## Keyword parameters:
  * `:sub_channel_id` (`t:string`) The ID of the SubChannel in the request.
  """
  @spec get_channel_message_status(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, get_channel_message_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_channel_message_status_errors()}
  def get_channel_message_status(
        %Client{} = client,
        channel_arn,
        message_id,
        chime_bearer,
        options \\ []
      )
      when is_binary(chime_bearer) do
    url_path =
      "/channels/#{AWS.Util.encode_uri(channel_arn)}/messages/#{AWS.Util.encode_uri(message_id)}?scope=message-status"

    # Validate optional parameters
    optional_params = [sub_channel_id: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-chime-bearer", chime_bearer}]

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :sub_channel_id) do
        [{"sub-channel-id", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:sub_channel_id])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  The details of the endpoint for the messaging session.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20GetMessagingSessionEndpoint&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec get_messaging_session_endpoint(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_messaging_session_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_messaging_session_endpoint_errors()}
  def get_messaging_session_endpoint(%Client{} = client, options \\ []) do
    url_path = "/endpoints/messaging-session"

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
  Retrieves the data streaming configuration for an `AppInstance`. For more
  information, see [Streaming messaging
  data](https://docs.aws.amazon.com/chime-sdk/latest/dg/streaming-export.html)
  in the *Amazon Chime SDK Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20GetMessagingStreamingConfigurations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_instance_arn` (`t:string` required) The ARN of the streaming
    configurations.
  """
  @spec get_messaging_streaming_configurations(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_messaging_streaming_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_messaging_streaming_configurations_errors()}
  def get_messaging_streaming_configurations(%Client{} = client, app_instance_arn, options \\ []) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}/streaming-configurations"

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
  Lists all the users and bots banned from a particular channel.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20ListChannelBans&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_arn` (`t:string` required) The ARN of the channel.
  * `:chime_bearer` (`t:string` required) The ARN of the AppInstanceUser or
    AppInstanceBot that makes the API call.

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of bans that you want
    returned.
  * `:next_token` (`t:string`) The token passed by previous API calls until all
    requested bans are returned.
  """
  @spec list_channel_bans(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_channel_bans_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_channel_bans_errors()}
  def list_channel_bans(%Client{} = client, channel_arn, chime_bearer, options \\ [])
      when is_binary(chime_bearer) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}/bans"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-chime-bearer", chime_bearer}]

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"next-token", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"max-results", opt_val} | query_params]
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
  Returns a paginated lists of all the channel flows created under a single Chime.
  This is a developer API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20ListChannelFlows&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_instance_arn` (`t:string` required) The ARN of the app instance.

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of channel flows that you want
    to return.
  * `:next_token` (`t:string`) The token passed by previous API calls until all
    requested channel flows are returned.
  """
  @spec list_channel_flows(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_channel_flows_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_channel_flows_errors()}
  def list_channel_flows(%Client{} = client, app_instance_arn, options \\ [])
      when is_binary(app_instance_arn) do
    url_path = "/channel-flows"

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
    query_params = [{"app-instance-arn", app_instance_arn}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"next-token", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"max-results", opt_val} | query_params]
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
  Lists all channel memberships in a channel. The `x-amz-chime-bearer` request
  header is mandatory. Use the ARN of the `AppInstanceUser` or `AppInstanceBot`
  that makes the API call as the value in the header.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20ListChannelMemberships&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_arn` (`t:string` required) The maximum number of channel memberships
    that you want returned.
  * `:chime_bearer` (`t:string` required) The ARN of the AppInstanceUser or
    AppInstanceBot that makes the API call.

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of channel memberships that
    you want returned.
  * `:next_token` (`t:string`) The token passed by previous API calls until all
    requested channel memberships are returned.
  * `:sub_channel_id` (`t:string`) The ID of the SubChannel in the request.
  * `:type` (`t:enum["DEFAULT|HIDDEN"]`) The membership type of a user, DEFAULT or
    HIDDEN. Default members are returned as part of ListChannelMemberships if no
    type is specified. Hidden members are only returned if the type filter in
    ListChannelMemberships equals HIDDEN.
  """
  @spec list_channel_memberships(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_channel_memberships_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_channel_memberships_errors()}
  def list_channel_memberships(%Client{} = client, channel_arn, chime_bearer, options \\ [])
      when is_binary(chime_bearer) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}/memberships"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, sub_channel_id: nil, type: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-chime-bearer", chime_bearer}]

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :type) do
        [{"type", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :sub_channel_id) do
        [{"sub-channel-id", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"next-token", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"max-results", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token, :sub_channel_id, :type])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all channels that an `AppInstanceUser` or `AppInstanceBot` is a part of.
  Only an `AppInstanceAdmin` can call the API with a user ARN that is not their
  own.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20ListChannelMembershipsForAppInstanceUser&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:chime_bearer` (`t:string` required) The ARN of the AppInstanceUser or
    AppInstanceBot that makes the API call.

  ## Keyword parameters:
  * `:app_instance_user_arn` (`t:string`) The ARN of the user or bot.
  * `:max_results` (`t:integer`) The maximum number of users that you want
    returned.
  * `:next_token` (`t:string`) The token returned from previous API requests until
    the number of channel memberships is reached.
  """
  @spec list_channel_memberships_for_app_instance_user(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_channel_memberships_for_app_instance_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_channel_memberships_for_app_instance_user_errors()}
  def list_channel_memberships_for_app_instance_user(
        %Client{} = client,
        chime_bearer,
        options \\ []
      )
      when is_binary(chime_bearer) do
    url_path = "/channels?scope=app-instance-user-memberships"

    # Validate optional parameters
    optional_params = [app_instance_user_arn: nil, max_results: nil, next_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-chime-bearer", chime_bearer}]

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"next-token", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"max-results", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :app_instance_user_arn) do
        [{"app-instance-user-arn", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:app_instance_user_arn, :max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List all the messages in a channel. Returns a paginated list of
  `ChannelMessages`. By default, sorted by creation timestamp in descending
  order.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20ListChannelMessages&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_arn` (`t:string` required) The ARN of the channel.
  * `:chime_bearer` (`t:string` required) The ARN of the AppInstanceUser or
    AppInstanceBot that makes the API call.

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of messages that you want
    returned.
  * `:next_token` (`t:string`) The token passed by previous API calls until all
    requested messages are returned.
  * `:not_after` (`t:timestamp`) The final or ending time stamp for your requested
    messages.
  * `:not_before` (`t:timestamp`) The initial or starting time stamp for your
    requested messages.
  * `:sort_order` (`t:enum["ASCENDING|DESCENDING"]`) The order in which you want
    messages sorted. Default is Descending, based on time created.
  * `:sub_channel_id` (`t:string`) The ID of the SubChannel in the request.
  """
  @spec list_channel_messages(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_channel_messages_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_channel_messages_errors()}
  def list_channel_messages(%Client{} = client, channel_arn, chime_bearer, options \\ [])
      when is_binary(chime_bearer) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}/messages"

    # Validate optional parameters
    optional_params = [
      max_results: nil,
      next_token: nil,
      not_after: nil,
      not_before: nil,
      sort_order: nil,
      sub_channel_id: nil
    ]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-chime-bearer", chime_bearer}]

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :sub_channel_id) do
        [{"sub-channel-id", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :sort_order) do
        [{"sort-order", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :not_before) do
        [{"not-before", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :not_after) do
        [{"not-after", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"next-token", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"max-results", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :max_results,
        :next_token,
        :not_after,
        :not_before,
        :sort_order,
        :sub_channel_id
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all the moderators for a channel.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20ListChannelModerators&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_arn` (`t:string` required) The ARN of the channel.
  * `:chime_bearer` (`t:string` required) The ARN of the AppInstanceUser or
    AppInstanceBot that makes the API call.

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of moderators that you want
    returned.
  * `:next_token` (`t:string`) The token passed by previous API calls until all
    requested moderators are returned.
  """
  @spec list_channel_moderators(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_channel_moderators_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_channel_moderators_errors()}
  def list_channel_moderators(%Client{} = client, channel_arn, chime_bearer, options \\ [])
      when is_binary(chime_bearer) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}/moderators"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-chime-bearer", chime_bearer}]

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"next-token", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"max-results", opt_val} | query_params]
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
  Lists all Channels created under a single Chime App as a paginated list. You can
  specify filters to narrow results. **Functionality & restrictions**

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20ListChannels&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_instance_arn` (`t:string` required) The ARN of the AppInstance.
  * `:chime_bearer` (`t:string` required) The ARN of the AppInstanceUser or
    AppInstanceBot that makes the API call.

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of channels that you want to
    return.
  * `:next_token` (`t:string`) The token passed by previous API calls until all
    requested channels are returned.
  * `:privacy` (`t:enum["PRIVATE|PUBLIC"]`) The privacy setting. PUBLIC retrieves
    all the public channels. PRIVATE retrieves private channels. Only an
    AppInstanceAdmin can retrieve private channels.
  """
  @spec list_channels(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_channels_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_channels_errors()}
  def list_channels(%Client{} = client, app_instance_arn, chime_bearer, options \\ [])
      when is_binary(app_instance_arn) and is_binary(chime_bearer) do
    url_path = "/channels"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, privacy: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-chime-bearer", chime_bearer}]

    # Optional headers

    # Required query params
    query_params = [{"app-instance-arn", app_instance_arn}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :privacy) do
        [{"privacy", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"next-token", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"max-results", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token, :privacy])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all channels associated with a specified channel flow. You can associate a
  channel flow with multiple channels, but you can only associate a channel with
  one channel flow. This is a developer API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20ListChannelsAssociatedWithChannelFlow&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_flow_arn` (`t:string` required) The ARN of the channel flow.

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of channels that you want to
    return.
  * `:next_token` (`t:string`) The token passed by previous API calls until all
    requested channels are returned.
  """
  @spec list_channels_associated_with_channel_flow(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_channels_associated_with_channel_flow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_channels_associated_with_channel_flow_errors()}
  def list_channels_associated_with_channel_flow(
        %Client{} = client,
        channel_flow_arn,
        options \\ []
      )
      when is_binary(channel_flow_arn) do
    url_path = "/channels?scope=channel-flow-associations"

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
    query_params = [{"channel-flow-arn", channel_flow_arn}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"next-token", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"max-results", opt_val} | query_params]
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
  A list of the channels moderated by an `AppInstanceUser`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20ListChannelsModeratedByAppInstanceUser&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:chime_bearer` (`t:string` required) The ARN of the AppInstanceUser or
    AppInstanceBot that makes the API call.

  ## Keyword parameters:
  * `:app_instance_user_arn` (`t:string`) The ARN of the user or bot in the
    moderated channel.
  * `:max_results` (`t:integer`) The maximum number of channels in the request.
  * `:next_token` (`t:string`) The token returned from previous API requests until
    the number of channels moderated by the user is reached.
  """
  @spec list_channels_moderated_by_app_instance_user(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_channels_moderated_by_app_instance_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_channels_moderated_by_app_instance_user_errors()}
  def list_channels_moderated_by_app_instance_user(
        %Client{} = client,
        chime_bearer,
        options \\ []
      )
      when is_binary(chime_bearer) do
    url_path = "/channels?scope=app-instance-user-moderated-channels"

    # Validate optional parameters
    optional_params = [app_instance_user_arn: nil, max_results: nil, next_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-chime-bearer", chime_bearer}]

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"next-token", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"max-results", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :app_instance_user_arn) do
        [{"app-instance-user-arn", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:app_instance_user_arn, :max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all the SubChannels in an elastic channel when given a channel ID.
  Available only to the app instance admins and channel moderators of elastic
  channels.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20ListSubChannels&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_arn` (`t:string` required) The ARN of elastic channel.
  * `:chime_bearer` (`t:string` required) The AppInstanceUserArn of the user
    making the API call.

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of sub-channels that you want
    to return.
  * `:next_token` (`t:string`) The token passed by previous API calls until all
    requested sub-channels are returned.
  """
  @spec list_sub_channels(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_sub_channels_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_sub_channels_errors()}
  def list_sub_channels(%Client{} = client, channel_arn, chime_bearer, options \\ [])
      when is_binary(chime_bearer) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}/subchannels"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-chime-bearer", chime_bearer}]

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"next-token", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"max-results", opt_val} | query_params]
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
  Lists the tags applied to an Amazon Chime SDK messaging resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The ARN of the resource.
  """
  @spec list_tags_for_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ [])
      when is_binary(resource_arn) do
    url_path = "/tags"

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
    query_params = [{"arn", resource_arn}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Sets the number of days before the channel is automatically deleted.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20PutChannelExpirationSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_arn` (`t:string` required) The ARN of the channel.

  ## Keyword parameters:
  * `:chime_bearer` (`t:string`) The ARN of the AppInstanceUser or AppInstanceBot
    that makes the API call.
  """
  @spec put_channel_expiration_settings(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, put_channel_expiration_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_channel_expiration_settings_errors()}
  def put_channel_expiration_settings(%Client{} = client, channel_arn, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}/expiration-settings"

    # Validate optional parameters
    optional_params = [chime_bearer: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :chime_bearer) do
        [{"x-amz-chime-bearer", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:chime_bearer])

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Sets the membership preferences of an `AppInstanceUser` or `AppInstanceBot` for
  the specified channel. The user or bot must be a member of the channel. Only
  the user or bot who owns the membership can set preferences. Users or bots in
  the `AppInstanceAdmin` and channel moderator roles can't set preferences for
  other users. Banned users or bots can't set membership preferences for the
  channel from which they are banned.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20PutChannelMembershipPreferences&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_arn` (`t:string` required) The ARN of the channel.
  * `:member_arn` (`t:string` required) The ARN of the member setting the
    preferences.
  * `:chime_bearer` (`t:string` required) The ARN of the AppInstanceUser or
    AppInstanceBot that makes the API call.
  """
  @spec put_channel_membership_preferences(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, put_channel_membership_preferences_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_channel_membership_preferences_errors()}
  def put_channel_membership_preferences(
        %Client{} = client,
        channel_arn,
        member_arn,
        chime_bearer,
        options \\ []
      )
      when is_binary(chime_bearer) do
    url_path =
      "/channels/#{AWS.Util.encode_uri(channel_arn)}/memberships/#{AWS.Util.encode_uri(member_arn)}/preferences"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-chime-bearer", chime_bearer}]

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Sets the data streaming configuration for an `AppInstance`. For more
  information, see [Streaming messaging
  data](https://docs.aws.amazon.com/chime-sdk/latest/dg/streaming-export.html)
  in the *Amazon Chime SDK Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20PutMessagingStreamingConfigurations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_instance_arn` (`t:string` required) The ARN of the streaming
    configuration.
  """
  @spec put_messaging_streaming_configurations(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, put_messaging_streaming_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_messaging_streaming_configurations_errors()}
  def put_messaging_streaming_configurations(%Client{} = client, app_instance_arn, options \\ []) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}/streaming-configurations"

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

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Redacts message content, but not metadata. The message exists in the back end,
  but the action returns null content, and the state shows as redacted.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20RedactChannelMessage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_arn` (`t:string` required) The ARN of the channel containing the
    messages that you want to redact.
  * `:message_id` (`t:string` required) The ID of the message being redacted.
  * `:chime_bearer` (`t:string` required) The ARN of the AppInstanceUser or
    AppInstanceBot that makes the API call.
  """
  @spec redact_channel_message(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, redact_channel_message_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, redact_channel_message_errors()}
  def redact_channel_message(
        %Client{} = client,
        channel_arn,
        message_id,
        chime_bearer,
        options \\ []
      )
      when is_binary(chime_bearer) do
    url_path =
      "/channels/#{AWS.Util.encode_uri(channel_arn)}/messages/#{AWS.Util.encode_uri(message_id)}?operation=redact"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-chime-bearer", chime_bearer}]

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
  Allows the `ChimeBearer` to search channels by channel members. Users or bots
  can search across the channels that they belong to. Users in the
  `AppInstanceAdmin` role can search across all channels.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20SearchChannels&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of channels that you want
    returned.
  * `:next_token` (`t:string`) The token returned from previous API requests until
    the number of channels is reached.
  * `:chime_bearer` (`t:string`) The AppInstanceUserArn of the user making the API
    call.
  """
  @spec search_channels(AWS.Client.t(), Keyword.t()) ::
          {:ok, search_channels_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_channels_errors()}
  def search_channels(%Client{} = client, options \\ []) do
    url_path = "/channels?operation=search"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, chime_bearer: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :chime_bearer) do
        [{"x-amz-chime-bearer", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"next-token", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"max-results", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token, :chime_bearer])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Sends a message to a particular channel that the member is a part of.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20SendChannelMessage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_arn` (`t:string` required) The ARN of the channel.
  * `:chime_bearer` (`t:string` required) The ARN of the AppInstanceUser or
    AppInstanceBot that makes the API call.
  """
  @spec send_channel_message(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, send_channel_message_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_channel_message_errors()}
  def send_channel_message(%Client{} = client, channel_arn, chime_bearer, options \\ [])
      when is_binary(chime_bearer) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}/messages"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-chime-bearer", chime_bearer}]

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Applies the specified tags to the specified Amazon Chime SDK messaging resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec tag_resource(AWS.Client.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, options \\ []) do
    url_path = "/tags?operation=tag-resource"

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
  Removes the specified tags from the specified Amazon Chime SDK messaging
  resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec untag_resource(AWS.Client.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, options \\ []) do
    url_path = "/tags?operation=untag-resource"

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
  Update a channel's attributes. **Restriction**: You can't change a channel's
  privacy.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20UpdateChannel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_arn` (`t:string` required) The ARN of the channel.
  * `:chime_bearer` (`t:string` required) The ARN of the AppInstanceUser or
    AppInstanceBot that makes the API call.
  """
  @spec update_channel(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_channel_errors()}
  def update_channel(%Client{} = client, channel_arn, chime_bearer, options \\ [])
      when is_binary(chime_bearer) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-chime-bearer", chime_bearer}]

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates channel flow attributes. This is a developer API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20UpdateChannelFlow&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_flow_arn` (`t:string` required) The ARN of the channel flow.
  """
  @spec update_channel_flow(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_channel_flow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_channel_flow_errors()}
  def update_channel_flow(%Client{} = client, channel_flow_arn, options \\ []) do
    url_path = "/channel-flows/#{AWS.Util.encode_uri(channel_flow_arn)}"

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

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates the content of a message.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20UpdateChannelMessage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_arn` (`t:string` required) The ARN of the channel.
  * `:message_id` (`t:string` required) The ID string of the message being
    updated.
  * `:chime_bearer` (`t:string` required) The ARN of the AppInstanceUser or
    AppInstanceBot that makes the API call.
  """
  @spec update_channel_message(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_channel_message_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_channel_message_errors()}
  def update_channel_message(
        %Client{} = client,
        channel_arn,
        message_id,
        chime_bearer,
        options \\ []
      )
      when is_binary(chime_bearer) do
    url_path =
      "/channels/#{AWS.Util.encode_uri(channel_arn)}/messages/#{AWS.Util.encode_uri(message_id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-chime-bearer", chime_bearer}]

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  The details of the time when a user last read messages in a channel.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkmessaging%20UpdateChannelReadMarker&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_arn` (`t:string` required) The ARN of the channel.
  * `:chime_bearer` (`t:string` required) The ARN of the AppInstanceUser or
    AppInstanceBot that makes the API call.
  """
  @spec update_channel_read_marker(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_channel_read_marker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_channel_read_marker_errors()}
  def update_channel_read_marker(%Client{} = client, channel_arn, chime_bearer, options \\ [])
      when is_binary(chime_bearer) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}/readMarker"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-chime-bearer", chime_bearer}]

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end
end
