# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CognitoIdentityProvider do
  @moduledoc """
  With the Amazon Cognito user pools API, you can configure user pools and
  authenticate users. To authenticate users from third-party identity providers
  (IdPs) in this API, you can [link IdP users to native user
  profiles](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation-consolidate-users.html).
  Learn more about the authentication and authorization of federated users at
  [Adding user pool sign-in through a third
  party](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation.html)
  and in the [User pool federation endpoints and hosted UI
  reference](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-userpools-server-contract-reference.html).
  This API reference provides detailed information about API operations and
  object types in Amazon Cognito. Along with resource management operations, the
  Amazon Cognito user pools API includes classes of operations and authorization
  models for client-side and server-side authentication of users. You can
  interact with operations in the Amazon Cognito user pools API as any of the
  following subjects.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      create_user_pool_domain_response() :: %{
        "CloudFrontDomain" => String.t()
      }
      
  """
  @type create_user_pool_domain_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      authentication_result_type() :: %{
        "AccessToken" => String.t(),
        "ExpiresIn" => integer(),
        "IdToken" => String.t(),
        "NewDeviceMetadata" => new_device_metadata_type(),
        "RefreshToken" => String.t(),
        "TokenType" => String.t()
      }
      
  """
  @type authentication_result_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      verify_user_attribute_response() :: %{}
      
  """
  @type verify_user_attribute_response() :: %{}

  @typedoc """

  ## Example:
      
      admin_update_auth_event_feedback_response() :: %{}
      
  """
  @type admin_update_auth_event_feedback_response() :: %{}

  @typedoc """

  ## Example:
      
      analytics_metadata_type() :: %{
        "AnalyticsEndpointId" => String.t()
      }
      
  """
  @type analytics_metadata_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_import_in_progress_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type user_import_in_progress_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      initiate_auth_request() :: %{
        optional("AnalyticsMetadata") => analytics_metadata_type(),
        optional("AuthParameters") => map(),
        optional("ClientMetadata") => map(),
        optional("UserContextData") => user_context_data_type(),
        required("AuthFlow") => list(any()),
        required("ClientId") => String.t()
      }
      
  """
  @type initiate_auth_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      admin_update_device_status_response() :: %{}
      
  """
  @type admin_update_device_status_response() :: %{}

  @typedoc """

  ## Example:
      
      set_user_mfa_preference_response() :: %{}
      
  """
  @type set_user_mfa_preference_response() :: %{}

  @typedoc """

  ## Example:
      
      list_devices_request() :: %{
        optional("Limit") => integer(),
        optional("PaginationToken") => String.t(),
        required("AccessToken") => String.t()
      }
      
  """
  @type list_devices_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_user_pool_request() :: %{
        optional("AccountRecoverySetting") => account_recovery_setting_type(),
        optional("AdminCreateUserConfig") => admin_create_user_config_type(),
        optional("AutoVerifiedAttributes") => list(list(any())()),
        optional("DeletionProtection") => list(any()),
        optional("DeviceConfiguration") => device_configuration_type(),
        optional("EmailConfiguration") => email_configuration_type(),
        optional("EmailVerificationMessage") => String.t(),
        optional("EmailVerificationSubject") => String.t(),
        optional("LambdaConfig") => lambda_config_type(),
        optional("MfaConfiguration") => list(any()),
        optional("Policies") => user_pool_policy_type(),
        optional("SmsAuthenticationMessage") => String.t(),
        optional("SmsConfiguration") => sms_configuration_type(),
        optional("SmsVerificationMessage") => String.t(),
        optional("UserAttributeUpdateSettings") => user_attribute_update_settings_type(),
        optional("UserPoolAddOns") => user_pool_add_ons_type(),
        optional("UserPoolTags") => map(),
        optional("VerificationMessageTemplate") => verification_message_template_type(),
        required("UserPoolId") => String.t()
      }
      
  """
  @type update_user_pool_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_csv_header_request() :: %{
        required("UserPoolId") => String.t()
      }
      
  """
  @type get_csv_header_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_token_type_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type unsupported_token_type_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_failed_attempts_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type too_many_failed_attempts_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceArn") => String.t(),
        required("Tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_user_attributes_request() :: %{
        required("AccessToken") => String.t(),
        required("UserAttributeNames") => list(String.t()())
      }
      
  """
  @type delete_user_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_user_attributes_response() :: %{
        "CodeDeliveryDetailsList" => list(code_delivery_details_type()())
      }
      
  """
  @type update_user_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_context_data_type() :: %{
        "City" => String.t(),
        "Country" => String.t(),
        "DeviceName" => String.t(),
        "IpAddress" => String.t(),
        "Timezone" => String.t()
      }
      
  """
  @type event_context_data_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_not_confirmed_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type user_not_confirmed_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_identity_providers_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("UserPoolId") => String.t()
      }
      
  """
  @type list_identity_providers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_pool_client_description() :: %{
        "ClientId" => String.t(),
        "ClientName" => String.t(),
        "UserPoolId" => String.t()
      }
      
  """
  @type user_pool_client_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_operation_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type unsupported_operation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_server_scope_type() :: %{
        "ScopeDescription" => String.t(),
        "ScopeName" => String.t()
      }
      
  """
  @type resource_server_scope_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_email_role_access_policy_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_email_role_access_policy_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unauthorized_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type unauthorized_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_csv_header_response() :: %{
        "CSVHeader" => list(String.t()()),
        "UserPoolId" => String.t()
      }
      
  """
  @type get_csv_header_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_log_delivery_configuration_request() :: %{
        required("LogConfigurations") => list(log_configuration_type()()),
        required("UserPoolId") => String.t()
      }
      
  """
  @type set_log_delivery_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_identity_provider_response() :: %{
        "IdentityProvider" => identity_provider_type()
      }
      
  """
  @type update_identity_provider_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_identity_provider_request() :: %{
        required("ProviderName") => String.t(),
        required("UserPoolId") => String.t()
      }
      
  """
  @type describe_identity_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_user_state_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type unsupported_user_state_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      confirm_sign_up_response() :: %{}
      
  """
  @type confirm_sign_up_response() :: %{}

  @typedoc """

  ## Example:
      
      create_user_pool_domain_request() :: %{
        optional("CustomDomainConfig") => custom_domain_config_type(),
        required("Domain") => String.t(),
        required("UserPoolId") => String.t()
      }
      
  """
  @type create_user_pool_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      admin_respond_to_auth_challenge_response() :: %{
        "AuthenticationResult" => authentication_result_type(),
        "ChallengeName" => list(any()),
        "ChallengeParameters" => map(),
        "Session" => String.t()
      }
      
  """
  @type admin_respond_to_auth_challenge_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_user_pool_domain_response() :: %{
        "CloudFrontDomain" => String.t()
      }
      
  """
  @type update_user_pool_domain_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      admin_create_user_request() :: %{
        optional("ClientMetadata") => map(),
        optional("DesiredDeliveryMediums") => list(list(any())()),
        optional("ForceAliasCreation") => boolean(),
        optional("MessageAction") => list(any()),
        optional("TemporaryPassword") => String.t(),
        optional("UserAttributes") => list(attribute_type()()),
        optional("ValidationData") => list(attribute_type()()),
        required("UserPoolId") => String.t(),
        required("Username") => String.t()
      }
      
  """
  @type admin_create_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      admin_set_user_settings_response() :: %{}
      
  """
  @type admin_set_user_settings_response() :: %{}

  @typedoc """

  ## Example:
      
      admin_link_provider_for_user_request() :: %{
        required("DestinationUser") => provider_user_identifier_type(),
        required("SourceUser") => provider_user_identifier_type(),
        required("UserPoolId") => String.t()
      }
      
  """
  @type admin_link_provider_for_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_user_attributes_request() :: %{
        optional("ClientMetadata") => map(),
        required("AccessToken") => String.t(),
        required("UserAttributes") => list(attribute_type()())
      }
      
  """
  @type update_user_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      admin_get_user_request() :: %{
        required("UserPoolId") => String.t(),
        required("Username") => String.t()
      }
      
  """
  @type admin_get_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_takeover_risk_configuration_type() :: %{
        "Actions" => account_takeover_actions_type(),
        "NotifyConfiguration" => notify_configuration_type()
      }
      
  """
  @type account_takeover_risk_configuration_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sms_mfa_config_type() :: %{
        "SmsAuthenticationMessage" => String.t(),
        "SmsConfiguration" => sms_configuration_type()
      }
      
  """
  @type sms_mfa_config_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      device_secret_verifier_config_type() :: %{
        "PasswordVerifier" => String.t(),
        "Salt" => String.t()
      }
      
  """
  @type device_secret_verifier_config_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      forbidden_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type forbidden_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      message_template_type() :: %{
        "EmailMessage" => String.t(),
        "EmailSubject" => String.t(),
        "SMSMessage" => String.t()
      }
      
  """
  @type message_template_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_user_pools_request() :: %{
        optional("NextToken") => String.t(),
        required("MaxResults") => integer()
      }
      
  """
  @type list_user_pools_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      new_device_metadata_type() :: %{
        "DeviceGroupKey" => String.t(),
        "DeviceKey" => String.t()
      }
      
  """
  @type new_device_metadata_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_user_import_job_response() :: %{
        "UserImportJob" => user_import_job_type()
      }
      
  """
  @type describe_user_import_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_software_token_response() :: %{
        "SecretCode" => String.t(),
        "Session" => String.t()
      }
      
  """
  @type associate_software_token_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_identity_provider_response() :: %{
        "IdentityProvider" => identity_provider_type()
      }
      
  """
  @type create_identity_provider_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_resource_server_response() :: %{
        "ResourceServer" => resource_server_type()
      }
      
  """
  @type update_resource_server_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      number_attribute_constraints_type() :: %{
        "MaxValue" => String.t(),
        "MinValue" => String.t()
      }
      
  """
  @type number_attribute_constraints_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      admin_add_user_to_group_request() :: %{
        required("GroupName") => String.t(),
        required("UserPoolId") => String.t(),
        required("Username") => String.t()
      }
      
  """
  @type admin_add_user_to_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      alias_exists_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type alias_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      verify_software_token_response() :: %{
        "Session" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type verify_software_token_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_user_pool_domain_response() :: %{}
      
  """
  @type delete_user_pool_domain_response() :: %{}

  @typedoc """

  ## Example:
      
      get_user_response() :: %{
        "MFAOptions" => list(mfa_option_type()()),
        "PreferredMfaSetting" => String.t(),
        "UserAttributes" => list(attribute_type()()),
        "UserMFASettingList" => list(String.t()()),
        "Username" => String.t()
      }
      
  """
  @type get_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_users_in_group_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        required("GroupName") => String.t(),
        required("UserPoolId") => String.t()
      }
      
  """
  @type list_users_in_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_type() :: %{
        "Attributes" => list(attribute_type()()),
        "Enabled" => boolean(),
        "MFAOptions" => list(mfa_option_type()()),
        "UserCreateDate" => non_neg_integer(),
        "UserLastModifiedDate" => non_neg_integer(),
        "UserStatus" => list(any()),
        "Username" => String.t()
      }
      
  """
  @type user_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_user_pools_response() :: %{
        "NextToken" => String.t(),
        "UserPools" => list(user_pool_description_type()())
      }
      
  """
  @type list_user_pools_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_user_pool_response() :: %{
        "UserPool" => user_pool_type()
      }
      
  """
  @type create_user_pool_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_risk_configuration_request() :: %{
        optional("ClientId") => String.t(),
        required("UserPoolId") => String.t()
      }
      
  """
  @type describe_risk_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_identity_provider_response() :: %{
        "IdentityProvider" => identity_provider_type()
      }
      
  """
  @type describe_identity_provider_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_identity_provider_request() :: %{
        required("ProviderName") => String.t(),
        required("UserPoolId") => String.t()
      }
      
  """
  @type delete_identity_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compromised_credentials_risk_configuration_type() :: %{
        "Actions" => compromised_credentials_actions_type(),
        "EventFilter" => list(list(any())())
      }
      
  """
  @type compromised_credentials_risk_configuration_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_user_pool_domain_request() :: %{
        required("Domain") => String.t()
      }
      
  """
  @type describe_user_pool_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compromised_credentials_actions_type() :: %{
        "EventAction" => list(any())
      }
      
  """
  @type compromised_credentials_actions_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_resource_server_request() :: %{
        optional("Scopes") => list(resource_server_scope_type()()),
        required("Identifier") => String.t(),
        required("Name") => String.t(),
        required("UserPoolId") => String.t()
      }
      
  """
  @type update_resource_server_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_pool_description_type() :: %{
        "CreationDate" => non_neg_integer(),
        "Id" => String.t(),
        "LambdaConfig" => lambda_config_type(),
        "LastModifiedDate" => non_neg_integer(),
        "Name" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type user_pool_description_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      verify_software_token_request() :: %{
        optional("AccessToken") => String.t(),
        optional("FriendlyDeviceName") => String.t(),
        optional("Session") => String.t(),
        required("UserCode") => String.t()
      }
      
  """
  @type verify_software_token_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_resource_server_response() :: %{
        "ResourceServer" => resource_server_type()
      }
      
  """
  @type describe_resource_server_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      group_type() :: %{
        "CreationDate" => non_neg_integer(),
        "Description" => String.t(),
        "GroupName" => String.t(),
        "LastModifiedDate" => non_neg_integer(),
        "Precedence" => integer(),
        "RoleArn" => String.t(),
        "UserPoolId" => String.t()
      }
      
  """
  @type group_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_user_pool_mfa_config_request() :: %{
        required("UserPoolId") => String.t()
      }
      
  """
  @type get_user_pool_mfa_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      change_password_response() :: %{}
      
  """
  @type change_password_response() :: %{}

  @typedoc """

  ## Example:
      
      admin_create_user_response() :: %{
        "User" => user_type()
      }
      
  """
  @type admin_create_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_resource_server_request() :: %{
        required("Identifier") => String.t(),
        required("UserPoolId") => String.t()
      }
      
  """
  @type describe_resource_server_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      global_sign_out_request() :: %{
        required("AccessToken") => String.t()
      }
      
  """
  @type global_sign_out_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_user_attributes_response() :: %{}
      
  """
  @type delete_user_attributes_response() :: %{}

  @typedoc """

  ## Example:
      
      get_user_attribute_verification_code_request() :: %{
        optional("ClientMetadata") => map(),
        required("AccessToken") => String.t(),
        required("AttributeName") => String.t()
      }
      
  """
  @type get_user_attribute_verification_code_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_attribute_update_settings_type() :: %{
        "AttributesRequireVerificationBeforeUpdate" => list(list(any())())
      }
      
  """
  @type user_attribute_update_settings_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      software_token_mfa_settings_type() :: %{
        "Enabled" => boolean(),
        "PreferredMfa" => boolean()
      }
      
  """
  @type software_token_mfa_settings_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      admin_list_groups_for_user_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        required("UserPoolId") => String.t(),
        required("Username") => String.t()
      }
      
  """
  @type admin_list_groups_for_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attribute_type() :: %{
        "Name" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type attribute_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_pool_client_type() :: %{
        "AccessTokenValidity" => integer(),
        "AllowedOAuthFlows" => list(list(any())()),
        "AllowedOAuthFlowsUserPoolClient" => boolean(),
        "AllowedOAuthScopes" => list(String.t()()),
        "AnalyticsConfiguration" => analytics_configuration_type(),
        "AuthSessionValidity" => integer(),
        "CallbackURLs" => list(String.t()()),
        "ClientId" => String.t(),
        "ClientName" => String.t(),
        "ClientSecret" => String.t(),
        "CreationDate" => non_neg_integer(),
        "DefaultRedirectURI" => String.t(),
        "EnablePropagateAdditionalUserContextData" => boolean(),
        "EnableTokenRevocation" => boolean(),
        "ExplicitAuthFlows" => list(list(any())()),
        "IdTokenValidity" => integer(),
        "LastModifiedDate" => non_neg_integer(),
        "LogoutURLs" => list(String.t()()),
        "PreventUserExistenceErrors" => list(any()),
        "ReadAttributes" => list(String.t()()),
        "RefreshTokenValidity" => integer(),
        "SupportedIdentityProviders" => list(String.t()()),
        "TokenValidityUnits" => token_validity_units_type(),
        "UserPoolId" => String.t(),
        "WriteAttributes" => list(String.t()())
      }
      
  """
  @type user_pool_client_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      admin_create_user_config_type() :: %{
        "AllowAdminCreateUserOnly" => boolean(),
        "InviteMessageTemplate" => message_template_type(),
        "UnusedAccountValidityDays" => integer()
      }
      
  """
  @type admin_create_user_config_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceArn") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_user_pool_mfa_config_response() :: %{
        "MfaConfiguration" => list(any()),
        "SmsMfaConfiguration" => sms_mfa_config_type(),
        "SoftwareTokenMfaConfiguration" => software_token_mfa_config_type()
      }
      
  """
  @type set_user_pool_mfa_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      duplicate_provider_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type duplicate_provider_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_requests_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      admin_get_user_response() :: %{
        "Enabled" => boolean(),
        "MFAOptions" => list(mfa_option_type()()),
        "PreferredMfaSetting" => String.t(),
        "UserAttributes" => list(attribute_type()()),
        "UserCreateDate" => non_neg_integer(),
        "UserLastModifiedDate" => non_neg_integer(),
        "UserMFASettingList" => list(String.t()()),
        "UserStatus" => list(any()),
        "Username" => String.t()
      }
      
  """
  @type admin_get_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      confirm_device_request() :: %{
        optional("DeviceName") => String.t(),
        optional("DeviceSecretVerifierConfig") => device_secret_verifier_config_type(),
        required("AccessToken") => String.t(),
        required("DeviceKey") => String.t()
      }
      
  """
  @type confirm_device_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_user_import_job_response() :: %{
        "UserImportJob" => user_import_job_type()
      }
      
  """
  @type create_user_import_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_user_pool_domain_request() :: %{
        required("CustomDomainConfig") => custom_domain_config_type(),
        required("Domain") => String.t(),
        required("UserPoolId") => String.t()
      }
      
  """
  @type update_user_pool_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_group_request() :: %{
        optional("Description") => String.t(),
        optional("Precedence") => integer(),
        optional("RoleArn") => String.t(),
        required("GroupName") => String.t(),
        required("UserPoolId") => String.t()
      }
      
  """
  @type update_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_custom_attributes_response() :: %{}
      
  """
  @type add_custom_attributes_response() :: %{}

  @typedoc """

  ## Example:
      
      user_pool_policy_type() :: %{
        "PasswordPolicy" => password_policy_type()
      }
      
  """
  @type user_pool_policy_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      admin_disable_user_response() :: %{}
      
  """
  @type admin_disable_user_response() :: %{}

  @typedoc """

  ## Example:
      
      admin_update_user_attributes_request() :: %{
        optional("ClientMetadata") => map(),
        required("UserAttributes") => list(attribute_type()()),
        required("UserPoolId") => String.t(),
        required("Username") => String.t()
      }
      
  """
  @type admin_update_user_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      admin_enable_user_response() :: %{}
      
  """
  @type admin_enable_user_response() :: %{}

  @typedoc """

  ## Example:
      
      identity_provider_type() :: %{
        "AttributeMapping" => map(),
        "CreationDate" => non_neg_integer(),
        "IdpIdentifiers" => list(String.t()()),
        "LastModifiedDate" => non_neg_integer(),
        "ProviderDetails" => map(),
        "ProviderName" => String.t(),
        "ProviderType" => list(any()),
        "UserPoolId" => String.t()
      }
      
  """
  @type identity_provider_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_resource_server_request() :: %{
        required("Identifier") => String.t(),
        required("UserPoolId") => String.t()
      }
      
  """
  @type delete_resource_server_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_risk_configuration_response() :: %{
        "RiskConfiguration" => risk_configuration_type()
      }
      
  """
  @type describe_risk_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      admin_set_user_settings_request() :: %{
        required("MFAOptions") => list(mfa_option_type()()),
        required("UserPoolId") => String.t(),
        required("Username") => String.t()
      }
      
  """
  @type admin_set_user_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_ui_customization_request() :: %{
        optional("CSS") => String.t(),
        optional("ClientId") => String.t(),
        optional("ImageFile") => binary(),
        required("UserPoolId") => String.t()
      }
      
  """
  @type set_ui_customization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_sms_role_access_policy_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_sms_role_access_policy_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_identity_provider_by_identifier_request() :: %{
        required("IdpIdentifier") => String.t(),
        required("UserPoolId") => String.t()
      }
      
  """
  @type get_identity_provider_by_identifier_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      admin_set_user_mfa_preference_response() :: %{}
      
  """
  @type admin_set_user_mfa_preference_response() :: %{}

  @typedoc """

  ## Example:
      
      update_user_pool_response() :: %{}
      
  """
  @type update_user_pool_response() :: %{}

  @typedoc """

  ## Example:
      
      set_risk_configuration_request() :: %{
        optional("AccountTakeoverRiskConfiguration") => account_takeover_risk_configuration_type(),
        optional("ClientId") => String.t(),
        optional("CompromisedCredentialsRiskConfiguration") => compromised_credentials_risk_configuration_type(),
        optional("RiskExceptionConfiguration") => risk_exception_configuration_type(),
        required("UserPoolId") => String.t()
      }
      
  """
  @type set_risk_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_device_status_response() :: %{}
      
  """
  @type update_device_status_response() :: %{}

  @typedoc """

  ## Example:
      
      admin_user_global_sign_out_response() :: %{}
      
  """
  @type admin_user_global_sign_out_response() :: %{}

  @typedoc """

  ## Example:
      
      describe_user_pool_client_response() :: %{
        "UserPoolClient" => user_pool_client_type()
      }
      
  """
  @type describe_user_pool_client_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      code_mismatch_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type code_mismatch_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_signing_certificate_response() :: %{
        "Certificate" => String.t()
      }
      
  """
  @type get_signing_certificate_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_email_lambda_version_config_type() :: %{
        "LambdaArn" => String.t(),
        "LambdaVersion" => list(any())
      }
      
  """
  @type custom_email_lambda_version_config_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      device_type() :: %{
        "DeviceAttributes" => list(attribute_type()()),
        "DeviceCreateDate" => non_neg_integer(),
        "DeviceKey" => String.t(),
        "DeviceLastAuthenticatedDate" => non_neg_integer(),
        "DeviceLastModifiedDate" => non_neg_integer()
      }
      
  """
  @type device_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_user_pool_mfa_config_response() :: %{
        "MfaConfiguration" => list(any()),
        "SmsMfaConfiguration" => sms_mfa_config_type(),
        "SoftwareTokenMfaConfiguration" => software_token_mfa_config_type()
      }
      
  """
  @type get_user_pool_mfa_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      revoke_token_response() :: %{}
      
  """
  @type revoke_token_response() :: %{}

  @typedoc """

  ## Example:
      
      ui_customization_type() :: %{
        "CSS" => String.t(),
        "CSSVersion" => String.t(),
        "ClientId" => String.t(),
        "CreationDate" => non_neg_integer(),
        "ImageUrl" => String.t(),
        "LastModifiedDate" => non_neg_integer(),
        "UserPoolId" => String.t()
      }
      
  """
  @type ui_customization_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_user_request() :: %{
        required("AccessToken") => String.t()
      }
      
  """
  @type get_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      verify_user_attribute_request() :: %{
        required("AccessToken") => String.t(),
        required("AttributeName") => String.t(),
        required("Code") => String.t()
      }
      
  """
  @type verify_user_attribute_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notify_email_type() :: %{
        "HtmlBody" => String.t(),
        "Subject" => String.t(),
        "TextBody" => String.t()
      }
      
  """
  @type notify_email_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      admin_update_auth_event_feedback_request() :: %{
        required("EventId") => String.t(),
        required("FeedbackValue") => list(any()),
        required("UserPoolId") => String.t(),
        required("Username") => String.t()
      }
      
  """
  @type admin_update_auth_event_feedback_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_users_in_group_response() :: %{
        "NextToken" => String.t(),
        "Users" => list(user_type()())
      }
      
  """
  @type list_users_in_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scope_does_not_exist_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type scope_does_not_exist_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      respond_to_auth_challenge_request() :: %{
        optional("AnalyticsMetadata") => analytics_metadata_type(),
        optional("ChallengeResponses") => map(),
        optional("ClientMetadata") => map(),
        optional("Session") => String.t(),
        optional("UserContextData") => user_context_data_type(),
        required("ChallengeName") => list(any()),
        required("ClientId") => String.t()
      }
      
  """
  @type respond_to_auth_challenge_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_ui_customization_response() :: %{
        "UICustomization" => ui_customization_type()
      }
      
  """
  @type set_ui_customization_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      token_validity_units_type() :: %{
        "AccessToken" => list(any()),
        "IdToken" => list(any()),
        "RefreshToken" => list(any())
      }
      
  """
  @type token_validity_units_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_context_data_type() :: %{
        "EncodedData" => String.t(),
        "IpAddress" => String.t()
      }
      
  """
  @type user_context_data_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      string_attribute_constraints_type() :: %{
        "MaxLength" => String.t(),
        "MinLength" => String.t()
      }
      
  """
  @type string_attribute_constraints_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      admin_delete_user_attributes_request() :: %{
        required("UserAttributeNames") => list(String.t()()),
        required("UserPoolId") => String.t(),
        required("Username") => String.t()
      }
      
  """
  @type admin_delete_user_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lambda_config_type() :: %{
        "CreateAuthChallenge" => String.t(),
        "CustomEmailSender" => custom_email_lambda_version_config_type(),
        "CustomMessage" => String.t(),
        "CustomSMSSender" => custom_sms_lambda_version_config_type(),
        "DefineAuthChallenge" => String.t(),
        "KMSKeyID" => String.t(),
        "PostAuthentication" => String.t(),
        "PostConfirmation" => String.t(),
        "PreAuthentication" => String.t(),
        "PreSignUp" => String.t(),
        "PreTokenGeneration" => String.t(),
        "PreTokenGenerationConfig" => pre_token_generation_version_config_type(),
        "UserMigration" => String.t(),
        "VerifyAuthChallengeResponse" => String.t()
      }
      
  """
  @type lambda_config_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      log_delivery_configuration_type() :: %{
        "LogConfigurations" => list(log_configuration_type()()),
        "UserPoolId" => String.t()
      }
      
  """
  @type log_delivery_configuration_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      risk_exception_configuration_type() :: %{
        "BlockedIPRangeList" => list(String.t()()),
        "SkippedIPRangeList" => list(String.t()())
      }
      
  """
  @type risk_exception_configuration_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      group_exists_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type group_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      password_reset_required_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type password_reset_required_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      admin_set_user_password_response() :: %{}
      
  """
  @type admin_set_user_password_response() :: %{}

  @typedoc """

  ## Example:
      
      admin_list_devices_request() :: %{
        optional("Limit") => integer(),
        optional("PaginationToken") => String.t(),
        required("UserPoolId") => String.t(),
        required("Username") => String.t()
      }
      
  """
  @type admin_list_devices_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_user_pool_client_response() :: %{
        "UserPoolClient" => user_pool_client_type()
      }
      
  """
  @type create_user_pool_client_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_user_pool_response() :: %{
        "UserPool" => user_pool_type()
      }
      
  """
  @type describe_user_pool_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_user_pool_request() :: %{
        optional("AccountRecoverySetting") => account_recovery_setting_type(),
        optional("AdminCreateUserConfig") => admin_create_user_config_type(),
        optional("AliasAttributes") => list(list(any())()),
        optional("AutoVerifiedAttributes") => list(list(any())()),
        optional("DeletionProtection") => list(any()),
        optional("DeviceConfiguration") => device_configuration_type(),
        optional("EmailConfiguration") => email_configuration_type(),
        optional("EmailVerificationMessage") => String.t(),
        optional("EmailVerificationSubject") => String.t(),
        optional("LambdaConfig") => lambda_config_type(),
        optional("MfaConfiguration") => list(any()),
        optional("Policies") => user_pool_policy_type(),
        optional("Schema") => list(schema_attribute_type()()),
        optional("SmsAuthenticationMessage") => String.t(),
        optional("SmsConfiguration") => sms_configuration_type(),
        optional("SmsVerificationMessage") => String.t(),
        optional("UserAttributeUpdateSettings") => user_attribute_update_settings_type(),
        optional("UserPoolAddOns") => user_pool_add_ons_type(),
        optional("UserPoolTags") => map(),
        optional("UsernameAttributes") => list(list(any())()),
        optional("UsernameConfiguration") => username_configuration_type(),
        optional("VerificationMessageTemplate") => verification_message_template_type(),
        required("PoolName") => String.t()
      }
      
  """
  @type create_user_pool_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_user_import_jobs_response() :: %{
        "PaginationToken" => String.t(),
        "UserImportJobs" => list(user_import_job_type()())
      }
      
  """
  @type list_user_import_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_users_response() :: %{
        "PaginationToken" => String.t(),
        "Users" => list(user_type()())
      }
      
  """
  @type list_users_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_import_job_type() :: %{
        "CloudWatchLogsRoleArn" => String.t(),
        "CompletionDate" => non_neg_integer(),
        "CompletionMessage" => String.t(),
        "CreationDate" => non_neg_integer(),
        "FailedUsers" => float(),
        "ImportedUsers" => float(),
        "JobId" => String.t(),
        "JobName" => String.t(),
        "PreSignedUrl" => String.t(),
        "SkippedUsers" => float(),
        "StartDate" => non_neg_integer(),
        "Status" => list(any()),
        "UserPoolId" => String.t()
      }
      
  """
  @type user_import_job_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_user_pool_client_request() :: %{
        optional("AccessTokenValidity") => integer(),
        optional("AllowedOAuthFlows") => list(list(any())()),
        optional("AllowedOAuthFlowsUserPoolClient") => boolean(),
        optional("AllowedOAuthScopes") => list(String.t()()),
        optional("AnalyticsConfiguration") => analytics_configuration_type(),
        optional("AuthSessionValidity") => integer(),
        optional("CallbackURLs") => list(String.t()()),
        optional("DefaultRedirectURI") => String.t(),
        optional("EnablePropagateAdditionalUserContextData") => boolean(),
        optional("EnableTokenRevocation") => boolean(),
        optional("ExplicitAuthFlows") => list(list(any())()),
        optional("GenerateSecret") => boolean(),
        optional("IdTokenValidity") => integer(),
        optional("LogoutURLs") => list(String.t()()),
        optional("PreventUserExistenceErrors") => list(any()),
        optional("ReadAttributes") => list(String.t()()),
        optional("RefreshTokenValidity") => integer(),
        optional("SupportedIdentityProviders") => list(String.t()()),
        optional("TokenValidityUnits") => token_validity_units_type(),
        optional("WriteAttributes") => list(String.t()()),
        required("ClientName") => String.t(),
        required("UserPoolId") => String.t()
      }
      
  """
  @type create_user_pool_client_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_identity_provider_by_identifier_response() :: %{
        "IdentityProvider" => identity_provider_type()
      }
      
  """
  @type get_identity_provider_by_identifier_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      admin_disable_provider_for_user_response() :: %{}
      
  """
  @type admin_disable_provider_for_user_response() :: %{}

  @typedoc """

  ## Example:
      
      cloud_watch_logs_configuration_type() :: %{
        "LogGroupArn" => String.t()
      }
      
  """
  @type cloud_watch_logs_configuration_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_user_pool_client_request() :: %{
        required("ClientId") => String.t(),
        required("UserPoolId") => String.t()
      }
      
  """
  @type delete_user_pool_client_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type user_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      password_policy_type() :: %{
        "MinimumLength" => integer(),
        "RequireLowercase" => boolean(),
        "RequireNumbers" => boolean(),
        "RequireSymbols" => boolean(),
        "RequireUppercase" => boolean(),
        "TemporaryPasswordValidityDays" => integer()
      }
      
  """
  @type password_policy_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      admin_confirm_sign_up_request() :: %{
        optional("ClientMetadata") => map(),
        required("UserPoolId") => String.t(),
        required("Username") => String.t()
      }
      
  """
  @type admin_confirm_sign_up_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_domain_config_type() :: %{
        "CertificateArn" => String.t()
      }
      
  """
  @type custom_domain_config_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_sms_lambda_version_config_type() :: %{
        "LambdaArn" => String.t(),
        "LambdaVersion" => list(any())
      }
      
  """
  @type custom_sms_lambda_version_config_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      admin_enable_user_request() :: %{
        required("UserPoolId") => String.t(),
        required("Username") => String.t()
      }
      
  """
  @type admin_enable_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_resource_server_request() :: %{
        optional("Scopes") => list(resource_server_scope_type()()),
        required("Identifier") => String.t(),
        required("Name") => String.t(),
        required("UserPoolId") => String.t()
      }
      
  """
  @type create_resource_server_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      admin_initiate_auth_request() :: %{
        optional("AnalyticsMetadata") => analytics_metadata_type(),
        optional("AuthParameters") => map(),
        optional("ClientMetadata") => map(),
        optional("ContextData") => context_data_type(),
        required("AuthFlow") => list(any()),
        required("ClientId") => String.t(),
        required("UserPoolId") => String.t()
      }
      
  """
  @type admin_initiate_auth_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_device_status_request() :: %{
        optional("DeviceRememberedStatus") => list(any()),
        required("AccessToken") => String.t(),
        required("DeviceKey") => String.t()
      }
      
  """
  @type update_device_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_server_type() :: %{
        "Identifier" => String.t(),
        "Name" => String.t(),
        "Scopes" => list(resource_server_scope_type()()),
        "UserPoolId" => String.t()
      }
      
  """
  @type resource_server_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      software_token_mfa_config_type() :: %{
        "Enabled" => boolean()
      }
      
  """
  @type software_token_mfa_config_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_devices_response() :: %{
        "Devices" => list(device_type()()),
        "PaginationToken" => String.t()
      }
      
  """
  @type list_devices_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      admin_reset_user_password_response() :: %{}
      
  """
  @type admin_reset_user_password_response() :: %{}

  @typedoc """

  ## Example:
      
      create_group_request() :: %{
        optional("Description") => String.t(),
        optional("Precedence") => integer(),
        optional("RoleArn") => String.t(),
        required("GroupName") => String.t(),
        required("UserPoolId") => String.t()
      }
      
  """
  @type create_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      admin_user_global_sign_out_request() :: %{
        required("UserPoolId") => String.t(),
        required("Username") => String.t()
      }
      
  """
  @type admin_user_global_sign_out_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_auth_event_feedback_response() :: %{}
      
  """
  @type update_auth_event_feedback_response() :: %{}

  @typedoc """

  ## Example:
      
      invalid_lambda_response_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_lambda_response_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sms_mfa_settings_type() :: %{
        "Enabled" => boolean(),
        "PreferredMfa" => boolean()
      }
      
  """
  @type sms_mfa_settings_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_custom_attributes_request() :: %{
        required("CustomAttributes") => list(schema_attribute_type()()),
        required("UserPoolId") => String.t()
      }
      
  """
  @type add_custom_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      admin_disable_user_request() :: %{
        required("UserPoolId") => String.t(),
        required("Username") => String.t()
      }
      
  """
  @type admin_disable_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      email_configuration_type() :: %{
        "ConfigurationSet" => String.t(),
        "EmailSendingAccount" => list(any()),
        "From" => String.t(),
        "ReplyToEmailAddress" => String.t(),
        "SourceArn" => String.t()
      }
      
  """
  @type email_configuration_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      expired_code_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type expired_code_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      forgot_password_request() :: %{
        optional("AnalyticsMetadata") => analytics_metadata_type(),
        optional("ClientMetadata") => map(),
        optional("SecretHash") => String.t(),
        optional("UserContextData") => user_context_data_type(),
        required("ClientId") => String.t(),
        required("Username") => String.t()
      }
      
  """
  @type forgot_password_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_user_pool_clients_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("UserPoolId") => String.t()
      }
      
  """
  @type list_user_pool_clients_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      admin_remove_user_from_group_request() :: %{
        required("GroupName") => String.t(),
        required("UserPoolId") => String.t(),
        required("Username") => String.t()
      }
      
  """
  @type admin_remove_user_from_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_pool_tagging_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type user_pool_tagging_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_user_settings_request() :: %{
        required("AccessToken") => String.t(),
        required("MFAOptions") => list(mfa_option_type()())
      }
      
  """
  @type set_user_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recovery_option_type() :: %{
        "Name" => list(any()),
        "Priority" => integer()
      }
      
  """
  @type recovery_option_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      provider_user_identifier_type() :: %{
        "ProviderAttributeName" => String.t(),
        "ProviderAttributeValue" => String.t(),
        "ProviderName" => String.t()
      }
      
  """
  @type provider_user_identifier_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_feedback_type() :: %{
        "FeedbackDate" => non_neg_integer(),
        "FeedbackValue" => list(any()),
        "Provider" => String.t()
      }
      
  """
  @type event_feedback_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      change_password_request() :: %{
        required("AccessToken") => String.t(),
        required("PreviousPassword") => String.t(),
        required("ProposedPassword") => String.t()
      }
      
  """
  @type change_password_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      admin_list_devices_response() :: %{
        "Devices" => list(device_type()()),
        "PaginationToken" => String.t()
      }
      
  """
  @type admin_list_devices_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_user_request() :: %{
        required("AccessToken") => String.t()
      }
      
  """
  @type delete_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_log_delivery_configuration_request() :: %{
        required("UserPoolId") => String.t()
      }
      
  """
  @type get_log_delivery_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_o_auth_flow_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_o_auth_flow_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      initiate_auth_response() :: %{
        "AuthenticationResult" => authentication_result_type(),
        "ChallengeName" => list(any()),
        "ChallengeParameters" => map(),
        "Session" => String.t()
      }
      
  """
  @type initiate_auth_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_device_request() :: %{
        optional("AccessToken") => String.t(),
        required("DeviceKey") => String.t()
      }
      
  """
  @type get_device_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_user_import_job_request() :: %{
        required("CloudWatchLogsRoleArn") => String.t(),
        required("JobName") => String.t(),
        required("UserPoolId") => String.t()
      }
      
  """
  @type create_user_import_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      admin_set_user_password_request() :: %{
        optional("Permanent") => boolean(),
        required("Password") => String.t(),
        required("UserPoolId") => String.t(),
        required("Username") => String.t()
      }
      
  """
  @type admin_set_user_password_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_user_pool_domain_response() :: %{
        "DomainDescription" => domain_description_type()
      }
      
  """
  @type describe_user_pool_domain_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sign_up_request() :: %{
        optional("AnalyticsMetadata") => analytics_metadata_type(),
        optional("ClientMetadata") => map(),
        optional("SecretHash") => String.t(),
        optional("UserAttributes") => list(attribute_type()()),
        optional("UserContextData") => user_context_data_type(),
        optional("ValidationData") => list(attribute_type()()),
        required("ClientId") => String.t(),
        required("Password") => String.t(),
        required("Username") => String.t()
      }
      
  """
  @type sign_up_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      forget_device_request() :: %{
        optional("AccessToken") => String.t(),
        required("DeviceKey") => String.t()
      }
      
  """
  @type forget_device_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      device_configuration_type() :: %{
        "ChallengeRequiredOnNewDevice" => boolean(),
        "DeviceOnlyRememberedOnUserPrompt" => boolean()
      }
      
  """
  @type device_configuration_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_pool_add_ons_type() :: %{
        "AdvancedSecurityMode" => list(any())
      }
      
  """
  @type user_pool_add_ons_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_user_pool_request() :: %{
        required("UserPoolId") => String.t()
      }
      
  """
  @type describe_user_pool_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_user_pool_domain_request() :: %{
        required("Domain") => String.t(),
        required("UserPoolId") => String.t()
      }
      
  """
  @type delete_user_pool_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_lambda_validation_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type user_lambda_validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_user_pool_request() :: %{
        required("UserPoolId") => String.t()
      }
      
  """
  @type delete_user_pool_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_user_import_jobs_request() :: %{
        optional("PaginationToken") => String.t(),
        required("MaxResults") => integer(),
        required("UserPoolId") => String.t()
      }
      
  """
  @type list_user_import_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      challenge_response_type() :: %{
        "ChallengeName" => list(any()),
        "ChallengeResponse" => list(any())
      }
      
  """
  @type challenge_response_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resend_confirmation_code_request() :: %{
        optional("AnalyticsMetadata") => analytics_metadata_type(),
        optional("ClientMetadata") => map(),
        optional("SecretHash") => String.t(),
        optional("UserContextData") => user_context_data_type(),
        required("ClientId") => String.t(),
        required("Username") => String.t()
      }
      
  """
  @type resend_confirmation_code_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      admin_respond_to_auth_challenge_request() :: %{
        optional("AnalyticsMetadata") => analytics_metadata_type(),
        optional("ChallengeResponses") => map(),
        optional("ClientMetadata") => map(),
        optional("ContextData") => context_data_type(),
        optional("Session") => String.t(),
        required("ChallengeName") => list(any()),
        required("ClientId") => String.t(),
        required("UserPoolId") => String.t()
      }
      
  """
  @type admin_respond_to_auth_challenge_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      not_authorized_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type not_authorized_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      admin_list_user_auth_events_response() :: %{
        "AuthEvents" => list(auth_event_type()()),
        "NextToken" => String.t()
      }
      
  """
  @type admin_list_user_auth_events_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_identity_provider_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type unsupported_identity_provider_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_pool_add_on_not_enabled_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type user_pool_add_on_not_enabled_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auth_event_type() :: %{
        "ChallengeResponses" => list(challenge_response_type()()),
        "CreationDate" => non_neg_integer(),
        "EventContextData" => event_context_data_type(),
        "EventFeedback" => event_feedback_type(),
        "EventId" => String.t(),
        "EventResponse" => list(any()),
        "EventRisk" => event_risk_type(),
        "EventType" => list(any())
      }
      
  """
  @type auth_event_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_identity_provider_request() :: %{
        optional("AttributeMapping") => map(),
        optional("IdpIdentifiers") => list(String.t()()),
        required("ProviderDetails") => map(),
        required("ProviderName") => String.t(),
        required("ProviderType") => list(any()),
        required("UserPoolId") => String.t()
      }
      
  """
  @type create_identity_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_user_pool_configuration_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_user_pool_configuration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_log_delivery_configuration_response() :: %{
        "LogDeliveryConfiguration" => log_delivery_configuration_type()
      }
      
  """
  @type set_log_delivery_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sign_up_response() :: %{
        "CodeDeliveryDetails" => code_delivery_details_type(),
        "UserConfirmed" => boolean(),
        "UserSub" => String.t()
      }
      
  """
  @type sign_up_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_user_import_job_response() :: %{
        "UserImportJob" => user_import_job_type()
      }
      
  """
  @type start_user_import_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      confirm_forgot_password_response() :: %{}
      
  """
  @type confirm_forgot_password_response() :: %{}

  @typedoc """

  ## Example:
      
      log_configuration_type() :: %{
        "CloudWatchLogsConfiguration" => cloud_watch_logs_configuration_type(),
        "EventSource" => list(any()),
        "LogLevel" => list(any())
      }
      
  """
  @type log_configuration_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      global_sign_out_response() :: %{}
      
  """
  @type global_sign_out_response() :: %{}

  @typedoc """

  ## Example:
      
      invalid_parameter_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      admin_confirm_sign_up_response() :: %{}
      
  """
  @type admin_confirm_sign_up_response() :: %{}

  @typedoc """

  ## Example:
      
      set_user_pool_mfa_config_request() :: %{
        optional("MfaConfiguration") => list(any()),
        optional("SmsMfaConfiguration") => sms_mfa_config_type(),
        optional("SoftwareTokenMfaConfiguration") => software_token_mfa_config_type(),
        required("UserPoolId") => String.t()
      }
      
  """
  @type set_user_pool_mfa_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_user_import_job_request() :: %{
        required("JobId") => String.t(),
        required("UserPoolId") => String.t()
      }
      
  """
  @type describe_user_import_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      admin_disable_provider_for_user_request() :: %{
        required("User") => provider_user_identifier_type(),
        required("UserPoolId") => String.t()
      }
      
  """
  @type admin_disable_provider_for_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      code_delivery_details_type() :: %{
        "AttributeName" => String.t(),
        "DeliveryMedium" => list(any()),
        "Destination" => String.t()
      }
      
  """
  @type code_delivery_details_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      event_risk_type() :: %{
        "CompromisedCredentialsDetected" => boolean(),
        "RiskDecision" => list(any()),
        "RiskLevel" => list(any())
      }
      
  """
  @type event_risk_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_ui_customization_request() :: %{
        optional("ClientId") => String.t(),
        required("UserPoolId") => String.t()
      }
      
  """
  @type get_ui_customization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_user_settings_response() :: %{}
      
  """
  @type set_user_settings_response() :: %{}

  @typedoc """

  ## Example:
      
      confirm_device_response() :: %{
        "UserConfirmationNecessary" => boolean()
      }
      
  """
  @type confirm_device_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_recovery_setting_type() :: %{
        "RecoveryMechanisms" => list(recovery_option_type()())
      }
      
  """
  @type account_recovery_setting_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_user_pool_client_request() :: %{
        required("ClientId") => String.t(),
        required("UserPoolId") => String.t()
      }
      
  """
  @type describe_user_pool_client_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_auth_event_feedback_request() :: %{
        required("EventId") => String.t(),
        required("FeedbackToken") => String.t(),
        required("FeedbackValue") => list(any()),
        required("UserPoolId") => String.t(),
        required("Username") => String.t()
      }
      
  """
  @type update_auth_event_feedback_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pre_token_generation_version_config_type() :: %{
        "LambdaArn" => String.t(),
        "LambdaVersion" => list(any())
      }
      
  """
  @type pre_token_generation_version_config_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      admin_update_device_status_request() :: %{
        optional("DeviceRememberedStatus") => list(any()),
        required("DeviceKey") => String.t(),
        required("UserPoolId") => String.t(),
        required("Username") => String.t()
      }
      
  """
  @type admin_update_device_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      software_token_mfa_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type software_token_mfa_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_log_delivery_configuration_response() :: %{
        "LogDeliveryConfiguration" => log_delivery_configuration_type()
      }
      
  """
  @type get_log_delivery_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      concurrent_modification_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type concurrent_modification_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resend_confirmation_code_response() :: %{
        "CodeDeliveryDetails" => code_delivery_details_type()
      }
      
  """
  @type resend_confirmation_code_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      admin_reset_user_password_request() :: %{
        optional("ClientMetadata") => map(),
        required("UserPoolId") => String.t(),
        required("Username") => String.t()
      }
      
  """
  @type admin_reset_user_password_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      admin_link_provider_for_user_response() :: %{}
      
  """
  @type admin_link_provider_for_user_response() :: %{}

  @typedoc """

  ## Example:
      
      admin_get_device_response() :: %{
        "Device" => device_type()
      }
      
  """
  @type admin_get_device_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_resource_servers_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("UserPoolId") => String.t()
      }
      
  """
  @type list_resource_servers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceArn") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      admin_update_user_attributes_response() :: %{}
      
  """
  @type admin_update_user_attributes_response() :: %{}

  @typedoc """

  ## Example:
      
      update_user_pool_client_response() :: %{
        "UserPoolClient" => user_pool_client_type()
      }
      
  """
  @type update_user_pool_client_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_identity_providers_response() :: %{
        "NextToken" => String.t(),
        "Providers" => list(provider_description()())
      }
      
  """
  @type list_identity_providers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      http_header() :: %{
        "headerName" => String.t(),
        "headerValue" => String.t()
      }
      
  """
  @type http_header() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_software_token_mfa_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type enable_software_token_mfa_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_group_response() :: %{
        "Group" => group_type()
      }
      
  """
  @type get_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_user_import_job_response() :: %{
        "UserImportJob" => user_import_job_type()
      }
      
  """
  @type stop_user_import_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notify_configuration_type() :: %{
        "BlockEmail" => notify_email_type(),
        "From" => String.t(),
        "MfaEmail" => notify_email_type(),
        "NoActionEmail" => notify_email_type(),
        "ReplyTo" => String.t(),
        "SourceArn" => String.t()
      }
      
  """
  @type notify_configuration_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      admin_list_groups_for_user_response() :: %{
        "Groups" => list(group_type()()),
        "NextToken" => String.t()
      }
      
  """
  @type admin_list_groups_for_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      username_exists_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type username_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_group_request() :: %{
        required("GroupName") => String.t(),
        required("UserPoolId") => String.t()
      }
      
  """
  @type delete_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_user_pool_client_request() :: %{
        optional("AccessTokenValidity") => integer(),
        optional("AllowedOAuthFlows") => list(list(any())()),
        optional("AllowedOAuthFlowsUserPoolClient") => boolean(),
        optional("AllowedOAuthScopes") => list(String.t()()),
        optional("AnalyticsConfiguration") => analytics_configuration_type(),
        optional("AuthSessionValidity") => integer(),
        optional("CallbackURLs") => list(String.t()()),
        optional("ClientName") => String.t(),
        optional("DefaultRedirectURI") => String.t(),
        optional("EnablePropagateAdditionalUserContextData") => boolean(),
        optional("EnableTokenRevocation") => boolean(),
        optional("ExplicitAuthFlows") => list(list(any())()),
        optional("IdTokenValidity") => integer(),
        optional("LogoutURLs") => list(String.t()()),
        optional("PreventUserExistenceErrors") => list(any()),
        optional("ReadAttributes") => list(String.t()()),
        optional("RefreshTokenValidity") => integer(),
        optional("SupportedIdentityProviders") => list(String.t()()),
        optional("TokenValidityUnits") => token_validity_units_type(),
        optional("WriteAttributes") => list(String.t()()),
        required("ClientId") => String.t(),
        required("UserPoolId") => String.t()
      }
      
  """
  @type update_user_pool_client_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_ui_customization_response() :: %{
        "UICustomization" => ui_customization_type()
      }
      
  """
  @type get_ui_customization_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_users_request() :: %{
        optional("AttributesToGet") => list(String.t()()),
        optional("Filter") => String.t(),
        optional("Limit") => integer(),
        optional("PaginationToken") => String.t(),
        required("UserPoolId") => String.t()
      }
      
  """
  @type list_users_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      revoke_token_request() :: %{
        optional("ClientSecret") => String.t(),
        required("ClientId") => String.t(),
        required("Token") => String.t()
      }
      
  """
  @type revoke_token_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_software_token_request() :: %{
        optional("AccessToken") => String.t(),
        optional("Session") => String.t()
      }
      
  """
  @type associate_software_token_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      confirm_forgot_password_request() :: %{
        optional("AnalyticsMetadata") => analytics_metadata_type(),
        optional("ClientMetadata") => map(),
        optional("SecretHash") => String.t(),
        optional("UserContextData") => user_context_data_type(),
        required("ClientId") => String.t(),
        required("ConfirmationCode") => String.t(),
        required("Password") => String.t(),
        required("Username") => String.t()
      }
      
  """
  @type confirm_forgot_password_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      mfa_option_type() :: %{
        "AttributeName" => String.t(),
        "DeliveryMedium" => list(any())
      }
      
  """
  @type mfa_option_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      code_delivery_failure_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type code_delivery_failure_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_resource_server_response() :: %{
        "ResourceServer" => resource_server_type()
      }
      
  """
  @type create_resource_server_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      forgot_password_response() :: %{
        "CodeDeliveryDetails" => code_delivery_details_type()
      }
      
  """
  @type forgot_password_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      schema_attribute_type() :: %{
        "AttributeDataType" => list(any()),
        "DeveloperOnlyAttribute" => boolean(),
        "Mutable" => boolean(),
        "Name" => String.t(),
        "NumberAttributeConstraints" => number_attribute_constraints_type(),
        "Required" => boolean(),
        "StringAttributeConstraints" => string_attribute_constraints_type()
      }
      
  """
  @type schema_attribute_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_takeover_action_type() :: %{
        "EventAction" => list(any()),
        "Notify" => boolean()
      }
      
  """
  @type account_takeover_action_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_identity_provider_request() :: %{
        optional("AttributeMapping") => map(),
        optional("IdpIdentifiers") => list(String.t()()),
        optional("ProviderDetails") => map(),
        required("ProviderName") => String.t(),
        required("UserPoolId") => String.t()
      }
      
  """
  @type update_identity_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      context_data_type() :: %{
        "EncodedData" => String.t(),
        "HttpHeaders" => list(http_header()()),
        "IpAddress" => String.t(),
        "ServerName" => String.t(),
        "ServerPath" => String.t()
      }
      
  """
  @type context_data_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      admin_get_device_request() :: %{
        required("DeviceKey") => String.t(),
        required("UserPoolId") => String.t(),
        required("Username") => String.t()
      }
      
  """
  @type admin_get_device_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_groups_response() :: %{
        "Groups" => list(group_type()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      admin_initiate_auth_response() :: %{
        "AuthenticationResult" => authentication_result_type(),
        "ChallengeName" => list(any()),
        "ChallengeParameters" => map(),
        "Session" => String.t()
      }
      
  """
  @type admin_initiate_auth_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_group_request() :: %{
        required("GroupName") => String.t(),
        required("UserPoolId") => String.t()
      }
      
  """
  @type get_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      confirm_sign_up_request() :: %{
        optional("AnalyticsMetadata") => analytics_metadata_type(),
        optional("ClientMetadata") => map(),
        optional("ForceAliasCreation") => boolean(),
        optional("SecretHash") => String.t(),
        optional("UserContextData") => user_context_data_type(),
        required("ClientId") => String.t(),
        required("ConfirmationCode") => String.t(),
        required("Username") => String.t()
      }
      
  """
  @type confirm_sign_up_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      respond_to_auth_challenge_response() :: %{
        "AuthenticationResult" => authentication_result_type(),
        "ChallengeName" => list(any()),
        "ChallengeParameters" => map(),
        "Session" => String.t()
      }
      
  """
  @type respond_to_auth_challenge_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      admin_forget_device_request() :: %{
        required("DeviceKey") => String.t(),
        required("UserPoolId") => String.t(),
        required("Username") => String.t()
      }
      
  """
  @type admin_forget_device_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_groups_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        required("UserPoolId") => String.t()
      }
      
  """
  @type list_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_risk_configuration_response() :: %{
        "RiskConfiguration" => risk_configuration_type()
      }
      
  """
  @type set_risk_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_sms_role_trust_relationship_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_sms_role_trust_relationship_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      admin_list_user_auth_events_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("UserPoolId") => String.t(),
        required("Username") => String.t()
      }
      
  """
  @type admin_list_user_auth_events_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_pool_type() :: %{
        "Status" => list(any()),
        "EmailConfiguration" => email_configuration_type(),
        "AutoVerifiedAttributes" => list(list(any())()),
        "UsernameAttributes" => list(list(any())()),
        "CreationDate" => non_neg_integer(),
        "Policies" => user_pool_policy_type(),
        "EmailVerificationSubject" => String.t(),
        "UsernameConfiguration" => username_configuration_type(),
        "SmsConfiguration" => sms_configuration_type(),
        "LambdaConfig" => lambda_config_type(),
        "MfaConfiguration" => list(any()),
        "UserAttributeUpdateSettings" => user_attribute_update_settings_type(),
        "Id" => String.t(),
        "VerificationMessageTemplate" => verification_message_template_type(),
        "CustomDomain" => String.t(),
        "EmailConfigurationFailure" => String.t(),
        "UserPoolTags" => map(),
        "UserPoolAddOns" => user_pool_add_ons_type(),
        "EmailVerificationMessage" => String.t(),
        "LastModifiedDate" => non_neg_integer(),
        "AliasAttributes" => list(list(any())()),
        "DeletionProtection" => list(any()),
        "SmsConfigurationFailure" => String.t(),
        "SmsAuthenticationMessage" => String.t(),
        "Arn" => String.t(),
        "SmsVerificationMessage" => String.t(),
        "Name" => String.t(),
        "EstimatedNumberOfUsers" => integer(),
        "DeviceConfiguration" => device_configuration_type(),
        "Domain" => String.t(),
        "AdminCreateUserConfig" => admin_create_user_config_type(),
        "AccountRecoverySetting" => account_recovery_setting_type(),
        "SchemaAttributes" => list(schema_attribute_type()())
      }
      
  """
  @type user_pool_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      precondition_not_met_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type precondition_not_met_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      admin_delete_user_attributes_response() :: %{}
      
  """
  @type admin_delete_user_attributes_response() :: %{}

  @typedoc """

  ## Example:
      
      username_configuration_type() :: %{
        "CaseSensitive" => boolean()
      }
      
  """
  @type username_configuration_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_takeover_actions_type() :: %{
        "HighAction" => account_takeover_action_type(),
        "LowAction" => account_takeover_action_type(),
        "MediumAction" => account_takeover_action_type()
      }
      
  """
  @type account_takeover_actions_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      admin_set_user_mfa_preference_request() :: %{
        optional("SMSMfaSettings") => sms_mfa_settings_type(),
        optional("SoftwareTokenMfaSettings") => software_token_mfa_settings_type(),
        required("UserPoolId") => String.t(),
        required("Username") => String.t()
      }
      
  """
  @type admin_set_user_mfa_preference_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_user_import_job_request() :: %{
        required("JobId") => String.t(),
        required("UserPoolId") => String.t()
      }
      
  """
  @type stop_user_import_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_signing_certificate_request() :: %{
        required("UserPoolId") => String.t()
      }
      
  """
  @type get_signing_certificate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_password_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_password_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_group_response() :: %{
        "Group" => group_type()
      }
      
  """
  @type update_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      risk_configuration_type() :: %{
        "AccountTakeoverRiskConfiguration" => account_takeover_risk_configuration_type(),
        "ClientId" => String.t(),
        "CompromisedCredentialsRiskConfiguration" => compromised_credentials_risk_configuration_type(),
        "LastModifiedDate" => non_neg_integer(),
        "RiskExceptionConfiguration" => risk_exception_configuration_type(),
        "UserPoolId" => String.t()
      }
      
  """
  @type risk_configuration_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      verification_message_template_type() :: %{
        "DefaultEmailOption" => list(any()),
        "EmailMessage" => String.t(),
        "EmailMessageByLink" => String.t(),
        "EmailSubject" => String.t(),
        "EmailSubjectByLink" => String.t(),
        "SmsMessage" => String.t()
      }
      
  """
  @type verification_message_template_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      analytics_configuration_type() :: %{
        "ApplicationArn" => String.t(),
        "ApplicationId" => String.t(),
        "ExternalId" => String.t(),
        "RoleArn" => String.t(),
        "UserDataShared" => boolean()
      }
      
  """
  @type analytics_configuration_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_group_response() :: %{
        "Group" => group_type()
      }
      
  """
  @type create_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      mfa_method_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type mfa_method_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_error_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type internal_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sms_configuration_type() :: %{
        "ExternalId" => String.t(),
        "SnsCallerArn" => String.t(),
        "SnsRegion" => String.t()
      }
      
  """
  @type sms_configuration_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_user_pool_clients_response() :: %{
        "NextToken" => String.t(),
        "UserPoolClients" => list(user_pool_client_description()())
      }
      
  """
  @type list_user_pool_clients_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      provider_description() :: %{
        "CreationDate" => non_neg_integer(),
        "LastModifiedDate" => non_neg_integer(),
        "ProviderName" => String.t(),
        "ProviderType" => list(any())
      }
      
  """
  @type provider_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      admin_delete_user_request() :: %{
        required("UserPoolId") => String.t(),
        required("Username") => String.t()
      }
      
  """
  @type admin_delete_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_user_mfa_preference_request() :: %{
        optional("SMSMfaSettings") => sms_mfa_settings_type(),
        optional("SoftwareTokenMfaSettings") => software_token_mfa_settings_type(),
        required("AccessToken") => String.t()
      }
      
  """
  @type set_user_mfa_preference_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unexpected_lambda_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type unexpected_lambda_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_device_response() :: %{
        "Device" => device_type()
      }
      
  """
  @type get_device_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_user_attribute_verification_code_response() :: %{
        "CodeDeliveryDetails" => code_delivery_details_type()
      }
      
  """
  @type get_user_attribute_verification_code_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_resource_servers_response() :: %{
        "NextToken" => String.t(),
        "ResourceServers" => list(resource_server_type()())
      }
      
  """
  @type list_resource_servers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_user_import_job_request() :: %{
        required("JobId") => String.t(),
        required("UserPoolId") => String.t()
      }
      
  """
  @type start_user_import_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      domain_description_type() :: %{
        "AWSAccountId" => String.t(),
        "CloudFrontDistribution" => String.t(),
        "CustomDomainConfig" => custom_domain_config_type(),
        "Domain" => String.t(),
        "S3Bucket" => String.t(),
        "Status" => list(any()),
        "UserPoolId" => String.t(),
        "Version" => String.t()
      }
      
  """
  @type domain_description_type() :: %{String.t() => any()}

  @type add_custom_attributes_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | user_import_in_progress_exception()

  @type admin_add_user_to_group_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | user_not_found_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type admin_confirm_sign_up_errors() ::
          unexpected_lambda_exception()
          | internal_error_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | user_lambda_validation_exception()
          | invalid_lambda_response_exception()
          | user_not_found_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | too_many_failed_attempts_exception()

  @type admin_create_user_errors() ::
          unexpected_lambda_exception()
          | internal_error_exception()
          | invalid_password_exception()
          | precondition_not_met_exception()
          | invalid_sms_role_trust_relationship_exception()
          | code_delivery_failure_exception()
          | username_exists_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | user_lambda_validation_exception()
          | invalid_lambda_response_exception()
          | user_not_found_exception()
          | resource_not_found_exception()
          | invalid_sms_role_access_policy_exception()
          | too_many_requests_exception()
          | unsupported_user_state_exception()

  @type admin_delete_user_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | user_not_found_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type admin_delete_user_attributes_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | user_not_found_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type admin_disable_provider_for_user_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | user_not_found_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | alias_exists_exception()

  @type admin_disable_user_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | user_not_found_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type admin_enable_user_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | user_not_found_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type admin_forget_device_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | invalid_user_pool_configuration_exception()
          | not_authorized_exception()
          | user_not_found_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type admin_get_device_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | invalid_user_pool_configuration_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type admin_get_user_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | user_not_found_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type admin_initiate_auth_errors() ::
          unexpected_lambda_exception()
          | internal_error_exception()
          | mfa_method_not_found_exception()
          | invalid_sms_role_trust_relationship_exception()
          | invalid_parameter_exception()
          | invalid_user_pool_configuration_exception()
          | not_authorized_exception()
          | user_lambda_validation_exception()
          | invalid_lambda_response_exception()
          | user_not_found_exception()
          | password_reset_required_exception()
          | resource_not_found_exception()
          | invalid_sms_role_access_policy_exception()
          | too_many_requests_exception()
          | user_not_confirmed_exception()

  @type admin_link_provider_for_user_errors() ::
          internal_error_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | user_not_found_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | alias_exists_exception()

  @type admin_list_devices_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | invalid_user_pool_configuration_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type admin_list_groups_for_user_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | user_not_found_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type admin_list_user_auth_events_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | user_pool_add_on_not_enabled_exception()
          | not_authorized_exception()
          | user_not_found_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type admin_remove_user_from_group_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | user_not_found_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type admin_reset_user_password_errors() ::
          unexpected_lambda_exception()
          | internal_error_exception()
          | invalid_sms_role_trust_relationship_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | user_lambda_validation_exception()
          | invalid_lambda_response_exception()
          | user_not_found_exception()
          | resource_not_found_exception()
          | invalid_sms_role_access_policy_exception()
          | too_many_requests_exception()
          | invalid_email_role_access_policy_exception()

  @type admin_respond_to_auth_challenge_errors() ::
          unexpected_lambda_exception()
          | internal_error_exception()
          | mfa_method_not_found_exception()
          | invalid_password_exception()
          | invalid_sms_role_trust_relationship_exception()
          | software_token_mfa_not_found_exception()
          | invalid_parameter_exception()
          | invalid_user_pool_configuration_exception()
          | not_authorized_exception()
          | user_lambda_validation_exception()
          | expired_code_exception()
          | invalid_lambda_response_exception()
          | user_not_found_exception()
          | password_reset_required_exception()
          | resource_not_found_exception()
          | code_mismatch_exception()
          | invalid_sms_role_access_policy_exception()
          | too_many_requests_exception()
          | alias_exists_exception()
          | user_not_confirmed_exception()

  @type admin_set_user_mfa_preference_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | user_not_found_exception()
          | password_reset_required_exception()
          | resource_not_found_exception()
          | user_not_confirmed_exception()

  @type admin_set_user_password_errors() ::
          internal_error_exception()
          | invalid_password_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | user_not_found_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type admin_set_user_settings_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | user_not_found_exception()
          | resource_not_found_exception()

  @type admin_update_auth_event_feedback_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | user_pool_add_on_not_enabled_exception()
          | not_authorized_exception()
          | user_not_found_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type admin_update_device_status_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | invalid_user_pool_configuration_exception()
          | not_authorized_exception()
          | user_not_found_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type admin_update_user_attributes_errors() ::
          unexpected_lambda_exception()
          | internal_error_exception()
          | invalid_sms_role_trust_relationship_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | user_lambda_validation_exception()
          | invalid_lambda_response_exception()
          | user_not_found_exception()
          | resource_not_found_exception()
          | invalid_sms_role_access_policy_exception()
          | too_many_requests_exception()
          | alias_exists_exception()
          | invalid_email_role_access_policy_exception()

  @type admin_user_global_sign_out_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | user_not_found_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type associate_software_token_errors() ::
          internal_error_exception()
          | concurrent_modification_exception()
          | software_token_mfa_not_found_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | forbidden_exception()

  @type change_password_errors() ::
          internal_error_exception()
          | invalid_password_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | user_not_found_exception()
          | password_reset_required_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | user_not_confirmed_exception()

  @type confirm_device_errors() ::
          internal_error_exception()
          | invalid_password_exception()
          | username_exists_exception()
          | invalid_parameter_exception()
          | invalid_user_pool_configuration_exception()
          | not_authorized_exception()
          | invalid_lambda_response_exception()
          | user_not_found_exception()
          | password_reset_required_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | user_not_confirmed_exception()

  @type confirm_forgot_password_errors() ::
          unexpected_lambda_exception()
          | internal_error_exception()
          | invalid_password_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | user_lambda_validation_exception()
          | expired_code_exception()
          | invalid_lambda_response_exception()
          | user_not_found_exception()
          | resource_not_found_exception()
          | code_mismatch_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | user_not_confirmed_exception()
          | too_many_failed_attempts_exception()

  @type confirm_sign_up_errors() ::
          unexpected_lambda_exception()
          | internal_error_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | user_lambda_validation_exception()
          | expired_code_exception()
          | invalid_lambda_response_exception()
          | user_not_found_exception()
          | resource_not_found_exception()
          | code_mismatch_exception()
          | too_many_requests_exception()
          | alias_exists_exception()
          | forbidden_exception()
          | too_many_failed_attempts_exception()

  @type create_group_errors() ::
          internal_error_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | group_exists_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type create_identity_provider_errors() ::
          internal_error_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | duplicate_provider_exception()

  @type create_resource_server_errors() ::
          internal_error_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type create_user_import_job_errors() ::
          internal_error_exception()
          | precondition_not_met_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type create_user_pool_errors() ::
          internal_error_exception()
          | invalid_sms_role_trust_relationship_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | user_pool_tagging_exception()
          | invalid_sms_role_access_policy_exception()
          | too_many_requests_exception()
          | invalid_email_role_access_policy_exception()

  @type create_user_pool_client_errors() ::
          internal_error_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | invalid_o_auth_flow_exception()
          | scope_does_not_exist_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type create_user_pool_domain_errors() ::
          internal_error_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()

  @type delete_group_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type delete_identity_provider_errors() ::
          internal_error_exception()
          | concurrent_modification_exception()
          | invalid_parameter_exception()
          | unsupported_identity_provider_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type delete_resource_server_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type delete_user_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | user_not_found_exception()
          | password_reset_required_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | user_not_confirmed_exception()

  @type delete_user_attributes_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | user_not_found_exception()
          | password_reset_required_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | user_not_confirmed_exception()

  @type delete_user_pool_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | user_import_in_progress_exception()

  @type delete_user_pool_client_errors() ::
          internal_error_exception()
          | concurrent_modification_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type delete_user_pool_domain_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()

  @type describe_identity_provider_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type describe_resource_server_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type describe_risk_configuration_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | user_pool_add_on_not_enabled_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type describe_user_import_job_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type describe_user_pool_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | user_pool_tagging_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type describe_user_pool_client_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type describe_user_pool_domain_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()

  @type forget_device_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | invalid_user_pool_configuration_exception()
          | not_authorized_exception()
          | user_not_found_exception()
          | password_reset_required_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | user_not_confirmed_exception()

  @type forgot_password_errors() ::
          unexpected_lambda_exception()
          | internal_error_exception()
          | invalid_sms_role_trust_relationship_exception()
          | code_delivery_failure_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | user_lambda_validation_exception()
          | invalid_lambda_response_exception()
          | user_not_found_exception()
          | resource_not_found_exception()
          | invalid_sms_role_access_policy_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | invalid_email_role_access_policy_exception()

  @type get_csv_header_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_device_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | invalid_user_pool_configuration_exception()
          | not_authorized_exception()
          | user_not_found_exception()
          | password_reset_required_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | user_not_confirmed_exception()

  @type get_group_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_identity_provider_by_identifier_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_log_delivery_configuration_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_signing_certificate_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | resource_not_found_exception()

  @type get_ui_customization_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_user_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | user_not_found_exception()
          | password_reset_required_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | user_not_confirmed_exception()

  @type get_user_attribute_verification_code_errors() ::
          unexpected_lambda_exception()
          | internal_error_exception()
          | invalid_sms_role_trust_relationship_exception()
          | code_delivery_failure_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | user_lambda_validation_exception()
          | invalid_lambda_response_exception()
          | user_not_found_exception()
          | password_reset_required_exception()
          | resource_not_found_exception()
          | invalid_sms_role_access_policy_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | invalid_email_role_access_policy_exception()
          | user_not_confirmed_exception()

  @type get_user_pool_mfa_config_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type global_sign_out_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | password_reset_required_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | user_not_confirmed_exception()

  @type initiate_auth_errors() ::
          unexpected_lambda_exception()
          | internal_error_exception()
          | invalid_sms_role_trust_relationship_exception()
          | invalid_parameter_exception()
          | invalid_user_pool_configuration_exception()
          | not_authorized_exception()
          | user_lambda_validation_exception()
          | invalid_lambda_response_exception()
          | user_not_found_exception()
          | password_reset_required_exception()
          | resource_not_found_exception()
          | invalid_sms_role_access_policy_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | user_not_confirmed_exception()

  @type list_devices_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | invalid_user_pool_configuration_exception()
          | not_authorized_exception()
          | user_not_found_exception()
          | password_reset_required_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | user_not_confirmed_exception()

  @type list_groups_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type list_identity_providers_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type list_resource_servers_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type list_tags_for_resource_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type list_user_import_jobs_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type list_user_pool_clients_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type list_user_pools_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | too_many_requests_exception()

  @type list_users_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type list_users_in_group_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type resend_confirmation_code_errors() ::
          unexpected_lambda_exception()
          | internal_error_exception()
          | invalid_sms_role_trust_relationship_exception()
          | code_delivery_failure_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | user_lambda_validation_exception()
          | invalid_lambda_response_exception()
          | user_not_found_exception()
          | resource_not_found_exception()
          | invalid_sms_role_access_policy_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | invalid_email_role_access_policy_exception()

  @type respond_to_auth_challenge_errors() ::
          unexpected_lambda_exception()
          | internal_error_exception()
          | mfa_method_not_found_exception()
          | invalid_password_exception()
          | invalid_sms_role_trust_relationship_exception()
          | software_token_mfa_not_found_exception()
          | invalid_parameter_exception()
          | invalid_user_pool_configuration_exception()
          | not_authorized_exception()
          | user_lambda_validation_exception()
          | expired_code_exception()
          | invalid_lambda_response_exception()
          | user_not_found_exception()
          | password_reset_required_exception()
          | resource_not_found_exception()
          | code_mismatch_exception()
          | invalid_sms_role_access_policy_exception()
          | too_many_requests_exception()
          | alias_exists_exception()
          | forbidden_exception()
          | user_not_confirmed_exception()

  @type revoke_token_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()
          | unsupported_operation_exception()
          | unsupported_token_type_exception()

  @type set_log_delivery_configuration_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type set_risk_configuration_errors() ::
          internal_error_exception()
          | code_delivery_failure_exception()
          | invalid_parameter_exception()
          | user_pool_add_on_not_enabled_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | invalid_email_role_access_policy_exception()

  @type set_ui_customization_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type set_user_mfa_preference_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | user_not_found_exception()
          | password_reset_required_exception()
          | resource_not_found_exception()
          | forbidden_exception()
          | user_not_confirmed_exception()

  @type set_user_pool_mfa_config_errors() ::
          internal_error_exception()
          | invalid_sms_role_trust_relationship_exception()
          | concurrent_modification_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | invalid_sms_role_access_policy_exception()
          | too_many_requests_exception()

  @type set_user_settings_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | user_not_found_exception()
          | password_reset_required_exception()
          | resource_not_found_exception()
          | forbidden_exception()
          | user_not_confirmed_exception()

  @type sign_up_errors() ::
          unexpected_lambda_exception()
          | internal_error_exception()
          | invalid_password_exception()
          | invalid_sms_role_trust_relationship_exception()
          | code_delivery_failure_exception()
          | limit_exceeded_exception()
          | username_exists_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | user_lambda_validation_exception()
          | invalid_lambda_response_exception()
          | resource_not_found_exception()
          | invalid_sms_role_access_policy_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | invalid_email_role_access_policy_exception()

  @type start_user_import_job_errors() ::
          internal_error_exception()
          | precondition_not_met_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type stop_user_import_job_errors() ::
          internal_error_exception()
          | precondition_not_met_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type tag_resource_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type untag_resource_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type update_auth_event_feedback_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | user_pool_add_on_not_enabled_exception()
          | not_authorized_exception()
          | user_not_found_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type update_device_status_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | invalid_user_pool_configuration_exception()
          | not_authorized_exception()
          | user_not_found_exception()
          | password_reset_required_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | user_not_confirmed_exception()

  @type update_group_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type update_identity_provider_errors() ::
          internal_error_exception()
          | concurrent_modification_exception()
          | invalid_parameter_exception()
          | unsupported_identity_provider_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type update_resource_server_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type update_user_attributes_errors() ::
          unexpected_lambda_exception()
          | internal_error_exception()
          | invalid_sms_role_trust_relationship_exception()
          | code_delivery_failure_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | user_lambda_validation_exception()
          | expired_code_exception()
          | invalid_lambda_response_exception()
          | user_not_found_exception()
          | password_reset_required_exception()
          | resource_not_found_exception()
          | code_mismatch_exception()
          | invalid_sms_role_access_policy_exception()
          | too_many_requests_exception()
          | alias_exists_exception()
          | forbidden_exception()
          | invalid_email_role_access_policy_exception()
          | user_not_confirmed_exception()

  @type update_user_pool_errors() ::
          internal_error_exception()
          | invalid_sms_role_trust_relationship_exception()
          | concurrent_modification_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | user_pool_tagging_exception()
          | resource_not_found_exception()
          | invalid_sms_role_access_policy_exception()
          | too_many_requests_exception()
          | invalid_email_role_access_policy_exception()
          | user_import_in_progress_exception()

  @type update_user_pool_client_errors() ::
          internal_error_exception()
          | concurrent_modification_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | invalid_o_auth_flow_exception()
          | scope_does_not_exist_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type update_user_pool_domain_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type verify_software_token_errors() ::
          internal_error_exception()
          | enable_software_token_mfa_exception()
          | software_token_mfa_not_found_exception()
          | invalid_parameter_exception()
          | invalid_user_pool_configuration_exception()
          | not_authorized_exception()
          | user_not_found_exception()
          | password_reset_required_exception()
          | resource_not_found_exception()
          | code_mismatch_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | user_not_confirmed_exception()

  @type verify_user_attribute_errors() ::
          internal_error_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | expired_code_exception()
          | user_not_found_exception()
          | password_reset_required_exception()
          | resource_not_found_exception()
          | code_mismatch_exception()
          | too_many_requests_exception()
          | alias_exists_exception()
          | forbidden_exception()
          | user_not_confirmed_exception()

  def metadata do
    %{
      api_version: "2016-04-18",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "cognito-idp",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Cognito Identity Provider",
      signature_version: "v4",
      signing_name: "cognito-idp",
      target_prefix: "AWSCognitoIdentityProviderService"
    }
  end

  @doc """
  Adds additional user attributes to the user pool schema.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20AddCustomAttributes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:add_custom_attributes_request`)
    %{
      required("CustomAttributes") => list(schema_attribute_type()()),
      required("UserPoolId") => String.t()
    }
  """

  @spec add_custom_attributes(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, add_custom_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, add_custom_attributes_errors()}

  def add_custom_attributes(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AddCustomAttributes", input, options)
  end

  @doc """
  Adds a user to a group. A user who is in a group can present a preferred-role
  claim to an identity pool, and populates a `cognito:groups` claim to their
  access and identity tokens.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20AdminAddUserToGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:admin_add_user_to_group_request`)
    %{
      required("GroupName") => String.t(),
      required("UserPoolId") => String.t(),
      required("Username") => String.t()
    }
  """

  @spec admin_add_user_to_group(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, admin_add_user_to_group_errors()}

  def admin_add_user_to_group(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminAddUserToGroup", input, options)
  end

  @doc """
  This IAM-authenticated API operation provides a code that Amazon Cognito sent to
  your user when they signed up in your user pool. After your user enters their
  code, they confirm ownership of the email address or phone number that they
  provided, and their user account becomes active. Depending on your user pool
  configuration, your users will receive their confirmation code in an email or
  SMS message. Local users who signed up in your user pool are the only type of
  user who can confirm sign-up with a code. Users who federate through an
  external identity provider (IdP) have already been confirmed by their IdP.
  Administrator-created users confirm their accounts when they respond to their
  invitation email message and choose a password.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20AdminConfirmSignUp&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:admin_confirm_sign_up_request`)
    %{
      optional("ClientMetadata") => map(),
      required("UserPoolId") => String.t(),
      required("Username") => String.t()
    }
  """

  @spec admin_confirm_sign_up(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, admin_confirm_sign_up_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, admin_confirm_sign_up_errors()}

  def admin_confirm_sign_up(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminConfirmSignUp", input, options)
  end

  @doc """
  Creates a new user in the specified user pool. If `MessageAction` isn't set, the
  default is to send a welcome message via email or phone (SMS).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20AdminCreateUser&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:admin_create_user_request`)
    %{
      optional("ClientMetadata") => map(),
      optional("DesiredDeliveryMediums") => list(list(any())()),
      optional("ForceAliasCreation") => boolean(),
      optional("MessageAction") => list(any()),
      optional("TemporaryPassword") => String.t(),
      optional("UserAttributes") => list(attribute_type()()),
      optional("ValidationData") => list(attribute_type()()),
      required("UserPoolId") => String.t(),
      required("Username") => String.t()
    }
  """

  @spec admin_create_user(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, admin_create_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, admin_create_user_errors()}

  def admin_create_user(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminCreateUser", input, options)
  end

  @doc """
  Deletes a user as an administrator. Works on any user.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20AdminDeleteUser&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:admin_delete_user_request`)
    %{
      required("UserPoolId") => String.t(),
      required("Username") => String.t()
    }
  """

  @spec admin_delete_user(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, admin_delete_user_errors()}

  def admin_delete_user(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminDeleteUser", input, options)
  end

  @doc """
  Deletes the user attributes in a user pool as an administrator. Works on any
  user.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20AdminDeleteUserAttributes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:admin_delete_user_attributes_request`)
    %{
      required("UserAttributeNames") => list(String.t()()),
      required("UserPoolId") => String.t(),
      required("Username") => String.t()
    }
  """

  @spec admin_delete_user_attributes(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, admin_delete_user_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, admin_delete_user_attributes_errors()}

  def admin_delete_user_attributes(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminDeleteUserAttributes", input, options)
  end

  @doc """
  Prevents the user from signing in with the specified external (SAML or social)
  identity provider (IdP). If the user that you want to deactivate is a Amazon
  Cognito user pools native username + password user, they can't use their
  password to sign in. If the user to deactivate is a linked external IdP user,
  any link between that user and an existing user is removed. When the external
  user signs in again, and the user is no longer attached to the previously
  linked `DestinationUser`, the user must create a new user account. See
  [AdminLinkProviderForUser](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminLinkProviderForUser.html).
  The `ProviderName` must match the value specified when creating an IdP for the
  pool. To deactivate a native username + password user, the `ProviderName`
  value must be `Cognito` and the `ProviderAttributeName` must be
  `Cognito_Subject`. The `ProviderAttributeValue` must be the name that is used
  in the user pool for the user.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20AdminDisableProviderForUser&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:admin_disable_provider_for_user_request`)
    %{
      required("User") => provider_user_identifier_type(),
      required("UserPoolId") => String.t()
    }
  """

  @spec admin_disable_provider_for_user(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, admin_disable_provider_for_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, admin_disable_provider_for_user_errors()}

  def admin_disable_provider_for_user(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminDisableProviderForUser", input, options)
  end

  @doc """
  Deactivates a user and revokes all access tokens for the user. A deactivated
  user can't sign in, but still appears in the responses to `GetUser` and
  `ListUsers` API requests.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20AdminDisableUser&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:admin_disable_user_request`)
    %{
      required("UserPoolId") => String.t(),
      required("Username") => String.t()
    }
  """

  @spec admin_disable_user(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, admin_disable_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, admin_disable_user_errors()}

  def admin_disable_user(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminDisableUser", input, options)
  end

  @doc """
  Enables the specified user as an administrator. Works on any user.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20AdminEnableUser&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:admin_enable_user_request`)
    %{
      required("UserPoolId") => String.t(),
      required("Username") => String.t()
    }
  """

  @spec admin_enable_user(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, admin_enable_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, admin_enable_user_errors()}

  def admin_enable_user(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminEnableUser", input, options)
  end

  @doc """
  Forgets the device, as an administrator.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20AdminForgetDevice&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:admin_forget_device_request`)
    %{
      required("DeviceKey") => String.t(),
      required("UserPoolId") => String.t(),
      required("Username") => String.t()
    }
  """

  @spec admin_forget_device(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, admin_forget_device_errors()}

  def admin_forget_device(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminForgetDevice", input, options)
  end

  @doc """
  Gets the device, as an administrator.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20AdminGetDevice&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:admin_get_device_request`)
    %{
      required("DeviceKey") => String.t(),
      required("UserPoolId") => String.t(),
      required("Username") => String.t()
    }
  """

  @spec admin_get_device(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, admin_get_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, admin_get_device_errors()}

  def admin_get_device(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminGetDevice", input, options)
  end

  @doc """
  Gets the specified user by user name in a user pool as an administrator. Works
  on any user.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20AdminGetUser&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:admin_get_user_request`)
    %{
      required("UserPoolId") => String.t(),
      required("Username") => String.t()
    }
  """

  @spec admin_get_user(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, admin_get_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, admin_get_user_errors()}

  def admin_get_user(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminGetUser", input, options)
  end

  @doc """
  Initiates the authentication flow, as an administrator.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20AdminInitiateAuth&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:admin_initiate_auth_request`)
    %{
      optional("AnalyticsMetadata") => analytics_metadata_type(),
      optional("AuthParameters") => map(),
      optional("ClientMetadata") => map(),
      optional("ContextData") => context_data_type(),
      required("AuthFlow") => list(any()),
      required("ClientId") => String.t(),
      required("UserPoolId") => String.t()
    }
  """

  @spec admin_initiate_auth(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, admin_initiate_auth_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, admin_initiate_auth_errors()}

  def admin_initiate_auth(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminInitiateAuth", input, options)
  end

  @doc """
  Links an existing user account in a user pool (`DestinationUser`) to an identity
  from an external IdP (`SourceUser`) based on a specified attribute name and
  value from the external IdP. This allows you to create a link from the
  existing user account to an external federated user identity that has not yet
  been used to sign in. You can then use the federated user identity to sign in
  as the existing user account. For example, if there is an existing user with a
  username and password, this API links that user to a federated user identity.
  When the user signs in with a federated user identity, they sign in as the
  existing user account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20AdminLinkProviderForUser&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:admin_link_provider_for_user_request`)
    %{
      required("DestinationUser") => provider_user_identifier_type(),
      required("SourceUser") => provider_user_identifier_type(),
      required("UserPoolId") => String.t()
    }
  """

  @spec admin_link_provider_for_user(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, admin_link_provider_for_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, admin_link_provider_for_user_errors()}

  def admin_link_provider_for_user(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminLinkProviderForUser", input, options)
  end

  @doc """
  Lists devices, as an administrator.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20AdminListDevices&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:admin_list_devices_request`)
    %{
      optional("Limit") => integer(),
      optional("PaginationToken") => String.t(),
      required("UserPoolId") => String.t(),
      required("Username") => String.t()
    }
  """

  @spec admin_list_devices(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, admin_list_devices_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, admin_list_devices_errors()}

  def admin_list_devices(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminListDevices", input, options)
  end

  @doc """
  Lists the groups that a user belongs to.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20AdminListGroupsForUser&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:admin_list_groups_for_user_request`)
    %{
      optional("Limit") => integer(),
      optional("NextToken") => String.t(),
      required("UserPoolId") => String.t(),
      required("Username") => String.t()
    }
  """

  @spec admin_list_groups_for_user(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, admin_list_groups_for_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, admin_list_groups_for_user_errors()}

  def admin_list_groups_for_user(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminListGroupsForUser", input, options)
  end

  @doc """
  A history of user activity and any risks detected as part of Amazon Cognito
  advanced security.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20AdminListUserAuthEvents&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:admin_list_user_auth_events_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("UserPoolId") => String.t(),
      required("Username") => String.t()
    }
  """

  @spec admin_list_user_auth_events(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, admin_list_user_auth_events_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, admin_list_user_auth_events_errors()}

  def admin_list_user_auth_events(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminListUserAuthEvents", input, options)
  end

  @doc """
  Removes the specified user from the specified group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20AdminRemoveUserFromGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:admin_remove_user_from_group_request`)
    %{
      required("GroupName") => String.t(),
      required("UserPoolId") => String.t(),
      required("Username") => String.t()
    }
  """

  @spec admin_remove_user_from_group(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, admin_remove_user_from_group_errors()}

  def admin_remove_user_from_group(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminRemoveUserFromGroup", input, options)
  end

  @doc """
  Resets the specified user's password in a user pool as an administrator. Works
  on any user. To use this API operation, your user pool must have self-service
  account recovery configured. Use
  [AdminSetUserPassword](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminSetUserPassword.html)
  if you manage passwords as an administrator. This action might generate an SMS
  text message. Starting June 1, 2021, US telecom carriers require you to
  register an origination phone number before you can send SMS messages to US
  phone numbers. If you use SMS text messages in Amazon Cognito, you must
  register a phone number with [Amazon
  Pinpoint](https://console.aws.amazon.com/pinpoint/home/). Amazon Cognito uses
  the registered number automatically. Otherwise, Amazon Cognito users who must
  receive SMS messages might not be able to sign up, activate their accounts, or
  sign in. If you have never used SMS text messages with Amazon Cognito or any
  other Amazon Web Service, Amazon Simple Notification Service might place your
  account in the SMS sandbox. In * [sandbox
  mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html) *, you
  can send messages only to verified phone numbers. After you test your app
  while in the sandbox environment, you can move out of the sandbox and into
  production. For more information, see [ SMS message settings for Amazon
  Cognito user
  pools](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
  in the *Amazon Cognito Developer Guide*. Deactivates a user's password,
  requiring them to change it. If a user tries to sign in after the API is
  called, Amazon Cognito responds with a `PasswordResetRequiredException` error.
  Your app must then perform the actions that reset your user's password: the
  forgot-password flow. In addition, if the user pool has phone verification
  selected and a verified phone number exists for the user, or if email
  verification is selected and a verified email exists for the user, calling
  this API will also result in sending a message to the end user with the code
  to change their password.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20AdminResetUserPassword&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:admin_reset_user_password_request`)
    %{
      optional("ClientMetadata") => map(),
      required("UserPoolId") => String.t(),
      required("Username") => String.t()
    }
  """

  @spec admin_reset_user_password(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, admin_reset_user_password_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, admin_reset_user_password_errors()}

  def admin_reset_user_password(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminResetUserPassword", input, options)
  end

  @doc """
  Some API operations in a user pool generate a challenge, like a prompt for an
  MFA code, for device authentication that bypasses MFA, or for a custom
  authentication challenge. An `AdminRespondToAuthChallenge` API request
  provides the answer to that challenge, like a code or a secure remote password
  (SRP). The parameters of a response to an authentication challenge vary with
  the type of challenge.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20AdminRespondToAuthChallenge&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:admin_respond_to_auth_challenge_request`)
    %{
      optional("AnalyticsMetadata") => analytics_metadata_type(),
      optional("ChallengeResponses") => map(),
      optional("ClientMetadata") => map(),
      optional("ContextData") => context_data_type(),
      optional("Session") => String.t(),
      required("ChallengeName") => list(any()),
      required("ClientId") => String.t(),
      required("UserPoolId") => String.t()
    }
  """

  @spec admin_respond_to_auth_challenge(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, admin_respond_to_auth_challenge_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, admin_respond_to_auth_challenge_errors()}

  def admin_respond_to_auth_challenge(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminRespondToAuthChallenge", input, options)
  end

  @doc """
  The user's multi-factor authentication (MFA) preference, including which MFA
  options are activated, and if any are preferred. Only one factor can be set as
  preferred. The preferred MFA factor will be used to authenticate a user if
  multiple factors are activated. If multiple options are activated and no
  preference is set, a challenge to choose an MFA option will be returned during
  sign-in.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20AdminSetUserMFAPreference&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:admin_set_user_mfa_preference_request`)
    %{
      optional("SMSMfaSettings") => sms_mfa_settings_type(),
      optional("SoftwareTokenMfaSettings") => software_token_mfa_settings_type(),
      required("UserPoolId") => String.t(),
      required("Username") => String.t()
    }
  """

  @spec admin_set_user_mfa_preference(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, admin_set_user_mfa_preference_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, admin_set_user_mfa_preference_errors()}

  def admin_set_user_mfa_preference(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminSetUserMFAPreference", input, options)
  end

  @doc """
  Sets the specified user's password in a user pool as an administrator. Works on
  any user. The password can be temporary or permanent. If it is temporary, the
  user status enters the `FORCE_CHANGE_PASSWORD` state. When the user next tries
  to sign in, the InitiateAuth/AdminInitiateAuth response will contain the
  `NEW_PASSWORD_REQUIRED` challenge. If the user doesn't sign in before it
  expires, the user won't be able to sign in, and an administrator must reset
  their password.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20AdminSetUserPassword&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:admin_set_user_password_request`)
    %{
      optional("Permanent") => boolean(),
      required("Password") => String.t(),
      required("UserPoolId") => String.t(),
      required("Username") => String.t()
    }
  """

  @spec admin_set_user_password(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, admin_set_user_password_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, admin_set_user_password_errors()}

  def admin_set_user_password(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminSetUserPassword", input, options)
  end

  @doc """
  *This action is no longer supported.* You can use it to configure only SMS MFA.
  You can't use it to configure time-based one-time password (TOTP) software
  token MFA. To configure either type of MFA, use
  [AdminSetUserMFAPreference](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminSetUserMFAPreference.html)
  instead. Amazon Cognito evaluates Identity and Access Management (IAM)
  policies in requests for this API operation. For this operation, you must use
  IAM credentials to authorize requests, and you must grant yourself the
  corresponding IAM permission in a policy. **Learn more** [Signing Amazon Web
  Services API
  Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)
  [Using the Amazon Cognito user pools API and user pool
  endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20AdminSetUserSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:admin_set_user_settings_request`)
    %{
      required("MFAOptions") => list(mfa_option_type()()),
      required("UserPoolId") => String.t(),
      required("Username") => String.t()
    }
  """

  @spec admin_set_user_settings(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, admin_set_user_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, admin_set_user_settings_errors()}

  def admin_set_user_settings(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminSetUserSettings", input, options)
  end

  @doc """
  Provides feedback for an authentication event indicating if it was from a valid
  user. This feedback is used for improving the risk evaluation decision for the
  user pool as part of Amazon Cognito advanced security.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20AdminUpdateAuthEventFeedback&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:admin_update_auth_event_feedback_request`)
    %{
      required("EventId") => String.t(),
      required("FeedbackValue") => list(any()),
      required("UserPoolId") => String.t(),
      required("Username") => String.t()
    }
  """

  @spec admin_update_auth_event_feedback(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, admin_update_auth_event_feedback_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, admin_update_auth_event_feedback_errors()}

  def admin_update_auth_event_feedback(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminUpdateAuthEventFeedback", input, options)
  end

  @doc """
  Updates the device status as an administrator.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20AdminUpdateDeviceStatus&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:admin_update_device_status_request`)
    %{
      optional("DeviceRememberedStatus") => list(any()),
      required("DeviceKey") => String.t(),
      required("UserPoolId") => String.t(),
      required("Username") => String.t()
    }
  """

  @spec admin_update_device_status(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, admin_update_device_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, admin_update_device_status_errors()}

  def admin_update_device_status(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminUpdateDeviceStatus", input, options)
  end

  @doc """
  This action might generate an SMS text message. Starting June 1, 2021, US
  telecom carriers require you to register an origination phone number before
  you can send SMS messages to US phone numbers. If you use SMS text messages in
  Amazon Cognito, you must register a phone number with [Amazon
  Pinpoint](https://console.aws.amazon.com/pinpoint/home/). Amazon Cognito uses
  the registered number automatically. Otherwise, Amazon Cognito users who must
  receive SMS messages might not be able to sign up, activate their accounts, or
  sign in. If you have never used SMS text messages with Amazon Cognito or any
  other Amazon Web Service, Amazon Simple Notification Service might place your
  account in the SMS sandbox. In * [sandbox
  mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html) *, you
  can send messages only to verified phone numbers. After you test your app
  while in the sandbox environment, you can move out of the sandbox and into
  production. For more information, see [ SMS message settings for Amazon
  Cognito user
  pools](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
  in the *Amazon Cognito Developer Guide*. Updates the specified user's
  attributes, including developer attributes, as an administrator. Works on any
  user. To delete an attribute from your user, submit the attribute in your API
  request with a blank value. For custom attributes, you must prepend the
  `custom:` prefix to the attribute name.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20AdminUpdateUserAttributes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:admin_update_user_attributes_request`)
    %{
      optional("ClientMetadata") => map(),
      required("UserAttributes") => list(attribute_type()()),
      required("UserPoolId") => String.t(),
      required("Username") => String.t()
    }
  """

  @spec admin_update_user_attributes(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, admin_update_user_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, admin_update_user_attributes_errors()}

  def admin_update_user_attributes(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminUpdateUserAttributes", input, options)
  end

  @doc """
  Invalidates the identity, access, and refresh tokens that Amazon Cognito issued
  to a user. Call this operation with your administrative credentials when your
  user signs out of your app. This results in the following behavior.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20AdminUserGlobalSignOut&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:admin_user_global_sign_out_request`)
    %{
      required("UserPoolId") => String.t(),
      required("Username") => String.t()
    }
  """

  @spec admin_user_global_sign_out(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, admin_user_global_sign_out_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, admin_user_global_sign_out_errors()}

  def admin_user_global_sign_out(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminUserGlobalSignOut", input, options)
  end

  @doc """
  Begins setup of time-based one-time password (TOTP) multi-factor authentication
  (MFA) for a user, with a unique private key that Amazon Cognito generates and
  returns in the API response. You can authorize an `AssociateSoftwareToken`
  request with either the user's access token, or a session string from a
  challenge response that you received from Amazon Cognito.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20AssociateSoftwareToken&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:associate_software_token_request`)
    %{
      optional("AccessToken") => String.t(),
      optional("Session") => String.t()
    }
  """

  @spec associate_software_token(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, associate_software_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_software_token_errors()}

  def associate_software_token(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssociateSoftwareToken", input, options)
  end

  @doc """
  Changes the password for a specified user in a user pool. Authorize this action
  with a signed-in user's access token. It must include the scope
  `aws.cognito.signin.user.admin`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20ChangePassword&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:change_password_request`)
    %{
      required("AccessToken") => String.t(),
      required("PreviousPassword") => String.t(),
      required("ProposedPassword") => String.t()
    }
  """

  @spec change_password(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, change_password_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, change_password_errors()}

  def change_password(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ChangePassword", input, options)
  end

  @doc """
  Confirms tracking of the device. This API call is the call that begins device
  tracking. For more information about device authentication, see [Working with
  user devices in your user
  pool](https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html).
  Authorize this action with a signed-in user's access token. It must include
  the scope `aws.cognito.signin.user.admin`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20ConfirmDevice&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:confirm_device_request`)
    %{
      optional("DeviceName") => String.t(),
      optional("DeviceSecretVerifierConfig") => device_secret_verifier_config_type(),
      required("AccessToken") => String.t(),
      required("DeviceKey") => String.t()
    }
  """

  @spec confirm_device(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, confirm_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, confirm_device_errors()}

  def confirm_device(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ConfirmDevice", input, options)
  end

  @doc """
  Allows a user to enter a confirmation code to reset a forgotten password.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20ConfirmForgotPassword&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:confirm_forgot_password_request`)
    %{
      optional("AnalyticsMetadata") => analytics_metadata_type(),
      optional("ClientMetadata") => map(),
      optional("SecretHash") => String.t(),
      optional("UserContextData") => user_context_data_type(),
      required("ClientId") => String.t(),
      required("ConfirmationCode") => String.t(),
      required("Password") => String.t(),
      required("Username") => String.t()
    }
  """

  @spec confirm_forgot_password(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, confirm_forgot_password_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, confirm_forgot_password_errors()}

  def confirm_forgot_password(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ConfirmForgotPassword", input, options)
  end

  @doc """
  This public API operation provides a code that Amazon Cognito sent to your user
  when they signed up in your user pool via the
  [SignUp](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_SignUp.html)
  API operation. After your user enters their code, they confirm ownership of
  the email address or phone number that they provided, and their user account
  becomes active. Depending on your user pool configuration, your users will
  receive their confirmation code in an email or SMS message. Local users who
  signed up in your user pool are the only type of user who can confirm sign-up
  with a code. Users who federate through an external identity provider (IdP)
  have already been confirmed by their IdP. Administrator-created users, users
  created with the
  [AdminCreateUser](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminCreateUser.html)
  API operation, confirm their accounts when they respond to their invitation
  email message and choose a password. They do not receive a confirmation code.
  Instead, they receive a temporary password.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20ConfirmSignUp&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:confirm_sign_up_request`)
    %{
      optional("AnalyticsMetadata") => analytics_metadata_type(),
      optional("ClientMetadata") => map(),
      optional("ForceAliasCreation") => boolean(),
      optional("SecretHash") => String.t(),
      optional("UserContextData") => user_context_data_type(),
      required("ClientId") => String.t(),
      required("ConfirmationCode") => String.t(),
      required("Username") => String.t()
    }
  """

  @spec confirm_sign_up(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, confirm_sign_up_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, confirm_sign_up_errors()}

  def confirm_sign_up(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ConfirmSignUp", input, options)
  end

  @doc """
  Creates a new group in the specified user pool.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20CreateGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_group_request`)
    %{
      optional("Description") => String.t(),
      optional("Precedence") => integer(),
      optional("RoleArn") => String.t(),
      required("GroupName") => String.t(),
      required("UserPoolId") => String.t()
    }
  """

  @spec create_group(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_group_errors()}

  def create_group(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateGroup", input, options)
  end

  @doc """
  Adds a configuration and trust relationship between a third-party identity
  provider (IdP) and a user pool.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20CreateIdentityProvider&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_identity_provider_request`)
    %{
      optional("AttributeMapping") => map(),
      optional("IdpIdentifiers") => list(String.t()()),
      required("ProviderDetails") => map(),
      required("ProviderName") => String.t(),
      required("ProviderType") => list(any()),
      required("UserPoolId") => String.t()
    }
  """

  @spec create_identity_provider(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_identity_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_identity_provider_errors()}

  def create_identity_provider(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateIdentityProvider", input, options)
  end

  @doc """
  Creates a new OAuth2.0 resource server and defines custom scopes within it.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20CreateResourceServer&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_resource_server_request`)
    %{
      optional("Scopes") => list(resource_server_scope_type()()),
      required("Identifier") => String.t(),
      required("Name") => String.t(),
      required("UserPoolId") => String.t()
    }
  """

  @spec create_resource_server(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_resource_server_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_resource_server_errors()}

  def create_resource_server(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateResourceServer", input, options)
  end

  @doc """
  Creates a user import job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20CreateUserImportJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_user_import_job_request`)
    %{
      required("CloudWatchLogsRoleArn") => String.t(),
      required("JobName") => String.t(),
      required("UserPoolId") => String.t()
    }
  """

  @spec create_user_import_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_user_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_user_import_job_errors()}

  def create_user_import_job(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateUserImportJob", input, options)
  end

  @doc """
  This action might generate an SMS text message. Starting June 1, 2021, US
  telecom carriers require you to register an origination phone number before
  you can send SMS messages to US phone numbers. If you use SMS text messages in
  Amazon Cognito, you must register a phone number with [Amazon
  Pinpoint](https://console.aws.amazon.com/pinpoint/home/). Amazon Cognito uses
  the registered number automatically. Otherwise, Amazon Cognito users who must
  receive SMS messages might not be able to sign up, activate their accounts, or
  sign in. If you have never used SMS text messages with Amazon Cognito or any
  other Amazon Web Service, Amazon Simple Notification Service might place your
  account in the SMS sandbox. In * [sandbox
  mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html) *, you
  can send messages only to verified phone numbers. After you test your app
  while in the sandbox environment, you can move out of the sandbox and into
  production. For more information, see [ SMS message settings for Amazon
  Cognito user
  pools](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
  in the *Amazon Cognito Developer Guide*. Creates a new Amazon Cognito user
  pool and sets the password policy for the pool. If you don't provide a value
  for an attribute, Amazon Cognito sets it to its default value.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20CreateUserPool&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_user_pool_request`)
    %{
      optional("AccountRecoverySetting") => account_recovery_setting_type(),
      optional("AdminCreateUserConfig") => admin_create_user_config_type(),
      optional("AliasAttributes") => list(list(any())()),
      optional("AutoVerifiedAttributes") => list(list(any())()),
      optional("DeletionProtection") => list(any()),
      optional("DeviceConfiguration") => device_configuration_type(),
      optional("EmailConfiguration") => email_configuration_type(),
      optional("EmailVerificationMessage") => String.t(),
      optional("EmailVerificationSubject") => String.t(),
      optional("LambdaConfig") => lambda_config_type(),
      optional("MfaConfiguration") => list(any()),
      optional("Policies") => user_pool_policy_type(),
      optional("Schema") => list(schema_attribute_type()()),
      optional("SmsAuthenticationMessage") => String.t(),
      optional("SmsConfiguration") => sms_configuration_type(),
      optional("SmsVerificationMessage") => String.t(),
      optional("UserAttributeUpdateSettings") => user_attribute_update_settings_type(),
      optional("UserPoolAddOns") => user_pool_add_ons_type(),
      optional("UserPoolTags") => map(),
      optional("UsernameAttributes") => list(list(any())()),
      optional("UsernameConfiguration") => username_configuration_type(),
      optional("VerificationMessageTemplate") => verification_message_template_type(),
      required("PoolName") => String.t()
    }
  """

  @spec create_user_pool(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_user_pool_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_user_pool_errors()}

  def create_user_pool(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateUserPool", input, options)
  end

  @doc """
  Creates the user pool client. When you create a new user pool client, token
  revocation is automatically activated. For more information about revoking
  tokens, see
  [RevokeToken](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_RevokeToken.html).
  If you don't provide a value for an attribute, Amazon Cognito sets it to its
  default value.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20CreateUserPoolClient&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_user_pool_client_request`)
    %{
      optional("AccessTokenValidity") => integer(),
      optional("AllowedOAuthFlows") => list(list(any())()),
      optional("AllowedOAuthFlowsUserPoolClient") => boolean(),
      optional("AllowedOAuthScopes") => list(String.t()()),
      optional("AnalyticsConfiguration") => analytics_configuration_type(),
      optional("AuthSessionValidity") => integer(),
      optional("CallbackURLs") => list(String.t()()),
      optional("DefaultRedirectURI") => String.t(),
      optional("EnablePropagateAdditionalUserContextData") => boolean(),
      optional("EnableTokenRevocation") => boolean(),
      optional("ExplicitAuthFlows") => list(list(any())()),
      optional("GenerateSecret") => boolean(),
      optional("IdTokenValidity") => integer(),
      optional("LogoutURLs") => list(String.t()()),
      optional("PreventUserExistenceErrors") => list(any()),
      optional("ReadAttributes") => list(String.t()()),
      optional("RefreshTokenValidity") => integer(),
      optional("SupportedIdentityProviders") => list(String.t()()),
      optional("TokenValidityUnits") => token_validity_units_type(),
      optional("WriteAttributes") => list(String.t()()),
      required("ClientName") => String.t(),
      required("UserPoolId") => String.t()
    }
  """

  @spec create_user_pool_client(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_user_pool_client_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_user_pool_client_errors()}

  def create_user_pool_client(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateUserPoolClient", input, options)
  end

  @doc """
  Creates a new domain for a user pool.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20CreateUserPoolDomain&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_user_pool_domain_request`)
    %{
      optional("CustomDomainConfig") => custom_domain_config_type(),
      required("Domain") => String.t(),
      required("UserPoolId") => String.t()
    }
  """

  @spec create_user_pool_domain(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_user_pool_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_user_pool_domain_errors()}

  def create_user_pool_domain(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateUserPoolDomain", input, options)
  end

  @doc """
  Deletes a group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20DeleteGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_group_request`)
    %{
      required("GroupName") => String.t(),
      required("UserPoolId") => String.t()
    }
  """

  @spec delete_group(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_group_errors()}

  def delete_group(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteGroup", input, options)
  end

  @doc """
  Deletes an IdP for a user pool.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20DeleteIdentityProvider&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_identity_provider_request`)
    %{
      required("ProviderName") => String.t(),
      required("UserPoolId") => String.t()
    }
  """

  @spec delete_identity_provider(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_identity_provider_errors()}

  def delete_identity_provider(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteIdentityProvider", input, options)
  end

  @doc """
  Deletes a resource server.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20DeleteResourceServer&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_resource_server_request`)
    %{
      required("Identifier") => String.t(),
      required("UserPoolId") => String.t()
    }
  """

  @spec delete_resource_server(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_resource_server_errors()}

  def delete_resource_server(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteResourceServer", input, options)
  end

  @doc """
  Allows a user to delete their own user profile. Authorize this action with a
  signed-in user's access token. It must include the scope
  `aws.cognito.signin.user.admin`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20DeleteUser&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_user_request`)
    %{
      required("AccessToken") => String.t()
    }
  """

  @spec delete_user(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_user_errors()}

  def delete_user(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteUser", input, options)
  end

  @doc """
  Deletes the attributes for a user. Authorize this action with a signed-in user's
  access token. It must include the scope `aws.cognito.signin.user.admin`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20DeleteUserAttributes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_user_attributes_request`)
    %{
      required("AccessToken") => String.t(),
      required("UserAttributeNames") => list(String.t()())
    }
  """

  @spec delete_user_attributes(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_user_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_user_attributes_errors()}

  def delete_user_attributes(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteUserAttributes", input, options)
  end

  @doc """
  Deletes the specified Amazon Cognito user pool.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20DeleteUserPool&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_user_pool_request`)
    %{
      required("UserPoolId") => String.t()
    }
  """

  @spec delete_user_pool(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_user_pool_errors()}

  def delete_user_pool(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteUserPool", input, options)
  end

  @doc """
  Allows the developer to delete the user pool client.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20DeleteUserPoolClient&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_user_pool_client_request`)
    %{
      required("ClientId") => String.t(),
      required("UserPoolId") => String.t()
    }
  """

  @spec delete_user_pool_client(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_user_pool_client_errors()}

  def delete_user_pool_client(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteUserPoolClient", input, options)
  end

  @doc """
  Deletes a domain for a user pool.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20DeleteUserPoolDomain&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_user_pool_domain_request`)
    %{
      required("Domain") => String.t(),
      required("UserPoolId") => String.t()
    }
  """

  @spec delete_user_pool_domain(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_user_pool_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_user_pool_domain_errors()}

  def delete_user_pool_domain(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteUserPoolDomain", input, options)
  end

  @doc """
  Gets information about a specific IdP.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20DescribeIdentityProvider&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_identity_provider_request`)
    %{
      required("ProviderName") => String.t(),
      required("UserPoolId") => String.t()
    }
  """

  @spec describe_identity_provider(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_identity_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_identity_provider_errors()}

  def describe_identity_provider(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeIdentityProvider", input, options)
  end

  @doc """
  Describes a resource server.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20DescribeResourceServer&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_resource_server_request`)
    %{
      required("Identifier") => String.t(),
      required("UserPoolId") => String.t()
    }
  """

  @spec describe_resource_server(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_resource_server_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_resource_server_errors()}

  def describe_resource_server(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeResourceServer", input, options)
  end

  @doc """
  Describes the risk configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20DescribeRiskConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_risk_configuration_request`)
    %{
      optional("ClientId") => String.t(),
      required("UserPoolId") => String.t()
    }
  """

  @spec describe_risk_configuration(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_risk_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_risk_configuration_errors()}

  def describe_risk_configuration(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeRiskConfiguration", input, options)
  end

  @doc """
  Describes the user import job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20DescribeUserImportJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_user_import_job_request`)
    %{
      required("JobId") => String.t(),
      required("UserPoolId") => String.t()
    }
  """

  @spec describe_user_import_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_user_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_user_import_job_errors()}

  def describe_user_import_job(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeUserImportJob", input, options)
  end

  @doc """
  Returns the configuration information and metadata of the specified user pool.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20DescribeUserPool&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_user_pool_request`)
    %{
      required("UserPoolId") => String.t()
    }
  """

  @spec describe_user_pool(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_user_pool_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_user_pool_errors()}

  def describe_user_pool(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeUserPool", input, options)
  end

  @doc """
  Client method for returning the configuration information and metadata of the
  specified user pool app client.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20DescribeUserPoolClient&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_user_pool_client_request`)
    %{
      required("ClientId") => String.t(),
      required("UserPoolId") => String.t()
    }
  """

  @spec describe_user_pool_client(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_user_pool_client_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_user_pool_client_errors()}

  def describe_user_pool_client(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeUserPoolClient", input, options)
  end

  @doc """
  Gets information about a domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20DescribeUserPoolDomain&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_user_pool_domain_request`)
    %{
      required("Domain") => String.t()
    }
  """

  @spec describe_user_pool_domain(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_user_pool_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_user_pool_domain_errors()}

  def describe_user_pool_domain(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeUserPoolDomain", input, options)
  end

  @doc """
  Forgets the specified device. For more information about device authentication,
  see [Working with user devices in your user
  pool](https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html).
  Authorize this action with a signed-in user's access token. It must include
  the scope `aws.cognito.signin.user.admin`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20ForgetDevice&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:forget_device_request`)
    %{
      optional("AccessToken") => String.t(),
      required("DeviceKey") => String.t()
    }
  """

  @spec forget_device(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, forget_device_errors()}

  def forget_device(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ForgetDevice", input, options)
  end

  @doc """
  Calling this API causes a message to be sent to the end user with a confirmation
  code that is required to change the user's password. For the `Username`
  parameter, you can use the username or user alias. The method used to send the
  confirmation code is sent according to the specified AccountRecoverySetting.
  For more information, see [Recovering User
  Accounts](https://docs.aws.amazon.com/cognito/latest/developerguide/how-to-recover-a-user-account.html)
  in the *Amazon Cognito Developer Guide*. To use the confirmation code for
  resetting the password, call
  [ConfirmForgotPassword](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_ConfirmForgotPassword.html).
  If neither a verified phone number nor a verified email exists, this API
  returns `InvalidParameterException`. If your app client has a client secret
  and you don't provide a `SECRET_HASH` parameter, this API returns
  `NotAuthorizedException`. To use this API operation, your user pool must have
  self-service account recovery configured. Use
  [AdminSetUserPassword](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminSetUserPassword.html)
  if you manage passwords as an administrator.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20ForgotPassword&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:forgot_password_request`)
    %{
      optional("AnalyticsMetadata") => analytics_metadata_type(),
      optional("ClientMetadata") => map(),
      optional("SecretHash") => String.t(),
      optional("UserContextData") => user_context_data_type(),
      required("ClientId") => String.t(),
      required("Username") => String.t()
    }
  """

  @spec forgot_password(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, forgot_password_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, forgot_password_errors()}

  def forgot_password(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ForgotPassword", input, options)
  end

  @doc """
  Gets the header information for the comma-separated value (CSV) file to be used
  as input for the user import job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20GetCSVHeader&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_csv_header_request`)
    %{
      required("UserPoolId") => String.t()
    }
  """

  @spec get_csv_header(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_csv_header_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_csv_header_errors()}

  def get_csv_header(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetCSVHeader", input, options)
  end

  @doc """
  Gets the device. For more information about device authentication, see [Working
  with user devices in your user
  pool](https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html).
  Authorize this action with a signed-in user's access token. It must include
  the scope `aws.cognito.signin.user.admin`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20GetDevice&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_device_request`)
    %{
      optional("AccessToken") => String.t(),
      required("DeviceKey") => String.t()
    }
  """

  @spec get_device(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_device_errors()}

  def get_device(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDevice", input, options)
  end

  @doc """
  Gets a group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20GetGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_group_request`)
    %{
      required("GroupName") => String.t(),
      required("UserPoolId") => String.t()
    }
  """

  @spec get_group(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_group_errors()}

  def get_group(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetGroup", input, options)
  end

  @doc """
  Gets the specified IdP.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20GetIdentityProviderByIdentifier&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_identity_provider_by_identifier_request`)
    %{
      required("IdpIdentifier") => String.t(),
      required("UserPoolId") => String.t()
    }
  """

  @spec get_identity_provider_by_identifier(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_identity_provider_by_identifier_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_identity_provider_by_identifier_errors()}

  def get_identity_provider_by_identifier(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetIdentityProviderByIdentifier", input, options)
  end

  @doc """
  Gets the detailed activity logging configuration for a user pool.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20GetLogDeliveryConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_log_delivery_configuration_request`)
    %{
      required("UserPoolId") => String.t()
    }
  """

  @spec get_log_delivery_configuration(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_log_delivery_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_log_delivery_configuration_errors()}

  def get_log_delivery_configuration(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetLogDeliveryConfiguration", input, options)
  end

  @doc """
  This method takes a user pool ID, and returns the signing certificate. The
  issued certificate is valid for 10 years from the date of issue.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20GetSigningCertificate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_signing_certificate_request`)
    %{
      required("UserPoolId") => String.t()
    }
  """

  @spec get_signing_certificate(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_signing_certificate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_signing_certificate_errors()}

  def get_signing_certificate(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetSigningCertificate", input, options)
  end

  @doc """
  Gets the user interface (UI) Customization information for a particular app
  client's app UI, if any such information exists for the client. If nothing is
  set for the particular client, but there is an existing pool level
  customization (the app `clientId` is `ALL`), then that information is
  returned. If nothing is present, then an empty shape is returned.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20GetUICustomization&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_ui_customization_request`)
    %{
      optional("ClientId") => String.t(),
      required("UserPoolId") => String.t()
    }
  """

  @spec get_ui_customization(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_ui_customization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_ui_customization_errors()}

  def get_ui_customization(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetUICustomization", input, options)
  end

  @doc """
  Gets the user attributes and metadata for a user. Authorize this action with a
  signed-in user's access token. It must include the scope
  `aws.cognito.signin.user.admin`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20GetUser&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_user_request`)
    %{
      required("AccessToken") => String.t()
    }
  """

  @spec get_user(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_user_errors()}

  def get_user(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetUser", input, options)
  end

  @doc """
  Generates a user attribute verification code for the specified attribute name.
  Sends a message to a user with a code that they must return in a
  VerifyUserAttribute request. Authorize this action with a signed-in user's
  access token. It must include the scope `aws.cognito.signin.user.admin`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20GetUserAttributeVerificationCode&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_user_attribute_verification_code_request`)
    %{
      optional("ClientMetadata") => map(),
      required("AccessToken") => String.t(),
      required("AttributeName") => String.t()
    }
  """

  @spec get_user_attribute_verification_code(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_user_attribute_verification_code_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_user_attribute_verification_code_errors()}

  def get_user_attribute_verification_code(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetUserAttributeVerificationCode", input, options)
  end

  @doc """
  Gets the user pool multi-factor authentication (MFA) configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20GetUserPoolMfaConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_user_pool_mfa_config_request`)
    %{
      required("UserPoolId") => String.t()
    }
  """

  @spec get_user_pool_mfa_config(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_user_pool_mfa_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_user_pool_mfa_config_errors()}

  def get_user_pool_mfa_config(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetUserPoolMfaConfig", input, options)
  end

  @doc """
  Invalidates the identity, access, and refresh tokens that Amazon Cognito issued
  to a user. Call this operation when your user signs out of your app. This
  results in the following behavior.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20GlobalSignOut&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:global_sign_out_request`)
    %{
      required("AccessToken") => String.t()
    }
  """

  @spec global_sign_out(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, global_sign_out_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, global_sign_out_errors()}

  def global_sign_out(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GlobalSignOut", input, options)
  end

  @doc """
  Initiates sign-in for a user in the Amazon Cognito user directory. You can't
  sign in a user with a federated IdP with `InitiateAuth`. For more information,
  see [ Adding user pool sign-in through a third
  party](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation.html).
  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies
  in requests for this API operation. For this operation, you can't use IAM
  credentials to authorize requests, and you can't grant IAM permissions in
  policies. For more information about authorization models in Amazon Cognito,
  see [Using the Amazon Cognito user pools API and user pool
  endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20InitiateAuth&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:initiate_auth_request`)
    %{
      optional("AnalyticsMetadata") => analytics_metadata_type(),
      optional("AuthParameters") => map(),
      optional("ClientMetadata") => map(),
      optional("UserContextData") => user_context_data_type(),
      required("AuthFlow") => list(any()),
      required("ClientId") => String.t()
    }
  """

  @spec initiate_auth(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, initiate_auth_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, initiate_auth_errors()}

  def initiate_auth(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "InitiateAuth", input, options)
  end

  @doc """
  Lists the sign-in devices that Amazon Cognito has registered to the current
  user. For more information about device authentication, see [Working with user
  devices in your user
  pool](https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html).
  Authorize this action with a signed-in user's access token. It must include
  the scope `aws.cognito.signin.user.admin`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20ListDevices&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_devices_request`)
    %{
      optional("Limit") => integer(),
      optional("PaginationToken") => String.t(),
      required("AccessToken") => String.t()
    }
  """

  @spec list_devices(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_devices_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_devices_errors()}

  def list_devices(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListDevices", input, options)
  end

  @doc """
  Lists the groups associated with a user pool.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20ListGroups&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_groups_request`)
    %{
      optional("Limit") => integer(),
      optional("NextToken") => String.t(),
      required("UserPoolId") => String.t()
    }
  """

  @spec list_groups(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_groups_errors()}

  def list_groups(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListGroups", input, options)
  end

  @doc """
  Lists information about all IdPs for a user pool.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20ListIdentityProviders&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_identity_providers_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("UserPoolId") => String.t()
    }
  """

  @spec list_identity_providers(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_identity_providers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_identity_providers_errors()}

  def list_identity_providers(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListIdentityProviders", input, options)
  end

  @doc """
  Lists the resource servers for a user pool.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20ListResourceServers&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_resource_servers_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("UserPoolId") => String.t()
    }
  """

  @spec list_resource_servers(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_resource_servers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_resource_servers_errors()}

  def list_resource_servers(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListResourceServers", input, options)
  end

  @doc """
  Lists the tags that are assigned to an Amazon Cognito user pool. A tag is a
  label that you can apply to user pools to categorize and manage them in
  different ways, such as by purpose, owner, environment, or other criteria.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_tags_for_resource_request`)
    %{
      required("ResourceArn") => String.t()
    }
  """

  @spec list_tags_for_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}

  def list_tags_for_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Lists user import jobs for a user pool.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20ListUserImportJobs&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_user_import_jobs_request`)
    %{
      optional("PaginationToken") => String.t(),
      required("MaxResults") => integer(),
      required("UserPoolId") => String.t()
    }
  """

  @spec list_user_import_jobs(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_user_import_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_user_import_jobs_errors()}

  def list_user_import_jobs(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListUserImportJobs", input, options)
  end

  @doc """
  Lists the clients that have been created for the specified user pool.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20ListUserPoolClients&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_user_pool_clients_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("UserPoolId") => String.t()
    }
  """

  @spec list_user_pool_clients(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_user_pool_clients_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_user_pool_clients_errors()}

  def list_user_pool_clients(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListUserPoolClients", input, options)
  end

  @doc """
  Lists the user pools associated with an Amazon Web Services account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20ListUserPools&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_user_pools_request`)
    %{
      optional("NextToken") => String.t(),
      required("MaxResults") => integer()
    }
  """

  @spec list_user_pools(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_user_pools_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_user_pools_errors()}

  def list_user_pools(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListUserPools", input, options)
  end

  @doc """
  Lists users and their basic details in a user pool.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20ListUsers&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_users_request`)
    %{
      optional("AttributesToGet") => list(String.t()()),
      optional("Filter") => String.t(),
      optional("Limit") => integer(),
      optional("PaginationToken") => String.t(),
      required("UserPoolId") => String.t()
    }
  """

  @spec list_users(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_users_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_users_errors()}

  def list_users(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListUsers", input, options)
  end

  @doc """
  Lists the users in the specified group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20ListUsersInGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_users_in_group_request`)
    %{
      optional("Limit") => integer(),
      optional("NextToken") => String.t(),
      required("GroupName") => String.t(),
      required("UserPoolId") => String.t()
    }
  """

  @spec list_users_in_group(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_users_in_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_users_in_group_errors()}

  def list_users_in_group(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListUsersInGroup", input, options)
  end

  @doc """
  Resends the confirmation (for confirmation of registration) to a specific user
  in the user pool.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20ResendConfirmationCode&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:resend_confirmation_code_request`)
    %{
      optional("AnalyticsMetadata") => analytics_metadata_type(),
      optional("ClientMetadata") => map(),
      optional("SecretHash") => String.t(),
      optional("UserContextData") => user_context_data_type(),
      required("ClientId") => String.t(),
      required("Username") => String.t()
    }
  """

  @spec resend_confirmation_code(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, resend_confirmation_code_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resend_confirmation_code_errors()}

  def resend_confirmation_code(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ResendConfirmationCode", input, options)
  end

  @doc """
  Some API operations in a user pool generate a challenge, like a prompt for an
  MFA code, for device authentication that bypasses MFA, or for a custom
  authentication challenge. A `RespondToAuthChallenge` API request provides the
  answer to that challenge, like a code or a secure remote password (SRP). The
  parameters of a response to an authentication challenge vary with the type of
  challenge. For more information about custom authentication challenges, see
  [Custom authentication challenge Lambda
  triggers](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-challenge.html).
  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies
  in requests for this API operation. For this operation, you can't use IAM
  credentials to authorize requests, and you can't grant IAM permissions in
  policies. For more information about authorization models in Amazon Cognito,
  see [Using the Amazon Cognito user pools API and user pool
  endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20RespondToAuthChallenge&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:respond_to_auth_challenge_request`)
    %{
      optional("AnalyticsMetadata") => analytics_metadata_type(),
      optional("ChallengeResponses") => map(),
      optional("ClientMetadata") => map(),
      optional("Session") => String.t(),
      optional("UserContextData") => user_context_data_type(),
      required("ChallengeName") => list(any()),
      required("ClientId") => String.t()
    }
  """

  @spec respond_to_auth_challenge(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, respond_to_auth_challenge_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, respond_to_auth_challenge_errors()}

  def respond_to_auth_challenge(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "RespondToAuthChallenge", input, options)
  end

  @doc """
  Revokes all of the access tokens generated by, and at the same time as, the
  specified refresh token. After a token is revoked, you can't use the revoked
  token to access Amazon Cognito user APIs, or to authorize access to your
  resource server.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20RevokeToken&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:revoke_token_request`)
    %{
      optional("ClientSecret") => String.t(),
      required("ClientId") => String.t(),
      required("Token") => String.t()
    }
  """

  @spec revoke_token(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, revoke_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, revoke_token_errors()}

  def revoke_token(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "RevokeToken", input, options)
  end

  @doc """
  Sets up or modifies the detailed activity logging configuration of a user pool.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20SetLogDeliveryConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:set_log_delivery_configuration_request`)
    %{
      required("LogConfigurations") => list(log_configuration_type()()),
      required("UserPoolId") => String.t()
    }
  """

  @spec set_log_delivery_configuration(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, set_log_delivery_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, set_log_delivery_configuration_errors()}

  def set_log_delivery_configuration(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetLogDeliveryConfiguration", input, options)
  end

  @doc """
  Configures actions on detected risks. To delete the risk configuration for
  `UserPoolId` or `ClientId`, pass null values for all four configuration types.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20SetRiskConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:set_risk_configuration_request`)
    %{
      optional("AccountTakeoverRiskConfiguration") => account_takeover_risk_configuration_type(),
      optional("ClientId") => String.t(),
      optional("CompromisedCredentialsRiskConfiguration") => compromised_credentials_risk_configuration_type(),
      optional("RiskExceptionConfiguration") => risk_exception_configuration_type(),
      required("UserPoolId") => String.t()
    }
  """

  @spec set_risk_configuration(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, set_risk_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, set_risk_configuration_errors()}

  def set_risk_configuration(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetRiskConfiguration", input, options)
  end

  @doc """
  Sets the user interface (UI) customization information for a user pool's
  built-in app UI. You can specify app UI customization settings for a single
  client (with a specific `clientId`) or for all clients (by setting the
  `clientId` to `ALL`). If you specify `ALL`, the default configuration is used
  for every client that has no previously set UI customization. If you specify
  UI customization settings for a particular client, it will no longer return to
  the `ALL` configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20SetUICustomization&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:set_ui_customization_request`)
    %{
      optional("CSS") => String.t(),
      optional("ClientId") => String.t(),
      optional("ImageFile") => binary(),
      required("UserPoolId") => String.t()
    }
  """

  @spec set_ui_customization(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, set_ui_customization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, set_ui_customization_errors()}

  def set_ui_customization(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetUICustomization", input, options)
  end

  @doc """
  Set the user's multi-factor authentication (MFA) method preference, including
  which MFA factors are activated and if any are preferred. Only one factor can
  be set as preferred. The preferred MFA factor will be used to authenticate a
  user if multiple factors are activated. If multiple options are activated and
  no preference is set, a challenge to choose an MFA option will be returned
  during sign-in. If an MFA type is activated for a user, the user will be
  prompted for MFA during all sign-in attempts unless device tracking is turned
  on and the device has been trusted. If you want MFA to be applied selectively
  based on the assessed risk level of sign-in attempts, deactivate MFA for users
  and turn on Adaptive Authentication for the user pool. Authorize this action
  with a signed-in user's access token. It must include the scope
  `aws.cognito.signin.user.admin`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20SetUserMFAPreference&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:set_user_mfa_preference_request`)
    %{
      optional("SMSMfaSettings") => sms_mfa_settings_type(),
      optional("SoftwareTokenMfaSettings") => software_token_mfa_settings_type(),
      required("AccessToken") => String.t()
    }
  """

  @spec set_user_mfa_preference(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, set_user_mfa_preference_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, set_user_mfa_preference_errors()}

  def set_user_mfa_preference(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetUserMFAPreference", input, options)
  end

  @doc """
  Sets the user pool multi-factor authentication (MFA) configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20SetUserPoolMfaConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:set_user_pool_mfa_config_request`)
    %{
      optional("MfaConfiguration") => list(any()),
      optional("SmsMfaConfiguration") => sms_mfa_config_type(),
      optional("SoftwareTokenMfaConfiguration") => software_token_mfa_config_type(),
      required("UserPoolId") => String.t()
    }
  """

  @spec set_user_pool_mfa_config(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, set_user_pool_mfa_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, set_user_pool_mfa_config_errors()}

  def set_user_pool_mfa_config(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetUserPoolMfaConfig", input, options)
  end

  @doc """
  *This action is no longer supported.* You can use it to configure only SMS MFA.
  You can't use it to configure time-based one-time password (TOTP) software
  token MFA. To configure either type of MFA, use
  [SetUserMFAPreference](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_SetUserMFAPreference.html)
  instead. Authorize this action with a signed-in user's access token. It must
  include the scope `aws.cognito.signin.user.admin`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20SetUserSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:set_user_settings_request`)
    %{
      required("AccessToken") => String.t(),
      required("MFAOptions") => list(mfa_option_type()())
    }
  """

  @spec set_user_settings(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, set_user_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, set_user_settings_errors()}

  def set_user_settings(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetUserSettings", input, options)
  end

  @doc """
  Registers the user in the specified user pool and creates a user name, password,
  and user attributes.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20SignUp&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:sign_up_request`)
    %{
      optional("AnalyticsMetadata") => analytics_metadata_type(),
      optional("ClientMetadata") => map(),
      optional("SecretHash") => String.t(),
      optional("UserAttributes") => list(attribute_type()()),
      optional("UserContextData") => user_context_data_type(),
      optional("ValidationData") => list(attribute_type()()),
      required("ClientId") => String.t(),
      required("Password") => String.t(),
      required("Username") => String.t()
    }
  """

  @spec sign_up(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, sign_up_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, sign_up_errors()}

  def sign_up(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SignUp", input, options)
  end

  @doc """
  Starts the user import.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20StartUserImportJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:start_user_import_job_request`)
    %{
      required("JobId") => String.t(),
      required("UserPoolId") => String.t()
    }
  """

  @spec start_user_import_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, start_user_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_user_import_job_errors()}

  def start_user_import_job(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartUserImportJob", input, options)
  end

  @doc """
  Stops the user import job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20StopUserImportJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:stop_user_import_job_request`)
    %{
      required("JobId") => String.t(),
      required("UserPoolId") => String.t()
    }
  """

  @spec stop_user_import_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, stop_user_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_user_import_job_errors()}

  def stop_user_import_job(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopUserImportJob", input, options)
  end

  @doc """
  Assigns a set of tags to an Amazon Cognito user pool. A tag is a label that you
  can use to categorize and manage user pools in different ways, such as by
  purpose, owner, environment, or other criteria. Each tag consists of a key and
  value, both of which you define. A key is a general category for more specific
  values. For example, if you have two versions of a user pool, one for testing
  and another for production, you might assign an `Environment` tag key to both
  user pools. The value of this key might be `Test` for one user pool, and
  `Production` for the other.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:tag_resource_request`)
    %{
      required("ResourceArn") => String.t(),
      required("Tags") => map()
    }
  """

  @spec tag_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}

  def tag_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes the specified tags from an Amazon Cognito user pool. You can use this
  action up to 5 times per second, per account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:untag_resource_request`)
    %{
      required("ResourceArn") => String.t(),
      required("TagKeys") => list(String.t()())
    }
  """

  @spec untag_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}

  def untag_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Provides the feedback for an authentication event, whether it was from a valid
  user or not. This feedback is used for improving the risk evaluation decision
  for the user pool as part of Amazon Cognito advanced security.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20UpdateAuthEventFeedback&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_auth_event_feedback_request`)
    %{
      required("EventId") => String.t(),
      required("FeedbackToken") => String.t(),
      required("FeedbackValue") => list(any()),
      required("UserPoolId") => String.t(),
      required("Username") => String.t()
    }
  """

  @spec update_auth_event_feedback(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_auth_event_feedback_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_auth_event_feedback_errors()}

  def update_auth_event_feedback(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateAuthEventFeedback", input, options)
  end

  @doc """
  Updates the device status. For more information about device authentication, see
  [Working with user devices in your user
  pool](https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html).
  Authorize this action with a signed-in user's access token. It must include
  the scope `aws.cognito.signin.user.admin`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20UpdateDeviceStatus&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_device_status_request`)
    %{
      optional("DeviceRememberedStatus") => list(any()),
      required("AccessToken") => String.t(),
      required("DeviceKey") => String.t()
    }
  """

  @spec update_device_status(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_device_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_device_status_errors()}

  def update_device_status(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateDeviceStatus", input, options)
  end

  @doc """
  Updates the specified group with the specified attributes.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20UpdateGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_group_request`)
    %{
      optional("Description") => String.t(),
      optional("Precedence") => integer(),
      optional("RoleArn") => String.t(),
      required("GroupName") => String.t(),
      required("UserPoolId") => String.t()
    }
  """

  @spec update_group(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_group_errors()}

  def update_group(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateGroup", input, options)
  end

  @doc """
  Updates IdP information for a user pool.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20UpdateIdentityProvider&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_identity_provider_request`)
    %{
      optional("AttributeMapping") => map(),
      optional("IdpIdentifiers") => list(String.t()()),
      optional("ProviderDetails") => map(),
      required("ProviderName") => String.t(),
      required("UserPoolId") => String.t()
    }
  """

  @spec update_identity_provider(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_identity_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_identity_provider_errors()}

  def update_identity_provider(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateIdentityProvider", input, options)
  end

  @doc """
  Updates the name and scopes of resource server. All other fields are read-only.
  If you don't provide a value for an attribute, it is set to the default value.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20UpdateResourceServer&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_resource_server_request`)
    %{
      optional("Scopes") => list(resource_server_scope_type()()),
      required("Identifier") => String.t(),
      required("Name") => String.t(),
      required("UserPoolId") => String.t()
    }
  """

  @spec update_resource_server(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_resource_server_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_resource_server_errors()}

  def update_resource_server(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateResourceServer", input, options)
  end

  @doc """
  With this operation, your users can update one or more of their attributes with
  their own credentials. You authorize this API request with the user's access
  token. To delete an attribute from your user, submit the attribute in your API
  request with a blank value. Custom attribute values in this request must
  include the `custom:` prefix. Authorize this action with a signed-in user's
  access token. It must include the scope `aws.cognito.signin.user.admin`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20UpdateUserAttributes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_user_attributes_request`)
    %{
      optional("ClientMetadata") => map(),
      required("AccessToken") => String.t(),
      required("UserAttributes") => list(attribute_type()())
    }
  """

  @spec update_user_attributes(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_user_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_user_attributes_errors()}

  def update_user_attributes(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateUserAttributes", input, options)
  end

  @doc """
  This action might generate an SMS text message. Starting June 1, 2021, US
  telecom carriers require you to register an origination phone number before
  you can send SMS messages to US phone numbers. If you use SMS text messages in
  Amazon Cognito, you must register a phone number with [Amazon
  Pinpoint](https://console.aws.amazon.com/pinpoint/home/). Amazon Cognito uses
  the registered number automatically. Otherwise, Amazon Cognito users who must
  receive SMS messages might not be able to sign up, activate their accounts, or
  sign in. If you have never used SMS text messages with Amazon Cognito or any
  other Amazon Web Service, Amazon Simple Notification Service might place your
  account in the SMS sandbox. In * [sandbox
  mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html) *, you
  can send messages only to verified phone numbers. After you test your app
  while in the sandbox environment, you can move out of the sandbox and into
  production. For more information, see [ SMS message settings for Amazon
  Cognito user
  pools](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
  in the *Amazon Cognito Developer Guide*. Updates the specified user pool with
  the specified attributes. You can get a list of the current user pool settings
  using
  [DescribeUserPool](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_DescribeUserPool.html).
  If you don't provide a value for an attribute, Amazon Cognito sets it to its
  default value.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20UpdateUserPool&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_user_pool_request`)
    %{
      optional("AccountRecoverySetting") => account_recovery_setting_type(),
      optional("AdminCreateUserConfig") => admin_create_user_config_type(),
      optional("AutoVerifiedAttributes") => list(list(any())()),
      optional("DeletionProtection") => list(any()),
      optional("DeviceConfiguration") => device_configuration_type(),
      optional("EmailConfiguration") => email_configuration_type(),
      optional("EmailVerificationMessage") => String.t(),
      optional("EmailVerificationSubject") => String.t(),
      optional("LambdaConfig") => lambda_config_type(),
      optional("MfaConfiguration") => list(any()),
      optional("Policies") => user_pool_policy_type(),
      optional("SmsAuthenticationMessage") => String.t(),
      optional("SmsConfiguration") => sms_configuration_type(),
      optional("SmsVerificationMessage") => String.t(),
      optional("UserAttributeUpdateSettings") => user_attribute_update_settings_type(),
      optional("UserPoolAddOns") => user_pool_add_ons_type(),
      optional("UserPoolTags") => map(),
      optional("VerificationMessageTemplate") => verification_message_template_type(),
      required("UserPoolId") => String.t()
    }
  """

  @spec update_user_pool(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_user_pool_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_user_pool_errors()}

  def update_user_pool(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateUserPool", input, options)
  end

  @doc """
  Updates the specified user pool app client with the specified attributes. You
  can get a list of the current user pool app client settings using
  [DescribeUserPoolClient](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_DescribeUserPoolClient.html).
  If you don't provide a value for an attribute, Amazon Cognito sets it to its
  default value. You can also use this operation to enable token revocation for
  user pool clients. For more information about revoking tokens, see
  [RevokeToken](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_RevokeToken.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20UpdateUserPoolClient&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_user_pool_client_request`)
    %{
      optional("AccessTokenValidity") => integer(),
      optional("AllowedOAuthFlows") => list(list(any())()),
      optional("AllowedOAuthFlowsUserPoolClient") => boolean(),
      optional("AllowedOAuthScopes") => list(String.t()()),
      optional("AnalyticsConfiguration") => analytics_configuration_type(),
      optional("AuthSessionValidity") => integer(),
      optional("CallbackURLs") => list(String.t()()),
      optional("ClientName") => String.t(),
      optional("DefaultRedirectURI") => String.t(),
      optional("EnablePropagateAdditionalUserContextData") => boolean(),
      optional("EnableTokenRevocation") => boolean(),
      optional("ExplicitAuthFlows") => list(list(any())()),
      optional("IdTokenValidity") => integer(),
      optional("LogoutURLs") => list(String.t()()),
      optional("PreventUserExistenceErrors") => list(any()),
      optional("ReadAttributes") => list(String.t()()),
      optional("RefreshTokenValidity") => integer(),
      optional("SupportedIdentityProviders") => list(String.t()()),
      optional("TokenValidityUnits") => token_validity_units_type(),
      optional("WriteAttributes") => list(String.t()()),
      required("ClientId") => String.t(),
      required("UserPoolId") => String.t()
    }
  """

  @spec update_user_pool_client(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_user_pool_client_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_user_pool_client_errors()}

  def update_user_pool_client(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateUserPoolClient", input, options)
  end

  @doc """
  Updates the Secure Sockets Layer (SSL) certificate for the custom domain for
  your user pool. You can use this operation to provide the Amazon Resource Name
  (ARN) of a new certificate to Amazon Cognito. You can't use it to change the
  domain for a user pool.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20UpdateUserPoolDomain&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_user_pool_domain_request`)
    %{
      required("CustomDomainConfig") => custom_domain_config_type(),
      required("Domain") => String.t(),
      required("UserPoolId") => String.t()
    }
  """

  @spec update_user_pool_domain(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_user_pool_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_user_pool_domain_errors()}

  def update_user_pool_domain(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateUserPoolDomain", input, options)
  end

  @doc """
  Use this API to register a user's entered time-based one-time password (TOTP)
  code and mark the user's software token MFA status as "verified" if
  successful. The request takes an access token or a session string, but not
  both.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20VerifySoftwareToken&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:verify_software_token_request`)
    %{
      optional("AccessToken") => String.t(),
      optional("FriendlyDeviceName") => String.t(),
      optional("Session") => String.t(),
      required("UserCode") => String.t()
    }
  """

  @spec verify_software_token(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, verify_software_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, verify_software_token_errors()}

  def verify_software_token(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "VerifySoftwareToken", input, options)
  end

  @doc """
  Verifies the specified user attributes in the user pool. If your user pool
  requires verification before Amazon Cognito updates the attribute value,
  VerifyUserAttribute updates the affected attribute to its pending value. For
  more information, see [
  UserAttributeUpdateSettingsType](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_UserAttributeUpdateSettingsType.html).
  Authorize this action with a signed-in user's access token. It must include
  the scope `aws.cognito.signin.user.admin`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cognitoidentityprovider%20VerifyUserAttribute&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:verify_user_attribute_request`)
    %{
      required("AccessToken") => String.t(),
      required("AttributeName") => String.t(),
      required("Code") => String.t()
    }
  """

  @spec verify_user_attribute(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, verify_user_attribute_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, verify_user_attribute_errors()}

  def verify_user_attribute(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "VerifyUserAttribute", input, options)
  end
end
