# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.WorkSpacesWeb do
  @moduledoc """
  Amazon WorkSpaces Secure Browser is a low cost, fully managed WorkSpace built
  specifically to facilitate secure, web-based workloads. WorkSpaces Secure
  Browser makes it easy for customers to safely provide their employees with
  access to internal websites and SaaS web applications without the
  administrative burden of appliances or specialized client software. WorkSpaces
  Secure Browser provides simple policy tools tailored for user interactions,
  while offloading common tasks like capacity management, scaling, and
  maintaining browser images.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      create_ip_access_settings_request() :: %{
        optional("additionalEncryptionContext") => map(),
        optional("clientToken") => String.t(),
        optional("customerManagedKey") => String.t(),
        optional("description") => String.t(),
        optional("displayName") => String.t(),
        optional("tags") => list(tag()()),
        required("ipRules") => list(ip_rule()())
      }
      
  """
  @type create_ip_access_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ip_rule() :: %{
        "description" => String.t(),
        "ipRange" => String.t()
      }
      
  """
  @type ip_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_browser_settings_response() :: %{
        "browserSettingsArn" => String.t()
      }
      
  """
  @type create_browser_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_trust_store_certificate_request() :: %{
        required("thumbprint") => String.t()
      }
      
  """
  @type get_trust_store_certificate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_ip_access_settings_response() :: %{
        "ipAccessSettingsArn" => String.t()
      }
      
  """
  @type create_ip_access_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ip_access_settings_summary() :: %{
        "creationDate" => non_neg_integer(),
        "description" => String.t(),
        "displayName" => String.t(),
        "ipAccessSettingsArn" => String.t()
      }
      
  """
  @type ip_access_settings_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_user_settings_response() :: %{
        "portalArn" => String.t(),
        "userSettingsArn" => String.t()
      }
      
  """
  @type associate_user_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cookie_synchronization_configuration() :: %{
        "allowlist" => list(cookie_specification()()),
        "blocklist" => list(cookie_specification()())
      }
      
  """
  @type cookie_synchronization_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        optional("clientToken") => String.t(),
        required("tags") => list(tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      trust_store_summary() :: %{
        "trustStoreArn" => String.t()
      }
      
  """
  @type trust_store_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_ip_access_settings_response() :: %{
        "ipAccessSettings" => list(ip_access_settings_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_ip_access_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_portal_request() :: %{}
      
  """
  @type get_portal_request() :: %{}

  @typedoc """

  ## Example:
      
      get_network_settings_request() :: %{}
      
  """
  @type get_network_settings_request() :: %{}

  @typedoc """

  ## Example:
      
      create_user_access_logging_settings_response() :: %{
        "userAccessLoggingSettingsArn" => String.t()
      }
      
  """
  @type create_user_access_logging_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_identity_providers_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_identity_providers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_portal_service_provider_metadata_request() :: %{}
      
  """
  @type get_portal_service_provider_metadata_request() :: %{}

  @typedoc """

  ## Example:
      
      list_trust_store_certificates_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_trust_store_certificates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_identity_provider_response() :: %{
        "identityProvider" => identity_provider()
      }
      
  """
  @type update_identity_provider_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_identity_provider_response() :: %{
        "identityProvider" => identity_provider()
      }
      
  """
  @type get_identity_provider_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_browser_settings_request() :: %{
        optional("browserPolicy") => String.t(),
        optional("clientToken") => String.t()
      }
      
  """
  @type update_browser_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_user_access_logging_settings_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_user_access_logging_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_network_settings_response() :: %{
        "networkSettings" => network_settings()
      }
      
  """
  @type update_network_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      create_network_settings_request() :: %{
        optional("clientToken") => String.t(),
        optional("tags") => list(tag()()),
        required("securityGroupIds") => list(String.t()()),
        required("subnetIds") => list(String.t()()),
        required("vpcId") => String.t()
      }
      
  """
  @type create_network_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_trust_store_request() :: %{}
      
  """
  @type get_trust_store_request() :: %{}

  @typedoc """

  ## Example:
      
      associate_trust_store_request() :: %{
        required("trustStoreArn") => String.t()
      }
      
  """
  @type associate_trust_store_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cookie_specification() :: %{
        "domain" => String.t(),
        "name" => String.t(),
        "path" => String.t()
      }
      
  """
  @type cookie_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_trust_store_response() :: %{}
      
  """
  @type disassociate_trust_store_response() :: %{}

  @typedoc """

  ## Example:
      
      associate_user_access_logging_settings_request() :: %{
        required("userAccessLoggingSettingsArn") => String.t()
      }
      
  """
  @type associate_user_access_logging_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_user_settings_request() :: %{
        required("userSettingsArn") => String.t()
      }
      
  """
  @type associate_user_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_identity_provider_response() :: %{
        "identityProviderArn" => String.t()
      }
      
  """
  @type create_identity_provider_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_browser_settings_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_browser_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_user_access_logging_settings_request() :: %{}
      
  """
  @type delete_user_access_logging_settings_request() :: %{}

  @typedoc """

  ## Example:
      
      create_portal_response() :: %{
        "portalArn" => String.t(),
        "portalEndpoint" => String.t()
      }
      
  """
  @type create_portal_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_ip_access_settings_response() :: %{
        "ipAccessSettingsArn" => String.t(),
        "portalArn" => String.t()
      }
      
  """
  @type associate_ip_access_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_user_settings_response() :: %{
        "nextToken" => String.t(),
        "userSettings" => list(user_settings_summary()())
      }
      
  """
  @type list_user_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_trust_store_response() :: %{
        "trustStore" => trust_store()
      }
      
  """
  @type get_trust_store_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_access_logging_settings() :: %{
        "associatedPortalArns" => list(String.t()()),
        "kinesisStreamArn" => String.t(),
        "userAccessLoggingSettingsArn" => String.t()
      }
      
  """
  @type user_access_logging_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_user_access_logging_settings_request() :: %{}
      
  """
  @type get_user_access_logging_settings_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_identity_provider_request() :: %{}
      
  """
  @type delete_identity_provider_request() :: %{}

  @typedoc """

  ## Example:
      
      disassociate_browser_settings_response() :: %{}
      
  """
  @type disassociate_browser_settings_response() :: %{}

  @typedoc """

  ## Example:
      
      list_ip_access_settings_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_ip_access_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_user_settings_response() :: %{
        "userSettings" => user_settings()
      }
      
  """
  @type get_user_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_ip_access_settings_response() :: %{
        "ipAccessSettings" => ip_access_settings()
      }
      
  """
  @type update_ip_access_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_trust_store_response() :: %{
        "portalArn" => String.t(),
        "trustStoreArn" => String.t()
      }
      
  """
  @type associate_trust_store_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_trust_store_request() :: %{
        optional("certificatesToAdd") => list(binary()()),
        optional("certificatesToDelete") => list(String.t()()),
        optional("clientToken") => String.t()
      }
      
  """
  @type update_trust_store_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_settings_summary() :: %{
        "cookieSynchronizationConfiguration" => cookie_synchronization_configuration(),
        "copyAllowed" => String.t(),
        "deepLinkAllowed" => String.t(),
        "disconnectTimeoutInMinutes" => integer(),
        "downloadAllowed" => String.t(),
        "idleDisconnectTimeoutInMinutes" => integer(),
        "pasteAllowed" => String.t(),
        "printAllowed" => String.t(),
        "uploadAllowed" => String.t(),
        "userSettingsArn" => String.t()
      }
      
  """
  @type user_settings_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_access_logging_settings_summary() :: %{
        "kinesisStreamArn" => String.t(),
        "userAccessLoggingSettingsArn" => String.t()
      }
      
  """
  @type user_access_logging_settings_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_user_settings_response() :: %{}
      
  """
  @type delete_user_settings_response() :: %{}

  @typedoc """

  ## Example:
      
      associate_network_settings_request() :: %{
        required("networkSettingsArn") => String.t()
      }
      
  """
  @type associate_network_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_browser_settings_request() :: %{
        required("browserSettingsArn") => String.t()
      }
      
  """
  @type associate_browser_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_trust_stores_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_trust_stores_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_trust_store_request() :: %{}
      
  """
  @type delete_trust_store_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_browser_settings_request() :: %{}
      
  """
  @type delete_browser_settings_request() :: %{}

  @typedoc """

  ## Example:
      
      certificate_summary() :: %{
        "issuer" => String.t(),
        "notValidAfter" => non_neg_integer(),
        "notValidBefore" => non_neg_integer(),
        "subject" => String.t(),
        "thumbprint" => String.t()
      }
      
  """
  @type certificate_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_browser_settings_request() :: %{}
      
  """
  @type get_browser_settings_request() :: %{}

  @typedoc """

  ## Example:
      
      get_ip_access_settings_response() :: %{
        "ipAccessSettings" => ip_access_settings()
      }
      
  """
  @type get_ip_access_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_settings() :: %{
        "associatedPortalArns" => list(String.t()()),
        "networkSettingsArn" => String.t(),
        "securityGroupIds" => list(String.t()()),
        "subnetIds" => list(String.t()()),
        "vpcId" => String.t()
      }
      
  """
  @type network_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_portals_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_portals_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_ip_access_settings_request() :: %{}
      
  """
  @type delete_ip_access_settings_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_portal_request() :: %{}
      
  """
  @type delete_portal_request() :: %{}

  @typedoc """

  ## Example:
      
      update_user_settings_response() :: %{
        "userSettings" => user_settings()
      }
      
  """
  @type update_user_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_trust_store_request() :: %{
        optional("clientToken") => String.t(),
        optional("tags") => list(tag()()),
        required("certificateList") => list(binary()())
      }
      
  """
  @type create_trust_store_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => String.t(),
        "resourceId" => String.t(),
        "resourceType" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t(),
        "resourceId" => String.t(),
        "resourceType" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_network_settings_response() :: %{
        "networkSettingsArn" => String.t(),
        "portalArn" => String.t()
      }
      
  """
  @type associate_network_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_user_access_logging_settings_request() :: %{
        optional("clientToken") => String.t(),
        optional("kinesisStreamArn") => String.t()
      }
      
  """
  @type update_user_access_logging_settings_request() :: %{String.t() => any()}

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
      
      get_user_settings_request() :: %{}
      
  """
  @type get_user_settings_request() :: %{}

  @typedoc """

  ## Example:
      
      create_network_settings_response() :: %{
        "networkSettingsArn" => String.t()
      }
      
  """
  @type create_network_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_browser_settings_request() :: %{
        optional("additionalEncryptionContext") => map(),
        optional("clientToken") => String.t(),
        optional("customerManagedKey") => String.t(),
        optional("tags") => list(tag()()),
        required("browserPolicy") => String.t()
      }
      
  """
  @type create_browser_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_network_settings_request() :: %{}
      
  """
  @type disassociate_network_settings_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_portal_response() :: %{}
      
  """
  @type delete_portal_response() :: %{}

  @typedoc """

  ## Example:
      
      list_network_settings_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_network_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_portal_request() :: %{
        optional("additionalEncryptionContext") => map(),
        optional("authenticationType") => String.t(),
        optional("clientToken") => String.t(),
        optional("customerManagedKey") => String.t(),
        optional("displayName") => String.t(),
        optional("instanceType") => String.t(),
        optional("maxConcurrentSessions") => integer(),
        optional("tags") => list(tag()())
      }
      
  """
  @type create_portal_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => String.t(),
        "quotaCode" => String.t(),
        "resourceId" => String.t(),
        "resourceType" => String.t(),
        "serviceCode" => String.t()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_network_settings_request() :: %{
        optional("clientToken") => String.t(),
        optional("securityGroupIds") => list(String.t()()),
        optional("subnetIds") => list(String.t()()),
        optional("vpcId") => String.t()
      }
      
  """
  @type update_network_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_portal_response() :: %{
        "portal" => portal()
      }
      
  """
  @type update_portal_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_network_settings_response() :: %{
        "networkSettings" => network_settings()
      }
      
  """
  @type get_network_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_user_settings_response() :: %{}
      
  """
  @type disassociate_user_settings_response() :: %{}

  @typedoc """

  ## Example:
      
      browser_settings_summary() :: %{
        "browserSettingsArn" => String.t()
      }
      
  """
  @type browser_settings_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_user_settings_response() :: %{
        "userSettingsArn" => String.t()
      }
      
  """
  @type create_user_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "tags" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_trust_stores_response() :: %{
        "nextToken" => String.t(),
        "trustStores" => list(trust_store_summary()())
      }
      
  """
  @type list_trust_stores_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_browser_settings_request() :: %{}
      
  """
  @type disassociate_browser_settings_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_network_settings_request() :: %{}
      
  """
  @type delete_network_settings_request() :: %{}

  @typedoc """

  ## Example:
      
      identity_provider_summary() :: %{
        "identityProviderArn" => String.t(),
        "identityProviderName" => String.t(),
        "identityProviderType" => String.t()
      }
      
  """
  @type identity_provider_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_ip_access_settings_request() :: %{
        required("ipAccessSettingsArn") => String.t()
      }
      
  """
  @type associate_ip_access_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception_field() :: %{
        "message" => String.t(),
        "name" => String.t()
      }
      
  """
  @type validation_exception_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_settings_summary() :: %{
        "networkSettingsArn" => String.t(),
        "vpcId" => String.t()
      }
      
  """
  @type network_settings_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_user_access_logging_settings_response() :: %{}
      
  """
  @type disassociate_user_access_logging_settings_response() :: %{}

  @typedoc """

  ## Example:
      
      get_portal_service_provider_metadata_response() :: %{
        "portalArn" => String.t(),
        "serviceProviderSamlMetadata" => String.t()
      }
      
  """
  @type get_portal_service_provider_metadata_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_user_settings_request() :: %{
        optional("clientToken") => String.t(),
        optional("cookieSynchronizationConfiguration") => cookie_synchronization_configuration(),
        optional("copyAllowed") => String.t(),
        optional("deepLinkAllowed") => String.t(),
        optional("disconnectTimeoutInMinutes") => integer(),
        optional("downloadAllowed") => String.t(),
        optional("idleDisconnectTimeoutInMinutes") => integer(),
        optional("pasteAllowed") => String.t(),
        optional("printAllowed") => String.t(),
        optional("uploadAllowed") => String.t()
      }
      
  """
  @type update_user_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_ip_access_settings_response() :: %{}
      
  """
  @type disassociate_ip_access_settings_response() :: %{}

  @typedoc """

  ## Example:
      
      list_network_settings_response() :: %{
        "networkSettings" => list(network_settings_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_network_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      identity_provider() :: %{
        "identityProviderArn" => String.t(),
        "identityProviderDetails" => map(),
        "identityProviderName" => String.t(),
        "identityProviderType" => String.t()
      }
      
  """
  @type identity_provider() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_ip_access_settings_response() :: %{}
      
  """
  @type delete_ip_access_settings_response() :: %{}

  @typedoc """

  ## Example:
      
      get_browser_settings_response() :: %{
        "browserSettings" => browser_settings()
      }
      
  """
  @type get_browser_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_trust_store_certificates_response() :: %{
        "certificateList" => list(certificate_summary()()),
        "nextToken" => String.t(),
        "trustStoreArn" => String.t()
      }
      
  """
  @type list_trust_store_certificates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_portals_response() :: %{
        "nextToken" => String.t(),
        "portals" => list(portal_summary()())
      }
      
  """
  @type list_portals_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => String.t(),
        "retryAfterSeconds" => integer()
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      certificate() :: %{
        "body" => binary(),
        "issuer" => String.t(),
        "notValidAfter" => non_neg_integer(),
        "notValidBefore" => non_neg_integer(),
        "subject" => String.t(),
        "thumbprint" => String.t()
      }
      
  """
  @type certificate() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_ip_access_settings_request() :: %{}
      
  """
  @type disassociate_ip_access_settings_request() :: %{}

  @typedoc """

  ## Example:
      
      get_trust_store_certificate_response() :: %{
        "certificate" => certificate(),
        "trustStoreArn" => String.t()
      }
      
  """
  @type get_trust_store_certificate_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_identity_provider_request() :: %{
        optional("clientToken") => String.t(),
        optional("tags") => list(tag()()),
        required("identityProviderDetails") => map(),
        required("identityProviderName") => String.t(),
        required("identityProviderType") => String.t(),
        required("portalArn") => String.t()
      }
      
  """
  @type create_identity_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_browser_settings_response() :: %{
        "browserSettings" => browser_settings()
      }
      
  """
  @type update_browser_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_network_settings_response() :: %{}
      
  """
  @type delete_network_settings_response() :: %{}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_trust_store_response() :: %{
        "trustStoreArn" => String.t()
      }
      
  """
  @type create_trust_store_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_identity_provider_response() :: %{}
      
  """
  @type delete_identity_provider_response() :: %{}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      create_user_settings_request() :: %{
        optional("additionalEncryptionContext") => map(),
        optional("clientToken") => String.t(),
        optional("cookieSynchronizationConfiguration") => cookie_synchronization_configuration(),
        optional("customerManagedKey") => String.t(),
        optional("deepLinkAllowed") => String.t(),
        optional("disconnectTimeoutInMinutes") => integer(),
        optional("idleDisconnectTimeoutInMinutes") => integer(),
        optional("tags") => list(tag()()),
        required("copyAllowed") => String.t(),
        required("downloadAllowed") => String.t(),
        required("pasteAllowed") => String.t(),
        required("printAllowed") => String.t(),
        required("uploadAllowed") => String.t()
      }
      
  """
  @type create_user_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_user_settings_request() :: %{}
      
  """
  @type delete_user_settings_request() :: %{}

  @typedoc """

  ## Example:
      
      update_portal_request() :: %{
        optional("authenticationType") => String.t(),
        optional("displayName") => String.t(),
        optional("instanceType") => String.t(),
        optional("maxConcurrentSessions") => integer()
      }
      
  """
  @type update_portal_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ip_access_settings() :: %{
        "additionalEncryptionContext" => map(),
        "associatedPortalArns" => list(String.t()()),
        "creationDate" => non_neg_integer(),
        "customerManagedKey" => String.t(),
        "description" => String.t(),
        "displayName" => String.t(),
        "ipAccessSettingsArn" => String.t(),
        "ipRules" => list(ip_rule()())
      }
      
  """
  @type ip_access_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()()),
        "message" => String.t(),
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
      
      get_ip_access_settings_request() :: %{}
      
  """
  @type get_ip_access_settings_request() :: %{}

  @typedoc """

  ## Example:
      
      list_identity_providers_response() :: %{
        "identityProviders" => list(identity_provider_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_identity_providers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_user_access_logging_settings_request() :: %{}
      
  """
  @type disassociate_user_access_logging_settings_request() :: %{}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => String.t(),
        "quotaCode" => String.t(),
        "retryAfterSeconds" => integer(),
        "serviceCode" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_browser_settings_response() :: %{
        "browserSettings" => list(browser_settings_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_browser_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_user_access_logging_settings_response() :: %{
        "portalArn" => String.t(),
        "userAccessLoggingSettingsArn" => String.t()
      }
      
  """
  @type associate_user_access_logging_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      portal_summary() :: %{
        "authenticationType" => String.t(),
        "browserSettingsArn" => String.t(),
        "browserType" => String.t(),
        "creationDate" => non_neg_integer(),
        "displayName" => String.t(),
        "instanceType" => String.t(),
        "ipAccessSettingsArn" => String.t(),
        "maxConcurrentSessions" => integer(),
        "networkSettingsArn" => String.t(),
        "portalArn" => String.t(),
        "portalEndpoint" => String.t(),
        "portalStatus" => String.t(),
        "rendererType" => String.t(),
        "trustStoreArn" => String.t(),
        "userAccessLoggingSettingsArn" => String.t(),
        "userSettingsArn" => String.t()
      }
      
  """
  @type portal_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_identity_provider_request() :: %{}
      
  """
  @type get_identity_provider_request() :: %{}

  @typedoc """

  ## Example:
      
      associate_browser_settings_response() :: %{
        "browserSettingsArn" => String.t(),
        "portalArn" => String.t()
      }
      
  """
  @type associate_browser_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_settings() :: %{
        "additionalEncryptionContext" => map(),
        "associatedPortalArns" => list(String.t()()),
        "cookieSynchronizationConfiguration" => cookie_synchronization_configuration(),
        "copyAllowed" => String.t(),
        "customerManagedKey" => String.t(),
        "deepLinkAllowed" => String.t(),
        "disconnectTimeoutInMinutes" => integer(),
        "downloadAllowed" => String.t(),
        "idleDisconnectTimeoutInMinutes" => integer(),
        "pasteAllowed" => String.t(),
        "printAllowed" => String.t(),
        "uploadAllowed" => String.t(),
        "userSettingsArn" => String.t()
      }
      
  """
  @type user_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_portal_response() :: %{
        "portal" => portal()
      }
      
  """
  @type get_portal_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_user_access_logging_settings_request() :: %{
        optional("clientToken") => String.t(),
        optional("tags") => list(tag()()),
        required("kinesisStreamArn") => String.t()
      }
      
  """
  @type create_user_access_logging_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_identity_provider_request() :: %{
        optional("clientToken") => String.t(),
        optional("identityProviderDetails") => map(),
        optional("identityProviderName") => String.t(),
        optional("identityProviderType") => String.t()
      }
      
  """
  @type update_identity_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_user_access_logging_settings_response() :: %{
        "nextToken" => String.t(),
        "userAccessLoggingSettings" => list(user_access_logging_settings_summary()())
      }
      
  """
  @type list_user_access_logging_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_user_settings_request() :: %{}
      
  """
  @type disassociate_user_settings_request() :: %{}

  @typedoc """

  ## Example:
      
      update_ip_access_settings_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("displayName") => String.t(),
        optional("ipRules") => list(ip_rule()())
      }
      
  """
  @type update_ip_access_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      browser_settings() :: %{
        "additionalEncryptionContext" => map(),
        "associatedPortalArns" => list(String.t()()),
        "browserPolicy" => String.t(),
        "browserSettingsArn" => String.t(),
        "customerManagedKey" => String.t()
      }
      
  """
  @type browser_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_user_access_logging_settings_response() :: %{
        "userAccessLoggingSettings" => user_access_logging_settings()
      }
      
  """
  @type update_user_access_logging_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_user_settings_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_user_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_tags_exception() :: %{
        "message" => String.t(),
        "resourceName" => String.t()
      }
      
  """
  @type too_many_tags_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_browser_settings_response() :: %{}
      
  """
  @type delete_browser_settings_response() :: %{}

  @typedoc """

  ## Example:
      
      disassociate_network_settings_response() :: %{}
      
  """
  @type disassociate_network_settings_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_user_access_logging_settings_response() :: %{}
      
  """
  @type delete_user_access_logging_settings_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_trust_store_response() :: %{}
      
  """
  @type delete_trust_store_response() :: %{}

  @typedoc """

  ## Example:
      
      get_user_access_logging_settings_response() :: %{
        "userAccessLoggingSettings" => user_access_logging_settings()
      }
      
  """
  @type get_user_access_logging_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      portal() :: %{
        "additionalEncryptionContext" => map(),
        "authenticationType" => String.t(),
        "browserSettingsArn" => String.t(),
        "browserType" => String.t(),
        "creationDate" => non_neg_integer(),
        "customerManagedKey" => String.t(),
        "displayName" => String.t(),
        "instanceType" => String.t(),
        "ipAccessSettingsArn" => String.t(),
        "maxConcurrentSessions" => integer(),
        "networkSettingsArn" => String.t(),
        "portalArn" => String.t(),
        "portalEndpoint" => String.t(),
        "portalStatus" => String.t(),
        "rendererType" => String.t(),
        "statusReason" => String.t(),
        "trustStoreArn" => String.t(),
        "userAccessLoggingSettingsArn" => String.t(),
        "userSettingsArn" => String.t()
      }
      
  """
  @type portal() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      trust_store() :: %{
        "associatedPortalArns" => list(String.t()()),
        "trustStoreArn" => String.t()
      }
      
  """
  @type trust_store() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_trust_store_response() :: %{
        "trustStoreArn" => String.t()
      }
      
  """
  @type update_trust_store_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_trust_store_request() :: %{}
      
  """
  @type disassociate_trust_store_request() :: %{}

  @type associate_browser_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type associate_ip_access_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type associate_network_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type associate_trust_store_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type associate_user_access_logging_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type associate_user_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_browser_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_identity_provider_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_ip_access_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_network_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_portal_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_trust_store_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_user_access_logging_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_user_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_browser_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_identity_provider_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_ip_access_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_network_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_portal_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_trust_store_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_user_access_logging_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_user_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type disassociate_browser_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_ip_access_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_network_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_trust_store_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_user_access_logging_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_user_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_browser_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_identity_provider_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_ip_access_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_network_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_portal_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_portal_service_provider_metadata_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_trust_store_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_trust_store_certificate_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_user_access_logging_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_user_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_browser_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_identity_providers_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_ip_access_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_network_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_portals_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_trust_store_certificates_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_trust_stores_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_user_access_logging_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_user_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type tag_resource_errors() ::
          too_many_tags_exception()
          | throttling_exception()
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

  @type update_browser_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_identity_provider_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_ip_access_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_network_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_portal_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_trust_store_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type update_user_access_logging_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_user_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2020-07-08",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "workspaces-web",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "WorkSpaces Web",
      signature_version: "v4",
      signing_name: "workspaces-web",
      target_prefix: nil
    }
  end

  @doc """
  Associates a browser settings resource with a web portal.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20AssociateBrowserSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:portal_arn` (`t:string` required) The ARN of the web portal.
  * `:browser_settings_arn` (`t:string` required) The ARN of the browser settings.
  """
  @spec associate_browser_settings(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, associate_browser_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_browser_settings_errors()}
  def associate_browser_settings(
        %Client{} = client,
        portal_arn,
        browser_settings_arn,
        options \\ []
      )
      when is_binary(browser_settings_arn) do
    url_path = "/portals/#{AWS.Util.encode_multi_segment_uri(portal_arn)}/browserSettings"

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
    query_params = [{"browserSettingsArn", browser_settings_arn}]

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Associates an IP access settings resource with a web portal.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20AssociateIpAccessSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:portal_arn` (`t:string` required) The ARN of the web portal.
  * `:ip_access_settings_arn` (`t:string` required) The ARN of the IP access
    settings.
  """
  @spec associate_ip_access_settings(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, associate_ip_access_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_ip_access_settings_errors()}
  def associate_ip_access_settings(
        %Client{} = client,
        portal_arn,
        ip_access_settings_arn,
        options \\ []
      )
      when is_binary(ip_access_settings_arn) do
    url_path = "/portals/#{AWS.Util.encode_multi_segment_uri(portal_arn)}/ipAccessSettings"

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
    query_params = [{"ipAccessSettingsArn", ip_access_settings_arn}]

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Associates a network settings resource with a web portal.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20AssociateNetworkSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:portal_arn` (`t:string` required) The ARN of the web portal.
  * `:network_settings_arn` (`t:string` required) The ARN of the network settings.
  """
  @spec associate_network_settings(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, associate_network_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_network_settings_errors()}
  def associate_network_settings(
        %Client{} = client,
        portal_arn,
        network_settings_arn,
        options \\ []
      )
      when is_binary(network_settings_arn) do
    url_path = "/portals/#{AWS.Util.encode_multi_segment_uri(portal_arn)}/networkSettings"

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
    query_params = [{"networkSettingsArn", network_settings_arn}]

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Associates a trust store with a web portal.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20AssociateTrustStore&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:portal_arn` (`t:string` required) The ARN of the web portal.
  * `:trust_store_arn` (`t:string` required) The ARN of the trust store.
  """
  @spec associate_trust_store(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, associate_trust_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_trust_store_errors()}
  def associate_trust_store(%Client{} = client, portal_arn, trust_store_arn, options \\ [])
      when is_binary(trust_store_arn) do
    url_path = "/portals/#{AWS.Util.encode_multi_segment_uri(portal_arn)}/trustStores"

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
    query_params = [{"trustStoreArn", trust_store_arn}]

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Associates a user access logging settings resource with a web portal.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20AssociateUserAccessLoggingSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:portal_arn` (`t:string` required) The ARN of the web portal.
  * `:user_access_logging_settings_arn` (`t:string` required) The ARN of the user
    access logging settings.
  """
  @spec associate_user_access_logging_settings(
          AWS.Client.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, associate_user_access_logging_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_user_access_logging_settings_errors()}
  def associate_user_access_logging_settings(
        %Client{} = client,
        portal_arn,
        user_access_logging_settings_arn,
        options \\ []
      )
      when is_binary(user_access_logging_settings_arn) do
    url_path =
      "/portals/#{AWS.Util.encode_multi_segment_uri(portal_arn)}/userAccessLoggingSettings"

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
    query_params = [{"userAccessLoggingSettingsArn", user_access_logging_settings_arn}]

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Associates a user settings resource with a web portal.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20AssociateUserSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:portal_arn` (`t:string` required) The ARN of the web portal.
  * `:user_settings_arn` (`t:string` required) The ARN of the user settings.
  """
  @spec associate_user_settings(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, associate_user_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_user_settings_errors()}
  def associate_user_settings(%Client{} = client, portal_arn, user_settings_arn, options \\ [])
      when is_binary(user_settings_arn) do
    url_path = "/portals/#{AWS.Util.encode_multi_segment_uri(portal_arn)}/userSettings"

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
    query_params = [{"userSettingsArn", user_settings_arn}]

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates a browser settings resource that can be associated with a web portal.
  Once associated with a web portal, browser settings control how the browser
  will behave once a user starts a streaming session for the web portal.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20CreateBrowserSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec create_browser_settings(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_browser_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_browser_settings_errors()}
  def create_browser_settings(%Client{} = client, options \\ []) do
    url_path = "/browserSettings"

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
  Creates an identity provider resource that is then associated with a web portal.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20CreateIdentityProvider&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec create_identity_provider(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_identity_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_identity_provider_errors()}
  def create_identity_provider(%Client{} = client, options \\ []) do
    url_path = "/identityProviders"

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
  Creates an IP access settings resource that can be associated with a web portal.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20CreateIpAccessSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec create_ip_access_settings(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_ip_access_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_ip_access_settings_errors()}
  def create_ip_access_settings(%Client{} = client, options \\ []) do
    url_path = "/ipAccessSettings"

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
  Creates a network settings resource that can be associated with a web portal.
  Once associated with a web portal, network settings define how streaming
  instances will connect with your specified VPC.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20CreateNetworkSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec create_network_settings(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_network_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_network_settings_errors()}
  def create_network_settings(%Client{} = client, options \\ []) do
    url_path = "/networkSettings"

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
  Creates a web portal.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20CreatePortal&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec create_portal(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_portal_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_portal_errors()}
  def create_portal(%Client{} = client, options \\ []) do
    url_path = "/portals"

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
  Creates a trust store that can be associated with a web portal. A trust store
  contains certificate authority (CA) certificates. Once associated with a web
  portal, the browser in a streaming session will recognize certificates that
  have been issued using any of the CAs in the trust store. If your organization
  has internal websites that use certificates issued by private CAs, you should
  add the private CA certificate to the trust store.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20CreateTrustStore&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec create_trust_store(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_trust_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_trust_store_errors()}
  def create_trust_store(%Client{} = client, options \\ []) do
    url_path = "/trustStores"

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
  Creates a user access logging settings resource that can be associated with a
  web portal.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20CreateUserAccessLoggingSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec create_user_access_logging_settings(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_user_access_logging_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_user_access_logging_settings_errors()}
  def create_user_access_logging_settings(%Client{} = client, options \\ []) do
    url_path = "/userAccessLoggingSettings"

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
  Creates a user settings resource that can be associated with a web portal. Once
  associated with a web portal, user settings control how users can transfer
  data between a streaming session and the their local devices.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20CreateUserSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec create_user_settings(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_user_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_user_settings_errors()}
  def create_user_settings(%Client{} = client, options \\ []) do
    url_path = "/userSettings"

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
  Deletes browser settings.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20DeleteBrowserSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:browser_settings_arn` (`t:string` required) The ARN of the browser settings.
  """
  @spec delete_browser_settings(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_browser_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_browser_settings_errors()}
  def delete_browser_settings(%Client{} = client, browser_settings_arn, options \\ []) do
    url_path = "/browserSettings/#{AWS.Util.encode_multi_segment_uri(browser_settings_arn)}"

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
  Deletes the identity provider.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20DeleteIdentityProvider&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:identity_provider_arn` (`t:string` required) The ARN of the identity
    provider.
  """
  @spec delete_identity_provider(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_identity_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_identity_provider_errors()}
  def delete_identity_provider(%Client{} = client, identity_provider_arn, options \\ []) do
    url_path = "/identityProviders/#{AWS.Util.encode_multi_segment_uri(identity_provider_arn)}"

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
  Deletes IP access settings.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20DeleteIpAccessSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:ip_access_settings_arn` (`t:string` required) The ARN of the IP access
    settings.
  """
  @spec delete_ip_access_settings(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_ip_access_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_ip_access_settings_errors()}
  def delete_ip_access_settings(%Client{} = client, ip_access_settings_arn, options \\ []) do
    url_path = "/ipAccessSettings/#{AWS.Util.encode_multi_segment_uri(ip_access_settings_arn)}"

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
  Deletes network settings.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20DeleteNetworkSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:network_settings_arn` (`t:string` required) The ARN of the network settings.
  """
  @spec delete_network_settings(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_network_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_network_settings_errors()}
  def delete_network_settings(%Client{} = client, network_settings_arn, options \\ []) do
    url_path = "/networkSettings/#{AWS.Util.encode_multi_segment_uri(network_settings_arn)}"

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
  Deletes a web portal.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20DeletePortal&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:portal_arn` (`t:string` required) The ARN of the web portal.
  """
  @spec delete_portal(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_portal_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_portal_errors()}
  def delete_portal(%Client{} = client, portal_arn, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_multi_segment_uri(portal_arn)}"

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
  Deletes the trust store.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20DeleteTrustStore&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:trust_store_arn` (`t:string` required) The ARN of the trust store.
  """
  @spec delete_trust_store(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_trust_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_trust_store_errors()}
  def delete_trust_store(%Client{} = client, trust_store_arn, options \\ []) do
    url_path = "/trustStores/#{AWS.Util.encode_multi_segment_uri(trust_store_arn)}"

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
  Deletes user access logging settings.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20DeleteUserAccessLoggingSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:user_access_logging_settings_arn` (`t:string` required) The ARN of the user
    access logging settings.
  """
  @spec delete_user_access_logging_settings(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_user_access_logging_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_user_access_logging_settings_errors()}
  def delete_user_access_logging_settings(
        %Client{} = client,
        user_access_logging_settings_arn,
        options \\ []
      ) do
    url_path =
      "/userAccessLoggingSettings/#{AWS.Util.encode_multi_segment_uri(user_access_logging_settings_arn)}"

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
  Deletes user settings.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20DeleteUserSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:user_settings_arn` (`t:string` required) The ARN of the user settings.
  """
  @spec delete_user_settings(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_user_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_user_settings_errors()}
  def delete_user_settings(%Client{} = client, user_settings_arn, options \\ []) do
    url_path = "/userSettings/#{AWS.Util.encode_multi_segment_uri(user_settings_arn)}"

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
  Disassociates browser settings from a web portal.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20DisassociateBrowserSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:portal_arn` (`t:string` required) The ARN of the web portal.
  """
  @spec disassociate_browser_settings(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, disassociate_browser_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_browser_settings_errors()}
  def disassociate_browser_settings(%Client{} = client, portal_arn, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_multi_segment_uri(portal_arn)}/browserSettings"

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
  Disassociates IP access settings from a web portal.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20DisassociateIpAccessSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:portal_arn` (`t:string` required) The ARN of the web portal.
  """
  @spec disassociate_ip_access_settings(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, disassociate_ip_access_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_ip_access_settings_errors()}
  def disassociate_ip_access_settings(%Client{} = client, portal_arn, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_multi_segment_uri(portal_arn)}/ipAccessSettings"

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
  Disassociates network settings from a web portal.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20DisassociateNetworkSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:portal_arn` (`t:string` required) The ARN of the web portal.
  """
  @spec disassociate_network_settings(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, disassociate_network_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_network_settings_errors()}
  def disassociate_network_settings(%Client{} = client, portal_arn, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_multi_segment_uri(portal_arn)}/networkSettings"

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
  Disassociates a trust store from a web portal.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20DisassociateTrustStore&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:portal_arn` (`t:string` required) The ARN of the web portal.
  """
  @spec disassociate_trust_store(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, disassociate_trust_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_trust_store_errors()}
  def disassociate_trust_store(%Client{} = client, portal_arn, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_multi_segment_uri(portal_arn)}/trustStores"

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
  Disassociates user access logging settings from a web portal.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20DisassociateUserAccessLoggingSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:portal_arn` (`t:string` required) The ARN of the web portal.
  """
  @spec disassociate_user_access_logging_settings(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, disassociate_user_access_logging_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_user_access_logging_settings_errors()}
  def disassociate_user_access_logging_settings(%Client{} = client, portal_arn, options \\ []) do
    url_path =
      "/portals/#{AWS.Util.encode_multi_segment_uri(portal_arn)}/userAccessLoggingSettings"

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
  Disassociates user settings from a web portal.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20DisassociateUserSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:portal_arn` (`t:string` required) The ARN of the web portal.
  """
  @spec disassociate_user_settings(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, disassociate_user_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_user_settings_errors()}
  def disassociate_user_settings(%Client{} = client, portal_arn, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_multi_segment_uri(portal_arn)}/userSettings"

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
  Gets browser settings.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20GetBrowserSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:browser_settings_arn` (`t:string` required) The ARN of the browser settings.
  """
  @spec get_browser_settings(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_browser_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_browser_settings_errors()}
  def get_browser_settings(%Client{} = client, browser_settings_arn, options \\ []) do
    url_path = "/browserSettings/#{AWS.Util.encode_multi_segment_uri(browser_settings_arn)}"

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
  Gets the identity provider.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20GetIdentityProvider&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:identity_provider_arn` (`t:string` required) The ARN of the identity
    provider.
  """
  @spec get_identity_provider(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_identity_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_identity_provider_errors()}
  def get_identity_provider(%Client{} = client, identity_provider_arn, options \\ []) do
    url_path = "/identityProviders/#{AWS.Util.encode_multi_segment_uri(identity_provider_arn)}"

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
  Gets the IP access settings.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20GetIpAccessSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:ip_access_settings_arn` (`t:string` required) The ARN of the IP access
    settings.
  """
  @spec get_ip_access_settings(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_ip_access_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_ip_access_settings_errors()}
  def get_ip_access_settings(%Client{} = client, ip_access_settings_arn, options \\ []) do
    url_path = "/ipAccessSettings/#{AWS.Util.encode_multi_segment_uri(ip_access_settings_arn)}"

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
  Gets the network settings.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20GetNetworkSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:network_settings_arn` (`t:string` required) The ARN of the network settings.
  """
  @spec get_network_settings(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_network_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_network_settings_errors()}
  def get_network_settings(%Client{} = client, network_settings_arn, options \\ []) do
    url_path = "/networkSettings/#{AWS.Util.encode_multi_segment_uri(network_settings_arn)}"

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
  Gets the web portal.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20GetPortal&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:portal_arn` (`t:string` required) The ARN of the web portal.
  """
  @spec get_portal(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_portal_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_portal_errors()}
  def get_portal(%Client{} = client, portal_arn, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_multi_segment_uri(portal_arn)}"

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
  Gets the service provider metadata.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20GetPortalServiceProviderMetadata&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:portal_arn` (`t:string` required) The ARN of the web portal.
  """
  @spec get_portal_service_provider_metadata(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_portal_service_provider_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_portal_service_provider_metadata_errors()}
  def get_portal_service_provider_metadata(%Client{} = client, portal_arn, options \\ []) do
    url_path = "/portalIdp/#{AWS.Util.encode_multi_segment_uri(portal_arn)}"

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
  Gets the trust store.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20GetTrustStore&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:trust_store_arn` (`t:string` required) The ARN of the trust store.
  """
  @spec get_trust_store(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_trust_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_trust_store_errors()}
  def get_trust_store(%Client{} = client, trust_store_arn, options \\ []) do
    url_path = "/trustStores/#{AWS.Util.encode_multi_segment_uri(trust_store_arn)}"

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
  Gets the trust store certificate.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20GetTrustStoreCertificate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:trust_store_arn` (`t:string` required) The ARN of the trust store
    certificate.
  * `:thumbprint` (`t:string` required) The thumbprint of the trust store
    certificate.
  """
  @spec get_trust_store_certificate(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_trust_store_certificate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_trust_store_certificate_errors()}
  def get_trust_store_certificate(%Client{} = client, trust_store_arn, thumbprint, options \\ [])
      when is_binary(thumbprint) do
    url_path = "/trustStores/#{AWS.Util.encode_multi_segment_uri(trust_store_arn)}/certificate"

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
    query_params = [{"thumbprint", thumbprint}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets user access logging settings.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20GetUserAccessLoggingSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:user_access_logging_settings_arn` (`t:string` required) The ARN of the user
    access logging settings.
  """
  @spec get_user_access_logging_settings(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_user_access_logging_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_user_access_logging_settings_errors()}
  def get_user_access_logging_settings(
        %Client{} = client,
        user_access_logging_settings_arn,
        options \\ []
      ) do
    url_path =
      "/userAccessLoggingSettings/#{AWS.Util.encode_multi_segment_uri(user_access_logging_settings_arn)}"

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
  Gets user settings.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20GetUserSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:user_settings_arn` (`t:string` required) The ARN of the user settings.
  """
  @spec get_user_settings(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_user_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_user_settings_errors()}
  def get_user_settings(%Client{} = client, user_settings_arn, options \\ []) do
    url_path = "/userSettings/#{AWS.Util.encode_multi_segment_uri(user_settings_arn)}"

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
  Retrieves a list of browser settings.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20ListBrowserSettings&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to be included in
    the next page.
  * `:next_token` (`t:string`) The pagination token used to retrieve the next page
    of results for this operation.
  """
  @spec list_browser_settings(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_browser_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_browser_settings_errors()}
  def list_browser_settings(%Client{} = client, options \\ []) do
    url_path = "/browserSettings"

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
  Retrieves a list of identity providers for a specific web portal.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20ListIdentityProviders&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:portal_arn` (`t:string` required) The ARN of the web portal.

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to be included in
    the next page.
  * `:next_token` (`t:string`) The pagination token used to retrieve the next page
    of results for this operation.
  """
  @spec list_identity_providers(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_identity_providers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_identity_providers_errors()}
  def list_identity_providers(%Client{} = client, portal_arn, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_multi_segment_uri(portal_arn)}/identityProviders"

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
  Retrieves a list of IP access settings.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20ListIpAccessSettings&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to be included in
    the next page.
  * `:next_token` (`t:string`) The pagination token used to retrieve the next page
    of results for this operation.
  """
  @spec list_ip_access_settings(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_ip_access_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_ip_access_settings_errors()}
  def list_ip_access_settings(%Client{} = client, options \\ []) do
    url_path = "/ipAccessSettings"

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
  Retrieves a list of network settings.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20ListNetworkSettings&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to be included in
    the next page.
  * `:next_token` (`t:string`) The pagination token used to retrieve the next page
    of results for this operation.
  """
  @spec list_network_settings(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_network_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_network_settings_errors()}
  def list_network_settings(%Client{} = client, options \\ []) do
    url_path = "/networkSettings"

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
  Retrieves a list or web portals.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20ListPortals&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to be included in
    the next page.
  * `:next_token` (`t:string`) The pagination token used to retrieve the next page
    of results for this operation.
  """
  @spec list_portals(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_portals_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_portals_errors()}
  def list_portals(%Client{} = client, options \\ []) do
    url_path = "/portals"

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
  Retrieves a list of tags for a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The ARN of the resource.
  """
  @spec list_tags_for_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_multi_segment_uri(resource_arn)}"

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
  Retrieves a list of trust store certificates.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20ListTrustStoreCertificates&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:trust_store_arn` (`t:string` required) The ARN of the trust store

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to be included in
    the next page.
  * `:next_token` (`t:string`) The pagination token used to retrieve the next page
    of results for this operation.
  """
  @spec list_trust_store_certificates(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_trust_store_certificates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_trust_store_certificates_errors()}
  def list_trust_store_certificates(%Client{} = client, trust_store_arn, options \\ []) do
    url_path = "/trustStores/#{AWS.Util.encode_multi_segment_uri(trust_store_arn)}/certificates"

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
  Retrieves a list of trust stores.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20ListTrustStores&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to be included in
    the next page.
  * `:next_token` (`t:string`) The pagination token used to retrieve the next page
    of results for this operation.
  """
  @spec list_trust_stores(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_trust_stores_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_trust_stores_errors()}
  def list_trust_stores(%Client{} = client, options \\ []) do
    url_path = "/trustStores"

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
  Retrieves a list of user access logging settings.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20ListUserAccessLoggingSettings&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to be included in
    the next page.
  * `:next_token` (`t:string`) The pagination token used to retrieve the next page
    of results for this operation.
  """
  @spec list_user_access_logging_settings(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_user_access_logging_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_user_access_logging_settings_errors()}
  def list_user_access_logging_settings(%Client{} = client, options \\ []) do
    url_path = "/userAccessLoggingSettings"

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
  Retrieves a list of user settings.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20ListUserSettings&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to be included in
    the next page.
  * `:next_token` (`t:string`) The pagination token used to retrieve the next page
    of results for this operation.
  """
  @spec list_user_settings(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_user_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_user_settings_errors()}
  def list_user_settings(%Client{} = client, options \\ []) do
    url_path = "/userSettings"

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
  Adds or overwrites one or more tags for the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The ARN of the resource.
  """
  @spec tag_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_multi_segment_uri(resource_arn)}"

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
  Removes one or more tags from the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The ARN of the resource.
  * `:tag_keys` (`t:list[com.amazonaws.workspacesweb#TagKey]` required) The list
    of tag keys to remove from the resource.
  """
  @spec untag_resource(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, tag_keys, options \\ [])
      when is_binary(tag_keys) do
    url_path = "/tags/#{AWS.Util.encode_multi_segment_uri(resource_arn)}"

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
  Updates browser settings.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20UpdateBrowserSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:browser_settings_arn` (`t:string` required) The ARN of the browser settings.
  """
  @spec update_browser_settings(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_browser_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_browser_settings_errors()}
  def update_browser_settings(%Client{} = client, browser_settings_arn, options \\ []) do
    url_path = "/browserSettings/#{AWS.Util.encode_multi_segment_uri(browser_settings_arn)}"

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
  Updates the identity provider.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20UpdateIdentityProvider&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:identity_provider_arn` (`t:string` required) The ARN of the identity
    provider.
  """
  @spec update_identity_provider(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_identity_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_identity_provider_errors()}
  def update_identity_provider(%Client{} = client, identity_provider_arn, options \\ []) do
    url_path = "/identityProviders/#{AWS.Util.encode_multi_segment_uri(identity_provider_arn)}"

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
  Updates IP access settings.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20UpdateIpAccessSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:ip_access_settings_arn` (`t:string` required) The ARN of the IP access
    settings.
  """
  @spec update_ip_access_settings(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_ip_access_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_ip_access_settings_errors()}
  def update_ip_access_settings(%Client{} = client, ip_access_settings_arn, options \\ []) do
    url_path = "/ipAccessSettings/#{AWS.Util.encode_multi_segment_uri(ip_access_settings_arn)}"

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
  Updates network settings.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20UpdateNetworkSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:network_settings_arn` (`t:string` required) The ARN of the network settings.
  """
  @spec update_network_settings(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_network_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_network_settings_errors()}
  def update_network_settings(%Client{} = client, network_settings_arn, options \\ []) do
    url_path = "/networkSettings/#{AWS.Util.encode_multi_segment_uri(network_settings_arn)}"

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
  Updates a web portal.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20UpdatePortal&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:portal_arn` (`t:string` required) The ARN of the web portal.
  """
  @spec update_portal(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_portal_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_portal_errors()}
  def update_portal(%Client{} = client, portal_arn, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_multi_segment_uri(portal_arn)}"

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
  Updates the trust store.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20UpdateTrustStore&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:trust_store_arn` (`t:string` required) The ARN of the trust store.
  """
  @spec update_trust_store(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_trust_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_trust_store_errors()}
  def update_trust_store(%Client{} = client, trust_store_arn, options \\ []) do
    url_path = "/trustStores/#{AWS.Util.encode_multi_segment_uri(trust_store_arn)}"

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
  Updates the user access logging settings.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20UpdateUserAccessLoggingSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:user_access_logging_settings_arn` (`t:string` required) The ARN of the user
    access logging settings.
  """
  @spec update_user_access_logging_settings(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_user_access_logging_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_user_access_logging_settings_errors()}
  def update_user_access_logging_settings(
        %Client{} = client,
        user_access_logging_settings_arn,
        options \\ []
      ) do
    url_path =
      "/userAccessLoggingSettings/#{AWS.Util.encode_multi_segment_uri(user_access_logging_settings_arn)}"

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
  Updates the user settings.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workspacesweb%20UpdateUserSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:user_settings_arn` (`t:string` required) The ARN of the user settings.
  """
  @spec update_user_settings(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_user_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_user_settings_errors()}
  def update_user_settings(%Client{} = client, user_settings_arn, options \\ []) do
    url_path = "/userSettings/#{AWS.Util.encode_multi_segment_uri(user_settings_arn)}"

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
end
