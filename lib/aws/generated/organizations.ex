# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Organizations do
  @moduledoc """
  Organizations is a web service that enables you to consolidate your multiple
  Amazon Web Services accounts into an *organization* and centrally manage your
  accounts and their resources. This guide provides descriptions of the
  Organizations operations. For more information about using this service, see
  the [Organizations User
  Guide](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_introduction.html).
  **Support and feedback for Organizations**
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      organization() :: %{
        "Arn" => String.t(),
        "AvailablePolicyTypes" => list(policy_type_summary()()),
        "FeatureSet" => list(any()),
        "Id" => String.t(),
        "MasterAccountArn" => String.t(),
        "MasterAccountEmail" => String.t(),
        "MasterAccountId" => String.t()
      }
      
  """
  @type organization() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_target_summary() :: %{
        "Arn" => String.t(),
        "Name" => String.t(),
        "TargetId" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type policy_target_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      handshake_constraint_violation_exception() :: %{
        "Message" => String.t(),
        "Reason" => list(any())
      }
      
  """
  @type handshake_constraint_violation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_gov_cloud_account_response() :: %{
        "CreateAccountStatus" => create_account_status()
      }
      
  """
  @type create_gov_cloud_account_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_account_from_organization_request() :: %{
        required("AccountId") => String.t()
      }
      
  """
  @type remove_account_from_organization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organizational_unit_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type organizational_unit_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_aws_service_access_for_organization_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_aws_service_access_for_organization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceId") => String.t(),
        required("Tags") => list(tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_create_account_status_response() :: %{
        "CreateAccountStatuses" => list(create_account_status()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_create_account_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      duplicate_account_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type duplicate_account_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      move_account_request() :: %{
        required("AccountId") => String.t(),
        required("DestinationParentId") => String.t(),
        required("SourceParentId") => String.t()
      }
      
  """
  @type move_account_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      duplicate_handshake_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type duplicate_handshake_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_account_request() :: %{
        required("AccountId") => String.t()
      }
      
  """
  @type describe_account_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      finalizing_organization_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type finalizing_organization_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_organizational_unit_request() :: %{
        optional("Name") => String.t(),
        required("OrganizationalUnitId") => String.t()
      }
      
  """
  @type update_organizational_unit_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enabled_service_principal() :: %{
        "DateEnabled" => non_neg_integer(),
        "ServicePrincipal" => String.t()
      }
      
  """
  @type enabled_service_principal() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_policies_response() :: %{
        "NextToken" => String.t(),
        "Policies" => list(policy_summary()())
      }
      
  """
  @type list_policies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      decline_handshake_request() :: %{
        required("HandshakeId") => String.t()
      }
      
  """
  @type decline_handshake_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_roots_response() :: %{
        "NextToken" => String.t(),
        "Roots" => list(root()())
      }
      
  """
  @type list_roots_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      root() :: %{
        "Arn" => String.t(),
        "Id" => String.t(),
        "Name" => String.t(),
        "PolicyTypes" => list(policy_type_summary()())
      }
      
  """
  @type root() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aws_organizations_not_in_use_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type aws_organizations_not_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_policies_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("Filter") => list(any())
      }
      
  """
  @type list_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_policies_for_target_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("Filter") => list(any()),
        required("TargetId") => String.t()
      }
      
  """
  @type list_policies_for_target_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_accounts_for_parent_response() :: %{
        "Accounts" => list(account()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_accounts_for_parent_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_organizational_units_for_parent_response() :: %{
        "NextToken" => String.t(),
        "OrganizationalUnits" => list(organizational_unit()())
      }
      
  """
  @type list_organizational_units_for_parent_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      duplicate_organizational_unit_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type duplicate_organizational_unit_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_policy_request() :: %{
        optional("Tags") => list(tag()()),
        required("Content") => String.t(),
        required("Description") => String.t(),
        required("Name") => String.t(),
        required("Type") => list(any())
      }
      
  """
  @type create_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_create_account_status_request() :: %{
        required("CreateAccountRequestId") => String.t()
      }
      
  """
  @type describe_create_account_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_account_status_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type create_account_status_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_handshake_request() :: %{
        required("HandshakeId") => String.t()
      }
      
  """
  @type cancel_handshake_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_parents_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ChildId") => String.t()
      }
      
  """
  @type list_parents_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      handshake_party() :: %{
        "Id" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type handshake_party() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_type_not_available_for_organization_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type policy_type_not_available_for_organization_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detach_policy_request() :: %{
        required("PolicyId") => String.t(),
        required("TargetId") => String.t()
      }
      
  """
  @type detach_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_policy_response() :: %{
        "Policy" => policy()
      }
      
  """
  @type update_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceId") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_roots_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_roots_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_requests_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_delegated_administrator_request() :: %{
        required("AccountId") => String.t(),
        required("ServicePrincipal") => String.t()
      }
      
  """
  @type register_delegated_administrator_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_organizational_unit_request() :: %{
        optional("Tags") => list(tag()()),
        required("Name") => String.t(),
        required("ParentId") => String.t()
      }
      
  """
  @type create_organizational_unit_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_account_response() :: %{
        "Account" => account()
      }
      
  """
  @type describe_account_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      handshake_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type handshake_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      accept_handshake_request() :: %{
        required("HandshakeId") => String.t()
      }
      
  """
  @type accept_handshake_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_organizational_units_for_parent_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ParentId") => String.t()
      }
      
  """
  @type list_organizational_units_for_parent_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      duplicate_policy_attachment_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type duplicate_policy_attachment_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_policy_type_request() :: %{
        required("PolicyType") => list(any()),
        required("RootId") => String.t()
      }
      
  """
  @type enable_policy_type_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_handshake_response() :: %{
        "Handshake" => handshake()
      }
      
  """
  @type cancel_handshake_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_create_account_status_response() :: %{
        "CreateAccountStatus" => create_account_status()
      }
      
  """
  @type describe_create_account_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_organizational_unit_response() :: %{
        "OrganizationalUnit" => organizational_unit()
      }
      
  """
  @type create_organizational_unit_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      decline_handshake_response() :: %{
        "Handshake" => handshake()
      }
      
  """
  @type decline_handshake_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type policy_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_handshakes_for_organization_request() :: %{
        optional("Filter") => handshake_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_handshakes_for_organization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_not_empty_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type organization_not_empty_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_targets_for_policy_response() :: %{
        "NextToken" => String.t(),
        "Targets" => list(policy_target_summary()())
      }
      
  """
  @type list_targets_for_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_effective_policy_request() :: %{
        optional("TargetId") => String.t(),
        required("PolicyType") => list(any())
      }
      
  """
  @type describe_effective_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      child_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type child_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_accounts_response() :: %{
        "Accounts" => list(account()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_accounts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_all_features_response() :: %{
        "Handshake" => handshake()
      }
      
  """
  @type enable_all_features_response() :: %{String.t() => any()}

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
      
      child() :: %{
        "Id" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type child() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_delegated_administrators_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ServicePrincipal") => String.t()
      }
      
  """
  @type list_delegated_administrators_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disable_policy_type_response() :: %{
        "Root" => root()
      }
      
  """
  @type disable_policy_type_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      handshake_already_in_state_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type handshake_already_in_state_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      duplicate_policy_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type duplicate_policy_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      effective_policy() :: %{
        "LastUpdatedTimestamp" => non_neg_integer(),
        "PolicyContent" => String.t(),
        "PolicyType" => list(any()),
        "TargetId" => String.t()
      }
      
  """
  @type effective_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attach_policy_request() :: %{
        required("PolicyId") => String.t(),
        required("TargetId") => String.t()
      }
      
  """
  @type attach_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_already_closed_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type account_already_closed_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_not_registered_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type account_not_registered_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_account_status() :: %{
        "AccountId" => String.t(),
        "AccountName" => String.t(),
        "CompletedTimestamp" => non_neg_integer(),
        "FailureReason" => list(any()),
        "GovCloudAccountId" => String.t(),
        "Id" => String.t(),
        "RequestedTimestamp" => non_neg_integer(),
        "State" => list(any())
      }
      
  """
  @type create_account_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account() :: %{
        "Arn" => String.t(),
        "Email" => String.t(),
        "Id" => String.t(),
        "JoinedMethod" => list(any()),
        "JoinedTimestamp" => non_neg_integer(),
        "Name" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type account() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_organizational_unit_response() :: %{
        "OrganizationalUnit" => organizational_unit()
      }
      
  """
  @type update_organizational_unit_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_handshakes_for_organization_response() :: %{
        "Handshakes" => list(handshake()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_handshakes_for_organization_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delegated_service() :: %{
        "DelegationEnabledDate" => non_neg_integer(),
        "ServicePrincipal" => String.t()
      }
      
  """
  @type delegated_service() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type service_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_policy_request() :: %{
        required("PolicyId") => String.t()
      }
      
  """
  @type describe_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invite_account_to_organization_request() :: %{
        optional("Notes") => String.t(),
        optional("Tags") => list(tag()()),
        required("Target") => handshake_party()
      }
      
  """
  @type invite_account_to_organization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_input_exception() :: %{
        "Message" => String.t(),
        "Reason" => list(any())
      }
      
  """
  @type invalid_input_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "NextToken" => String.t(),
        "Tags" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_policy_request() :: %{
        optional("Content") => String.t(),
        optional("Description") => String.t(),
        optional("Name") => String.t(),
        required("PolicyId") => String.t()
      }
      
  """
  @type update_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_effective_policy_response() :: %{
        "EffectivePolicy" => effective_policy()
      }
      
  """
  @type describe_effective_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type account_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parent_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type parent_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      root_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type root_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      effective_policy_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type effective_policy_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_policy_response() :: %{
        "Policy" => policy()
      }
      
  """
  @type create_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_organizational_unit_response() :: %{
        "OrganizationalUnit" => organizational_unit()
      }
      
  """
  @type describe_organizational_unit_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_organization_response() :: %{
        "Organization" => organization()
      }
      
  """
  @type describe_organization_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_api_endpoint_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type unsupported_api_endpoint_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      master_cannot_leave_organization_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type master_cannot_leave_organization_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      handshake_filter() :: %{
        "ActionType" => list(any()),
        "ParentHandshakeId" => String.t()
      }
      
  """
  @type handshake_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_account_request() :: %{
        optional("IamUserAccessToBilling") => list(any()),
        optional("RoleName") => String.t(),
        optional("Tags") => list(tag()()),
        required("AccountName") => String.t(),
        required("Email") => String.t()
      }
      
  """
  @type create_account_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organizational_unit_not_empty_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type organizational_unit_not_empty_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_policy() :: %{
        "Content" => String.t(),
        "ResourcePolicySummary" => resource_policy_summary()
      }
      
  """
  @type resource_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_policy_request() :: %{
        required("PolicyId") => String.t()
      }
      
  """
  @type delete_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_aws_service_access_for_organization_response() :: %{
        "EnabledServicePrincipals" => list(enabled_service_principal()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_aws_service_access_for_organization_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disable_policy_type_request() :: %{
        required("PolicyType") => list(any()),
        required("RootId") => String.t()
      }
      
  """
  @type disable_policy_type_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      handshake() :: %{
        "Action" => list(any()),
        "Arn" => String.t(),
        "ExpirationTimestamp" => non_neg_integer(),
        "Id" => String.t(),
        "Parties" => list(handshake_party()()),
        "RequestedTimestamp" => non_neg_integer(),
        "Resources" => list(handshake_resource()()),
        "State" => list(any())
      }
      
  """
  @type handshake() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy() :: %{
        "Content" => String.t(),
        "PolicySummary" => policy_summary()
      }
      
  """
  @type policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_resource_policy_request() :: %{
        optional("Tags") => list(tag()()),
        required("Content") => String.t()
      }
      
  """
  @type put_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_policies_for_target_response() :: %{
        "NextToken" => String.t(),
        "Policies" => list(policy_summary()())
      }
      
  """
  @type list_policies_for_target_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_organizational_unit_request() :: %{
        required("OrganizationalUnitId") => String.t()
      }
      
  """
  @type delete_organizational_unit_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      already_in_organization_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type already_in_organization_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_delegated_administrator_request() :: %{
        required("AccountId") => String.t(),
        required("ServicePrincipal") => String.t()
      }
      
  """
  @type deregister_delegated_administrator_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_children_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ChildType") => list(any()),
        required("ParentId") => String.t()
      }
      
  """
  @type list_children_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_handshake_transition_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_handshake_transition_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invite_account_to_organization_response() :: %{
        "Handshake" => handshake()
      }
      
  """
  @type invite_account_to_organization_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_type_not_enabled_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type policy_type_not_enabled_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      concurrent_modification_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type concurrent_modification_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      accept_handshake_response() :: %{
        "Handshake" => handshake()
      }
      
  """
  @type accept_handshake_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      close_account_request() :: %{
        required("AccountId") => String.t()
      }
      
  """
  @type close_account_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_in_use_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type policy_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_children_response() :: %{
        "Children" => list(child()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_children_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      constraint_violation_exception() :: %{
        "Message" => String.t(),
        "Reason" => list(any())
      }
      
  """
  @type constraint_violation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_already_registered_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type account_already_registered_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_owner_not_verified_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type account_owner_not_verified_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        optional("NextToken") => String.t(),
        required("ResourceId") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      handshake_resource() :: %{
        "Resources" => list(handshake_resource()()),
        "Type" => list(any()),
        "Value" => String.t()
      }
      
  """
  @type handshake_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      target_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type target_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_parents_response() :: %{
        "NextToken" => String.t(),
        "Parents" => list(parent()())
      }
      
  """
  @type list_parents_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_organization_response() :: %{
        "Organization" => organization()
      }
      
  """
  @type create_organization_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_not_attached_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type policy_not_attached_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_targets_for_policy_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("PolicyId") => String.t()
      }
      
  """
  @type list_targets_for_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      malformed_policy_document_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type malformed_policy_document_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_summary() :: %{
        "Arn" => String.t(),
        "AwsManaged" => boolean(),
        "Description" => String.t(),
        "Id" => String.t(),
        "Name" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type policy_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_resource_policy_response() :: %{
        "ResourcePolicy" => resource_policy()
      }
      
  """
  @type describe_resource_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organizational_unit() :: %{
        "Arn" => String.t(),
        "Id" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type organizational_unit() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_delegated_services_for_account_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("AccountId") => String.t()
      }
      
  """
  @type list_delegated_services_for_account_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_organizational_unit_request() :: %{
        required("OrganizationalUnitId") => String.t()
      }
      
  """
  @type describe_organizational_unit_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_handshakes_for_account_response() :: %{
        "Handshakes" => list(handshake()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_handshakes_for_account_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_delegated_administrators_response() :: %{
        "DelegatedAdministrators" => list(delegated_administrator()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_delegated_administrators_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_policy_type_response() :: %{
        "Root" => root()
      }
      
  """
  @type enable_policy_type_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_all_features_request() :: %{}
      
  """
  @type enable_all_features_request() :: %{}

  @typedoc """

  ## Example:
      
      put_resource_policy_response() :: %{
        "ResourcePolicy" => resource_policy()
      }
      
  """
  @type put_resource_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      destination_parent_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type destination_parent_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      source_parent_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type source_parent_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_for_dependency_exception() :: %{
        "Message" => String.t(),
        "Reason" => list(any())
      }
      
  """
  @type access_denied_for_dependency_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_delegated_services_for_account_response() :: %{
        "DelegatedServices" => list(delegated_service()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_delegated_services_for_account_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_account_response() :: %{
        "CreateAccountStatus" => create_account_status()
      }
      
  """
  @type create_account_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_changes_in_progress_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type policy_changes_in_progress_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disable_aws_service_access_request() :: %{
        required("ServicePrincipal") => String.t()
      }
      
  """
  @type disable_aws_service_access_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parent() :: %{
        "Id" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type parent() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_accounts_for_parent_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ParentId") => String.t()
      }
      
  """
  @type list_accounts_for_parent_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_policy_summary() :: %{
        "Arn" => String.t(),
        "Id" => String.t()
      }
      
  """
  @type resource_policy_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_policy_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_policy_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_aws_service_access_request() :: %{
        required("ServicePrincipal") => String.t()
      }
      
  """
  @type enable_aws_service_access_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_gov_cloud_account_request() :: %{
        optional("IamUserAccessToBilling") => list(any()),
        optional("RoleName") => String.t(),
        optional("Tags") => list(tag()()),
        required("AccountName") => String.t(),
        required("Email") => String.t()
      }
      
  """
  @type create_gov_cloud_account_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_handshake_response() :: %{
        "Handshake" => handshake()
      }
      
  """
  @type describe_handshake_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_accounts_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_accounts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_handshakes_for_account_request() :: %{
        optional("Filter") => handshake_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_handshakes_for_account_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_create_account_status_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("States") => list(list(any())())
      }
      
  """
  @type list_create_account_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delegated_administrator() :: %{
        "Arn" => String.t(),
        "DelegationEnabledDate" => non_neg_integer(),
        "Email" => String.t(),
        "Id" => String.t(),
        "JoinedMethod" => list(any()),
        "JoinedTimestamp" => non_neg_integer(),
        "Name" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type delegated_administrator() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_type_summary() :: %{
        "Status" => list(any()),
        "Type" => list(any())
      }
      
  """
  @type policy_type_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_handshake_request() :: %{
        required("HandshakeId") => String.t()
      }
      
  """
  @type describe_handshake_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_policy_response() :: %{
        "Policy" => policy()
      }
      
  """
  @type describe_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_type_already_enabled_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type policy_type_already_enabled_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_organization_request() :: %{
        optional("FeatureSet") => list(any())
      }
      
  """
  @type create_organization_request() :: %{String.t() => any()}

  @type accept_handshake_errors() ::
          access_denied_for_dependency_exception()
          | concurrent_modification_exception()
          | invalid_handshake_transition_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | handshake_already_in_state_exception()
          | handshake_not_found_exception()
          | too_many_requests_exception()
          | aws_organizations_not_in_use_exception()
          | handshake_constraint_violation_exception()

  @type attach_policy_errors() ::
          policy_changes_in_progress_exception()
          | target_not_found_exception()
          | constraint_violation_exception()
          | concurrent_modification_exception()
          | policy_type_not_enabled_exception()
          | access_denied_exception()
          | unsupported_api_endpoint_exception()
          | invalid_input_exception()
          | service_exception()
          | policy_not_found_exception()
          | duplicate_policy_attachment_exception()
          | too_many_requests_exception()
          | aws_organizations_not_in_use_exception()

  @type cancel_handshake_errors() ::
          concurrent_modification_exception()
          | invalid_handshake_transition_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | handshake_already_in_state_exception()
          | handshake_not_found_exception()
          | too_many_requests_exception()

  @type close_account_errors() ::
          constraint_violation_exception()
          | concurrent_modification_exception()
          | access_denied_exception()
          | unsupported_api_endpoint_exception()
          | account_not_found_exception()
          | invalid_input_exception()
          | service_exception()
          | account_already_closed_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | aws_organizations_not_in_use_exception()

  @type create_account_errors() ::
          constraint_violation_exception()
          | concurrent_modification_exception()
          | access_denied_exception()
          | unsupported_api_endpoint_exception()
          | invalid_input_exception()
          | service_exception()
          | too_many_requests_exception()
          | aws_organizations_not_in_use_exception()
          | finalizing_organization_exception()

  @type create_gov_cloud_account_errors() ::
          constraint_violation_exception()
          | concurrent_modification_exception()
          | access_denied_exception()
          | unsupported_api_endpoint_exception()
          | invalid_input_exception()
          | service_exception()
          | too_many_requests_exception()
          | aws_organizations_not_in_use_exception()
          | finalizing_organization_exception()

  @type create_organization_errors() ::
          access_denied_for_dependency_exception()
          | constraint_violation_exception()
          | concurrent_modification_exception()
          | access_denied_exception()
          | already_in_organization_exception()
          | invalid_input_exception()
          | service_exception()
          | too_many_requests_exception()

  @type create_organizational_unit_errors() ::
          constraint_violation_exception()
          | concurrent_modification_exception()
          | access_denied_exception()
          | parent_not_found_exception()
          | invalid_input_exception()
          | service_exception()
          | too_many_requests_exception()
          | duplicate_organizational_unit_exception()
          | aws_organizations_not_in_use_exception()

  @type create_policy_errors() ::
          malformed_policy_document_exception()
          | constraint_violation_exception()
          | concurrent_modification_exception()
          | access_denied_exception()
          | unsupported_api_endpoint_exception()
          | invalid_input_exception()
          | service_exception()
          | duplicate_policy_exception()
          | too_many_requests_exception()
          | policy_type_not_available_for_organization_exception()
          | aws_organizations_not_in_use_exception()

  @type decline_handshake_errors() ::
          concurrent_modification_exception()
          | invalid_handshake_transition_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | handshake_already_in_state_exception()
          | handshake_not_found_exception()
          | too_many_requests_exception()

  @type delete_organization_errors() ::
          concurrent_modification_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | organization_not_empty_exception()
          | too_many_requests_exception()
          | aws_organizations_not_in_use_exception()

  @type delete_organizational_unit_errors() ::
          concurrent_modification_exception()
          | access_denied_exception()
          | organizational_unit_not_empty_exception()
          | invalid_input_exception()
          | service_exception()
          | too_many_requests_exception()
          | aws_organizations_not_in_use_exception()
          | organizational_unit_not_found_exception()

  @type delete_policy_errors() ::
          policy_in_use_exception()
          | concurrent_modification_exception()
          | access_denied_exception()
          | unsupported_api_endpoint_exception()
          | invalid_input_exception()
          | service_exception()
          | policy_not_found_exception()
          | too_many_requests_exception()
          | aws_organizations_not_in_use_exception()

  @type delete_resource_policy_errors() ::
          resource_policy_not_found_exception()
          | constraint_violation_exception()
          | concurrent_modification_exception()
          | access_denied_exception()
          | unsupported_api_endpoint_exception()
          | service_exception()
          | too_many_requests_exception()
          | aws_organizations_not_in_use_exception()

  @type deregister_delegated_administrator_errors() ::
          constraint_violation_exception()
          | concurrent_modification_exception()
          | access_denied_exception()
          | unsupported_api_endpoint_exception()
          | account_not_found_exception()
          | invalid_input_exception()
          | service_exception()
          | account_not_registered_exception()
          | too_many_requests_exception()
          | aws_organizations_not_in_use_exception()

  @type describe_account_errors() ::
          access_denied_exception()
          | account_not_found_exception()
          | invalid_input_exception()
          | service_exception()
          | too_many_requests_exception()
          | aws_organizations_not_in_use_exception()

  @type describe_create_account_status_errors() ::
          access_denied_exception()
          | unsupported_api_endpoint_exception()
          | invalid_input_exception()
          | service_exception()
          | too_many_requests_exception()
          | create_account_status_not_found_exception()
          | aws_organizations_not_in_use_exception()

  @type describe_effective_policy_errors() ::
          target_not_found_exception()
          | constraint_violation_exception()
          | access_denied_exception()
          | unsupported_api_endpoint_exception()
          | effective_policy_not_found_exception()
          | invalid_input_exception()
          | service_exception()
          | too_many_requests_exception()
          | aws_organizations_not_in_use_exception()

  @type describe_handshake_errors() ::
          concurrent_modification_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | handshake_not_found_exception()
          | too_many_requests_exception()

  @type describe_organization_errors() ::
          concurrent_modification_exception()
          | access_denied_exception()
          | service_exception()
          | too_many_requests_exception()
          | aws_organizations_not_in_use_exception()

  @type describe_organizational_unit_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | too_many_requests_exception()
          | aws_organizations_not_in_use_exception()
          | organizational_unit_not_found_exception()

  @type describe_policy_errors() ::
          access_denied_exception()
          | unsupported_api_endpoint_exception()
          | invalid_input_exception()
          | service_exception()
          | policy_not_found_exception()
          | too_many_requests_exception()
          | aws_organizations_not_in_use_exception()

  @type describe_resource_policy_errors() ::
          resource_policy_not_found_exception()
          | constraint_violation_exception()
          | access_denied_exception()
          | unsupported_api_endpoint_exception()
          | service_exception()
          | too_many_requests_exception()
          | aws_organizations_not_in_use_exception()

  @type detach_policy_errors() ::
          policy_changes_in_progress_exception()
          | policy_not_attached_exception()
          | target_not_found_exception()
          | constraint_violation_exception()
          | concurrent_modification_exception()
          | access_denied_exception()
          | unsupported_api_endpoint_exception()
          | invalid_input_exception()
          | service_exception()
          | policy_not_found_exception()
          | too_many_requests_exception()
          | aws_organizations_not_in_use_exception()

  @type disable_aws_service_access_errors() ::
          constraint_violation_exception()
          | concurrent_modification_exception()
          | access_denied_exception()
          | unsupported_api_endpoint_exception()
          | invalid_input_exception()
          | service_exception()
          | too_many_requests_exception()
          | aws_organizations_not_in_use_exception()

  @type disable_policy_type_errors() ::
          policy_changes_in_progress_exception()
          | constraint_violation_exception()
          | concurrent_modification_exception()
          | policy_type_not_enabled_exception()
          | access_denied_exception()
          | unsupported_api_endpoint_exception()
          | root_not_found_exception()
          | invalid_input_exception()
          | service_exception()
          | too_many_requests_exception()
          | aws_organizations_not_in_use_exception()

  @type enable_all_features_errors() ::
          concurrent_modification_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | too_many_requests_exception()
          | aws_organizations_not_in_use_exception()
          | handshake_constraint_violation_exception()

  @type enable_aws_service_access_errors() ::
          constraint_violation_exception()
          | concurrent_modification_exception()
          | access_denied_exception()
          | unsupported_api_endpoint_exception()
          | invalid_input_exception()
          | service_exception()
          | too_many_requests_exception()
          | aws_organizations_not_in_use_exception()

  @type enable_policy_type_errors() ::
          policy_type_already_enabled_exception()
          | policy_changes_in_progress_exception()
          | constraint_violation_exception()
          | concurrent_modification_exception()
          | access_denied_exception()
          | unsupported_api_endpoint_exception()
          | root_not_found_exception()
          | invalid_input_exception()
          | service_exception()
          | too_many_requests_exception()
          | policy_type_not_available_for_organization_exception()
          | aws_organizations_not_in_use_exception()

  @type invite_account_to_organization_errors() ::
          account_owner_not_verified_exception()
          | constraint_violation_exception()
          | concurrent_modification_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | too_many_requests_exception()
          | aws_organizations_not_in_use_exception()
          | finalizing_organization_exception()
          | duplicate_handshake_exception()
          | handshake_constraint_violation_exception()

  @type leave_organization_errors() ::
          constraint_violation_exception()
          | concurrent_modification_exception()
          | access_denied_exception()
          | master_cannot_leave_organization_exception()
          | account_not_found_exception()
          | invalid_input_exception()
          | service_exception()
          | too_many_requests_exception()
          | aws_organizations_not_in_use_exception()

  @type list_accounts_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | too_many_requests_exception()
          | aws_organizations_not_in_use_exception()

  @type list_accounts_for_parent_errors() ::
          access_denied_exception()
          | parent_not_found_exception()
          | invalid_input_exception()
          | service_exception()
          | too_many_requests_exception()
          | aws_organizations_not_in_use_exception()

  @type list_aws_service_access_for_organization_errors() ::
          constraint_violation_exception()
          | access_denied_exception()
          | unsupported_api_endpoint_exception()
          | invalid_input_exception()
          | service_exception()
          | too_many_requests_exception()
          | aws_organizations_not_in_use_exception()

  @type list_children_errors() ::
          access_denied_exception()
          | parent_not_found_exception()
          | invalid_input_exception()
          | service_exception()
          | too_many_requests_exception()
          | aws_organizations_not_in_use_exception()

  @type list_create_account_status_errors() ::
          access_denied_exception()
          | unsupported_api_endpoint_exception()
          | invalid_input_exception()
          | service_exception()
          | too_many_requests_exception()
          | aws_organizations_not_in_use_exception()

  @type list_delegated_administrators_errors() ::
          constraint_violation_exception()
          | access_denied_exception()
          | unsupported_api_endpoint_exception()
          | invalid_input_exception()
          | service_exception()
          | too_many_requests_exception()
          | aws_organizations_not_in_use_exception()

  @type list_delegated_services_for_account_errors() ::
          constraint_violation_exception()
          | access_denied_exception()
          | unsupported_api_endpoint_exception()
          | account_not_found_exception()
          | invalid_input_exception()
          | service_exception()
          | account_not_registered_exception()
          | too_many_requests_exception()
          | aws_organizations_not_in_use_exception()

  @type list_handshakes_for_account_errors() ::
          concurrent_modification_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | too_many_requests_exception()

  @type list_handshakes_for_organization_errors() ::
          concurrent_modification_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | too_many_requests_exception()
          | aws_organizations_not_in_use_exception()

  @type list_organizational_units_for_parent_errors() ::
          access_denied_exception()
          | parent_not_found_exception()
          | invalid_input_exception()
          | service_exception()
          | too_many_requests_exception()
          | aws_organizations_not_in_use_exception()

  @type list_parents_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | child_not_found_exception()
          | too_many_requests_exception()
          | aws_organizations_not_in_use_exception()

  @type list_policies_errors() ::
          access_denied_exception()
          | unsupported_api_endpoint_exception()
          | invalid_input_exception()
          | service_exception()
          | too_many_requests_exception()
          | aws_organizations_not_in_use_exception()

  @type list_policies_for_target_errors() ::
          target_not_found_exception()
          | access_denied_exception()
          | unsupported_api_endpoint_exception()
          | invalid_input_exception()
          | service_exception()
          | too_many_requests_exception()
          | aws_organizations_not_in_use_exception()

  @type list_roots_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | too_many_requests_exception()
          | aws_organizations_not_in_use_exception()

  @type list_tags_for_resource_errors() ::
          target_not_found_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | too_many_requests_exception()
          | aws_organizations_not_in_use_exception()

  @type list_targets_for_policy_errors() ::
          access_denied_exception()
          | unsupported_api_endpoint_exception()
          | invalid_input_exception()
          | service_exception()
          | policy_not_found_exception()
          | too_many_requests_exception()
          | aws_organizations_not_in_use_exception()

  @type move_account_errors() ::
          source_parent_not_found_exception()
          | destination_parent_not_found_exception()
          | concurrent_modification_exception()
          | access_denied_exception()
          | account_not_found_exception()
          | invalid_input_exception()
          | service_exception()
          | too_many_requests_exception()
          | aws_organizations_not_in_use_exception()
          | duplicate_account_exception()

  @type put_resource_policy_errors() ::
          constraint_violation_exception()
          | concurrent_modification_exception()
          | access_denied_exception()
          | unsupported_api_endpoint_exception()
          | invalid_input_exception()
          | service_exception()
          | too_many_requests_exception()
          | aws_organizations_not_in_use_exception()

  @type register_delegated_administrator_errors() ::
          account_already_registered_exception()
          | constraint_violation_exception()
          | concurrent_modification_exception()
          | access_denied_exception()
          | unsupported_api_endpoint_exception()
          | account_not_found_exception()
          | invalid_input_exception()
          | service_exception()
          | too_many_requests_exception()
          | aws_organizations_not_in_use_exception()

  @type remove_account_from_organization_errors() ::
          constraint_violation_exception()
          | concurrent_modification_exception()
          | access_denied_exception()
          | master_cannot_leave_organization_exception()
          | account_not_found_exception()
          | invalid_input_exception()
          | service_exception()
          | too_many_requests_exception()
          | aws_organizations_not_in_use_exception()

  @type tag_resource_errors() ::
          target_not_found_exception()
          | constraint_violation_exception()
          | concurrent_modification_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | too_many_requests_exception()
          | aws_organizations_not_in_use_exception()

  @type untag_resource_errors() ::
          target_not_found_exception()
          | constraint_violation_exception()
          | concurrent_modification_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | too_many_requests_exception()
          | aws_organizations_not_in_use_exception()

  @type update_organizational_unit_errors() ::
          concurrent_modification_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | too_many_requests_exception()
          | duplicate_organizational_unit_exception()
          | aws_organizations_not_in_use_exception()
          | organizational_unit_not_found_exception()

  @type update_policy_errors() ::
          policy_changes_in_progress_exception()
          | malformed_policy_document_exception()
          | constraint_violation_exception()
          | concurrent_modification_exception()
          | access_denied_exception()
          | unsupported_api_endpoint_exception()
          | invalid_input_exception()
          | service_exception()
          | duplicate_policy_exception()
          | policy_not_found_exception()
          | too_many_requests_exception()
          | aws_organizations_not_in_use_exception()

  def metadata do
    %{
      api_version: "2016-11-28",
      content_type: "application/x-amz-json-1.1",
      credential_scope: "us-east-1",
      endpoint_prefix: "organizations",
      global?: true,
      hostname: "organizations.us-east-1.amazonaws.com",
      protocol: "json",
      service_id: "Organizations",
      signature_version: "v4",
      signing_name: "organizations",
      target_prefix: "AWSOrganizationsV20161128"
    }
  end

  @doc """
  Sends a response to the originator of a handshake agreeing to the action
  proposed by the handshake request. You can only call this operation by the
  following principals when they also have the relevant IAM permissions:
  """
  @spec accept_handshake(AWS.Client.t(), accept_handshake_request(), Keyword.t()) ::
          {:ok, accept_handshake_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, accept_handshake_errors()}
  def accept_handshake(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AcceptHandshake", input, options)
  end

  @doc """
  Attaches a policy to a root, an organizational unit (OU), or an individual
  account. How the policy affects accounts depends on the type of policy. Refer
  to the *Organizations User Guide* for information about each policy type:
  """
  @spec attach_policy(AWS.Client.t(), attach_policy_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, attach_policy_errors()}
  def attach_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AttachPolicy", input, options)
  end

  @doc """
  Cancels a handshake. Canceling a handshake sets the handshake state to
  `CANCELED`. This operation can be called only from the account that originated
  the handshake. The recipient of the handshake can't cancel it, but can use
  `DeclineHandshake` instead. After a handshake is canceled, the recipient can
  no longer respond to that handshake.
  """
  @spec cancel_handshake(AWS.Client.t(), cancel_handshake_request(), Keyword.t()) ::
          {:ok, cancel_handshake_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_handshake_errors()}
  def cancel_handshake(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CancelHandshake", input, options)
  end

  @doc """
  Closes an Amazon Web Services member account within an organization. You can
  close an account when [all features are enabled
  ](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html).
  You can't close the management account with this API. This is an asynchronous
  request that Amazon Web Services performs in the background. Because
  `CloseAccount` operates asynchronously, it can return a successful completion
  message even though account closure might still be in progress. You need to
  wait a few minutes before the account is fully closed. To check the status of
  the request, do one of the following: *
  """
  @spec close_account(AWS.Client.t(), close_account_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, close_account_errors()}
  def close_account(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CloseAccount", input, options)
  end

  @doc """
  Creates an Amazon Web Services account that is automatically a member of the
  organization whose credentials made the request. This is an asynchronous
  request that Amazon Web Services performs in the background. Because
  `CreateAccount` operates asynchronously, it can return a successful completion
  message even though account initialization might still be in progress. You
  might need to wait a few minutes before you can successfully access the
  account. To check the status of the request, do one of the following:
  """
  @spec create_account(AWS.Client.t(), create_account_request(), Keyword.t()) ::
          {:ok, create_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_account_errors()}
  def create_account(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateAccount", input, options)
  end

  @doc """
  This action is available if all of the following are true:
  """
  @spec create_gov_cloud_account(AWS.Client.t(), create_gov_cloud_account_request(), Keyword.t()) ::
          {:ok, create_gov_cloud_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_gov_cloud_account_errors()}
  def create_gov_cloud_account(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateGovCloudAccount", input, options)
  end

  @doc """
  Creates an Amazon Web Services organization. The account whose user is calling
  the `CreateOrganization` operation automatically becomes the [management
  account](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#account)
  of the new organization. This operation must be called using credentials from
  the account that is to become the new organization's management account. The
  principal must also have the relevant IAM permissions.
  """
  @spec create_organization(AWS.Client.t(), create_organization_request(), Keyword.t()) ::
          {:ok, create_organization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_organization_errors()}
  def create_organization(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateOrganization", input, options)
  end

  @doc """
  Creates an organizational unit (OU) within a root or parent OU. An OU is a
  container for accounts that enables you to organize your accounts to apply
  policies according to your business requirements. The number of levels deep
  that you can nest OUs is dependent upon the policy types enabled for that
  root. For service control policies, the limit is five. For more information
  about OUs, see [Managing organizational units
  (OUs)](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_ous.html)
  in the *Organizations User Guide*.
  """
  @spec create_organizational_unit(
          AWS.Client.t(),
          create_organizational_unit_request(),
          Keyword.t()
        ) ::
          {:ok, create_organizational_unit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_organizational_unit_errors()}
  def create_organizational_unit(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateOrganizationalUnit", input, options)
  end

  @doc """
  Creates a policy of a specified type that you can attach to a root, an
  organizational unit (OU), or an individual Amazon Web Services account. For
  more information about policies and their use, see [Managing Organizations
  policies](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies.html).
  """
  @spec create_policy(AWS.Client.t(), create_policy_request(), Keyword.t()) ::
          {:ok, create_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_policy_errors()}
  def create_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreatePolicy", input, options)
  end

  @doc """
  Declines a handshake request. This sets the handshake state to `DECLINED` and
  effectively deactivates the request. This operation can be called only from
  the account that received the handshake. The originator of the handshake can
  use `CancelHandshake` instead. The originator can't reactivate a declined
  request, but can reinitiate the process with a new handshake request.
  """
  @spec decline_handshake(AWS.Client.t(), decline_handshake_request(), Keyword.t()) ::
          {:ok, decline_handshake_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, decline_handshake_errors()}
  def decline_handshake(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeclineHandshake", input, options)
  end

  @doc """
  Deletes the organization. You can delete an organization only by using
  credentials from the management account. The organization must be empty of
  member accounts.
  """
  @spec delete_organization(AWS.Client.t(), %{}, Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_organization_errors()}
  def delete_organization(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteOrganization", input, options)
  end

  @doc """
  Deletes an organizational unit (OU) from a root or another OU. You must first
  remove all accounts and child OUs from the OU that you want to delete.
  """
  @spec delete_organizational_unit(
          AWS.Client.t(),
          delete_organizational_unit_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_organizational_unit_errors()}
  def delete_organizational_unit(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteOrganizationalUnit", input, options)
  end

  @doc """
  Deletes the specified policy from your organization. Before you perform this
  operation, you must first detach the policy from all organizational units
  (OUs), roots, and accounts.
  """
  @spec delete_policy(AWS.Client.t(), delete_policy_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_policy_errors()}
  def delete_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeletePolicy", input, options)
  end

  @doc """
  Deletes the resource policy from your organization.
  """
  @spec delete_resource_policy(AWS.Client.t(), %{}, Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_resource_policy_errors()}
  def delete_resource_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteResourcePolicy", input, options)
  end

  @doc """
  Removes the specified member Amazon Web Services account as a delegated
  administrator for the specified Amazon Web Services service. Deregistering a
  delegated administrator can have unintended impacts on the functionality of
  the enabled Amazon Web Services service. See the documentation for the enabled
  service before you deregister a delegated administrator so that you understand
  any potential impacts.
  """
  @spec deregister_delegated_administrator(
          AWS.Client.t(),
          deregister_delegated_administrator_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deregister_delegated_administrator_errors()}
  def deregister_delegated_administrator(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeregisterDelegatedAdministrator", input, options)
  end

  @doc """
  Retrieves Organizations-related information about the specified account.
  """
  @spec describe_account(AWS.Client.t(), describe_account_request(), Keyword.t()) ::
          {:ok, describe_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_account_errors()}
  def describe_account(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeAccount", input, options)
  end

  @doc """
  Retrieves the current status of an asynchronous request to create an account.
  """
  @spec describe_create_account_status(
          AWS.Client.t(),
          describe_create_account_status_request(),
          Keyword.t()
        ) ::
          {:ok, describe_create_account_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_create_account_status_errors()}
  def describe_create_account_status(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeCreateAccountStatus", input, options)
  end

  @doc """
  Returns the contents of the effective policy for specified policy type and
  account. The effective policy is the aggregation of any policies of the
  specified type that the account inherits, plus any policy of that type that is
  directly attached to the account. This operation applies only to policy types
  *other* than service control policies (SCPs).
  """
  @spec describe_effective_policy(
          AWS.Client.t(),
          describe_effective_policy_request(),
          Keyword.t()
        ) ::
          {:ok, describe_effective_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_effective_policy_errors()}
  def describe_effective_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeEffectivePolicy", input, options)
  end

  @doc """
  Retrieves information about a previously requested handshake. The handshake ID
  comes from the response to the original `InviteAccountToOrganization`
  operation that generated the handshake. You can access handshakes that are
  `ACCEPTED`, `DECLINED`, or `CANCELED` for only 30 days after they change to
  that state. They're then deleted and no longer accessible.
  """
  @spec describe_handshake(AWS.Client.t(), describe_handshake_request(), Keyword.t()) ::
          {:ok, describe_handshake_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_handshake_errors()}
  def describe_handshake(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeHandshake", input, options)
  end

  @doc """
  Retrieves information about the organization that the user's account belongs to.
  This operation can be called from any account in the organization.
  """
  @spec describe_organization(AWS.Client.t(), %{}, Keyword.t()) ::
          {:ok, describe_organization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_organization_errors()}
  def describe_organization(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeOrganization", input, options)
  end

  @doc """
  Retrieves information about an organizational unit (OU).
  """
  @spec describe_organizational_unit(
          AWS.Client.t(),
          describe_organizational_unit_request(),
          Keyword.t()
        ) ::
          {:ok, describe_organizational_unit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_organizational_unit_errors()}
  def describe_organizational_unit(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeOrganizationalUnit", input, options)
  end

  @doc """
  Retrieves information about a policy.
  """
  @spec describe_policy(AWS.Client.t(), describe_policy_request(), Keyword.t()) ::
          {:ok, describe_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_policy_errors()}
  def describe_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribePolicy", input, options)
  end

  @doc """
  Retrieves information about a resource policy.
  """
  @spec describe_resource_policy(AWS.Client.t(), %{}, Keyword.t()) ::
          {:ok, describe_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_resource_policy_errors()}
  def describe_resource_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeResourcePolicy", input, options)
  end

  @doc """
  Detaches a policy from a target root, organizational unit (OU), or account. If
  the policy being detached is a service control policy (SCP), the changes to
  permissions for Identity and Access Management (IAM) users and roles in
  affected accounts are immediate.
  """
  @spec detach_policy(AWS.Client.t(), detach_policy_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, detach_policy_errors()}
  def detach_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DetachPolicy", input, options)
  end

  @doc """
  Disables the integration of an Amazon Web Services service (the service that is
  specified by `ServicePrincipal`) with Organizations. When you disable
  integration, the specified service no longer can create a [service-linked
  role](https://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html)
  in *new* accounts in your organization. This means the service can't perform
  operations on your behalf on any new accounts in your organization. The
  service can still perform operations in older accounts until the service
  completes its clean-up from Organizations. We ** *strongly recommend* ** that
  you don't use this command to disable integration between Organizations and
  the specified Amazon Web Services service. Instead, use the console or
  commands that are provided by the specified service. This lets the trusted
  service perform any required initialization when enabling trusted access, such
  as creating any required resources and any required clean up of resources when
  disabling trusted access. For information about how to disable trusted service
  access to your organization using the trusted service, see the **Learn more**
  link under the **Supports Trusted Access** column at [Amazon Web Services
  services that you can use with
  Organizations](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services_list.html).
  on this page. If you disable access by using this command, it causes the
  following actions to occur: The service can no longer create a service-linked
  role in the accounts in your organization. This means that the service can't
  perform operations on your behalf on any new accounts in your organization.
  The service can still perform operations in older accounts until the service
  completes its clean-up from Organizations. The service can no longer perform
  tasks in the member accounts in the organization, unless those operations are
  explicitly permitted by the IAM policies that are attached to your roles. This
  includes any data aggregation from the member accounts to the management
  account, or to a delegated administrator account, where relevant. Some
  services detect this and clean up any remaining data or resources related to
  the integration, while other services stop accessing the organization but
  leave any historical data and configuration in place to support a possible
  re-enabling of the integration. Using the other service's console or commands
  to disable the integration ensures that the other service is aware that it can
  clean up any resources that are required only for the integration. How the
  service cleans up its resources in the organization's accounts depends on that
  service. For more information, see the documentation for the other Amazon Web
  Services service. After you perform the `DisableAWSServiceAccess` operation,
  the specified service can no longer perform operations in your organization's
  accounts
  """
  @spec disable_aws_service_access(
          AWS.Client.t(),
          disable_aws_service_access_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disable_aws_service_access_errors()}
  def disable_aws_service_access(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisableAWSServiceAccess", input, options)
  end

  @doc """
  Disables an organizational policy type in a root. A policy of a certain type can
  be attached to entities in a root only if that type is enabled in the root.
  After you perform this operation, you no longer can attach policies of the
  specified type to that root or to any organizational unit (OU) or account in
  that root. You can undo this by using the `EnablePolicyType` operation. This
  is an asynchronous request that Amazon Web Services performs in the
  background. If you disable a policy type for a root, it still appears enabled
  for the organization if [all
  features](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html)
  are enabled for the organization. Amazon Web Services recommends that you
  first use `ListRoots` to see the status of policy types for a specified root,
  and then use this operation.
  """
  @spec disable_policy_type(AWS.Client.t(), disable_policy_type_request(), Keyword.t()) ::
          {:ok, disable_policy_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disable_policy_type_errors()}
  def disable_policy_type(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisablePolicyType", input, options)
  end

  @doc """
  Enables all features in an organization. This enables the use of organization
  policies that can restrict the services and actions that can be called in each
  account. Until you enable all features, you have access only to consolidated
  billing, and you can't use any of the advanced account administration features
  that Organizations supports. For more information, see [Enabling all features
  in your
  organization](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html)
  in the *Organizations User Guide*. This operation is required only for
  organizations that were created explicitly with only the consolidated billing
  features enabled. Calling this operation sends a handshake to every invited
  account in the organization. The feature set change can be finalized and the
  additional features enabled only after all administrators in the invited
  accounts approve the change by accepting the handshake.
  """
  @spec enable_all_features(AWS.Client.t(), enable_all_features_request(), Keyword.t()) ::
          {:ok, enable_all_features_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, enable_all_features_errors()}
  def enable_all_features(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "EnableAllFeatures", input, options)
  end

  @doc """
  Enables the integration of an Amazon Web Services service (the service that is
  specified by `ServicePrincipal`) with Organizations. When you enable
  integration, you allow the specified service to create a [service-linked
  role](https://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html)
  in all the accounts in your organization. This allows the service to perform
  operations on your behalf in your organization and its accounts. We recommend
  that you enable integration between Organizations and the specified Amazon Web
  Services service by using the console or commands that are provided by the
  specified service. Doing so ensures that the service is aware that it can
  create the resources that are required for the integration. How the service
  creates those resources in the organization's accounts depends on that
  service. For more information, see the documentation for the other Amazon Web
  Services service. For more information about enabling services to integrate
  with Organizations, see [Using Organizations with other Amazon Web Services
  services](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html)
  in the *Organizations User Guide*.
  """
  @spec enable_aws_service_access(
          AWS.Client.t(),
          enable_aws_service_access_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, enable_aws_service_access_errors()}
  def enable_aws_service_access(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "EnableAWSServiceAccess", input, options)
  end

  @doc """
  Enables a policy type in a root. After you enable a policy type in a root, you
  can attach policies of that type to the root, any organizational unit (OU), or
  account in that root. You can undo this by using the `DisablePolicyType`
  operation. This is an asynchronous request that Amazon Web Services performs
  in the background. Amazon Web Services recommends that you first use
  `ListRoots` to see the status of policy types for a specified root, and then
  use this operation.
  """
  @spec enable_policy_type(AWS.Client.t(), enable_policy_type_request(), Keyword.t()) ::
          {:ok, enable_policy_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, enable_policy_type_errors()}
  def enable_policy_type(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "EnablePolicyType", input, options)
  end

  @doc """
  Sends an invitation to another account to join your organization as a member
  account. Organizations sends email on your behalf to the email address that is
  associated with the other account's owner. The invitation is implemented as a
  `Handshake` whose details are in the response. You can invite Amazon Web
  Services accounts only from the same seller as the management account. For
  example, if your organization's management account was created by Amazon
  Internet Services Pvt. Ltd (AISPL), an Amazon Web Services seller in India,
  you can invite only other AISPL accounts to your organization. You can't
  combine accounts from AISPL and Amazon Web Services or from any other Amazon
  Web Services seller. For more information, see [Consolidated billing in
  India](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/useconsolidatedbilling-India.html).
  If you receive an exception that indicates that you exceeded your account
  limits for the organization or that the operation failed because your
  organization is still initializing, wait one hour and then try again. If the
  error persists after an hour, contact [Amazon Web Services
  Support](https://console.aws.amazon.com/support/home#/).
  """
  @spec invite_account_to_organization(
          AWS.Client.t(),
          invite_account_to_organization_request(),
          Keyword.t()
        ) ::
          {:ok, invite_account_to_organization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invite_account_to_organization_errors()}
  def invite_account_to_organization(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "InviteAccountToOrganization", input, options)
  end

  @doc """
  Removes a member account from its parent organization. This version of the
  operation is performed by the account that wants to leave. To remove a member
  account as a user in the management account, use
  `RemoveAccountFromOrganization` instead. This operation can be called only
  from a member account in the organization.
  """
  @spec leave_organization(AWS.Client.t(), %{}, Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, leave_organization_errors()}
  def leave_organization(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "LeaveOrganization", input, options)
  end

  @doc """
  Lists all the accounts in the organization. To request only the accounts in a
  specified root or organizational unit (OU), use the `ListAccountsForParent`
  operation instead. Always check the `NextToken` response parameter for a
  `null` value when calling a `List*` operation. These operations can
  occasionally return an empty set of results even when there are more results
  available. The `NextToken` response parameter value is `null` *only* when
  there are no more results to display.
  """
  @spec list_accounts(AWS.Client.t(), list_accounts_request(), Keyword.t()) ::
          {:ok, list_accounts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_accounts_errors()}
  def list_accounts(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAccounts", input, options)
  end

  @doc """
  Lists the accounts in an organization that are contained by the specified target
  root or organizational unit (OU). If you specify the root, you get a list of
  all the accounts that aren't in any OU. If you specify an OU, you get a list
  of all the accounts in only that OU and not in any child OUs. To get a list of
  all accounts in the organization, use the `ListAccounts` operation. Always
  check the `NextToken` response parameter for a `null` value when calling a
  `List*` operation. These operations can occasionally return an empty set of
  results even when there are more results available. The `NextToken` response
  parameter value is `null` *only* when there are no more results to display.
  """
  @spec list_accounts_for_parent(AWS.Client.t(), list_accounts_for_parent_request(), Keyword.t()) ::
          {:ok, list_accounts_for_parent_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_accounts_for_parent_errors()}
  def list_accounts_for_parent(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAccountsForParent", input, options)
  end

  @doc """
  Returns a list of the Amazon Web Services services that you enabled to integrate
  with your organization. After a service on this list creates the resources
  that it requires for the integration, it can perform operations on your
  organization and its accounts. For more information about integrating other
  services with Organizations, including the list of services that currently
  work with Organizations, see [Using Organizations with other Amazon Web
  Services
  services](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html)
  in the *Organizations User Guide*.
  """
  @spec list_aws_service_access_for_organization(
          AWS.Client.t(),
          list_aws_service_access_for_organization_request(),
          Keyword.t()
        ) ::
          {:ok, list_aws_service_access_for_organization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_aws_service_access_for_organization_errors()}
  def list_aws_service_access_for_organization(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAWSServiceAccessForOrganization", input, options)
  end

  @doc """
  Lists all of the organizational units (OUs) or accounts that are contained in
  the specified parent OU or root. This operation, along with `ListParents`
  enables you to traverse the tree structure that makes up this root. Always
  check the `NextToken` response parameter for a `null` value when calling a
  `List*` operation. These operations can occasionally return an empty set of
  results even when there are more results available. The `NextToken` response
  parameter value is `null` *only* when there are no more results to display.
  """
  @spec list_children(AWS.Client.t(), list_children_request(), Keyword.t()) ::
          {:ok, list_children_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_children_errors()}
  def list_children(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListChildren", input, options)
  end

  @doc """
  Lists the account creation requests that match the specified status that is
  currently being tracked for the organization. Always check the `NextToken`
  response parameter for a `null` value when calling a `List*` operation. These
  operations can occasionally return an empty set of results even when there are
  more results available. The `NextToken` response parameter value is `null`
  *only* when there are no more results to display.
  """
  @spec list_create_account_status(
          AWS.Client.t(),
          list_create_account_status_request(),
          Keyword.t()
        ) ::
          {:ok, list_create_account_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_create_account_status_errors()}
  def list_create_account_status(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListCreateAccountStatus", input, options)
  end

  @doc """
  Lists the Amazon Web Services accounts that are designated as delegated
  administrators in this organization.
  """
  @spec list_delegated_administrators(
          AWS.Client.t(),
          list_delegated_administrators_request(),
          Keyword.t()
        ) ::
          {:ok, list_delegated_administrators_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_delegated_administrators_errors()}
  def list_delegated_administrators(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListDelegatedAdministrators", input, options)
  end

  @doc """
  List the Amazon Web Services services for which the specified account is a
  delegated administrator.
  """
  @spec list_delegated_services_for_account(
          AWS.Client.t(),
          list_delegated_services_for_account_request(),
          Keyword.t()
        ) ::
          {:ok, list_delegated_services_for_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_delegated_services_for_account_errors()}
  def list_delegated_services_for_account(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListDelegatedServicesForAccount", input, options)
  end

  @doc """
  Lists the current handshakes that are associated with the account of the
  requesting user. Handshakes that are `ACCEPTED`, `DECLINED`, `CANCELED`, or
  `EXPIRED` appear in the results of this API for only 30 days after changing to
  that state. After that, they're deleted and no longer accessible.
  """
  @spec list_handshakes_for_account(
          AWS.Client.t(),
          list_handshakes_for_account_request(),
          Keyword.t()
        ) ::
          {:ok, list_handshakes_for_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_handshakes_for_account_errors()}
  def list_handshakes_for_account(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListHandshakesForAccount", input, options)
  end

  @doc """
  Lists the handshakes that are associated with the organization that the
  requesting user is part of. The `ListHandshakesForOrganization` operation
  returns a list of handshake structures. Each structure contains details and
  status about a handshake. Handshakes that are `ACCEPTED`, `DECLINED`,
  `CANCELED`, or `EXPIRED` appear in the results of this API for only 30 days
  after changing to that state. After that, they're deleted and no longer
  accessible.
  """
  @spec list_handshakes_for_organization(
          AWS.Client.t(),
          list_handshakes_for_organization_request(),
          Keyword.t()
        ) ::
          {:ok, list_handshakes_for_organization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_handshakes_for_organization_errors()}
  def list_handshakes_for_organization(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListHandshakesForOrganization", input, options)
  end

  @doc """
  Lists the organizational units (OUs) in a parent organizational unit or root.
  Always check the `NextToken` response parameter for a `null` value when
  calling a `List*` operation. These operations can occasionally return an empty
  set of results even when there are more results available. The `NextToken`
  response parameter value is `null` *only* when there are no more results to
  display.
  """
  @spec list_organizational_units_for_parent(
          AWS.Client.t(),
          list_organizational_units_for_parent_request(),
          Keyword.t()
        ) ::
          {:ok, list_organizational_units_for_parent_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_organizational_units_for_parent_errors()}
  def list_organizational_units_for_parent(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListOrganizationalUnitsForParent", input, options)
  end

  @doc """
  Lists the root or organizational units (OUs) that serve as the immediate parent
  of the specified child OU or account. This operation, along with
  `ListChildren` enables you to traverse the tree structure that makes up this
  root. Always check the `NextToken` response parameter for a `null` value when
  calling a `List*` operation. These operations can occasionally return an empty
  set of results even when there are more results available. The `NextToken`
  response parameter value is `null` *only* when there are no more results to
  display.
  """
  @spec list_parents(AWS.Client.t(), list_parents_request(), Keyword.t()) ::
          {:ok, list_parents_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_parents_errors()}
  def list_parents(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListParents", input, options)
  end

  @doc """
  Retrieves the list of all policies in an organization of a specified type.
  Always check the `NextToken` response parameter for a `null` value when
  calling a `List*` operation. These operations can occasionally return an empty
  set of results even when there are more results available. The `NextToken`
  response parameter value is `null` *only* when there are no more results to
  display.
  """
  @spec list_policies(AWS.Client.t(), list_policies_request(), Keyword.t()) ::
          {:ok, list_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_policies_errors()}
  def list_policies(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListPolicies", input, options)
  end

  @doc """
  Lists the policies that are directly attached to the specified target root,
  organizational unit (OU), or account. You must specify the policy type that
  you want included in the returned list. Always check the `NextToken` response
  parameter for a `null` value when calling a `List*` operation. These
  operations can occasionally return an empty set of results even when there are
  more results available. The `NextToken` response parameter value is `null`
  *only* when there are no more results to display.
  """
  @spec list_policies_for_target(AWS.Client.t(), list_policies_for_target_request(), Keyword.t()) ::
          {:ok, list_policies_for_target_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_policies_for_target_errors()}
  def list_policies_for_target(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListPoliciesForTarget", input, options)
  end

  @doc """
  Lists the roots that are defined in the current organization. Always check the
  `NextToken` response parameter for a `null` value when calling a `List*`
  operation. These operations can occasionally return an empty set of results
  even when there are more results available. The `NextToken` response parameter
  value is `null` *only* when there are no more results to display.
  """
  @spec list_roots(AWS.Client.t(), list_roots_request(), Keyword.t()) ::
          {:ok, list_roots_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_roots_errors()}
  def list_roots(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListRoots", input, options)
  end

  @doc """
  Lists tags that are attached to the specified resource. You can attach tags to
  the following resources in Organizations.
  """
  @spec list_tags_for_resource(AWS.Client.t(), list_tags_for_resource_request(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Lists all the roots, organizational units (OUs), and accounts that the specified
  policy is attached to. Always check the `NextToken` response parameter for a
  `null` value when calling a `List*` operation. These operations can
  occasionally return an empty set of results even when there are more results
  available. The `NextToken` response parameter value is `null` *only* when
  there are no more results to display.
  """
  @spec list_targets_for_policy(AWS.Client.t(), list_targets_for_policy_request(), Keyword.t()) ::
          {:ok, list_targets_for_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_targets_for_policy_errors()}
  def list_targets_for_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTargetsForPolicy", input, options)
  end

  @doc """
  Moves an account from its current source parent root or organizational unit (OU)
  to the specified destination parent root or OU.
  """
  @spec move_account(AWS.Client.t(), move_account_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, move_account_errors()}
  def move_account(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "MoveAccount", input, options)
  end

  @doc """
  Creates or updates a resource policy.
  """
  @spec put_resource_policy(AWS.Client.t(), put_resource_policy_request(), Keyword.t()) ::
          {:ok, put_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_resource_policy_errors()}
  def put_resource_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutResourcePolicy", input, options)
  end

  @doc """
  Enables the specified member account to administer the Organizations features of
  the specified Amazon Web Services service. It grants read-only access to
  Organizations service data. The account still requires IAM permissions to
  access and administer the Amazon Web Services service. You can run this action
  only for Amazon Web Services services that support this feature. For a current
  list of services that support it, see the column *Supports Delegated
  Administrator* in the table at [Amazon Web Services Services that you can use
  with
  Organizations](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services_list.html)
  in the *Organizations User Guide.*
  """
  @spec register_delegated_administrator(
          AWS.Client.t(),
          register_delegated_administrator_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_delegated_administrator_errors()}
  def register_delegated_administrator(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RegisterDelegatedAdministrator", input, options)
  end

  @doc """
  Removes the specified account from the organization. The removed account becomes
  a standalone account that isn't a member of any organization. It's no longer
  subject to any policies and is responsible for its own bill payments. The
  organization's management account is no longer charged for any expenses
  accrued by the member account after it's removed from the organization.
  """
  @spec remove_account_from_organization(
          AWS.Client.t(),
          remove_account_from_organization_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, remove_account_from_organization_errors()}
  def remove_account_from_organization(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RemoveAccountFromOrganization", input, options)
  end

  @doc """
  Adds one or more tags to the specified resource. Currently, you can attach tags
  to the following resources in Organizations.
  """
  @spec tag_resource(AWS.Client.t(), tag_resource_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes any tags with the specified keys from the specified resource. You can
  attach tags to the following resources in Organizations.
  """
  @spec untag_resource(AWS.Client.t(), untag_resource_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Renames the specified organizational unit (OU). The ID and ARN don't change. The
  child OUs and accounts remain in place, and any attached policies of the OU
  remain attached.
  """
  @spec update_organizational_unit(
          AWS.Client.t(),
          update_organizational_unit_request(),
          Keyword.t()
        ) ::
          {:ok, update_organizational_unit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_organizational_unit_errors()}
  def update_organizational_unit(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateOrganizationalUnit", input, options)
  end

  @doc """
  Updates an existing policy with a new name, description, or content. If you
  don't supply any parameter, that value remains unchanged. You can't change a
  policy's type.
  """
  @spec update_policy(AWS.Client.t(), update_policy_request(), Keyword.t()) ::
          {:ok, update_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_policy_errors()}
  def update_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdatePolicy", input, options)
  end
end
