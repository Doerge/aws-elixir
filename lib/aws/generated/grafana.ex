# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Grafana do
  @moduledoc """
  Amazon Managed Grafana is a fully managed and secure data visualization service
  that you can use to instantly query, correlate, and visualize operational
  metrics, logs, and traces from multiple sources. Amazon Managed Grafana makes
  it easy to deploy, operate, and scale Grafana, a widely deployed data
  visualization tool that is popular for its extensible data support.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      list_permissions_response() :: %{
        optional("nextToken") => String.t(),
        required("permissions") => list(permission_entry()())
      }
      
  """
  @type list_permissions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_configuration() :: %{
        "securityGroupIds" => list(String.t()()),
        "subnetIds" => list(String.t()())
      }
      
  """
  @type vpc_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_workspace_configuration_request() :: %{
        optional("grafanaVersion") => String.t(),
        required("configuration") => String.t()
      }
      
  """
  @type update_workspace_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_workspace_api_key_response() :: %{
        required("key") => String.t(),
        required("keyName") => String.t(),
        required("workspaceId") => String.t()
      }
      
  """
  @type create_workspace_api_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      list_workspace_service_accounts_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t()
      }
      
  """
  @type list_workspace_service_accounts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_workspace_authentication_response() :: %{
        required("authentication") => authentication_description()
      }
      
  """
  @type describe_workspace_authentication_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_access_configuration() :: %{
        "prefixListIds" => list(String.t()()),
        "vpceIds" => list(String.t()())
      }
      
  """
  @type network_access_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      saml_authentication() :: %{
        "configuration" => saml_configuration(),
        "status" => String.t()
      }
      
  """
  @type saml_authentication() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workspace_summary() :: %{
        "authentication" => authentication_summary(),
        "created" => [non_neg_integer()],
        "description" => String.t(),
        "endpoint" => String.t(),
        "grafanaToken" => String.t(),
        "grafanaVersion" => String.t(),
        "id" => String.t(),
        "licenseType" => String.t(),
        "modified" => [non_neg_integer()],
        "name" => String.t(),
        "notificationDestinations" => list(String.t()()),
        "status" => String.t(),
        "tags" => map()
      }
      
  """
  @type workspace_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_workspace_configuration_request() :: %{}
      
  """
  @type describe_workspace_configuration_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_workspace_service_account_token_response() :: %{
        "serviceAccountId" => [String.t()],
        "tokenId" => [String.t()],
        "workspaceId" => String.t()
      }
      
  """
  @type delete_workspace_service_account_token_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_workspace_api_key_request() :: %{
        required("keyName") => String.t(),
        required("keyRole") => [String.t()],
        required("secondsToLive") => [integer()]
      }
      
  """
  @type create_workspace_api_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_workspace_response() :: %{
        required("workspace") => workspace_description()
      }
      
  """
  @type delete_workspace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_workspace_configuration_response() :: %{}
      
  """
  @type update_workspace_configuration_response() :: %{}

  @typedoc """

  ## Example:
      
      service_account_summary() :: %{
        "grafanaRole" => String.t(),
        "id" => [String.t()],
        "isDisabled" => [String.t()],
        "name" => [String.t()]
      }
      
  """
  @type service_account_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      authentication_description() :: %{
        "awsSso" => aws_sso_authentication(),
        "providers" => list(String.t()()),
        "saml" => saml_authentication()
      }
      
  """
  @type authentication_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_workspace_service_account_response() :: %{
        "serviceAccountId" => [String.t()],
        "workspaceId" => String.t()
      }
      
  """
  @type delete_workspace_service_account_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_workspace_authentication_response() :: %{
        required("authentication") => authentication_description()
      }
      
  """
  @type update_workspace_authentication_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_error() :: %{
        "causedBy" => update_instruction(),
        "code" => [integer()],
        "message" => [String.t()]
      }
      
  """
  @type update_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_workspace_response() :: %{
        required("workspace") => workspace_description()
      }
      
  """
  @type describe_workspace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_workspace_configuration_response() :: %{
        optional("grafanaVersion") => String.t(),
        required("configuration") => String.t()
      }
      
  """
  @type describe_workspace_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_workspace_authentication_request() :: %{
        optional("samlConfiguration") => saml_configuration(),
        required("authenticationProviders") => list(String.t()())
      }
      
  """
  @type update_workspace_authentication_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => [String.t()],
        "quotaCode" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()],
        "serviceCode" => [String.t()]
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_workspace_service_account_token_response() :: %{
        "serviceAccountId" => [String.t()],
        "serviceAccountToken" => service_account_token_summary_with_key(),
        "workspaceId" => String.t()
      }
      
  """
  @type create_workspace_service_account_token_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      authentication_summary() :: %{
        "providers" => list(String.t()()),
        "samlConfigurationStatus" => String.t()
      }
      
  """
  @type authentication_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_license_response() :: %{
        required("workspace") => workspace_description()
      }
      
  """
  @type associate_license_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_workspace_service_account_response() :: %{
        "grafanaRole" => String.t(),
        "id" => [String.t()],
        "name" => [String.t()],
        "workspaceId" => String.t()
      }
      
  """
  @type create_workspace_service_account_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_workspace_request() :: %{}
      
  """
  @type describe_workspace_request() :: %{}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        optional("tags") => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_workspace_authentication_request() :: %{}
      
  """
  @type describe_workspace_authentication_request() :: %{}

  @typedoc """

  ## Example:
      
      validation_exception_field() :: %{
        "message" => [String.t()],
        "name" => [String.t()]
      }
      
  """
  @type validation_exception_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_account_token_summary() :: %{
        "createdAt" => [non_neg_integer()],
        "expiresAt" => [non_neg_integer()],
        "id" => [String.t()],
        "lastUsedAt" => [non_neg_integer()],
        "name" => [String.t()]
      }
      
  """
  @type service_account_token_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_workspace_response() :: %{
        required("workspace") => workspace_description()
      }
      
  """
  @type update_workspace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_versions_response() :: %{
        "grafanaVersions" => list(String.t()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_workspace_service_account_tokens_response() :: %{
        "nextToken" => String.t(),
        "serviceAccountId" => [String.t()],
        "serviceAccountTokens" => list(service_account_token_summary()()),
        "workspaceId" => String.t()
      }
      
  """
  @type list_workspace_service_account_tokens_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_workspace_request() :: %{}
      
  """
  @type delete_workspace_request() :: %{}

  @typedoc """

  ## Example:
      
      update_workspace_request() :: %{
        optional("accountAccessType") => String.t(),
        optional("networkAccessControl") => network_access_configuration(),
        optional("organizationRoleName") => String.t(),
        optional("permissionType") => String.t(),
        optional("removeNetworkAccessConfiguration") => [boolean()],
        optional("removeVpcConfiguration") => [boolean()],
        optional("stackSetName") => String.t(),
        optional("vpcConfiguration") => vpc_configuration(),
        optional("workspaceDataSources") => list(String.t()()),
        optional("workspaceDescription") => String.t(),
        optional("workspaceName") => String.t(),
        optional("workspaceNotificationDestinations") => list(String.t()()),
        optional("workspaceOrganizationalUnits") => list(String.t()()),
        optional("workspaceRoleArn") => String.t()
      }
      
  """
  @type update_workspace_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_permissions_request() :: %{
        optional("groupId") => String.t(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t(),
        optional("userId") => String.t(),
        optional("userType") => String.t()
      }
      
  """
  @type list_permissions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workspace_description() :: %{
        "accountAccessType" => String.t(),
        "authentication" => authentication_summary(),
        "created" => [non_neg_integer()],
        "dataSources" => list(String.t()()),
        "description" => String.t(),
        "endpoint" => String.t(),
        "freeTrialConsumed" => [boolean()],
        "freeTrialExpiration" => [non_neg_integer()],
        "grafanaToken" => String.t(),
        "grafanaVersion" => String.t(),
        "id" => String.t(),
        "licenseExpiration" => [non_neg_integer()],
        "licenseType" => String.t(),
        "modified" => [non_neg_integer()],
        "name" => String.t(),
        "networkAccessControl" => network_access_configuration(),
        "notificationDestinations" => list(String.t()()),
        "organizationRoleName" => String.t(),
        "organizationalUnits" => list(String.t()()),
        "permissionType" => String.t(),
        "stackSetName" => String.t(),
        "status" => String.t(),
        "tags" => map(),
        "vpcConfiguration" => vpc_configuration(),
        "workspaceRoleArn" => String.t()
      }
      
  """
  @type workspace_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => [String.t()],
        "retryAfterSeconds" => [integer()]
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_workspace_response() :: %{
        required("workspace") => workspace_description()
      }
      
  """
  @type create_workspace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_workspaces_response() :: %{
        optional("nextToken") => String.t(),
        required("workspaces") => list(workspace_summary()())
      }
      
  """
  @type list_workspaces_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_license_request() :: %{
        optional("grafanaToken") => String.t()
      }
      
  """
  @type associate_license_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => [String.t()]
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
      
      update_permissions_response() :: %{
        required("errors") => list(update_error()())
      }
      
  """
  @type update_permissions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_workspace_service_account_request() :: %{}
      
  """
  @type delete_workspace_service_account_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_workspace_service_account_token_request() :: %{}
      
  """
  @type delete_workspace_service_account_token_request() :: %{}

  @typedoc """

  ## Example:
      
      permission_entry() :: %{
        "role" => String.t(),
        "user" => user()
      }
      
  """
  @type permission_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aws_sso_authentication() :: %{
        "ssoClientId" => String.t()
      }
      
  """
  @type aws_sso_authentication() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()()),
        "message" => [String.t()],
        "reason" => String.t()
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
      
      list_workspaces_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t()
      }
      
  """
  @type list_workspaces_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => [String.t()],
        "quotaCode" => [String.t()],
        "retryAfterSeconds" => [integer()],
        "serviceCode" => [String.t()]
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_instruction() :: %{
        "action" => String.t(),
        "role" => String.t(),
        "users" => list(user()())
      }
      
  """
  @type update_instruction() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user() :: %{
        "id" => String.t(),
        "type" => String.t()
      }
      
  """
  @type user() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_workspace_api_key_request() :: %{}
      
  """
  @type delete_workspace_api_key_request() :: %{}

  @typedoc """

  ## Example:
      
      list_versions_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t(),
        optional("workspaceId") => String.t()
      }
      
  """
  @type list_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      assertion_attributes() :: %{
        "email" => String.t(),
        "groups" => String.t(),
        "login" => String.t(),
        "name" => String.t(),
        "org" => String.t(),
        "role" => String.t()
      }
      
  """
  @type assertion_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_workspace_service_account_tokens_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t()
      }
      
  """
  @type list_workspace_service_account_tokens_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      role_values() :: %{
        "admin" => list(String.t()()),
        "editor" => list(String.t()())
      }
      
  """
  @type role_values() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_license_response() :: %{
        required("workspace") => workspace_description()
      }
      
  """
  @type disassociate_license_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_workspace_service_account_request() :: %{
        required("grafanaRole") => String.t(),
        required("name") => String.t()
      }
      
  """
  @type create_workspace_service_account_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_permissions_request() :: %{
        required("updateInstructionBatch") => list(update_instruction()())
      }
      
  """
  @type update_permissions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_account_token_summary_with_key() :: %{
        "id" => [String.t()],
        "key" => String.t(),
        "name" => [String.t()]
      }
      
  """
  @type service_account_token_summary_with_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_workspace_api_key_response() :: %{
        required("keyName") => String.t(),
        required("workspaceId") => String.t()
      }
      
  """
  @type delete_workspace_api_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_license_request() :: %{}
      
  """
  @type disassociate_license_request() :: %{}

  @typedoc """

  ## Example:
      
      list_workspace_service_accounts_response() :: %{
        "nextToken" => String.t(),
        "serviceAccounts" => list(service_account_summary()()),
        "workspaceId" => String.t()
      }
      
  """
  @type list_workspace_service_accounts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_workspace_service_account_token_request() :: %{
        required("name") => String.t(),
        required("secondsToLive") => [integer()]
      }
      
  """
  @type create_workspace_service_account_token_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      saml_configuration() :: %{
        "allowedOrganizations" => list(String.t()()),
        "assertionAttributes" => assertion_attributes(),
        "idpMetadata" => list(),
        "loginValidityDuration" => integer(),
        "roleValues" => role_values()
      }
      
  """
  @type saml_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_workspace_request() :: %{
        optional("clientToken") => String.t(),
        optional("configuration") => String.t(),
        optional("grafanaVersion") => String.t(),
        optional("networkAccessControl") => network_access_configuration(),
        optional("organizationRoleName") => String.t(),
        optional("stackSetName") => String.t(),
        optional("tags") => map(),
        optional("vpcConfiguration") => vpc_configuration(),
        optional("workspaceDataSources") => list(String.t()()),
        optional("workspaceDescription") => String.t(),
        optional("workspaceName") => String.t(),
        optional("workspaceNotificationDestinations") => list(String.t()()),
        optional("workspaceOrganizationalUnits") => list(String.t()()),
        optional("workspaceRoleArn") => String.t(),
        required("accountAccessType") => String.t(),
        required("authenticationProviders") => list(String.t()()),
        required("permissionType") => String.t()
      }
      
  """
  @type create_workspace_request() :: %{String.t() => any()}

  @type associate_license_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_workspace_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_workspace_api_key_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_workspace_service_account_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_workspace_service_account_token_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_workspace_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_workspace_api_key_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_workspace_service_account_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_workspace_service_account_token_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_workspace_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_workspace_authentication_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_workspace_configuration_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type disassociate_license_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_permissions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_versions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_workspace_service_account_tokens_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_workspace_service_accounts_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_workspaces_errors() ::
          throttling_exception() | access_denied_exception() | internal_server_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_permissions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_workspace_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_workspace_authentication_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_workspace_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2020-08-18",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "grafana",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "grafana",
      signature_version: "v4",
      signing_name: "grafana",
      target_prefix: nil
    }
  end

  @doc """
  Assigns a Grafana Enterprise license to a workspace. To upgrade, you must use
  `ENTERPRISE` for the `licenseType`, and pass in a valid Grafana Labs token for
  the `grafanaToken`. Upgrading to Grafana Enterprise incurs additional fees.
  For more information, see [Upgrade a workspace to Grafana
  Enterprise](https://docs.aws.amazon.com/grafana/latest/userguide/upgrade-to-Grafana-Enterprise.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=grafana%20AssociateLicense&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:license_type` (`t:string` required) The type of license to associate with
  the workspace.
  * `:workspace_id` (`t:string` required) The ID of the workspace to associate the
  license with.
  ## Keyword parameters:
  * `:grafana_token` (`t:string`) A token from Grafana Labs that ties your Amazon
  Web Services account with a Grafana Labs account. For more information, see
  Link your account with Grafana Labs.
  """
  @spec associate_license(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, associate_license_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_license_errors()}
  def associate_license(%Client{} = client, license_type, workspace_id, options \\ []) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/licenses/#{AWS.Util.encode_uri(license_type)}"

    # Validate optional parameters
    optional_params = [grafana_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :grafana_token) do
        [{"Grafana-Token", opt_val} | headers]
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
      |> Keyword.drop([:grafana_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 202)
  end

  @doc """
  Creates a *workspace*. In a workspace, you can create Grafana dashboards and
  visualizations to analyze your metrics, logs, and traces. You don't have to
  build, package, or deploy any hardware to run the Grafana server.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=grafana%20CreateWorkspace&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_workspace(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_workspace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_workspace_errors()}
  def create_workspace(%Client{} = client, options \\ []) do
    url_path = "/workspaces"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 202)
  end

  @doc """
  Creates a Grafana API key for the workspace. This key can be used to
  authenticate requests sent to the workspace's HTTP API. See
  [https://docs.aws.amazon.com/grafana/latest/userguide/Using-Grafana-APIs.html](https://docs.aws.amazon.com/grafana/latest/userguide/Using-Grafana-APIs.html)
  for available APIs and example requests.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=grafana%20CreateWorkspaceApiKey&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:workspace_id` (`t:string` required) The ID of the workspace to create an API
  key.
  ## Keyword parameters:
  """
  @spec create_workspace_api_key(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_workspace_api_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_workspace_api_key_errors()}
  def create_workspace_api_key(%Client{} = client, workspace_id, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/apikeys"

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
  Creates a service account for the workspace. A service account can be used to
  call Grafana HTTP APIs, and run automated workloads. After creating the
  service account with the correct `GrafanaRole` for your use case, use
  `CreateWorkspaceServiceAccountToken` to create a token that can be used to
  authenticate and authorize Grafana HTTP API calls. You can only create service
  accounts for workspaces that are compatible with Grafana version 9 and above.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=grafana%20CreateWorkspaceServiceAccount&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:workspace_id` (`t:string` required) The ID of the workspace within which to
  create the service account.
  ## Keyword parameters:
  """
  @spec create_workspace_service_account(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_workspace_service_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_workspace_service_account_errors()}
  def create_workspace_service_account(%Client{} = client, workspace_id, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/serviceaccounts"

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
  Creates a token that can be used to authenticate and authorize Grafana HTTP API
  operations for the given [workspace service
  account](https://docs.aws.amazon.com/grafana/latest/userguide/service-accounts.html).
  The service account acts as a user for the API operations, and defines the
  permissions that are used by the API. When you create the service account
  token, you will receive a key that is used when calling Grafana APIs. Do not
  lose this key, as it will not be retrievable again. If you do lose the key,
  you can delete the token and recreate it to receive a new key. This will
  disable the initial key.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=grafana%20CreateWorkspaceServiceAccountToken&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:service_account_id` (`t:string` required) The ID of the service account for
  which to create a token.
  * `:workspace_id` (`t:string` required) The ID of the workspace the service
  account resides within.
  ## Keyword parameters:
  """
  @spec create_workspace_service_account_token(
          AWS.Client.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, create_workspace_service_account_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_workspace_service_account_token_errors()}
  def create_workspace_service_account_token(
        %Client{} = client,
        service_account_id,
        workspace_id,
        options \\ []
      ) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/serviceaccounts/#{AWS.Util.encode_uri(service_account_id)}/tokens"

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
  Deletes an Amazon Managed Grafana workspace.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=grafana%20DeleteWorkspace&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:workspace_id` (`t:string` required) The ID of the workspace to delete.
  ## Keyword parameters:
  """
  @spec delete_workspace(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_workspace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_workspace_errors()}
  def delete_workspace(%Client{} = client, workspace_id, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}"

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
      202
    )
  end

  @doc """
  Deletes a Grafana API key for the workspace.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=grafana%20DeleteWorkspaceApiKey&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:key_name` (`t:string` required) The name of the API key to delete.
  * `:workspace_id` (`t:string` required) The ID of the workspace to delete.
  ## Keyword parameters:
  """
  @spec delete_workspace_api_key(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_workspace_api_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_workspace_api_key_errors()}
  def delete_workspace_api_key(%Client{} = client, key_name, workspace_id, options \\ []) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/apikeys/#{AWS.Util.encode_uri(key_name)}"

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
      200
    )
  end

  @doc """
  Deletes a workspace service account from the workspace. This will delete any
  tokens created for the service account, as well. If the tokens are currently
  in use, the will fail to authenticate / authorize after they are deleted.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=grafana%20DeleteWorkspaceServiceAccount&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:service_account_id` (`t:string` required) The ID of the service account to
  delete.
  * `:workspace_id` (`t:string` required) The ID of the workspace where the
  service account resides.
  ## Keyword parameters:
  """
  @spec delete_workspace_service_account(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_workspace_service_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_workspace_service_account_errors()}
  def delete_workspace_service_account(
        %Client{} = client,
        service_account_id,
        workspace_id,
        options \\ []
      ) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/serviceaccounts/#{AWS.Util.encode_uri(service_account_id)}"

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
      200
    )
  end

  @doc """
  Deletes a token for the workspace service account. This will disable the key
  associated with the token. If any automation is currently using the key, it
  will no longer be authenticated or authorized to perform actions with the
  Grafana HTTP APIs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=grafana%20DeleteWorkspaceServiceAccountToken&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:service_account_id` (`t:string` required) The ID of the service account from
  which to delete the token.
  * `:token_id` (`t:string` required) The ID of the token to delete.
  * `:workspace_id` (`t:string` required) The ID of the workspace from which to
  delete the token.
  ## Keyword parameters:
  """
  @spec delete_workspace_service_account_token(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, delete_workspace_service_account_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_workspace_service_account_token_errors()}
  def delete_workspace_service_account_token(
        %Client{} = client,
        service_account_id,
        token_id,
        workspace_id,
        options \\ []
      ) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/serviceaccounts/#{AWS.Util.encode_uri(service_account_id)}/tokens/#{AWS.Util.encode_uri(token_id)}"

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
      200
    )
  end

  @doc """
  Displays information about one Amazon Managed Grafana workspace.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=grafana%20DescribeWorkspace&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:workspace_id` (`t:string` required) The ID of the workspace to display
  information about.
  ## Keyword parameters:
  """
  @spec describe_workspace(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_workspace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_workspace_errors()}
  def describe_workspace(%Client{} = client, workspace_id, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}"

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
  Displays information about the authentication methods used in one Amazon Managed
  Grafana workspace.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=grafana%20DescribeWorkspaceAuthentication&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:workspace_id` (`t:string` required) The ID of the workspace to return
  authentication information about.
  ## Keyword parameters:
  """
  @spec describe_workspace_authentication(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_workspace_authentication_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_workspace_authentication_errors()}
  def describe_workspace_authentication(%Client{} = client, workspace_id, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/authentication"

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
  Gets the current configuration string for the given workspace.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=grafana%20DescribeWorkspaceConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:workspace_id` (`t:string` required) The ID of the workspace to get
  configuration information for.
  ## Keyword parameters:
  """
  @spec describe_workspace_configuration(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_workspace_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_workspace_configuration_errors()}
  def describe_workspace_configuration(%Client{} = client, workspace_id, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/configuration"

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
  Removes the Grafana Enterprise license from a workspace.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=grafana%20DisassociateLicense&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:license_type` (`t:string` required) The type of license to remove from the
  workspace.
  * `:workspace_id` (`t:string` required) The ID of the workspace to remove the
  Grafana Enterprise license from.
  ## Keyword parameters:
  """
  @spec disassociate_license(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, disassociate_license_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_license_errors()}
  def disassociate_license(%Client{} = client, license_type, workspace_id, options \\ []) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/licenses/#{AWS.Util.encode_uri(license_type)}"

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
      202
    )
  end

  @doc """
  Lists the users and groups who have the Grafana `Admin` and `Editor` roles in
  this workspace. If you use this operation without specifying `userId` or
  `groupId`, the operation returns the roles of all users and groups. If you
  specify a `userId` or a `groupId`, only the roles for that user or group are
  returned. If you do this, you can specify only one `userId` or one `groupId`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=grafana%20ListPermissions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:workspace_id` (`t:string` required) The ID of the workspace to list
  permissions for. This parameter is required.
  ## Keyword parameters:
  * `:group_id` (`t:string`) (Optional) Limits the results to only the group that
  matches this ID.
  * `:max_results` (`t:string`) The maximum number of results to include in the
  response.
  * `:next_token` (`t:string`) The token to use when requesting the next set of
  results. You received this token from a previous ListPermissions operation.
  * `:user_id` (`t:string`) (Optional) Limits the results to only the user that
  matches this ID.
  * `:user_type` (`t:string`) (Optional) If you specify SSO_USER, then only the
  permissions of IAM Identity Center users are returned. If you specify
  SSO_GROUP, only the permissions of IAM Identity Center groups are returned.
  """
  @spec list_permissions(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_permissions_errors()}
  def list_permissions(%Client{} = client, workspace_id, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/permissions"

    # Validate optional parameters
    optional_params = [
      group_id: nil,
      max_results: nil,
      next_token: nil,
      user_id: nil,
      user_type: nil
    ]

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
      if opt_val = Keyword.get(options, :user_type) do
        [{"userType", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :user_id) do
        [{"userId", opt_val} | query_params]
      else
        query_params
      end

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
      if opt_val = Keyword.get(options, :group_id) do
        [{"groupId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:group_id, :max_results, :next_token, :user_id, :user_type])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  The `ListTagsForResource` operation returns the tags that are associated with
  the Amazon Managed Service for Grafana resource specified by the
  `resourceArn`. Currently, the only resource that can be tagged is a workspace.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=grafana%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The ARN of the resource the list of tags
  are associated with.
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
  Lists available versions of Grafana. These are available when calling
  `CreateWorkspace`. Optionally, include a workspace to list the versions to
  which it can be upgraded.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=grafana%20ListVersions&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  * `:max_results` (`t:string`) The maximum number of results to include in the
  response.
  * `:next_token` (`t:string`) The token to use when requesting the next set of
  results. You receive this token from a previous ListVersions operation.
  * `:workspace_id` (`t:string`) The ID of the workspace to list the available
  upgrade versions. If not included, lists all versions of Grafana that are
  supported for CreateWorkspace.
  """
  @spec list_versions(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_versions_errors()}
  def list_versions(%Client{} = client, options \\ []) do
    url_path = "/versions"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, workspace_id: nil]

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
      if opt_val = Keyword.get(options, :workspace_id) do
        [{"workspace-id", opt_val} | query_params]
      else
        query_params
      end

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
      |> Keyword.drop([:max_results, :next_token, :workspace_id])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of tokens for a workspace service account. This does not return
  the key for each token. You cannot access keys after they are created. To
  create a new key, delete the token and recreate it.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=grafana%20ListWorkspaceServiceAccountTokens&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:service_account_id` (`t:string` required) The ID of the service account for
  which to return tokens.
  * `:workspace_id` (`t:string` required) The ID of the workspace for which to
  return tokens.
  ## Keyword parameters:
  * `:max_results` (`t:string`) The maximum number of tokens to include in the
  results.
  * `:next_token` (`t:string`) The token for the next set of service accounts to
  return. (You receive this token from a previous
  ListWorkspaceServiceAccountTokens operation.)
  """
  @spec list_workspace_service_account_tokens(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_workspace_service_account_tokens_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_workspace_service_account_tokens_errors()}
  def list_workspace_service_account_tokens(
        %Client{} = client,
        service_account_id,
        workspace_id,
        options \\ []
      ) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/serviceaccounts/#{AWS.Util.encode_uri(service_account_id)}/tokens"

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
  Returns a list of service accounts for a workspace.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=grafana%20ListWorkspaceServiceAccounts&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:workspace_id` (`t:string` required) The workspace for which to list service
  accounts.
  ## Keyword parameters:
  * `:max_results` (`t:string`) The maximum number of service accounts to include
  in the results.
  * `:next_token` (`t:string`) The token for the next set of service accounts to
  return. (You receive this token from a previous ListWorkspaceServiceAccounts
  operation.)
  """
  @spec list_workspace_service_accounts(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_workspace_service_accounts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_workspace_service_accounts_errors()}
  def list_workspace_service_accounts(%Client{} = client, workspace_id, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/serviceaccounts"

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
  Returns a list of Amazon Managed Grafana workspaces in the account, with some
  information about each workspace. For more complete information about one
  workspace, use
  [DescribeWorkspace](https://docs.aws.amazon.com/AAMG/latest/APIReference/API_DescribeWorkspace.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=grafana%20ListWorkspaces&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  * `:max_results` (`t:string`) The maximum number of workspaces to include in the
  results.
  * `:next_token` (`t:string`) The token for the next set of workspaces to return.
  (You receive this token from a previous ListWorkspaces operation.)
  """
  @spec list_workspaces(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_workspaces_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_workspaces_errors()}
  def list_workspaces(%Client{} = client, options \\ []) do
    url_path = "/workspaces"

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
  The `TagResource` operation associates tags with an Amazon Managed Grafana
  resource. Currently, the only resource that can be tagged is workspaces.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=grafana%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The ARN of the resource the tag is
  associated with.
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
  The `UntagResource` operation removes the association of the tag with the Amazon
  Managed Grafana resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=grafana%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The ARN of the resource the tag
  association is removed from.
  * `:tag_keys` (`t:list[com.amazonaws.grafana#TagKey]` required) The key values
  of the tag to be removed from the resource.
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
  Updates which users in a workspace have the Grafana `Admin` or `Editor` roles.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=grafana%20UpdatePermissions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:workspace_id` (`t:string` required) The ID of the workspace to update.
  ## Keyword parameters:
  """
  @spec update_permissions(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_permissions_errors()}
  def update_permissions(%Client{} = client, workspace_id, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/permissions"

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
      :patch,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Modifies an existing Amazon Managed Grafana workspace. If you use this operation
  and omit any optional parameters, the existing values of those parameters are
  not changed.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=grafana%20UpdateWorkspace&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:workspace_id` (`t:string` required) The ID of the workspace to update.
  ## Keyword parameters:
  """
  @spec update_workspace(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_workspace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_workspace_errors()}
  def update_workspace(%Client{} = client, workspace_id, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}"

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

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 202)
  end

  @doc """
  Use this operation to define the identity provider (IdP) that this workspace
  authenticates users from, using SAML. You can also map SAML assertion
  attributes to workspace user information and define which groups in the
  assertion attribute are to have the `Admin` and `Editor` roles in the
  workspace.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=grafana%20UpdateWorkspaceAuthentication&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:workspace_id` (`t:string` required) The ID of the workspace to update the
  authentication for.
  ## Keyword parameters:
  """
  @spec update_workspace_authentication(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_workspace_authentication_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_workspace_authentication_errors()}
  def update_workspace_authentication(%Client{} = client, workspace_id, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/authentication"

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
  Updates the configuration string for the given workspace

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=grafana%20UpdateWorkspaceConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:workspace_id` (`t:string` required) The ID of the workspace to update.
  ## Keyword parameters:
  """
  @spec update_workspace_configuration(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_workspace_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_workspace_configuration_errors()}
  def update_workspace_configuration(%Client{} = client, workspace_id, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/configuration"

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

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 202)
  end
end
