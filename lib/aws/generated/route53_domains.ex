# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Route53Domains do
  @moduledoc """
  Amazon Route 53 API actions let you register domain names and perform related
  operations.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      check_domain_transferability_request() :: %{
        optional("AuthCode") => String.t(),
        required("DomainName") => String.t()
      }
      
  """
  @type check_domain_transferability_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_domain_detail_response() :: %{
        "AbuseContactEmail" => String.t(),
        "AbuseContactPhone" => String.t(),
        "AdminContact" => contact_detail(),
        "AdminPrivacy" => boolean(),
        "AutoRenew" => boolean(),
        "BillingContact" => contact_detail(),
        "BillingPrivacy" => boolean(),
        "CreationDate" => non_neg_integer(),
        "DnsSec" => String.t(),
        "DnssecKeys" => list(dnssec_key()()),
        "DomainName" => String.t(),
        "ExpirationDate" => non_neg_integer(),
        "Nameservers" => list(nameserver()()),
        "RegistrantContact" => contact_detail(),
        "RegistrantPrivacy" => boolean(),
        "RegistrarName" => String.t(),
        "RegistrarUrl" => String.t(),
        "RegistryDomainId" => String.t(),
        "Reseller" => String.t(),
        "StatusList" => list(String.t()()),
        "TechContact" => contact_detail(),
        "TechPrivacy" => boolean(),
        "UpdatedDate" => non_neg_integer(),
        "WhoIsServer" => String.t()
      }
      
  """
  @type get_domain_detail_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disable_domain_auto_renew_request() :: %{
        required("DomainName") => String.t()
      }
      
  """
  @type disable_domain_auto_renew_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_domain_response() :: %{
        "OperationId" => String.t()
      }
      
  """
  @type delete_domain_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_operation_detail_request() :: %{
        required("OperationId") => String.t()
      }
      
  """
  @type get_operation_detail_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      check_domain_transferability_response() :: %{
        "Message" => String.t(),
        "Transferability" => domain_transferability()
      }
      
  """
  @type check_domain_transferability_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reject_domain_transfer_from_another_aws_account_response() :: %{
        "OperationId" => String.t()
      }
      
  """
  @type reject_domain_transfer_from_another_aws_account_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      check_domain_availability_response() :: %{
        "Availability" => list(any())
      }
      
  """
  @type check_domain_availability_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_domain_nameservers_response() :: %{
        "OperationId" => String.t()
      }
      
  """
  @type update_domain_nameservers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_domain_contact_response() :: %{
        "OperationId" => String.t()
      }
      
  """
  @type update_domain_contact_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      filter_condition() :: %{
        "Name" => list(any()),
        "Operator" => list(any()),
        "Values" => list(String.t()())
      }
      
  """
  @type filter_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_input() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      domain_transferability() :: %{
        "Transferable" => list(any())
      }
      
  """
  @type domain_transferability() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      nameserver() :: %{
        "GlueIps" => list(String.t()()),
        "Name" => String.t()
      }
      
  """
  @type nameserver() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_prices_response() :: %{
        "NextPageMarker" => String.t(),
        "Prices" => list(domain_price()())
      }
      
  """
  @type list_prices_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      billing_record() :: %{
        "BillDate" => non_neg_integer(),
        "DomainName" => String.t(),
        "InvoiceId" => String.t(),
        "Operation" => list(any()),
        "Price" => float()
      }
      
  """
  @type billing_record() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dnssec_key() :: %{
        "Algorithm" => integer(),
        "Digest" => String.t(),
        "DigestType" => integer(),
        "Flags" => integer(),
        "Id" => String.t(),
        "KeyTag" => integer(),
        "PublicKey" => String.t()
      }
      
  """
  @type dnssec_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_contact_reachability_status_response() :: %{
        "domainName" => String.t(),
        "status" => list(any())
      }
      
  """
  @type get_contact_reachability_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      domain_summary() :: %{
        "AutoRenew" => boolean(),
        "DomainName" => String.t(),
        "Expiry" => non_neg_integer(),
        "TransferLock" => boolean()
      }
      
  """
  @type domain_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_domain_detail_request() :: %{
        required("DomainName") => String.t()
      }
      
  """
  @type get_domain_detail_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      contact_detail() :: %{
        "AddressLine1" => String.t(),
        "AddressLine2" => String.t(),
        "City" => String.t(),
        "ContactType" => list(any()),
        "CountryCode" => list(any()),
        "Email" => String.t(),
        "ExtraParams" => list(extra_param()()),
        "Fax" => String.t(),
        "FirstName" => String.t(),
        "LastName" => String.t(),
        "OrganizationName" => String.t(),
        "PhoneNumber" => String.t(),
        "State" => String.t(),
        "ZipCode" => String.t()
      }
      
  """
  @type contact_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_domain_response() :: %{
        "TagList" => list(tag()())
      }
      
  """
  @type list_tags_for_domain_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_domain_request() :: %{
        optional("AutoRenew") => boolean(),
        optional("BillingContact") => contact_detail(),
        optional("IdnLangCode") => String.t(),
        optional("PrivacyProtectAdminContact") => boolean(),
        optional("PrivacyProtectBillingContact") => boolean(),
        optional("PrivacyProtectRegistrantContact") => boolean(),
        optional("PrivacyProtectTechContact") => boolean(),
        required("AdminContact") => contact_detail(),
        required("DomainName") => String.t(),
        required("DurationInYears") => integer(),
        required("RegistrantContact") => contact_detail(),
        required("TechContact") => contact_detail()
      }
      
  """
  @type register_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      extra_param() :: %{
        "Name" => list(any()),
        "Value" => String.t()
      }
      
  """
  @type extra_param() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_tags_for_domain_response() :: %{}
      
  """
  @type delete_tags_for_domain_response() :: %{}

  @typedoc """

  ## Example:
      
      update_domain_nameservers_request() :: %{
        optional("FIAuthKey") => String.t(),
        required("DomainName") => String.t(),
        required("Nameservers") => list(nameserver()())
      }
      
  """
  @type update_domain_nameservers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      accept_domain_transfer_from_another_aws_account_request() :: %{
        required("DomainName") => String.t(),
        required("Password") => String.t()
      }
      
  """
  @type accept_domain_transfer_from_another_aws_account_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_domain_response() :: %{
        "OperationId" => String.t()
      }
      
  """
  @type register_domain_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      operation_summary() :: %{
        "DomainName" => String.t(),
        "LastUpdatedDate" => non_neg_integer(),
        "Message" => String.t(),
        "OperationId" => String.t(),
        "Status" => list(any()),
        "StatusFlag" => list(any()),
        "SubmittedDate" => non_neg_integer(),
        "Type" => list(any())
      }
      
  """
  @type operation_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      transfer_domain_to_another_aws_account_response() :: %{
        "OperationId" => String.t(),
        "Password" => String.t()
      }
      
  """
  @type transfer_domain_to_another_aws_account_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      operation_limit_exceeded() :: %{
        "message" => String.t()
      }
      
  """
  @type operation_limit_exceeded() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_domain_auto_renew_request() :: %{
        required("DomainName") => String.t()
      }
      
  """
  @type enable_domain_auto_renew_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disable_domain_transfer_lock_response() :: %{
        "OperationId" => String.t()
      }
      
  """
  @type disable_domain_transfer_lock_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_domain_suggestions_response() :: %{
        "SuggestionsList" => list(domain_suggestion()())
      }
      
  """
  @type get_domain_suggestions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_tags_for_domain_response() :: %{}
      
  """
  @type update_tags_for_domain_response() :: %{}

  @typedoc """

  ## Example:
      
      transfer_domain_request() :: %{
        optional("AuthCode") => String.t(),
        optional("AutoRenew") => boolean(),
        optional("BillingContact") => contact_detail(),
        optional("IdnLangCode") => String.t(),
        optional("Nameservers") => list(nameserver()()),
        optional("PrivacyProtectAdminContact") => boolean(),
        optional("PrivacyProtectBillingContact") => boolean(),
        optional("PrivacyProtectRegistrantContact") => boolean(),
        optional("PrivacyProtectTechContact") => boolean(),
        required("AdminContact") => contact_detail(),
        required("DomainName") => String.t(),
        required("DurationInYears") => integer(),
        required("RegistrantContact") => contact_detail(),
        required("TechContact") => contact_detail()
      }
      
  """
  @type transfer_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_domain_transfer_lock_request() :: %{
        required("DomainName") => String.t()
      }
      
  """
  @type enable_domain_transfer_lock_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disable_domain_auto_renew_response() :: %{}
      
  """
  @type disable_domain_auto_renew_response() :: %{}

  @typedoc """

  ## Example:
      
      domain_suggestion() :: %{
        "Availability" => String.t(),
        "DomainName" => String.t()
      }
      
  """
  @type domain_suggestion() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      view_billing_response() :: %{
        "BillingRecords" => list(billing_record()()),
        "NextPageMarker" => String.t()
      }
      
  """
  @type view_billing_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_domain_contact_privacy_request() :: %{
        optional("AdminPrivacy") => boolean(),
        optional("BillingPrivacy") => boolean(),
        optional("RegistrantPrivacy") => boolean(),
        optional("TechPrivacy") => boolean(),
        required("DomainName") => String.t()
      }
      
  """
  @type update_domain_contact_privacy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_domain_request() :: %{
        required("DomainName") => String.t()
      }
      
  """
  @type delete_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resend_contact_reachability_email_request() :: %{
        optional("domainName") => String.t()
      }
      
  """
  @type resend_contact_reachability_email_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_tags_for_domain_request() :: %{
        optional("TagsToUpdate") => list(tag()()),
        required("DomainName") => String.t()
      }
      
  """
  @type update_tags_for_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      accept_domain_transfer_from_another_aws_account_response() :: %{
        "OperationId" => String.t()
      }
      
  """
  @type accept_domain_transfer_from_another_aws_account_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_operations_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any()),
        optional("Status") => list(list(any())()),
        optional("SubmittedSince") => non_neg_integer(),
        optional("Type") => list(list(any())())
      }
      
  """
  @type list_operations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dnssec_signing_attributes() :: %{
        "Algorithm" => integer(),
        "Flags" => integer(),
        "PublicKey" => String.t()
      }
      
  """
  @type dnssec_signing_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_operation_detail_response() :: %{
        "DomainName" => String.t(),
        "LastUpdatedDate" => non_neg_integer(),
        "Message" => String.t(),
        "OperationId" => String.t(),
        "Status" => list(any()),
        "StatusFlag" => list(any()),
        "SubmittedDate" => non_neg_integer(),
        "Type" => list(any())
      }
      
  """
  @type get_operation_detail_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      retrieve_domain_auth_code_response() :: %{
        "AuthCode" => String.t()
      }
      
  """
  @type retrieve_domain_auth_code_response() :: %{String.t() => any()}

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
      
      view_billing_request() :: %{
        optional("End") => non_neg_integer(),
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        optional("Start") => non_neg_integer()
      }
      
  """
  @type view_billing_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_domains_response() :: %{
        "Domains" => list(domain_summary()()),
        "NextPageMarker" => String.t()
      }
      
  """
  @type list_domains_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_delegation_signer_to_domain_response() :: %{
        "OperationId" => String.t()
      }
      
  """
  @type associate_delegation_signer_to_domain_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_domain_auto_renew_response() :: %{}
      
  """
  @type enable_domain_auto_renew_response() :: %{}

  @typedoc """

  ## Example:
      
      renew_domain_response() :: %{
        "OperationId" => String.t()
      }
      
  """
  @type renew_domain_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_t_l_d() :: %{
        "message" => String.t()
      }
      
  """
  @type unsupported_t_l_d() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      duplicate_request() :: %{
        "message" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type duplicate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      t_l_d_rules_violation() :: %{
        "message" => String.t()
      }
      
  """
  @type t_l_d_rules_violation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_domain_transfer_lock_response() :: %{
        "OperationId" => String.t()
      }
      
  """
  @type enable_domain_transfer_lock_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_domain_contact_privacy_response() :: %{
        "OperationId" => String.t()
      }
      
  """
  @type update_domain_contact_privacy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_delegation_signer_to_domain_request() :: %{
        required("DomainName") => String.t(),
        required("SigningAttributes") => dnssec_signing_attributes()
      }
      
  """
  @type associate_delegation_signer_to_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      retrieve_domain_auth_code_request() :: %{
        required("DomainName") => String.t()
      }
      
  """
  @type retrieve_domain_auth_code_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resend_contact_reachability_email_response() :: %{
        "domainName" => String.t(),
        "emailAddress" => String.t(),
        "isAlreadyVerified" => boolean()
      }
      
  """
  @type resend_contact_reachability_email_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_domains_request() :: %{
        optional("FilterConditions") => list(filter_condition()()),
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        optional("SortCondition") => sort_condition()
      }
      
  """
  @type list_domains_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dnssec_limit_exceeded() :: %{
        "message" => String.t()
      }
      
  """
  @type dnssec_limit_exceeded() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resend_operation_authorization_request() :: %{
        required("OperationId") => String.t()
      }
      
  """
  @type resend_operation_authorization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_delegation_signer_from_domain_response() :: %{
        "OperationId" => String.t()
      }
      
  """
  @type disassociate_delegation_signer_from_domain_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_operations_response() :: %{
        "NextPageMarker" => String.t(),
        "Operations" => list(operation_summary()())
      }
      
  """
  @type list_operations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_domain_contact_request() :: %{
        optional("AdminContact") => contact_detail(),
        optional("BillingContact") => contact_detail(),
        optional("Consent") => consent(),
        optional("RegistrantContact") => contact_detail(),
        optional("TechContact") => contact_detail(),
        required("DomainName") => String.t()
      }
      
  """
  @type update_domain_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_domain_transfer_to_another_aws_account_request() :: %{
        required("DomainName") => String.t()
      }
      
  """
  @type cancel_domain_transfer_to_another_aws_account_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      domain_price() :: %{
        "ChangeOwnershipPrice" => price_with_currency(),
        "Name" => String.t(),
        "RegistrationPrice" => price_with_currency(),
        "RenewalPrice" => price_with_currency(),
        "RestorationPrice" => price_with_currency(),
        "TransferPrice" => price_with_currency()
      }
      
  """
  @type domain_price() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      renew_domain_request() :: %{
        optional("DurationInYears") => integer(),
        required("CurrentExpiryYear") => integer(),
        required("DomainName") => String.t()
      }
      
  """
  @type renew_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      check_domain_availability_request() :: %{
        optional("IdnLangCode") => String.t(),
        required("DomainName") => String.t()
      }
      
  """
  @type check_domain_availability_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_tags_for_domain_request() :: %{
        required("DomainName") => String.t(),
        required("TagsToDelete") => list(String.t()())
      }
      
  """
  @type delete_tags_for_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      push_domain_request() :: %{
        required("DomainName") => String.t(),
        required("Target") => String.t()
      }
      
  """
  @type push_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_domain_request() :: %{
        required("DomainName") => String.t()
      }
      
  """
  @type list_tags_for_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      domain_limit_exceeded() :: %{
        "message" => String.t()
      }
      
  """
  @type domain_limit_exceeded() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disable_domain_transfer_lock_request() :: %{
        required("DomainName") => String.t()
      }
      
  """
  @type disable_domain_transfer_lock_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      transfer_domain_to_another_aws_account_request() :: %{
        required("AccountId") => String.t(),
        required("DomainName") => String.t()
      }
      
  """
  @type transfer_domain_to_another_aws_account_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_contact_reachability_status_request() :: %{
        optional("domainName") => String.t()
      }
      
  """
  @type get_contact_reachability_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      price_with_currency() :: %{
        "Currency" => String.t(),
        "Price" => float()
      }
      
  """
  @type price_with_currency() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_delegation_signer_from_domain_request() :: %{
        required("DomainName") => String.t(),
        required("Id") => String.t()
      }
      
  """
  @type disassociate_delegation_signer_from_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reject_domain_transfer_from_another_aws_account_request() :: %{
        required("DomainName") => String.t()
      }
      
  """
  @type reject_domain_transfer_from_another_aws_account_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      consent() :: %{
        "Currency" => String.t(),
        "MaxPrice" => float()
      }
      
  """
  @type consent() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_prices_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        optional("Tld") => String.t()
      }
      
  """
  @type list_prices_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_domain_transfer_to_another_aws_account_response() :: %{
        "OperationId" => String.t()
      }
      
  """
  @type cancel_domain_transfer_to_another_aws_account_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      transfer_domain_response() :: %{
        "OperationId" => String.t()
      }
      
  """
  @type transfer_domain_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_domain_suggestions_request() :: %{
        required("DomainName") => String.t(),
        required("OnlyAvailable") => boolean(),
        required("SuggestionCount") => integer()
      }
      
  """
  @type get_domain_suggestions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sort_condition() :: %{
        "Name" => list(any()),
        "SortOrder" => list(any())
      }
      
  """
  @type sort_condition() :: %{String.t() => any()}

  @type accept_domain_transfer_from_another_aws_account_errors() ::
          domain_limit_exceeded()
          | unsupported_t_l_d()
          | operation_limit_exceeded()
          | invalid_input()

  @type associate_delegation_signer_to_domain_errors() ::
          dnssec_limit_exceeded()
          | t_l_d_rules_violation()
          | duplicate_request()
          | unsupported_t_l_d()
          | operation_limit_exceeded()
          | invalid_input()

  @type cancel_domain_transfer_to_another_aws_account_errors() ::
          unsupported_t_l_d() | operation_limit_exceeded() | invalid_input()

  @type check_domain_availability_errors() :: unsupported_t_l_d() | invalid_input()

  @type check_domain_transferability_errors() :: unsupported_t_l_d() | invalid_input()

  @type delete_domain_errors() ::
          t_l_d_rules_violation() | duplicate_request() | unsupported_t_l_d() | invalid_input()

  @type delete_tags_for_domain_errors() ::
          unsupported_t_l_d() | operation_limit_exceeded() | invalid_input()

  @type disable_domain_auto_renew_errors() :: unsupported_t_l_d() | invalid_input()

  @type disable_domain_transfer_lock_errors() ::
          t_l_d_rules_violation()
          | duplicate_request()
          | unsupported_t_l_d()
          | operation_limit_exceeded()
          | invalid_input()

  @type disassociate_delegation_signer_from_domain_errors() ::
          t_l_d_rules_violation()
          | duplicate_request()
          | unsupported_t_l_d()
          | operation_limit_exceeded()
          | invalid_input()

  @type enable_domain_auto_renew_errors() ::
          t_l_d_rules_violation() | unsupported_t_l_d() | invalid_input()

  @type enable_domain_transfer_lock_errors() ::
          t_l_d_rules_violation()
          | duplicate_request()
          | unsupported_t_l_d()
          | operation_limit_exceeded()
          | invalid_input()

  @type get_contact_reachability_status_errors() ::
          unsupported_t_l_d() | operation_limit_exceeded() | invalid_input()

  @type get_domain_detail_errors() :: unsupported_t_l_d() | invalid_input()

  @type get_domain_suggestions_errors() :: unsupported_t_l_d() | invalid_input()

  @type get_operation_detail_errors() :: invalid_input()

  @type list_domains_errors() :: invalid_input()

  @type list_operations_errors() :: invalid_input()

  @type list_prices_errors() :: unsupported_t_l_d() | invalid_input()

  @type list_tags_for_domain_errors() ::
          unsupported_t_l_d() | operation_limit_exceeded() | invalid_input()

  @type push_domain_errors() :: unsupported_t_l_d() | operation_limit_exceeded() | invalid_input()

  @type register_domain_errors() ::
          domain_limit_exceeded()
          | t_l_d_rules_violation()
          | duplicate_request()
          | unsupported_t_l_d()
          | operation_limit_exceeded()
          | invalid_input()

  @type reject_domain_transfer_from_another_aws_account_errors() ::
          unsupported_t_l_d() | operation_limit_exceeded() | invalid_input()

  @type renew_domain_errors() ::
          t_l_d_rules_violation()
          | duplicate_request()
          | unsupported_t_l_d()
          | operation_limit_exceeded()
          | invalid_input()

  @type resend_contact_reachability_email_errors() ::
          unsupported_t_l_d() | operation_limit_exceeded() | invalid_input()

  @type resend_operation_authorization_errors() :: invalid_input()

  @type retrieve_domain_auth_code_errors() :: unsupported_t_l_d() | invalid_input()

  @type transfer_domain_errors() ::
          domain_limit_exceeded()
          | t_l_d_rules_violation()
          | duplicate_request()
          | unsupported_t_l_d()
          | operation_limit_exceeded()
          | invalid_input()

  @type transfer_domain_to_another_aws_account_errors() ::
          duplicate_request() | unsupported_t_l_d() | operation_limit_exceeded() | invalid_input()

  @type update_domain_contact_errors() ::
          t_l_d_rules_violation()
          | duplicate_request()
          | unsupported_t_l_d()
          | operation_limit_exceeded()
          | invalid_input()

  @type update_domain_contact_privacy_errors() ::
          t_l_d_rules_violation()
          | duplicate_request()
          | unsupported_t_l_d()
          | operation_limit_exceeded()
          | invalid_input()

  @type update_domain_nameservers_errors() ::
          t_l_d_rules_violation()
          | duplicate_request()
          | unsupported_t_l_d()
          | operation_limit_exceeded()
          | invalid_input()

  @type update_tags_for_domain_errors() ::
          unsupported_t_l_d() | operation_limit_exceeded() | invalid_input()

  @type view_billing_errors() :: invalid_input()

  def metadata do
    %{
      api_version: "2014-05-15",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "route53domains",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Route 53 Domains",
      signature_version: "v4",
      signing_name: "route53domains",
      target_prefix: "Route53Domains_v20140515"
    }
  end

  @doc """
   
  Accepts the transfer of a domain from another Amazon Web Services account to the
  currentAmazon Web Services account. You initiate a transfer between Amazon Web
  Services accounts using
  [TransferDomainToAnotherAwsAccount](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html).
  If you use the CLI command at
  [accept-domain-transfer-from-another-aws-account](https://docs.aws.amazon.com/cli/latest/reference/route53domains/accept-domain-transfer-from-another-aws-account.html),
  use JSON format as input instead of text because otherwise CLI will throw an
  error from domain transfer input that includes single quotes.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53domains%20AcceptDomainTransferFromAnotherAwsAccount&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:accept_domain_transfer_from_another_aws_account_request`)
    %{
      required("DomainName") => String.t(),
      required("Password") => String.t()
    }
  """
  @spec accept_domain_transfer_from_another_aws_account(
          AWS.Client.t(),
          input :: map(),
          Keyword.t()
        ) ::
          {:ok, accept_domain_transfer_from_another_aws_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, accept_domain_transfer_from_another_aws_account_errors()}
  def accept_domain_transfer_from_another_aws_account(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(
      client,
      meta,
      "AcceptDomainTransferFromAnotherAwsAccount",
      input,
      options
    )
  end

  @doc """
   
  Creates a delegation signer (DS) record in the registry zone for this domain
  name.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53domains%20AssociateDelegationSignerToDomain&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:associate_delegation_signer_to_domain_request`)
    %{
      required("DomainName") => String.t(),
      required("SigningAttributes") => dnssec_signing_attributes()
    }
  """
  @spec associate_delegation_signer_to_domain(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, associate_delegation_signer_to_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_delegation_signer_to_domain_errors()}
  def associate_delegation_signer_to_domain(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssociateDelegationSignerToDomain", input, options)
  end

  @doc """
   
  Cancels the transfer of a domain from the current Amazon Web Services account to
  another Amazon Web Services account. You initiate a transfer betweenAmazon Web
  Services accounts using
  [TransferDomainToAnotherAwsAccount](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html).
  You must cancel the transfer before the other Amazon Web Services account
  accepts the transfer using
  [AcceptDomainTransferFromAnotherAwsAccount](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_AcceptDomainTransferFromAnotherAwsAccount.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53domains%20CancelDomainTransferToAnotherAwsAccount&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:cancel_domain_transfer_to_another_aws_account_request`)
    %{
      required("DomainName") => String.t()
    }
  """
  @spec cancel_domain_transfer_to_another_aws_account(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, cancel_domain_transfer_to_another_aws_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_domain_transfer_to_another_aws_account_errors()}
  def cancel_domain_transfer_to_another_aws_account(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CancelDomainTransferToAnotherAwsAccount", input, options)
  end

  @doc """
   
  This operation checks the availability of one domain name. Note that if the
  availability status of a domain is pending, you must submit another request to
  determine the availability of the domain name.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53domains%20CheckDomainAvailability&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:check_domain_availability_request`)
    %{
      optional("IdnLangCode") => String.t(),
      required("DomainName") => String.t()
    }
  """
  @spec check_domain_availability(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, check_domain_availability_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, check_domain_availability_errors()}
  def check_domain_availability(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CheckDomainAvailability", input, options)
  end

  @doc """
   
  Checks whether a domain name can be transferred to Amazon Route 53.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53domains%20CheckDomainTransferability&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:check_domain_transferability_request`)
    %{
      optional("AuthCode") => String.t(),
      required("DomainName") => String.t()
    }
  """
  @spec check_domain_transferability(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, check_domain_transferability_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, check_domain_transferability_errors()}
  def check_domain_transferability(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CheckDomainTransferability", input, options)
  end

  @doc """
   
  This operation deletes the specified domain. This action is permanent. For more
  information, see [Deleting a domain name
  registration](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-delete.html).
  To transfer the domain registration to another registrar, use the transfer
  process that’s provided by the registrar to which you want to transfer the
  registration. Otherwise, the following apply:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53domains%20DeleteDomain&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_domain_request`)
    %{
      required("DomainName") => String.t()
    }
  """
  @spec delete_domain(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_domain_errors()}
  def delete_domain(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteDomain", input, options)
  end

  @doc """
   
  This operation deletes the specified tags for a domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53domains%20DeleteTagsForDomain&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_tags_for_domain_request`)
    %{
      required("DomainName") => String.t(),
      required("TagsToDelete") => list(String.t()())
    }
  """
  @spec delete_tags_for_domain(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_tags_for_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_tags_for_domain_errors()}
  def delete_tags_for_domain(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteTagsForDomain", input, options)
  end

  @doc """
   
  This operation disables automatic renewal of domain registration for the
  specified domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53domains%20DisableDomainAutoRenew&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:disable_domain_auto_renew_request`)
    %{
      required("DomainName") => String.t()
    }
  """
  @spec disable_domain_auto_renew(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, disable_domain_auto_renew_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disable_domain_auto_renew_errors()}
  def disable_domain_auto_renew(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisableDomainAutoRenew", input, options)
  end

  @doc """
   
  This operation removes the transfer lock on the domain (specifically the
  `clientTransferProhibited` status) to allow domain transfers. We recommend you
  refrain from performing this action unless you intend to transfer the domain
  to a different registrar. Successful submission returns an operation ID that
  you can use to track the progress and completion of the action. If the request
  is not completed successfully, the domain registrant will be notified by
  email.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53domains%20DisableDomainTransferLock&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:disable_domain_transfer_lock_request`)
    %{
      required("DomainName") => String.t()
    }
  """
  @spec disable_domain_transfer_lock(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, disable_domain_transfer_lock_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disable_domain_transfer_lock_errors()}
  def disable_domain_transfer_lock(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisableDomainTransferLock", input, options)
  end

  @doc """
   
  Deletes a delegation signer (DS) record in the registry zone for this domain
  name.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53domains%20DisassociateDelegationSignerFromDomain&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:disassociate_delegation_signer_from_domain_request`)
    %{
      required("DomainName") => String.t(),
      required("Id") => String.t()
    }
  """
  @spec disassociate_delegation_signer_from_domain(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, disassociate_delegation_signer_from_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_delegation_signer_from_domain_errors()}
  def disassociate_delegation_signer_from_domain(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisassociateDelegationSignerFromDomain", input, options)
  end

  @doc """
   
  This operation configures Amazon Route 53 to automatically renew the specified
  domain before the domain registration expires. The cost of renewing your
  domain registration is billed to your Amazon Web Services account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53domains%20EnableDomainAutoRenew&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:enable_domain_auto_renew_request`)
    %{
      required("DomainName") => String.t()
    }
  """
  @spec enable_domain_auto_renew(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, enable_domain_auto_renew_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, enable_domain_auto_renew_errors()}
  def enable_domain_auto_renew(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "EnableDomainAutoRenew", input, options)
  end

  @doc """
   
  This operation sets the transfer lock on the domain (specifically the
  `clientTransferProhibited` status) to prevent domain transfers. Successful
  submission returns an operation ID that you can use to track the progress and
  completion of the action. If the request is not completed successfully, the
  domain registrant will be notified by email.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53domains%20EnableDomainTransferLock&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:enable_domain_transfer_lock_request`)
    %{
      required("DomainName") => String.t()
    }
  """
  @spec enable_domain_transfer_lock(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, enable_domain_transfer_lock_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, enable_domain_transfer_lock_errors()}
  def enable_domain_transfer_lock(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "EnableDomainTransferLock", input, options)
  end

  @doc """
   
  For operations that require confirmation that the email address for the
  registrant contact is valid, such as registering a new domain, this operation
  returns information about whether the registrant contact has responded.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53domains%20GetContactReachabilityStatus&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_contact_reachability_status_request`)
    %{
      optional("domainName") => String.t()
    }
  """
  @spec get_contact_reachability_status(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_contact_reachability_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_contact_reachability_status_errors()}
  def get_contact_reachability_status(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetContactReachabilityStatus", input, options)
  end

  @doc """
   
  This operation returns detailed information about a specified domain that is
  associated with the current Amazon Web Services account. Contact information
  for the domain is also returned as part of the output.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53domains%20GetDomainDetail&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_domain_detail_request`)
    %{
      required("DomainName") => String.t()
    }
  """
  @spec get_domain_detail(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_domain_detail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_domain_detail_errors()}
  def get_domain_detail(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDomainDetail", input, options)
  end

  @doc """
   
  The GetDomainSuggestions operation returns a list of suggested domain names.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53domains%20GetDomainSuggestions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_domain_suggestions_request`)
    %{
      required("DomainName") => String.t(),
      required("OnlyAvailable") => boolean(),
      required("SuggestionCount") => integer()
    }
  """
  @spec get_domain_suggestions(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_domain_suggestions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_domain_suggestions_errors()}
  def get_domain_suggestions(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDomainSuggestions", input, options)
  end

  @doc """
   
  This operation returns the current status of an operation that is not completed.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53domains%20GetOperationDetail&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_operation_detail_request`)
    %{
      required("OperationId") => String.t()
    }
  """
  @spec get_operation_detail(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_operation_detail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_operation_detail_errors()}
  def get_operation_detail(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetOperationDetail", input, options)
  end

  @doc """
   
  This operation returns all the domain names registered with Amazon Route 53 for
  the current Amazon Web Services account if no filtering conditions are used.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53domains%20ListDomains&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_domains_request`)
    %{
      optional("FilterConditions") => list(filter_condition()()),
      optional("Marker") => String.t(),
      optional("MaxItems") => integer(),
      optional("SortCondition") => sort_condition()
    }
  """
  @spec list_domains(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_domains_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_domains_errors()}
  def list_domains(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListDomains", input, options)
  end

  @doc """
   
  Returns information about all of the operations that return an operation ID and
  that have ever been performed on domains that were registered by the current
  account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53domains%20ListOperations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_operations_request`)
    %{
      optional("Marker") => String.t(),
      optional("MaxItems") => integer(),
      optional("SortBy") => list(any()),
      optional("SortOrder") => list(any()),
      optional("Status") => list(list(any())()),
      optional("SubmittedSince") => non_neg_integer(),
      optional("Type") => list(list(any())())
    }
  """
  @spec list_operations(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_operations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_operations_errors()}
  def list_operations(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListOperations", input, options)
  end

  @doc """
   
  Lists the following prices for either all the TLDs supported by Route 53, or the
  specified TLD:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53domains%20ListPrices&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_prices_request`)
    %{
      optional("Marker") => String.t(),
      optional("MaxItems") => integer(),
      optional("Tld") => String.t()
    }
  """
  @spec list_prices(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_prices_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_prices_errors()}
  def list_prices(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListPrices", input, options)
  end

  @doc """
   
  This operation returns all of the tags that are associated with the specified
  domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53domains%20ListTagsForDomain&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_tags_for_domain_request`)
    %{
      required("DomainName") => String.t()
    }
  """
  @spec list_tags_for_domain(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_tags_for_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_domain_errors()}
  def list_tags_for_domain(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsForDomain", input, options)
  end

  @doc """
   
  Moves a domain from Amazon Web Services to another registrar. Supported actions:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53domains%20PushDomain&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:push_domain_request`)
    %{
      required("DomainName") => String.t(),
      required("Target") => String.t()
    }
  """
  @spec push_domain(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, push_domain_errors()}
  def push_domain(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PushDomain", input, options)
  end

  @doc """
   
  This operation registers a domain. For some top-level domains (TLDs), this
  operation requires extra parameters. When you register a domain, Amazon Route
  53 does the following:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53domains%20RegisterDomain&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:register_domain_request`)
    %{
      optional("AutoRenew") => boolean(),
      optional("BillingContact") => contact_detail(),
      optional("IdnLangCode") => String.t(),
      optional("PrivacyProtectAdminContact") => boolean(),
      optional("PrivacyProtectBillingContact") => boolean(),
      optional("PrivacyProtectRegistrantContact") => boolean(),
      optional("PrivacyProtectTechContact") => boolean(),
      required("AdminContact") => contact_detail(),
      required("DomainName") => String.t(),
      required("DurationInYears") => integer(),
      required("RegistrantContact") => contact_detail(),
      required("TechContact") => contact_detail()
    }
  """
  @spec register_domain(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, register_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_domain_errors()}
  def register_domain(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "RegisterDomain", input, options)
  end

  @doc """
   
  Rejects the transfer of a domain from another Amazon Web Services account to the
  current Amazon Web Services account. You initiate a transfer betweenAmazon Web
  Services accounts using
  [TransferDomainToAnotherAwsAccount](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html).
  Use either
  [ListOperations](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ListOperations.html)
  or
  [GetOperationDetail](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html)
  to determine whether the operation succeeded.
  [GetOperationDetail](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html)
  provides additional information, for example, `Domain Transfer from Aws
  Account 111122223333 has been cancelled`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53domains%20RejectDomainTransferFromAnotherAwsAccount&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:reject_domain_transfer_from_another_aws_account_request`)
    %{
      required("DomainName") => String.t()
    }
  """
  @spec reject_domain_transfer_from_another_aws_account(
          AWS.Client.t(),
          input :: map(),
          Keyword.t()
        ) ::
          {:ok, reject_domain_transfer_from_another_aws_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reject_domain_transfer_from_another_aws_account_errors()}
  def reject_domain_transfer_from_another_aws_account(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(
      client,
      meta,
      "RejectDomainTransferFromAnotherAwsAccount",
      input,
      options
    )
  end

  @doc """
   
  This operation renews a domain for the specified number of years. The cost of
  renewing your domain is billed to your Amazon Web Services account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53domains%20RenewDomain&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:renew_domain_request`)
    %{
      optional("DurationInYears") => integer(),
      required("CurrentExpiryYear") => integer(),
      required("DomainName") => String.t()
    }
  """
  @spec renew_domain(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, renew_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, renew_domain_errors()}
  def renew_domain(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "RenewDomain", input, options)
  end

  @doc """
   
  For operations that require confirmation that the email address for the
  registrant contact is valid, such as registering a new domain, this operation
  resends the confirmation email to the current email address for the registrant
  contact.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53domains%20ResendContactReachabilityEmail&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:resend_contact_reachability_email_request`)
    %{
      optional("domainName") => String.t()
    }
  """
  @spec resend_contact_reachability_email(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, resend_contact_reachability_email_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resend_contact_reachability_email_errors()}
  def resend_contact_reachability_email(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ResendContactReachabilityEmail", input, options)
  end

  @doc """
   
  Resend the form of authorization email for this operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53domains%20ResendOperationAuthorization&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:resend_operation_authorization_request`)
    %{
      required("OperationId") => String.t()
    }
  """
  @spec resend_operation_authorization(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resend_operation_authorization_errors()}
  def resend_operation_authorization(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ResendOperationAuthorization", input, options)
  end

  @doc """
   
  This operation returns the authorization code for the domain. To transfer a
  domain to another registrar, you provide this value to the new registrar.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53domains%20RetrieveDomainAuthCode&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:retrieve_domain_auth_code_request`)
    %{
      required("DomainName") => String.t()
    }
  """
  @spec retrieve_domain_auth_code(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, retrieve_domain_auth_code_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, retrieve_domain_auth_code_errors()}
  def retrieve_domain_auth_code(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "RetrieveDomainAuthCode", input, options)
  end

  @doc """
   
  Transfers a domain from another registrar to Amazon Route 53. For more
  information about transferring domains, see the following topics:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53domains%20TransferDomain&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:transfer_domain_request`)
    %{
      optional("AuthCode") => String.t(),
      optional("AutoRenew") => boolean(),
      optional("BillingContact") => contact_detail(),
      optional("IdnLangCode") => String.t(),
      optional("Nameservers") => list(nameserver()()),
      optional("PrivacyProtectAdminContact") => boolean(),
      optional("PrivacyProtectBillingContact") => boolean(),
      optional("PrivacyProtectRegistrantContact") => boolean(),
      optional("PrivacyProtectTechContact") => boolean(),
      required("AdminContact") => contact_detail(),
      required("DomainName") => String.t(),
      required("DurationInYears") => integer(),
      required("RegistrantContact") => contact_detail(),
      required("TechContact") => contact_detail()
    }
  """
  @spec transfer_domain(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, transfer_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, transfer_domain_errors()}
  def transfer_domain(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "TransferDomain", input, options)
  end

  @doc """
   
  Transfers a domain from the current Amazon Web Services account to another
  Amazon Web Services account. Note the following:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53domains%20TransferDomainToAnotherAwsAccount&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:transfer_domain_to_another_aws_account_request`)
    %{
      required("AccountId") => String.t(),
      required("DomainName") => String.t()
    }
  """
  @spec transfer_domain_to_another_aws_account(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, transfer_domain_to_another_aws_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, transfer_domain_to_another_aws_account_errors()}
  def transfer_domain_to_another_aws_account(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "TransferDomainToAnotherAwsAccount", input, options)
  end

  @doc """
   
  This operation updates the contact information for a particular domain. You must
  specify information for at least one contact: registrant, administrator, or
  technical.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53domains%20UpdateDomainContact&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_domain_contact_request`)
    %{
      optional("AdminContact") => contact_detail(),
      optional("BillingContact") => contact_detail(),
      optional("Consent") => consent(),
      optional("RegistrantContact") => contact_detail(),
      optional("TechContact") => contact_detail(),
      required("DomainName") => String.t()
    }
  """
  @spec update_domain_contact(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_domain_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_domain_contact_errors()}
  def update_domain_contact(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateDomainContact", input, options)
  end

  @doc """
   
  This operation updates the specified domain contact's privacy setting. When
  privacy protection is enabled, your contact information is replaced with
  contact information for the registrar or with the phrase "REDACTED FOR
  PRIVACY", or "On behalf of owner." While some domains may allow different
  privacy settings per contact, we recommend specifying the same privacy setting
  for all contacts.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53domains%20UpdateDomainContactPrivacy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_domain_contact_privacy_request`)
    %{
      optional("AdminPrivacy") => boolean(),
      optional("BillingPrivacy") => boolean(),
      optional("RegistrantPrivacy") => boolean(),
      optional("TechPrivacy") => boolean(),
      required("DomainName") => String.t()
    }
  """
  @spec update_domain_contact_privacy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_domain_contact_privacy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_domain_contact_privacy_errors()}
  def update_domain_contact_privacy(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateDomainContactPrivacy", input, options)
  end

  @doc """
   
  This operation replaces the current set of name servers for the domain with the
  specified set of name servers. If you use Amazon Route 53 as your DNS service,
  specify the four name servers in the delegation set for the hosted zone for
  the domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53domains%20UpdateDomainNameservers&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_domain_nameservers_request`)
    %{
      optional("FIAuthKey") => String.t(),
      required("DomainName") => String.t(),
      required("Nameservers") => list(nameserver()())
    }
  """
  @spec update_domain_nameservers(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_domain_nameservers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_domain_nameservers_errors()}
  def update_domain_nameservers(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateDomainNameservers", input, options)
  end

  @doc """
   
  This operation adds or updates tags for a specified domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53domains%20UpdateTagsForDomain&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_tags_for_domain_request`)
    %{
      optional("TagsToUpdate") => list(tag()()),
      required("DomainName") => String.t()
    }
  """
  @spec update_tags_for_domain(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_tags_for_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_tags_for_domain_errors()}
  def update_tags_for_domain(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateTagsForDomain", input, options)
  end

  @doc """
   
  Returns all the domain-related billing records for the current Amazon Web
  Services account for a specified period

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=route53domains%20ViewBilling&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:view_billing_request`)
    %{
      optional("End") => non_neg_integer(),
      optional("Marker") => String.t(),
      optional("MaxItems") => integer(),
      optional("Start") => non_neg_integer()
    }
  """
  @spec view_billing(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, view_billing_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, view_billing_errors()}
  def view_billing(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ViewBilling", input, options)
  end
end
