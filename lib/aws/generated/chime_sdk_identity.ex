# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ChimeSDKIdentity do
  @moduledoc """
  The Amazon Chime SDK Identity APIs in this section allow software developers to
  create
  and manage unique instances of their messaging applications.

  These APIs provide the
  overarching framework for creating and sending messages. For more information
  about the
  identity APIs, refer to [Amazon Chime SDK identity](https://docs.aws.amazon.com/chime/latest/APIReference/API_Operations_Amazon_Chime_SDK_Identity.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      list_app_instances_response() :: %{
        "AppInstances" => list(app_instance_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_app_instances_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      app_instance_bot_summary() :: %{
        "AppInstanceBotArn" => String.t(),
        "Metadata" => String.t(),
        "Name" => String.t()
      }

  """
  @type app_instance_bot_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_app_instance_user_expiration_settings_request() :: %{
        optional("ExpirationSettings") => expiration_settings()
      }

  """
  @type put_app_instance_user_expiration_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_app_instance_admin_request() :: %{}

  """
  @type delete_app_instance_admin_request() :: %{}

  @typedoc """

  ## Example:

      delete_app_instance_user_request() :: %{}

  """
  @type delete_app_instance_user_request() :: %{}

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

      list_app_instance_admins_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_app_instance_admins_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      endpoint_state() :: %{
        "Status" => list(any()),
        "StatusReason" => list(any())
      }

  """
  @type endpoint_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_app_instance_bots_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("AppInstanceArn") => String.t()
      }

  """
  @type list_app_instance_bots_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_app_instance_response() :: %{
        "AppInstanceArn" => String.t()
      }

  """
  @type create_app_instance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_app_instance_response() :: %{
        "AppInstanceArn" => String.t()
      }

  """
  @type update_app_instance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lex_configuration() :: %{
        "InvokedBy" => invoked_by(),
        "LexBotAliasArn" => String.t(),
        "LocaleId" => String.t(),
        "RespondsTo" => list(any()),
        "WelcomeIntent" => String.t()
      }

  """
  @type lex_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_app_instance_admins_response() :: %{
        "AppInstanceAdmins" => list(app_instance_admin_summary()()),
        "AppInstanceArn" => String.t(),
        "NextToken" => String.t()
      }

  """
  @type list_app_instance_admins_response() :: %{String.t() => any()}

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

      unauthorized_client_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t()
      }

  """
  @type unauthorized_client_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_app_instance_request() :: %{}

  """
  @type describe_app_instance_request() :: %{}

  @typedoc """

  ## Example:

      list_app_instances_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_app_instances_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configuration() :: %{
        "Lex" => lex_configuration()
      }

  """
  @type configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_app_instance_request() :: %{
        required("Metadata") => String.t(),
        required("Name") => String.t()
      }

  """
  @type update_app_instance_request() :: %{String.t() => any()}

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

      endpoint_attributes() :: %{
        "DeviceToken" => String.t(),
        "VoipDeviceToken" => String.t()
      }

  """
  @type endpoint_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_app_instance_users_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("AppInstanceArn") => String.t()
      }

  """
  @type list_app_instance_users_request() :: %{String.t() => any()}

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

      put_app_instance_retention_settings_request() :: %{
        required("AppInstanceRetentionSettings") => app_instance_retention_settings()
      }

  """
  @type put_app_instance_retention_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      register_app_instance_user_endpoint_request() :: %{
        optional("AllowMessages") => list(any()),
        optional("Name") => String.t(),
        required("ClientRequestToken") => String.t(),
        required("EndpointAttributes") => endpoint_attributes(),
        required("ResourceArn") => String.t(),
        required("Type") => list(any())
      }

  """
  @type register_app_instance_user_endpoint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_app_instance_retention_settings_request() :: %{}

  """
  @type get_app_instance_retention_settings_request() :: %{}

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

      delete_app_instance_bot_request() :: %{}

  """
  @type delete_app_instance_bot_request() :: %{}

  @typedoc """

  ## Example:

      put_app_instance_user_expiration_settings_response() :: %{
        "AppInstanceUserArn" => String.t(),
        "ExpirationSettings" => expiration_settings()
      }

  """
  @type put_app_instance_user_expiration_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_app_instance_user_endpoint_response() :: %{
        "AppInstanceUserArn" => String.t(),
        "EndpointId" => String.t()
      }

  """
  @type update_app_instance_user_endpoint_response() :: %{String.t() => any()}

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

      describe_app_instance_user_response() :: %{
        "AppInstanceUser" => app_instance_user()
      }

  """
  @type describe_app_instance_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_app_instance_bot_response() :: %{
        "AppInstanceBot" => app_instance_bot()
      }

  """
  @type describe_app_instance_bot_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_app_instance_response() :: %{
        "AppInstance" => app_instance()
      }

  """
  @type describe_app_instance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_app_instance_user_response() :: %{
        "AppInstanceUserArn" => String.t()
      }

  """
  @type update_app_instance_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_app_instance_users_response() :: %{
        "AppInstanceArn" => String.t(),
        "AppInstanceUsers" => list(app_instance_user_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_app_instance_users_response() :: %{String.t() => any()}

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

      app_instance_summary() :: %{
        "AppInstanceArn" => String.t(),
        "Metadata" => String.t(),
        "Name" => String.t()
      }

  """
  @type app_instance_summary() :: %{String.t() => any()}

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

      app_instance_user() :: %{
        "AppInstanceUserArn" => String.t(),
        "CreatedTimestamp" => non_neg_integer(),
        "ExpirationSettings" => expiration_settings(),
        "LastUpdatedTimestamp" => non_neg_integer(),
        "Metadata" => String.t(),
        "Name" => String.t()
      }

  """
  @type app_instance_user() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_app_instance_user_endpoints_response() :: %{
        "AppInstanceUserEndpoints" => list(app_instance_user_endpoint_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_app_instance_user_endpoints_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_app_instance_bot_response() :: %{
        "AppInstanceBotArn" => String.t()
      }

  """
  @type update_app_instance_bot_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => list(tag()())
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      channel_retention_settings() :: %{
        "RetentionDays" => integer()
      }

  """
  @type channel_retention_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      app_instance_user_endpoint() :: %{
        "AllowMessages" => list(any()),
        "AppInstanceUserArn" => String.t(),
        "CreatedTimestamp" => non_neg_integer(),
        "EndpointAttributes" => endpoint_attributes(),
        "EndpointId" => String.t(),
        "EndpointState" => endpoint_state(),
        "LastUpdatedTimestamp" => non_neg_integer(),
        "Name" => String.t(),
        "ResourceArn" => String.t(),
        "Type" => list(any())
      }

  """
  @type app_instance_user_endpoint() :: %{String.t() => any()}

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

      app_instance_user_endpoint_summary() :: %{
        "AllowMessages" => list(any()),
        "AppInstanceUserArn" => String.t(),
        "EndpointId" => String.t(),
        "EndpointState" => endpoint_state(),
        "Name" => String.t(),
        "Type" => list(any())
      }

  """
  @type app_instance_user_endpoint_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_app_instance_retention_settings_response() :: %{
        "AppInstanceRetentionSettings" => app_instance_retention_settings(),
        "InitiateDeletionTimestamp" => non_neg_integer()
      }

  """
  @type get_app_instance_retention_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      app_instance_admin() :: %{
        "Admin" => identity(),
        "AppInstanceArn" => String.t(),
        "CreatedTimestamp" => non_neg_integer()
      }

  """
  @type app_instance_admin() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_app_instance_bots_response() :: %{
        "AppInstanceArn" => String.t(),
        "AppInstanceBots" => list(app_instance_bot_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_app_instance_bots_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_app_instance_user_request() :: %{
        required("Metadata") => String.t(),
        required("Name") => String.t()
      }

  """
  @type update_app_instance_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_app_instance_admin_response() :: %{
        "AppInstanceAdmin" => app_instance_admin()
      }

  """
  @type describe_app_instance_admin_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_app_instance_request() :: %{
        optional("Metadata") => String.t(),
        optional("Tags") => list(tag()()),
        required("ClientRequestToken") => String.t(),
        required("Name") => String.t()
      }

  """
  @type create_app_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_app_instance_bot_response() :: %{
        "AppInstanceBotArn" => String.t()
      }

  """
  @type create_app_instance_bot_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      app_instance_admin_summary() :: %{
        "Admin" => identity()
      }

  """
  @type app_instance_admin_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{
        required("ResourceARN") => String.t()
      }

  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invoked_by() :: %{
        "StandardMessages" => list(any()),
        "TargetedMessages" => list(any())
      }

  """
  @type invoked_by() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_app_instance_bot_request() :: %{
        optional("Metadata") => String.t(),
        optional("Name") => String.t(),
        optional("Tags") => list(tag()()),
        required("AppInstanceArn") => String.t(),
        required("ClientRequestToken") => String.t(),
        required("Configuration") => configuration()
      }

  """
  @type create_app_instance_bot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_app_instance_admin_response() :: %{
        "AppInstanceAdmin" => identity(),
        "AppInstanceArn" => String.t()
      }

  """
  @type create_app_instance_admin_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_app_instance_retention_settings_response() :: %{
        "AppInstanceRetentionSettings" => app_instance_retention_settings(),
        "InitiateDeletionTimestamp" => non_neg_integer()
      }

  """
  @type put_app_instance_retention_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      app_instance_retention_settings() :: %{
        "ChannelRetentionSettings" => channel_retention_settings()
      }

  """
  @type app_instance_retention_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_app_instance_admin_request() :: %{
        required("AppInstanceAdminArn") => String.t()
      }

  """
  @type create_app_instance_admin_request() :: %{String.t() => any()}

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

      describe_app_instance_admin_request() :: %{}

  """
  @type describe_app_instance_admin_request() :: %{}

  @typedoc """

  ## Example:

      describe_app_instance_user_endpoint_request() :: %{}

  """
  @type describe_app_instance_user_endpoint_request() :: %{}

  @typedoc """

  ## Example:

      deregister_app_instance_user_endpoint_request() :: %{}

  """
  @type deregister_app_instance_user_endpoint_request() :: %{}

  @typedoc """

  ## Example:

      delete_app_instance_request() :: %{}

  """
  @type delete_app_instance_request() :: %{}

  @typedoc """

  ## Example:

      app_instance_user_summary() :: %{
        "AppInstanceUserArn" => String.t(),
        "Metadata" => String.t(),
        "Name" => String.t()
      }

  """
  @type app_instance_user_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      register_app_instance_user_endpoint_response() :: %{
        "AppInstanceUserArn" => String.t(),
        "EndpointId" => String.t()
      }

  """
  @type register_app_instance_user_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_app_instance_user_endpoint_request() :: %{
        optional("AllowMessages") => list(any()),
        optional("Name") => String.t()
      }

  """
  @type update_app_instance_user_endpoint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_app_instance_user_endpoint_response() :: %{
        "AppInstanceUserEndpoint" => app_instance_user_endpoint()
      }

  """
  @type describe_app_instance_user_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_app_instance_user_request() :: %{}

  """
  @type describe_app_instance_user_request() :: %{}

  @typedoc """

  ## Example:

      update_app_instance_bot_request() :: %{
        optional("Configuration") => configuration(),
        required("Metadata") => String.t(),
        required("Name") => String.t()
      }

  """
  @type update_app_instance_bot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_app_instance_user_endpoints_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_app_instance_user_endpoints_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_app_instance_bot_request() :: %{}

  """
  @type describe_app_instance_bot_request() :: %{}

  @typedoc """

  ## Example:

      create_app_instance_user_request() :: %{
        optional("ExpirationSettings") => expiration_settings(),
        optional("Metadata") => String.t(),
        optional("Tags") => list(tag()()),
        required("AppInstanceArn") => String.t(),
        required("AppInstanceUserId") => String.t(),
        required("ClientRequestToken") => String.t(),
        required("Name") => String.t()
      }

  """
  @type create_app_instance_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      app_instance() :: %{
        "AppInstanceArn" => String.t(),
        "CreatedTimestamp" => non_neg_integer(),
        "LastUpdatedTimestamp" => non_neg_integer(),
        "Metadata" => String.t(),
        "Name" => String.t()
      }

  """
  @type app_instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      app_instance_bot() :: %{
        "AppInstanceBotArn" => String.t(),
        "Configuration" => configuration(),
        "CreatedTimestamp" => non_neg_integer(),
        "LastUpdatedTimestamp" => non_neg_integer(),
        "Metadata" => String.t(),
        "Name" => String.t()
      }

  """
  @type app_instance_bot() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_app_instance_user_response() :: %{
        "AppInstanceUserArn" => String.t()
      }

  """
  @type create_app_instance_user_response() :: %{String.t() => any()}

  @type create_app_instance_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_app_instance_admin_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_app_instance_bot_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_app_instance_user_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_app_instance_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_app_instance_admin_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_app_instance_bot_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_app_instance_user_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type deregister_app_instance_user_endpoint_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type describe_app_instance_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type describe_app_instance_admin_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type describe_app_instance_bot_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type describe_app_instance_user_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type describe_app_instance_user_endpoint_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_app_instance_retention_settings_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_app_instance_admins_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_app_instance_bots_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_app_instance_user_endpoints_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_app_instance_users_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_app_instances_errors() ::
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

  @type put_app_instance_retention_settings_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type put_app_instance_user_expiration_settings_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type register_app_instance_user_endpoint_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
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

  @type update_app_instance_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_app_instance_bot_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_app_instance_user_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_app_instance_user_endpoint_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  def metadata do
    %{
      api_version: "2021-04-20",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "identity-chime",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Chime SDK Identity",
      signature_version: "v4",
      signing_name: "chime",
      target_prefix: nil
    }
  end

  @doc """
  Creates an Amazon Chime SDK messaging `AppInstance` under an AWS account.

  Only SDK messaging customers use this API. `CreateAppInstance` supports
  idempotency behavior as described in the AWS API Standard.

  identity

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec create_app_instance(AWS.Client.t(), create_app_instance_request(), Keyword.t()) ::
          {:ok, create_app_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_app_instance_errors()}
  def create_app_instance(%Client{} = client, input, options \\ []) do
    url_path = "/app-instances"
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
  Promotes an `AppInstanceUser` or `AppInstanceBot` to an
  `AppInstanceAdmin`.

  The
  promoted entity can perform the following actions.

    *

  `ChannelModerator` actions across all channels in the
  `AppInstance`.

    *

  `DeleteChannelMessage` actions.

  Only an `AppInstanceUser` and `AppInstanceBot` can be promoted to an
  `AppInstanceAdmin`
  role.

  ## Required positional parameters:
   • :app_instance_arn (t:string String.t/0) (AppInstanceArn)

  ## Optional parameters:
  """
  @spec create_app_instance_admin(
          AWS.Client.t(),
          String.t(),
          create_app_instance_admin_request(),
          Keyword.t()
        ) ::
          {:ok, create_app_instance_admin_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_app_instance_admin_errors()}
  def create_app_instance_admin(%Client{} = client, app_instance_arn, input, options \\ []) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}/admins"
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
  Creates a bot under an Amazon Chime `AppInstance`.

  The request consists of a
  unique `Configuration` and `Name` for that bot.

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec create_app_instance_bot(AWS.Client.t(), create_app_instance_bot_request(), Keyword.t()) ::
          {:ok, create_app_instance_bot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_app_instance_bot_errors()}
  def create_app_instance_bot(%Client{} = client, input, options \\ []) do
    url_path = "/app-instance-bots"
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
  Creates a user under an Amazon Chime `AppInstance`.

  The request consists of a
  unique `appInstanceUserId` and `Name` for that user.

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec create_app_instance_user(AWS.Client.t(), create_app_instance_user_request(), Keyword.t()) ::
          {:ok, create_app_instance_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_app_instance_user_errors()}
  def create_app_instance_user(%Client{} = client, input, options \\ []) do
    url_path = "/app-instance-users"
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
  Deletes an `AppInstance` and all associated data asynchronously.

  ## Required positional parameters:
   • :app_instance_arn (t:string String.t/0) (AppInstanceArn)

  ## Optional parameters:
  """
  @spec delete_app_instance(
          AWS.Client.t(),
          String.t(),
          delete_app_instance_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_app_instance_errors()}
  def delete_app_instance(%Client{} = client, app_instance_arn, input, options \\ []) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}"
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
  Demotes an `AppInstanceAdmin` to an `AppInstanceUser` or
  `AppInstanceBot`.

  This action
  does not delete the user.

  ## Required positional parameters:
   • :app_instance_admin_arn (t:string String.t/0) (AppInstanceAdminArn)
   • :app_instance_arn (t:string String.t/0) (AppInstanceArn)

  ## Optional parameters:
  """
  @spec delete_app_instance_admin(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_app_instance_admin_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_app_instance_admin_errors()}
  def delete_app_instance_admin(
        %Client{} = client,
        app_instance_admin_arn,
        app_instance_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}/admins/#{AWS.Util.encode_uri(app_instance_admin_arn)}"

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
  Deletes an `AppInstanceBot`.

  ## Required positional parameters:
   • :app_instance_bot_arn (t:string String.t/0) (AppInstanceBotArn)

  ## Optional parameters:
  """
  @spec delete_app_instance_bot(
          AWS.Client.t(),
          String.t(),
          delete_app_instance_bot_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_app_instance_bot_errors()}
  def delete_app_instance_bot(%Client{} = client, app_instance_bot_arn, input, options \\ []) do
    url_path = "/app-instance-bots/#{AWS.Util.encode_uri(app_instance_bot_arn)}"
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
  Deletes an `AppInstanceUser`.

  ## Required positional parameters:
   • :app_instance_user_arn (t:string String.t/0) (AppInstanceUserArn)

  ## Optional parameters:
  """
  @spec delete_app_instance_user(
          AWS.Client.t(),
          String.t(),
          delete_app_instance_user_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_app_instance_user_errors()}
  def delete_app_instance_user(%Client{} = client, app_instance_user_arn, input, options \\ []) do
    url_path = "/app-instance-users/#{AWS.Util.encode_uri(app_instance_user_arn)}"
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
  Deregisters an `AppInstanceUserEndpoint`.

  ## Required positional parameters:
   • :app_instance_user_arn (t:string String.t/0) (AppInstanceUserArn)
   • :endpoint_id (t:string String.t/0) (EndpointId)

  ## Optional parameters:
  """
  @spec deregister_app_instance_user_endpoint(
          AWS.Client.t(),
          String.t(),
          String.t(),
          deregister_app_instance_user_endpoint_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deregister_app_instance_user_endpoint_errors()}
  def deregister_app_instance_user_endpoint(
        %Client{} = client,
        app_instance_user_arn,
        endpoint_id,
        input,
        options \\ []
      ) do
    url_path =
      "/app-instance-users/#{AWS.Util.encode_uri(app_instance_user_arn)}/endpoints/#{AWS.Util.encode_uri(endpoint_id)}"

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
  Returns the full details of an `AppInstance`.

  ## Required positional parameters:
   • :app_instance_arn (t:string String.t/0) (AppInstanceArn)

  ## Optional parameters:
  """
  @spec describe_app_instance(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_app_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_app_instance_errors()}
  def describe_app_instance(%Client{} = client, app_instance_arn, options \\ []) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}"

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
  Returns the full details of an `AppInstanceAdmin`.

  ## Required positional parameters:
   • :app_instance_admin_arn (t:string String.t/0) (AppInstanceAdminArn)
   • :app_instance_arn (t:string String.t/0) (AppInstanceArn)

  ## Optional parameters:
  """
  @spec describe_app_instance_admin(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_app_instance_admin_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_app_instance_admin_errors()}
  def describe_app_instance_admin(
        %Client{} = client,
        app_instance_admin_arn,
        app_instance_arn,
        options \\ []
      ) do
    url_path =
      "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}/admins/#{AWS.Util.encode_uri(app_instance_admin_arn)}"

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
  The `AppInstanceBot's` information.

  ## Required positional parameters:
   • :app_instance_bot_arn (t:string String.t/0) (AppInstanceBotArn)

  ## Optional parameters:
  """
  @spec describe_app_instance_bot(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_app_instance_bot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_app_instance_bot_errors()}
  def describe_app_instance_bot(%Client{} = client, app_instance_bot_arn, options \\ []) do
    url_path = "/app-instance-bots/#{AWS.Util.encode_uri(app_instance_bot_arn)}"

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
  Returns the full details of an `AppInstanceUser`.

  ## Required positional parameters:
   • :app_instance_user_arn (t:string String.t/0) (AppInstanceUserArn)

  ## Optional parameters:
  """
  @spec describe_app_instance_user(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_app_instance_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_app_instance_user_errors()}
  def describe_app_instance_user(%Client{} = client, app_instance_user_arn, options \\ []) do
    url_path = "/app-instance-users/#{AWS.Util.encode_uri(app_instance_user_arn)}"

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
  Returns the full details of an `AppInstanceUserEndpoint`.

  ## Required positional parameters:
   • :app_instance_user_arn (t:string String.t/0) (AppInstanceUserArn)
   • :endpoint_id (t:string String.t/0) (EndpointId)

  ## Optional parameters:
  """
  @spec describe_app_instance_user_endpoint(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_app_instance_user_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_app_instance_user_endpoint_errors()}
  def describe_app_instance_user_endpoint(
        %Client{} = client,
        app_instance_user_arn,
        endpoint_id,
        options \\ []
      ) do
    url_path =
      "/app-instance-users/#{AWS.Util.encode_uri(app_instance_user_arn)}/endpoints/#{AWS.Util.encode_uri(endpoint_id)}"

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
  Gets the retention settings for an `AppInstance`.

  ## Required positional parameters:
   • :app_instance_arn (t:string String.t/0) (AppInstanceArn)

  ## Optional parameters:
  """
  @spec get_app_instance_retention_settings(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_app_instance_retention_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_app_instance_retention_settings_errors()}
  def get_app_instance_retention_settings(%Client{} = client, app_instance_arn, options \\ []) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}/retention-settings"

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
  Returns a list of the administrators in the `AppInstance`.

  ## Required positional parameters:
   • :app_instance_arn (t:string String.t/0) (AppInstanceArn)

  ## Optional parameters:
   • :max_results (t:String.t/0) (max-results)
   • :next_token (t:String.t/0) (next-token)
  """
  @spec list_app_instance_admins(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_app_instance_admins_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_app_instance_admins_errors()}
  def list_app_instance_admins(%Client{} = client, app_instance_arn, options \\ []) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}/admins"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, next_token: nil
    # ])

    headers = []
    query_params = []

    {next_token, options} = Keyword.pop(options, :next_token, nil)

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    {max_results, options} = Keyword.pop(options, :max_results, nil)

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all `AppInstanceBots` created under a single `AppInstance`.

  ## Required positional parameters:

  ## Optional parameters:
   • :app_instance_arn (t:String.t/0) (app-instance-arn)
   • :max_results (t:String.t/0) (max-results)
   • :next_token (t:String.t/0) (next-token)
  """
  @spec list_app_instance_bots(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_app_instance_bots_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_app_instance_bots_errors()}
  def list_app_instance_bots(%Client{} = client, app_instance_arn, options \\ []) do
    url_path = "/app-instance-bots"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [app_instance_arn: nil, max_results: nil, next_token: nil
    # ])

    headers = []
    query_params = []

    {next_token, options} = Keyword.pop(options, :next_token, nil)

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    {max_results, options} = Keyword.pop(options, :max_results, nil)

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    {app_instance_arn, options} = Keyword.pop(options, :app_instance_arn, nil)

    query_params =
      if !is_nil(app_instance_arn) do
        [{"app-instance-arn", app_instance_arn} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all the `AppInstanceUserEndpoints` created under a single
  `AppInstanceUser`.

  ## Required positional parameters:
   • :app_instance_user_arn (t:string String.t/0) (AppInstanceUserArn)

  ## Optional parameters:
   • :max_results (t:String.t/0) (max-results)
   • :next_token (t:String.t/0) (next-token)
  """
  @spec list_app_instance_user_endpoints(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_app_instance_user_endpoints_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_app_instance_user_endpoints_errors()}
  def list_app_instance_user_endpoints(%Client{} = client, app_instance_user_arn, options \\ []) do
    url_path = "/app-instance-users/#{AWS.Util.encode_uri(app_instance_user_arn)}/endpoints"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, next_token: nil
    # ])

    headers = []
    query_params = []

    {next_token, options} = Keyword.pop(options, :next_token, nil)

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    {max_results, options} = Keyword.pop(options, :max_results, nil)

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List all `AppInstanceUsers` created under a single
  `AppInstance`.

  ## Required positional parameters:

  ## Optional parameters:
   • :app_instance_arn (t:String.t/0) (app-instance-arn)
   • :max_results (t:String.t/0) (max-results)
   • :next_token (t:String.t/0) (next-token)
  """
  @spec list_app_instance_users(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_app_instance_users_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_app_instance_users_errors()}
  def list_app_instance_users(%Client{} = client, app_instance_arn, options \\ []) do
    url_path = "/app-instance-users"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [app_instance_arn: nil, max_results: nil, next_token: nil
    # ])

    headers = []
    query_params = []

    {next_token, options} = Keyword.pop(options, :next_token, nil)

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    {max_results, options} = Keyword.pop(options, :max_results, nil)

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    {app_instance_arn, options} = Keyword.pop(options, :app_instance_arn, nil)

    query_params =
      if !is_nil(app_instance_arn) do
        [{"app-instance-arn", app_instance_arn} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all Amazon Chime `AppInstance`s created under a single AWS
  account.

  ## Required positional parameters:

  ## Optional parameters:
   • :max_results (t:String.t/0) (max-results)
   • :next_token (t:String.t/0) (next-token)
  """
  @spec list_app_instances(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_app_instances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_app_instances_errors()}
  def list_app_instances(%Client{} = client, options \\ []) do
    url_path = "/app-instances"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, next_token: nil
    # ])

    headers = []
    query_params = []

    {next_token, options} = Keyword.pop(options, :next_token, nil)

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    {max_results, options} = Keyword.pop(options, :max_results, nil)

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags applied to an Amazon Chime SDK identity resource.

  ## Required positional parameters:

  ## Optional parameters:
   • :resource_arn (t:String.t/0) (arn)
  """
  @spec list_tags_for_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [resource_arn: nil
    # ])

    headers = []
    query_params = []

    {resource_arn, options} = Keyword.pop(options, :resource_arn, nil)

    query_params =
      if !is_nil(resource_arn) do
        [{"arn", resource_arn} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Sets the amount of time in days that a given `AppInstance` retains
  data.

  ## Required positional parameters:
   • :app_instance_arn (t:string String.t/0) (AppInstanceArn)

  ## Optional parameters:
  """
  @spec put_app_instance_retention_settings(
          AWS.Client.t(),
          String.t(),
          put_app_instance_retention_settings_request(),
          Keyword.t()
        ) ::
          {:ok, put_app_instance_retention_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_app_instance_retention_settings_errors()}
  def put_app_instance_retention_settings(
        %Client{} = client,
        app_instance_arn,
        input,
        options \\ []
      ) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}/retention-settings"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Sets the number of days before the `AppInstanceUser` is automatically deleted.

  A background process deletes expired `AppInstanceUsers` within 6 hours of
  expiration.
  Actual deletion times may vary.

  Expired `AppInstanceUsers` that have not yet been deleted appear as active, and
  you can update
  their expiration settings. The system honors the new settings.

  ## Required positional parameters:
   • :app_instance_user_arn (t:string String.t/0) (AppInstanceUserArn)

  ## Optional parameters:
  """
  @spec put_app_instance_user_expiration_settings(
          AWS.Client.t(),
          String.t(),
          put_app_instance_user_expiration_settings_request(),
          Keyword.t()
        ) ::
          {:ok, put_app_instance_user_expiration_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_app_instance_user_expiration_settings_errors()}
  def put_app_instance_user_expiration_settings(
        %Client{} = client,
        app_instance_user_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/app-instance-users/#{AWS.Util.encode_uri(app_instance_user_arn)}/expiration-settings"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Registers an endpoint under an Amazon Chime `AppInstanceUser`.

  The endpoint receives messages for a user. For push notifications, the endpoint
  is a mobile device used to receive mobile push notifications for a user.

  ## Required positional parameters:
   • :app_instance_user_arn (t:string String.t/0) (AppInstanceUserArn)

  ## Optional parameters:
  """
  @spec register_app_instance_user_endpoint(
          AWS.Client.t(),
          String.t(),
          register_app_instance_user_endpoint_request(),
          Keyword.t()
        ) ::
          {:ok, register_app_instance_user_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_app_instance_user_endpoint_errors()}
  def register_app_instance_user_endpoint(
        %Client{} = client,
        app_instance_user_arn,
        input,
        options \\ []
      ) do
    url_path = "/app-instance-users/#{AWS.Util.encode_uri(app_instance_user_arn)}/endpoints"
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
  Applies the specified tags to the specified Amazon Chime SDK identity resource.

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec tag_resource(AWS.Client.t(), tag_resource_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tags?operation=tag-resource"
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
  Removes the specified tags from the specified Amazon Chime SDK identity
  resource.

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec untag_resource(AWS.Client.t(), untag_resource_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tags?operation=untag-resource"
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
  Updates `AppInstance` metadata.

  ## Required positional parameters:
   • :app_instance_arn (t:string String.t/0) (AppInstanceArn)

  ## Optional parameters:
  """
  @spec update_app_instance(
          AWS.Client.t(),
          String.t(),
          update_app_instance_request(),
          Keyword.t()
        ) ::
          {:ok, update_app_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_app_instance_errors()}
  def update_app_instance(%Client{} = client, app_instance_arn, input, options \\ []) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the name and metadata of an `AppInstanceBot`.

  ## Required positional parameters:
   • :app_instance_bot_arn (t:string String.t/0) (AppInstanceBotArn)

  ## Optional parameters:
  """
  @spec update_app_instance_bot(
          AWS.Client.t(),
          String.t(),
          update_app_instance_bot_request(),
          Keyword.t()
        ) ::
          {:ok, update_app_instance_bot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_app_instance_bot_errors()}
  def update_app_instance_bot(%Client{} = client, app_instance_bot_arn, input, options \\ []) do
    url_path = "/app-instance-bots/#{AWS.Util.encode_uri(app_instance_bot_arn)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the details of an `AppInstanceUser`.

  You can update names and
  metadata.

  ## Required positional parameters:
   • :app_instance_user_arn (t:string String.t/0) (AppInstanceUserArn)

  ## Optional parameters:
  """
  @spec update_app_instance_user(
          AWS.Client.t(),
          String.t(),
          update_app_instance_user_request(),
          Keyword.t()
        ) ::
          {:ok, update_app_instance_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_app_instance_user_errors()}
  def update_app_instance_user(%Client{} = client, app_instance_user_arn, input, options \\ []) do
    url_path = "/app-instance-users/#{AWS.Util.encode_uri(app_instance_user_arn)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the details of an `AppInstanceUserEndpoint`.

  You can update the name and `AllowMessage` values.

  ## Required positional parameters:
   • :app_instance_user_arn (t:string String.t/0) (AppInstanceUserArn)
   • :endpoint_id (t:string String.t/0) (EndpointId)

  ## Optional parameters:
  """
  @spec update_app_instance_user_endpoint(
          AWS.Client.t(),
          String.t(),
          String.t(),
          update_app_instance_user_endpoint_request(),
          Keyword.t()
        ) ::
          {:ok, update_app_instance_user_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_app_instance_user_endpoint_errors()}
  def update_app_instance_user_endpoint(
        %Client{} = client,
        app_instance_user_arn,
        endpoint_id,
        input,
        options \\ []
      ) do
    url_path =
      "/app-instance-users/#{AWS.Util.encode_uri(app_instance_user_arn)}/endpoints/#{AWS.Util.encode_uri(endpoint_id)}"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
