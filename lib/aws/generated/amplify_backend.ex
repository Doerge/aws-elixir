# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AmplifyBackend do
  @moduledoc """
  AWS Amplify Admin API
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      update_backend_auth_request() :: %{
        required("ResourceConfig") => update_backend_auth_resource_config(),
        required("ResourceName") => String.t()
      }
      
  """
  @type update_backend_auth_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_backend_auth_response() :: %{
        "AppId" => String.t(),
        "BackendEnvironmentName" => String.t(),
        "Error" => String.t(),
        "JobId" => String.t(),
        "Operation" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type import_backend_auth_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_backend_auth_forgot_password_config() :: %{
        "DeliveryMethod" => list(any()),
        "EmailSettings" => email_settings(),
        "SmsSettings" => sms_settings()
      }
      
  """
  @type create_backend_auth_forgot_password_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_backend_storage_resource_config() :: %{
        "BucketName" => String.t(),
        "Imported" => boolean(),
        "Permissions" => backend_storage_permissions(),
        "ServiceName" => list(any())
      }
      
  """
  @type get_backend_storage_resource_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_backend_config_request() :: %{}
      
  """
  @type remove_backend_config_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_backend_storage_request() :: %{
        required("ResourceName") => String.t(),
        required("ServiceName") => list(any())
      }
      
  """
  @type delete_backend_storage_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_backend_api_models_request() :: %{
        required("ResourceName") => String.t()
      }
      
  """
  @type get_backend_api_models_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      generate_backend_api_models_response() :: %{
        "AppId" => String.t(),
        "BackendEnvironmentName" => String.t(),
        "Error" => String.t(),
        "JobId" => String.t(),
        "Operation" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type generate_backend_api_models_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      backend_api_resource_config() :: %{
        "AdditionalAuthTypes" => list(backend_api_auth_type()()),
        "ApiName" => String.t(),
        "ConflictResolution" => backend_api_conflict_resolution(),
        "DefaultAuthType" => backend_api_auth_type(),
        "Service" => String.t(),
        "TransformSchema" => String.t()
      }
      
  """
  @type backend_api_resource_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_backend_storage_response() :: %{
        "AppId" => String.t(),
        "BackendEnvironmentName" => String.t(),
        "JobId" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type create_backend_storage_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_token_response() :: %{
        "IsSuccess" => boolean()
      }
      
  """
  @type delete_token_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      backend_api_auth_type() :: %{
        "Mode" => list(any()),
        "Settings" => backend_api_app_sync_auth_settings()
      }
      
  """
  @type backend_api_auth_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_backend_auth_response() :: %{
        "AppId" => String.t(),
        "BackendEnvironmentName" => String.t(),
        "Error" => String.t(),
        "JobId" => String.t(),
        "Operation" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type create_backend_auth_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_backend_job_request() :: %{}
      
  """
  @type get_backend_job_request() :: %{}

  @typedoc """

  ## Example:
      
      backend_job_resp_obj() :: %{
        "AppId" => String.t(),
        "BackendEnvironmentName" => String.t(),
        "CreateTime" => String.t(),
        "Error" => String.t(),
        "JobId" => String.t(),
        "Operation" => String.t(),
        "Status" => String.t(),
        "UpdateTime" => String.t()
      }
      
  """
  @type backend_job_resp_obj() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      clone_backend_request() :: %{
        required("TargetEnvironmentName") => String.t()
      }
      
  """
  @type clone_backend_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_backend_auth_verification_message_config() :: %{
        "DeliveryMethod" => list(any()),
        "EmailSettings" => email_settings(),
        "SmsSettings" => sms_settings()
      }
      
  """
  @type create_backend_auth_verification_message_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_backend_jobs_request() :: %{
        optional("JobId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Operation") => String.t(),
        optional("Status") => String.t()
      }
      
  """
  @type list_backend_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      social_provider_settings() :: %{
        "Facebook" => backend_auth_social_provider_config(),
        "Google" => backend_auth_social_provider_config(),
        "LoginWithAmazon" => backend_auth_social_provider_config(),
        "SignInWithApple" => backend_auth_apple_provider_config()
      }
      
  """
  @type social_provider_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_backend_auth_mfa_config() :: %{
        "MFAMode" => list(any()),
        "Settings" => settings()
      }
      
  """
  @type update_backend_auth_mfa_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_backend_auth_o_auth_config() :: %{
        "DomainPrefix" => String.t(),
        "OAuthGrantType" => list(any()),
        "OAuthScopes" => list(list(any())()),
        "RedirectSignInURIs" => list(String.t()()),
        "RedirectSignOutURIs" => list(String.t()()),
        "SocialProviderSettings" => social_provider_settings()
      }
      
  """
  @type update_backend_auth_o_auth_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_backend_storage_response() :: %{
        "AppId" => String.t(),
        "BackendEnvironmentName" => String.t(),
        "JobId" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type import_backend_storage_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_backend_auth_password_policy_config() :: %{
        "AdditionalConstraints" => list(list(any())()),
        "MinimumLength" => float()
      }
      
  """
  @type create_backend_auth_password_policy_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_requests_exception() :: %{
        "LimitType" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_backend_auth_resource_config() :: %{
        "AuthResources" => list(any()),
        "IdentityPoolConfigs" => update_backend_auth_identity_pool_config(),
        "Service" => list(any()),
        "UserPoolConfigs" => update_backend_auth_user_pool_config()
      }
      
  """
  @type update_backend_auth_resource_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_token_response() :: %{
        "AppId" => String.t(),
        "ChallengeCode" => String.t(),
        "SessionId" => String.t(),
        "Ttl" => String.t()
      }
      
  """
  @type get_token_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_bucket_info() :: %{
        "CreationDate" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type s3_bucket_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_backend_config_response() :: %{
        "Error" => String.t()
      }
      
  """
  @type remove_backend_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_s3_buckets_response() :: %{
        "Buckets" => list(s3_bucket_info()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_s3_buckets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      email_settings() :: %{
        "EmailMessage" => String.t(),
        "EmailSubject" => String.t()
      }
      
  """
  @type email_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_backend_auth_user_pool_config() :: %{
        "ForgotPassword" => update_backend_auth_forgot_password_config(),
        "Mfa" => update_backend_auth_mfa_config(),
        "OAuth" => update_backend_auth_o_auth_config(),
        "PasswordPolicy" => update_backend_auth_password_policy_config(),
        "VerificationMessage" => update_backend_auth_verification_message_config()
      }
      
  """
  @type update_backend_auth_user_pool_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_backend_auth_password_policy_config() :: %{
        "AdditionalConstraints" => list(list(any())()),
        "MinimumLength" => float()
      }
      
  """
  @type update_backend_auth_password_policy_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_backend_request() :: %{
        optional("BackendEnvironmentName") => String.t()
      }
      
  """
  @type get_backend_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      backend_api_app_sync_auth_settings() :: %{
        "CognitoUserPoolId" => String.t(),
        "Description" => String.t(),
        "ExpirationTime" => float(),
        "OpenIDAuthTTL" => String.t(),
        "OpenIDClientId" => String.t(),
        "OpenIDIatTTL" => String.t(),
        "OpenIDIssueURL" => String.t(),
        "OpenIDProviderName" => String.t()
      }
      
  """
  @type backend_api_app_sync_auth_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_backend_api_request() :: %{
        optional("ResourceConfig") => backend_api_resource_config(),
        required("ResourceName") => String.t()
      }
      
  """
  @type update_backend_api_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_backend_jobs_response() :: %{
        "Jobs" => list(backend_job_resp_obj()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_backend_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_backend_auth_response() :: %{
        "AppId" => String.t(),
        "BackendEnvironmentName" => String.t(),
        "Error" => String.t(),
        "JobId" => String.t(),
        "Operation" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type update_backend_auth_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_backend_api_request() :: %{
        optional("ResourceConfig") => backend_api_resource_config(),
        required("ResourceName") => String.t()
      }
      
  """
  @type get_backend_api_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_backend_config_request() :: %{
        optional("LoginAuthConfig") => login_auth_config_req_obj()
      }
      
  """
  @type update_backend_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_backend_auth_response() :: %{
        "AppId" => String.t(),
        "BackendEnvironmentName" => String.t(),
        "Error" => String.t(),
        "JobId" => String.t(),
        "Operation" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type delete_backend_auth_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      not_found_exception() :: %{
        "Message" => String.t(),
        "ResourceType" => String.t()
      }
      
  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      backend_api_conflict_resolution() :: %{
        "ResolutionStrategy" => list(any())
      }
      
  """
  @type backend_api_conflict_resolution() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_backend_auth_user_pool_config() :: %{
        "ForgotPassword" => create_backend_auth_forgot_password_config(),
        "Mfa" => create_backend_auth_mfa_config(),
        "OAuth" => create_backend_auth_o_auth_config(),
        "PasswordPolicy" => create_backend_auth_password_policy_config(),
        "RequiredSignUpAttributes" => list(list(any())()),
        "SignInMethod" => list(any()),
        "UserPoolName" => String.t(),
        "VerificationMessage" => create_backend_auth_verification_message_config()
      }
      
  """
  @type create_backend_auth_user_pool_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      settings() :: %{
        "MfaTypes" => list(list(any())()),
        "SmsMessage" => String.t()
      }
      
  """
  @type settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_token_request() :: %{}
      
  """
  @type delete_token_request() :: %{}

  @typedoc """

  ## Example:
      
      generate_backend_api_models_request() :: %{
        required("ResourceName") => String.t()
      }
      
  """
  @type generate_backend_api_models_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_backend_auth_request() :: %{
        required("ResourceName") => String.t()
      }
      
  """
  @type get_backend_auth_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_backend_storage_resource_config() :: %{
        "BucketName" => String.t(),
        "Permissions" => backend_storage_permissions(),
        "ServiceName" => list(any())
      }
      
  """
  @type create_backend_storage_resource_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_backend_api_request() :: %{
        optional("ResourceConfig") => backend_api_resource_config(),
        required("ResourceName") => String.t()
      }
      
  """
  @type delete_backend_api_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      backend_auth_apple_provider_config() :: %{
        "ClientId" => String.t(),
        "KeyId" => String.t(),
        "PrivateKey" => String.t(),
        "TeamId" => String.t()
      }
      
  """
  @type backend_auth_apple_provider_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_all_backends_request() :: %{
        optional("CleanAmplifyApp") => boolean()
      }
      
  """
  @type remove_all_backends_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_backend_api_models_response() :: %{
        "ModelIntrospectionSchema" => String.t(),
        "Models" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type get_backend_api_models_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_backend_response() :: %{
        "AppId" => String.t(),
        "BackendEnvironmentName" => String.t(),
        "Error" => String.t(),
        "JobId" => String.t(),
        "Operation" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type delete_backend_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_backend_response() :: %{
        "AppId" => String.t(),
        "BackendEnvironmentName" => String.t(),
        "Error" => String.t(),
        "JobId" => String.t(),
        "Operation" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type create_backend_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_backend_request() :: %{}
      
  """
  @type delete_backend_request() :: %{}

  @typedoc """

  ## Example:
      
      create_backend_config_request() :: %{
        optional("BackendManagerAppId") => String.t()
      }
      
  """
  @type create_backend_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_s3_buckets_request() :: %{
        optional("NextToken") => String.t()
      }
      
  """
  @type list_s3_buckets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_backend_storage_request() :: %{
        required("ResourceName") => String.t()
      }
      
  """
  @type get_backend_storage_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_all_backends_response() :: %{
        "AppId" => String.t(),
        "Error" => String.t(),
        "JobId" => String.t(),
        "Operation" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type remove_all_backends_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_backend_api_response() :: %{
        "AppId" => String.t(),
        "BackendEnvironmentName" => String.t(),
        "Error" => String.t(),
        "JobId" => String.t(),
        "Operation" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type create_backend_api_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_backend_storage_request() :: %{
        optional("BucketName") => String.t(),
        required("ServiceName") => list(any())
      }
      
  """
  @type import_backend_storage_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_config() :: %{}
      
  """
  @type resource_config() :: %{}

  @typedoc """

  ## Example:
      
      login_auth_config_req_obj() :: %{
        "AwsCognitoIdentityPoolId" => String.t(),
        "AwsCognitoRegion" => String.t(),
        "AwsUserPoolsId" => String.t(),
        "AwsUserPoolsWebClientId" => String.t()
      }
      
  """
  @type login_auth_config_req_obj() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_backend_request() :: %{
        optional("ResourceConfig") => resource_config(),
        optional("ResourceName") => String.t(),
        required("AppId") => String.t(),
        required("AppName") => String.t(),
        required("BackendEnvironmentName") => String.t()
      }
      
  """
  @type create_backend_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_backend_storage_response() :: %{
        "AppId" => String.t(),
        "BackendEnvironmentName" => String.t(),
        "ResourceConfig" => get_backend_storage_resource_config(),
        "ResourceName" => String.t()
      }
      
  """
  @type get_backend_storage_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_backend_storage_response() :: %{
        "AppId" => String.t(),
        "BackendEnvironmentName" => String.t(),
        "JobId" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type update_backend_storage_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_backend_config_response() :: %{
        "AppId" => String.t(),
        "BackendManagerAppId" => String.t(),
        "Error" => String.t(),
        "LoginAuthConfig" => login_auth_config_req_obj()
      }
      
  """
  @type update_backend_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_backend_job_response() :: %{
        "AppId" => String.t(),
        "BackendEnvironmentName" => String.t(),
        "CreateTime" => String.t(),
        "Error" => String.t(),
        "JobId" => String.t(),
        "Operation" => String.t(),
        "Status" => String.t(),
        "UpdateTime" => String.t()
      }
      
  """
  @type get_backend_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_backend_auth_resource_config() :: %{
        "AuthResources" => list(any()),
        "IdentityPoolConfigs" => create_backend_auth_identity_pool_config(),
        "Service" => list(any()),
        "UserPoolConfigs" => create_backend_auth_user_pool_config()
      }
      
  """
  @type create_backend_auth_resource_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_backend_auth_request() :: %{
        required("BackendEnvironmentName") => String.t(),
        required("ResourceConfig") => create_backend_auth_resource_config(),
        required("ResourceName") => String.t()
      }
      
  """
  @type create_backend_auth_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_backend_storage_request() :: %{
        required("BackendEnvironmentName") => String.t(),
        required("ResourceConfig") => create_backend_storage_resource_config(),
        required("ResourceName") => String.t()
      }
      
  """
  @type create_backend_storage_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      backend_auth_social_provider_config() :: %{
        "ClientId" => String.t(),
        "ClientSecret" => String.t()
      }
      
  """
  @type backend_auth_social_provider_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_backend_response() :: %{
        "AmplifyFeatureFlags" => String.t(),
        "AmplifyMetaConfig" => String.t(),
        "AppId" => String.t(),
        "AppName" => String.t(),
        "BackendEnvironmentList" => list(String.t()()),
        "BackendEnvironmentName" => String.t(),
        "Error" => String.t()
      }
      
  """
  @type get_backend_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sms_settings() :: %{
        "SmsMessage" => String.t()
      }
      
  """
  @type sms_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_backend_api_response() :: %{
        "AppId" => String.t(),
        "BackendEnvironmentName" => String.t(),
        "Error" => String.t(),
        "JobId" => String.t(),
        "Operation" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type update_backend_api_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      backend_storage_permissions() :: %{
        "Authenticated" => list(list(any())()),
        "UnAuthenticated" => list(list(any())())
      }
      
  """
  @type backend_storage_permissions() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      gateway_timeout_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type gateway_timeout_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_backend_config_response() :: %{
        "AppId" => String.t(),
        "BackendEnvironmentName" => String.t(),
        "JobId" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type create_backend_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_backend_auth_identity_pool_config() :: %{
        "IdentityPoolName" => String.t(),
        "UnauthenticatedLogin" => boolean()
      }
      
  """
  @type create_backend_auth_identity_pool_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_backend_job_request() :: %{
        optional("Operation") => String.t(),
        optional("Status") => String.t()
      }
      
  """
  @type update_backend_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_backend_auth_o_auth_config() :: %{
        "DomainPrefix" => String.t(),
        "OAuthGrantType" => list(any()),
        "OAuthScopes" => list(list(any())()),
        "RedirectSignInURIs" => list(String.t()()),
        "RedirectSignOutURIs" => list(String.t()()),
        "SocialProviderSettings" => social_provider_settings()
      }
      
  """
  @type create_backend_auth_o_auth_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bad_request_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_backend_auth_response() :: %{
        "AppId" => String.t(),
        "BackendEnvironmentName" => String.t(),
        "Error" => String.t(),
        "ResourceConfig" => create_backend_auth_resource_config(),
        "ResourceName" => String.t()
      }
      
  """
  @type get_backend_auth_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_token_response() :: %{
        "AppId" => String.t(),
        "ChallengeCode" => String.t(),
        "SessionId" => String.t(),
        "Ttl" => String.t()
      }
      
  """
  @type create_token_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_token_request() :: %{}
      
  """
  @type get_token_request() :: %{}

  @typedoc """

  ## Example:
      
      get_backend_api_response() :: %{
        "AppId" => String.t(),
        "BackendEnvironmentName" => String.t(),
        "Error" => String.t(),
        "ResourceConfig" => backend_api_resource_config(),
        "ResourceName" => String.t()
      }
      
  """
  @type get_backend_api_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_backend_storage_response() :: %{
        "AppId" => String.t(),
        "BackendEnvironmentName" => String.t(),
        "JobId" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type delete_backend_storage_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_backend_auth_request() :: %{
        optional("IdentityPoolId") => String.t(),
        required("NativeClientId") => String.t(),
        required("UserPoolId") => String.t(),
        required("WebClientId") => String.t()
      }
      
  """
  @type import_backend_auth_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_backend_auth_forgot_password_config() :: %{
        "DeliveryMethod" => list(any()),
        "EmailSettings" => email_settings(),
        "SmsSettings" => sms_settings()
      }
      
  """
  @type update_backend_auth_forgot_password_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_backend_auth_request() :: %{
        required("ResourceName") => String.t()
      }
      
  """
  @type delete_backend_auth_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_backend_storage_resource_config() :: %{
        "Permissions" => backend_storage_permissions(),
        "ServiceName" => list(any())
      }
      
  """
  @type update_backend_storage_resource_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_backend_auth_mfa_config() :: %{
        "MFAMode" => list(any()),
        "Settings" => settings()
      }
      
  """
  @type create_backend_auth_mfa_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_backend_api_response() :: %{
        "AppId" => String.t(),
        "BackendEnvironmentName" => String.t(),
        "Error" => String.t(),
        "JobId" => String.t(),
        "Operation" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type delete_backend_api_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_backend_auth_identity_pool_config() :: %{
        "UnauthenticatedLogin" => boolean()
      }
      
  """
  @type update_backend_auth_identity_pool_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_backend_auth_verification_message_config() :: %{
        "DeliveryMethod" => list(any()),
        "EmailSettings" => email_settings(),
        "SmsSettings" => sms_settings()
      }
      
  """
  @type update_backend_auth_verification_message_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_token_request() :: %{}
      
  """
  @type create_token_request() :: %{}

  @typedoc """

  ## Example:
      
      update_backend_storage_request() :: %{
        required("ResourceConfig") => update_backend_storage_resource_config(),
        required("ResourceName") => String.t()
      }
      
  """
  @type update_backend_storage_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_backend_api_request() :: %{
        required("BackendEnvironmentName") => String.t(),
        required("ResourceConfig") => backend_api_resource_config(),
        required("ResourceName") => String.t()
      }
      
  """
  @type create_backend_api_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_backend_job_response() :: %{
        "AppId" => String.t(),
        "BackendEnvironmentName" => String.t(),
        "CreateTime" => String.t(),
        "Error" => String.t(),
        "JobId" => String.t(),
        "Operation" => String.t(),
        "Status" => String.t(),
        "UpdateTime" => String.t()
      }
      
  """
  @type update_backend_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      clone_backend_response() :: %{
        "AppId" => String.t(),
        "BackendEnvironmentName" => String.t(),
        "Error" => String.t(),
        "JobId" => String.t(),
        "Operation" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type clone_backend_response() :: %{String.t() => any()}

  @type clone_backend_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type create_backend_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type create_backend_api_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type create_backend_auth_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type create_backend_config_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type create_backend_storage_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type create_token_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type delete_backend_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type delete_backend_api_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type delete_backend_auth_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type delete_backend_storage_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type delete_token_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type generate_backend_api_models_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type get_backend_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type get_backend_api_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type get_backend_api_models_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type get_backend_auth_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type get_backend_job_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type get_backend_storage_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type get_token_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type import_backend_auth_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type import_backend_storage_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type list_backend_jobs_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type list_s3_buckets_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type remove_all_backends_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type remove_backend_config_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type update_backend_api_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type update_backend_auth_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type update_backend_config_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type update_backend_job_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type update_backend_storage_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  def metadata do
    %{
      api_version: "2020-08-11",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "amplifybackend",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "AmplifyBackend",
      signature_version: "v4",
      signing_name: "amplifybackend",
      target_prefix: nil
    }
  end

  @doc """
  This operation clones an existing backend.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifybackend%20CloneBackend&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:string`) The app ID.
  * `:backend_environment_name` (`t:string`) The name of the backend environment.
  * `:input` (`t:map`):
    * `:target_environment_name` (`t:string`) The name of the destination backend
  environment to be created.

  ## Optional parameters:
  """

  @spec clone_backend(AWS.Client.t(), String.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, clone_backend_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, clone_backend_errors()}

  def clone_backend(%Client{} = client, app_id, backend_environment_name, input, options \\ [])
      when is_map(input) do
    url_path =
      "/backend/#{AWS.Util.encode_uri(app_id)}/environments/#{AWS.Util.encode_uri(backend_environment_name)}/clone"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This operation creates a backend for an Amplify app. Backends are automatically
  created at the time of app creation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifybackend%20CreateBackend&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:map`):
    * `:app_id` (`t:string`) The app ID.
    * `:app_name` (`t:string`) The name of the app.
    * `:backend_environment_name` (`t:string`) The name of the backend environment.
    * `:resource_config` (`t:structure`) The resource configuration for creating a
  backend.
    * `:resource_name` (`t:string`) The name of the resource.

  ## Optional parameters:
  """

  @spec create_backend(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_backend_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_backend_errors()}

  def create_backend(%Client{} = client, input, options \\ []) when is_map(input) do
    url_path = "/backend"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates a new backend API resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifybackend%20CreateBackendAPI&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:string`) The app ID.
  * `:input` (`t:map`):
    * `:backend_environment_name` (`t:string`) The name of the backend environment.
    * `:resource_config` (`t:structure`) The resource configuration for this
  request.
    * `:resource_name` (`t:string`) The name of this resource.

  ## Optional parameters:
  """

  @spec create_backend_api(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, create_backend_api_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_backend_api_errors()}

  def create_backend_api(%Client{} = client, app_id, input, options \\ []) when is_map(input) do
    url_path = "/backend/#{AWS.Util.encode_uri(app_id)}/api"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates a new backend authentication resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifybackend%20CreateBackendAuth&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:string`) The app ID.
  * `:input` (`t:map`):
    * `:backend_environment_name` (`t:string`) The name of the backend environment.
    * `:resource_config` (`t:structure`) The resource configuration for this request
  object.
    * `:resource_name` (`t:string`) The name of this resource.

  ## Optional parameters:
  """

  @spec create_backend_auth(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, create_backend_auth_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_backend_auth_errors()}

  def create_backend_auth(%Client{} = client, app_id, input, options \\ []) when is_map(input) do
    url_path = "/backend/#{AWS.Util.encode_uri(app_id)}/auth"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates a config object for a backend.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifybackend%20CreateBackendConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:string`) The app ID.
  * `:input` (`t:map | nil`):
    * `:backend_manager_app_id` (`t:string`) The app ID for the backend manager.

  ## Optional parameters:
  """

  @spec create_backend_config(AWS.Client.t(), String.t(), input :: map() | nil, Keyword.t()) ::
          {:ok, create_backend_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_backend_config_errors()}

  def create_backend_config(%Client{} = client, app_id, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path = "/backend/#{AWS.Util.encode_uri(app_id)}/config"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates a backend storage resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifybackend%20CreateBackendStorage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:string`) The app ID.
  * `:input` (`t:map`):
    * `:backend_environment_name` (`t:string`) The name of the backend environment.
    * `:resource_config` (`t:structure`) The resource configuration for creating
  backend storage.
    * `:resource_name` (`t:string`) The name of the storage resource.

  ## Optional parameters:
  """

  @spec create_backend_storage(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, create_backend_storage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_backend_storage_errors()}

  def create_backend_storage(%Client{} = client, app_id, input, options \\ [])
      when is_map(input) do
    url_path = "/backend/#{AWS.Util.encode_uri(app_id)}/storage"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Generates a one-time challenge code to authenticate a user into your Amplify
  Admin UI.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifybackend%20CreateToken&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:string`) The app ID.

  ## Optional parameters:
  """

  @spec create_token(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_token_errors()}

  def create_token(%Client{} = client, app_id, options \\ []) do
    url_path = "/backend/#{AWS.Util.encode_uri(app_id)}/challenge"

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
  Removes an existing environment from your Amplify project.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifybackend%20DeleteBackend&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:string`) The app ID.
  * `:backend_environment_name` (`t:string`) The name of the backend environment.

  ## Optional parameters:
  """

  @spec delete_backend(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_backend_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_backend_errors()}

  def delete_backend(%Client{} = client, app_id, backend_environment_name, options \\ []) do
    url_path =
      "/backend/#{AWS.Util.encode_uri(app_id)}/environments/#{AWS.Util.encode_uri(backend_environment_name)}/remove"

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
  Deletes an existing backend API resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifybackend%20DeleteBackendAPI&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:string`) The app ID.
  * `:backend_environment_name` (`t:string`) The name of the backend environment.
  * `:input` (`t:map`):
    * `:resource_name` (`t:string`) The name of this resource.
    * `:resource_config` (`t:structure`) Defines the resource configuration for the
  data model in your Amplify project.

  ## Optional parameters:
  """

  @spec delete_backend_api(AWS.Client.t(), String.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_backend_api_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_backend_api_errors()}

  def delete_backend_api(
        %Client{} = client,
        app_id,
        backend_environment_name,
        input,
        options \\ []
      )
      when is_map(input) do
    url_path =
      "/backend/#{AWS.Util.encode_uri(app_id)}/api/#{AWS.Util.encode_uri(backend_environment_name)}/remove"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Deletes an existing backend authentication resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifybackend%20DeleteBackendAuth&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:string`) The app ID.
  * `:backend_environment_name` (`t:string`) The name of the backend environment.
  * `:input` (`t:map`):
    * `:resource_name` (`t:string`) The name of this resource.

  ## Optional parameters:
  """

  @spec delete_backend_auth(AWS.Client.t(), String.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_backend_auth_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_backend_auth_errors()}

  def delete_backend_auth(
        %Client{} = client,
        app_id,
        backend_environment_name,
        input,
        options \\ []
      )
      when is_map(input) do
    url_path =
      "/backend/#{AWS.Util.encode_uri(app_id)}/auth/#{AWS.Util.encode_uri(backend_environment_name)}/remove"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Removes the specified backend storage resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifybackend%20DeleteBackendStorage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:string`) The app ID.
  * `:backend_environment_name` (`t:string`) The name of the backend environment.
  * `:input` (`t:map`):
    * `:resource_name` (`t:string`) The name of the storage resource.
    * `:service_name` (`t:enum["S3"]`) The name of the storage service.

  ## Optional parameters:
  """

  @spec delete_backend_storage(
          AWS.Client.t(),
          String.t(),
          String.t(),
          input :: map(),
          Keyword.t()
        ) ::
          {:ok, delete_backend_storage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_backend_storage_errors()}

  def delete_backend_storage(
        %Client{} = client,
        app_id,
        backend_environment_name,
        input,
        options \\ []
      )
      when is_map(input) do
    url_path =
      "/backend/#{AWS.Util.encode_uri(app_id)}/storage/#{AWS.Util.encode_uri(backend_environment_name)}/remove"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Deletes the challenge token based on the given appId and sessionId.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifybackend%20DeleteToken&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:string`) The app ID.
  * `:session_id` (`t:string`) The session ID.

  ## Optional parameters:
  """

  @spec delete_token(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_token_errors()}

  def delete_token(%Client{} = client, app_id, session_id, options \\ []) do
    url_path =
      "/backend/#{AWS.Util.encode_uri(app_id)}/challenge/#{AWS.Util.encode_uri(session_id)}/remove"

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
  Generates a model schema for an existing backend API resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifybackend%20GenerateBackendAPIModels&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:string`) The app ID.
  * `:backend_environment_name` (`t:string`) The name of the backend environment.
  * `:input` (`t:map`):
    * `:resource_name` (`t:string`) The name of this resource.

  ## Optional parameters:
  """

  @spec generate_backend_api_models(
          AWS.Client.t(),
          String.t(),
          String.t(),
          input :: map(),
          Keyword.t()
        ) ::
          {:ok, generate_backend_api_models_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, generate_backend_api_models_errors()}

  def generate_backend_api_models(
        %Client{} = client,
        app_id,
        backend_environment_name,
        input,
        options \\ []
      )
      when is_map(input) do
    url_path =
      "/backend/#{AWS.Util.encode_uri(app_id)}/api/#{AWS.Util.encode_uri(backend_environment_name)}/generateModels"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Provides project-level details for your Amplify UI project.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifybackend%20GetBackend&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:string`) The app ID.
  * `:input` (`t:map | nil`):
    * `:backend_environment_name` (`t:string`) The name of the backend environment.

  ## Optional parameters:
  """

  @spec get_backend(AWS.Client.t(), String.t(), input :: map() | nil, Keyword.t()) ::
          {:ok, get_backend_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_backend_errors()}

  def get_backend(%Client{} = client, app_id, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path = "/backend/#{AWS.Util.encode_uri(app_id)}/details"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Gets the details for a backend API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifybackend%20GetBackendAPI&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:string`) The app ID.
  * `:backend_environment_name` (`t:string`) The name of the backend environment.
  * `:input` (`t:map`):
    * `:resource_name` (`t:string`) The name of this resource.
    * `:resource_config` (`t:structure`) Defines the resource configuration for the
  data model in your Amplify project.

  ## Optional parameters:
  """

  @spec get_backend_api(AWS.Client.t(), String.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, get_backend_api_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_backend_api_errors()}

  def get_backend_api(%Client{} = client, app_id, backend_environment_name, input, options \\ [])
      when is_map(input) do
    url_path =
      "/backend/#{AWS.Util.encode_uri(app_id)}/api/#{AWS.Util.encode_uri(backend_environment_name)}/details"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Gets a model introspection schema for an existing backend API resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifybackend%20GetBackendAPIModels&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:string`) The app ID.
  * `:backend_environment_name` (`t:string`) The name of the backend environment.
  * `:input` (`t:map`):
    * `:resource_name` (`t:string`) The name of this resource.

  ## Optional parameters:
  """

  @spec get_backend_api_models(
          AWS.Client.t(),
          String.t(),
          String.t(),
          input :: map(),
          Keyword.t()
        ) ::
          {:ok, get_backend_api_models_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_backend_api_models_errors()}

  def get_backend_api_models(
        %Client{} = client,
        app_id,
        backend_environment_name,
        input,
        options \\ []
      )
      when is_map(input) do
    url_path =
      "/backend/#{AWS.Util.encode_uri(app_id)}/api/#{AWS.Util.encode_uri(backend_environment_name)}/getModels"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Gets a backend auth details.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifybackend%20GetBackendAuth&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:string`) The app ID.
  * `:backend_environment_name` (`t:string`) The name of the backend environment.
  * `:input` (`t:map`):
    * `:resource_name` (`t:string`) The name of this resource.

  ## Optional parameters:
  """

  @spec get_backend_auth(AWS.Client.t(), String.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, get_backend_auth_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_backend_auth_errors()}

  def get_backend_auth(%Client{} = client, app_id, backend_environment_name, input, options \\ [])
      when is_map(input) do
    url_path =
      "/backend/#{AWS.Util.encode_uri(app_id)}/auth/#{AWS.Util.encode_uri(backend_environment_name)}/details"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Returns information about a specific job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifybackend%20GetBackendJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:string`) The app ID.
  * `:backend_environment_name` (`t:string`) The name of the backend environment.
  * `:job_id` (`t:string`) The ID for the job.

  ## Optional parameters:
  """

  @spec get_backend_job(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_backend_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_backend_job_errors()}

  def get_backend_job(%Client{} = client, app_id, backend_environment_name, job_id, options \\ []) do
    url_path =
      "/backend/#{AWS.Util.encode_uri(app_id)}/job/#{AWS.Util.encode_uri(backend_environment_name)}/#{AWS.Util.encode_uri(job_id)}"

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
  Gets details for a backend storage resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifybackend%20GetBackendStorage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:string`) The app ID.
  * `:backend_environment_name` (`t:string`) The name of the backend environment.
  * `:input` (`t:map`):
    * `:resource_name` (`t:string`) The name of the storage resource.

  ## Optional parameters:
  """

  @spec get_backend_storage(AWS.Client.t(), String.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, get_backend_storage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_backend_storage_errors()}

  def get_backend_storage(
        %Client{} = client,
        app_id,
        backend_environment_name,
        input,
        options \\ []
      )
      when is_map(input) do
    url_path =
      "/backend/#{AWS.Util.encode_uri(app_id)}/storage/#{AWS.Util.encode_uri(backend_environment_name)}/details"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Gets the challenge token based on the given appId and sessionId.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifybackend%20GetToken&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:string`) The app ID.
  * `:session_id` (`t:string`) The session ID.

  ## Optional parameters:
  """

  @spec get_token(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_token_errors()}

  def get_token(%Client{} = client, app_id, session_id, options \\ []) do
    url_path =
      "/backend/#{AWS.Util.encode_uri(app_id)}/challenge/#{AWS.Util.encode_uri(session_id)}"

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
  Imports an existing backend authentication resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifybackend%20ImportBackendAuth&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:string`) The app ID.
  * `:backend_environment_name` (`t:string`) The name of the backend environment.
  * `:input` (`t:map`):
    * `:native_client_id` (`t:string`) The ID of the Amazon Cognito native client.
    * `:user_pool_id` (`t:string`) The ID of the Amazon Cognito user pool.
    * `:web_client_id` (`t:string`) The ID of the Amazon Cognito web client.
    * `:identity_pool_id` (`t:string`) The ID of the Amazon Cognito identity pool.

  ## Optional parameters:
  """

  @spec import_backend_auth(AWS.Client.t(), String.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, import_backend_auth_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, import_backend_auth_errors()}

  def import_backend_auth(
        %Client{} = client,
        app_id,
        backend_environment_name,
        input,
        options \\ []
      )
      when is_map(input) do
    url_path =
      "/backend/#{AWS.Util.encode_uri(app_id)}/auth/#{AWS.Util.encode_uri(backend_environment_name)}/import"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Imports an existing backend storage resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifybackend%20ImportBackendStorage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:string`) The app ID.
  * `:backend_environment_name` (`t:string`) The name of the backend environment.
  * `:input` (`t:map`):
    * `:service_name` (`t:enum["S3"]`) The name of the storage service.
    * `:bucket_name` (`t:string`) The name of the S3 bucket.

  ## Optional parameters:
  """

  @spec import_backend_storage(
          AWS.Client.t(),
          String.t(),
          String.t(),
          input :: map(),
          Keyword.t()
        ) ::
          {:ok, import_backend_storage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, import_backend_storage_errors()}

  def import_backend_storage(
        %Client{} = client,
        app_id,
        backend_environment_name,
        input,
        options \\ []
      )
      when is_map(input) do
    url_path =
      "/backend/#{AWS.Util.encode_uri(app_id)}/storage/#{AWS.Util.encode_uri(backend_environment_name)}/import"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Lists the jobs for the backend of an Amplify app.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifybackend%20ListBackendJobs&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:string`) The app ID.
  * `:backend_environment_name` (`t:string`) The name of the backend environment.
  * `:input` (`t:map | nil`):
    * `:job_id` (`t:string`) The ID for the job.
    * `:max_results` (`t:integer`) The maximum number of results that you want in
  the response.
    * `:next_token` (`t:string`) The token for the next set of results.
    * `:operation` (`t:string`) Filters the list of response objects to include only
  those with the specified operation name.
    * `:status` (`t:string`) Filters the list of response objects to include only
  those with the specified status.

  ## Optional parameters:
  """

  @spec list_backend_jobs(
          AWS.Client.t(),
          String.t(),
          String.t(),
          input :: map() | nil,
          Keyword.t()
        ) ::
          {:ok, list_backend_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_backend_jobs_errors()}

  def list_backend_jobs(
        %Client{} = client,
        app_id,
        backend_environment_name,
        input,
        options \\ []
      )
      when is_map(input) or is_nil(input) do
    url_path =
      "/backend/#{AWS.Util.encode_uri(app_id)}/job/#{AWS.Util.encode_uri(backend_environment_name)}"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  The list of S3 buckets in your account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifybackend%20ListS3Buckets&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:map | nil`):
    * `:next_token` (`t:string`) Reserved for future use.

  ## Optional parameters:
  """

  @spec list_s3_buckets(AWS.Client.t(), input :: map() | nil, Keyword.t()) ::
          {:ok, list_s3_buckets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_s3_buckets_errors()}

  def list_s3_buckets(%Client{} = client, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path = "/s3Buckets"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Removes all backend environments from your Amplify project.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifybackend%20RemoveAllBackends&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:string`) The app ID.
  * `:input` (`t:map | nil`):
    * `:clean_amplify_app` (`t:boolean`) Cleans up the Amplify Console app if this
  value is set to true.

  ## Optional parameters:
  """

  @spec remove_all_backends(AWS.Client.t(), String.t(), input :: map() | nil, Keyword.t()) ::
          {:ok, remove_all_backends_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, remove_all_backends_errors()}

  def remove_all_backends(%Client{} = client, app_id, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path = "/backend/#{AWS.Util.encode_uri(app_id)}/remove"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Removes the AWS resources required to access the Amplify Admin UI.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifybackend%20RemoveBackendConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:string`) The app ID.

  ## Optional parameters:
  """

  @spec remove_backend_config(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, remove_backend_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, remove_backend_config_errors()}

  def remove_backend_config(%Client{} = client, app_id, options \\ []) do
    url_path = "/backend/#{AWS.Util.encode_uri(app_id)}/config/remove"

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
  Updates an existing backend API resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifybackend%20UpdateBackendAPI&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:string`) The app ID.
  * `:backend_environment_name` (`t:string`) The name of the backend environment.
  * `:input` (`t:map`):
    * `:resource_name` (`t:string`) The name of this resource.
    * `:resource_config` (`t:structure`) Defines the resource configuration for the
  data model in your Amplify project.

  ## Optional parameters:
  """

  @spec update_backend_api(AWS.Client.t(), String.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, update_backend_api_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_backend_api_errors()}

  def update_backend_api(
        %Client{} = client,
        app_id,
        backend_environment_name,
        input,
        options \\ []
      )
      when is_map(input) do
    url_path =
      "/backend/#{AWS.Util.encode_uri(app_id)}/api/#{AWS.Util.encode_uri(backend_environment_name)}"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates an existing backend authentication resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifybackend%20UpdateBackendAuth&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:string`) The app ID.
  * `:backend_environment_name` (`t:string`) The name of the backend environment.
  * `:input` (`t:map`):
    * `:resource_config` (`t:structure`) The resource configuration for this request
  object.
    * `:resource_name` (`t:string`) The name of this resource.

  ## Optional parameters:
  """

  @spec update_backend_auth(AWS.Client.t(), String.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, update_backend_auth_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_backend_auth_errors()}

  def update_backend_auth(
        %Client{} = client,
        app_id,
        backend_environment_name,
        input,
        options \\ []
      )
      when is_map(input) do
    url_path =
      "/backend/#{AWS.Util.encode_uri(app_id)}/auth/#{AWS.Util.encode_uri(backend_environment_name)}"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates the AWS resources required to access the Amplify Admin UI.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifybackend%20UpdateBackendConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:string`) The app ID.
  * `:input` (`t:map | nil`):
    * `:login_auth_config` (`t:structure`) Describes the Amazon Cognito
  configuration for Admin UI access.

  ## Optional parameters:
  """

  @spec update_backend_config(AWS.Client.t(), String.t(), input :: map() | nil, Keyword.t()) ::
          {:ok, update_backend_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_backend_config_errors()}

  def update_backend_config(%Client{} = client, app_id, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path = "/backend/#{AWS.Util.encode_uri(app_id)}/config/update"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates a specific job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifybackend%20UpdateBackendJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:string`) The app ID.
  * `:backend_environment_name` (`t:string`) The name of the backend environment.
  * `:job_id` (`t:string`) The ID for the job.
  * `:input` (`t:map | nil`):
    * `:operation` (`t:string`) Filters the list of response objects to include only
  those with the specified operation name.
    * `:status` (`t:string`) Filters the list of response objects to include only
  those with the specified status.

  ## Optional parameters:
  """

  @spec update_backend_job(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          input :: map() | nil,
          Keyword.t()
        ) ::
          {:ok, update_backend_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_backend_job_errors()}

  def update_backend_job(
        %Client{} = client,
        app_id,
        backend_environment_name,
        job_id,
        input,
        options \\ []
      )
      when is_map(input) or is_nil(input) do
    url_path =
      "/backend/#{AWS.Util.encode_uri(app_id)}/job/#{AWS.Util.encode_uri(backend_environment_name)}/#{AWS.Util.encode_uri(job_id)}"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates an existing backend storage resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifybackend%20UpdateBackendStorage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:string`) The app ID.
  * `:backend_environment_name` (`t:string`) The name of the backend environment.
  * `:input` (`t:map`):
    * `:resource_config` (`t:structure`) The resource configuration for updating
  backend storage.
    * `:resource_name` (`t:string`) The name of the storage resource.

  ## Optional parameters:
  """

  @spec update_backend_storage(
          AWS.Client.t(),
          String.t(),
          String.t(),
          input :: map(),
          Keyword.t()
        ) ::
          {:ok, update_backend_storage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_backend_storage_errors()}

  def update_backend_storage(
        %Client{} = client,
        app_id,
        backend_environment_name,
        input,
        options \\ []
      )
      when is_map(input) do
    url_path =
      "/backend/#{AWS.Util.encode_uri(app_id)}/storage/#{AWS.Util.encode_uri(backend_environment_name)}"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end
end
