# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.PinpointEmail do
  @moduledoc """
  Amazon Pinpoint Email Service Welcome to the *Amazon Pinpoint Email API
  Reference*. This guide provides information about the Amazon Pinpoint Email
  API (version 1.0), including supported operations, data types, parameters, and
  schemas.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      put_configuration_set_tracking_options_response() :: %{}

  """
  @type put_configuration_set_tracking_options_response() :: %{}

  @typedoc """

  ## Example:

      tracking_options() :: %{
        "CustomRedirectDomain" => String.t()
      }

  """
  @type tracking_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_email_identity_response() :: %{
        "DkimAttributes" => dkim_attributes(),
        "FeedbackForwardingStatus" => boolean(),
        "IdentityType" => list(any()),
        "MailFromAttributes" => mail_from_attributes(),
        "Tags" => list(tag()()),
        "VerifiedForSendingStatus" => boolean()
      }

  """
  @type get_email_identity_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_email_identity_dkim_attributes_response() :: %{}

  """
  @type put_email_identity_dkim_attributes_response() :: %{}

  @typedoc """

  ## Example:

      delete_configuration_set_response() :: %{}

  """
  @type delete_configuration_set_response() :: %{}

  @typedoc """

  ## Example:

      list_deliverability_test_reports_request() :: %{
        optional("NextToken") => String.t(),
        optional("PageSize") => integer()
      }

  """
  @type list_deliverability_test_reports_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("ResourceArn") => String.t(),
        required("Tags") => list(tag()())
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_account_sending_attributes_request() :: %{
        optional("SendingEnabled") => boolean()
      }

  """
  @type put_account_sending_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_account_response() :: %{
        "DedicatedIpAutoWarmupEnabled" => boolean(),
        "EnforcementStatus" => String.t(),
        "ProductionAccessEnabled" => boolean(),
        "SendQuota" => send_quota(),
        "SendingEnabled" => boolean()
      }

  """
  @type get_account_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_deliverability_test_report_request() :: %{}

  """
  @type get_deliverability_test_report_request() :: %{}

  @typedoc """

  ## Example:

      volume_statistics() :: %{
        "InboxRawCount" => float(),
        "ProjectedInbox" => float(),
        "ProjectedSpam" => float(),
        "SpamRawCount" => float()
      }

  """
  @type volume_statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_email_identities_response() :: %{
        "EmailIdentities" => list(identity_info()()),
        "NextToken" => String.t()
      }

  """
  @type list_email_identities_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_dedicated_ip_pool_response() :: %{}

  """
  @type create_dedicated_ip_pool_response() :: %{}

  @typedoc """

  ## Example:

      put_configuration_set_reputation_options_response() :: %{}

  """
  @type put_configuration_set_reputation_options_response() :: %{}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      put_email_identity_feedback_attributes_request() :: %{
        optional("EmailForwardingEnabled") => boolean()
      }

  """
  @type put_email_identity_feedback_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      isp_placement() :: %{
        "IspName" => String.t(),
        "PlacementStatistics" => placement_statistics()
      }

  """
  @type isp_placement() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_deliverability_test_reports_response() :: %{
        "DeliverabilityTestReports" => list(deliverability_test_report()()),
        "NextToken" => String.t()
      }

  """
  @type list_deliverability_test_reports_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kinesis_firehose_destination() :: %{
        "DeliveryStreamArn" => String.t(),
        "IamRoleArn" => String.t()
      }

  """
  @type kinesis_firehose_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      already_exists_exception() :: %{
        "message" => String.t()
      }

  """
  @type already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_account_dedicated_ip_warmup_attributes_response() :: %{}

  """
  @type put_account_dedicated_ip_warmup_attributes_response() :: %{}

  @typedoc """

  ## Example:

      send_quota() :: %{
        "Max24HourSend" => float(),
        "MaxSendRate" => float(),
        "SentLast24Hours" => float()
      }

  """
  @type send_quota() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dkim_attributes() :: %{
        "SigningEnabled" => boolean(),
        "Status" => list(any()),
        "Tokens" => list(String.t()())
      }

  """
  @type dkim_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_email_identity_response() :: %{
        "DkimAttributes" => dkim_attributes(),
        "IdentityType" => list(any()),
        "VerifiedForSendingStatus" => boolean()
      }

  """
  @type create_email_identity_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sending_paused_exception() :: %{
        "message" => String.t()
      }

  """
  @type sending_paused_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_deliverability_dashboard_option_request() :: %{
        optional("SubscribedDomains") => list(domain_deliverability_tracking_option()()),
        required("DashboardEnabled") => boolean()
      }

  """
  @type put_deliverability_dashboard_option_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_configuration_set_delivery_options_response() :: %{}

  """
  @type put_configuration_set_delivery_options_response() :: %{}

  @typedoc """

  ## Example:

      account_suspended_exception() :: %{
        "message" => String.t()
      }

  """
  @type account_suspended_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      email_content() :: %{
        "Raw" => raw_message(),
        "Simple" => message(),
        "Template" => template()
      }

  """
  @type email_content() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_deliverability_dashboard_options_response() :: %{
        "AccountStatus" => list(any()),
        "ActiveSubscribedDomains" => list(domain_deliverability_tracking_option()()),
        "DashboardEnabled" => boolean(),
        "PendingExpirationSubscribedDomains" => list(domain_deliverability_tracking_option()()),
        "SubscriptionExpiryDate" => non_neg_integer()
      }

  """
  @type get_deliverability_dashboard_options_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_domain_deliverability_campaign_request() :: %{}

  """
  @type get_domain_deliverability_campaign_request() :: %{}

  @typedoc """

  ## Example:

      delete_configuration_set_event_destination_response() :: %{}

  """
  @type delete_configuration_set_event_destination_response() :: %{}

  @typedoc """

  ## Example:

      delete_email_identity_request() :: %{}

  """
  @type delete_email_identity_request() :: %{}

  @typedoc """

  ## Example:

      cloud_watch_dimension_configuration() :: %{
        "DefaultDimensionValue" => String.t(),
        "DimensionName" => String.t(),
        "DimensionValueSource" => list(any())
      }

  """
  @type cloud_watch_dimension_configuration() :: %{String.t() => any()}

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

      too_many_requests_exception() :: %{
        "message" => String.t()
      }

  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_deliverability_test_report_response() :: %{
        "DeliverabilityTestStatus" => list(any()),
        "ReportId" => String.t()
      }

  """
  @type create_deliverability_test_report_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      event_destination_definition() :: %{
        "CloudWatchDestination" => cloud_watch_destination(),
        "Enabled" => boolean(),
        "KinesisFirehoseDestination" => kinesis_firehose_destination(),
        "MatchingEventTypes" => list(list(any())()),
        "PinpointDestination" => pinpoint_destination(),
        "SnsDestination" => sns_destination()
      }

  """
  @type event_destination_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_domain_deliverability_campaigns_response() :: %{
        "DomainDeliverabilityCampaigns" => list(domain_deliverability_campaign()()),
        "NextToken" => String.t()
      }

  """
  @type list_domain_deliverability_campaigns_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_configuration_set_request() :: %{}

  """
  @type delete_configuration_set_request() :: %{}

  @typedoc """

  ## Example:

      send_email_response() :: %{
        "MessageId" => String.t()
      }

  """
  @type send_email_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_dedicated_ip_pool_request() :: %{}

  """
  @type delete_dedicated_ip_pool_request() :: %{}

  @typedoc """

  ## Example:

      cloud_watch_destination() :: %{
        "DimensionConfigurations" => list(cloud_watch_dimension_configuration()())
      }

  """
  @type cloud_watch_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      blacklist_entry() :: %{
        "Description" => String.t(),
        "ListingTime" => non_neg_integer(),
        "RblName" => String.t()
      }

  """
  @type blacklist_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      mail_from_domain_not_verified_exception() :: %{
        "message" => String.t()
      }

  """
  @type mail_from_domain_not_verified_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      overall_volume() :: %{
        "DomainIspPlacements" => list(domain_isp_placement()()),
        "ReadRatePercent" => float(),
        "VolumeStatistics" => volume_statistics()
      }

  """
  @type overall_volume() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      domain_isp_placement() :: %{
        "InboxPercentage" => float(),
        "InboxRawCount" => float(),
        "IspName" => String.t(),
        "SpamPercentage" => float(),
        "SpamRawCount" => float()
      }

  """
  @type domain_isp_placement() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dedicated_ip() :: %{
        "Ip" => String.t(),
        "PoolName" => String.t(),
        "WarmupPercentage" => integer(),
        "WarmupStatus" => list(any())
      }

  """
  @type dedicated_ip() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_blacklist_reports_request() :: %{
        required("BlacklistItemNames") => list(String.t()())
      }

  """
  @type get_blacklist_reports_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      mail_from_attributes() :: %{
        "BehaviorOnMxFailure" => list(any()),
        "MailFromDomain" => String.t(),
        "MailFromDomainStatus" => list(any())
      }

  """
  @type mail_from_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_configuration_set_response() :: %{}

  """
  @type create_configuration_set_response() :: %{}

  @typedoc """

  ## Example:

      reputation_options() :: %{
        "LastFreshStart" => non_neg_integer(),
        "ReputationMetricsEnabled" => boolean()
      }

  """
  @type reputation_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_deliverability_dashboard_option_response() :: %{}

  """
  @type put_deliverability_dashboard_option_response() :: %{}

  @typedoc """

  ## Example:

      create_email_identity_request() :: %{
        optional("Tags") => list(tag()()),
        required("EmailIdentity") => String.t()
      }

  """
  @type create_email_identity_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      inbox_placement_tracking_option() :: %{
        "Global" => boolean(),
        "TrackedIsps" => list(String.t()())
      }

  """
  @type inbox_placement_tracking_option() :: %{String.t() => any()}

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

      event_destination() :: %{
        "CloudWatchDestination" => cloud_watch_destination(),
        "Enabled" => boolean(),
        "KinesisFirehoseDestination" => kinesis_firehose_destination(),
        "MatchingEventTypes" => list(list(any())()),
        "Name" => String.t(),
        "PinpointDestination" => pinpoint_destination(),
        "SnsDestination" => sns_destination()
      }

  """
  @type event_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_configuration_set_event_destination_request() :: %{
        required("EventDestination") => event_destination_definition()
      }

  """
  @type update_configuration_set_event_destination_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      message_tag() :: %{
        "Name" => String.t(),
        "Value" => String.t()
      }

  """
  @type message_tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_domain_deliverability_campaigns_request() :: %{
        optional("NextToken") => String.t(),
        optional("PageSize") => integer(),
        required("EndDate") => non_neg_integer(),
        required("StartDate") => non_neg_integer()
      }

  """
  @type list_domain_deliverability_campaigns_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_configuration_set_event_destinations_request() :: %{}

  """
  @type get_configuration_set_event_destinations_request() :: %{}

  @typedoc """

  ## Example:

      get_domain_statistics_report_request() :: %{
        required("EndDate") => non_neg_integer(),
        required("StartDate") => non_neg_integer()
      }

  """
  @type get_domain_statistics_report_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_account_dedicated_ip_warmup_attributes_request() :: %{
        optional("AutoWarmupEnabled") => boolean()
      }

  """
  @type put_account_dedicated_ip_warmup_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_dedicated_ip_in_pool_response() :: %{}

  """
  @type put_dedicated_ip_in_pool_response() :: %{}

  @typedoc """

  ## Example:

      not_found_exception() :: %{
        "message" => String.t()
      }

  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      placement_statistics() :: %{
        "DkimPercentage" => float(),
        "InboxPercentage" => float(),
        "MissingPercentage" => float(),
        "SpamPercentage" => float(),
        "SpfPercentage" => float()
      }

  """
  @type placement_statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      identity_info() :: %{
        "IdentityName" => String.t(),
        "IdentityType" => list(any()),
        "SendingEnabled" => boolean()
      }

  """
  @type identity_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => list(tag()())
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_configuration_sets_response() :: %{
        "ConfigurationSets" => list(String.t()()),
        "NextToken" => String.t()
      }

  """
  @type list_configuration_sets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_dedicated_ip_pools_request() :: %{
        optional("NextToken") => String.t(),
        optional("PageSize") => integer()
      }

  """
  @type list_dedicated_ip_pools_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_configuration_set_event_destinations_response() :: %{
        "EventDestinations" => list(event_destination()())
      }

  """
  @type get_configuration_set_event_destinations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_domain_deliverability_campaign_response() :: %{
        "DomainDeliverabilityCampaign" => domain_deliverability_campaign()
      }

  """
  @type get_domain_deliverability_campaign_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_configuration_sets_request() :: %{
        optional("NextToken") => String.t(),
        optional("PageSize") => integer()
      }

  """
  @type list_configuration_sets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_dedicated_ips_request() :: %{
        optional("NextToken") => String.t(),
        optional("PageSize") => integer(),
        optional("PoolName") => String.t()
      }

  """
  @type get_dedicated_ips_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      raw_message() :: %{
        "Data" => binary()
      }

  """
  @type raw_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_dedicated_ip_in_pool_request() :: %{
        required("DestinationPoolName") => String.t()
      }

  """
  @type put_dedicated_ip_in_pool_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_email_identity_dkim_attributes_request() :: %{
        optional("SigningEnabled") => boolean()
      }

  """
  @type put_email_identity_dkim_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_configuration_set_sending_options_response() :: %{}

  """
  @type put_configuration_set_sending_options_response() :: %{}

  @typedoc """

  ## Example:

      delete_dedicated_ip_pool_response() :: %{}

  """
  @type delete_dedicated_ip_pool_response() :: %{}

  @typedoc """

  ## Example:

      put_configuration_set_tracking_options_request() :: %{
        optional("CustomRedirectDomain") => String.t()
      }

  """
  @type put_configuration_set_tracking_options_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_dedicated_ip_pool_request() :: %{
        optional("Tags") => list(tag()()),
        required("PoolName") => String.t()
      }

  """
  @type create_dedicated_ip_pool_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_dedicated_ip_response() :: %{
        "DedicatedIp" => dedicated_ip()
      }

  """
  @type get_dedicated_ip_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_configuration_set_event_destination_request() :: %{}

  """
  @type delete_configuration_set_event_destination_request() :: %{}

  @typedoc """

  ## Example:

      create_configuration_set_event_destination_response() :: %{}

  """
  @type create_configuration_set_event_destination_response() :: %{}

  @typedoc """

  ## Example:

      put_configuration_set_delivery_options_request() :: %{
        optional("SendingPoolName") => String.t(),
        optional("TlsPolicy") => list(any())
      }

  """
  @type put_configuration_set_delivery_options_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_email_identity_mail_from_attributes_request() :: %{
        optional("BehaviorOnMxFailure") => list(any()),
        optional("MailFromDomain") => String.t()
      }

  """
  @type put_email_identity_mail_from_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_email_identity_response() :: %{}

  """
  @type delete_email_identity_response() :: %{}

  @typedoc """

  ## Example:

      create_deliverability_test_report_request() :: %{
        optional("ReportName") => String.t(),
        optional("Tags") => list(tag()()),
        required("Content") => email_content(),
        required("FromEmailAddress") => String.t()
      }

  """
  @type create_deliverability_test_report_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      daily_volume() :: %{
        "DomainIspPlacements" => list(domain_isp_placement()()),
        "StartDate" => non_neg_integer(),
        "VolumeStatistics" => volume_statistics()
      }

  """
  @type daily_volume() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      sending_options() :: %{
        "SendingEnabled" => boolean()
      }

  """
  @type sending_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      concurrent_modification_exception() :: %{
        "message" => String.t()
      }

  """
  @type concurrent_modification_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_blacklist_reports_response() :: %{
        "BlacklistReport" => map()
      }

  """
  @type get_blacklist_reports_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{
        required("ResourceArn") => String.t()
      }

  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      destination() :: %{
        "BccAddresses" => list(String.t()()),
        "CcAddresses" => list(String.t()()),
        "ToAddresses" => list(String.t()())
      }

  """
  @type destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      body() :: %{
        "Html" => content(),
        "Text" => content()
      }

  """
  @type body() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_deliverability_dashboard_options_request() :: %{}

  """
  @type get_deliverability_dashboard_options_request() :: %{}

  @typedoc """

  ## Example:

      get_domain_statistics_report_response() :: %{
        "DailyVolumes" => list(daily_volume()()),
        "OverallVolume" => overall_volume()
      }

  """
  @type get_domain_statistics_report_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_account_sending_attributes_response() :: %{}

  """
  @type put_account_sending_attributes_response() :: %{}

  @typedoc """

  ## Example:

      message_rejected() :: %{
        "message" => String.t()
      }

  """
  @type message_rejected() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_dedicated_ip_pools_response() :: %{
        "DedicatedIpPools" => list(String.t()()),
        "NextToken" => String.t()
      }

  """
  @type list_dedicated_ip_pools_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_configuration_set_request() :: %{}

  """
  @type get_configuration_set_request() :: %{}

  @typedoc """

  ## Example:

      put_email_identity_mail_from_attributes_response() :: %{}

  """
  @type put_email_identity_mail_from_attributes_response() :: %{}

  @typedoc """

  ## Example:

      create_configuration_set_event_destination_request() :: %{
        required("EventDestination") => event_destination_definition(),
        required("EventDestinationName") => String.t()
      }

  """
  @type create_configuration_set_event_destination_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      domain_deliverability_tracking_option() :: %{
        "Domain" => String.t(),
        "InboxPlacementTrackingOption" => inbox_placement_tracking_option(),
        "SubscriptionStartDate" => non_neg_integer()
      }

  """
  @type domain_deliverability_tracking_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_configuration_set_sending_options_request() :: %{
        optional("SendingEnabled") => boolean()
      }

  """
  @type put_configuration_set_sending_options_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      limit_exceeded_exception() :: %{
        "message" => String.t()
      }

  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delivery_options() :: %{
        "SendingPoolName" => String.t(),
        "TlsPolicy" => list(any())
      }

  """
  @type delivery_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_configuration_set_event_destination_response() :: %{}

  """
  @type update_configuration_set_event_destination_response() :: %{}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "message" => String.t()
      }

  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      content() :: %{
        "Charset" => String.t(),
        "Data" => String.t()
      }

  """
  @type content() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_configuration_set_response() :: %{
        "ConfigurationSetName" => String.t(),
        "DeliveryOptions" => delivery_options(),
        "ReputationOptions" => reputation_options(),
        "SendingOptions" => sending_options(),
        "Tags" => list(tag()()),
        "TrackingOptions" => tracking_options()
      }

  """
  @type get_configuration_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      template() :: %{
        optional("TemplateArn") => String.t(),
        optional("TemplateData") => String.t()
      }

  """
  @type template() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      send_email_request() :: %{
        optional("ConfigurationSetName") => String.t(),
        optional("EmailTags") => list(message_tag()()),
        optional("FeedbackForwardingEmailAddress") => String.t(),
        optional("FromEmailAddress") => String.t(),
        optional("ReplyToAddresses") => list(String.t()()),
        required("Content") => email_content(),
        required("Destination") => destination()
      }

  """
  @type send_email_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_dedicated_ip_warmup_attributes_response() :: %{}

  """
  @type put_dedicated_ip_warmup_attributes_response() :: %{}

  @typedoc """

  ## Example:

      put_dedicated_ip_warmup_attributes_request() :: %{
        required("WarmupPercentage") => integer()
      }

  """
  @type put_dedicated_ip_warmup_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      domain_deliverability_campaign() :: %{
        "CampaignId" => String.t(),
        "DeleteRate" => float(),
        "Esps" => list(String.t()()),
        "FirstSeenDateTime" => non_neg_integer(),
        "FromAddress" => String.t(),
        "ImageUrl" => String.t(),
        "InboxCount" => float(),
        "LastSeenDateTime" => non_neg_integer(),
        "ProjectedVolume" => float(),
        "ReadDeleteRate" => float(),
        "ReadRate" => float(),
        "SendingIps" => list(String.t()()),
        "SpamCount" => float(),
        "Subject" => String.t()
      }

  """
  @type domain_deliverability_campaign() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_account_request() :: %{}

  """
  @type get_account_request() :: %{}

  @typedoc """

  ## Example:

      get_dedicated_ip_request() :: %{}

  """
  @type get_dedicated_ip_request() :: %{}

  @typedoc """

  ## Example:

      list_email_identities_request() :: %{
        optional("NextToken") => String.t(),
        optional("PageSize") => integer()
      }

  """
  @type list_email_identities_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_configuration_set_reputation_options_request() :: %{
        optional("ReputationMetricsEnabled") => boolean()
      }

  """
  @type put_configuration_set_reputation_options_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_configuration_set_request() :: %{
        optional("DeliveryOptions") => delivery_options(),
        optional("ReputationOptions") => reputation_options(),
        optional("SendingOptions") => sending_options(),
        optional("Tags") => list(tag()()),
        optional("TrackingOptions") => tracking_options(),
        required("ConfigurationSetName") => String.t()
      }

  """
  @type create_configuration_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sns_destination() :: %{
        "TopicArn" => String.t()
      }

  """
  @type sns_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pinpoint_destination() :: %{
        "ApplicationArn" => String.t()
      }

  """
  @type pinpoint_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_email_identity_feedback_attributes_response() :: %{}

  """
  @type put_email_identity_feedback_attributes_response() :: %{}

  @typedoc """

  ## Example:

      deliverability_test_report() :: %{
        "CreateDate" => non_neg_integer(),
        "DeliverabilityTestStatus" => list(any()),
        "FromEmailAddress" => String.t(),
        "ReportId" => String.t(),
        "ReportName" => String.t(),
        "Subject" => String.t()
      }

  """
  @type deliverability_test_report() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_deliverability_test_report_response() :: %{
        "DeliverabilityTestReport" => deliverability_test_report(),
        "IspPlacements" => list(isp_placement()()),
        "Message" => String.t(),
        "OverallPlacement" => placement_statistics(),
        "Tags" => list(tag()())
      }

  """
  @type get_deliverability_test_report_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_email_identity_request() :: %{}

  """
  @type get_email_identity_request() :: %{}

  @typedoc """

  ## Example:

      get_dedicated_ips_response() :: %{
        "DedicatedIps" => list(dedicated_ip()()),
        "NextToken" => String.t()
      }

  """
  @type get_dedicated_ips_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      message() :: %{
        "Body" => body(),
        "Subject" => content()
      }

  """
  @type message() :: %{String.t() => any()}

  @type create_configuration_set_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | concurrent_modification_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | already_exists_exception()

  @type create_configuration_set_event_destination_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | already_exists_exception()

  @type create_dedicated_ip_pool_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | concurrent_modification_exception()
          | too_many_requests_exception()
          | already_exists_exception()

  @type create_deliverability_test_report_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | message_rejected()
          | concurrent_modification_exception()
          | not_found_exception()
          | mail_from_domain_not_verified_exception()
          | too_many_requests_exception()
          | account_suspended_exception()
          | sending_paused_exception()

  @type create_email_identity_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | concurrent_modification_exception()
          | too_many_requests_exception()

  @type delete_configuration_set_errors() ::
          bad_request_exception()
          | concurrent_modification_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type delete_configuration_set_event_destination_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type delete_dedicated_ip_pool_errors() ::
          bad_request_exception()
          | concurrent_modification_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type delete_email_identity_errors() ::
          bad_request_exception()
          | concurrent_modification_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type get_account_errors() :: bad_request_exception() | too_many_requests_exception()

  @type get_blacklist_reports_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_configuration_set_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_configuration_set_event_destinations_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_dedicated_ip_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_dedicated_ips_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_deliverability_dashboard_options_errors() ::
          bad_request_exception() | limit_exceeded_exception() | too_many_requests_exception()

  @type get_deliverability_test_report_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_domain_deliverability_campaign_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_domain_statistics_report_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_email_identity_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type list_configuration_sets_errors() ::
          bad_request_exception() | too_many_requests_exception()

  @type list_dedicated_ip_pools_errors() ::
          bad_request_exception() | too_many_requests_exception()

  @type list_deliverability_test_reports_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type list_domain_deliverability_campaigns_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type list_email_identities_errors() :: bad_request_exception() | too_many_requests_exception()

  @type list_tags_for_resource_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type put_account_dedicated_ip_warmup_attributes_errors() ::
          bad_request_exception() | too_many_requests_exception()

  @type put_account_sending_attributes_errors() ::
          bad_request_exception() | too_many_requests_exception()

  @type put_configuration_set_delivery_options_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type put_configuration_set_reputation_options_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type put_configuration_set_sending_options_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type put_configuration_set_tracking_options_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type put_dedicated_ip_in_pool_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type put_dedicated_ip_warmup_attributes_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type put_deliverability_dashboard_option_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | already_exists_exception()

  @type put_email_identity_dkim_attributes_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type put_email_identity_feedback_attributes_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type put_email_identity_mail_from_attributes_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type send_email_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | message_rejected()
          | not_found_exception()
          | mail_from_domain_not_verified_exception()
          | too_many_requests_exception()
          | account_suspended_exception()
          | sending_paused_exception()

  @type tag_resource_errors() ::
          bad_request_exception()
          | concurrent_modification_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type untag_resource_errors() ::
          bad_request_exception()
          | concurrent_modification_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type update_configuration_set_event_destination_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  def metadata do
    %{
      api_version: "2018-07-26",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "email",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Pinpoint Email",
      signature_version: "v4",
      signing_name: "ses",
      target_prefix: nil
    }
  end

  @doc """
  Create a configuration set. *Configuration sets* are groups of rules that you
  can apply to the emails you send using Amazon Pinpoint. You apply a
  configuration set to an email by including a reference to the configuration
  set in the headers of the email. When you apply a configuration set to an
  email, all of the rules in that configuration set are applied to the email.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointemail%20CreateConfigurationSet&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_configuration_set(AWS.Client.t(), create_configuration_set_request(), Keyword.t()) ::
          {:ok, create_configuration_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_configuration_set_errors()}
  def create_configuration_set(%Client{} = client, input, options \\ []) do
    url_path = "/v1/email/configuration-sets"
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
  Create an event destination. In Amazon Pinpoint, *events* include message sends,
  deliveries, opens, clicks, bounces, and complaints. *Event destinations* are
  places that you can send information about these events to. For example, you
  can send event data to Amazon SNS to receive notifications when you receive
  bounces or complaints, or you can use Amazon Kinesis Data Firehose to stream
  data to Amazon S3 for long-term storage.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointemail%20CreateConfigurationSetEventDestination&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:configuration_set_name` (`t:string`) The name of the configuration set that
    you want to add an event destination to.

  ## Optional parameters:
  """
  @spec create_configuration_set_event_destination(
          AWS.Client.t(),
          String.t(),
          create_configuration_set_event_destination_request(),
          Keyword.t()
        ) ::
          {:ok, create_configuration_set_event_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_configuration_set_event_destination_errors()}
  def create_configuration_set_event_destination(
        %Client{} = client,
        configuration_set_name,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/email/configuration-sets/#{AWS.Util.encode_uri(configuration_set_name)}/event-destinations"

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
  Create a new pool of dedicated IP addresses. A pool can include one or more
  dedicated IP addresses that are associated with your Amazon Pinpoint account.
  You can associate a pool with a configuration set. When you send an email that
  uses that configuration set, Amazon Pinpoint sends it using only the IP
  addresses in the associated pool.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointemail%20CreateDedicatedIpPool&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_dedicated_ip_pool(AWS.Client.t(), create_dedicated_ip_pool_request(), Keyword.t()) ::
          {:ok, create_dedicated_ip_pool_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_dedicated_ip_pool_errors()}
  def create_dedicated_ip_pool(%Client{} = client, input, options \\ []) do
    url_path = "/v1/email/dedicated-ip-pools"
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
  Create a new predictive inbox placement test. Predictive inbox placement tests
  can help you predict how your messages will be handled by various email
  providers around the world. When you perform a predictive inbox placement
  test, you provide a sample message that contains the content that you plan to
  send to your customers. Amazon Pinpoint then sends that message to special
  email addresses spread across several major email providers. After about 24
  hours, the test is complete, and you can use the `GetDeliverabilityTestReport`
  operation to view the results of the test.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointemail%20CreateDeliverabilityTestReport&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_deliverability_test_report(
          AWS.Client.t(),
          create_deliverability_test_report_request(),
          Keyword.t()
        ) ::
          {:ok, create_deliverability_test_report_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_deliverability_test_report_errors()}
  def create_deliverability_test_report(%Client{} = client, input, options \\ []) do
    url_path = "/v1/email/deliverability-dashboard/test"
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
  Verifies an email identity for use with Amazon Pinpoint. In Amazon Pinpoint, an
  identity is an email address or domain that you use when you send email.
  Before you can use an identity to send email with Amazon Pinpoint, you first
  have to verify it. By verifying an address, you demonstrate that you're the
  owner of the address, and that you've given Amazon Pinpoint permission to send
  email from the address. When you verify an email address, Amazon Pinpoint
  sends an email to the address. Your email address is verified as soon as you
  follow the link in the verification email.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointemail%20CreateEmailIdentity&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_email_identity(AWS.Client.t(), create_email_identity_request(), Keyword.t()) ::
          {:ok, create_email_identity_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_email_identity_errors()}
  def create_email_identity(%Client{} = client, input, options \\ []) do
    url_path = "/v1/email/identities"
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
  Delete an existing configuration set.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointemail%20DeleteConfigurationSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:configuration_set_name` (`t:string`) The name of the configuration set that
    you want to delete.

  ## Optional parameters:
  """
  @spec delete_configuration_set(
          AWS.Client.t(),
          String.t(),
          delete_configuration_set_request(),
          Keyword.t()
        ) ::
          {:ok, delete_configuration_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_configuration_set_errors()}
  def delete_configuration_set(%Client{} = client, configuration_set_name, input, options \\ []) do
    url_path = "/v1/email/configuration-sets/#{AWS.Util.encode_uri(configuration_set_name)}"
    headers = []
    query_params = []

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
      200
    )
  end

  @doc """
  Delete an event destination.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointemail%20DeleteConfigurationSetEventDestination&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:configuration_set_name` (`t:string`) The name of the configuration set that
    contains the event destination that you want to delete.
  * `:event_destination_name` (`t:string`) The name of the event destination that
    you want to delete.

  ## Optional parameters:
  """
  @spec delete_configuration_set_event_destination(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_configuration_set_event_destination_request(),
          Keyword.t()
        ) ::
          {:ok, delete_configuration_set_event_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_configuration_set_event_destination_errors()}
  def delete_configuration_set_event_destination(
        %Client{} = client,
        configuration_set_name,
        event_destination_name,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/email/configuration-sets/#{AWS.Util.encode_uri(configuration_set_name)}/event-destinations/#{AWS.Util.encode_uri(event_destination_name)}"

    headers = []
    query_params = []

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
      200
    )
  end

  @doc """
  Delete a dedicated IP pool.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointemail%20DeleteDedicatedIpPool&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:pool_name` (`t:string`) The name of the dedicated IP pool that you want to
    delete.

  ## Optional parameters:
  """
  @spec delete_dedicated_ip_pool(
          AWS.Client.t(),
          String.t(),
          delete_dedicated_ip_pool_request(),
          Keyword.t()
        ) ::
          {:ok, delete_dedicated_ip_pool_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_dedicated_ip_pool_errors()}
  def delete_dedicated_ip_pool(%Client{} = client, pool_name, input, options \\ []) do
    url_path = "/v1/email/dedicated-ip-pools/#{AWS.Util.encode_uri(pool_name)}"
    headers = []
    query_params = []

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
      200
    )
  end

  @doc """
  Deletes an email identity that you previously verified for use with Amazon
  Pinpoint. An identity can be either an email address or a domain name.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointemail%20DeleteEmailIdentity&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:email_identity` (`t:string`) The identity (that is, the email address or
    domain) that you want to delete from your Amazon Pinpoint account.

  ## Optional parameters:
  """
  @spec delete_email_identity(
          AWS.Client.t(),
          String.t(),
          delete_email_identity_request(),
          Keyword.t()
        ) ::
          {:ok, delete_email_identity_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_email_identity_errors()}
  def delete_email_identity(%Client{} = client, email_identity, input, options \\ []) do
    url_path = "/v1/email/identities/#{AWS.Util.encode_uri(email_identity)}"
    headers = []
    query_params = []

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
      200
    )
  end

  @doc """
  Obtain information about the email-sending status and capabilities of your
  Amazon Pinpoint account in the current AWS Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointemail%20GetAccount&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec get_account(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_account_errors()}
  def get_account(%Client{} = client, options \\ []) do
    url_path = "/v1/email/account"

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
  Retrieve a list of the blacklists that your dedicated IP addresses appear on.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointemail%20GetBlacklistReports&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:blacklist_item_names`
    (`t:list[com.amazonaws.pinpointemail#BlacklistItemName]`) A list of IP
    addresses that you want to retrieve blacklist information about. You can
    only specify the dedicated IP addresses that you use to send email using
    Amazon Pinpoint or Amazon SES.

  ## Optional parameters:
  """
  @spec get_blacklist_reports(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_blacklist_reports_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_blacklist_reports_errors()}
  def get_blacklist_reports(%Client{} = client, blacklist_item_names, options \\ []) do
    url_path = "/v1/email/deliverability-dashboard/blacklist-report"

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
    query_params = [{"BlacklistItemNames", blacklist_item_names}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get information about an existing configuration set, including the dedicated IP
  pool that it's associated with, whether or not it's enabled for sending email,
  and more.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointemail%20GetConfigurationSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:configuration_set_name` (`t:string`) The name of the configuration set that
    you want to obtain more information about.

  ## Optional parameters:
  """
  @spec get_configuration_set(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_configuration_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_configuration_set_errors()}
  def get_configuration_set(%Client{} = client, configuration_set_name, options \\ []) do
    url_path = "/v1/email/configuration-sets/#{AWS.Util.encode_uri(configuration_set_name)}"

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
  Retrieve a list of event destinations that are associated with a configuration
  set.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointemail%20GetConfigurationSetEventDestinations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:configuration_set_name` (`t:string`) The name of the configuration set that
    contains the event destination.

  ## Optional parameters:
  """
  @spec get_configuration_set_event_destinations(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_configuration_set_event_destinations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_configuration_set_event_destinations_errors()}
  def get_configuration_set_event_destinations(
        %Client{} = client,
        configuration_set_name,
        options \\ []
      ) do
    url_path =
      "/v1/email/configuration-sets/#{AWS.Util.encode_uri(configuration_set_name)}/event-destinations"

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
  Get information about a dedicated IP address, including the name of the
  dedicated IP pool that it's associated with, as well information about the
  automatic warm-up process for the address.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointemail%20GetDedicatedIp&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:ip` (`t:string`) The IP address that you want to obtain more information
    about. The value you specify has to be a dedicated IP address that's
    assocaited with your Amazon Pinpoint account.

  ## Optional parameters:
  """
  @spec get_dedicated_ip(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_dedicated_ip_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_dedicated_ip_errors()}
  def get_dedicated_ip(%Client{} = client, ip, options \\ []) do
    url_path = "/v1/email/dedicated-ips/#{AWS.Util.encode_uri(ip)}"

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
  List the dedicated IP addresses that are associated with your Amazon Pinpoint
  account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointemail%20GetDedicatedIps&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:next_token` (`t:string`) A token returned from a previous call to
    GetDedicatedIps to indicate the position of the dedicated IP pool in the
    list of IP pools.
  * `:page_size` (`t:integer`) The number of results to show in a single call to
    GetDedicatedIpsRequest. If the number of results is larger than the number
    you specified in this parameter, then the response includes a NextToken
    element, which you can use to obtain additional results.
  * `:pool_name` (`t:string`) The name of the IP pool that the dedicated IP
    address is associated with.
  """
  @spec get_dedicated_ips(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_dedicated_ips_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_dedicated_ips_errors()}
  def get_dedicated_ips(%Client{} = client, options \\ []) do
    url_path = "/v1/email/dedicated-ips"

    # Validate optional parameters
    optional_params = [next_token: nil, page_size: nil, pool_name: nil]

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
      if opt_val = Keyword.get(options, :pool_name) do
        [{"PoolName", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :page_size) do
        [{"PageSize", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"NextToken", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:next_token, :page_size, :pool_name])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieve information about the status of the Deliverability dashboard for your
  Amazon Pinpoint account. When the Deliverability dashboard is enabled, you
  gain access to reputation, deliverability, and other metrics for the domains
  that you use to send email using Amazon Pinpoint. You also gain the ability to
  perform predictive inbox placement tests.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointemail%20GetDeliverabilityDashboardOptions&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec get_deliverability_dashboard_options(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_deliverability_dashboard_options_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_deliverability_dashboard_options_errors()}
  def get_deliverability_dashboard_options(%Client{} = client, options \\ []) do
    url_path = "/v1/email/deliverability-dashboard"

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
  Retrieve the results of a predictive inbox placement test.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointemail%20GetDeliverabilityTestReport&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:report_id` (`t:string`) A unique string that identifies the predictive inbox
    placement test.

  ## Optional parameters:
  """
  @spec get_deliverability_test_report(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_deliverability_test_report_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_deliverability_test_report_errors()}
  def get_deliverability_test_report(%Client{} = client, report_id, options \\ []) do
    url_path = "/v1/email/deliverability-dashboard/test-reports/#{AWS.Util.encode_uri(report_id)}"

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
  Retrieve all the deliverability data for a specific campaign. This data is
  available for a campaign only if the campaign sent email by using a domain
  that the Deliverability dashboard is enabled for
  (`PutDeliverabilityDashboardOption` operation).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointemail%20GetDomainDeliverabilityCampaign&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:campaign_id` (`t:string`) The unique identifier for the campaign. Amazon
    Pinpoint automatically generates and assigns this identifier to a campaign.
    This value is not the same as the campaign identifier that Amazon Pinpoint
    assigns to campaigns that you create and manage by using the Amazon Pinpoint
    API or the Amazon Pinpoint console.

  ## Optional parameters:
  """
  @spec get_domain_deliverability_campaign(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_domain_deliverability_campaign_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_domain_deliverability_campaign_errors()}
  def get_domain_deliverability_campaign(%Client{} = client, campaign_id, options \\ []) do
    url_path = "/v1/email/deliverability-dashboard/campaigns/#{AWS.Util.encode_uri(campaign_id)}"

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
  Retrieve inbox placement and engagement rates for the domains that you use to
  send email.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointemail%20GetDomainStatisticsReport&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain` (`t:string`) The domain that you want to obtain deliverability
    metrics for.
  * `:end_date` (`t:timestamp`) The last day (in Unix time) that you want to
    obtain domain deliverability metrics for. The EndDate that you specify has
    to be less than or equal to 30 days after the StartDate.
  * `:start_date` (`t:timestamp`) The first day (in Unix time) that you want to
    obtain domain deliverability metrics for.

  ## Optional parameters:
  """
  @spec get_domain_statistics_report(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, get_domain_statistics_report_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_domain_statistics_report_errors()}
  def get_domain_statistics_report(
        %Client{} = client,
        domain,
        end_date,
        start_date,
        options \\ []
      ) do
    url_path =
      "/v1/email/deliverability-dashboard/statistics-report/#{AWS.Util.encode_uri(domain)}"

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
    query_params = [{"EndDate", end_date}, {"StartDate", start_date}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides information about a specific identity associated with your Amazon
  Pinpoint account, including the identity's verification status, its DKIM
  authentication status, and its custom Mail-From settings.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointemail%20GetEmailIdentity&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:email_identity` (`t:string`) The email identity that you want to retrieve
    details for.

  ## Optional parameters:
  """
  @spec get_email_identity(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_email_identity_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_email_identity_errors()}
  def get_email_identity(%Client{} = client, email_identity, options \\ []) do
    url_path = "/v1/email/identities/#{AWS.Util.encode_uri(email_identity)}"

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
  List all of the configuration sets associated with your Amazon Pinpoint account
  in the current region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointemail%20ListConfigurationSets&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:next_token` (`t:string`) A token returned from a previous call to
    ListConfigurationSets to indicate the position in the list of configuration
    sets.
  * `:page_size` (`t:integer`) The number of results to show in a single call to
    ListConfigurationSets. If the number of results is larger than the number
    you specified in this parameter, then the response includes a NextToken
    element, which you can use to obtain additional results.
  """
  @spec list_configuration_sets(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_configuration_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_configuration_sets_errors()}
  def list_configuration_sets(%Client{} = client, options \\ []) do
    url_path = "/v1/email/configuration-sets"

    # Validate optional parameters
    optional_params = [next_token: nil, page_size: nil]

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
      if opt_val = Keyword.get(options, :page_size) do
        [{"PageSize", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"NextToken", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:next_token, :page_size])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List all of the dedicated IP pools that exist in your Amazon Pinpoint account in
  the current AWS Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointemail%20ListDedicatedIpPools&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:next_token` (`t:string`) A token returned from a previous call to
    ListDedicatedIpPools to indicate the position in the list of dedicated IP
    pools.
  * `:page_size` (`t:integer`) The number of results to show in a single call to
    ListDedicatedIpPools. If the number of results is larger than the number you
    specified in this parameter, then the response includes a NextToken element,
    which you can use to obtain additional results.
  """
  @spec list_dedicated_ip_pools(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_dedicated_ip_pools_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_dedicated_ip_pools_errors()}
  def list_dedicated_ip_pools(%Client{} = client, options \\ []) do
    url_path = "/v1/email/dedicated-ip-pools"

    # Validate optional parameters
    optional_params = [next_token: nil, page_size: nil]

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
      if opt_val = Keyword.get(options, :page_size) do
        [{"PageSize", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"NextToken", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:next_token, :page_size])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Show a list of the predictive inbox placement tests that you've performed,
  regardless of their statuses. For predictive inbox placement tests that are
  complete, you can use the `GetDeliverabilityTestReport` operation to view the
  results.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointemail%20ListDeliverabilityTestReports&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:next_token` (`t:string`) A token returned from a previous call to
    ListDeliverabilityTestReports to indicate the position in the list of
    predictive inbox placement tests.
  * `:page_size` (`t:integer`) The number of results to show in a single call to
    ListDeliverabilityTestReports. If the number of results is larger than the
    number you specified in this parameter, then the response includes a
    NextToken element, which you can use to obtain additional results.
  """
  @spec list_deliverability_test_reports(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_deliverability_test_reports_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_deliverability_test_reports_errors()}
  def list_deliverability_test_reports(%Client{} = client, options \\ []) do
    url_path = "/v1/email/deliverability-dashboard/test-reports"

    # Validate optional parameters
    optional_params = [next_token: nil, page_size: nil]

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
      if opt_val = Keyword.get(options, :page_size) do
        [{"PageSize", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"NextToken", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:next_token, :page_size])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieve deliverability data for all the campaigns that used a specific domain
  to send email during a specified time range. This data is available for a
  domain only if you enabled the Deliverability dashboard
  (`PutDeliverabilityDashboardOption` operation) for the domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointemail%20ListDomainDeliverabilityCampaigns&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:subscribed_domain` (`t:string`) The domain to obtain deliverability data
    for.
  * `:end_date` (`t:timestamp`) The last day, in Unix time format, that you want
    to obtain deliverability data for. This value has to be less than or equal
    to 30 days after the value of the StartDate parameter.
  * `:start_date` (`t:timestamp`) The first day, in Unix time format, that you
    want to obtain deliverability data for.

  ## Optional parameters:
  * `:next_token` (`t:string`) A token that’s returned from a previous call to the
    ListDomainDeliverabilityCampaigns operation. This token indicates the
    position of a campaign in the list of campaigns.
  * `:page_size` (`t:integer`) The maximum number of results to include in
    response to a single call to the ListDomainDeliverabilityCampaigns
    operation. If the number of results is larger than the number that you
    specify in this parameter, the response includes a NextToken element, which
    you can use to obtain additional results.
  """
  @spec list_domain_deliverability_campaigns(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, list_domain_deliverability_campaigns_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_domain_deliverability_campaigns_errors()}
  def list_domain_deliverability_campaigns(
        %Client{} = client,
        subscribed_domain,
        end_date,
        start_date,
        options \\ []
      ) do
    url_path =
      "/v1/email/deliverability-dashboard/domains/#{AWS.Util.encode_uri(subscribed_domain)}/campaigns"

    # Validate optional parameters
    optional_params = [next_token: nil, page_size: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"EndDate", end_date}, {"StartDate", start_date}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :page_size) do
        [{"PageSize", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"NextToken", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:next_token, :page_size])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of all of the email identities that are associated with your
  Amazon Pinpoint account. An identity can be either an email address or a
  domain. This operation returns identities that are verified as well as those
  that aren't.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointemail%20ListEmailIdentities&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:next_token` (`t:string`) A token returned from a previous call to
    ListEmailIdentities to indicate the position in the list of identities.
  * `:page_size` (`t:integer`) The number of results to show in a single call to
    ListEmailIdentities. If the number of results is larger than the number you
    specified in this parameter, then the response includes a NextToken element,
    which you can use to obtain additional results.
  """
  @spec list_email_identities(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_email_identities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_email_identities_errors()}
  def list_email_identities(%Client{} = client, options \\ []) do
    url_path = "/v1/email/identities"

    # Validate optional parameters
    optional_params = [next_token: nil, page_size: nil]

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
      if opt_val = Keyword.get(options, :page_size) do
        [{"PageSize", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"NextToken", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:next_token, :page_size])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieve a list of the tags (keys and values) that are associated with a
  specified resource. A *tag* is a label that you optionally define and
  associate with a resource in Amazon Pinpoint. Each tag consists of a
  required *tag key* and an optional associated *tag value*. A tag key is a
  general label that acts as a category for more specific tag values. A tag
  value acts as a descriptor within a tag key.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointemail%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the resource
    that you want to retrieve tag information for.

  ## Optional parameters:
  """
  @spec list_tags_for_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/v1/email/tags"

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
    query_params = [{"ResourceArn", resource_arn}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Enable or disable the automatic warm-up feature for dedicated IP addresses.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointemail%20PutAccountDedicatedIpWarmupAttributes&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec put_account_dedicated_ip_warmup_attributes(
          AWS.Client.t(),
          put_account_dedicated_ip_warmup_attributes_request(),
          Keyword.t()
        ) ::
          {:ok, put_account_dedicated_ip_warmup_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_account_dedicated_ip_warmup_attributes_errors()}
  def put_account_dedicated_ip_warmup_attributes(%Client{} = client, input, options \\ []) do
    url_path = "/v1/email/account/dedicated-ips/warmup"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Enable or disable the ability of your account to send email.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointemail%20PutAccountSendingAttributes&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec put_account_sending_attributes(
          AWS.Client.t(),
          put_account_sending_attributes_request(),
          Keyword.t()
        ) ::
          {:ok, put_account_sending_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_account_sending_attributes_errors()}
  def put_account_sending_attributes(%Client{} = client, input, options \\ []) do
    url_path = "/v1/email/account/sending"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Associate a configuration set with a dedicated IP pool. You can use dedicated IP
  pools to create groups of dedicated IP addresses for sending specific types of
  email.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointemail%20PutConfigurationSetDeliveryOptions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:configuration_set_name` (`t:string`) The name of the configuration set that
    you want to associate with a dedicated IP pool.

  ## Optional parameters:
  """
  @spec put_configuration_set_delivery_options(
          AWS.Client.t(),
          String.t(),
          put_configuration_set_delivery_options_request(),
          Keyword.t()
        ) ::
          {:ok, put_configuration_set_delivery_options_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_configuration_set_delivery_options_errors()}
  def put_configuration_set_delivery_options(
        %Client{} = client,
        configuration_set_name,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/email/configuration-sets/#{AWS.Util.encode_uri(configuration_set_name)}/delivery-options"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Enable or disable collection of reputation metrics for emails that you send
  using a particular configuration set in a specific AWS Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointemail%20PutConfigurationSetReputationOptions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:configuration_set_name` (`t:string`) The name of the configuration set that
    you want to enable or disable reputation metric tracking for.

  ## Optional parameters:
  """
  @spec put_configuration_set_reputation_options(
          AWS.Client.t(),
          String.t(),
          put_configuration_set_reputation_options_request(),
          Keyword.t()
        ) ::
          {:ok, put_configuration_set_reputation_options_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_configuration_set_reputation_options_errors()}
  def put_configuration_set_reputation_options(
        %Client{} = client,
        configuration_set_name,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/email/configuration-sets/#{AWS.Util.encode_uri(configuration_set_name)}/reputation-options"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Enable or disable email sending for messages that use a particular configuration
  set in a specific AWS Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointemail%20PutConfigurationSetSendingOptions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:configuration_set_name` (`t:string`) The name of the configuration set that
    you want to enable or disable email sending for.

  ## Optional parameters:
  """
  @spec put_configuration_set_sending_options(
          AWS.Client.t(),
          String.t(),
          put_configuration_set_sending_options_request(),
          Keyword.t()
        ) ::
          {:ok, put_configuration_set_sending_options_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_configuration_set_sending_options_errors()}
  def put_configuration_set_sending_options(
        %Client{} = client,
        configuration_set_name,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/email/configuration-sets/#{AWS.Util.encode_uri(configuration_set_name)}/sending"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Specify a custom domain to use for open and click tracking elements in email
  that you send using Amazon Pinpoint.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointemail%20PutConfigurationSetTrackingOptions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:configuration_set_name` (`t:string`) The name of the configuration set that
    you want to add a custom tracking domain to.

  ## Optional parameters:
  """
  @spec put_configuration_set_tracking_options(
          AWS.Client.t(),
          String.t(),
          put_configuration_set_tracking_options_request(),
          Keyword.t()
        ) ::
          {:ok, put_configuration_set_tracking_options_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_configuration_set_tracking_options_errors()}
  def put_configuration_set_tracking_options(
        %Client{} = client,
        configuration_set_name,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/email/configuration-sets/#{AWS.Util.encode_uri(configuration_set_name)}/tracking-options"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Move a dedicated IP address to an existing dedicated IP pool.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointemail%20PutDedicatedIpInPool&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:ip` (`t:string`) The IP address that you want to move to the dedicated IP
    pool. The value you specify has to be a dedicated IP address that's
    associated with your Amazon Pinpoint account.

  ## Optional parameters:
  """
  @spec put_dedicated_ip_in_pool(
          AWS.Client.t(),
          String.t(),
          put_dedicated_ip_in_pool_request(),
          Keyword.t()
        ) ::
          {:ok, put_dedicated_ip_in_pool_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_dedicated_ip_in_pool_errors()}
  def put_dedicated_ip_in_pool(%Client{} = client, ip, input, options \\ []) do
    url_path = "/v1/email/dedicated-ips/#{AWS.Util.encode_uri(ip)}/pool"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @spec put_dedicated_ip_warmup_attributes(
          AWS.Client.t(),
          String.t(),
          put_dedicated_ip_warmup_attributes_request(),
          Keyword.t()
        ) ::
          {:ok, put_dedicated_ip_warmup_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_dedicated_ip_warmup_attributes_errors()}
  def put_dedicated_ip_warmup_attributes(%Client{} = client, ip, input, options \\ []) do
    url_path = "/v1/email/dedicated-ips/#{AWS.Util.encode_uri(ip)}/warmup"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Enable or disable the Deliverability dashboard for your Amazon Pinpoint account.
  When you enable the Deliverability dashboard, you gain access to reputation,
  deliverability, and other metrics for the domains that you use to send email
  using Amazon Pinpoint. You also gain the ability to perform predictive inbox
  placement tests.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointemail%20PutDeliverabilityDashboardOption&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec put_deliverability_dashboard_option(
          AWS.Client.t(),
          put_deliverability_dashboard_option_request(),
          Keyword.t()
        ) ::
          {:ok, put_deliverability_dashboard_option_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_deliverability_dashboard_option_errors()}
  def put_deliverability_dashboard_option(%Client{} = client, input, options \\ []) do
    url_path = "/v1/email/deliverability-dashboard"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Used to enable or disable DKIM authentication for an email identity.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointemail%20PutEmailIdentityDkimAttributes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:email_identity` (`t:string`) The email identity that you want to change the
    DKIM settings for.

  ## Optional parameters:
  """
  @spec put_email_identity_dkim_attributes(
          AWS.Client.t(),
          String.t(),
          put_email_identity_dkim_attributes_request(),
          Keyword.t()
        ) ::
          {:ok, put_email_identity_dkim_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_email_identity_dkim_attributes_errors()}
  def put_email_identity_dkim_attributes(%Client{} = client, email_identity, input, options \\ []) do
    url_path = "/v1/email/identities/#{AWS.Util.encode_uri(email_identity)}/dkim"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Used to enable or disable feedback forwarding for an identity. This setting
  determines what happens when an identity is used to send an email that results
  in a bounce or complaint event. When you enable feedback forwarding, Amazon
  Pinpoint sends you email notifications when bounce or complaint events occur.
  Amazon Pinpoint sends this notification to the address that you specified in
  the Return-Path header of the original email.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointemail%20PutEmailIdentityFeedbackAttributes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:email_identity` (`t:string`) The email identity that you want to configure
    bounce and complaint feedback forwarding for.

  ## Optional parameters:
  """
  @spec put_email_identity_feedback_attributes(
          AWS.Client.t(),
          String.t(),
          put_email_identity_feedback_attributes_request(),
          Keyword.t()
        ) ::
          {:ok, put_email_identity_feedback_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_email_identity_feedback_attributes_errors()}
  def put_email_identity_feedback_attributes(
        %Client{} = client,
        email_identity,
        input,
        options \\ []
      ) do
    url_path = "/v1/email/identities/#{AWS.Util.encode_uri(email_identity)}/feedback"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Used to enable or disable the custom Mail-From domain configuration for an email
  identity.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointemail%20PutEmailIdentityMailFromAttributes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:email_identity` (`t:string`) The verified email identity that you want to
    set up the custom MAIL FROM domain for.

  ## Optional parameters:
  """
  @spec put_email_identity_mail_from_attributes(
          AWS.Client.t(),
          String.t(),
          put_email_identity_mail_from_attributes_request(),
          Keyword.t()
        ) ::
          {:ok, put_email_identity_mail_from_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_email_identity_mail_from_attributes_errors()}
  def put_email_identity_mail_from_attributes(
        %Client{} = client,
        email_identity,
        input,
        options \\ []
      ) do
    url_path = "/v1/email/identities/#{AWS.Util.encode_uri(email_identity)}/mail-from"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Sends an email message. You can use the Amazon Pinpoint Email API to send two
  types of messages:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointemail%20SendEmail&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec send_email(AWS.Client.t(), send_email_request(), Keyword.t()) ::
          {:ok, send_email_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_email_errors()}
  def send_email(%Client{} = client, input, options \\ []) do
    url_path = "/v1/email/outbound-emails"
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
  Add one or more tags (keys and values) to a specified resource. A *tag* is a
  label that you optionally define and associate with a resource in Amazon
  Pinpoint. Tags can help you categorize and manage resources in different ways,
  such as by purpose, owner, environment, or other criteria. A resource can have
  as many as 50 tags.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointemail%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec tag_resource(AWS.Client.t(), tag_resource_request(), Keyword.t()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/v1/email/tags"
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
  Remove one or more tags (keys and values) from a specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointemail%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the resource
    that you want to remove one or more tags from.
  * `:tag_keys` (`t:list[com.amazonaws.pinpointemail#TagKey]`) The tags (tag keys)
    that you want to remove from the resource. When you specify a tag key, the
    action removes both that key and its associated tag value.

  ## Optional parameters:
  """
  @spec untag_resource(AWS.Client.t(), untag_resource_request(), Keyword.t()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/v1/email/tags"
    headers = []

    {query_params, input} =
      [
        {"ResourceArn", "ResourceArn"},
        {"TagKeys", "TagKeys"}
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
      200
    )
  end

  @doc """
  Update the configuration of an event destination for a configuration set.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointemail%20UpdateConfigurationSetEventDestination&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:configuration_set_name` (`t:string`) The name of the configuration set that
    contains the event destination that you want to modify.
  * `:event_destination_name` (`t:string`) The name of the event destination that
    you want to modify.

  ## Optional parameters:
  """
  @spec update_configuration_set_event_destination(
          AWS.Client.t(),
          String.t(),
          String.t(),
          update_configuration_set_event_destination_request(),
          Keyword.t()
        ) ::
          {:ok, update_configuration_set_event_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_configuration_set_event_destination_errors()}
  def update_configuration_set_event_destination(
        %Client{} = client,
        configuration_set_name,
        event_destination_name,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/email/configuration-sets/#{AWS.Util.encode_uri(configuration_set_name)}/event-destinations/#{AWS.Util.encode_uri(event_destination_name)}"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
