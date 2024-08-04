# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.WorkMail do
  @moduledoc """
  WorkMail is a secure, managed business email and calendaring service with
  support for existing desktop and mobile email clients. You can access your
  email, contacts, and calendars using Microsoft Outlook, your browser, or other
  native iOS and Android email applications. You can integrate WorkMail with
  your existing corporate directory and control both the keys that encrypt your
  data and the location in which your data is stored. The WorkMail API is
  designed for the following scenarios:
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      mobile_device_access_rule() :: %{
        "DateCreated" => non_neg_integer(),
        "DateModified" => non_neg_integer(),
        "Description" => String.t(),
        "DeviceModels" => list(String.t()()),
        "DeviceOperatingSystems" => list(String.t()()),
        "DeviceTypes" => list(String.t()()),
        "DeviceUserAgents" => list(String.t()()),
        "Effect" => list(any()),
        "MobileDeviceAccessRuleId" => String.t(),
        "Name" => String.t(),
        "NotDeviceModels" => list(String.t()()),
        "NotDeviceOperatingSystems" => list(String.t()()),
        "NotDeviceTypes" => list(String.t()()),
        "NotDeviceUserAgents" => list(String.t()())
      }
      
  """
  @type mobile_device_access_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_aliases_response() :: %{
        "Aliases" => list(String.t()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_aliases_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_mobile_device_access_rule_response() :: %{}
      
  """
  @type update_mobile_device_access_rule_response() :: %{}

  @typedoc """

  ## Example:
      
      cancel_mailbox_export_job_request() :: %{
        required("ClientToken") => String.t(),
        required("JobId") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type cancel_mailbox_export_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_access_control_effect_response() :: %{
        "Effect" => list(any()),
        "MatchedRules" => list(String.t()())
      }
      
  """
  @type get_access_control_effect_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_aliases_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("EntityId") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type list_aliases_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_mobile_device_access_override_response() :: %{}
      
  """
  @type put_mobile_device_access_override_response() :: %{}

  @typedoc """

  ## Example:
      
      put_email_monitoring_configuration_request() :: %{
        required("LogGroupArn") => String.t(),
        required("OrganizationId") => String.t(),
        required("RoleArn") => String.t()
      }
      
  """
  @type put_email_monitoring_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_mobile_device_access_overrides_response() :: %{
        "NextToken" => String.t(),
        "Overrides" => list(mobile_device_access_override()())
      }
      
  """
  @type list_mobile_device_access_overrides_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_mailbox_details_response() :: %{
        "MailboxQuota" => integer(),
        "MailboxSize" => float()
      }
      
  """
  @type get_mailbox_details_response() :: %{String.t() => any()}

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
      
      list_organizations_response() :: %{
        "NextToken" => String.t(),
        "OrganizationSummaries" => list(organization_summary()())
      }
      
  """
  @type list_organizations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_mobile_device_access_effect_request() :: %{
        optional("DeviceModel") => String.t(),
        optional("DeviceOperatingSystem") => String.t(),
        optional("DeviceType") => String.t(),
        optional("DeviceUserAgent") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type get_mobile_device_access_effect_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_delegate_from_resource_request() :: %{
        required("EntityId") => String.t(),
        required("OrganizationId") => String.t(),
        required("ResourceId") => String.t()
      }
      
  """
  @type disassociate_delegate_from_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      entity_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type entity_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_group_members_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("GroupId") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type list_group_members_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_member_to_group_response() :: %{}
      
  """
  @type associate_member_to_group_response() :: %{}

  @typedoc """

  ## Example:
      
      list_resources_response() :: %{
        "NextToken" => String.t(),
        "Resources" => list(resource()())
      }
      
  """
  @type list_resources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_resource_response() :: %{
        "BookingOptions" => booking_options(),
        "Description" => String.t(),
        "DisabledDate" => non_neg_integer(),
        "Email" => String.t(),
        "EnabledDate" => non_neg_integer(),
        "HiddenFromGlobalAddressList" => boolean(),
        "Name" => String.t(),
        "ResourceId" => String.t(),
        "State" => list(any()),
        "Type" => list(any())
      }
      
  """
  @type describe_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_operation_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type unsupported_operation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_groups_for_entity_request() :: %{
        optional("Filters") => list_groups_for_entity_filters(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("EntityId") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type list_groups_for_entity_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_mail_domain_response() :: %{}
      
  """
  @type deregister_mail_domain_response() :: %{}

  @typedoc """

  ## Example:
      
      entity_state_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type entity_state_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test_availability_configuration_request() :: %{
        optional("DomainName") => String.t(),
        optional("EwsProvider") => ews_availability_provider(),
        optional("LambdaProvider") => lambda_availability_provider(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type test_availability_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_delegate_to_resource_request() :: %{
        required("EntityId") => String.t(),
        required("OrganizationId") => String.t(),
        required("ResourceId") => String.t()
      }
      
  """
  @type associate_delegate_to_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_mobile_device_access_rule_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Description") => String.t(),
        optional("DeviceModels") => list(String.t()()),
        optional("DeviceOperatingSystems") => list(String.t()()),
        optional("DeviceTypes") => list(String.t()()),
        optional("DeviceUserAgents") => list(String.t()()),
        optional("NotDeviceModels") => list(String.t()()),
        optional("NotDeviceOperatingSystems") => list(String.t()()),
        optional("NotDeviceTypes") => list(String.t()()),
        optional("NotDeviceUserAgents") => list(String.t()()),
        required("Effect") => list(any()),
        required("Name") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type create_mobile_device_access_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_resource_request() :: %{
        required("OrganizationId") => String.t(),
        required("ResourceId") => String.t()
      }
      
  """
  @type delete_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_availability_configurations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type list_availability_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_user_response() :: %{}
      
  """
  @type update_user_response() :: %{}

  @typedoc """

  ## Example:
      
      update_resource_request() :: %{
        optional("BookingOptions") => booking_options(),
        optional("Description") => String.t(),
        optional("HiddenFromGlobalAddressList") => boolean(),
        optional("Name") => String.t(),
        optional("Type") => list(any()),
        required("OrganizationId") => String.t(),
        required("ResourceId") => String.t()
      }
      
  """
  @type update_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_access_control_effect_request() :: %{
        optional("ImpersonationRoleId") => String.t(),
        optional("UserId") => String.t(),
        required("Action") => String.t(),
        required("IpAddress") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type get_access_control_effect_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      list_impersonation_roles_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type list_impersonation_roles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_alias_request() :: %{
        required("Alias") => String.t(),
        required("EntityId") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type create_alias_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_from_work_mail_response() :: %{}
      
  """
  @type deregister_from_work_mail_response() :: %{}

  @typedoc """

  ## Example:
      
      update_primary_email_address_request() :: %{
        required("Email") => String.t(),
        required("EntityId") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type update_primary_email_address_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_mobile_device_access_overrides_request() :: %{
        optional("DeviceId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("UserId") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type list_mobile_device_access_overrides_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_retention_policy_response() :: %{}
      
  """
  @type put_retention_policy_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_mobile_device_access_override_request() :: %{
        required("DeviceId") => String.t(),
        required("OrganizationId") => String.t(),
        required("UserId") => String.t()
      }
      
  """
  @type delete_mobile_device_access_override_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_mobile_device_access_override_request() :: %{
        required("DeviceId") => String.t(),
        required("OrganizationId") => String.t(),
        required("UserId") => String.t()
      }
      
  """
  @type get_mobile_device_access_override_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_mail_domain_response() :: %{
        "DkimVerificationStatus" => list(any()),
        "IsDefault" => boolean(),
        "IsTestDomain" => boolean(),
        "OwnershipVerificationStatus" => list(any()),
        "Records" => list(dns_record()())
      }
      
  """
  @type get_mail_domain_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_mailbox_export_jobs_response() :: %{
        "Jobs" => list(mailbox_export_job()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_mailbox_export_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_access_control_rules_request() :: %{
        required("OrganizationId") => String.t()
      }
      
  """
  @type list_access_control_rules_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_state_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type organization_state_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_users_filters() :: %{
        "DisplayNamePrefix" => String.t(),
        "PrimaryEmailPrefix" => String.t(),
        "State" => list(any()),
        "UsernamePrefix" => String.t()
      }
      
  """
  @type list_users_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_control_rule() :: %{
        "Actions" => list(String.t()()),
        "DateCreated" => non_neg_integer(),
        "DateModified" => non_neg_integer(),
        "Description" => String.t(),
        "Effect" => list(any()),
        "ImpersonationRoleIds" => list(String.t()()),
        "IpRanges" => list(String.t()()),
        "Name" => String.t(),
        "NotActions" => list(String.t()()),
        "NotImpersonationRoleIds" => list(String.t()()),
        "NotIpRanges" => list(String.t()()),
        "NotUserIds" => list(String.t()()),
        "UserIds" => list(String.t()())
      }
      
  """
  @type access_control_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      domain() :: %{
        "DomainName" => String.t(),
        "HostedZoneId" => String.t()
      }
      
  """
  @type domain() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_primary_email_address_response() :: %{}
      
  """
  @type update_primary_email_address_response() :: %{}

  @typedoc """

  ## Example:
      
      create_mobile_device_access_rule_response() :: %{
        "MobileDeviceAccessRuleId" => String.t()
      }
      
  """
  @type create_mobile_device_access_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_email_monitoring_configuration_response() :: %{}
      
  """
  @type delete_email_monitoring_configuration_response() :: %{}

  @typedoc """

  ## Example:
      
      update_default_mail_domain_response() :: %{}
      
  """
  @type update_default_mail_domain_response() :: %{}

  @typedoc """

  ## Example:
      
      assume_impersonation_role_response() :: %{
        "ExpiresIn" => float(),
        "Token" => String.t()
      }
      
  """
  @type assume_impersonation_role_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_retention_policy_request() :: %{
        optional("Description") => String.t(),
        optional("Id") => String.t(),
        required("FolderConfigurations") => list(folder_configuration()()),
        required("Name") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type put_retention_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      mail_domain_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type mail_domain_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_mail_domains_response() :: %{
        "MailDomains" => list(mail_domain_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_mail_domains_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_mobile_device_access_rules_response() :: %{
        "Rules" => list(mobile_device_access_rule()())
      }
      
  """
  @type list_mobile_device_access_rules_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_resource_delegates_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("OrganizationId") => String.t(),
        required("ResourceId") => String.t()
      }
      
  """
  @type list_resource_delegates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ews_availability_provider() :: %{
        "EwsEndpoint" => String.t(),
        "EwsPassword" => String.t(),
        "EwsUsername" => String.t()
      }
      
  """
  @type ews_availability_provider() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_alias_response() :: %{}
      
  """
  @type create_alias_response() :: %{}

  @typedoc """

  ## Example:
      
      describe_entity_response() :: %{
        "EntityId" => String.t(),
        "Name" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type describe_entity_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_groups_filters() :: %{
        "NamePrefix" => String.t(),
        "PrimaryEmailPrefix" => String.t(),
        "State" => list(any())
      }
      
  """
  @type list_groups_filters() :: %{String.t() => any()}

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
      
      list_resource_delegates_response() :: %{
        "Delegates" => list(delegate()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_resource_delegates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_default_retention_policy_request() :: %{
        required("OrganizationId") => String.t()
      }
      
  """
  @type get_default_retention_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_from_work_mail_request() :: %{
        required("EntityId") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type deregister_from_work_mail_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      group_identifier() :: %{
        "GroupId" => String.t(),
        "GroupName" => String.t()
      }
      
  """
  @type group_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_availability_configuration_request() :: %{
        optional("ClientToken") => String.t(),
        optional("EwsProvider") => ews_availability_provider(),
        optional("LambdaProvider") => lambda_availability_provider(),
        required("DomainName") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type create_availability_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_delegate_from_resource_response() :: %{}
      
  """
  @type disassociate_delegate_from_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      create_impersonation_role_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Description") => String.t(),
        required("Name") => String.t(),
        required("OrganizationId") => String.t(),
        required("Rules") => list(impersonation_rule()()),
        required("Type") => list(any())
      }
      
  """
  @type create_impersonation_role_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_group_request() :: %{
        optional("HiddenFromGlobalAddressList") => boolean(),
        required("GroupId") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type update_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_resource_response() :: %{}
      
  """
  @type delete_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      register_to_work_mail_response() :: %{}
      
  """
  @type register_to_work_mail_response() :: %{}

  @typedoc """

  ## Example:
      
      associate_delegate_to_resource_response() :: %{}
      
  """
  @type associate_delegate_to_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      booking_options() :: %{
        "AutoAcceptRequests" => boolean(),
        "AutoDeclineConflictingRequests" => boolean(),
        "AutoDeclineRecurringRequests" => boolean()
      }
      
  """
  @type booking_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_impersonation_role_effect_request() :: %{
        required("ImpersonationRoleId") => String.t(),
        required("OrganizationId") => String.t(),
        required("TargetUser") => String.t()
      }
      
  """
  @type get_impersonation_role_effect_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_impersonation_role_response() :: %{}
      
  """
  @type delete_impersonation_role_response() :: %{}

  @typedoc """

  ## Example:
      
      get_mailbox_details_request() :: %{
        required("OrganizationId") => String.t(),
        required("UserId") => String.t()
      }
      
  """
  @type get_mailbox_details_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_retention_policy_request() :: %{
        required("Id") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type delete_retention_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      name_availability_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type name_availability_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_availability_configuration_response() :: %{}
      
  """
  @type create_availability_configuration_response() :: %{}

  @typedoc """

  ## Example:
      
      put_inbound_dmarc_settings_request() :: %{
        required("Enforced") => boolean(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type put_inbound_dmarc_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lambda_availability_provider() :: %{
        "LambdaArn" => String.t()
      }
      
  """
  @type lambda_availability_provider() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test_availability_configuration_response() :: %{
        "FailureReason" => String.t(),
        "TestPassed" => boolean()
      }
      
  """
  @type test_availability_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      mail_domain_state_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type mail_domain_state_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_inbound_dmarc_settings_response() :: %{
        "Enforced" => boolean()
      }
      
  """
  @type describe_inbound_dmarc_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_mailbox_export_job_response() :: %{}
      
  """
  @type cancel_mailbox_export_job_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_availability_configuration_response() :: %{}
      
  """
  @type delete_availability_configuration_response() :: %{}

  @typedoc """

  ## Example:
      
      list_groups_for_entity_filters() :: %{
        "GroupNamePrefix" => String.t()
      }
      
  """
  @type list_groups_for_entity_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_mail_domain_request() :: %{
        required("DomainName") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type get_mail_domain_request() :: %{String.t() => any()}

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
      
      reset_password_response() :: %{}
      
  """
  @type reset_password_response() :: %{}

  @typedoc """

  ## Example:
      
      organization_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type organization_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_resource_response() :: %{}
      
  """
  @type update_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_access_control_rule_response() :: %{}
      
  """
  @type delete_access_control_rule_response() :: %{}

  @typedoc """

  ## Example:
      
      list_mailbox_permissions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("EntityId") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type list_mailbox_permissions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_mailbox_permissions_request() :: %{
        required("EntityId") => String.t(),
        required("GranteeId") => String.t(),
        required("OrganizationId") => String.t(),
        required("PermissionValues") => list(list(any())())
      }
      
  """
  @type put_mailbox_permissions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_mobile_device_access_override_response() :: %{
        "DateCreated" => non_neg_integer(),
        "DateModified" => non_neg_integer(),
        "Description" => String.t(),
        "DeviceId" => String.t(),
        "Effect" => list(any()),
        "UserId" => String.t()
      }
      
  """
  @type get_mobile_device_access_override_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_mobile_device_access_rule_response() :: %{}
      
  """
  @type delete_mobile_device_access_rule_response() :: %{}

  @typedoc """

  ## Example:
      
      disassociate_member_from_group_response() :: %{}
      
  """
  @type disassociate_member_from_group_response() :: %{}

  @typedoc """

  ## Example:
      
      list_impersonation_roles_response() :: %{
        "NextToken" => String.t(),
        "Roles" => list(impersonation_role()())
      }
      
  """
  @type list_impersonation_roles_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      mail_domain_summary() :: %{
        "DefaultDomain" => boolean(),
        "DomainName" => String.t()
      }
      
  """
  @type mail_domain_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_users_response() :: %{
        "NextToken" => String.t(),
        "Users" => list(user()())
      }
      
  """
  @type list_users_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_impersonation_role_effect_response() :: %{
        "Effect" => list(any()),
        "MatchedRules" => list(impersonation_matched_rule()()),
        "Type" => list(any())
      }
      
  """
  @type get_impersonation_role_effect_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_organization_response() :: %{
        "OrganizationId" => String.t(),
        "State" => String.t()
      }
      
  """
  @type delete_organization_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_mailbox_export_job_request() :: %{
        required("JobId") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type describe_mailbox_export_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_member_from_group_request() :: %{
        required("GroupId") => String.t(),
        required("MemberId") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type disassociate_member_from_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      availability_configuration() :: %{
        "DateCreated" => non_neg_integer(),
        "DateModified" => non_neg_integer(),
        "DomainName" => String.t(),
        "EwsProvider" => redacted_ews_availability_provider(),
        "LambdaProvider" => lambda_availability_provider(),
        "ProviderType" => list(any())
      }
      
  """
  @type availability_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_availability_configuration_request() :: %{
        optional("EwsProvider") => ews_availability_provider(),
        optional("LambdaProvider") => lambda_availability_provider(),
        required("DomainName") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type update_availability_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_availability_configuration_response() :: %{}
      
  """
  @type update_availability_configuration_response() :: %{}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      mail_domain_in_use_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type mail_domain_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_default_mail_domain_request() :: %{
        required("DomainName") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type update_default_mail_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_group_request() :: %{
        optional("HiddenFromGlobalAddressList") => boolean(),
        required("Name") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type create_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_impersonation_role_response() :: %{}
      
  """
  @type update_impersonation_role_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_impersonation_role_request() :: %{
        required("ImpersonationRoleId") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type delete_impersonation_role_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_mail_domain_response() :: %{}
      
  """
  @type register_mail_domain_response() :: %{}

  @typedoc """

  ## Example:
      
      mobile_device_access_override() :: %{
        "DateCreated" => non_neg_integer(),
        "DateModified" => non_neg_integer(),
        "Description" => String.t(),
        "DeviceId" => String.t(),
        "Effect" => list(any()),
        "UserId" => String.t()
      }
      
  """
  @type mobile_device_access_override() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_resource_request() :: %{
        optional("Description") => String.t(),
        optional("HiddenFromGlobalAddressList") => boolean(),
        required("Name") => String.t(),
        required("OrganizationId") => String.t(),
        required("Type") => list(any())
      }
      
  """
  @type create_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_groups_for_entity_response() :: %{
        "Groups" => list(group_identifier()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_groups_for_entity_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_summary() :: %{
        "Alias" => String.t(),
        "DefaultMailDomain" => String.t(),
        "ErrorMessage" => String.t(),
        "OrganizationId" => String.t(),
        "State" => String.t()
      }
      
  """
  @type organization_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_user_request() :: %{
        required("OrganizationId") => String.t(),
        required("UserId") => String.t()
      }
      
  """
  @type delete_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_mailbox_export_jobs_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type list_mailbox_export_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_organization_response() :: %{
        "ARN" => String.t(),
        "Alias" => String.t(),
        "CompletedDate" => non_neg_integer(),
        "DefaultMailDomain" => String.t(),
        "DirectoryId" => String.t(),
        "DirectoryType" => String.t(),
        "ErrorMessage" => String.t(),
        "InteroperabilityEnabled" => boolean(),
        "MigrationAdmin" => String.t(),
        "OrganizationId" => String.t(),
        "State" => String.t()
      }
      
  """
  @type describe_organization_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_to_work_mail_request() :: %{
        required("Email") => String.t(),
        required("EntityId") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type register_to_work_mail_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_user_response() :: %{}
      
  """
  @type delete_user_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_mailbox_permissions_response() :: %{}
      
  """
  @type delete_mailbox_permissions_response() :: %{}

  @typedoc """

  ## Example:
      
      get_impersonation_role_request() :: %{
        required("ImpersonationRoleId") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type get_impersonation_role_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_mobile_device_access_override_request() :: %{
        optional("Description") => String.t(),
        required("DeviceId") => String.t(),
        required("Effect") => list(any()),
        required("OrganizationId") => String.t(),
        required("UserId") => String.t()
      }
      
  """
  @type put_mobile_device_access_override_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_mailbox_export_job_response() :: %{
        "Description" => String.t(),
        "EndTime" => non_neg_integer(),
        "EntityId" => String.t(),
        "ErrorInfo" => String.t(),
        "EstimatedProgress" => integer(),
        "KmsKeyArn" => String.t(),
        "RoleArn" => String.t(),
        "S3BucketName" => String.t(),
        "S3Path" => String.t(),
        "S3Prefix" => String.t(),
        "StartTime" => non_neg_integer(),
        "State" => list(any())
      }
      
  """
  @type describe_mailbox_export_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_user_response() :: %{
        "City" => String.t(),
        "Company" => String.t(),
        "Country" => String.t(),
        "Department" => String.t(),
        "DisabledDate" => non_neg_integer(),
        "DisplayName" => String.t(),
        "Email" => String.t(),
        "EnabledDate" => non_neg_integer(),
        "FirstName" => String.t(),
        "HiddenFromGlobalAddressList" => boolean(),
        "Initials" => String.t(),
        "JobTitle" => String.t(),
        "LastName" => String.t(),
        "MailboxDeprovisionedDate" => non_neg_integer(),
        "MailboxProvisionedDate" => non_neg_integer(),
        "Name" => String.t(),
        "Office" => String.t(),
        "State" => list(any()),
        "Street" => String.t(),
        "Telephone" => String.t(),
        "UserId" => String.t(),
        "UserRole" => list(any()),
        "ZipCode" => String.t()
      }
      
  """
  @type describe_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_access_control_rule_response() :: %{}
      
  """
  @type put_access_control_rule_response() :: %{}

  @typedoc """

  ## Example:
      
      impersonation_role() :: %{
        "DateCreated" => non_neg_integer(),
        "DateModified" => non_neg_integer(),
        "ImpersonationRoleId" => String.t(),
        "Name" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type impersonation_role() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_entity_request() :: %{
        required("Email") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type describe_entity_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reset_password_request() :: %{
        required("OrganizationId") => String.t(),
        required("Password") => String.t(),
        required("UserId") => String.t()
      }
      
  """
  @type reset_password_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_access_control_rule_request() :: %{
        optional("Actions") => list(String.t()()),
        optional("ImpersonationRoleIds") => list(String.t()()),
        optional("IpRanges") => list(String.t()()),
        optional("NotActions") => list(String.t()()),
        optional("NotImpersonationRoleIds") => list(String.t()()),
        optional("NotIpRanges") => list(String.t()()),
        optional("NotUserIds") => list(String.t()()),
        optional("UserIds") => list(String.t()()),
        required("Description") => String.t(),
        required("Effect") => list(any()),
        required("Name") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type put_access_control_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      impersonation_matched_rule() :: %{
        "ImpersonationRuleId" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type impersonation_matched_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      mobile_device_access_matched_rule() :: %{
        "MobileDeviceAccessRuleId" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type mobile_device_access_matched_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      impersonation_rule() :: %{
        "Description" => String.t(),
        "Effect" => list(any()),
        "ImpersonationRuleId" => String.t(),
        "Name" => String.t(),
        "NotTargetUsers" => list(String.t()()),
        "TargetUsers" => list(String.t()())
      }
      
  """
  @type impersonation_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dns_record() :: %{
        "Hostname" => String.t(),
        "Type" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type dns_record() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_organization_request() :: %{
        required("OrganizationId") => String.t()
      }
      
  """
  @type describe_organization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_mailbox_quota_request() :: %{
        required("MailboxQuota") => integer(),
        required("OrganizationId") => String.t(),
        required("UserId") => String.t()
      }
      
  """
  @type update_mailbox_quota_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_mobile_device_access_rules_request() :: %{
        required("OrganizationId") => String.t()
      }
      
  """
  @type list_mobile_device_access_rules_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_email_monitoring_configuration_request() :: %{
        required("OrganizationId") => String.t()
      }
      
  """
  @type delete_email_monitoring_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_configuration_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_configuration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_mail_domain_request() :: %{
        optional("ClientToken") => String.t(),
        required("DomainName") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type register_mail_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_retention_policy_response() :: %{}
      
  """
  @type delete_retention_policy_response() :: %{}

  @typedoc """

  ## Example:
      
      list_availability_configurations_response() :: %{
        "AvailabilityConfigurations" => list(availability_configuration()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_availability_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_group_response() :: %{}
      
  """
  @type delete_group_response() :: %{}

  @typedoc """

  ## Example:
      
      invalid_parameter_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_resource_response() :: %{
        "ResourceId" => String.t()
      }
      
  """
  @type create_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_email_monitoring_configuration_request() :: %{
        required("OrganizationId") => String.t()
      }
      
  """
  @type describe_email_monitoring_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      update_impersonation_role_request() :: %{
        optional("Description") => String.t(),
        required("ImpersonationRoleId") => String.t(),
        required("Name") => String.t(),
        required("OrganizationId") => String.t(),
        required("Rules") => list(impersonation_rule()()),
        required("Type") => list(any())
      }
      
  """
  @type update_impersonation_role_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_user_request() :: %{
        required("OrganizationId") => String.t(),
        required("UserId") => String.t()
      }
      
  """
  @type describe_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_access_control_rules_response() :: %{
        "Rules" => list(access_control_rule()())
      }
      
  """
  @type list_access_control_rules_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_inbound_dmarc_settings_response() :: %{}
      
  """
  @type put_inbound_dmarc_settings_response() :: %{}

  @typedoc """

  ## Example:
      
      update_user_request() :: %{
        optional("City") => String.t(),
        optional("Company") => String.t(),
        optional("Country") => String.t(),
        optional("Department") => String.t(),
        optional("DisplayName") => String.t(),
        optional("FirstName") => String.t(),
        optional("HiddenFromGlobalAddressList") => boolean(),
        optional("Initials") => String.t(),
        optional("JobTitle") => String.t(),
        optional("LastName") => String.t(),
        optional("Office") => String.t(),
        optional("Role") => list(any()),
        optional("Street") => String.t(),
        optional("Telephone") => String.t(),
        optional("ZipCode") => String.t(),
        required("OrganizationId") => String.t(),
        required("UserId") => String.t()
      }
      
  """
  @type update_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      redacted_ews_availability_provider() :: %{
        "EwsEndpoint" => String.t(),
        "EwsUsername" => String.t()
      }
      
  """
  @type redacted_ews_availability_provider() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      directory_unavailable_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type directory_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_availability_configuration_request() :: %{
        required("DomainName") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type delete_availability_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_email_monitoring_configuration_response() :: %{
        "LogGroupArn" => String.t(),
        "RoleArn" => String.t()
      }
      
  """
  @type describe_email_monitoring_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceARN") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_mailbox_permissions_response() :: %{}
      
  """
  @type put_mailbox_permissions_response() :: %{}

  @typedoc """

  ## Example:
      
      entity_already_registered_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type entity_already_registered_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      email_address_in_use_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type email_address_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_organization_response() :: %{
        "OrganizationId" => String.t()
      }
      
  """
  @type create_organization_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_mailbox_permissions_request() :: %{
        required("EntityId") => String.t(),
        required("GranteeId") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type delete_mailbox_permissions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      directory_in_use_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type directory_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_mailbox_permissions_response() :: %{
        "NextToken" => String.t(),
        "Permissions" => list(permission()())
      }
      
  """
  @type list_mailbox_permissions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_mailbox_quota_response() :: %{}
      
  """
  @type update_mailbox_quota_response() :: %{}

  @typedoc """

  ## Example:
      
      group() :: %{
        "DisabledDate" => non_neg_integer(),
        "Email" => String.t(),
        "EnabledDate" => non_neg_integer(),
        "Id" => String.t(),
        "Name" => String.t(),
        "State" => list(any())
      }
      
  """
  @type group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_custom_ses_configuration_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_custom_ses_configuration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user() :: %{
        "DisabledDate" => non_neg_integer(),
        "DisplayName" => String.t(),
        "Email" => String.t(),
        "EnabledDate" => non_neg_integer(),
        "Id" => String.t(),
        "Name" => String.t(),
        "State" => list(any()),
        "UserRole" => list(any())
      }
      
  """
  @type user() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_group_request() :: %{
        required("GroupId") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type describe_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_group_request() :: %{
        required("GroupId") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type delete_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_organizations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_organizations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_resource_request() :: %{
        required("OrganizationId") => String.t(),
        required("ResourceId") => String.t()
      }
      
  """
  @type describe_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_mobile_device_access_override_response() :: %{}
      
  """
  @type delete_mobile_device_access_override_response() :: %{}

  @typedoc """

  ## Example:
      
      member() :: %{
        "DisabledDate" => non_neg_integer(),
        "EnabledDate" => non_neg_integer(),
        "Id" => String.t(),
        "Name" => String.t(),
        "State" => list(any()),
        "Type" => list(any())
      }
      
  """
  @type member() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_users_request() :: %{
        optional("Filters") => list_users_filters(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type list_users_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delegate() :: %{
        "Id" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type delegate() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_resources_request() :: %{
        optional("Filters") => list_resources_filters(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type list_resources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_mailbox_export_job_request() :: %{
        optional("Description") => String.t(),
        required("ClientToken") => String.t(),
        required("EntityId") => String.t(),
        required("KmsKeyArn") => String.t(),
        required("OrganizationId") => String.t(),
        required("RoleArn") => String.t(),
        required("S3BucketName") => String.t(),
        required("S3Prefix") => String.t()
      }
      
  """
  @type start_mailbox_export_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_mobile_device_access_rule_request() :: %{
        optional("Description") => String.t(),
        optional("DeviceModels") => list(String.t()()),
        optional("DeviceOperatingSystems") => list(String.t()()),
        optional("DeviceTypes") => list(String.t()()),
        optional("DeviceUserAgents") => list(String.t()()),
        optional("NotDeviceModels") => list(String.t()()),
        optional("NotDeviceOperatingSystems") => list(String.t()()),
        optional("NotDeviceTypes") => list(String.t()()),
        optional("NotDeviceUserAgents") => list(String.t()()),
        required("Effect") => list(any()),
        required("MobileDeviceAccessRuleId") => String.t(),
        required("Name") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type update_mobile_device_access_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_organization_request() :: %{
        optional("ClientToken") => String.t(),
        optional("ForceDelete") => boolean(),
        required("DeleteDirectory") => boolean(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type delete_organization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_mobile_device_access_effect_response() :: %{
        "Effect" => list(any()),
        "MatchedRules" => list(mobile_device_access_matched_rule()())
      }
      
  """
  @type get_mobile_device_access_effect_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_group_response() :: %{
        "DisabledDate" => non_neg_integer(),
        "Email" => String.t(),
        "EnabledDate" => non_neg_integer(),
        "GroupId" => String.t(),
        "HiddenFromGlobalAddressList" => boolean(),
        "Name" => String.t(),
        "State" => list(any())
      }
      
  """
  @type describe_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      assume_impersonation_role_request() :: %{
        required("ImpersonationRoleId") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type assume_impersonation_role_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_access_control_rule_request() :: %{
        required("Name") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type delete_access_control_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_member_to_group_request() :: %{
        required("GroupId") => String.t(),
        required("MemberId") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type associate_member_to_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_default_retention_policy_response() :: %{
        "Description" => String.t(),
        "FolderConfigurations" => list(folder_configuration()()),
        "Id" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type get_default_retention_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      mailbox_export_job() :: %{
        "Description" => String.t(),
        "EndTime" => non_neg_integer(),
        "EntityId" => String.t(),
        "EstimatedProgress" => integer(),
        "JobId" => String.t(),
        "S3BucketName" => String.t(),
        "S3Path" => String.t(),
        "StartTime" => non_neg_integer(),
        "State" => list(any())
      }
      
  """
  @type mailbox_export_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_groups_response() :: %{
        "Groups" => list(group()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_mail_domains_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type list_mail_domains_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_inbound_dmarc_settings_request() :: %{
        required("OrganizationId") => String.t()
      }
      
  """
  @type describe_inbound_dmarc_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_alias_response() :: %{}
      
  """
  @type delete_alias_response() :: %{}

  @typedoc """

  ## Example:
      
      deregister_mail_domain_request() :: %{
        required("DomainName") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type deregister_mail_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reserved_name_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type reserved_name_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_groups_request() :: %{
        optional("Filters") => list_groups_filters(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type list_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      directory_service_authentication_failed_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type directory_service_authentication_failed_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_mailbox_export_job_response() :: %{
        "JobId" => String.t()
      }
      
  """
  @type start_mailbox_export_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_resources_filters() :: %{
        "NamePrefix" => String.t(),
        "PrimaryEmailPrefix" => String.t(),
        "State" => list(any())
      }
      
  """
  @type list_resources_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_user_response() :: %{
        "UserId" => String.t()
      }
      
  """
  @type create_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_password_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_password_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      folder_configuration() :: %{
        "Action" => list(any()),
        "Name" => list(any()),
        "Period" => integer()
      }
      
  """
  @type folder_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_group_response() :: %{}
      
  """
  @type update_group_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_mobile_device_access_rule_request() :: %{
        required("MobileDeviceAccessRuleId") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type delete_mobile_device_access_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_impersonation_role_response() :: %{
        "ImpersonationRoleId" => String.t()
      }
      
  """
  @type create_impersonation_role_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      permission() :: %{
        "GranteeId" => String.t(),
        "GranteeType" => list(any()),
        "PermissionValues" => list(list(any())())
      }
      
  """
  @type permission() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_impersonation_role_response() :: %{
        "DateCreated" => non_neg_integer(),
        "DateModified" => non_neg_integer(),
        "Description" => String.t(),
        "ImpersonationRoleId" => String.t(),
        "Name" => String.t(),
        "Rules" => list(impersonation_rule()()),
        "Type" => list(any())
      }
      
  """
  @type get_impersonation_role_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_group_response() :: %{
        "GroupId" => String.t()
      }
      
  """
  @type create_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_tags_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type too_many_tags_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_alias_request() :: %{
        required("Alias") => String.t(),
        required("EntityId") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type delete_alias_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_group_members_response() :: %{
        "Members" => list(member()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_group_members_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_email_monitoring_configuration_response() :: %{}
      
  """
  @type put_email_monitoring_configuration_response() :: %{}

  @typedoc """

  ## Example:
      
      create_user_request() :: %{
        optional("FirstName") => String.t(),
        optional("HiddenFromGlobalAddressList") => boolean(),
        optional("LastName") => String.t(),
        optional("Password") => String.t(),
        optional("Role") => list(any()),
        required("DisplayName") => String.t(),
        required("Name") => String.t(),
        required("OrganizationId") => String.t()
      }
      
  """
  @type create_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_organization_request() :: %{
        optional("ClientToken") => String.t(),
        optional("DirectoryId") => String.t(),
        optional("Domains") => list(domain()()),
        optional("EnableInteroperability") => boolean(),
        optional("KmsKeyArn") => String.t(),
        required("Alias") => String.t()
      }
      
  """
  @type create_organization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource() :: %{
        "Description" => String.t(),
        "DisabledDate" => non_neg_integer(),
        "Email" => String.t(),
        "EnabledDate" => non_neg_integer(),
        "Id" => String.t(),
        "Name" => String.t(),
        "State" => list(any()),
        "Type" => list(any())
      }
      
  """
  @type resource() :: %{String.t() => any()}

  @type associate_delegate_to_resource_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()
          | entity_state_exception()
          | unsupported_operation_exception()
          | entity_not_found_exception()

  @type associate_member_to_group_errors() ::
          directory_service_authentication_failed_exception()
          | directory_unavailable_exception()
          | invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()
          | entity_state_exception()
          | unsupported_operation_exception()
          | entity_not_found_exception()

  @type assume_impersonation_role_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | resource_not_found_exception()
          | organization_state_exception()

  @type cancel_mailbox_export_job_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()
          | entity_not_found_exception()

  @type create_alias_errors() ::
          limit_exceeded_exception()
          | email_address_in_use_exception()
          | invalid_parameter_exception()
          | organization_not_found_exception()
          | mail_domain_state_exception()
          | mail_domain_not_found_exception()
          | organization_state_exception()
          | entity_state_exception()
          | entity_not_found_exception()

  @type create_availability_configuration_errors() ::
          limit_exceeded_exception()
          | invalid_parameter_exception()
          | organization_not_found_exception()
          | name_availability_exception()
          | organization_state_exception()

  @type create_group_errors() ::
          directory_service_authentication_failed_exception()
          | reserved_name_exception()
          | directory_unavailable_exception()
          | invalid_parameter_exception()
          | organization_not_found_exception()
          | name_availability_exception()
          | organization_state_exception()
          | unsupported_operation_exception()

  @type create_impersonation_role_errors() ::
          limit_exceeded_exception()
          | invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()
          | entity_state_exception()
          | entity_not_found_exception()

  @type create_mobile_device_access_rule_errors() ::
          limit_exceeded_exception()
          | invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()

  @type create_organization_errors() ::
          limit_exceeded_exception()
          | directory_in_use_exception()
          | directory_unavailable_exception()
          | invalid_parameter_exception()
          | name_availability_exception()

  @type create_resource_errors() ::
          directory_service_authentication_failed_exception()
          | reserved_name_exception()
          | directory_unavailable_exception()
          | invalid_parameter_exception()
          | organization_not_found_exception()
          | name_availability_exception()
          | organization_state_exception()
          | unsupported_operation_exception()

  @type create_user_errors() ::
          invalid_password_exception()
          | directory_service_authentication_failed_exception()
          | reserved_name_exception()
          | directory_unavailable_exception()
          | invalid_parameter_exception()
          | organization_not_found_exception()
          | name_availability_exception()
          | organization_state_exception()
          | unsupported_operation_exception()

  @type delete_access_control_rule_errors() ::
          organization_not_found_exception() | organization_state_exception()

  @type delete_alias_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()
          | entity_state_exception()
          | entity_not_found_exception()

  @type delete_availability_configuration_errors() ::
          organization_not_found_exception() | organization_state_exception()

  @type delete_email_monitoring_configuration_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()

  @type delete_group_errors() ::
          directory_service_authentication_failed_exception()
          | directory_unavailable_exception()
          | invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()
          | entity_state_exception()
          | unsupported_operation_exception()

  @type delete_impersonation_role_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()

  @type delete_mailbox_permissions_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()
          | entity_state_exception()
          | entity_not_found_exception()

  @type delete_mobile_device_access_override_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()
          | entity_not_found_exception()

  @type delete_mobile_device_access_rule_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()

  @type delete_organization_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()

  @type delete_resource_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()
          | entity_state_exception()
          | unsupported_operation_exception()

  @type delete_retention_policy_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()

  @type delete_user_errors() ::
          directory_service_authentication_failed_exception()
          | directory_unavailable_exception()
          | invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()
          | entity_state_exception()
          | unsupported_operation_exception()

  @type deregister_from_work_mail_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()
          | entity_state_exception()
          | entity_not_found_exception()

  @type deregister_mail_domain_errors() ::
          invalid_custom_ses_configuration_exception()
          | invalid_parameter_exception()
          | mail_domain_in_use_exception()
          | organization_not_found_exception()
          | organization_state_exception()

  @type describe_email_monitoring_configuration_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | resource_not_found_exception()
          | organization_state_exception()

  @type describe_entity_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()
          | entity_not_found_exception()

  @type describe_group_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()
          | entity_not_found_exception()

  @type describe_inbound_dmarc_settings_errors() ::
          organization_not_found_exception() | organization_state_exception()

  @type describe_mailbox_export_job_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()
          | entity_not_found_exception()

  @type describe_organization_errors() ::
          invalid_parameter_exception() | organization_not_found_exception()

  @type describe_resource_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()
          | unsupported_operation_exception()
          | entity_not_found_exception()

  @type describe_user_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()
          | entity_not_found_exception()

  @type disassociate_delegate_from_resource_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()
          | entity_state_exception()
          | unsupported_operation_exception()
          | entity_not_found_exception()

  @type disassociate_member_from_group_errors() ::
          directory_service_authentication_failed_exception()
          | directory_unavailable_exception()
          | invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()
          | entity_state_exception()
          | unsupported_operation_exception()
          | entity_not_found_exception()

  @type get_access_control_effect_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | resource_not_found_exception()
          | organization_state_exception()
          | entity_not_found_exception()

  @type get_default_retention_policy_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()
          | entity_not_found_exception()

  @type get_impersonation_role_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | resource_not_found_exception()
          | organization_state_exception()

  @type get_impersonation_role_effect_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | resource_not_found_exception()
          | organization_state_exception()
          | entity_state_exception()
          | entity_not_found_exception()

  @type get_mail_domain_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | mail_domain_not_found_exception()
          | organization_state_exception()

  @type get_mailbox_details_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()
          | entity_not_found_exception()

  @type get_mobile_device_access_effect_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()

  @type get_mobile_device_access_override_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | resource_not_found_exception()
          | organization_state_exception()
          | entity_not_found_exception()

  @type list_access_control_rules_errors() ::
          organization_not_found_exception() | organization_state_exception()

  @type list_aliases_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()
          | entity_state_exception()
          | entity_not_found_exception()

  @type list_availability_configurations_errors() ::
          organization_not_found_exception() | organization_state_exception()

  @type list_group_members_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()
          | entity_state_exception()
          | entity_not_found_exception()

  @type list_groups_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()
          | entity_not_found_exception()

  @type list_groups_for_entity_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()
          | entity_state_exception()
          | entity_not_found_exception()

  @type list_impersonation_roles_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()

  @type list_mail_domains_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()

  @type list_mailbox_export_jobs_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()

  @type list_mailbox_permissions_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()
          | entity_not_found_exception()

  @type list_mobile_device_access_overrides_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()
          | entity_not_found_exception()

  @type list_mobile_device_access_rules_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()

  @type list_organizations_errors() :: invalid_parameter_exception()

  @type list_resource_delegates_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()
          | entity_state_exception()
          | unsupported_operation_exception()
          | entity_not_found_exception()

  @type list_resources_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()
          | unsupported_operation_exception()

  @type list_tags_for_resource_errors() :: resource_not_found_exception()

  @type list_users_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()

  @type put_access_control_rule_errors() ::
          limit_exceeded_exception()
          | invalid_parameter_exception()
          | organization_not_found_exception()
          | resource_not_found_exception()
          | organization_state_exception()
          | entity_not_found_exception()

  @type put_email_monitoring_configuration_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | resource_not_found_exception()
          | organization_state_exception()

  @type put_inbound_dmarc_settings_errors() ::
          organization_not_found_exception() | organization_state_exception()

  @type put_mailbox_permissions_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()
          | entity_state_exception()
          | entity_not_found_exception()

  @type put_mobile_device_access_override_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()
          | entity_state_exception()
          | entity_not_found_exception()

  @type put_retention_policy_errors() ::
          limit_exceeded_exception()
          | invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()

  @type register_mail_domain_errors() ::
          limit_exceeded_exception()
          | invalid_parameter_exception()
          | mail_domain_in_use_exception()
          | organization_not_found_exception()
          | organization_state_exception()

  @type register_to_work_mail_errors() ::
          directory_service_authentication_failed_exception()
          | email_address_in_use_exception()
          | entity_already_registered_exception()
          | directory_unavailable_exception()
          | invalid_parameter_exception()
          | organization_not_found_exception()
          | mail_domain_state_exception()
          | mail_domain_not_found_exception()
          | organization_state_exception()
          | entity_state_exception()
          | entity_not_found_exception()

  @type reset_password_errors() ::
          invalid_password_exception()
          | directory_service_authentication_failed_exception()
          | directory_unavailable_exception()
          | invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()
          | entity_state_exception()
          | unsupported_operation_exception()
          | entity_not_found_exception()

  @type start_mailbox_export_job_errors() ::
          limit_exceeded_exception()
          | invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()
          | entity_not_found_exception()

  @type tag_resource_errors() ::
          too_many_tags_exception()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | organization_state_exception()

  @type test_availability_configuration_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | resource_not_found_exception()
          | organization_state_exception()

  @type untag_resource_errors() :: resource_not_found_exception()

  @type update_availability_configuration_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | resource_not_found_exception()
          | organization_state_exception()

  @type update_default_mail_domain_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | mail_domain_state_exception()
          | mail_domain_not_found_exception()
          | organization_state_exception()

  @type update_group_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()
          | entity_state_exception()
          | unsupported_operation_exception()
          | entity_not_found_exception()

  @type update_impersonation_role_errors() ::
          limit_exceeded_exception()
          | invalid_parameter_exception()
          | organization_not_found_exception()
          | resource_not_found_exception()
          | organization_state_exception()
          | entity_state_exception()
          | entity_not_found_exception()

  @type update_mailbox_quota_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()
          | entity_state_exception()
          | entity_not_found_exception()

  @type update_mobile_device_access_rule_errors() ::
          invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()
          | entity_not_found_exception()

  @type update_primary_email_address_errors() ::
          directory_service_authentication_failed_exception()
          | email_address_in_use_exception()
          | directory_unavailable_exception()
          | invalid_parameter_exception()
          | organization_not_found_exception()
          | mail_domain_state_exception()
          | mail_domain_not_found_exception()
          | organization_state_exception()
          | entity_state_exception()
          | unsupported_operation_exception()
          | entity_not_found_exception()

  @type update_resource_errors() ::
          email_address_in_use_exception()
          | directory_unavailable_exception()
          | invalid_parameter_exception()
          | invalid_configuration_exception()
          | organization_not_found_exception()
          | mail_domain_state_exception()
          | name_availability_exception()
          | mail_domain_not_found_exception()
          | organization_state_exception()
          | entity_state_exception()
          | unsupported_operation_exception()
          | entity_not_found_exception()

  @type update_user_errors() ::
          directory_service_authentication_failed_exception()
          | directory_unavailable_exception()
          | invalid_parameter_exception()
          | organization_not_found_exception()
          | organization_state_exception()
          | entity_state_exception()
          | unsupported_operation_exception()
          | entity_not_found_exception()

  def metadata do
    %{
      api_version: "2017-10-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "workmail",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "WorkMail",
      signature_version: "v4",
      signing_name: "workmail",
      target_prefix: "WorkMailService"
    }
  end

  @doc """
   
  Adds a member (user or group) to the resource's set of delegates.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20AssociateDelegateToResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:associate_delegate_to_resource_request`)
    %{
      required("EntityId") => String.t(),
      required("OrganizationId") => String.t(),
      required("ResourceId") => String.t()
    }
  """
  @spec associate_delegate_to_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, associate_delegate_to_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_delegate_to_resource_errors()}
  def associate_delegate_to_resource(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssociateDelegateToResource", input, options)
  end

  @doc """
   
  Adds a member (user or group) to the group's set.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20AssociateMemberToGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:associate_member_to_group_request`)
    %{
      required("GroupId") => String.t(),
      required("MemberId") => String.t(),
      required("OrganizationId") => String.t()
    }
  """
  @spec associate_member_to_group(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, associate_member_to_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_member_to_group_errors()}
  def associate_member_to_group(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssociateMemberToGroup", input, options)
  end

  @doc """
   
  Assumes an impersonation role for the given WorkMail organization. This method
  returns an authentication token you can use to make impersonated calls.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20AssumeImpersonationRole&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:assume_impersonation_role_request`)
    %{
      required("ImpersonationRoleId") => String.t(),
      required("OrganizationId") => String.t()
    }
  """
  @spec assume_impersonation_role(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, assume_impersonation_role_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, assume_impersonation_role_errors()}
  def assume_impersonation_role(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssumeImpersonationRole", input, options)
  end

  @doc """
   
  Cancels a mailbox export job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20CancelMailboxExportJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:cancel_mailbox_export_job_request`)
    %{
      required("ClientToken") => String.t(),
      required("JobId") => String.t(),
      required("OrganizationId") => String.t()
    }
  """
  @spec cancel_mailbox_export_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, cancel_mailbox_export_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_mailbox_export_job_errors()}
  def cancel_mailbox_export_job(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CancelMailboxExportJob", input, options)
  end

  @doc """
   
  Adds an alias to the set of a given member (user or group) of WorkMail.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20CreateAlias&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_alias_request`)
    %{
      required("Alias") => String.t(),
      required("EntityId") => String.t(),
      required("OrganizationId") => String.t()
    }
  """
  @spec create_alias(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_alias_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_alias_errors()}
  def create_alias(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateAlias", input, options)
  end

  @doc """
   
  Creates an `AvailabilityConfiguration` for the given WorkMail organization and
  domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20CreateAvailabilityConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_availability_configuration_request`)
    %{
      optional("ClientToken") => String.t(),
      optional("EwsProvider") => ews_availability_provider(),
      optional("LambdaProvider") => lambda_availability_provider(),
      required("DomainName") => String.t(),
      required("OrganizationId") => String.t()
    }
  """
  @spec create_availability_configuration(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_availability_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_availability_configuration_errors()}
  def create_availability_configuration(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateAvailabilityConfiguration", input, options)
  end

  @doc """
   
  Creates a group that can be used in WorkMail by calling the `RegisterToWorkMail`
  operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20CreateGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_group_request`)
    %{
      optional("HiddenFromGlobalAddressList") => boolean(),
      required("Name") => String.t(),
      required("OrganizationId") => String.t()
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
   
  Creates an impersonation role for the given WorkMail organization.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20CreateImpersonationRole&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_impersonation_role_request`)
    %{
      optional("ClientToken") => String.t(),
      optional("Description") => String.t(),
      required("Name") => String.t(),
      required("OrganizationId") => String.t(),
      required("Rules") => list(impersonation_rule()()),
      required("Type") => list(any())
    }
  """
  @spec create_impersonation_role(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_impersonation_role_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_impersonation_role_errors()}
  def create_impersonation_role(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateImpersonationRole", input, options)
  end

  @doc """
   
  Creates a new mobile device access rule for the specified WorkMail organization.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20CreateMobileDeviceAccessRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_mobile_device_access_rule_request`)
    %{
      optional("ClientToken") => String.t(),
      optional("Description") => String.t(),
      optional("DeviceModels") => list(String.t()()),
      optional("DeviceOperatingSystems") => list(String.t()()),
      optional("DeviceTypes") => list(String.t()()),
      optional("DeviceUserAgents") => list(String.t()()),
      optional("NotDeviceModels") => list(String.t()()),
      optional("NotDeviceOperatingSystems") => list(String.t()()),
      optional("NotDeviceTypes") => list(String.t()()),
      optional("NotDeviceUserAgents") => list(String.t()()),
      required("Effect") => list(any()),
      required("Name") => String.t(),
      required("OrganizationId") => String.t()
    }
  """
  @spec create_mobile_device_access_rule(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_mobile_device_access_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_mobile_device_access_rule_errors()}
  def create_mobile_device_access_rule(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateMobileDeviceAccessRule", input, options)
  end

  @doc """
   
  Creates a new WorkMail organization. Optionally, you can choose to associate an
  existing AWS Directory Service directory with your organization. If an AWS
  Directory Service directory ID is specified, the organization alias must match
  the directory alias. If you choose not to associate an existing directory with
  your organization, then we create a new WorkMail directory for you. For more
  information, see [Adding an
  organization](https://docs.aws.amazon.com/workmail/latest/adminguide/add_new_organization.html)
  in the *WorkMail Administrator Guide*. You can associate multiple email
  domains with an organization, then choose your default email domain from the
  WorkMail console. You can also associate a domain that is managed in an Amazon
  Route 53 public hosted zone. For more information, see [Adding a
  domain](https://docs.aws.amazon.com/workmail/latest/adminguide/add_domain.html)
  and [Choosing the default
  domain](https://docs.aws.amazon.com/workmail/latest/adminguide/default_domain.html)
  in the *WorkMail Administrator Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20CreateOrganization&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_organization_request`)
    %{
      optional("ClientToken") => String.t(),
      optional("DirectoryId") => String.t(),
      optional("Domains") => list(domain()()),
      optional("EnableInteroperability") => boolean(),
      optional("KmsKeyArn") => String.t(),
      required("Alias") => String.t()
    }
  """
  @spec create_organization(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_organization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_organization_errors()}
  def create_organization(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateOrganization", input, options)
  end

  @doc """
   
  Creates a new WorkMail resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20CreateResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_resource_request`)
    %{
      optional("Description") => String.t(),
      optional("HiddenFromGlobalAddressList") => boolean(),
      required("Name") => String.t(),
      required("OrganizationId") => String.t(),
      required("Type") => list(any())
    }
  """
  @spec create_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_resource_errors()}
  def create_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateResource", input, options)
  end

  @doc """
   
  Creates a user who can be used in WorkMail by calling the `RegisterToWorkMail`
  operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20CreateUser&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_user_request`)
    %{
      optional("FirstName") => String.t(),
      optional("HiddenFromGlobalAddressList") => boolean(),
      optional("LastName") => String.t(),
      optional("Password") => String.t(),
      optional("Role") => list(any()),
      required("DisplayName") => String.t(),
      required("Name") => String.t(),
      required("OrganizationId") => String.t()
    }
  """
  @spec create_user(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_user_errors()}
  def create_user(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateUser", input, options)
  end

  @doc """
   
  Deletes an access control rule for the specified WorkMail organization.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20DeleteAccessControlRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_access_control_rule_request`)
    %{
      required("Name") => String.t(),
      required("OrganizationId") => String.t()
    }
  """
  @spec delete_access_control_rule(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_access_control_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_access_control_rule_errors()}
  def delete_access_control_rule(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteAccessControlRule", input, options)
  end

  @doc """
   
  Remove one or more specified aliases from a set of aliases for a given user.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20DeleteAlias&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_alias_request`)
    %{
      required("Alias") => String.t(),
      required("EntityId") => String.t(),
      required("OrganizationId") => String.t()
    }
  """
  @spec delete_alias(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_alias_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_alias_errors()}
  def delete_alias(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteAlias", input, options)
  end

  @doc """
   
  Deletes the `AvailabilityConfiguration` for the given WorkMail organization and
  domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20DeleteAvailabilityConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_availability_configuration_request`)
    %{
      required("DomainName") => String.t(),
      required("OrganizationId") => String.t()
    }
  """
  @spec delete_availability_configuration(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_availability_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_availability_configuration_errors()}
  def delete_availability_configuration(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteAvailabilityConfiguration", input, options)
  end

  @doc """
   
  Deletes the email monitoring configuration for a specified organization.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20DeleteEmailMonitoringConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_email_monitoring_configuration_request`)
    %{
      required("OrganizationId") => String.t()
    }
  """
  @spec delete_email_monitoring_configuration(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_email_monitoring_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_email_monitoring_configuration_errors()}
  def delete_email_monitoring_configuration(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteEmailMonitoringConfiguration", input, options)
  end

  @doc """
   
  Deletes a group from WorkMail.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20DeleteGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_group_request`)
    %{
      required("GroupId") => String.t(),
      required("OrganizationId") => String.t()
    }
  """
  @spec delete_group(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_group_errors()}
  def delete_group(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteGroup", input, options)
  end

  @doc """
   
  Deletes an impersonation role for the given WorkMail organization.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20DeleteImpersonationRole&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_impersonation_role_request`)
    %{
      required("ImpersonationRoleId") => String.t(),
      required("OrganizationId") => String.t()
    }
  """
  @spec delete_impersonation_role(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_impersonation_role_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_impersonation_role_errors()}
  def delete_impersonation_role(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteImpersonationRole", input, options)
  end

  @doc """
   
  Deletes permissions granted to a member (user or group).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20DeleteMailboxPermissions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_mailbox_permissions_request`)
    %{
      required("EntityId") => String.t(),
      required("GranteeId") => String.t(),
      required("OrganizationId") => String.t()
    }
  """
  @spec delete_mailbox_permissions(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_mailbox_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_mailbox_permissions_errors()}
  def delete_mailbox_permissions(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteMailboxPermissions", input, options)
  end

  @doc """
   
  Deletes the mobile device access override for the given WorkMail organization,
  user, and device.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20DeleteMobileDeviceAccessOverride&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_mobile_device_access_override_request`)
    %{
      required("DeviceId") => String.t(),
      required("OrganizationId") => String.t(),
      required("UserId") => String.t()
    }
  """
  @spec delete_mobile_device_access_override(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_mobile_device_access_override_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_mobile_device_access_override_errors()}
  def delete_mobile_device_access_override(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteMobileDeviceAccessOverride", input, options)
  end

  @doc """
   
  Deletes a mobile device access rule for the specified WorkMail organization.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20DeleteMobileDeviceAccessRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_mobile_device_access_rule_request`)
    %{
      required("MobileDeviceAccessRuleId") => String.t(),
      required("OrganizationId") => String.t()
    }
  """
  @spec delete_mobile_device_access_rule(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_mobile_device_access_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_mobile_device_access_rule_errors()}
  def delete_mobile_device_access_rule(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteMobileDeviceAccessRule", input, options)
  end

  @doc """
   
  Deletes an WorkMail organization and all underlying AWS resources managed by
  WorkMail as part of the organization. You can choose whether to delete the
  associated directory. For more information, see [Removing an
  organization](https://docs.aws.amazon.com/workmail/latest/adminguide/remove_organization.html)
  in the *WorkMail Administrator Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20DeleteOrganization&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_organization_request`)
    %{
      optional("ClientToken") => String.t(),
      optional("ForceDelete") => boolean(),
      required("DeleteDirectory") => boolean(),
      required("OrganizationId") => String.t()
    }
  """
  @spec delete_organization(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_organization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_organization_errors()}
  def delete_organization(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteOrganization", input, options)
  end

  @doc """
   
  Deletes the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20DeleteResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_resource_request`)
    %{
      required("OrganizationId") => String.t(),
      required("ResourceId") => String.t()
    }
  """
  @spec delete_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_resource_errors()}
  def delete_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteResource", input, options)
  end

  @doc """
   
  Deletes the specified retention policy from the specified organization.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20DeleteRetentionPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_retention_policy_request`)
    %{
      required("Id") => String.t(),
      required("OrganizationId") => String.t()
    }
  """
  @spec delete_retention_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_retention_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_retention_policy_errors()}
  def delete_retention_policy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteRetentionPolicy", input, options)
  end

  @doc """
   
  Deletes a user from WorkMail and all subsequent systems. Before you can delete a
  user, the user state must be `DISABLED`. Use the `DescribeUser` action to
  confirm the user state.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20DeleteUser&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_user_request`)
    %{
      required("OrganizationId") => String.t(),
      required("UserId") => String.t()
    }
  """
  @spec delete_user(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_user_errors()}
  def delete_user(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteUser", input, options)
  end

  @doc """
   
  Mark a user, group, or resource as no longer used in WorkMail. This action
  disassociates the mailbox and schedules it for clean-up. WorkMail keeps
  mailboxes for 30 days before they are permanently removed. The functionality
  in the console is *Disable*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20DeregisterFromWorkMail&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:deregister_from_work_mail_request`)
    %{
      required("EntityId") => String.t(),
      required("OrganizationId") => String.t()
    }
  """
  @spec deregister_from_work_mail(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, deregister_from_work_mail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deregister_from_work_mail_errors()}
  def deregister_from_work_mail(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeregisterFromWorkMail", input, options)
  end

  @doc """
   
  Removes a domain from WorkMail, stops email routing to WorkMail, and removes the
  authorization allowing WorkMail use. SES keeps the domain because other
  applications may use it. You must first remove any email address used by
  WorkMail entities before you remove the domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20DeregisterMailDomain&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:deregister_mail_domain_request`)
    %{
      required("DomainName") => String.t(),
      required("OrganizationId") => String.t()
    }
  """
  @spec deregister_mail_domain(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, deregister_mail_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deregister_mail_domain_errors()}
  def deregister_mail_domain(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeregisterMailDomain", input, options)
  end

  @doc """
   
  Describes the current email monitoring configuration for a specified
  organization.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20DescribeEmailMonitoringConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_email_monitoring_configuration_request`)
    %{
      required("OrganizationId") => String.t()
    }
  """
  @spec describe_email_monitoring_configuration(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_email_monitoring_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_email_monitoring_configuration_errors()}
  def describe_email_monitoring_configuration(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeEmailMonitoringConfiguration", input, options)
  end

  @doc """
   
  Returns basic details about an entity in WorkMail.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20DescribeEntity&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_entity_request`)
    %{
      required("Email") => String.t(),
      required("OrganizationId") => String.t()
    }
  """
  @spec describe_entity(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_entity_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_entity_errors()}
  def describe_entity(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeEntity", input, options)
  end

  @doc """
   
  Returns the data available for the group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20DescribeGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_group_request`)
    %{
      required("GroupId") => String.t(),
      required("OrganizationId") => String.t()
    }
  """
  @spec describe_group(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_group_errors()}
  def describe_group(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeGroup", input, options)
  end

  @doc """
   
  Lists the settings in a DMARC policy for a specified organization.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20DescribeInboundDmarcSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_inbound_dmarc_settings_request`)
    %{
      required("OrganizationId") => String.t()
    }
  """
  @spec describe_inbound_dmarc_settings(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_inbound_dmarc_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_inbound_dmarc_settings_errors()}
  def describe_inbound_dmarc_settings(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeInboundDmarcSettings", input, options)
  end

  @doc """
   
  Describes the current status of a mailbox export job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20DescribeMailboxExportJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_mailbox_export_job_request`)
    %{
      required("JobId") => String.t(),
      required("OrganizationId") => String.t()
    }
  """
  @spec describe_mailbox_export_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_mailbox_export_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_mailbox_export_job_errors()}
  def describe_mailbox_export_job(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeMailboxExportJob", input, options)
  end

  @doc """
   
  Provides more information regarding a given organization based on its
  identifier.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20DescribeOrganization&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_organization_request`)
    %{
      required("OrganizationId") => String.t()
    }
  """
  @spec describe_organization(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_organization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_organization_errors()}
  def describe_organization(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeOrganization", input, options)
  end

  @doc """
   
  Returns the data available for the resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20DescribeResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_resource_request`)
    %{
      required("OrganizationId") => String.t(),
      required("ResourceId") => String.t()
    }
  """
  @spec describe_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_resource_errors()}
  def describe_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeResource", input, options)
  end

  @doc """
   
  Provides information regarding the user.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20DescribeUser&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_user_request`)
    %{
      required("OrganizationId") => String.t(),
      required("UserId") => String.t()
    }
  """
  @spec describe_user(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_user_errors()}
  def describe_user(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeUser", input, options)
  end

  @doc """
   
  Removes a member from the resource's set of delegates.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20DisassociateDelegateFromResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:disassociate_delegate_from_resource_request`)
    %{
      required("EntityId") => String.t(),
      required("OrganizationId") => String.t(),
      required("ResourceId") => String.t()
    }
  """
  @spec disassociate_delegate_from_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, disassociate_delegate_from_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_delegate_from_resource_errors()}
  def disassociate_delegate_from_resource(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisassociateDelegateFromResource", input, options)
  end

  @doc """
   
  Removes a member from a group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20DisassociateMemberFromGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:disassociate_member_from_group_request`)
    %{
      required("GroupId") => String.t(),
      required("MemberId") => String.t(),
      required("OrganizationId") => String.t()
    }
  """
  @spec disassociate_member_from_group(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, disassociate_member_from_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_member_from_group_errors()}
  def disassociate_member_from_group(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisassociateMemberFromGroup", input, options)
  end

  @doc """
   
  Gets the effects of an organization's access control rules as they apply to a
  specified IPv4 address, access protocol action, and user ID or impersonation
  role ID. You must provide either the user ID or impersonation role ID.
  Impersonation role ID can only be used with Action EWS.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20GetAccessControlEffect&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_access_control_effect_request`)
    %{
      optional("ImpersonationRoleId") => String.t(),
      optional("UserId") => String.t(),
      required("Action") => String.t(),
      required("IpAddress") => String.t(),
      required("OrganizationId") => String.t()
    }
  """
  @spec get_access_control_effect(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_access_control_effect_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_access_control_effect_errors()}
  def get_access_control_effect(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetAccessControlEffect", input, options)
  end

  @doc """
   
  Gets the default retention policy details for the specified organization.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20GetDefaultRetentionPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_default_retention_policy_request`)
    %{
      required("OrganizationId") => String.t()
    }
  """
  @spec get_default_retention_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_default_retention_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_default_retention_policy_errors()}
  def get_default_retention_policy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDefaultRetentionPolicy", input, options)
  end

  @doc """
   
  Gets the impersonation role details for the given WorkMail organization.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20GetImpersonationRole&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_impersonation_role_request`)
    %{
      required("ImpersonationRoleId") => String.t(),
      required("OrganizationId") => String.t()
    }
  """
  @spec get_impersonation_role(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_impersonation_role_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_impersonation_role_errors()}
  def get_impersonation_role(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetImpersonationRole", input, options)
  end

  @doc """
   
  Tests whether the given impersonation role can impersonate a target user.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20GetImpersonationRoleEffect&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_impersonation_role_effect_request`)
    %{
      required("ImpersonationRoleId") => String.t(),
      required("OrganizationId") => String.t(),
      required("TargetUser") => String.t()
    }
  """
  @spec get_impersonation_role_effect(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_impersonation_role_effect_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_impersonation_role_effect_errors()}
  def get_impersonation_role_effect(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetImpersonationRoleEffect", input, options)
  end

  @doc """
   
  Gets details for a mail domain, including domain records required to configure
  your domain with recommended security.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20GetMailDomain&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_mail_domain_request`)
    %{
      required("DomainName") => String.t(),
      required("OrganizationId") => String.t()
    }
  """
  @spec get_mail_domain(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_mail_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_mail_domain_errors()}
  def get_mail_domain(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetMailDomain", input, options)
  end

  @doc """
   
  Requests a user's mailbox details for a specified organization and user.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20GetMailboxDetails&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_mailbox_details_request`)
    %{
      required("OrganizationId") => String.t(),
      required("UserId") => String.t()
    }
  """
  @spec get_mailbox_details(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_mailbox_details_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_mailbox_details_errors()}
  def get_mailbox_details(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetMailboxDetails", input, options)
  end

  @doc """
   
  Simulates the effect of the mobile device access rules for the given attributes
  of a sample access event. Use this method to test the effects of the current
  set of mobile device access rules for the WorkMail organization for a
  particular user's attributes.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20GetMobileDeviceAccessEffect&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_mobile_device_access_effect_request`)
    %{
      optional("DeviceModel") => String.t(),
      optional("DeviceOperatingSystem") => String.t(),
      optional("DeviceType") => String.t(),
      optional("DeviceUserAgent") => String.t(),
      required("OrganizationId") => String.t()
    }
  """
  @spec get_mobile_device_access_effect(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_mobile_device_access_effect_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_mobile_device_access_effect_errors()}
  def get_mobile_device_access_effect(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetMobileDeviceAccessEffect", input, options)
  end

  @doc """
   
  Gets the mobile device access override for the given WorkMail organization,
  user, and device.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20GetMobileDeviceAccessOverride&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_mobile_device_access_override_request`)
    %{
      required("DeviceId") => String.t(),
      required("OrganizationId") => String.t(),
      required("UserId") => String.t()
    }
  """
  @spec get_mobile_device_access_override(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_mobile_device_access_override_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_mobile_device_access_override_errors()}
  def get_mobile_device_access_override(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetMobileDeviceAccessOverride", input, options)
  end

  @doc """
   
  Lists the access control rules for the specified organization.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20ListAccessControlRules&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_access_control_rules_request`)
    %{
      required("OrganizationId") => String.t()
    }
  """
  @spec list_access_control_rules(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_access_control_rules_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_access_control_rules_errors()}
  def list_access_control_rules(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAccessControlRules", input, options)
  end

  @doc """
   
  Creates a paginated call to list the aliases associated with a given entity.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20ListAliases&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_aliases_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("EntityId") => String.t(),
      required("OrganizationId") => String.t()
    }
  """
  @spec list_aliases(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_aliases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_aliases_errors()}
  def list_aliases(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAliases", input, options)
  end

  @doc """
   
  List all the `AvailabilityConfiguration`'s for the given WorkMail organization.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20ListAvailabilityConfigurations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_availability_configurations_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("OrganizationId") => String.t()
    }
  """
  @spec list_availability_configurations(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_availability_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_availability_configurations_errors()}
  def list_availability_configurations(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAvailabilityConfigurations", input, options)
  end

  @doc """
   
  Returns an overview of the members of a group. Users and groups can be members
  of a group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20ListGroupMembers&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_group_members_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("GroupId") => String.t(),
      required("OrganizationId") => String.t()
    }
  """
  @spec list_group_members(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_group_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_group_members_errors()}
  def list_group_members(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListGroupMembers", input, options)
  end

  @doc """
   
  Returns summaries of the organization's groups.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20ListGroups&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_groups_request`)
    %{
      optional("Filters") => list_groups_filters(),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("OrganizationId") => String.t()
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
   
  Returns all the groups to which an entity belongs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20ListGroupsForEntity&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_groups_for_entity_request`)
    %{
      optional("Filters") => list_groups_for_entity_filters(),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("EntityId") => String.t(),
      required("OrganizationId") => String.t()
    }
  """
  @spec list_groups_for_entity(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_groups_for_entity_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_groups_for_entity_errors()}
  def list_groups_for_entity(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListGroupsForEntity", input, options)
  end

  @doc """
   
  Lists all the impersonation roles for the given WorkMail organization.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20ListImpersonationRoles&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_impersonation_roles_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("OrganizationId") => String.t()
    }
  """
  @spec list_impersonation_roles(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_impersonation_roles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_impersonation_roles_errors()}
  def list_impersonation_roles(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListImpersonationRoles", input, options)
  end

  @doc """
   
  Lists the mail domains in a given WorkMail organization.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20ListMailDomains&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_mail_domains_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("OrganizationId") => String.t()
    }
  """
  @spec list_mail_domains(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_mail_domains_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_mail_domains_errors()}
  def list_mail_domains(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListMailDomains", input, options)
  end

  @doc """
   
  Lists the mailbox export jobs started for the specified organization within the
  last seven days.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20ListMailboxExportJobs&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_mailbox_export_jobs_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("OrganizationId") => String.t()
    }
  """
  @spec list_mailbox_export_jobs(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_mailbox_export_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_mailbox_export_jobs_errors()}
  def list_mailbox_export_jobs(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListMailboxExportJobs", input, options)
  end

  @doc """
   
  Lists the mailbox permissions associated with a user, group, or resource
  mailbox.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20ListMailboxPermissions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_mailbox_permissions_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("EntityId") => String.t(),
      required("OrganizationId") => String.t()
    }
  """
  @spec list_mailbox_permissions(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_mailbox_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_mailbox_permissions_errors()}
  def list_mailbox_permissions(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListMailboxPermissions", input, options)
  end

  @doc """
   
  Lists all the mobile device access overrides for any given combination of
  WorkMail organization, user, or device.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20ListMobileDeviceAccessOverrides&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_mobile_device_access_overrides_request`)
    %{
      optional("DeviceId") => String.t(),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("UserId") => String.t(),
      required("OrganizationId") => String.t()
    }
  """
  @spec list_mobile_device_access_overrides(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_mobile_device_access_overrides_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_mobile_device_access_overrides_errors()}
  def list_mobile_device_access_overrides(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListMobileDeviceAccessOverrides", input, options)
  end

  @doc """
   
  Lists the mobile device access rules for the specified WorkMail organization.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20ListMobileDeviceAccessRules&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_mobile_device_access_rules_request`)
    %{
      required("OrganizationId") => String.t()
    }
  """
  @spec list_mobile_device_access_rules(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_mobile_device_access_rules_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_mobile_device_access_rules_errors()}
  def list_mobile_device_access_rules(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListMobileDeviceAccessRules", input, options)
  end

  @doc """
   
  Returns summaries of the customer's organizations.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20ListOrganizations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_organizations_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """
  @spec list_organizations(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_organizations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_organizations_errors()}
  def list_organizations(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListOrganizations", input, options)
  end

  @doc """
   
  Lists the delegates associated with a resource. Users and groups can be resource
  delegates and answer requests on behalf of the resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20ListResourceDelegates&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_resource_delegates_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("OrganizationId") => String.t(),
      required("ResourceId") => String.t()
    }
  """
  @spec list_resource_delegates(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_resource_delegates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_resource_delegates_errors()}
  def list_resource_delegates(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListResourceDelegates", input, options)
  end

  @doc """
   
  Returns summaries of the organization's resources.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20ListResources&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_resources_request`)
    %{
      optional("Filters") => list_resources_filters(),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("OrganizationId") => String.t()
    }
  """
  @spec list_resources(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_resources_errors()}
  def list_resources(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListResources", input, options)
  end

  @doc """
   
  Lists the tags applied to an WorkMail organization resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_tags_for_resource_request`)
    %{
      required("ResourceARN") => String.t()
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
   
  Returns summaries of the organization's users.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20ListUsers&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_users_request`)
    %{
      optional("Filters") => list_users_filters(),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("OrganizationId") => String.t()
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
   
  Adds a new access control rule for the specified organization. The rule allows
  or denies access to the organization for the specified IPv4 addresses, access
  protocol actions, user IDs and impersonation IDs. Adding a new rule with the
  same name as an existing rule replaces the older rule.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20PutAccessControlRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_access_control_rule_request`)
    %{
      optional("Actions") => list(String.t()()),
      optional("ImpersonationRoleIds") => list(String.t()()),
      optional("IpRanges") => list(String.t()()),
      optional("NotActions") => list(String.t()()),
      optional("NotImpersonationRoleIds") => list(String.t()()),
      optional("NotIpRanges") => list(String.t()()),
      optional("NotUserIds") => list(String.t()()),
      optional("UserIds") => list(String.t()()),
      required("Description") => String.t(),
      required("Effect") => list(any()),
      required("Name") => String.t(),
      required("OrganizationId") => String.t()
    }
  """
  @spec put_access_control_rule(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_access_control_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_access_control_rule_errors()}
  def put_access_control_rule(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutAccessControlRule", input, options)
  end

  @doc """
   
  Creates or updates the email monitoring configuration for a specified
  organization.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20PutEmailMonitoringConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_email_monitoring_configuration_request`)
    %{
      required("LogGroupArn") => String.t(),
      required("OrganizationId") => String.t(),
      required("RoleArn") => String.t()
    }
  """
  @spec put_email_monitoring_configuration(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_email_monitoring_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_email_monitoring_configuration_errors()}
  def put_email_monitoring_configuration(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutEmailMonitoringConfiguration", input, options)
  end

  @doc """
   
  Enables or disables a DMARC policy for a given organization.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20PutInboundDmarcSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_inbound_dmarc_settings_request`)
    %{
      required("Enforced") => boolean(),
      required("OrganizationId") => String.t()
    }
  """
  @spec put_inbound_dmarc_settings(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_inbound_dmarc_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_inbound_dmarc_settings_errors()}
  def put_inbound_dmarc_settings(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutInboundDmarcSettings", input, options)
  end

  @doc """
   
  Sets permissions for a user, group, or resource. This replaces any pre-existing
  permissions.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20PutMailboxPermissions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_mailbox_permissions_request`)
    %{
      required("EntityId") => String.t(),
      required("GranteeId") => String.t(),
      required("OrganizationId") => String.t(),
      required("PermissionValues") => list(list(any())())
    }
  """
  @spec put_mailbox_permissions(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_mailbox_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_mailbox_permissions_errors()}
  def put_mailbox_permissions(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutMailboxPermissions", input, options)
  end

  @doc """
   
  Creates or updates a mobile device access override for the given WorkMail
  organization, user, and device.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20PutMobileDeviceAccessOverride&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_mobile_device_access_override_request`)
    %{
      optional("Description") => String.t(),
      required("DeviceId") => String.t(),
      required("Effect") => list(any()),
      required("OrganizationId") => String.t(),
      required("UserId") => String.t()
    }
  """
  @spec put_mobile_device_access_override(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_mobile_device_access_override_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_mobile_device_access_override_errors()}
  def put_mobile_device_access_override(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutMobileDeviceAccessOverride", input, options)
  end

  @doc """
   
  Puts a retention policy to the specified organization.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20PutRetentionPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_retention_policy_request`)
    %{
      optional("Description") => String.t(),
      optional("Id") => String.t(),
      required("FolderConfigurations") => list(folder_configuration()()),
      required("Name") => String.t(),
      required("OrganizationId") => String.t()
    }
  """
  @spec put_retention_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_retention_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_retention_policy_errors()}
  def put_retention_policy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutRetentionPolicy", input, options)
  end

  @doc """
   
  Registers a new domain in WorkMail and SES, and configures it for use by
  WorkMail. Emails received by SES for this domain are routed to the specified
  WorkMail organization, and WorkMail has permanent permission to use the
  specified domain for sending your users' emails.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20RegisterMailDomain&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:register_mail_domain_request`)
    %{
      optional("ClientToken") => String.t(),
      required("DomainName") => String.t(),
      required("OrganizationId") => String.t()
    }
  """
  @spec register_mail_domain(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, register_mail_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_mail_domain_errors()}
  def register_mail_domain(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "RegisterMailDomain", input, options)
  end

  @doc """
   
  Registers an existing and disabled user, group, or resource for WorkMail use by
  associating a mailbox and calendaring capabilities. It performs no change if
  the user, group, or resource is enabled and fails if the user, group, or
  resource is deleted. This operation results in the accumulation of costs. For
  more information, see [Pricing](https://aws.amazon.com/workmail/pricing). The
  equivalent console functionality for this operation is *Enable*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20RegisterToWorkMail&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:register_to_work_mail_request`)
    %{
      required("Email") => String.t(),
      required("EntityId") => String.t(),
      required("OrganizationId") => String.t()
    }
  """
  @spec register_to_work_mail(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, register_to_work_mail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_to_work_mail_errors()}
  def register_to_work_mail(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "RegisterToWorkMail", input, options)
  end

  @doc """
   
  Allows the administrator to reset the password for a user.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20ResetPassword&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:reset_password_request`)
    %{
      required("OrganizationId") => String.t(),
      required("Password") => String.t(),
      required("UserId") => String.t()
    }
  """
  @spec reset_password(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, reset_password_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reset_password_errors()}
  def reset_password(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ResetPassword", input, options)
  end

  @doc """
   
  Starts a mailbox export job to export MIME-format email messages and calendar
  items from the specified mailbox to the specified Amazon Simple Storage
  Service (Amazon S3) bucket. For more information, see [Exporting mailbox
  content](https://docs.aws.amazon.com/workmail/latest/adminguide/mail-export.html)
  in the *WorkMail Administrator Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20StartMailboxExportJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:start_mailbox_export_job_request`)
    %{
      optional("Description") => String.t(),
      required("ClientToken") => String.t(),
      required("EntityId") => String.t(),
      required("KmsKeyArn") => String.t(),
      required("OrganizationId") => String.t(),
      required("RoleArn") => String.t(),
      required("S3BucketName") => String.t(),
      required("S3Prefix") => String.t()
    }
  """
  @spec start_mailbox_export_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, start_mailbox_export_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_mailbox_export_job_errors()}
  def start_mailbox_export_job(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartMailboxExportJob", input, options)
  end

  @doc """
   
  Applies the specified tags to the specified WorkMailorganization resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:tag_resource_request`)
    %{
      required("ResourceARN") => String.t(),
      required("Tags") => list(tag()())
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
   
  Performs a test on an availability provider to ensure that access is allowed.
  For EWS, it verifies the provided credentials can be used to successfully log
  in. For Lambda, it verifies that the Lambda function can be invoked and that
  the resource access policy was configured to deny anonymous access. An
  anonymous invocation is one done without providing either a `SourceArn` or
  `SourceAccount` header.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20TestAvailabilityConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:test_availability_configuration_request`)
    %{
      optional("DomainName") => String.t(),
      optional("EwsProvider") => ews_availability_provider(),
      optional("LambdaProvider") => lambda_availability_provider(),
      required("OrganizationId") => String.t()
    }
  """
  @spec test_availability_configuration(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, test_availability_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, test_availability_configuration_errors()}
  def test_availability_configuration(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "TestAvailabilityConfiguration", input, options)
  end

  @doc """
   
  Untags the specified tags from the specified WorkMail organization resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:untag_resource_request`)
    %{
      required("ResourceARN") => String.t(),
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
   
  Updates an existing `AvailabilityConfiguration` for the given WorkMail
  organization and domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20UpdateAvailabilityConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_availability_configuration_request`)
    %{
      optional("EwsProvider") => ews_availability_provider(),
      optional("LambdaProvider") => lambda_availability_provider(),
      required("DomainName") => String.t(),
      required("OrganizationId") => String.t()
    }
  """
  @spec update_availability_configuration(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_availability_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_availability_configuration_errors()}
  def update_availability_configuration(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateAvailabilityConfiguration", input, options)
  end

  @doc """
   
  Updates the default mail domain for an organization. The default mail domain is
  used by the WorkMail AWS Console to suggest an email address when enabling a
  mail user. You can only have one default domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20UpdateDefaultMailDomain&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_default_mail_domain_request`)
    %{
      required("DomainName") => String.t(),
      required("OrganizationId") => String.t()
    }
  """
  @spec update_default_mail_domain(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_default_mail_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_default_mail_domain_errors()}
  def update_default_mail_domain(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateDefaultMailDomain", input, options)
  end

  @doc """
   
  Updates attibutes in a group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20UpdateGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_group_request`)
    %{
      optional("HiddenFromGlobalAddressList") => boolean(),
      required("GroupId") => String.t(),
      required("OrganizationId") => String.t()
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
   
  Updates an impersonation role for the given WorkMail organization.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20UpdateImpersonationRole&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_impersonation_role_request`)
    %{
      optional("Description") => String.t(),
      required("ImpersonationRoleId") => String.t(),
      required("Name") => String.t(),
      required("OrganizationId") => String.t(),
      required("Rules") => list(impersonation_rule()()),
      required("Type") => list(any())
    }
  """
  @spec update_impersonation_role(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_impersonation_role_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_impersonation_role_errors()}
  def update_impersonation_role(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateImpersonationRole", input, options)
  end

  @doc """
   
  Updates a user's current mailbox quota for a specified organization and user.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20UpdateMailboxQuota&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_mailbox_quota_request`)
    %{
      required("MailboxQuota") => integer(),
      required("OrganizationId") => String.t(),
      required("UserId") => String.t()
    }
  """
  @spec update_mailbox_quota(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_mailbox_quota_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_mailbox_quota_errors()}
  def update_mailbox_quota(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateMailboxQuota", input, options)
  end

  @doc """
   
  Updates a mobile device access rule for the specified WorkMail organization.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20UpdateMobileDeviceAccessRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_mobile_device_access_rule_request`)
    %{
      optional("Description") => String.t(),
      optional("DeviceModels") => list(String.t()()),
      optional("DeviceOperatingSystems") => list(String.t()()),
      optional("DeviceTypes") => list(String.t()()),
      optional("DeviceUserAgents") => list(String.t()()),
      optional("NotDeviceModels") => list(String.t()()),
      optional("NotDeviceOperatingSystems") => list(String.t()()),
      optional("NotDeviceTypes") => list(String.t()()),
      optional("NotDeviceUserAgents") => list(String.t()()),
      required("Effect") => list(any()),
      required("MobileDeviceAccessRuleId") => String.t(),
      required("Name") => String.t(),
      required("OrganizationId") => String.t()
    }
  """
  @spec update_mobile_device_access_rule(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_mobile_device_access_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_mobile_device_access_rule_errors()}
  def update_mobile_device_access_rule(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateMobileDeviceAccessRule", input, options)
  end

  @doc """
   
  Updates the primary email for a user, group, or resource. The current email is
  moved into the list of aliases (or swapped between an existing alias and the
  current primary email), and the email provided in the input is promoted as the
  primary.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20UpdatePrimaryEmailAddress&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_primary_email_address_request`)
    %{
      required("Email") => String.t(),
      required("EntityId") => String.t(),
      required("OrganizationId") => String.t()
    }
  """
  @spec update_primary_email_address(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_primary_email_address_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_primary_email_address_errors()}
  def update_primary_email_address(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdatePrimaryEmailAddress", input, options)
  end

  @doc """
   
  Updates data for the resource. To have the latest information, it must be
  preceded by a `DescribeResource` call. The dataset in the request should be
  the one expected when performing another `DescribeResource` call.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20UpdateResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_resource_request`)
    %{
      optional("BookingOptions") => booking_options(),
      optional("Description") => String.t(),
      optional("HiddenFromGlobalAddressList") => boolean(),
      optional("Name") => String.t(),
      optional("Type") => list(any()),
      required("OrganizationId") => String.t(),
      required("ResourceId") => String.t()
    }
  """
  @spec update_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_resource_errors()}
  def update_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateResource", input, options)
  end

  @doc """
   
  Updates data for the user. To have the latest information, it must be preceded
  by a `DescribeUser` call. The dataset in the request should be the one
  expected when performing another `DescribeUser` call.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=workmail%20UpdateUser&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_user_request`)
    %{
      optional("City") => String.t(),
      optional("Company") => String.t(),
      optional("Country") => String.t(),
      optional("Department") => String.t(),
      optional("DisplayName") => String.t(),
      optional("FirstName") => String.t(),
      optional("HiddenFromGlobalAddressList") => boolean(),
      optional("Initials") => String.t(),
      optional("JobTitle") => String.t(),
      optional("LastName") => String.t(),
      optional("Office") => String.t(),
      optional("Role") => list(any()),
      optional("Street") => String.t(),
      optional("Telephone") => String.t(),
      optional("ZipCode") => String.t(),
      required("OrganizationId") => String.t(),
      required("UserId") => String.t()
    }
  """
  @spec update_user(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_user_errors()}
  def update_user(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateUser", input, options)
  end
end
