# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ChimeSDKIdentity do
  @moduledoc """
  The Amazon Chime SDK Identity APIs in this section allow software developers to
  create and manage unique instances of their messaging applications. These APIs
  provide the overarching framework for creating and sending messages. For more
  information about the identity APIs, refer to [Amazon Chime SDK
  identity](https://docs.aws.amazon.com/chime/latest/APIReference/API_Operations_Amazon_Chime_SDK_Identity.html).
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
  Creates an Amazon Chime SDK messaging `AppInstance` under an AWS account. Only
  SDK messaging customers use this API. `CreateAppInstance` supports idempotency
  behavior as described in the AWS API Standard.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkidentity%20CreateAppInstance&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_app_instance(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_app_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_app_instance_errors()}
  def create_app_instance(%Client{} = client, options \\ []) do
    url_path = "/app-instances"

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
  Promotes an `AppInstanceUser` or `AppInstanceBot` to an `AppInstanceAdmin`. The
  promoted entity can perform the following actions.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkidentity%20CreateAppInstanceAdmin&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_instance_arn` (`t:string` required) The ARN of the AppInstance.
  ## Keyword parameters:
  """
  @spec create_app_instance_admin(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_app_instance_admin_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_app_instance_admin_errors()}
  def create_app_instance_admin(%Client{} = client, app_instance_arn, options \\ []) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}/admins"

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
  Creates a bot under an Amazon Chime `AppInstance`. The request consists of a
  unique `Configuration` and `Name` for that bot.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkidentity%20CreateAppInstanceBot&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_app_instance_bot(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_app_instance_bot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_app_instance_bot_errors()}
  def create_app_instance_bot(%Client{} = client, options \\ []) do
    url_path = "/app-instance-bots"

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
  Creates a user under an Amazon Chime `AppInstance`. The request consists of a
  unique `appInstanceUserId` and `Name` for that user.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkidentity%20CreateAppInstanceUser&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_app_instance_user(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_app_instance_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_app_instance_user_errors()}
  def create_app_instance_user(%Client{} = client, options \\ []) do
    url_path = "/app-instance-users"

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
  Deletes an `AppInstance` and all associated data asynchronously.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkidentity%20DeleteAppInstance&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_instance_arn` (`t:string` required) The ARN of the AppInstance.
  ## Keyword parameters:
  """
  @spec delete_app_instance(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_app_instance_errors()}
  def delete_app_instance(%Client{} = client, app_instance_arn, options \\ []) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}"

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
  Demotes an `AppInstanceAdmin` to an `AppInstanceUser` or `AppInstanceBot`. This
  action does not delete the user.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkidentity%20DeleteAppInstanceAdmin&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_instance_admin_arn` (`t:string` required) The ARN of the AppInstance's
  administrator.
  * `:app_instance_arn` (`t:string` required) The ARN of the AppInstance.
  ## Keyword parameters:
  """
  @spec delete_app_instance_admin(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_app_instance_admin_errors()}
  def delete_app_instance_admin(
        %Client{} = client,
        app_instance_admin_arn,
        app_instance_arn,
        options \\ []
      ) do
    url_path =
      "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}/admins/#{AWS.Util.encode_uri(app_instance_admin_arn)}"

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
  Deletes an `AppInstanceBot`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkidentity%20DeleteAppInstanceBot&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_instance_bot_arn` (`t:string` required) The ARN of the AppInstanceBot
  being deleted.
  ## Keyword parameters:
  """
  @spec delete_app_instance_bot(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_app_instance_bot_errors()}
  def delete_app_instance_bot(%Client{} = client, app_instance_bot_arn, options \\ []) do
    url_path = "/app-instance-bots/#{AWS.Util.encode_uri(app_instance_bot_arn)}"

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
  Deletes an `AppInstanceUser`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkidentity%20DeleteAppInstanceUser&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_instance_user_arn` (`t:string` required) The ARN of the user request
  being deleted.
  ## Keyword parameters:
  """
  @spec delete_app_instance_user(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_app_instance_user_errors()}
  def delete_app_instance_user(%Client{} = client, app_instance_user_arn, options \\ []) do
    url_path = "/app-instance-users/#{AWS.Util.encode_uri(app_instance_user_arn)}"

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
  Deregisters an `AppInstanceUserEndpoint`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkidentity%20DeregisterAppInstanceUserEndpoint&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_instance_user_arn` (`t:string` required) The ARN of the AppInstanceUser.
  * `:endpoint_id` (`t:string` required) The unique identifier of the
  AppInstanceUserEndpoint.
  ## Keyword parameters:
  """
  @spec deregister_app_instance_user_endpoint(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deregister_app_instance_user_endpoint_errors()}
  def deregister_app_instance_user_endpoint(
        %Client{} = client,
        app_instance_user_arn,
        endpoint_id,
        options \\ []
      ) do
    url_path =
      "/app-instance-users/#{AWS.Util.encode_uri(app_instance_user_arn)}/endpoints/#{AWS.Util.encode_uri(endpoint_id)}"

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
  Returns the full details of an `AppInstance`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkidentity%20DescribeAppInstance&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_instance_arn` (`t:string` required) The ARN of the AppInstance.
  ## Keyword parameters:
  """
  @spec describe_app_instance(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_app_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_app_instance_errors()}
  def describe_app_instance(%Client{} = client, app_instance_arn, options \\ []) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}"

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
  Returns the full details of an `AppInstanceAdmin`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkidentity%20DescribeAppInstanceAdmin&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_instance_admin_arn` (`t:string` required) The ARN of the
  AppInstanceAdmin.
  * `:app_instance_arn` (`t:string` required) The ARN of the AppInstance.
  ## Keyword parameters:
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
  The `AppInstanceBot's` information.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkidentity%20DescribeAppInstanceBot&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_instance_bot_arn` (`t:string` required) The ARN of the AppInstanceBot.
  ## Keyword parameters:
  """
  @spec describe_app_instance_bot(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_app_instance_bot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_app_instance_bot_errors()}
  def describe_app_instance_bot(%Client{} = client, app_instance_bot_arn, options \\ []) do
    url_path = "/app-instance-bots/#{AWS.Util.encode_uri(app_instance_bot_arn)}"

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
  Returns the full details of an `AppInstanceUser`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkidentity%20DescribeAppInstanceUser&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_instance_user_arn` (`t:string` required) The ARN of the AppInstanceUser.
  ## Keyword parameters:
  """
  @spec describe_app_instance_user(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_app_instance_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_app_instance_user_errors()}
  def describe_app_instance_user(%Client{} = client, app_instance_user_arn, options \\ []) do
    url_path = "/app-instance-users/#{AWS.Util.encode_uri(app_instance_user_arn)}"

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
  Returns the full details of an `AppInstanceUserEndpoint`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkidentity%20DescribeAppInstanceUserEndpoint&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_instance_user_arn` (`t:string` required) The ARN of the AppInstanceUser.
  * `:endpoint_id` (`t:string` required) The unique identifier of the
  AppInstanceUserEndpoint.
  ## Keyword parameters:
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
  Gets the retention settings for an `AppInstance`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkidentity%20GetAppInstanceRetentionSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_instance_arn` (`t:string` required) The ARN of the AppInstance.
  ## Keyword parameters:
  """
  @spec get_app_instance_retention_settings(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_app_instance_retention_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_app_instance_retention_settings_errors()}
  def get_app_instance_retention_settings(%Client{} = client, app_instance_arn, options \\ []) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}/retention-settings"

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
  Returns a list of the administrators in the `AppInstance`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkidentity%20ListAppInstanceAdmins&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_instance_arn` (`t:string` required) The ARN of the AppInstance.
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of administrators that you
  want to return.
  * `:next_token` (`t:string`) The token returned from previous API requests until
  the number of administrators is reached.
  """
  @spec list_app_instance_admins(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_app_instance_admins_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_app_instance_admins_errors()}
  def list_app_instance_admins(%Client{} = client, app_instance_arn, options \\ []) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}/admins"

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
  Lists all `AppInstanceBots` created under a single `AppInstance`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkidentity%20ListAppInstanceBots&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_instance_arn` (`t:string` required) The ARN of the AppInstance.
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of requests to return.
  * `:next_token` (`t:string`) The token passed by previous API calls until all
  requested bots are returned.
  """
  @spec list_app_instance_bots(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_app_instance_bots_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_app_instance_bots_errors()}
  def list_app_instance_bots(%Client{} = client, app_instance_arn, options \\ [])
      when is_binary(app_instance_arn) do
    url_path = "/app-instance-bots"

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
  Lists all the `AppInstanceUserEndpoints` created under a single
  `AppInstanceUser`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkidentity%20ListAppInstanceUserEndpoints&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_instance_user_arn` (`t:string` required) The ARN of the AppInstanceUser.
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of endpoints that you want to
  return.
  * `:next_token` (`t:string`) The token passed by previous API calls until all
  requested endpoints are returned.
  """
  @spec list_app_instance_user_endpoints(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_app_instance_user_endpoints_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_app_instance_user_endpoints_errors()}
  def list_app_instance_user_endpoints(%Client{} = client, app_instance_user_arn, options \\ []) do
    url_path = "/app-instance-users/#{AWS.Util.encode_uri(app_instance_user_arn)}/endpoints"

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
  List all `AppInstanceUsers` created under a single `AppInstance`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkidentity%20ListAppInstanceUsers&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_instance_arn` (`t:string` required) The ARN of the AppInstance.
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of requests that you want
  returned.
  * `:next_token` (`t:string`) The token passed by previous API calls until all
  requested users are returned.
  """
  @spec list_app_instance_users(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_app_instance_users_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_app_instance_users_errors()}
  def list_app_instance_users(%Client{} = client, app_instance_arn, options \\ [])
      when is_binary(app_instance_arn) do
    url_path = "/app-instance-users"

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
  Lists all Amazon Chime `AppInstance`s created under a single AWS account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkidentity%20ListAppInstances&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of AppInstances that you want
  to return.
  * `:next_token` (`t:string`) The token passed by previous API requests until you
  reach the maximum number of AppInstances.
  """
  @spec list_app_instances(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_app_instances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_app_instances_errors()}
  def list_app_instances(%Client{} = client, options \\ []) do
    url_path = "/app-instances"

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
  Lists the tags applied to an Amazon Chime SDK identity resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkidentity%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The ARN of the resource.
  ## Keyword parameters:
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
  Sets the amount of time in days that a given `AppInstance` retains data.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkidentity%20PutAppInstanceRetentionSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_instance_arn` (`t:string` required) The ARN of the AppInstance.
  ## Keyword parameters:
  """
  @spec put_app_instance_retention_settings(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, put_app_instance_retention_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_app_instance_retention_settings_errors()}
  def put_app_instance_retention_settings(%Client{} = client, app_instance_arn, options \\ []) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}/retention-settings"

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
  Sets the number of days before the `AppInstanceUser` is automatically deleted.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkidentity%20PutAppInstanceUserExpirationSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_instance_user_arn` (`t:string` required) The ARN of the AppInstanceUser.
  ## Keyword parameters:
  """
  @spec put_app_instance_user_expiration_settings(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, put_app_instance_user_expiration_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_app_instance_user_expiration_settings_errors()}
  def put_app_instance_user_expiration_settings(
        %Client{} = client,
        app_instance_user_arn,
        options \\ []
      ) do
    url_path =
      "/app-instance-users/#{AWS.Util.encode_uri(app_instance_user_arn)}/expiration-settings"

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
  Registers an endpoint under an Amazon Chime `AppInstanceUser`. The endpoint
  receives messages for a user. For push notifications, the endpoint is a mobile
  device used to receive mobile push notifications for a user.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkidentity%20RegisterAppInstanceUserEndpoint&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_instance_user_arn` (`t:string` required) The ARN of the AppInstanceUser.
  ## Keyword parameters:
  """
  @spec register_app_instance_user_endpoint(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, register_app_instance_user_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_app_instance_user_endpoint_errors()}
  def register_app_instance_user_endpoint(
        %Client{} = client,
        app_instance_user_arn,
        options \\ []
      ) do
    url_path = "/app-instance-users/#{AWS.Util.encode_uri(app_instance_user_arn)}/endpoints"

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
  Applies the specified tags to the specified Amazon Chime SDK identity resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkidentity%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
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
  Removes the specified tags from the specified Amazon Chime SDK identity
  resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkidentity%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
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
  Updates `AppInstance` metadata.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkidentity%20UpdateAppInstance&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_instance_arn` (`t:string` required) The ARN of the AppInstance.
  ## Keyword parameters:
  """
  @spec update_app_instance(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_app_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_app_instance_errors()}
  def update_app_instance(%Client{} = client, app_instance_arn, options \\ []) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}"

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
  Updates the name and metadata of an `AppInstanceBot`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkidentity%20UpdateAppInstanceBot&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_instance_bot_arn` (`t:string` required) The ARN of the AppInstanceBot.
  ## Keyword parameters:
  """
  @spec update_app_instance_bot(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_app_instance_bot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_app_instance_bot_errors()}
  def update_app_instance_bot(%Client{} = client, app_instance_bot_arn, options \\ []) do
    url_path = "/app-instance-bots/#{AWS.Util.encode_uri(app_instance_bot_arn)}"

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
  Updates the details of an `AppInstanceUser`. You can update names and metadata.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkidentity%20UpdateAppInstanceUser&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_instance_user_arn` (`t:string` required) The ARN of the AppInstanceUser.
  ## Keyword parameters:
  """
  @spec update_app_instance_user(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_app_instance_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_app_instance_user_errors()}
  def update_app_instance_user(%Client{} = client, app_instance_user_arn, options \\ []) do
    url_path = "/app-instance-users/#{AWS.Util.encode_uri(app_instance_user_arn)}"

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
  Updates the details of an `AppInstanceUserEndpoint`. You can update the name and
  `AllowMessage` values.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkidentity%20UpdateAppInstanceUserEndpoint&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_instance_user_arn` (`t:string` required) The ARN of the AppInstanceUser.
  * `:endpoint_id` (`t:string` required) The unique identifier of the
  AppInstanceUserEndpoint.
  ## Keyword parameters:
  """
  @spec update_app_instance_user_endpoint(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_app_instance_user_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_app_instance_user_endpoint_errors()}
  def update_app_instance_user_endpoint(
        %Client{} = client,
        app_instance_user_arn,
        endpoint_id,
        options \\ []
      ) do
    url_path =
      "/app-instance-users/#{AWS.Util.encode_uri(app_instance_user_arn)}/endpoints/#{AWS.Util.encode_uri(endpoint_id)}"

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
end
