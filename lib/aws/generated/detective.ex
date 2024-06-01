# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Detective do
  @moduledoc """
  Detective uses machine learning and purpose-built visualizations to help you to
  analyze and investigate security issues across your Amazon Web Services
  (Amazon Web Services) workloads. Detective automatically extracts time-based
  events such as login attempts, API calls, and network traffic from CloudTrail
  and Amazon Virtual Private Cloud (Amazon VPC) flow logs. It also extracts
  findings detected by Amazon GuardDuty. The Detective API primarily supports
  the creation and management of behavior graphs. A behavior graph contains the
  extracted data from a set of member accounts, and is created and managed by an
  administrator account.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      administrator() :: %{
        "AccountId" => String.t(),
        "DelegationTime" => non_neg_integer(),
        "GraphArn" => String.t()
      }

  """
  @type administrator() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_organization_configuration_request() :: %{
        required("GraphArn") => String.t()
      }

  """
  @type describe_organization_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_members_response() :: %{
        "MemberDetails" => list(member_detail()()),
        "UnprocessedAccounts" => list(unprocessed_account()())
      }

  """
  @type get_members_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      new_aso_detail() :: %{
        "Aso" => String.t(),
        "IsNewForEntireAccount" => boolean()
      }

  """
  @type new_aso_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      filter_criteria() :: %{
        "CreatedTime" => date_filter(),
        "EntityArn" => string_filter(),
        "Severity" => string_filter(),
        "State" => string_filter(),
        "Status" => string_filter()
      }

  """
  @type filter_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_datasource_packages_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("GraphArn") => String.t()
      }

  """
  @type list_datasource_packages_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_graph_request() :: %{
        optional("Tags") => map()
      }

  """
  @type create_graph_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      new_user_agent_detail() :: %{
        "IsNewForEntireAccount" => boolean(),
        "UserAgent" => String.t()
      }

  """
  @type new_user_agent_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_datasource_packages_request() :: %{
        required("DatasourcePackages") => list(list(any())()),
        required("GraphArn") => String.t()
      }

  """
  @type update_datasource_packages_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_investigation_request() :: %{
        required("EntityArn") => String.t(),
        required("GraphArn") => String.t(),
        required("ScopeEndTime") => non_neg_integer(),
        required("ScopeStartTime") => non_neg_integer()
      }

  """
  @type start_investigation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_investigation_response() :: %{
        "InvestigationId" => String.t()
      }

  """
  @type start_investigation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_requests_exception() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_graphs_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_graphs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_members_response() :: %{
        "AccountIds" => list(String.t()()),
        "UnprocessedAccounts" => list(unprocessed_account()())
      }

  """
  @type delete_members_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_investigations_response() :: %{
        "InvestigationDetails" => list(investigation_detail()()),
        "NextToken" => String.t()
      }

  """
  @type list_investigations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      related_finding_group_detail() :: %{
        "Id" => String.t()
      }

  """
  @type related_finding_group_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_organization_configuration_response() :: %{
        "AutoEnable" => boolean()
      }

  """
  @type describe_organization_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => String.t()
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

      list_investigations_request() :: %{
        optional("FilterCriteria") => filter_criteria(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SortCriteria") => sort_criteria(),
        required("GraphArn") => String.t()
      }

  """
  @type list_investigations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_members_request() :: %{
        required("AccountIds") => list(String.t()()),
        required("GraphArn") => String.t()
      }

  """
  @type get_members_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_members_request() :: %{
        optional("DisableEmailNotification") => boolean(),
        optional("Message") => String.t(),
        required("Accounts") => list(account()()),
        required("GraphArn") => String.t()
      }

  """
  @type create_members_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      graph() :: %{
        "Arn" => String.t(),
        "CreatedTime" => non_neg_integer()
      }

  """
  @type graph() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_graph_member_datasources_response() :: %{
        "MemberDatasources" => list(membership_datasources()()),
        "UnprocessedAccounts" => list(unprocessed_account()())
      }

  """
  @type batch_get_graph_member_datasources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "Message" => String.t(),
        "Resources" => list(String.t()())
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_members_request() :: %{
        required("AccountIds") => list(String.t()()),
        required("GraphArn") => String.t()
      }

  """
  @type delete_members_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      timestamp_for_collection() :: %{
        "Timestamp" => non_neg_integer()
      }

  """
  @type timestamp_for_collection() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      account() :: %{
        "AccountId" => String.t(),
        "EmailAddress" => String.t()
      }

  """
  @type account() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unprocessed_graph() :: %{
        "GraphArn" => String.t(),
        "Reason" => String.t()
      }

  """
  @type unprocessed_graph() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_membership_datasources_response() :: %{
        "MembershipDatasources" => list(membership_datasources()()),
        "UnprocessedGraphs" => list(unprocessed_graph()())
      }

  """
  @type batch_get_membership_datasources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_graph_member_datasources_request() :: %{
        required("AccountIds") => list(String.t()()),
        required("GraphArn") => String.t()
      }

  """
  @type batch_get_graph_member_datasources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_investigation_state_request() :: %{
        required("GraphArn") => String.t(),
        required("InvestigationId") => String.t(),
        required("State") => list(any())
      }

  """
  @type update_investigation_state_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      date_filter() :: %{
        "EndInclusive" => non_neg_integer(),
        "StartInclusive" => non_neg_integer()
      }

  """
  @type date_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reject_invitation_request() :: %{
        required("GraphArn") => String.t()
      }

  """
  @type reject_invitation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      investigation_detail() :: %{
        "CreatedTime" => non_neg_integer(),
        "EntityArn" => String.t(),
        "EntityType" => list(any()),
        "InvestigationId" => String.t(),
        "Severity" => list(any()),
        "State" => list(any()),
        "Status" => list(any())
      }

  """
  @type investigation_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      impossible_travel_detail() :: %{
        "EndingIpAddress" => String.t(),
        "EndingLocation" => String.t(),
        "HourlyTimeDelta" => integer(),
        "StartingIpAddress" => String.t(),
        "StartingLocation" => String.t()
      }

  """
  @type impossible_travel_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_graph_request() :: %{
        required("GraphArn") => String.t()
      }

  """
  @type delete_graph_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_membership_datasources_request() :: %{
        required("GraphArns") => list(String.t()())
      }

  """
  @type batch_get_membership_datasources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_organization_configuration_request() :: %{
        optional("AutoEnable") => boolean(),
        required("GraphArn") => String.t()
      }

  """
  @type update_organization_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      enable_organization_admin_account_request() :: %{
        required("AccountId") => String.t()
      }

  """
  @type enable_organization_admin_account_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_graphs_response() :: %{
        "GraphList" => list(graph()()),
        "NextToken" => String.t()
      }

  """
  @type list_graphs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      datasource_package_usage_info() :: %{
        "VolumeUsageInBytes" => float(),
        "VolumeUsageUpdateTime" => non_neg_integer()
      }

  """
  @type datasource_package_usage_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_datasource_packages_response() :: %{
        "DatasourcePackages" => map(),
        "NextToken" => String.t()
      }

  """
  @type list_datasource_packages_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      membership_datasources() :: %{
        "AccountId" => String.t(),
        "DatasourcePackageIngestHistory" => map(),
        "GraphArn" => String.t()
      }

  """
  @type membership_datasources() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_organization_admin_accounts_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_organization_admin_accounts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sort_criteria() :: %{
        "Field" => list(any()),
        "SortOrder" => list(any())
      }

  """
  @type sort_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "ErrorCode" => list(any()),
        "ErrorCodeReason" => String.t(),
        "Message" => String.t(),
        "SubErrorCode" => list(any()),
        "SubErrorCodeReason" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      new_geolocation_detail() :: %{
        "IpAddress" => String.t(),
        "IsNewForEntireAccount" => boolean(),
        "Location" => String.t()
      }

  """
  @type new_geolocation_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      accept_invitation_request() :: %{
        required("GraphArn") => String.t()
      }

  """
  @type accept_invitation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      create_graph_response() :: %{
        "GraphArn" => String.t()
      }

  """
  @type create_graph_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_members_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("GraphArn") => String.t()
      }

  """
  @type list_members_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_members_response() :: %{
        "MemberDetails" => list(member_detail()()),
        "NextToken" => String.t()
      }

  """
  @type list_members_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_investigation_request() :: %{
        required("GraphArn") => String.t(),
        required("InvestigationId") => String.t()
      }

  """
  @type get_investigation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_investigation_response() :: %{
        "CreatedTime" => non_neg_integer(),
        "EntityArn" => String.t(),
        "EntityType" => list(any()),
        "GraphArn" => String.t(),
        "InvestigationId" => String.t(),
        "ScopeEndTime" => non_neg_integer(),
        "ScopeStartTime" => non_neg_integer(),
        "Severity" => list(any()),
        "State" => list(any()),
        "Status" => list(any())
      }

  """
  @type get_investigation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "ErrorCode" => list(any()),
        "ErrorCodeReason" => String.t(),
        "Message" => String.t()
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

      list_invitations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_invitations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      indicator_detail() :: %{
        "FlaggedIpAddressDetail" => flagged_ip_address_detail(),
        "ImpossibleTravelDetail" => impossible_travel_detail(),
        "NewAsoDetail" => new_aso_detail(),
        "NewGeolocationDetail" => new_geolocation_detail(),
        "NewUserAgentDetail" => new_user_agent_detail(),
        "RelatedFindingDetail" => related_finding_detail(),
        "RelatedFindingGroupDetail" => related_finding_group_detail(),
        "TTPsObservedDetail" => t_t_ps_observed_detail()
      }

  """
  @type indicator_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      string_filter() :: %{
        "Value" => String.t()
      }

  """
  @type string_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      flagged_ip_address_detail() :: %{
        "IpAddress" => String.t(),
        "Reason" => list(any())
      }

  """
  @type flagged_ip_address_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      related_finding_detail() :: %{
        "Arn" => String.t(),
        "IpAddress" => String.t(),
        "Type" => String.t()
      }

  """
  @type related_finding_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unprocessed_account() :: %{
        "AccountId" => String.t(),
        "Reason" => String.t()
      }

  """
  @type unprocessed_account() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_monitoring_member_request() :: %{
        required("AccountId") => String.t(),
        required("GraphArn") => String.t()
      }

  """
  @type start_monitoring_member_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_indicators_response() :: %{
        "GraphArn" => String.t(),
        "Indicators" => list(indicator()()),
        "InvestigationId" => String.t(),
        "NextToken" => String.t()
      }

  """
  @type list_indicators_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      datasource_package_ingest_detail() :: %{
        "DatasourcePackageIngestState" => list(any()),
        "LastIngestStateChange" => map()
      }

  """
  @type datasource_package_ingest_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_organization_admin_accounts_response() :: %{
        "Administrators" => list(administrator()()),
        "NextToken" => String.t()
      }

  """
  @type list_organization_admin_accounts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_indicators_request() :: %{
        optional("IndicatorType") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("GraphArn") => String.t(),
        required("InvestigationId") => String.t()
      }

  """
  @type list_indicators_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_membership_request() :: %{
        required("GraphArn") => String.t()
      }

  """
  @type disassociate_membership_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      t_t_ps_observed_detail() :: %{
        "APIFailureCount" => float(),
        "APIName" => String.t(),
        "APISuccessCount" => float(),
        "IpAddress" => String.t(),
        "Procedure" => String.t(),
        "Tactic" => String.t(),
        "Technique" => String.t()
      }

  """
  @type t_t_ps_observed_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_members_response() :: %{
        "Members" => list(member_detail()()),
        "UnprocessedAccounts" => list(unprocessed_account()())
      }

  """
  @type create_members_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      member_detail() :: %{
        "AccountId" => String.t(),
        "AdministratorId" => String.t(),
        "DatasourcePackageIngestStates" => map(),
        "DisabledReason" => list(any()),
        "EmailAddress" => String.t(),
        "GraphArn" => String.t(),
        "InvitationType" => list(any()),
        "InvitedTime" => non_neg_integer(),
        "MasterId" => String.t(),
        "PercentOfGraphUtilization" => float(),
        "PercentOfGraphUtilizationUpdatedTime" => non_neg_integer(),
        "Status" => list(any()),
        "UpdatedTime" => non_neg_integer(),
        "VolumeUsageByDatasourcePackage" => map(),
        "VolumeUsageInBytes" => float(),
        "VolumeUsageUpdatedTime" => non_neg_integer()
      }

  """
  @type member_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_invitations_response() :: %{
        "Invitations" => list(member_detail()()),
        "NextToken" => String.t()
      }

  """
  @type list_invitations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      indicator() :: %{
        "IndicatorDetail" => indicator_detail(),
        "IndicatorType" => list(any())
      }

  """
  @type indicator() :: %{String.t() => any()}

  @type accept_invitation_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type batch_get_graph_member_datasources_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type batch_get_membership_datasources_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_graph_errors() ::
          access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_members_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type delete_graph_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_members_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_organization_configuration_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | too_many_requests_exception()

  @type disable_organization_admin_account_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | too_many_requests_exception()

  @type disassociate_membership_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type enable_organization_admin_account_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | too_many_requests_exception()

  @type get_investigation_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_members_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_datasource_packages_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_graphs_errors() ::
          validation_exception() | access_denied_exception() | internal_server_exception()

  @type list_indicators_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type list_investigations_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type list_invitations_errors() ::
          validation_exception() | access_denied_exception() | internal_server_exception()

  @type list_members_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_organization_admin_accounts_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | too_many_requests_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type reject_invitation_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_investigation_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type start_monitoring_member_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_datasource_packages_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type update_investigation_state_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type update_organization_configuration_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | too_many_requests_exception()

  def metadata do
    %{
      api_version: "2018-10-26",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "api.detective",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Detective",
      signature_version: "v4",
      signing_name: "detective",
      target_prefix: nil
    }
  end

  @doc """
  Accepts an invitation for the member account to contribute data to a behavior
  graph. This operation can only be called by an invited member account. The
  request provides the ARN of behavior graph.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=detective%20AcceptInvitation&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec accept_invitation(AWS.Client.t(), accept_invitation_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, accept_invitation_errors()}
  def accept_invitation(%Client{} = client, input, options \\ []) do
    url_path = "/invitation"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Gets data source package information for the behavior graph.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=detective%20BatchGetGraphMemberDatasources&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec batch_get_graph_member_datasources(
          AWS.Client.t(),
          batch_get_graph_member_datasources_request(),
          Keyword.t()
        ) ::
          {:ok, batch_get_graph_member_datasources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_get_graph_member_datasources_errors()}
  def batch_get_graph_member_datasources(%Client{} = client, input, options \\ []) do
    url_path = "/graph/datasources/get"
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
      200
    )
  end

  @doc """
  Gets information on the data source package history for an account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=detective%20BatchGetMembershipDatasources&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec batch_get_membership_datasources(
          AWS.Client.t(),
          batch_get_membership_datasources_request(),
          Keyword.t()
        ) ::
          {:ok, batch_get_membership_datasources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_get_membership_datasources_errors()}
  def batch_get_membership_datasources(%Client{} = client, input, options \\ []) do
    url_path = "/membership/datasources/get"
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
      200
    )
  end

  @doc """
  Creates a new behavior graph for the calling account, and sets that account as
  the administrator account. This operation is called by the account that is
  enabling Detective. The operation also enables Detective for the calling
  account in the currently selected Region. It returns the ARN of the new
  behavior graph.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=detective%20CreateGraph&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_graph(AWS.Client.t(), create_graph_request(), Keyword.t()) ::
          {:ok, create_graph_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_graph_errors()}
  def create_graph(%Client{} = client, input, options \\ []) do
    url_path = "/graph"
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
      200
    )
  end

  @doc """
  `CreateMembers` is used to send invitations to accounts. For the organization
  behavior graph, the Detective administrator account uses `CreateMembers` to
  enable organization accounts as member accounts. For invited accounts,
  `CreateMembers` sends a request to invite the specified Amazon Web Services
  accounts to be member accounts in the behavior graph. This operation can only
  be called by the administrator account for a behavior graph.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=detective%20CreateMembers&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_members(AWS.Client.t(), create_members_request(), Keyword.t()) ::
          {:ok, create_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_members_errors()}
  def create_members(%Client{} = client, input, options \\ []) do
    url_path = "/graph/members"
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
      200
    )
  end

  @doc """
  Disables the specified behavior graph and queues it to be deleted. This
  operation removes the behavior graph from each member account's list of
  behavior graphs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=detective%20DeleteGraph&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec delete_graph(AWS.Client.t(), delete_graph_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_graph_errors()}
  def delete_graph(%Client{} = client, input, options \\ []) do
    url_path = "/graph/removal"
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
      200
    )
  end

  @doc """
  Removes the specified member accounts from the behavior graph. The removed
  accounts no longer contribute data to the behavior graph. This operation can
  only be called by the administrator account for the behavior graph. For
  invited accounts, the removed accounts are deleted from the list of accounts
  in the behavior graph. To restore the account, the administrator account must
  send another invitation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=detective%20DeleteMembers&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec delete_members(AWS.Client.t(), delete_members_request(), Keyword.t()) ::
          {:ok, delete_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_members_errors()}
  def delete_members(%Client{} = client, input, options \\ []) do
    url_path = "/graph/members/removal"
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
      200
    )
  end

  @doc """
  Returns information about the configuration for the organization behavior graph.
  Currently indicates whether to automatically enable new organization accounts
  as member accounts.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=detective%20DescribeOrganizationConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec describe_organization_configuration(
          AWS.Client.t(),
          describe_organization_configuration_request(),
          Keyword.t()
        ) ::
          {:ok, describe_organization_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_organization_configuration_errors()}
  def describe_organization_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/orgs/describeOrganizationConfiguration"
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
      200
    )
  end

  @doc """
  Removes the Detective administrator account in the current Region. Deletes the
  organization behavior graph. Can only be called by the organization management
  account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=detective%20DisableOrganizationAdminAccount&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec disable_organization_admin_account(AWS.Client.t(), %{}, Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disable_organization_admin_account_errors()}
  def disable_organization_admin_account(%Client{} = client, input, options \\ []) do
    url_path = "/orgs/disableAdminAccount"
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
      200
    )
  end

  @doc """
  Removes the member account from the specified behavior graph. This operation can
  only be called by an invited member account that has the `ENABLED` status.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=detective%20DisassociateMembership&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec disassociate_membership(AWS.Client.t(), disassociate_membership_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_membership_errors()}
  def disassociate_membership(%Client{} = client, input, options \\ []) do
    url_path = "/membership/removal"
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
      200
    )
  end

  @doc """
  Designates the Detective administrator account for the organization in the
  current Region. If the account does not have Detective enabled, then enables
  Detective for that account and creates a new behavior graph.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=detective%20EnableOrganizationAdminAccount&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec enable_organization_admin_account(
          AWS.Client.t(),
          enable_organization_admin_account_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, enable_organization_admin_account_errors()}
  def enable_organization_admin_account(%Client{} = client, input, options \\ []) do
    url_path = "/orgs/enableAdminAccount"
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
      200
    )
  end

  @doc """
  Detective investigations lets you investigate IAM users and IAM roles using
  indicators of compromise. An indicator of compromise (IOC) is an artifact
  observed in or on a network, system, or environment that can (with a high
  level of confidence) identify malicious activity or a security incident.
  `GetInvestigation` returns the investigation results of an investigation for a
  behavior graph.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=detective%20GetInvestigation&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec get_investigation(AWS.Client.t(), get_investigation_request(), Keyword.t()) ::
          {:ok, get_investigation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_investigation_errors()}
  def get_investigation(%Client{} = client, input, options \\ []) do
    url_path = "/investigations/getInvestigation"
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
      200
    )
  end

  @doc """
  Returns the membership details for specified member accounts for a behavior
  graph.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=detective%20GetMembers&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec get_members(AWS.Client.t(), get_members_request(), Keyword.t()) ::
          {:ok, get_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_members_errors()}
  def get_members(%Client{} = client, input, options \\ []) do
    url_path = "/graph/members/get"
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
      200
    )
  end

  @doc """
  Lists data source packages in the behavior graph.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=detective%20ListDatasourcePackages&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec list_datasource_packages(AWS.Client.t(), list_datasource_packages_request(), Keyword.t()) ::
          {:ok, list_datasource_packages_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_datasource_packages_errors()}
  def list_datasource_packages(%Client{} = client, input, options \\ []) do
    url_path = "/graph/datasources/list"
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
      200
    )
  end

  @doc """
  Returns the list of behavior graphs that the calling account is an administrator
  account of. This operation can only be called by an administrator account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=detective%20ListGraphs&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec list_graphs(AWS.Client.t(), list_graphs_request(), Keyword.t()) ::
          {:ok, list_graphs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_graphs_errors()}
  def list_graphs(%Client{} = client, input, options \\ []) do
    url_path = "/graphs/list"
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
      200
    )
  end

  @doc """
  Gets the indicators from an investigation. You can use the information from the
  indicators to determine if an IAM user and/or IAM role is involved in an
  unusual activity that could indicate malicious behavior and its impact.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=detective%20ListIndicators&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec list_indicators(AWS.Client.t(), list_indicators_request(), Keyword.t()) ::
          {:ok, list_indicators_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_indicators_errors()}
  def list_indicators(%Client{} = client, input, options \\ []) do
    url_path = "/investigations/listIndicators"
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
      200
    )
  end

  @doc """
  Detective investigations lets you investigate IAM users and IAM roles using
  indicators of compromise. An indicator of compromise (IOC) is an artifact
  observed in or on a network, system, or environment that can (with a high
  level of confidence) identify malicious activity or a security incident.
  `ListInvestigations` lists all active Detective investigations.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=detective%20ListInvestigations&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec list_investigations(AWS.Client.t(), list_investigations_request(), Keyword.t()) ::
          {:ok, list_investigations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_investigations_errors()}
  def list_investigations(%Client{} = client, input, options \\ []) do
    url_path = "/investigations/listInvestigations"
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
      200
    )
  end

  @doc """
  Retrieves the list of open and accepted behavior graph invitations for the
  member account. This operation can only be called by an invited member
  account. Open invitations are invitations that the member account has not
  responded to.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=detective%20ListInvitations&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec list_invitations(AWS.Client.t(), list_invitations_request(), Keyword.t()) ::
          {:ok, list_invitations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_invitations_errors()}
  def list_invitations(%Client{} = client, input, options \\ []) do
    url_path = "/invitations/list"
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
      200
    )
  end

  @doc """
  Retrieves the list of member accounts for a behavior graph. For invited
  accounts, the results do not include member accounts that were removed from
  the behavior graph.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=detective%20ListMembers&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec list_members(AWS.Client.t(), list_members_request(), Keyword.t()) ::
          {:ok, list_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_members_errors()}
  def list_members(%Client{} = client, input, options \\ []) do
    url_path = "/graph/members/list"
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
      200
    )
  end

  @doc """
  Returns information about the Detective administrator account for an
  organization. Can only be called by the organization management account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=detective%20ListOrganizationAdminAccounts&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec list_organization_admin_accounts(
          AWS.Client.t(),
          list_organization_admin_accounts_request(),
          Keyword.t()
        ) ::
          {:ok, list_organization_admin_accounts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_organization_admin_accounts_errors()}
  def list_organization_admin_accounts(%Client{} = client, input, options \\ []) do
    url_path = "/orgs/adminAccountslist"
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
      200
    )
  end

  @doc """
  Returns the tag values that are assigned to a behavior graph.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=detective%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The ARN of the behavior graph for which to
    retrieve the tag values.

  ## Optional parameters:
  """
  @spec list_tags_for_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"

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
  Rejects an invitation to contribute the account data to a behavior graph. This
  operation must be called by an invited member account that has the `INVITED`
  status.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=detective%20RejectInvitation&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec reject_invitation(AWS.Client.t(), reject_invitation_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reject_invitation_errors()}
  def reject_invitation(%Client{} = client, input, options \\ []) do
    url_path = "/invitation/removal"
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
      200
    )
  end

  @doc """
  Detective investigations lets you investigate IAM users and IAM roles using
  indicators of compromise. An indicator of compromise (IOC) is an artifact
  observed in or on a network, system, or environment that can (with a high
  level of confidence) identify malicious activity or a security incident.
  `StartInvestigation` initiates an investigation on an entity in a behavior
  graph.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=detective%20StartInvestigation&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec start_investigation(AWS.Client.t(), start_investigation_request(), Keyword.t()) ::
          {:ok, start_investigation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_investigation_errors()}
  def start_investigation(%Client{} = client, input, options \\ []) do
    url_path = "/investigations/startInvestigation"
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
      200
    )
  end

  @doc """
  Sends a request to enable data ingest for a member account that has a status of
  `ACCEPTED_BUT_DISABLED`. For valid member accounts, the status is updated as
  follows.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=detective%20StartMonitoringMember&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec start_monitoring_member(AWS.Client.t(), start_monitoring_member_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_monitoring_member_errors()}
  def start_monitoring_member(%Client{} = client, input, options \\ []) do
    url_path = "/graph/member/monitoringstate"
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
      200
    )
  end

  @doc """
  Applies tag values to a behavior graph.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=detective%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The ARN of the behavior graph to assign the tags
    to.

  ## Optional parameters:
  """
  @spec tag_resource(AWS.Client.t(), String.t(), tag_resource_request(), Keyword.t()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Removes tags from a behavior graph.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=detective%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The ARN of the behavior graph to remove the tags
    from.

  ## Optional parameters:
  * `:tag_keys` (`t:list[com.amazonaws.detective#TagKey]`) The tag keys of the
    tags to remove from the behavior graph. You can remove up to 50 tags at a
    time.
  """
  @spec untag_resource(AWS.Client.t(), String.t(), untag_resource_request(), Keyword.t()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

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
  Starts a data source packages for the behavior graph.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=detective%20UpdateDatasourcePackages&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec update_datasource_packages(
          AWS.Client.t(),
          update_datasource_packages_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_datasource_packages_errors()}
  def update_datasource_packages(%Client{} = client, input, options \\ []) do
    url_path = "/graph/datasources/update"
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
      200
    )
  end

  @doc """
  Updates the state of an investigation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=detective%20UpdateInvestigationState&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec update_investigation_state(
          AWS.Client.t(),
          update_investigation_state_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_investigation_state_errors()}
  def update_investigation_state(%Client{} = client, input, options \\ []) do
    url_path = "/investigations/updateInvestigationState"
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
      200
    )
  end

  @doc """
  Updates the configuration for the Organizations integration in the current
  Region. Can only be called by the Detective administrator account for the
  organization.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=detective%20UpdateOrganizationConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec update_organization_configuration(
          AWS.Client.t(),
          update_organization_configuration_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_organization_configuration_errors()}
  def update_organization_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/orgs/updateOrganizationConfiguration"
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
      200
    )
  end
end
