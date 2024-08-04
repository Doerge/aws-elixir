# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Chatbot do
  @moduledoc """
  AWS Chatbot API
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      create_teams_channel_configuration_request() :: %{
        optional("ChannelName") => String.t(),
        optional("GuardrailPolicyArns") => list(String.t()()),
        optional("LoggingLevel") => String.t(),
        optional("SnsTopicArns") => list(String.t()()),
        optional("Tags") => list(tag()()),
        optional("TeamName") => String.t(),
        optional("UserAuthorizationRequired") => boolean(),
        required("ChannelId") => String.t(),
        required("ConfigurationName") => String.t(),
        required("IamRoleArn") => String.t(),
        required("TeamId") => String.t(),
        required("TenantId") => String.t()
      }
      
  """
  @type create_teams_channel_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_slack_workspace_authorization_fault() :: %{
        "Message" => String.t()
      }
      
  """
  @type delete_slack_workspace_authorization_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_teams_channel_configurations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("TeamId") => String.t()
      }
      
  """
  @type list_teams_channel_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_teams_configured_team_request() :: %{
        required("TeamId") => String.t()
      }
      
  """
  @type delete_teams_configured_team_request() :: %{String.t() => any()}

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
      
      delete_slack_channel_configuration_result() :: %{}
      
  """
  @type delete_slack_channel_configuration_result() :: %{}

  @typedoc """

  ## Example:
      
      describe_slack_channel_configurations_request() :: %{
        optional("ChatConfigurationArn") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_slack_channel_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_slack_workspace_authorization_result() :: %{}
      
  """
  @type delete_slack_workspace_authorization_result() :: %{}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      describe_slack_workspaces_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type describe_slack_workspaces_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_account_preferences_request() :: %{
        optional("TrainingDataCollectionEnabled") => boolean(),
        optional("UserAuthorizationRequired") => boolean()
      }
      
  """
  @type update_account_preferences_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_slack_channel_configuration_result() :: %{
        "ChannelConfiguration" => slack_channel_configuration()
      }
      
  """
  @type create_slack_channel_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_teams_channel_configuration_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type delete_teams_channel_configuration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_microsoft_teams_configured_teams_result() :: %{
        "ConfiguredTeams" => list(configured_team()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_microsoft_teams_configured_teams_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_microsoft_teams_configured_teams_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_microsoft_teams_configured_teams_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_slack_channel_configuration_request() :: %{
        optional("GuardrailPolicyArns") => list(String.t()()),
        optional("IamRoleArn") => String.t(),
        optional("LoggingLevel") => String.t(),
        optional("SlackChannelName") => String.t(),
        optional("SnsTopicArns") => list(String.t()()),
        optional("UserAuthorizationRequired") => boolean(),
        required("ChatConfigurationArn") => String.t(),
        required("SlackChannelId") => String.t()
      }
      
  """
  @type update_slack_channel_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_teams_channel_configuration_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type update_teams_channel_configuration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_microsoft_teams_configured_teams_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type list_microsoft_teams_configured_teams_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_teams_configured_team_result() :: %{}
      
  """
  @type delete_teams_configured_team_result() :: %{}

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
      
      delete_slack_channel_configuration_request() :: %{
        required("ChatConfigurationArn") => String.t()
      }
      
  """
  @type delete_slack_channel_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_account_preferences_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type get_account_preferences_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_microsoft_teams_user_identity_result() :: %{}
      
  """
  @type delete_microsoft_teams_user_identity_result() :: %{}

  @typedoc """

  ## Example:
      
      create_chime_webhook_configuration_result() :: %{
        "WebhookConfiguration" => chime_webhook_configuration()
      }
      
  """
  @type create_chime_webhook_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_teams_channel_configuration_request() :: %{
        optional("ChannelName") => String.t(),
        optional("GuardrailPolicyArns") => list(String.t()()),
        optional("IamRoleArn") => String.t(),
        optional("LoggingLevel") => String.t(),
        optional("SnsTopicArns") => list(String.t()()),
        optional("UserAuthorizationRequired") => boolean(),
        required("ChannelId") => String.t(),
        required("ChatConfigurationArn") => String.t()
      }
      
  """
  @type update_teams_channel_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_chime_webhook_configurations_result() :: %{
        "NextToken" => String.t(),
        "WebhookConfigurations" => list(chime_webhook_configuration()())
      }
      
  """
  @type describe_chime_webhook_configurations_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_microsoft_teams_user_identities_request() :: %{
        optional("ChatConfigurationArn") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_microsoft_teams_user_identities_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => String.t()
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
      
      delete_slack_user_identity_result() :: %{}
      
  """
  @type delete_slack_user_identity_result() :: %{}

  @typedoc """

  ## Example:
      
      teams_user_identity() :: %{
        "AwsUserIdentity" => String.t(),
        "ChatConfigurationArn" => String.t(),
        "IamRoleArn" => String.t(),
        "TeamId" => String.t(),
        "TeamsChannelId" => String.t(),
        "TeamsTenantId" => String.t(),
        "UserId" => String.t()
      }
      
  """
  @type teams_user_identity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_account_preferences_result() :: %{
        "AccountPreferences" => account_preferences()
      }
      
  """
  @type get_account_preferences_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_account_preferences_result() :: %{
        "AccountPreferences" => account_preferences()
      }
      
  """
  @type update_account_preferences_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_teams_configured_team_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type delete_teams_configured_team_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "TagKey" => String.t(),
        "TagValue" => String.t()
      }
      
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_account_preferences_request() :: %{}
      
  """
  @type get_account_preferences_request() :: %{}

  @typedoc """

  ## Example:
      
      invalid_request_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_slack_channel_configuration_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type create_slack_channel_configuration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_slack_workspaces_result() :: %{
        "NextToken" => String.t(),
        "SlackWorkspaces" => list(slack_workspace()())
      }
      
  """
  @type describe_slack_workspaces_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_teams_channel_configuration_request() :: %{
        required("ChatConfigurationArn") => String.t()
      }
      
  """
  @type delete_teams_channel_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_teams_channel_configurations_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type list_teams_channel_configurations_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_chime_webhook_configuration_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type update_chime_webhook_configuration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_teams_channel_configuration_result() :: %{
        "ChannelConfiguration" => teams_channel_configuration()
      }
      
  """
  @type create_teams_channel_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_microsoft_teams_user_identity_request() :: %{
        required("ChatConfigurationArn") => String.t(),
        required("UserId") => String.t()
      }
      
  """
  @type delete_microsoft_teams_user_identity_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_unavailable_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_teams_channel_configuration_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type create_teams_channel_configuration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_teams_channel_configurations_result() :: %{
        "NextToken" => String.t(),
        "TeamChannelConfigurations" => list(teams_channel_configuration()())
      }
      
  """
  @type list_teams_channel_configurations_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_chime_webhook_configuration_result() :: %{
        "WebhookConfiguration" => chime_webhook_configuration()
      }
      
  """
  @type update_chime_webhook_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_preferences() :: %{
        "TrainingDataCollectionEnabled" => boolean(),
        "UserAuthorizationRequired" => boolean()
      }
      
  """
  @type account_preferences() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_account_preferences_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type update_account_preferences_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_microsoft_teams_user_identity_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type delete_microsoft_teams_user_identity_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      slack_workspace() :: %{
        "SlackTeamId" => String.t(),
        "SlackTeamName" => String.t()
      }
      
  """
  @type slack_workspace() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_chime_webhook_configuration_request() :: %{
        optional("LoggingLevel") => String.t(),
        optional("Tags") => list(tag()()),
        required("ConfigurationName") => String.t(),
        required("IamRoleArn") => String.t(),
        required("SnsTopicArns") => list(String.t()()),
        required("WebhookDescription") => String.t(),
        required("WebhookUrl") => String.t()
      }
      
  """
  @type create_chime_webhook_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_slack_workspaces_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_slack_workspaces_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_teams_channel_configuration_request() :: %{
        required("ChatConfigurationArn") => String.t()
      }
      
  """
  @type get_teams_channel_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_slack_channel_configuration_request() :: %{
        optional("GuardrailPolicyArns") => list(String.t()()),
        optional("LoggingLevel") => String.t(),
        optional("SlackChannelName") => String.t(),
        optional("SnsTopicArns") => list(String.t()()),
        optional("Tags") => list(tag()()),
        optional("UserAuthorizationRequired") => boolean(),
        required("ConfigurationName") => String.t(),
        required("IamRoleArn") => String.t(),
        required("SlackChannelId") => String.t(),
        required("SlackTeamId") => String.t()
      }
      
  """
  @type create_slack_channel_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_chime_webhook_configuration_request() :: %{
        optional("IamRoleArn") => String.t(),
        optional("LoggingLevel") => String.t(),
        optional("SnsTopicArns") => list(String.t()()),
        optional("WebhookDescription") => String.t(),
        optional("WebhookUrl") => String.t(),
        required("ChatConfigurationArn") => String.t()
      }
      
  """
  @type update_chime_webhook_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      configured_team() :: %{
        "TeamId" => String.t(),
        "TeamName" => String.t(),
        "TenantId" => String.t()
      }
      
  """
  @type configured_team() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_slack_user_identity_request() :: %{
        required("ChatConfigurationArn") => String.t(),
        required("SlackTeamId") => String.t(),
        required("SlackUserId") => String.t()
      }
      
  """
  @type delete_slack_user_identity_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_slack_channel_configuration_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type update_slack_channel_configuration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_slack_user_identity_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type delete_slack_user_identity_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_chime_webhook_configurations_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type describe_chime_webhook_configurations_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_microsoft_teams_user_identities_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type list_microsoft_teams_user_identities_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_chime_webhook_configuration_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type delete_chime_webhook_configuration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_slack_workspace_authorization_request() :: %{
        required("SlackTeamId") => String.t()
      }
      
  """
  @type delete_slack_workspace_authorization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      internal_service_error() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_service_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_slack_user_identities_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type describe_slack_user_identities_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      slack_channel_configuration() :: %{
        "ChatConfigurationArn" => String.t(),
        "ConfigurationName" => String.t(),
        "GuardrailPolicyArns" => list(String.t()()),
        "IamRoleArn" => String.t(),
        "LoggingLevel" => String.t(),
        "SlackChannelId" => String.t(),
        "SlackChannelName" => String.t(),
        "SlackTeamId" => String.t(),
        "SlackTeamName" => String.t(),
        "SnsTopicArns" => list(String.t()()),
        "Tags" => list(tag()()),
        "UserAuthorizationRequired" => boolean()
      }
      
  """
  @type slack_channel_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceARN") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_microsoft_teams_user_identities_result() :: %{
        "NextToken" => String.t(),
        "TeamsUserIdentities" => list(teams_user_identity()())
      }
      
  """
  @type list_microsoft_teams_user_identities_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_teams_channel_configuration_result() :: %{
        "ChannelConfiguration" => teams_channel_configuration()
      }
      
  """
  @type get_teams_channel_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      chime_webhook_configuration() :: %{
        "ChatConfigurationArn" => String.t(),
        "ConfigurationName" => String.t(),
        "IamRoleArn" => String.t(),
        "LoggingLevel" => String.t(),
        "SnsTopicArns" => list(String.t()()),
        "Tags" => list(tag()()),
        "WebhookDescription" => String.t()
      }
      
  """
  @type chime_webhook_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      slack_user_identity() :: %{
        "AwsUserIdentity" => String.t(),
        "ChatConfigurationArn" => String.t(),
        "IamRoleArn" => String.t(),
        "SlackTeamId" => String.t(),
        "SlackUserId" => String.t()
      }
      
  """
  @type slack_user_identity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_chime_webhook_configuration_result() :: %{}
      
  """
  @type delete_chime_webhook_configuration_result() :: %{}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_chime_webhook_configuration_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type create_chime_webhook_configuration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_teams_channel_configuration_result() :: %{}
      
  """
  @type delete_teams_channel_configuration_result() :: %{}

  @typedoc """

  ## Example:
      
      describe_chime_webhook_configurations_request() :: %{
        optional("ChatConfigurationArn") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_chime_webhook_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_slack_channel_configuration_result() :: %{
        "ChannelConfiguration" => slack_channel_configuration()
      }
      
  """
  @type update_slack_channel_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_teams_channel_configuration_result() :: %{
        "ChannelConfiguration" => teams_channel_configuration()
      }
      
  """
  @type update_teams_channel_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      teams_channel_configuration() :: %{
        "ChannelId" => String.t(),
        "ChannelName" => String.t(),
        "ChatConfigurationArn" => String.t(),
        "ConfigurationName" => String.t(),
        "GuardrailPolicyArns" => list(String.t()()),
        "IamRoleArn" => String.t(),
        "LoggingLevel" => String.t(),
        "SnsTopicArns" => list(String.t()()),
        "Tags" => list(tag()()),
        "TeamId" => String.t(),
        "TeamName" => String.t(),
        "TenantId" => String.t(),
        "UserAuthorizationRequired" => boolean()
      }
      
  """
  @type teams_channel_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_slack_user_identities_result() :: %{
        "NextToken" => String.t(),
        "SlackUserIdentities" => list(slack_user_identity()())
      }
      
  """
  @type describe_slack_user_identities_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_slack_channel_configuration_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type delete_slack_channel_configuration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_chime_webhook_configuration_request() :: %{
        required("ChatConfigurationArn") => String.t()
      }
      
  """
  @type delete_chime_webhook_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_teams_channel_configuration_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type get_teams_channel_configuration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_slack_user_identities_request() :: %{
        optional("ChatConfigurationArn") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_slack_user_identities_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_slack_channel_configurations_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type describe_slack_channel_configurations_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_tags_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type too_many_tags_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_slack_channel_configurations_result() :: %{
        "NextToken" => String.t(),
        "SlackChannelConfigurations" => list(slack_channel_configuration()())
      }
      
  """
  @type describe_slack_channel_configurations_result() :: %{String.t() => any()}

  @type create_chime_webhook_configuration_errors() ::
          create_chime_webhook_configuration_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | conflict_exception()

  @type create_microsoft_teams_channel_configuration_errors() ::
          limit_exceeded_exception()
          | invalid_parameter_exception()
          | create_teams_channel_configuration_exception()
          | invalid_request_exception()
          | conflict_exception()

  @type create_slack_channel_configuration_errors() ::
          limit_exceeded_exception()
          | invalid_parameter_exception()
          | create_slack_channel_configuration_exception()
          | invalid_request_exception()
          | conflict_exception()

  @type delete_chime_webhook_configuration_errors() ::
          invalid_parameter_exception()
          | delete_chime_webhook_configuration_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type delete_microsoft_teams_channel_configuration_errors() ::
          invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | delete_teams_channel_configuration_exception()

  @type delete_microsoft_teams_configured_team_errors() ::
          invalid_parameter_exception() | delete_teams_configured_team_exception()

  @type delete_microsoft_teams_user_identity_errors() ::
          invalid_parameter_exception()
          | delete_microsoft_teams_user_identity_exception()
          | resource_not_found_exception()

  @type delete_slack_channel_configuration_errors() ::
          delete_slack_channel_configuration_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type delete_slack_user_identity_errors() ::
          invalid_parameter_exception()
          | delete_slack_user_identity_exception()
          | resource_not_found_exception()

  @type delete_slack_workspace_authorization_errors() ::
          invalid_parameter_exception() | delete_slack_workspace_authorization_fault()

  @type describe_chime_webhook_configurations_errors() ::
          invalid_parameter_exception()
          | describe_chime_webhook_configurations_exception()
          | invalid_request_exception()

  @type describe_slack_channel_configurations_errors() ::
          describe_slack_channel_configurations_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()

  @type describe_slack_user_identities_errors() ::
          describe_slack_user_identities_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()

  @type describe_slack_workspaces_errors() ::
          invalid_parameter_exception()
          | invalid_request_exception()
          | describe_slack_workspaces_exception()

  @type get_account_preferences_errors() ::
          invalid_request_exception() | get_account_preferences_exception()

  @type get_microsoft_teams_channel_configuration_errors() ::
          get_teams_channel_configuration_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()

  @type list_microsoft_teams_channel_configurations_errors() ::
          invalid_parameter_exception()
          | list_teams_channel_configurations_exception()
          | invalid_request_exception()

  @type list_microsoft_teams_configured_teams_errors() ::
          invalid_parameter_exception()
          | invalid_request_exception()
          | list_microsoft_teams_configured_teams_exception()

  @type list_microsoft_teams_user_identities_errors() ::
          invalid_parameter_exception()
          | list_microsoft_teams_user_identities_exception()
          | invalid_request_exception()

  @type list_tags_for_resource_errors() ::
          internal_service_error()
          | service_unavailable_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() ::
          too_many_tags_exception()
          | internal_service_error()
          | service_unavailable_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          internal_service_error()
          | service_unavailable_exception()
          | resource_not_found_exception()

  @type update_account_preferences_errors() ::
          invalid_parameter_exception()
          | update_account_preferences_exception()
          | invalid_request_exception()

  @type update_chime_webhook_configuration_errors() ::
          invalid_parameter_exception()
          | update_chime_webhook_configuration_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type update_microsoft_teams_channel_configuration_errors() ::
          invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | update_teams_channel_configuration_exception()

  @type update_slack_channel_configuration_errors() ::
          invalid_parameter_exception()
          | update_slack_channel_configuration_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2017-10-11",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "chatbot",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "chatbot",
      signature_version: "v4",
      signing_name: "chatbot",
      target_prefix: nil
    }
  end

  @doc """
  Creates Chime Webhook Configuration

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chatbot%20CreateChimeWebhookConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec create_chime_webhook_configuration(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_chime_webhook_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_chime_webhook_configuration_errors()}
  def create_chime_webhook_configuration(%Client{} = client, options \\ []) do
    url_path = "/create-chime-webhook-configuration"

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
  Creates MS Teams Channel Configuration

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chatbot%20CreateMicrosoftTeamsChannelConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec create_microsoft_teams_channel_configuration(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_teams_channel_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_microsoft_teams_channel_configuration_errors()}
  def create_microsoft_teams_channel_configuration(%Client{} = client, options \\ []) do
    url_path = "/create-ms-teams-channel-configuration"

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
  Creates Slack Channel Configuration

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chatbot%20CreateSlackChannelConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec create_slack_channel_configuration(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_slack_channel_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_slack_channel_configuration_errors()}
  def create_slack_channel_configuration(%Client{} = client, options \\ []) do
    url_path = "/create-slack-channel-configuration"

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
  Deletes a Chime Webhook Configuration

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chatbot%20DeleteChimeWebhookConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec delete_chime_webhook_configuration(AWS.Client.t(), Keyword.t()) ::
          {:ok, delete_chime_webhook_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_chime_webhook_configuration_errors()}
  def delete_chime_webhook_configuration(%Client{} = client, options \\ []) do
    url_path = "/delete-chime-webhook-configuration"

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
  Deletes MS Teams Channel Configuration

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chatbot%20DeleteMicrosoftTeamsChannelConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec delete_microsoft_teams_channel_configuration(AWS.Client.t(), Keyword.t()) ::
          {:ok, delete_teams_channel_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_microsoft_teams_channel_configuration_errors()}
  def delete_microsoft_teams_channel_configuration(%Client{} = client, options \\ []) do
    url_path = "/delete-ms-teams-channel-configuration"

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
  Deletes the Microsoft Teams team authorization allowing for channels to be
  configured in that Microsoft Teams team. Note that the Microsoft Teams team
  must have no channels configured to remove it.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chatbot%20DeleteMicrosoftTeamsConfiguredTeam&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec delete_microsoft_teams_configured_team(AWS.Client.t(), Keyword.t()) ::
          {:ok, delete_teams_configured_team_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_microsoft_teams_configured_team_errors()}
  def delete_microsoft_teams_configured_team(%Client{} = client, options \\ []) do
    url_path = "/delete-ms-teams-configured-teams"

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
  Deletes a Teams user identity

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chatbot%20DeleteMicrosoftTeamsUserIdentity&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec delete_microsoft_teams_user_identity(AWS.Client.t(), Keyword.t()) ::
          {:ok, delete_microsoft_teams_user_identity_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_microsoft_teams_user_identity_errors()}
  def delete_microsoft_teams_user_identity(%Client{} = client, options \\ []) do
    url_path = "/delete-ms-teams-user-identity"

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
  Deletes Slack Channel Configuration

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chatbot%20DeleteSlackChannelConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec delete_slack_channel_configuration(AWS.Client.t(), Keyword.t()) ::
          {:ok, delete_slack_channel_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_slack_channel_configuration_errors()}
  def delete_slack_channel_configuration(%Client{} = client, options \\ []) do
    url_path = "/delete-slack-channel-configuration"

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
  Deletes a Slack user identity

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chatbot%20DeleteSlackUserIdentity&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec delete_slack_user_identity(AWS.Client.t(), Keyword.t()) ::
          {:ok, delete_slack_user_identity_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_slack_user_identity_errors()}
  def delete_slack_user_identity(%Client{} = client, options \\ []) do
    url_path = "/delete-slack-user-identity"

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
  Deletes the Slack workspace authorization that allows channels to be configured
  in that workspace. This requires all configured channels in the workspace to
  be deleted.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chatbot%20DeleteSlackWorkspaceAuthorization&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec delete_slack_workspace_authorization(AWS.Client.t(), Keyword.t()) ::
          {:ok, delete_slack_workspace_authorization_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_slack_workspace_authorization_errors()}
  def delete_slack_workspace_authorization(%Client{} = client, options \\ []) do
    url_path = "/delete-slack-workspace-authorization"

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
  Lists Chime Webhook Configurations optionally filtered by ChatConfigurationArn

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chatbot%20DescribeChimeWebhookConfigurations&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec describe_chime_webhook_configurations(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_chime_webhook_configurations_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_chime_webhook_configurations_errors()}
  def describe_chime_webhook_configurations(%Client{} = client, options \\ []) do
    url_path = "/describe-chime-webhook-configurations"

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
  Lists Slack Channel Configurations optionally filtered by ChatConfigurationArn

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chatbot%20DescribeSlackChannelConfigurations&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec describe_slack_channel_configurations(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_slack_channel_configurations_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_slack_channel_configurations_errors()}
  def describe_slack_channel_configurations(%Client{} = client, options \\ []) do
    url_path = "/describe-slack-channel-configurations"

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
  Lists all Slack user identities with a mapped role.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chatbot%20DescribeSlackUserIdentities&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec describe_slack_user_identities(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_slack_user_identities_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_slack_user_identities_errors()}
  def describe_slack_user_identities(%Client{} = client, options \\ []) do
    url_path = "/describe-slack-user-identities"

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
  Lists all authorized Slack Workspaces for AWS Account

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chatbot%20DescribeSlackWorkspaces&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec describe_slack_workspaces(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_slack_workspaces_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_slack_workspaces_errors()}
  def describe_slack_workspaces(%Client{} = client, options \\ []) do
    url_path = "/describe-slack-workspaces"

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
  Get Chatbot account level preferences

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chatbot%20GetAccountPreferences&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec get_account_preferences(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_account_preferences_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_account_preferences_errors()}
  def get_account_preferences(%Client{} = client, options \\ []) do
    url_path = "/get-account-preferences"

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
  Get a single MS Teams Channel Configurations

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chatbot%20GetMicrosoftTeamsChannelConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec get_microsoft_teams_channel_configuration(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_teams_channel_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_microsoft_teams_channel_configuration_errors()}
  def get_microsoft_teams_channel_configuration(%Client{} = client, options \\ []) do
    url_path = "/get-ms-teams-channel-configuration"

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
  Lists MS Teams Channel Configurations optionally filtered by TeamId

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chatbot%20ListMicrosoftTeamsChannelConfigurations&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec list_microsoft_teams_channel_configurations(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_teams_channel_configurations_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_microsoft_teams_channel_configurations_errors()}
  def list_microsoft_teams_channel_configurations(%Client{} = client, options \\ []) do
    url_path = "/list-ms-teams-channel-configurations"

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
  Lists all authorized MS teams for AWS Account

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chatbot%20ListMicrosoftTeamsConfiguredTeams&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec list_microsoft_teams_configured_teams(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_microsoft_teams_configured_teams_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_microsoft_teams_configured_teams_errors()}
  def list_microsoft_teams_configured_teams(%Client{} = client, options \\ []) do
    url_path = "/list-ms-teams-configured-teams"

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
  Lists all Microsoft Teams user identities with a mapped role.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chatbot%20ListMicrosoftTeamsUserIdentities&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec list_microsoft_teams_user_identities(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_microsoft_teams_user_identities_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_microsoft_teams_user_identities_errors()}
  def list_microsoft_teams_user_identities(%Client{} = client, options \\ []) do
    url_path = "/list-ms-teams-user-identities"

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
  Retrieves the list of tags applied to a configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chatbot%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec list_tags_for_resource(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, options \\ []) do
    url_path = "/list-tags-for-resource"

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
  Applies the supplied tags to a configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chatbot%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec tag_resource(AWS.Client.t(), Keyword.t()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, options \\ []) do
    url_path = "/tag-resource"

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
  Removes the supplied tags from a configuration

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chatbot%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec untag_resource(AWS.Client.t(), Keyword.t()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, options \\ []) do
    url_path = "/untag-resource"

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
  Update Chatbot account level preferences

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chatbot%20UpdateAccountPreferences&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec update_account_preferences(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_account_preferences_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_account_preferences_errors()}
  def update_account_preferences(%Client{} = client, options \\ []) do
    url_path = "/update-account-preferences"

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
  Updates a Chime Webhook Configuration

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chatbot%20UpdateChimeWebhookConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec update_chime_webhook_configuration(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_chime_webhook_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_chime_webhook_configuration_errors()}
  def update_chime_webhook_configuration(%Client{} = client, options \\ []) do
    url_path = "/update-chime-webhook-configuration"

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
  Updates MS Teams Channel Configuration

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chatbot%20UpdateMicrosoftTeamsChannelConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec update_microsoft_teams_channel_configuration(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_teams_channel_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_microsoft_teams_channel_configuration_errors()}
  def update_microsoft_teams_channel_configuration(%Client{} = client, options \\ []) do
    url_path = "/update-ms-teams-channel-configuration"

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
  Updates Slack Channel Configuration

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chatbot%20UpdateSlackChannelConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec update_slack_channel_configuration(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_slack_channel_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_slack_channel_configuration_errors()}
  def update_slack_channel_configuration(%Client{} = client, options \\ []) do
    url_path = "/update-slack-channel-configuration"

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
