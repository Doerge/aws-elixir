# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SESv2 do
  @moduledoc """
  Amazon SES API v2
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      create_custom_verification_email_template_response() :: %{}
      
  """
  @type create_custom_verification_email_template_response() :: %{}

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
      
      create_import_job_response() :: %{
        "JobId" => String.t()
      }
      
  """
  @type create_import_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_email_identity_response() :: %{
        "ConfigurationSetName" => String.t(),
        "DkimAttributes" => dkim_attributes(),
        "FeedbackForwardingStatus" => boolean(),
        "IdentityType" => list(any()),
        "MailFromAttributes" => mail_from_attributes(),
        "Policies" => map(),
        "Tags" => list(tag()()),
        "VerificationInfo" => verification_info(),
        "VerificationStatus" => list(any()),
        "VerifiedForSendingStatus" => boolean()
      }
      
  """
  @type get_email_identity_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dkim_signing_attributes() :: %{
        "DomainSigningPrivateKey" => String.t(),
        "DomainSigningSelector" => String.t(),
        "NextSigningKeyLength" => list(any())
      }
      
  """
  @type dkim_signing_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dashboard_options() :: %{
        "EngagementMetrics" => list(any())
      }
      
  """
  @type dashboard_options() :: %{String.t() => any()}

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
      
      put_account_suppression_attributes_response() :: %{}
      
  """
  @type put_account_suppression_attributes_response() :: %{}

  @typedoc """

  ## Example:
      
      update_email_identity_policy_response() :: %{}
      
  """
  @type update_email_identity_policy_response() :: %{}

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
      
      get_suppressed_destination_request() :: %{}
      
  """
  @type get_suppressed_destination_request() :: %{}

  @typedoc """

  ## Example:
      
      list_export_jobs_request() :: %{
        optional("ExportSourceType") => list(any()),
        optional("JobStatus") => list(any()),
        optional("NextToken") => String.t(),
        optional("PageSize") => integer()
      }
      
  """
  @type list_export_jobs_request() :: %{String.t() => any()}

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
      
      create_import_job_request() :: %{
        required("ImportDataSource") => import_data_source(),
        required("ImportDestination") => import_destination()
      }
      
  """
  @type create_import_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      suppression_attributes() :: %{
        "SuppressedReasons" => list(list(any())())
      }
      
  """
  @type suppression_attributes() :: %{String.t() => any()}

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
        "Details" => account_details(),
        "EnforcementStatus" => String.t(),
        "ProductionAccessEnabled" => boolean(),
        "SendQuota" => send_quota(),
        "SendingEnabled" => boolean(),
        "SuppressionAttributes" => suppression_attributes(),
        "VdmAttributes" => vdm_attributes()
      }
      
  """
  @type get_account_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_contact_request() :: %{}
      
  """
  @type delete_contact_request() :: %{}

  @typedoc """

  ## Example:
      
      get_deliverability_test_report_request() :: %{}
      
  """
  @type get_deliverability_test_report_request() :: %{}

  @typedoc """

  ## Example:
      
      get_contact_list_response() :: %{
        "ContactListName" => String.t(),
        "CreatedTimestamp" => non_neg_integer(),
        "Description" => String.t(),
        "LastUpdatedTimestamp" => non_neg_integer(),
        "Tags" => list(tag()()),
        "Topics" => list(topic()())
      }
      
  """
  @type get_contact_list_response() :: %{String.t() => any()}

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
      
      delete_contact_list_response() :: %{}
      
  """
  @type delete_contact_list_response() :: %{}

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
      
      update_email_template_request() :: %{
        required("TemplateContent") => email_template_content()
      }
      
  """
  @type update_email_template_request() :: %{String.t() => any()}

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
      
      cancel_export_job_response() :: %{}
      
  """
  @type cancel_export_job_response() :: %{}

  @typedoc """

  ## Example:
      
      create_email_identity_policy_request() :: %{
        required("Policy") => String.t()
      }
      
  """
  @type create_email_identity_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_contacts_filter() :: %{
        "FilteredStatus" => list(any()),
        "TopicFilter" => topic_filter()
      }
      
  """
  @type list_contacts_filter() :: %{String.t() => any()}

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
      
      event_details() :: %{
        "Bounce" => bounce(),
        "Complaint" => complaint()
      }
      
  """
  @type event_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      email_template_content() :: %{
        "Html" => String.t(),
        "Subject" => String.t(),
        "Text" => String.t()
      }
      
  """
  @type email_template_content() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_contact_lists_request() :: %{
        optional("NextToken") => String.t(),
        optional("PageSize") => integer()
      }
      
  """
  @type list_contact_lists_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      contact_list_destination() :: %{
        "ContactListImportAction" => list(any()),
        "ContactListName" => String.t()
      }
      
  """
  @type contact_list_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_configuration_set_vdm_options_request() :: %{
        optional("VdmOptions") => vdm_options()
      }
      
  """
  @type put_configuration_set_vdm_options_request() :: %{String.t() => any()}

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
      
      vdm_options() :: %{
        "DashboardOptions" => dashboard_options(),
        "GuardianOptions" => guardian_options()
      }
      
  """
  @type vdm_options() :: %{String.t() => any()}

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
      
      update_contact_list_response() :: %{}
      
  """
  @type update_contact_list_response() :: %{}

  @typedoc """

  ## Example:
      
      verification_info() :: %{
        "ErrorType" => list(any()),
        "LastCheckedTimestamp" => non_neg_integer(),
        "LastSuccessTimestamp" => non_neg_integer(),
        "SOARecord" => s_o_a_record()
      }
      
  """
  @type verification_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_export_job_response() :: %{
        "JobId" => String.t()
      }
      
  """
  @type create_export_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      message_insights_data_source() :: %{
        "EndDate" => non_neg_integer(),
        "Exclude" => message_insights_filters(),
        "Include" => message_insights_filters(),
        "MaxResults" => integer(),
        "StartDate" => non_neg_integer()
      }
      
  """
  @type message_insights_data_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      suppressed_destination_summary() :: %{
        "EmailAddress" => String.t(),
        "LastUpdateTime" => non_neg_integer(),
        "Reason" => list(any())
      }
      
  """
  @type suppressed_destination_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_email_identity_policy_response() :: %{}
      
  """
  @type delete_email_identity_policy_response() :: %{}

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
      
      get_custom_verification_email_template_response() :: %{
        "FailureRedirectionURL" => String.t(),
        "FromEmailAddress" => String.t(),
        "SuccessRedirectionURL" => String.t(),
        "TemplateContent" => String.t(),
        "TemplateName" => String.t(),
        "TemplateSubject" => String.t()
      }
      
  """
  @type get_custom_verification_email_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dkim_attributes() :: %{
        "CurrentSigningKeyLength" => list(any()),
        "LastKeyGenerationTimestamp" => non_neg_integer(),
        "NextSigningKeyLength" => list(any()),
        "SigningAttributesOrigin" => list(any()),
        "SigningEnabled" => boolean(),
        "Status" => list(any()),
        "Tokens" => list(String.t()())
      }
      
  """
  @type dkim_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_email_identity_policies_response() :: %{
        "Policies" => map()
      }
      
  """
  @type get_email_identity_policies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_dedicated_ip_pool_scaling_attributes_request() :: %{
        required("ScalingMode") => list(any())
      }
      
  """
  @type put_dedicated_ip_pool_scaling_attributes_request() :: %{String.t() => any()}

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
      
      list_email_templates_request() :: %{
        optional("NextToken") => String.t(),
        optional("PageSize") => integer()
      }
      
  """
  @type list_email_templates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test_render_email_template_request() :: %{
        required("TemplateData") => String.t()
      }
      
  """
  @type test_render_email_template_request() :: %{String.t() => any()}

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
      
      put_account_details_request() :: %{
        optional("AdditionalContactEmailAddresses") => list(String.t()()),
        optional("ContactLanguage") => list(any()),
        optional("ProductionAccessEnabled") => boolean(),
        required("MailType") => list(any()),
        required("UseCaseDescription") => String.t(),
        required("WebsiteURL") => String.t()
      }
      
  """
  @type put_account_details_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_bulk_email_response() :: %{
        "BulkEmailEntryResults" => list(bulk_email_entry_result()())
      }
      
  """
  @type send_bulk_email_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_custom_verification_email_template_request() :: %{}
      
  """
  @type get_custom_verification_email_template_request() :: %{}

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
      
      put_account_vdm_attributes_response() :: %{}
      
  """
  @type put_account_vdm_attributes_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_email_identity_request() :: %{}
      
  """
  @type delete_email_identity_request() :: %{}

  @typedoc """

  ## Example:
      
      s_o_a_record() :: %{
        "AdminEmail" => String.t(),
        "PrimaryNameServer" => String.t(),
        "SerialNumber" => float()
      }
      
  """
  @type s_o_a_record() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_service_error_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type internal_service_error_exception() :: %{String.t() => any()}

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
      
      delete_custom_verification_email_template_response() :: %{}
      
  """
  @type delete_custom_verification_email_template_response() :: %{}

  @typedoc """

  ## Example:
      
      put_suppressed_destination_request() :: %{
        required("EmailAddress") => String.t(),
        required("Reason") => list(any())
      }
      
  """
  @type put_suppressed_destination_request() :: %{String.t() => any()}

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
        "EventBridgeDestination" => event_bridge_destination(),
        "KinesisFirehoseDestination" => kinesis_firehose_destination(),
        "MatchingEventTypes" => list(list(any())()),
        "PinpointDestination" => pinpoint_destination(),
        "SnsDestination" => sns_destination()
      }
      
  """
  @type event_destination_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_suppressed_destinations_response() :: %{
        "NextToken" => String.t(),
        "SuppressedDestinationSummaries" => list(suppressed_destination_summary()())
      }
      
  """
  @type list_suppressed_destinations_response() :: %{String.t() => any()}

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
      
      put_account_suppression_attributes_request() :: %{
        optional("SuppressedReasons") => list(list(any())())
      }
      
  """
  @type put_account_suppression_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_email_response() :: %{
        "MessageId" => String.t()
      }
      
  """
  @type send_email_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_suppressed_destinations_request() :: %{
        optional("EndDate") => non_neg_integer(),
        optional("NextToken") => String.t(),
        optional("PageSize") => integer(),
        optional("Reasons") => list(list(any())()),
        optional("StartDate") => non_neg_integer()
      }
      
  """
  @type list_suppressed_destinations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_dedicated_ip_pool_request() :: %{}
      
  """
  @type delete_dedicated_ip_pool_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_email_template_request() :: %{}
      
  """
  @type delete_email_template_request() :: %{}

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
      
      put_configuration_set_suppression_options_request() :: %{
        optional("SuppressedReasons") => list(list(any())())
      }
      
  """
  @type put_configuration_set_suppression_options_request() :: %{String.t() => any()}

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
      
      get_dedicated_ip_pool_request() :: %{}
      
  """
  @type get_dedicated_ip_pool_request() :: %{}

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
      
      create_email_template_request() :: %{
        required("TemplateContent") => email_template_content(),
        required("TemplateName") => String.t()
      }
      
  """
  @type create_email_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_contact_response() :: %{}
      
  """
  @type create_contact_response() :: %{}

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
      
      create_email_identity_policy_response() :: %{}
      
  """
  @type create_email_identity_policy_response() :: %{}

  @typedoc """

  ## Example:
      
      email_insights() :: %{
        "Destination" => String.t(),
        "Events" => list(insights_event()()),
        "Isp" => String.t()
      }
      
  """
  @type email_insights() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_blacklist_reports_request() :: %{
        required("BlacklistItemNames") => list(String.t()())
      }
      
  """
  @type get_blacklist_reports_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_email_identity_configuration_set_attributes_response() :: %{}
      
  """
  @type put_email_identity_configuration_set_attributes_response() :: %{}

  @typedoc """

  ## Example:
      
      message_insights_filters() :: %{
        "Destination" => list(String.t()()),
        "FromEmailAddress" => list(String.t()()),
        "Isp" => list(String.t()()),
        "LastDeliveryEvent" => list(list(any())()),
        "LastEngagementEvent" => list(list(any())()),
        "Subject" => list(String.t()())
      }
      
  """
  @type message_insights_filters() :: %{String.t() => any()}

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
      
      list_custom_verification_email_templates_request() :: %{
        optional("NextToken") => String.t(),
        optional("PageSize") => integer()
      }
      
  """
  @type list_custom_verification_email_templates_request() :: %{String.t() => any()}

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
      
      list_import_jobs_request() :: %{
        optional("ImportDestinationType") => list(any()),
        optional("NextToken") => String.t(),
        optional("PageSize") => integer()
      }
      
  """
  @type list_import_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_suppressed_destination_response() :: %{}
      
  """
  @type delete_suppressed_destination_response() :: %{}

  @typedoc """

  ## Example:
      
      create_email_identity_request() :: %{
        optional("ConfigurationSetName") => String.t(),
        optional("DkimSigningAttributes") => dkim_signing_attributes(),
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
      
      put_configuration_set_suppression_options_response() :: %{}
      
  """
  @type put_configuration_set_suppression_options_response() :: %{}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_export_job_request() :: %{}
      
  """
  @type get_export_job_request() :: %{}

  @typedoc """

  ## Example:
      
      message_header() :: %{
        "Name" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type message_header() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_metric_data_query() :: %{
        "Dimensions" => map(),
        "EndDate" => non_neg_integer(),
        "Id" => String.t(),
        "Metric" => list(any()),
        "Namespace" => list(any()),
        "StartDate" => non_neg_integer()
      }
      
  """
  @type batch_get_metric_data_query() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_message_insights_request() :: %{}
      
  """
  @type get_message_insights_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_suppressed_destination_request() :: %{}
      
  """
  @type delete_suppressed_destination_request() :: %{}

  @typedoc """

  ## Example:
      
      export_data_source() :: %{
        "MessageInsightsDataSource" => message_insights_data_source(),
        "MetricsDataSource" => metrics_data_source()
      }
      
  """
  @type export_data_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_data_error() :: %{
        "Code" => list(any()),
        "Id" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type metric_data_error() :: %{String.t() => any()}

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
      
      get_export_job_response() :: %{
        "CompletedTimestamp" => non_neg_integer(),
        "CreatedTimestamp" => non_neg_integer(),
        "ExportDataSource" => export_data_source(),
        "ExportDestination" => export_destination(),
        "ExportSourceType" => list(any()),
        "FailureInfo" => failure_info(),
        "JobId" => String.t(),
        "JobStatus" => list(any()),
        "Statistics" => export_statistics()
      }
      
  """
  @type get_export_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_destination() :: %{
        "CloudWatchDestination" => cloud_watch_destination(),
        "Enabled" => boolean(),
        "EventBridgeDestination" => event_bridge_destination(),
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
      
      update_contact_response() :: %{}
      
  """
  @type update_contact_response() :: %{}

  @typedoc """

  ## Example:
      
      guardian_attributes() :: %{
        "OptimizedSharedDelivery" => list(any())
      }
      
  """
  @type guardian_attributes() :: %{String.t() => any()}

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
      
      suppression_list_destination() :: %{
        "SuppressionListImportAction" => list(any())
      }
      
  """
  @type suppression_list_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_configuration_set_event_destinations_request() :: %{}
      
  """
  @type get_configuration_set_event_destinations_request() :: %{}

  @typedoc """

  ## Example:
      
      put_configuration_set_vdm_options_response() :: %{}
      
  """
  @type put_configuration_set_vdm_options_response() :: %{}

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
      
      recommendation() :: %{
        "CreatedTimestamp" => non_neg_integer(),
        "Description" => String.t(),
        "Impact" => list(any()),
        "LastUpdatedTimestamp" => non_neg_integer(),
        "ResourceArn" => String.t(),
        "Status" => list(any()),
        "Type" => list(any())
      }
      
  """
  @type recommendation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_account_dedicated_ip_warmup_attributes_request() :: %{
        optional("AutoWarmupEnabled") => boolean()
      }
      
  """
  @type put_account_dedicated_ip_warmup_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_import_job_request() :: %{}
      
  """
  @type get_import_job_request() :: %{}

  @typedoc """

  ## Example:
      
      put_dedicated_ip_in_pool_response() :: %{}
      
  """
  @type put_dedicated_ip_in_pool_response() :: %{}

  @typedoc """

  ## Example:
      
      invalid_next_token_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_next_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      topic() :: %{
        "DefaultSubscriptionStatus" => list(any()),
        "Description" => String.t(),
        "DisplayName" => String.t(),
        "TopicName" => String.t()
      }
      
  """
  @type topic() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_email_template_response() :: %{}
      
  """
  @type delete_email_template_response() :: %{}

  @typedoc """

  ## Example:
      
      account_details() :: %{
        "AdditionalContactEmailAddresses" => list(String.t()()),
        "ContactLanguage" => list(any()),
        "MailType" => list(any()),
        "ReviewDetails" => review_details(),
        "UseCaseDescription" => String.t(),
        "WebsiteURL" => String.t()
      }
      
  """
  @type account_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_custom_verification_email_response() :: %{
        "MessageId" => String.t()
      }
      
  """
  @type send_custom_verification_email_response() :: %{String.t() => any()}

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
        "SendingEnabled" => boolean(),
        "VerificationStatus" => list(any())
      }
      
  """
  @type identity_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metrics_data_source() :: %{
        "Dimensions" => map(),
        "EndDate" => non_neg_integer(),
        "Metrics" => list(export_metric()()),
        "Namespace" => list(any()),
        "StartDate" => non_neg_integer()
      }
      
  """
  @type metrics_data_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_management_options() :: %{
        "ContactListName" => String.t(),
        "TopicName" => String.t()
      }
      
  """
  @type list_management_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_custom_verification_email_template_request() :: %{
        required("FailureRedirectionURL") => String.t(),
        required("FromEmailAddress") => String.t(),
        required("SuccessRedirectionURL") => String.t(),
        required("TemplateContent") => String.t(),
        required("TemplateName") => String.t(),
        required("TemplateSubject") => String.t()
      }
      
  """
  @type create_custom_verification_email_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_metric_data_request() :: %{
        required("Queries") => list(batch_get_metric_data_query()())
      }
      
  """
  @type batch_get_metric_data_request() :: %{String.t() => any()}

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
      
      update_custom_verification_email_template_request() :: %{
        required("FailureRedirectionURL") => String.t(),
        required("FromEmailAddress") => String.t(),
        required("SuccessRedirectionURL") => String.t(),
        required("TemplateContent") => String.t(),
        required("TemplateSubject") => String.t()
      }
      
  """
  @type update_custom_verification_email_template_request() :: %{String.t() => any()}

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
      
      bounce() :: %{
        "BounceSubType" => String.t(),
        "BounceType" => list(any()),
        "DiagnosticCode" => String.t()
      }
      
  """
  @type bounce() :: %{String.t() => any()}

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
      
      get_message_insights_response() :: %{
        "EmailTags" => list(message_tag()()),
        "FromEmailAddress" => String.t(),
        "Insights" => list(email_insights()()),
        "MessageId" => String.t(),
        "Subject" => String.t()
      }
      
  """
  @type get_message_insights_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_custom_verification_email_templates_response() :: %{
        "CustomVerificationEmailTemplates" => list(custom_verification_email_template_metadata()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_custom_verification_email_templates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_email_identity_dkim_attributes_request() :: %{
        optional("SigningEnabled") => boolean()
      }
      
  """
  @type put_email_identity_dkim_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_custom_verification_email_template_request() :: %{}
      
  """
  @type delete_custom_verification_email_template_request() :: %{}

  @typedoc """

  ## Example:
      
      dashboard_attributes() :: %{
        "EngagementMetrics" => list(any())
      }
      
  """
  @type dashboard_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_configuration_set_sending_options_response() :: %{}
      
  """
  @type put_configuration_set_sending_options_response() :: %{}

  @typedoc """

  ## Example:
      
      replacement_email_content() :: %{
        "ReplacementTemplate" => replacement_template()
      }
      
  """
  @type replacement_email_content() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_contact_list_request() :: %{
        optional("Description") => String.t(),
        optional("Tags") => list(tag()()),
        optional("Topics") => list(topic()()),
        required("ContactListName") => String.t()
      }
      
  """
  @type create_contact_list_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      contact() :: %{
        "EmailAddress" => String.t(),
        "LastUpdatedTimestamp" => non_neg_integer(),
        "TopicDefaultPreferences" => list(topic_preference()()),
        "TopicPreferences" => list(topic_preference()()),
        "UnsubscribeAll" => boolean()
      }
      
  """
  @type contact() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_job_summary() :: %{
        "CompletedTimestamp" => non_neg_integer(),
        "CreatedTimestamp" => non_neg_integer(),
        "ExportSourceType" => list(any()),
        "JobId" => String.t(),
        "JobStatus" => list(any())
      }
      
  """
  @type export_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_suppressed_destination_response() :: %{
        "SuppressedDestination" => suppressed_destination()
      }
      
  """
  @type get_suppressed_destination_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vdm_attributes() :: %{
        "DashboardAttributes" => dashboard_attributes(),
        "GuardianAttributes" => guardian_attributes(),
        "VdmEnabled" => list(any())
      }
      
  """
  @type vdm_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_statistics() :: %{
        "ExportedRecordsCount" => integer(),
        "ProcessedRecordsCount" => integer()
      }
      
  """
  @type export_statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_bulk_email_request() :: %{
        optional("ConfigurationSetName") => String.t(),
        optional("DefaultEmailTags") => list(message_tag()()),
        optional("FeedbackForwardingEmailAddress") => String.t(),
        optional("FeedbackForwardingEmailAddressIdentityArn") => String.t(),
        optional("FromEmailAddress") => String.t(),
        optional("FromEmailAddressIdentityArn") => String.t(),
        optional("ReplyToAddresses") => list(String.t()()),
        required("BulkEmailEntries") => list(bulk_email_entry()()),
        required("DefaultContent") => bulk_email_content()
      }
      
  """
  @type send_bulk_email_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_dedicated_ip_pool_response() :: %{}
      
  """
  @type delete_dedicated_ip_pool_response() :: %{}

  @typedoc """

  ## Example:
      
      suppressed_destination() :: %{
        "Attributes" => suppressed_destination_attributes(),
        "EmailAddress" => String.t(),
        "LastUpdateTime" => non_neg_integer(),
        "Reason" => list(any())
      }
      
  """
  @type suppressed_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      insights_event() :: %{
        "Details" => event_details(),
        "Timestamp" => non_neg_integer(),
        "Type" => list(any())
      }
      
  """
  @type insights_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_export_job_request() :: %{
        required("ExportDataSource") => export_data_source(),
        required("ExportDestination") => export_destination()
      }
      
  """
  @type create_export_job_request() :: %{String.t() => any()}

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
        optional("ScalingMode") => list(any()),
        optional("Tags") => list(tag()()),
        required("PoolName") => String.t()
      }
      
  """
  @type create_dedicated_ip_pool_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_bridge_destination() :: %{
        "EventBusArn" => String.t()
      }
      
  """
  @type event_bridge_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_custom_verification_email_request() :: %{
        optional("ConfigurationSetName") => String.t(),
        required("EmailAddress") => String.t(),
        required("TemplateName") => String.t()
      }
      
  """
  @type send_custom_verification_email_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_dedicated_ip_response() :: %{
        "DedicatedIp" => dedicated_ip()
      }
      
  """
  @type get_dedicated_ip_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_email_identity_dkim_signing_attributes_request() :: %{
        optional("SigningAttributes") => dkim_signing_attributes(),
        required("SigningAttributesOrigin") => list(any())
      }
      
  """
  @type put_email_identity_dkim_signing_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_import_jobs_response() :: %{
        "ImportJobs" => list(import_job_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_import_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_metric_data_response() :: %{
        "Errors" => list(metric_data_error()()),
        "Results" => list(metric_data_result()())
      }
      
  """
  @type batch_get_metric_data_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_custom_verification_email_template_response() :: %{}
      
  """
  @type update_custom_verification_email_template_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_configuration_set_event_destination_request() :: %{}
      
  """
  @type delete_configuration_set_event_destination_request() :: %{}

  @typedoc """

  ## Example:
      
      put_dedicated_ip_pool_scaling_attributes_response() :: %{}
      
  """
  @type put_dedicated_ip_pool_scaling_attributes_response() :: %{}

  @typedoc """

  ## Example:
      
      get_contact_request() :: %{}
      
  """
  @type get_contact_request() :: %{}

  @typedoc """

  ## Example:
      
      create_configuration_set_event_destination_response() :: %{}
      
  """
  @type create_configuration_set_event_destination_response() :: %{}

  @typedoc """

  ## Example:
      
      import_destination() :: %{
        "ContactListDestination" => contact_list_destination(),
        "SuppressionListDestination" => suppression_list_destination()
      }
      
  """
  @type import_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_contacts_request() :: %{
        optional("Filter") => list_contacts_filter(),
        optional("NextToken") => String.t(),
        optional("PageSize") => integer()
      }
      
  """
  @type list_contacts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bulk_email_content() :: %{
        "Template" => template()
      }
      
  """
  @type bulk_email_content() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_contact_response() :: %{}
      
  """
  @type delete_contact_response() :: %{}

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
      
      dedicated_ip_pool() :: %{
        "PoolName" => String.t(),
        "ScalingMode" => list(any())
      }
      
  """
  @type dedicated_ip_pool() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_email_identity_response() :: %{}
      
  """
  @type delete_email_identity_response() :: %{}

  @typedoc """

  ## Example:
      
      get_import_job_response() :: %{
        "CompletedTimestamp" => non_neg_integer(),
        "CreatedTimestamp" => non_neg_integer(),
        "FailedRecordsCount" => integer(),
        "FailureInfo" => failure_info(),
        "ImportDataSource" => import_data_source(),
        "ImportDestination" => import_destination(),
        "JobId" => String.t(),
        "JobStatus" => list(any()),
        "ProcessedRecordsCount" => integer()
      }
      
  """
  @type get_import_job_response() :: %{String.t() => any()}

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
      
      topic_preference() :: %{
        "SubscriptionStatus" => list(any()),
        "TopicName" => String.t()
      }
      
  """
  @type topic_preference() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_contacts_response() :: %{
        "Contacts" => list(contact()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_contacts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_contact_list_response() :: %{}
      
  """
  @type create_contact_list_response() :: %{}

  @typedoc """

  ## Example:
      
      suppression_options() :: %{
        "SuppressedReasons" => list(list(any())())
      }
      
  """
  @type suppression_options() :: %{String.t() => any()}

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
      
      import_job_summary() :: %{
        "CreatedTimestamp" => non_neg_integer(),
        "FailedRecordsCount" => integer(),
        "ImportDestination" => import_destination(),
        "JobId" => String.t(),
        "JobStatus" => list(any()),
        "ProcessedRecordsCount" => integer()
      }
      
  """
  @type import_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sending_options() :: %{
        "SendingEnabled" => boolean()
      }
      
  """
  @type sending_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_email_identity_policy_request() :: %{}
      
  """
  @type delete_email_identity_policy_request() :: %{}

  @typedoc """

  ## Example:
      
      concurrent_modification_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type concurrent_modification_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_email_templates_response() :: %{
        "NextToken" => String.t(),
        "TemplatesMetadata" => list(email_template_metadata()())
      }
      
  """
  @type list_email_templates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_blacklist_reports_response() :: %{
        "BlacklistReport" => map()
      }
      
  """
  @type get_blacklist_reports_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_contact_request() :: %{
        optional("AttributesData") => String.t(),
        optional("TopicPreferences") => list(topic_preference()()),
        optional("UnsubscribeAll") => boolean()
      }
      
  """
  @type update_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_email_identity_dkim_signing_attributes_response() :: %{
        "DkimStatus" => list(any()),
        "DkimTokens" => list(String.t()())
      }
      
  """
  @type put_email_identity_dkim_signing_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_export_job_request() :: %{}
      
  """
  @type cancel_export_job_request() :: %{}

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
      
      get_email_identity_policies_request() :: %{}
      
  """
  @type get_email_identity_policies_request() :: %{}

  @typedoc """

  ## Example:
      
      message_rejected() :: %{
        "message" => String.t()
      }
      
  """
  @type message_rejected() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_contact_request() :: %{
        optional("AttributesData") => String.t(),
        optional("TopicPreferences") => list(topic_preference()()),
        optional("UnsubscribeAll") => boolean(),
        required("EmailAddress") => String.t()
      }
      
  """
  @type create_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      contact_list() :: %{
        "ContactListName" => String.t(),
        "LastUpdatedTimestamp" => non_neg_integer()
      }
      
  """
  @type contact_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      guardian_options() :: %{
        "OptimizedSharedDelivery" => list(any())
      }
      
  """
  @type guardian_options() :: %{String.t() => any()}

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
      
      delete_contact_list_request() :: %{}
      
  """
  @type delete_contact_list_request() :: %{}

  @typedoc """

  ## Example:
      
      put_configuration_set_sending_options_request() :: %{
        optional("SendingEnabled") => boolean()
      }
      
  """
  @type put_configuration_set_sending_options_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_dedicated_ip_pool_response() :: %{
        "DedicatedIpPool" => dedicated_ip_pool()
      }
      
  """
  @type get_dedicated_ip_pool_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bulk_email_entry_result() :: %{
        "Error" => String.t(),
        "MessageId" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type bulk_email_entry_result() :: %{String.t() => any()}

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
      
      get_email_template_response() :: %{
        "TemplateContent" => email_template_content(),
        "TemplateName" => String.t()
      }
      
  """
  @type get_email_template_response() :: %{String.t() => any()}

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
      
      update_email_identity_policy_request() :: %{
        required("Policy") => String.t()
      }
      
  """
  @type update_email_identity_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_suppressed_destination_response() :: %{}
      
  """
  @type put_suppressed_destination_response() :: %{}

  @typedoc """

  ## Example:
      
      get_email_template_request() :: %{}
      
  """
  @type get_email_template_request() :: %{}

  @typedoc """

  ## Example:
      
      put_account_vdm_attributes_request() :: %{
        required("VdmAttributes") => vdm_attributes()
      }
      
  """
  @type put_account_vdm_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_configuration_set_response() :: %{
        "ConfigurationSetName" => String.t(),
        "DeliveryOptions" => delivery_options(),
        "ReputationOptions" => reputation_options(),
        "SendingOptions" => sending_options(),
        "SuppressionOptions" => suppression_options(),
        "Tags" => list(tag()()),
        "TrackingOptions" => tracking_options(),
        "VdmOptions" => vdm_options()
      }
      
  """
  @type get_configuration_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_email_template_response() :: %{}
      
  """
  @type update_email_template_response() :: %{}

  @typedoc """

  ## Example:
      
      suppressed_destination_attributes() :: %{
        "FeedbackId" => String.t(),
        "MessageId" => String.t()
      }
      
  """
  @type suppressed_destination_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      template() :: %{
        "Headers" => list(message_header()()),
        "TemplateArn" => String.t(),
        "TemplateData" => String.t(),
        "TemplateName" => String.t()
      }
      
  """
  @type template() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_email_request() :: %{
        optional("ConfigurationSetName") => String.t(),
        optional("Destination") => destination(),
        optional("EmailTags") => list(message_tag()()),
        optional("FeedbackForwardingEmailAddress") => String.t(),
        optional("FeedbackForwardingEmailAddressIdentityArn") => String.t(),
        optional("FromEmailAddress") => String.t(),
        optional("FromEmailAddressIdentityArn") => String.t(),
        optional("ListManagementOptions") => list_management_options(),
        optional("ReplyToAddresses") => list(String.t()()),
        required("Content") => email_content()
      }
      
  """
  @type send_email_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_contact_list_request() :: %{}
      
  """
  @type get_contact_list_request() :: %{}

  @typedoc """

  ## Example:
      
      put_account_details_response() :: %{}
      
  """
  @type put_account_details_response() :: %{}

  @typedoc """

  ## Example:
      
      review_details() :: %{
        "CaseId" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type review_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_dedicated_ip_warmup_attributes_response() :: %{}
      
  """
  @type put_dedicated_ip_warmup_attributes_response() :: %{}

  @typedoc """

  ## Example:
      
      list_export_jobs_response() :: %{
        "ExportJobs" => list(export_job_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_export_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      failure_info() :: %{
        "ErrorMessage" => String.t(),
        "FailedRecordsS3Url" => String.t()
      }
      
  """
  @type failure_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_data_source() :: %{
        "DataFormat" => list(any()),
        "S3Url" => String.t()
      }
      
  """
  @type import_data_source() :: %{String.t() => any()}

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
      
      replacement_template() :: %{
        "ReplacementTemplateData" => String.t()
      }
      
  """
  @type replacement_template() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_recommendations_response() :: %{
        "NextToken" => String.t(),
        "Recommendations" => list(recommendation()())
      }
      
  """
  @type list_recommendations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_email_identity_configuration_set_attributes_request() :: %{
        optional("ConfigurationSetName") => String.t()
      }
      
  """
  @type put_email_identity_configuration_set_attributes_request() :: %{String.t() => any()}

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
      
      export_destination() :: %{
        "DataFormat" => list(any()),
        "S3Url" => String.t()
      }
      
  """
  @type export_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_contact_response() :: %{
        "AttributesData" => String.t(),
        "ContactListName" => String.t(),
        "CreatedTimestamp" => non_neg_integer(),
        "EmailAddress" => String.t(),
        "LastUpdatedTimestamp" => non_neg_integer(),
        "TopicDefaultPreferences" => list(topic_preference()()),
        "TopicPreferences" => list(topic_preference()()),
        "UnsubscribeAll" => boolean()
      }
      
  """
  @type get_contact_response() :: %{String.t() => any()}

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
      
      complaint() :: %{
        "ComplaintFeedbackType" => String.t(),
        "ComplaintSubType" => String.t()
      }
      
  """
  @type complaint() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_configuration_set_reputation_options_request() :: %{
        optional("ReputationMetricsEnabled") => boolean()
      }
      
  """
  @type put_configuration_set_reputation_options_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bulk_email_entry() :: %{
        optional("ReplacementEmailContent") => replacement_email_content(),
        optional("ReplacementHeaders") => list(message_header()()),
        optional("ReplacementTags") => list(message_tag()()),
        required("Destination") => destination()
      }
      
  """
  @type bulk_email_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_configuration_set_request() :: %{
        optional("DeliveryOptions") => delivery_options(),
        optional("ReputationOptions") => reputation_options(),
        optional("SendingOptions") => sending_options(),
        optional("SuppressionOptions") => suppression_options(),
        optional("Tags") => list(tag()()),
        optional("TrackingOptions") => tracking_options(),
        optional("VdmOptions") => vdm_options(),
        required("ConfigurationSetName") => String.t()
      }
      
  """
  @type create_configuration_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      email_template_metadata() :: %{
        "CreatedTimestamp" => non_neg_integer(),
        "TemplateName" => String.t()
      }
      
  """
  @type email_template_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_metric() :: %{
        "Aggregation" => list(any()),
        "Name" => list(any())
      }
      
  """
  @type export_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sns_destination() :: %{
        "TopicArn" => String.t()
      }
      
  """
  @type sns_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test_render_email_template_response() :: %{
        "RenderedTemplate" => String.t()
      }
      
  """
  @type test_render_email_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_email_template_response() :: %{}
      
  """
  @type create_email_template_response() :: %{}

  @typedoc """

  ## Example:
      
      update_contact_list_request() :: %{
        optional("Description") => String.t(),
        optional("Topics") => list(topic()())
      }
      
  """
  @type update_contact_list_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_data_result() :: %{
        "Id" => String.t(),
        "Timestamps" => list(non_neg_integer()()),
        "Values" => list(float()())
      }
      
  """
  @type metric_data_result() :: %{String.t() => any()}

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
      
      list_recommendations_request() :: %{
        optional("Filter") => map(),
        optional("NextToken") => String.t(),
        optional("PageSize") => integer()
      }
      
  """
  @type list_recommendations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_verification_email_template_metadata() :: %{
        "FailureRedirectionURL" => String.t(),
        "FromEmailAddress" => String.t(),
        "SuccessRedirectionURL" => String.t(),
        "TemplateName" => String.t(),
        "TemplateSubject" => String.t()
      }
      
  """
  @type custom_verification_email_template_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      topic_filter() :: %{
        "TopicName" => String.t(),
        "UseDefaultIfPreferenceUnavailable" => boolean()
      }
      
  """
  @type topic_filter() :: %{String.t() => any()}

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
      
      list_contact_lists_response() :: %{
        "ContactLists" => list(contact_list()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_contact_lists_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      message() :: %{
        "Body" => body(),
        "Headers" => list(message_header()()),
        "Subject" => content()
      }
      
  """
  @type message() :: %{String.t() => any()}

  @type batch_get_metric_data_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | internal_service_error_exception()

  @type cancel_export_job_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

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

  @type create_contact_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | already_exists_exception()

  @type create_contact_list_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | too_many_requests_exception()
          | already_exists_exception()

  @type create_custom_verification_email_template_errors() ::
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
          | not_found_exception()
          | too_many_requests_exception()
          | already_exists_exception()

  @type create_email_identity_policy_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | already_exists_exception()

  @type create_email_template_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | too_many_requests_exception()
          | already_exists_exception()

  @type create_export_job_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type create_import_job_errors() ::
          bad_request_exception() | limit_exceeded_exception() | too_many_requests_exception()

  @type delete_configuration_set_errors() ::
          bad_request_exception()
          | concurrent_modification_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type delete_configuration_set_event_destination_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type delete_contact_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type delete_contact_list_errors() ::
          bad_request_exception()
          | concurrent_modification_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type delete_custom_verification_email_template_errors() ::
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

  @type delete_email_identity_policy_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type delete_email_template_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type delete_suppressed_destination_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_account_errors() :: bad_request_exception() | too_many_requests_exception()

  @type get_blacklist_reports_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_configuration_set_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_configuration_set_event_destinations_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_contact_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_contact_list_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_custom_verification_email_template_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_dedicated_ip_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_dedicated_ip_pool_errors() ::
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

  @type get_email_identity_policies_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_email_template_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_export_job_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_import_job_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_message_insights_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type get_suppressed_destination_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type list_configuration_sets_errors() ::
          bad_request_exception() | too_many_requests_exception()

  @type list_contact_lists_errors() :: bad_request_exception() | too_many_requests_exception()

  @type list_contacts_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type list_custom_verification_email_templates_errors() ::
          bad_request_exception() | too_many_requests_exception()

  @type list_dedicated_ip_pools_errors() ::
          bad_request_exception() | too_many_requests_exception()

  @type list_deliverability_test_reports_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type list_domain_deliverability_campaigns_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type list_email_identities_errors() :: bad_request_exception() | too_many_requests_exception()

  @type list_email_templates_errors() :: bad_request_exception() | too_many_requests_exception()

  @type list_export_jobs_errors() :: bad_request_exception() | too_many_requests_exception()

  @type list_import_jobs_errors() :: bad_request_exception() | too_many_requests_exception()

  @type list_recommendations_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type list_suppressed_destinations_errors() ::
          bad_request_exception() | invalid_next_token_exception() | too_many_requests_exception()

  @type list_tags_for_resource_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type put_account_dedicated_ip_warmup_attributes_errors() ::
          bad_request_exception() | too_many_requests_exception()

  @type put_account_details_errors() ::
          bad_request_exception() | conflict_exception() | too_many_requests_exception()

  @type put_account_sending_attributes_errors() ::
          bad_request_exception() | too_many_requests_exception()

  @type put_account_suppression_attributes_errors() ::
          bad_request_exception() | too_many_requests_exception()

  @type put_account_vdm_attributes_errors() ::
          bad_request_exception() | too_many_requests_exception()

  @type put_configuration_set_delivery_options_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type put_configuration_set_reputation_options_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type put_configuration_set_sending_options_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type put_configuration_set_suppression_options_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type put_configuration_set_tracking_options_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type put_configuration_set_vdm_options_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type put_dedicated_ip_in_pool_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type put_dedicated_ip_pool_scaling_attributes_errors() ::
          bad_request_exception()
          | concurrent_modification_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type put_dedicated_ip_warmup_attributes_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type put_deliverability_dashboard_option_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | already_exists_exception()

  @type put_email_identity_configuration_set_attributes_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type put_email_identity_dkim_attributes_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type put_email_identity_dkim_signing_attributes_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type put_email_identity_feedback_attributes_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type put_email_identity_mail_from_attributes_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type put_suppressed_destination_errors() ::
          bad_request_exception() | too_many_requests_exception()

  @type send_bulk_email_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | message_rejected()
          | not_found_exception()
          | mail_from_domain_not_verified_exception()
          | too_many_requests_exception()
          | account_suspended_exception()
          | sending_paused_exception()

  @type send_custom_verification_email_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | message_rejected()
          | not_found_exception()
          | mail_from_domain_not_verified_exception()
          | too_many_requests_exception()
          | sending_paused_exception()

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

  @type test_render_email_template_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type untag_resource_errors() ::
          bad_request_exception()
          | concurrent_modification_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type update_configuration_set_event_destination_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type update_contact_errors() ::
          bad_request_exception()
          | concurrent_modification_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type update_contact_list_errors() ::
          bad_request_exception()
          | concurrent_modification_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type update_custom_verification_email_template_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type update_email_identity_policy_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  @type update_email_template_errors() ::
          bad_request_exception() | not_found_exception() | too_many_requests_exception()

  def metadata do
    %{
      api_version: "2019-09-27",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "email",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "SESv2",
      signature_version: "v4",
      signing_name: "ses",
      target_prefix: nil
    }
  end

  @doc """
  Retrieves batches of metric data collected based on your sending activity.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20BatchGetMetricData&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec batch_get_metric_data(AWS.Client.t(), Keyword.t()) ::
          {:ok, batch_get_metric_data_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_get_metric_data_errors()}
  def batch_get_metric_data(%Client{} = client, options \\ []) do
    url_path = "/v2/email/metrics/batch"

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
  Cancels an export job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20CancelExportJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:job_id` (`t:string` required) The export job ID.
  ## Keyword parameters:
  """
  @spec cancel_export_job(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, cancel_export_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_export_job_errors()}
  def cancel_export_job(%Client{} = client, job_id, options \\ []) do
    url_path = "/v2/email/export-jobs/#{AWS.Util.encode_uri(job_id)}/cancel"

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
  Create a configuration set. *Configuration sets* are groups of rules that you
  can apply to the emails that you send. You apply a configuration set to an
  email by specifying the name of the configuration set when you call the Amazon
  SES API v2. When you apply a configuration set to an email, all of the rules
  in that configuration set are applied to the email.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20CreateConfigurationSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_configuration_set(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_configuration_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_configuration_set_errors()}
  def create_configuration_set(%Client{} = client, options \\ []) do
    url_path = "/v2/email/configuration-sets"

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
  Create an event destination. *Events* include message sends, deliveries, opens,
  clicks, bounces, and complaints. *Event destinations* are places that you can
  send information about these events to. For example, you can send event data
  to Amazon EventBridge and associate a rule to send the event to the specified
  target.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20CreateConfigurationSetEventDestination&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:configuration_set_name` (`t:string` required) The name of the configuration
  set .
  ## Keyword parameters:
  """
  @spec create_configuration_set_event_destination(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_configuration_set_event_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_configuration_set_event_destination_errors()}
  def create_configuration_set_event_destination(
        %Client{} = client,
        configuration_set_name,
        options \\ []
      ) do
    url_path =
      "/v2/email/configuration-sets/#{AWS.Util.encode_uri(configuration_set_name)}/event-destinations"

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
  Creates a contact, which is an end-user who is receiving the email, and adds
  them to a contact list.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20CreateContact&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:contact_list_name` (`t:string` required) The name of the contact list to
  which the contact should be added.
  ## Keyword parameters:
  """
  @spec create_contact(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_contact_errors()}
  def create_contact(%Client{} = client, contact_list_name, options \\ []) do
    url_path = "/v2/email/contact-lists/#{AWS.Util.encode_uri(contact_list_name)}/contacts"

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
  Creates a contact list.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20CreateContactList&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_contact_list(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_contact_list_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_contact_list_errors()}
  def create_contact_list(%Client{} = client, options \\ []) do
    url_path = "/v2/email/contact-lists"

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
  Creates a new custom verification email template. For more information about
  custom verification email templates, see [Using custom verification email
  templates](https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom)
  in the *Amazon SES Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20CreateCustomVerificationEmailTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_custom_verification_email_template(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_custom_verification_email_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_custom_verification_email_template_errors()}
  def create_custom_verification_email_template(%Client{} = client, options \\ []) do
    url_path = "/v2/email/custom-verification-email-templates"

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
  Create a new pool of dedicated IP addresses. A pool can include one or more
  dedicated IP addresses that are associated with your Amazon Web Services
  account. You can associate a pool with a configuration set. When you send an
  email that uses that configuration set, the message is sent from one of the
  addresses in the associated pool.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20CreateDedicatedIpPool&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_dedicated_ip_pool(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_dedicated_ip_pool_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_dedicated_ip_pool_errors()}
  def create_dedicated_ip_pool(%Client{} = client, options \\ []) do
    url_path = "/v2/email/dedicated-ip-pools"

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
  Create a new predictive inbox placement test. Predictive inbox placement tests
  can help you predict how your messages will be handled by various email
  providers around the world. When you perform a predictive inbox placement
  test, you provide a sample message that contains the content that you plan to
  send to your customers. Amazon SES then sends that message to special email
  addresses spread across several major email providers. After about 24 hours,
  the test is complete, and you can use the `GetDeliverabilityTestReport`
  operation to view the results of the test.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20CreateDeliverabilityTestReport&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_deliverability_test_report(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_deliverability_test_report_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_deliverability_test_report_errors()}
  def create_deliverability_test_report(%Client{} = client, options \\ []) do
    url_path = "/v2/email/deliverability-dashboard/test"

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
  Starts the process of verifying an email identity. An *identity* is an email
  address or domain that you use when you send email. Before you can use an
  identity to send email, you first have to verify it. By verifying an identity,
  you demonstrate that you're the owner of the identity, and that you've given
  Amazon SES API v2 permission to send email from the identity. When you verify
  an email address, Amazon SES sends an email to the address. Your email address
  is verified as soon as you follow the link in the verification email.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20CreateEmailIdentity&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_email_identity(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_email_identity_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_email_identity_errors()}
  def create_email_identity(%Client{} = client, options \\ []) do
    url_path = "/v2/email/identities"

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
  Creates the specified sending authorization policy for the given identity (an
  email address or a domain). This API is for the identity owner only. If you
  have not verified the identity, this API will return an error.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20CreateEmailIdentityPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:email_identity` (`t:string` required) The email identity.
  * `:policy_name` (`t:string` required) The name of the policy.
  ## Keyword parameters:
  """
  @spec create_email_identity_policy(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, create_email_identity_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_email_identity_policy_errors()}
  def create_email_identity_policy(%Client{} = client, email_identity, policy_name, options \\ []) do
    url_path =
      "/v2/email/identities/#{AWS.Util.encode_uri(email_identity)}/policies/#{AWS.Util.encode_uri(policy_name)}"

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
  Creates an email template. Email templates enable you to send personalized email
  to one or more destinations in a single API operation. For more information,
  see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20CreateEmailTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_email_template(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_email_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_email_template_errors()}
  def create_email_template(%Client{} = client, options \\ []) do
    url_path = "/v2/email/templates"

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
  Creates an export job for a data source and destination.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20CreateExportJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_export_job(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_export_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_export_job_errors()}
  def create_export_job(%Client{} = client, options \\ []) do
    url_path = "/v2/email/export-jobs"

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
  Creates an import job for a data destination.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20CreateImportJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_import_job(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_import_job_errors()}
  def create_import_job(%Client{} = client, options \\ []) do
    url_path = "/v2/email/import-jobs"

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
  Delete an existing configuration set.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20DeleteConfigurationSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:configuration_set_name` (`t:string` required) The name of the configuration
  set.
  ## Keyword parameters:
  """
  @spec delete_configuration_set(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_configuration_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_configuration_set_errors()}
  def delete_configuration_set(%Client{} = client, configuration_set_name, options \\ []) do
    url_path = "/v2/email/configuration-sets/#{AWS.Util.encode_uri(configuration_set_name)}"

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
  Delete an event destination.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20DeleteConfigurationSetEventDestination&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:configuration_set_name` (`t:string` required) The name of the configuration
  set that contains the event destination to delete.
  * `:event_destination_name` (`t:string` required) The name of the event
  destination to delete.
  ## Keyword parameters:
  """
  @spec delete_configuration_set_event_destination(
          AWS.Client.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, delete_configuration_set_event_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_configuration_set_event_destination_errors()}
  def delete_configuration_set_event_destination(
        %Client{} = client,
        configuration_set_name,
        event_destination_name,
        options \\ []
      ) do
    url_path =
      "/v2/email/configuration-sets/#{AWS.Util.encode_uri(configuration_set_name)}/event-destinations/#{AWS.Util.encode_uri(event_destination_name)}"

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
  Removes a contact from a contact list.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20DeleteContact&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:contact_list_name` (`t:string` required) The name of the contact list from
  which the contact should be removed.
  * `:email_address` (`t:string` required) The contact's email address.
  ## Keyword parameters:
  """
  @spec delete_contact(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_contact_errors()}
  def delete_contact(%Client{} = client, contact_list_name, email_address, options \\ []) do
    url_path =
      "/v2/email/contact-lists/#{AWS.Util.encode_uri(contact_list_name)}/contacts/#{AWS.Util.encode_uri(email_address)}"

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
  Deletes a contact list and all of the contacts on that list.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20DeleteContactList&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:contact_list_name` (`t:string` required) The name of the contact list.
  ## Keyword parameters:
  """
  @spec delete_contact_list(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_contact_list_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_contact_list_errors()}
  def delete_contact_list(%Client{} = client, contact_list_name, options \\ []) do
    url_path = "/v2/email/contact-lists/#{AWS.Util.encode_uri(contact_list_name)}"

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
  Deletes an existing custom verification email template. For more information
  about custom verification email templates, see [Using custom verification
  email
  templates](https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom)
  in the *Amazon SES Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20DeleteCustomVerificationEmailTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:template_name` (`t:string` required) The name of the custom verification
  email template that you want to delete.
  ## Keyword parameters:
  """
  @spec delete_custom_verification_email_template(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_custom_verification_email_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_custom_verification_email_template_errors()}
  def delete_custom_verification_email_template(%Client{} = client, template_name, options \\ []) do
    url_path =
      "/v2/email/custom-verification-email-templates/#{AWS.Util.encode_uri(template_name)}"

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
  Delete a dedicated IP pool.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20DeleteDedicatedIpPool&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:pool_name` (`t:string` required) The name of the dedicated IP pool that you
  want to delete.
  ## Keyword parameters:
  """
  @spec delete_dedicated_ip_pool(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_dedicated_ip_pool_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_dedicated_ip_pool_errors()}
  def delete_dedicated_ip_pool(%Client{} = client, pool_name, options \\ []) do
    url_path = "/v2/email/dedicated-ip-pools/#{AWS.Util.encode_uri(pool_name)}"

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
  Deletes an email identity. An identity can be either an email address or a
  domain name.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20DeleteEmailIdentity&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:email_identity` (`t:string` required) The identity (that is, the email
  address or domain) to delete.
  ## Keyword parameters:
  """
  @spec delete_email_identity(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_email_identity_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_email_identity_errors()}
  def delete_email_identity(%Client{} = client, email_identity, options \\ []) do
    url_path = "/v2/email/identities/#{AWS.Util.encode_uri(email_identity)}"

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
  Deletes the specified sending authorization policy for the given identity (an
  email address or a domain). This API returns successfully even if a policy
  with the specified name does not exist. This API is for the identity owner
  only. If you have not verified the identity, this API will return an error.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20DeleteEmailIdentityPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:email_identity` (`t:string` required) The email identity.
  * `:policy_name` (`t:string` required) The name of the policy.
  ## Keyword parameters:
  """
  @spec delete_email_identity_policy(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_email_identity_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_email_identity_policy_errors()}
  def delete_email_identity_policy(%Client{} = client, email_identity, policy_name, options \\ []) do
    url_path =
      "/v2/email/identities/#{AWS.Util.encode_uri(email_identity)}/policies/#{AWS.Util.encode_uri(policy_name)}"

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
  Deletes an email template.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20DeleteEmailTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:template_name` (`t:string` required) The name of the template to be deleted.
  ## Keyword parameters:
  """
  @spec delete_email_template(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_email_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_email_template_errors()}
  def delete_email_template(%Client{} = client, template_name, options \\ []) do
    url_path = "/v2/email/templates/#{AWS.Util.encode_uri(template_name)}"

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
  Removes an email address from the suppression list for your account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20DeleteSuppressedDestination&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:email_address` (`t:string` required) The suppressed email destination to
  remove from the account suppression list.
  ## Keyword parameters:
  """
  @spec delete_suppressed_destination(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_suppressed_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_suppressed_destination_errors()}
  def delete_suppressed_destination(%Client{} = client, email_address, options \\ []) do
    url_path = "/v2/email/suppression/addresses/#{AWS.Util.encode_uri(email_address)}"

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
  Obtain information about the email-sending status and capabilities of your
  Amazon SES account in the current Amazon Web Services Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20GetAccount&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec get_account(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_account_errors()}
  def get_account(%Client{} = client, options \\ []) do
    url_path = "/v2/email/account"

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

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20GetBlacklistReports&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:blacklist_item_names` (`t:list[com.amazonaws.sesv2#BlacklistItemName]`
  required) A list of IP addresses that you want to retrieve blacklist
  information about. You can only specify the dedicated IP addresses that you
  use to send email using Amazon SES or Amazon Pinpoint.
  ## Keyword parameters:
  """
  @spec get_blacklist_reports(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_blacklist_reports_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_blacklist_reports_errors()}
  def get_blacklist_reports(%Client{} = client, blacklist_item_names, options \\ [])
      when is_binary(blacklist_item_names) do
    url_path = "/v2/email/deliverability-dashboard/blacklist-report"

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

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20GetConfigurationSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:configuration_set_name` (`t:string` required) The name of the configuration
  set.
  ## Keyword parameters:
  """
  @spec get_configuration_set(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_configuration_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_configuration_set_errors()}
  def get_configuration_set(%Client{} = client, configuration_set_name, options \\ []) do
    url_path = "/v2/email/configuration-sets/#{AWS.Util.encode_uri(configuration_set_name)}"

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

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20GetConfigurationSetEventDestinations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:configuration_set_name` (`t:string` required) The name of the configuration
  set that contains the event destination.
  ## Keyword parameters:
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
      "/v2/email/configuration-sets/#{AWS.Util.encode_uri(configuration_set_name)}/event-destinations"

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
  Returns a contact from a contact list.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20GetContact&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:contact_list_name` (`t:string` required) The name of the contact list to
  which the contact belongs.
  * `:email_address` (`t:string` required) The contact's email address.
  ## Keyword parameters:
  """
  @spec get_contact(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_contact_errors()}
  def get_contact(%Client{} = client, contact_list_name, email_address, options \\ []) do
    url_path =
      "/v2/email/contact-lists/#{AWS.Util.encode_uri(contact_list_name)}/contacts/#{AWS.Util.encode_uri(email_address)}"

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
  Returns contact list metadata. It does not return any information about the
  contacts present in the list.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20GetContactList&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:contact_list_name` (`t:string` required) The name of the contact list.
  ## Keyword parameters:
  """
  @spec get_contact_list(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_contact_list_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_contact_list_errors()}
  def get_contact_list(%Client{} = client, contact_list_name, options \\ []) do
    url_path = "/v2/email/contact-lists/#{AWS.Util.encode_uri(contact_list_name)}"

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
  Returns the custom email verification template for the template name you
  specify. For more information about custom verification email templates, see
  [Using custom verification email
  templates](https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom)
  in the *Amazon SES Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20GetCustomVerificationEmailTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:template_name` (`t:string` required) The name of the custom verification
  email template that you want to retrieve.
  ## Keyword parameters:
  """
  @spec get_custom_verification_email_template(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_custom_verification_email_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_custom_verification_email_template_errors()}
  def get_custom_verification_email_template(%Client{} = client, template_name, options \\ []) do
    url_path =
      "/v2/email/custom-verification-email-templates/#{AWS.Util.encode_uri(template_name)}"

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

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20GetDedicatedIp&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:ip` (`t:string` required) The IP address that you want to obtain more
  information about. The value you specify has to be a dedicated IP address
  that's assocaited with your Amazon Web Services account.
  ## Keyword parameters:
  """
  @spec get_dedicated_ip(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_dedicated_ip_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_dedicated_ip_errors()}
  def get_dedicated_ip(%Client{} = client, ip, options \\ []) do
    url_path = "/v2/email/dedicated-ips/#{AWS.Util.encode_uri(ip)}"

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
  Retrieve information about the dedicated pool.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20GetDedicatedIpPool&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:pool_name` (`t:string` required) The name of the dedicated IP pool to
  retrieve.
  ## Keyword parameters:
  """
  @spec get_dedicated_ip_pool(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_dedicated_ip_pool_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_dedicated_ip_pool_errors()}
  def get_dedicated_ip_pool(%Client{} = client, pool_name, options \\ []) do
    url_path = "/v2/email/dedicated-ip-pools/#{AWS.Util.encode_uri(pool_name)}"

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
  List the dedicated IP addresses that are associated with your Amazon Web
  Services account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20GetDedicatedIps&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
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
    url_path = "/v2/email/dedicated-ips"

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
  account. When the Deliverability dashboard is enabled, you gain access to
  reputation, deliverability, and other metrics for the domains that you use to
  send email. You also gain the ability to perform predictive inbox placement
  tests.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20GetDeliverabilityDashboardOptions&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec get_deliverability_dashboard_options(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_deliverability_dashboard_options_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_deliverability_dashboard_options_errors()}
  def get_deliverability_dashboard_options(%Client{} = client, options \\ []) do
    url_path = "/v2/email/deliverability-dashboard"

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

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20GetDeliverabilityTestReport&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:report_id` (`t:string` required) A unique string that identifies the
  predictive inbox placement test.
  ## Keyword parameters:
  """
  @spec get_deliverability_test_report(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_deliverability_test_report_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_deliverability_test_report_errors()}
  def get_deliverability_test_report(%Client{} = client, report_id, options \\ []) do
    url_path = "/v2/email/deliverability-dashboard/test-reports/#{AWS.Util.encode_uri(report_id)}"

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
  that the Deliverability dashboard is enabled for.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20GetDomainDeliverabilityCampaign&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:campaign_id` (`t:string` required) The unique identifier for the campaign.
  The Deliverability dashboard automatically generates and assigns this
  identifier to a campaign.
  ## Keyword parameters:
  """
  @spec get_domain_deliverability_campaign(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_domain_deliverability_campaign_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_domain_deliverability_campaign_errors()}
  def get_domain_deliverability_campaign(%Client{} = client, campaign_id, options \\ []) do
    url_path = "/v2/email/deliverability-dashboard/campaigns/#{AWS.Util.encode_uri(campaign_id)}"

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

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20GetDomainStatisticsReport&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain` (`t:string` required) The domain that you want to obtain
  deliverability metrics for.
  * `:end_date` (`t:timestamp` required) The last day (in Unix time) that you want
  to obtain domain deliverability metrics for. The EndDate that you specify
  has to be less than or equal to 30 days after the StartDate.
  * `:start_date` (`t:timestamp` required) The first day (in Unix time) that you
  want to obtain domain deliverability metrics for.
  ## Keyword parameters:
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
      )
      when is_binary(end_date) and is_binary(start_date) do
    url_path =
      "/v2/email/deliverability-dashboard/statistics-report/#{AWS.Util.encode_uri(domain)}"

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
  Provides information about a specific identity, including the identity's
  verification status, sending authorization policies, its DKIM authentication
  status, and its custom Mail-From settings.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20GetEmailIdentity&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:email_identity` (`t:string` required) The email identity.
  ## Keyword parameters:
  """
  @spec get_email_identity(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_email_identity_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_email_identity_errors()}
  def get_email_identity(%Client{} = client, email_identity, options \\ []) do
    url_path = "/v2/email/identities/#{AWS.Util.encode_uri(email_identity)}"

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
  Returns the requested sending authorization policies for the given identity (an
  email address or a domain). The policies are returned as a map of policy names
  to policy contents. You can retrieve a maximum of 20 policies at a time. This
  API is for the identity owner only. If you have not verified the identity,
  this API will return an error.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20GetEmailIdentityPolicies&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:email_identity` (`t:string` required) The email identity.
  ## Keyword parameters:
  """
  @spec get_email_identity_policies(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_email_identity_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_email_identity_policies_errors()}
  def get_email_identity_policies(%Client{} = client, email_identity, options \\ []) do
    url_path = "/v2/email/identities/#{AWS.Util.encode_uri(email_identity)}/policies"

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
  Displays the template object (which includes the subject line, HTML part and
  text part) for the template you specify.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20GetEmailTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:template_name` (`t:string` required) The name of the template.
  ## Keyword parameters:
  """
  @spec get_email_template(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_email_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_email_template_errors()}
  def get_email_template(%Client{} = client, template_name, options \\ []) do
    url_path = "/v2/email/templates/#{AWS.Util.encode_uri(template_name)}"

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
  Provides information about an export job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20GetExportJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:job_id` (`t:string` required) The export job ID.
  ## Keyword parameters:
  """
  @spec get_export_job(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_export_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_export_job_errors()}
  def get_export_job(%Client{} = client, job_id, options \\ []) do
    url_path = "/v2/email/export-jobs/#{AWS.Util.encode_uri(job_id)}"

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
  Provides information about an import job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20GetImportJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:job_id` (`t:string` required) The ID of the import job.
  ## Keyword parameters:
  """
  @spec get_import_job(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_import_job_errors()}
  def get_import_job(%Client{} = client, job_id, options \\ []) do
    url_path = "/v2/email/import-jobs/#{AWS.Util.encode_uri(job_id)}"

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
  Provides information about a specific message, including the from address, the
  subject, the recipient address, email tags, as well as events associated with
  the message.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20GetMessageInsights&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:message_id` (`t:string` required) A MessageId is a unique identifier for a
  message, and is returned when sending emails through Amazon SES.
  ## Keyword parameters:
  """
  @spec get_message_insights(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_message_insights_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_message_insights_errors()}
  def get_message_insights(%Client{} = client, message_id, options \\ []) do
    url_path = "/v2/email/insights/#{AWS.Util.encode_uri(message_id)}"

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
  Retrieves information about a specific email address that's on the suppression
  list for your account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20GetSuppressedDestination&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:email_address` (`t:string` required) The email address that's on the account
  suppression list.
  ## Keyword parameters:
  """
  @spec get_suppressed_destination(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_suppressed_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_suppressed_destination_errors()}
  def get_suppressed_destination(%Client{} = client, email_address, options \\ []) do
    url_path = "/v2/email/suppression/addresses/#{AWS.Util.encode_uri(email_address)}"

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
  List all of the configuration sets associated with your account in the current
  region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20ListConfigurationSets&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
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
    url_path = "/v2/email/configuration-sets"

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
  Lists all of the contact lists available.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20ListContactLists&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  * `:next_token` (`t:string`) A string token indicating that there might be
  additional contact lists available to be listed. Use the token provided in
  the Response to use in the subsequent call to ListContactLists with the same
  parameters to retrieve the next page of contact lists.
  * `:page_size` (`t:integer`) Maximum number of contact lists to return at once.
  Use this parameter to paginate results. If additional contact lists exist
  beyond the specified limit, the NextToken element is sent in the response.
  Use the NextToken value in subsequent requests to retrieve additional lists.
  """
  @spec list_contact_lists(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_contact_lists_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_contact_lists_errors()}
  def list_contact_lists(%Client{} = client, options \\ []) do
    url_path = "/v2/email/contact-lists"

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
  Lists the contacts present in a specific contact list.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20ListContacts&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:contact_list_name` (`t:string` required) The name of the contact list.
  ## Keyword parameters:
  """
  @spec list_contacts(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_contacts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_contacts_errors()}
  def list_contacts(%Client{} = client, contact_list_name, options \\ []) do
    url_path = "/v2/email/contact-lists/#{AWS.Util.encode_uri(contact_list_name)}/contacts/list"

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
  Lists the existing custom verification email templates for your account in the
  current Amazon Web Services Region. For more information about custom
  verification email templates, see [Using custom verification email
  templates](https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom)
  in the *Amazon SES Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20ListCustomVerificationEmailTemplates&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  * `:next_token` (`t:string`) A token returned from a previous call to
  ListCustomVerificationEmailTemplates to indicate the position in the list of
  custom verification email templates.
  * `:page_size` (`t:integer`) The number of results to show in a single call to
  ListCustomVerificationEmailTemplates. If the number of results is larger
  than the number you specified in this parameter, then the response includes
  a NextToken element, which you can use to obtain additional results.
  """
  @spec list_custom_verification_email_templates(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_custom_verification_email_templates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_custom_verification_email_templates_errors()}
  def list_custom_verification_email_templates(%Client{} = client, options \\ []) do
    url_path = "/v2/email/custom-verification-email-templates"

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
  List all of the dedicated IP pools that exist in your Amazon Web Services
  account in the current Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20ListDedicatedIpPools&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
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
    url_path = "/v2/email/dedicated-ip-pools"

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

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20ListDeliverabilityTestReports&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
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
    url_path = "/v2/email/deliverability-dashboard/test-reports"

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
  domain only if you enabled the Deliverability dashboard for the domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20ListDomainDeliverabilityCampaigns&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:subscribed_domain` (`t:string` required) The domain to obtain deliverability
  data for.
  * `:end_date` (`t:timestamp` required) The last day that you want to obtain
  deliverability data for. This value has to be less than or equal to 30 days
  after the value of the StartDate parameter.
  * `:start_date` (`t:timestamp` required) The first day that you want to obtain
  deliverability data for.
  ## Keyword parameters:
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
      )
      when is_binary(end_date) and is_binary(start_date) do
    url_path =
      "/v2/email/deliverability-dashboard/domains/#{AWS.Util.encode_uri(subscribed_domain)}/campaigns"

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
  Amazon Web Services account. An identity can be either an email address or a
  domain. This operation returns identities that are verified as well as those
  that aren't. This operation returns identities that are associated with Amazon
  SES and Amazon Pinpoint.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20ListEmailIdentities&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
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
    url_path = "/v2/email/identities"

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
  Lists the email templates present in your Amazon SES account in the current
  Amazon Web Services Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20ListEmailTemplates&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  * `:next_token` (`t:string`) A token returned from a previous call to
  ListEmailTemplates to indicate the position in the list of email templates.
  * `:page_size` (`t:integer`) The number of results to show in a single call to
  ListEmailTemplates. If the number of results is larger than the number you
  specified in this parameter, then the response includes a NextToken element,
  which you can use to obtain additional results.
  """
  @spec list_email_templates(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_email_templates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_email_templates_errors()}
  def list_email_templates(%Client{} = client, options \\ []) do
    url_path = "/v2/email/templates"

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
  Lists all of the export jobs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20ListExportJobs&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_export_jobs(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_export_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_export_jobs_errors()}
  def list_export_jobs(%Client{} = client, options \\ []) do
    url_path = "/v2/email/list-export-jobs"

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
  Lists all of the import jobs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20ListImportJobs&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_import_jobs(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_import_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_import_jobs_errors()}
  def list_import_jobs(%Client{} = client, options \\ []) do
    url_path = "/v2/email/import-jobs/list"

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
  Lists the recommendations present in your Amazon SES account in the current
  Amazon Web Services Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20ListRecommendations&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_recommendations(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_recommendations_errors()}
  def list_recommendations(%Client{} = client, options \\ []) do
    url_path = "/v2/email/vdm/recommendations"

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
  Retrieves a list of email addresses that are on the suppression list for your
  account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20ListSuppressedDestinations&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  * `:end_date` (`t:timestamp`) Used to filter the list of suppressed email
  destinations so that it only includes addresses that were added to the list
  before a specific date.
  * `:next_token` (`t:string`) A token returned from a previous call to
  ListSuppressedDestinations to indicate the position in the list of
  suppressed email addresses.
  * `:page_size` (`t:integer`) The number of results to show in a single call to
  ListSuppressedDestinations. If the number of results is larger than the
  number you specified in this parameter, then the response includes a
  NextToken element, which you can use to obtain additional results.
  * `:reasons` (`t:list[com.amazonaws.sesv2#SuppressionListReason]`) The factors
  that caused the email address to be added to .
  * `:start_date` (`t:timestamp`) Used to filter the list of suppressed email
  destinations so that it only includes addresses that were added to the list
  after a specific date.
  """
  @spec list_suppressed_destinations(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_suppressed_destinations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_suppressed_destinations_errors()}
  def list_suppressed_destinations(%Client{} = client, options \\ []) do
    url_path = "/v2/email/suppression/addresses"

    # Validate optional parameters
    optional_params = [
      end_date: nil,
      next_token: nil,
      page_size: nil,
      reasons: nil,
      start_date: nil
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
      if opt_val = Keyword.get(options, :start_date) do
        [{"StartDate", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :reasons) do
        [{"Reason", opt_val} | query_params]
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

    query_params =
      if opt_val = Keyword.get(options, :end_date) do
        [{"EndDate", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:end_date, :next_token, :page_size, :reasons, :start_date])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieve a list of the tags (keys and values) that are associated with a
  specified resource. A *tag* is a label that you optionally define and
  associate with a resource. Each tag consists of a required *tag key* and an
  optional associated *tag value*. A tag key is a general label that acts as a
  category for more specific tag values. A tag value acts as a descriptor within
  a tag key.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
  resource that you want to retrieve tag information for.
  ## Keyword parameters:
  """
  @spec list_tags_for_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ [])
      when is_binary(resource_arn) do
    url_path = "/v2/email/tags"

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

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20PutAccountDedicatedIpWarmupAttributes&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec put_account_dedicated_ip_warmup_attributes(AWS.Client.t(), Keyword.t()) ::
          {:ok, put_account_dedicated_ip_warmup_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_account_dedicated_ip_warmup_attributes_errors()}
  def put_account_dedicated_ip_warmup_attributes(%Client{} = client, options \\ []) do
    url_path = "/v2/email/account/dedicated-ips/warmup"

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
  Update your Amazon SES account details.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20PutAccountDetails&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec put_account_details(AWS.Client.t(), Keyword.t()) ::
          {:ok, put_account_details_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_account_details_errors()}
  def put_account_details(%Client{} = client, options \\ []) do
    url_path = "/v2/email/account/details"

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
  Enable or disable the ability of your account to send email.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20PutAccountSendingAttributes&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec put_account_sending_attributes(AWS.Client.t(), Keyword.t()) ::
          {:ok, put_account_sending_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_account_sending_attributes_errors()}
  def put_account_sending_attributes(%Client{} = client, options \\ []) do
    url_path = "/v2/email/account/sending"

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
  Change the settings for the account-level suppression list.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20PutAccountSuppressionAttributes&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec put_account_suppression_attributes(AWS.Client.t(), Keyword.t()) ::
          {:ok, put_account_suppression_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_account_suppression_attributes_errors()}
  def put_account_suppression_attributes(%Client{} = client, options \\ []) do
    url_path = "/v2/email/account/suppression"

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
  Update your Amazon SES account VDM attributes.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20PutAccountVdmAttributes&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec put_account_vdm_attributes(AWS.Client.t(), Keyword.t()) ::
          {:ok, put_account_vdm_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_account_vdm_attributes_errors()}
  def put_account_vdm_attributes(%Client{} = client, options \\ []) do
    url_path = "/v2/email/account/vdm"

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
  Associate a configuration set with a dedicated IP pool. You can use dedicated IP
  pools to create groups of dedicated IP addresses for sending specific types of
  email.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20PutConfigurationSetDeliveryOptions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:configuration_set_name` (`t:string` required) The name of the configuration
  set to associate with a dedicated IP pool.
  ## Keyword parameters:
  """
  @spec put_configuration_set_delivery_options(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, put_configuration_set_delivery_options_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_configuration_set_delivery_options_errors()}
  def put_configuration_set_delivery_options(
        %Client{} = client,
        configuration_set_name,
        options \\ []
      ) do
    url_path =
      "/v2/email/configuration-sets/#{AWS.Util.encode_uri(configuration_set_name)}/delivery-options"

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
  Enable or disable collection of reputation metrics for emails that you send
  using a particular configuration set in a specific Amazon Web Services Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20PutConfigurationSetReputationOptions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:configuration_set_name` (`t:string` required) The name of the configuration
  set.
  ## Keyword parameters:
  """
  @spec put_configuration_set_reputation_options(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, put_configuration_set_reputation_options_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_configuration_set_reputation_options_errors()}
  def put_configuration_set_reputation_options(
        %Client{} = client,
        configuration_set_name,
        options \\ []
      ) do
    url_path =
      "/v2/email/configuration-sets/#{AWS.Util.encode_uri(configuration_set_name)}/reputation-options"

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
  Enable or disable email sending for messages that use a particular configuration
  set in a specific Amazon Web Services Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20PutConfigurationSetSendingOptions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:configuration_set_name` (`t:string` required) The name of the configuration
  set to enable or disable email sending for.
  ## Keyword parameters:
  """
  @spec put_configuration_set_sending_options(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, put_configuration_set_sending_options_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_configuration_set_sending_options_errors()}
  def put_configuration_set_sending_options(
        %Client{} = client,
        configuration_set_name,
        options \\ []
      ) do
    url_path =
      "/v2/email/configuration-sets/#{AWS.Util.encode_uri(configuration_set_name)}/sending"

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
  Specify the account suppression list preferences for a configuration set.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20PutConfigurationSetSuppressionOptions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:configuration_set_name` (`t:string` required) The name of the configuration
  set to change the suppression list preferences for.
  ## Keyword parameters:
  """
  @spec put_configuration_set_suppression_options(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, put_configuration_set_suppression_options_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_configuration_set_suppression_options_errors()}
  def put_configuration_set_suppression_options(
        %Client{} = client,
        configuration_set_name,
        options \\ []
      ) do
    url_path =
      "/v2/email/configuration-sets/#{AWS.Util.encode_uri(configuration_set_name)}/suppression-options"

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
  Specify a custom domain to use for open and click tracking elements in email
  that you send.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20PutConfigurationSetTrackingOptions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:configuration_set_name` (`t:string` required) The name of the configuration
  set.
  ## Keyword parameters:
  """
  @spec put_configuration_set_tracking_options(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, put_configuration_set_tracking_options_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_configuration_set_tracking_options_errors()}
  def put_configuration_set_tracking_options(
        %Client{} = client,
        configuration_set_name,
        options \\ []
      ) do
    url_path =
      "/v2/email/configuration-sets/#{AWS.Util.encode_uri(configuration_set_name)}/tracking-options"

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
  Specify VDM preferences for email that you send using the configuration set.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20PutConfigurationSetVdmOptions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:configuration_set_name` (`t:string` required) The name of the configuration
  set.
  ## Keyword parameters:
  """
  @spec put_configuration_set_vdm_options(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, put_configuration_set_vdm_options_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_configuration_set_vdm_options_errors()}
  def put_configuration_set_vdm_options(%Client{} = client, configuration_set_name, options \\ []) do
    url_path =
      "/v2/email/configuration-sets/#{AWS.Util.encode_uri(configuration_set_name)}/vdm-options"

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
  Move a dedicated IP address to an existing dedicated IP pool.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20PutDedicatedIpInPool&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:ip` (`t:string` required) The IP address that you want to move to the
  dedicated IP pool. The value you specify has to be a dedicated IP address
  that's associated with your Amazon Web Services account.
  ## Keyword parameters:
  """
  @spec put_dedicated_ip_in_pool(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, put_dedicated_ip_in_pool_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_dedicated_ip_in_pool_errors()}
  def put_dedicated_ip_in_pool(%Client{} = client, ip, options \\ []) do
    url_path = "/v2/email/dedicated-ips/#{AWS.Util.encode_uri(ip)}/pool"

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
  Used to convert a dedicated IP pool to a different scaling mode.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20PutDedicatedIpPoolScalingAttributes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:pool_name` (`t:string` required) The name of the dedicated IP pool.
  ## Keyword parameters:
  """
  @spec put_dedicated_ip_pool_scaling_attributes(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, put_dedicated_ip_pool_scaling_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_dedicated_ip_pool_scaling_attributes_errors()}
  def put_dedicated_ip_pool_scaling_attributes(%Client{} = client, pool_name, options \\ []) do
    url_path = "/v2/email/dedicated-ip-pools/#{AWS.Util.encode_uri(pool_name)}/scaling"

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


  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20PutDedicatedIpWarmupAttributes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:ip` (`t:string` required) The dedicated IP address that you want to update
  the warm-up attributes for.
  ## Keyword parameters:
  """
  @spec put_dedicated_ip_warmup_attributes(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, put_dedicated_ip_warmup_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_dedicated_ip_warmup_attributes_errors()}
  def put_dedicated_ip_warmup_attributes(%Client{} = client, ip, options \\ []) do
    url_path = "/v2/email/dedicated-ips/#{AWS.Util.encode_uri(ip)}/warmup"

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
  Enable or disable the Deliverability dashboard. When you enable the
  Deliverability dashboard, you gain access to reputation, deliverability, and
  other metrics for the domains that you use to send email. You also gain the
  ability to perform predictive inbox placement tests.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20PutDeliverabilityDashboardOption&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec put_deliverability_dashboard_option(AWS.Client.t(), Keyword.t()) ::
          {:ok, put_deliverability_dashboard_option_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_deliverability_dashboard_option_errors()}
  def put_deliverability_dashboard_option(%Client{} = client, options \\ []) do
    url_path = "/v2/email/deliverability-dashboard"

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
  Used to associate a configuration set with an email identity.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20PutEmailIdentityConfigurationSetAttributes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:email_identity` (`t:string` required) The email address or domain to
  associate with a configuration set.
  ## Keyword parameters:
  """
  @spec put_email_identity_configuration_set_attributes(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, put_email_identity_configuration_set_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_email_identity_configuration_set_attributes_errors()}
  def put_email_identity_configuration_set_attributes(
        %Client{} = client,
        email_identity,
        options \\ []
      ) do
    url_path = "/v2/email/identities/#{AWS.Util.encode_uri(email_identity)}/configuration-set"

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
  Used to enable or disable DKIM authentication for an email identity.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20PutEmailIdentityDkimAttributes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:email_identity` (`t:string` required) The email identity.
  ## Keyword parameters:
  """
  @spec put_email_identity_dkim_attributes(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, put_email_identity_dkim_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_email_identity_dkim_attributes_errors()}
  def put_email_identity_dkim_attributes(%Client{} = client, email_identity, options \\ []) do
    url_path = "/v2/email/identities/#{AWS.Util.encode_uri(email_identity)}/dkim"

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
  Used to configure or change the DKIM authentication settings for an email domain
  identity. You can use this operation to do any of the following:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20PutEmailIdentityDkimSigningAttributes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:email_identity` (`t:string` required) The email identity.
  ## Keyword parameters:
  """
  @spec put_email_identity_dkim_signing_attributes(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, put_email_identity_dkim_signing_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_email_identity_dkim_signing_attributes_errors()}
  def put_email_identity_dkim_signing_attributes(
        %Client{} = client,
        email_identity,
        options \\ []
      ) do
    url_path = "/v1/email/identities/#{AWS.Util.encode_uri(email_identity)}/dkim/signing"

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
  Used to enable or disable feedback forwarding for an identity. This setting
  determines what happens when an identity is used to send an email that results
  in a bounce or complaint event. If the value is `true`, you receive email
  notifications when bounce or complaint events occur. These notifications are
  sent to the address that you specified in the `Return-Path` header of the
  original email.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20PutEmailIdentityFeedbackAttributes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:email_identity` (`t:string` required) The email identity.
  ## Keyword parameters:
  """
  @spec put_email_identity_feedback_attributes(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, put_email_identity_feedback_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_email_identity_feedback_attributes_errors()}
  def put_email_identity_feedback_attributes(%Client{} = client, email_identity, options \\ []) do
    url_path = "/v2/email/identities/#{AWS.Util.encode_uri(email_identity)}/feedback"

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
  Used to enable or disable the custom Mail-From domain configuration for an email
  identity.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20PutEmailIdentityMailFromAttributes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:email_identity` (`t:string` required) The verified email identity.
  ## Keyword parameters:
  """
  @spec put_email_identity_mail_from_attributes(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, put_email_identity_mail_from_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_email_identity_mail_from_attributes_errors()}
  def put_email_identity_mail_from_attributes(%Client{} = client, email_identity, options \\ []) do
    url_path = "/v2/email/identities/#{AWS.Util.encode_uri(email_identity)}/mail-from"

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
  Adds an email address to the suppression list for your account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20PutSuppressedDestination&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec put_suppressed_destination(AWS.Client.t(), Keyword.t()) ::
          {:ok, put_suppressed_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_suppressed_destination_errors()}
  def put_suppressed_destination(%Client{} = client, options \\ []) do
    url_path = "/v2/email/suppression/addresses"

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
  Composes an email message to multiple destinations.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20SendBulkEmail&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec send_bulk_email(AWS.Client.t(), Keyword.t()) ::
          {:ok, send_bulk_email_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_bulk_email_errors()}
  def send_bulk_email(%Client{} = client, options \\ []) do
    url_path = "/v2/email/outbound-bulk-emails"

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
  Adds an email address to the list of identities for your Amazon SES account in
  the current Amazon Web Services Region and attempts to verify it. As a result
  of executing this operation, a customized verification email is sent to the
  specified address. To use this operation, you must first create a custom
  verification email template. For more information about creating and using
  custom verification email templates, see [Using custom verification email
  templates](https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom)
  in the *Amazon SES Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20SendCustomVerificationEmail&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec send_custom_verification_email(AWS.Client.t(), Keyword.t()) ::
          {:ok, send_custom_verification_email_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_custom_verification_email_errors()}
  def send_custom_verification_email(%Client{} = client, options \\ []) do
    url_path = "/v2/email/outbound-custom-verification-emails"

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
  Sends an email message. You can use the Amazon SES API v2 to send the following
  types of messages:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20SendEmail&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec send_email(AWS.Client.t(), Keyword.t()) ::
          {:ok, send_email_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_email_errors()}
  def send_email(%Client{} = client, options \\ []) do
    url_path = "/v2/email/outbound-emails"

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
  Add one or more tags (keys and values) to a specified resource. A *tag* is a
  label that you optionally define and associate with a resource. Tags can help
  you categorize and manage resources in different ways, such as by purpose,
  owner, environment, or other criteria. A resource can have as many as 50 tags.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec tag_resource(AWS.Client.t(), Keyword.t()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, options \\ []) do
    url_path = "/v2/email/tags"

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
  Creates a preview of the MIME content of an email when provided with a template
  and a set of replacement data.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20TestRenderEmailTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:template_name` (`t:string` required) The name of the template.
  ## Keyword parameters:
  """
  @spec test_render_email_template(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, test_render_email_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, test_render_email_template_errors()}
  def test_render_email_template(%Client{} = client, template_name, options \\ []) do
    url_path = "/v2/email/templates/#{AWS.Util.encode_uri(template_name)}/render"

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
  Remove one or more tags (keys and values) from a specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
  resource that you want to remove one or more tags from.
  * `:tag_keys` (`t:list[com.amazonaws.sesv2#TagKey]` required) The tags (tag
  keys) that you want to remove from the resource. When you specify a tag key,
  the action removes both that key and its associated tag value.
  ## Keyword parameters:
  """
  @spec untag_resource(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, tag_keys, options \\ [])
      when is_binary(resource_arn) and is_binary(tag_keys) do
    url_path = "/v2/email/tags"

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
    query_params = [{"ResourceArn", resource_arn}, {"TagKeys", tag_keys}]

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
  Update the configuration of an event destination for a configuration set.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20UpdateConfigurationSetEventDestination&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:configuration_set_name` (`t:string` required) The name of the configuration
  set that contains the event destination to modify.
  * `:event_destination_name` (`t:string` required) The name of the event
  destination.
  ## Keyword parameters:
  """
  @spec update_configuration_set_event_destination(
          AWS.Client.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, update_configuration_set_event_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_configuration_set_event_destination_errors()}
  def update_configuration_set_event_destination(
        %Client{} = client,
        configuration_set_name,
        event_destination_name,
        options \\ []
      ) do
    url_path =
      "/v2/email/configuration-sets/#{AWS.Util.encode_uri(configuration_set_name)}/event-destinations/#{AWS.Util.encode_uri(event_destination_name)}"

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
  Updates a contact's preferences for a list.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20UpdateContact&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:contact_list_name` (`t:string` required) The name of the contact list.
  * `:email_address` (`t:string` required) The contact's email address.
  ## Keyword parameters:
  """
  @spec update_contact(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_contact_errors()}
  def update_contact(%Client{} = client, contact_list_name, email_address, options \\ []) do
    url_path =
      "/v2/email/contact-lists/#{AWS.Util.encode_uri(contact_list_name)}/contacts/#{AWS.Util.encode_uri(email_address)}"

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
  Updates contact list metadata. This operation does a complete replacement.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20UpdateContactList&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:contact_list_name` (`t:string` required) The name of the contact list.
  ## Keyword parameters:
  """
  @spec update_contact_list(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_contact_list_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_contact_list_errors()}
  def update_contact_list(%Client{} = client, contact_list_name, options \\ []) do
    url_path = "/v2/email/contact-lists/#{AWS.Util.encode_uri(contact_list_name)}"

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
  Updates an existing custom verification email template. For more information
  about custom verification email templates, see [Using custom verification
  email
  templates](https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom)
  in the *Amazon SES Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20UpdateCustomVerificationEmailTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:template_name` (`t:string` required) The name of the custom verification
  email template that you want to update.
  ## Keyword parameters:
  """
  @spec update_custom_verification_email_template(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_custom_verification_email_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_custom_verification_email_template_errors()}
  def update_custom_verification_email_template(%Client{} = client, template_name, options \\ []) do
    url_path =
      "/v2/email/custom-verification-email-templates/#{AWS.Util.encode_uri(template_name)}"

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
  Updates the specified sending authorization policy for the given identity (an
  email address or a domain). This API returns successfully even if a policy
  with the specified name does not exist. This API is for the identity owner
  only. If you have not verified the identity, this API will return an error.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20UpdateEmailIdentityPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:email_identity` (`t:string` required) The email identity.
  * `:policy_name` (`t:string` required) The name of the policy.
  ## Keyword parameters:
  """
  @spec update_email_identity_policy(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_email_identity_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_email_identity_policy_errors()}
  def update_email_identity_policy(%Client{} = client, email_identity, policy_name, options \\ []) do
    url_path =
      "/v2/email/identities/#{AWS.Util.encode_uri(email_identity)}/policies/#{AWS.Util.encode_uri(policy_name)}"

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
  Updates an email template. Email templates enable you to send personalized email
  to one or more destinations in a single API operation. For more information,
  see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sesv2%20UpdateEmailTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:template_name` (`t:string` required) The name of the template.
  ## Keyword parameters:
  """
  @spec update_email_template(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_email_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_email_template_errors()}
  def update_email_template(%Client{} = client, template_name, options \\ []) do
    url_path = "/v2/email/templates/#{AWS.Util.encode_uri(template_name)}"

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
end
