# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SES do
  @moduledoc """
  Amazon Simple Email Service This document contains reference information for the
  [Amazon Simple Email Service](https://aws.amazon.com/ses/) (Amazon SES) API,
  version 2010-12-01. This document is best used in conjunction with the [Amazon
  SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/Welcome.html).
  For a list of Amazon SES endpoints to use in service requests, see [Regions
  and Amazon
  SES](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/regions.html) in
  the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/Welcome.html).
  This documentation contains reference information related to the following:
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      list_receipt_rule_sets_response() :: %{
        "NextToken" => String.t(),
        "RuleSets" => list(receipt_rule_set_metadata()())
      }
      
  """
  @type list_receipt_rule_sets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_receipt_rule_sets_request() :: %{
        optional("NextToken") => String.t()
      }
      
  """
  @type list_receipt_rule_sets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_configuration_set_request() :: %{
        optional("ConfigurationSetAttributeNames") => list(list(any())()),
        required("ConfigurationSetName") => String.t()
      }
      
  """
  @type describe_configuration_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_identity_policy_response() :: %{}
      
  """
  @type delete_identity_policy_response() :: %{}

  @typedoc """

  ## Example:
      
      tracking_options() :: %{
        "CustomRedirectDomain" => String.t()
      }
      
  """
  @type tracking_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_verified_email_address_request() :: %{
        required("EmailAddress") => String.t()
      }
      
  """
  @type delete_verified_email_address_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_identity_feedback_forwarding_enabled_request() :: %{
        required("ForwardingEnabled") => boolean(),
        required("Identity") => String.t()
      }
      
  """
  @type set_identity_feedback_forwarding_enabled_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_configuration_set_response() :: %{}
      
  """
  @type delete_configuration_set_response() :: %{}

  @typedoc """

  ## Example:
      
      identity_notification_attributes() :: %{
        "BounceTopic" => String.t(),
        "ComplaintTopic" => String.t(),
        "DeliveryTopic" => String.t(),
        "ForwardingEnabled" => boolean(),
        "HeadersInBounceNotificationsEnabled" => boolean(),
        "HeadersInComplaintNotificationsEnabled" => boolean(),
        "HeadersInDeliveryNotificationsEnabled" => boolean()
      }
      
  """
  @type identity_notification_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_receipt_rule_position_response() :: %{}
      
  """
  @type set_receipt_rule_position_response() :: %{}

  @typedoc """

  ## Example:
      
      put_identity_policy_request() :: %{
        required("Identity") => String.t(),
        required("Policy") => String.t(),
        required("PolicyName") => String.t()
      }
      
  """
  @type put_identity_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      verify_domain_identity_request() :: %{
        required("Domain") => String.t()
      }
      
  """
  @type verify_domain_identity_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_identity_request() :: %{
        required("Identity") => String.t()
      }
      
  """
  @type delete_identity_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_configuration_set_tracking_options_response() :: %{}
      
  """
  @type create_configuration_set_tracking_options_response() :: %{}

  @typedoc """

  ## Example:
      
      create_receipt_rule_set_response() :: %{}
      
  """
  @type create_receipt_rule_set_response() :: %{}

  @typedoc """

  ## Example:
      
      describe_receipt_rule_set_request() :: %{
        required("RuleSetName") => String.t()
      }
      
  """
  @type describe_receipt_rule_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_verification_email_invalid_content_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type custom_verification_email_invalid_content_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_templates_request() :: %{
        optional("MaxItems") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_templates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rule_set_does_not_exist_exception() :: %{
        "Name" => String.t(),
        "message" => String.t()
      }
      
  """
  @type rule_set_does_not_exist_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_identities_request() :: %{
        optional("IdentityType") => list(any()),
        optional("MaxItems") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_identities_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      identity_dkim_attributes() :: %{
        "DkimEnabled" => boolean(),
        "DkimTokens" => list(String.t()()),
        "DkimVerificationStatus" => list(any())
      }
      
  """
  @type identity_dkim_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_receipt_rule_request() :: %{
        required("RuleName") => String.t(),
        required("RuleSetName") => String.t()
      }
      
  """
  @type describe_receipt_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      verify_domain_dkim_response() :: %{
        "DkimTokens" => list(String.t()())
      }
      
  """
  @type verify_domain_dkim_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_verification_email_template_does_not_exist_exception() :: %{
        "CustomVerificationEmailTemplateName" => String.t(),
        "message" => String.t()
      }
      
  """
  @type custom_verification_email_template_does_not_exist_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_action() :: %{
        "BucketName" => String.t(),
        "KmsKeyArn" => String.t(),
        "ObjectKeyPrefix" => String.t(),
        "TopicArn" => String.t()
      }
      
  """
  @type s3_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kinesis_firehose_destination() :: %{
        "DeliveryStreamARN" => String.t(),
        "IAMRoleARN" => String.t()
      }
      
  """
  @type kinesis_firehose_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      already_exists_exception() :: %{
        "Name" => String.t(),
        "message" => String.t()
      }
      
  """
  @type already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_cloud_watch_destination_exception() :: %{
        "ConfigurationSetName" => String.t(),
        "EventDestinationName" => String.t(),
        "message" => String.t()
      }
      
  """
  @type invalid_cloud_watch_destination_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_receipt_rule_set_response() :: %{
        "Metadata" => receipt_rule_set_metadata(),
        "Rules" => list(receipt_rule()())
      }
      
  """
  @type describe_receipt_rule_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_receipt_filters_response() :: %{
        "Filters" => list(receipt_filter()())
      }
      
  """
  @type list_receipt_filters_response() :: %{String.t() => any()}

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
      
      send_raw_email_request() :: %{
        optional("ConfigurationSetName") => String.t(),
        optional("Destinations") => list(String.t()()),
        optional("FromArn") => String.t(),
        optional("ReturnPathArn") => String.t(),
        optional("Source") => String.t(),
        optional("SourceArn") => String.t(),
        optional("Tags") => list(message_tag()()),
        required("RawMessage") => raw_message()
      }
      
  """
  @type send_raw_email_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_lambda_function_exception() :: %{
        "FunctionArn" => String.t(),
        "message" => String.t()
      }
      
  """
  @type invalid_lambda_function_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_identity_mail_from_domain_attributes_request() :: %{
        required("Identities") => list(String.t()())
      }
      
  """
  @type get_identity_mail_from_domain_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_verification_email_template_already_exists_exception() :: %{
        "CustomVerificationEmailTemplateName" => String.t(),
        "message" => String.t()
      }
      
  """
  @type custom_verification_email_template_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      verify_domain_identity_response() :: %{
        "VerificationToken" => String.t()
      }
      
  """
  @type verify_domain_identity_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_template_request() :: %{
        required("Template") => template()
      }
      
  """
  @type create_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test_render_template_response() :: %{
        "RenderedTemplate" => String.t()
      }
      
  """
  @type test_render_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_configuration_set_response() :: %{
        "ConfigurationSet" => configuration_set(),
        "DeliveryOptions" => delivery_options(),
        "EventDestinations" => list(event_destination()()),
        "ReputationOptions" => reputation_options(),
        "TrackingOptions" => tracking_options()
      }
      
  """
  @type describe_configuration_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_active_receipt_rule_set_response() :: %{
        "Metadata" => receipt_rule_set_metadata(),
        "Rules" => list(receipt_rule()())
      }
      
  """
  @type describe_active_receipt_rule_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_template_response() :: %{
        "Template" => template()
      }
      
  """
  @type get_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_identity_verification_attributes_request() :: %{
        required("Identities") => list(String.t()())
      }
      
  """
  @type get_identity_verification_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      template_metadata() :: %{
        "CreatedTimestamp" => non_neg_integer(),
        "Name" => String.t()
      }
      
  """
  @type template_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_custom_verification_email_template_request() :: %{
        required("TemplateName") => String.t()
      }
      
  """
  @type get_custom_verification_email_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_sns_topic_exception() :: %{
        "Topic" => String.t(),
        "message" => String.t()
      }
      
  """
  @type invalid_sns_topic_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_configuration_set_delivery_options_response() :: %{}
      
  """
  @type put_configuration_set_delivery_options_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_configuration_set_event_destination_response() :: %{}
      
  """
  @type delete_configuration_set_event_destination_response() :: %{}

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
      
      delete_receipt_filter_request() :: %{
        required("FilterName") => String.t()
      }
      
  """
  @type delete_receipt_filter_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_identity_mail_from_domain_request() :: %{
        optional("BehaviorOnMXFailure") => list(any()),
        optional("MailFromDomain") => String.t(),
        required("Identity") => String.t()
      }
      
  """
  @type set_identity_mail_from_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_receipt_rule_request() :: %{
        required("Rule") => receipt_rule(),
        required("RuleSetName") => String.t()
      }
      
  """
  @type update_receipt_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_template_request() :: %{
        required("Template") => template()
      }
      
  """
  @type update_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reorder_receipt_rule_set_request() :: %{
        required("RuleNames") => list(String.t()()),
        required("RuleSetName") => String.t()
      }
      
  """
  @type reorder_receipt_rule_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      configuration_set() :: %{
        "Name" => String.t()
      }
      
  """
  @type configuration_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bulk_email_destination_status() :: %{
        "Error" => String.t(),
        "MessageId" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type bulk_email_destination_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_configuration_set_request() :: %{
        required("ConfigurationSetName") => String.t()
      }
      
  """
  @type delete_configuration_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_identity_mail_from_domain_response() :: %{}
      
  """
  @type set_identity_mail_from_domain_response() :: %{}

  @typedoc """

  ## Example:
      
      get_identity_notification_attributes_response() :: %{
        "NotificationAttributes" => map()
      }
      
  """
  @type get_identity_notification_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_email_response() :: %{
        "MessageId" => String.t()
      }
      
  """
  @type send_email_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_raw_email_response() :: %{
        "MessageId" => String.t()
      }
      
  """
  @type send_raw_email_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      configuration_set_sending_paused_exception() :: %{
        "ConfigurationSetName" => String.t(),
        "message" => String.t()
      }
      
  """
  @type configuration_set_sending_paused_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_watch_destination() :: %{
        "DimensionConfigurations" => list(cloud_watch_dimension_configuration()())
      }
      
  """
  @type cloud_watch_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      mail_from_domain_not_verified_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type mail_from_domain_not_verified_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_s3_configuration_exception() :: %{
        "Bucket" => String.t(),
        "message" => String.t()
      }
      
  """
  @type invalid_s3_configuration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      verify_domain_dkim_request() :: %{
        required("Domain") => String.t()
      }
      
  """
  @type verify_domain_dkim_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_identity_notification_attributes_request() :: %{
        required("Identities") => list(String.t()())
      }
      
  """
  @type get_identity_notification_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_receipt_filter_response() :: %{}
      
  """
  @type delete_receipt_filter_response() :: %{}

  @typedoc """

  ## Example:
      
      get_identity_dkim_attributes_response() :: %{
        "DkimAttributes" => map()
      }
      
  """
  @type get_identity_dkim_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_configuration_set_tracking_options_request() :: %{
        required("ConfigurationSetName") => String.t(),
        required("TrackingOptions") => tracking_options()
      }
      
  """
  @type update_configuration_set_tracking_options_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_identity_headers_in_notifications_enabled_response() :: %{}
      
  """
  @type set_identity_headers_in_notifications_enabled_response() :: %{}

  @typedoc """

  ## Example:
      
      create_configuration_set_response() :: %{}
      
  """
  @type create_configuration_set_response() :: %{}

  @typedoc """

  ## Example:
      
      message_dsn() :: %{
        "ArrivalDate" => non_neg_integer(),
        "ExtensionFields" => list(extension_field()()),
        "ReportingMta" => String.t()
      }
      
  """
  @type message_dsn() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_custom_verification_email_templates_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_custom_verification_email_templates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_identity_policy_request() :: %{
        required("Identity") => String.t(),
        required("PolicyName") => String.t()
      }
      
  """
  @type delete_identity_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reputation_options() :: %{
        "LastFreshStart" => non_neg_integer(),
        "ReputationMetricsEnabled" => boolean(),
        "SendingEnabled" => boolean()
      }
      
  """
  @type reputation_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test_render_template_request() :: %{
        required("TemplateData") => String.t(),
        required("TemplateName") => String.t()
      }
      
  """
  @type test_render_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      identity_verification_attributes() :: %{
        "VerificationStatus" => list(any()),
        "VerificationToken" => String.t()
      }
      
  """
  @type identity_verification_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_active_receipt_rule_set_response() :: %{}
      
  """
  @type set_active_receipt_rule_set_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_template_request() :: %{
        required("TemplateName") => String.t()
      }
      
  """
  @type delete_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_policy_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_policy_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_configuration_set_sending_enabled_request() :: %{
        required("ConfigurationSetName") => String.t(),
        required("Enabled") => boolean()
      }
      
  """
  @type update_configuration_set_sending_enabled_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_receipt_rule_set_request() :: %{
        required("RuleSetName") => String.t()
      }
      
  """
  @type create_receipt_rule_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      from_email_address_not_verified_exception() :: %{
        "FromEmailAddress" => String.t(),
        "message" => String.t()
      }
      
  """
  @type from_email_address_not_verified_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      verify_email_identity_response() :: %{}
      
  """
  @type verify_email_identity_response() :: %{}

  @typedoc """

  ## Example:
      
      lambda_action() :: %{
        "FunctionArn" => String.t(),
        "InvocationType" => list(any()),
        "TopicArn" => String.t()
      }
      
  """
  @type lambda_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reorder_receipt_rule_set_response() :: %{}
      
  """
  @type reorder_receipt_rule_set_response() :: %{}

  @typedoc """

  ## Example:
      
      describe_receipt_rule_response() :: %{
        "Rule" => receipt_rule()
      }
      
  """
  @type describe_receipt_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_destination() :: %{
        "CloudWatchDestination" => cloud_watch_destination(),
        "Enabled" => boolean(),
        "KinesisFirehoseDestination" => kinesis_firehose_destination(),
        "MatchingEventTypes" => list(list(any())()),
        "Name" => String.t(),
        "SNSDestination" => s_n_s_destination()
      }
      
  """
  @type event_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      verify_email_address_request() :: %{
        required("EmailAddress") => String.t()
      }
      
  """
  @type verify_email_address_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_configuration_set_event_destination_request() :: %{
        required("ConfigurationSetName") => String.t(),
        required("EventDestination") => event_destination()
      }
      
  """
  @type update_configuration_set_event_destination_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_identity_policies_request() :: %{
        required("Identity") => String.t(),
        required("PolicyNames") => list(String.t()())
      }
      
  """
  @type get_identity_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_receipt_filter_request() :: %{
        required("Filter") => receipt_filter()
      }
      
  """
  @type create_receipt_filter_request() :: %{String.t() => any()}

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
      
      cannot_delete_exception() :: %{
        "Name" => String.t(),
        "message" => String.t()
      }
      
  """
  @type cannot_delete_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_identity_notification_topic_response() :: %{}
      
  """
  @type set_identity_notification_topic_response() :: %{}

  @typedoc """

  ## Example:
      
      invalid_s_n_s_destination_exception() :: %{
        "ConfigurationSetName" => String.t(),
        "EventDestinationName" => String.t(),
        "message" => String.t()
      }
      
  """
  @type invalid_s_n_s_destination_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_identity_response() :: %{}
      
  """
  @type delete_identity_response() :: %{}

  @typedoc """

  ## Example:
      
      set_identity_headers_in_notifications_enabled_request() :: %{
        required("Enabled") => boolean(),
        required("Identity") => String.t(),
        required("NotificationType") => list(any())
      }
      
  """
  @type set_identity_headers_in_notifications_enabled_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_identity_policy_response() :: %{}
      
  """
  @type put_identity_policy_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_receipt_rule_request() :: %{
        required("RuleName") => String.t(),
        required("RuleSetName") => String.t()
      }
      
  """
  @type delete_receipt_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      clone_receipt_rule_set_response() :: %{}
      
  """
  @type clone_receipt_rule_set_response() :: %{}

  @typedoc """

  ## Example:
      
      send_custom_verification_email_response() :: %{
        "MessageId" => String.t()
      }
      
  """
  @type send_custom_verification_email_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      receipt_action() :: %{
        "AddHeaderAction" => add_header_action(),
        "BounceAction" => bounce_action(),
        "LambdaAction" => lambda_action(),
        "S3Action" => s3_action(),
        "SNSAction" => s_n_s_action(),
        "StopAction" => stop_action(),
        "WorkmailAction" => workmail_action()
      }
      
  """
  @type receipt_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      production_access_not_granted_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type production_access_not_granted_exception() :: %{String.t() => any()}

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
      
      list_receipt_filters_request() :: %{}
      
  """
  @type list_receipt_filters_request() :: %{}

  @typedoc """

  ## Example:
      
      s_n_s_destination() :: %{
        "TopicARN" => String.t()
      }
      
  """
  @type s_n_s_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_destination_already_exists_exception() :: %{
        "ConfigurationSetName" => String.t(),
        "EventDestinationName" => String.t(),
        "message" => String.t()
      }
      
  """
  @type event_destination_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_configuration_sets_response() :: %{
        "ConfigurationSets" => list(configuration_set()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_configuration_sets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_identity_mail_from_domain_attributes_response() :: %{
        "MailFromDomainAttributes" => map()
      }
      
  """
  @type get_identity_mail_from_domain_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_custom_verification_email_template_request() :: %{
        optional("FailureRedirectionURL") => String.t(),
        optional("FromEmailAddress") => String.t(),
        optional("SuccessRedirectionURL") => String.t(),
        optional("TemplateContent") => String.t(),
        optional("TemplateSubject") => String.t(),
        required("TemplateName") => String.t()
      }
      
  """
  @type update_custom_verification_email_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_receipt_rule_request() :: %{
        optional("After") => String.t(),
        required("Rule") => receipt_rule(),
        required("RuleSetName") => String.t()
      }
      
  """
  @type create_receipt_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      receipt_ip_filter() :: %{
        "Cidr" => String.t(),
        "Policy" => list(any())
      }
      
  """
  @type receipt_ip_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_configuration_sets_request() :: %{
        optional("MaxItems") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_configuration_sets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_receipt_rule_response() :: %{}
      
  """
  @type update_receipt_rule_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_configuration_set_tracking_options_request() :: %{
        required("ConfigurationSetName") => String.t()
      }
      
  """
  @type delete_configuration_set_tracking_options_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      raw_message() :: %{
        "Data" => binary()
      }
      
  """
  @type raw_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_custom_verification_email_templates_response() :: %{
        "CustomVerificationEmailTemplates" => list(custom_verification_email_template()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_custom_verification_email_templates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_bulk_templated_email_response() :: %{
        "Status" => list(bulk_email_destination_status()())
      }
      
  """
  @type send_bulk_templated_email_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_identity_feedback_forwarding_enabled_response() :: %{}
      
  """
  @type set_identity_feedback_forwarding_enabled_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_custom_verification_email_template_request() :: %{
        required("TemplateName") => String.t()
      }
      
  """
  @type delete_custom_verification_email_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_bounce_response() :: %{
        "MessageId" => String.t()
      }
      
  """
  @type send_bounce_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_receipt_rule_set_request() :: %{
        required("RuleSetName") => String.t()
      }
      
  """
  @type delete_receipt_rule_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_receipt_rule_response() :: %{}
      
  """
  @type create_receipt_rule_response() :: %{}

  @typedoc """

  ## Example:
      
      invalid_tracking_options_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_tracking_options_exception() :: %{String.t() => any()}

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
      
      set_active_receipt_rule_set_request() :: %{
        optional("RuleSetName") => String.t()
      }
      
  """
  @type set_active_receipt_rule_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_bulk_templated_email_request() :: %{
        optional("ConfigurationSetName") => String.t(),
        optional("DefaultTags") => list(message_tag()()),
        optional("DefaultTemplateData") => String.t(),
        optional("ReplyToAddresses") => list(String.t()()),
        optional("ReturnPath") => String.t(),
        optional("ReturnPathArn") => String.t(),
        optional("SourceArn") => String.t(),
        optional("TemplateArn") => String.t(),
        required("Destinations") => list(bulk_email_destination()()),
        required("Source") => String.t(),
        required("Template") => String.t()
      }
      
  """
  @type send_bulk_templated_email_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      configuration_set_does_not_exist_exception() :: %{
        "ConfigurationSetName" => String.t(),
        "message" => String.t()
      }
      
  """
  @type configuration_set_does_not_exist_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_templated_email_response() :: %{
        "MessageId" => String.t()
      }
      
  """
  @type send_templated_email_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_template_response() :: %{}
      
  """
  @type update_template_response() :: %{}

  @typedoc """

  ## Example:
      
      list_identity_policies_request() :: %{
        required("Identity") => String.t()
      }
      
  """
  @type list_identity_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      receipt_filter() :: %{
        "IpFilter" => receipt_ip_filter(),
        "Name" => String.t()
      }
      
  """
  @type receipt_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_configuration_set_event_destination_request() :: %{
        required("ConfigurationSetName") => String.t(),
        required("EventDestinationName") => String.t()
      }
      
  """
  @type delete_configuration_set_event_destination_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      receipt_rule_set_metadata() :: %{
        "CreatedTimestamp" => non_neg_integer(),
        "Name" => String.t()
      }
      
  """
  @type receipt_rule_set_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_configuration_set_event_destination_response() :: %{}
      
  """
  @type create_configuration_set_event_destination_response() :: %{}

  @typedoc """

  ## Example:
      
      send_templated_email_request() :: %{
        optional("ConfigurationSetName") => String.t(),
        optional("ReplyToAddresses") => list(String.t()()),
        optional("ReturnPath") => String.t(),
        optional("ReturnPathArn") => String.t(),
        optional("SourceArn") => String.t(),
        optional("Tags") => list(message_tag()()),
        optional("TemplateArn") => String.t(),
        required("Destination") => destination(),
        required("Source") => String.t(),
        required("Template") => String.t(),
        required("TemplateData") => String.t()
      }
      
  """
  @type send_templated_email_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_action() :: %{
        "Scope" => list(any()),
        "TopicArn" => String.t()
      }
      
  """
  @type stop_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_configuration_set_delivery_options_request() :: %{
        optional("DeliveryOptions") => delivery_options(),
        required("ConfigurationSetName") => String.t()
      }
      
  """
  @type put_configuration_set_delivery_options_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      receipt_rule() :: %{
        "Actions" => list(receipt_action()()),
        "Enabled" => boolean(),
        "Name" => String.t(),
        "Recipients" => list(String.t()()),
        "ScanEnabled" => boolean(),
        "TlsPolicy" => list(any())
      }
      
  """
  @type receipt_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_sending_paused_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type account_sending_paused_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_configuration_set_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_configuration_set_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_configuration_set_tracking_options_response() :: %{}
      
  """
  @type delete_configuration_set_tracking_options_response() :: %{}

  @typedoc """

  ## Example:
      
      verify_email_identity_request() :: %{
        required("EmailAddress") => String.t()
      }
      
  """
  @type verify_email_identity_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rule_does_not_exist_exception() :: %{
        "Name" => String.t(),
        "message" => String.t()
      }
      
  """
  @type rule_does_not_exist_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s_n_s_action() :: %{
        "Encoding" => list(any()),
        "TopicArn" => String.t()
      }
      
  """
  @type s_n_s_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_identity_notification_topic_request() :: %{
        optional("SnsTopic") => String.t(),
        required("Identity") => String.t(),
        required("NotificationType") => list(any())
      }
      
  """
  @type set_identity_notification_topic_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_identity_verification_attributes_response() :: %{
        "VerificationAttributes" => map()
      }
      
  """
  @type get_identity_verification_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bounced_recipient_info() :: %{
        "BounceType" => list(any()),
        "Recipient" => String.t(),
        "RecipientArn" => String.t(),
        "RecipientDsnFields" => recipient_dsn_fields()
      }
      
  """
  @type bounced_recipient_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_templates_response() :: %{
        "NextToken" => String.t(),
        "TemplatesMetadata" => list(template_metadata()())
      }
      
  """
  @type list_templates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_template_exception() :: %{
        "TemplateName" => String.t(),
        "message" => String.t()
      }
      
  """
  @type invalid_template_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_template_request() :: %{
        required("TemplateName") => String.t()
      }
      
  """
  @type get_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_configuration_set_tracking_options_request() :: %{
        required("ConfigurationSetName") => String.t(),
        required("TrackingOptions") => tracking_options()
      }
      
  """
  @type create_configuration_set_tracking_options_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_rendering_parameter_exception() :: %{
        "TemplateName" => String.t(),
        "message" => String.t()
      }
      
  """
  @type invalid_rendering_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_active_receipt_rule_set_request() :: %{}
      
  """
  @type describe_active_receipt_rule_set_request() :: %{}

  @typedoc """

  ## Example:
      
      update_account_sending_enabled_request() :: %{
        optional("Enabled") => boolean()
      }
      
  """
  @type update_account_sending_enabled_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      missing_rendering_attribute_exception() :: %{
        "TemplateName" => String.t(),
        "message" => String.t()
      }
      
  """
  @type missing_rendering_attribute_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_verification_email_template() :: %{
        "FailureRedirectionURL" => String.t(),
        "FromEmailAddress" => String.t(),
        "SuccessRedirectionURL" => String.t(),
        "TemplateName" => String.t(),
        "TemplateSubject" => String.t()
      }
      
  """
  @type custom_verification_email_template() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_destination_does_not_exist_exception() :: %{
        "ConfigurationSetName" => String.t(),
        "EventDestinationName" => String.t(),
        "message" => String.t()
      }
      
  """
  @type event_destination_does_not_exist_exception() :: %{String.t() => any()}

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
      
      delete_receipt_rule_response() :: %{}
      
  """
  @type delete_receipt_rule_response() :: %{}

  @typedoc """

  ## Example:
      
      message_rejected() :: %{
        "message" => String.t()
      }
      
  """
  @type message_rejected() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_identity_dkim_enabled_request() :: %{
        required("DkimEnabled") => boolean(),
        required("Identity") => String.t()
      }
      
  """
  @type set_identity_dkim_enabled_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      template_does_not_exist_exception() :: %{
        "TemplateName" => String.t(),
        "message" => String.t()
      }
      
  """
  @type template_does_not_exist_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_identity_policies_response() :: %{
        "Policies" => map()
      }
      
  """
  @type get_identity_policies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_configuration_set_event_destination_request() :: %{
        required("ConfigurationSetName") => String.t(),
        required("EventDestination") => event_destination()
      }
      
  """
  @type create_configuration_set_event_destination_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_bounce_request() :: %{
        optional("BounceSenderArn") => String.t(),
        optional("Explanation") => String.t(),
        optional("MessageDsn") => message_dsn(),
        required("BounceSender") => String.t(),
        required("BouncedRecipientInfoList") => list(bounced_recipient_info()()),
        required("OriginalMessageId") => String.t()
      }
      
  """
  @type send_bounce_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_identities_response() :: %{
        "Identities" => list(String.t()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_identities_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recipient_dsn_fields() :: %{
        "Action" => list(any()),
        "DiagnosticCode" => String.t(),
        "ExtensionFields" => list(extension_field()()),
        "FinalRecipient" => String.t(),
        "LastAttemptDate" => non_neg_integer(),
        "RemoteMta" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type recipient_dsn_fields() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delivery_options() :: %{
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
      
      workmail_action() :: %{
        "OrganizationArn" => String.t(),
        "TopicArn" => String.t()
      }
      
  """
  @type workmail_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_receipt_rule_position_request() :: %{
        optional("After") => String.t(),
        required("RuleName") => String.t(),
        required("RuleSetName") => String.t()
      }
      
  """
  @type set_receipt_rule_position_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tracking_options_already_exists_exception() :: %{
        "ConfigurationSetName" => String.t(),
        "message" => String.t()
      }
      
  """
  @type tracking_options_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bulk_email_destination() :: %{
        "Destination" => destination(),
        "ReplacementTags" => list(message_tag()()),
        "ReplacementTemplateData" => String.t()
      }
      
  """
  @type bulk_email_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_identity_policies_response() :: %{
        "PolicyNames" => list(String.t()())
      }
      
  """
  @type list_identity_policies_response() :: %{String.t() => any()}

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
      
      create_template_response() :: %{}
      
  """
  @type create_template_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_template_response() :: %{}
      
  """
  @type delete_template_response() :: %{}

  @typedoc """

  ## Example:
      
      extension_field() :: %{
        "Name" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type extension_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      template() :: %{
        "HtmlPart" => String.t(),
        "SubjectPart" => String.t(),
        "TemplateName" => String.t(),
        "TextPart" => String.t()
      }
      
  """
  @type template() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_email_request() :: %{
        optional("ConfigurationSetName") => String.t(),
        optional("ReplyToAddresses") => list(String.t()()),
        optional("ReturnPath") => String.t(),
        optional("ReturnPathArn") => String.t(),
        optional("SourceArn") => String.t(),
        optional("Tags") => list(message_tag()()),
        required("Destination") => destination(),
        required("Message") => message(),
        required("Source") => String.t()
      }
      
  """
  @type send_email_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_account_sending_enabled_response() :: %{
        "Enabled" => boolean()
      }
      
  """
  @type get_account_sending_enabled_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_verified_email_addresses_response() :: %{
        "VerifiedEmailAddresses" => list(String.t()())
      }
      
  """
  @type list_verified_email_addresses_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_send_statistics_response() :: %{
        "SendDataPoints" => list(send_data_point()())
      }
      
  """
  @type get_send_statistics_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_delivery_options_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_delivery_options_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_receipt_rule_set_response() :: %{}
      
  """
  @type delete_receipt_rule_set_response() :: %{}

  @typedoc """

  ## Example:
      
      send_data_point() :: %{
        "Bounces" => float(),
        "Complaints" => float(),
        "DeliveryAttempts" => float(),
        "Rejects" => float(),
        "Timestamp" => non_neg_integer()
      }
      
  """
  @type send_data_point() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_receipt_filter_response() :: %{}
      
  """
  @type create_receipt_filter_response() :: %{}

  @typedoc """

  ## Example:
      
      get_send_quota_response() :: %{
        "Max24HourSend" => float(),
        "MaxSendRate" => float(),
        "SentLast24Hours" => float()
      }
      
  """
  @type get_send_quota_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_configuration_set_tracking_options_response() :: %{}
      
  """
  @type update_configuration_set_tracking_options_response() :: %{}

  @typedoc """

  ## Example:
      
      set_identity_dkim_enabled_response() :: %{}
      
  """
  @type set_identity_dkim_enabled_response() :: %{}

  @typedoc """

  ## Example:
      
      create_configuration_set_request() :: %{
        required("ConfigurationSet") => configuration_set()
      }
      
  """
  @type create_configuration_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tracking_options_does_not_exist_exception() :: %{
        "ConfigurationSetName" => String.t(),
        "message" => String.t()
      }
      
  """
  @type tracking_options_does_not_exist_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_firehose_destination_exception() :: %{
        "ConfigurationSetName" => String.t(),
        "EventDestinationName" => String.t(),
        "message" => String.t()
      }
      
  """
  @type invalid_firehose_destination_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bounce_action() :: %{
        "Message" => String.t(),
        "Sender" => String.t(),
        "SmtpReplyCode" => String.t(),
        "StatusCode" => String.t(),
        "TopicArn" => String.t()
      }
      
  """
  @type bounce_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      clone_receipt_rule_set_request() :: %{
        required("OriginalRuleSetName") => String.t(),
        required("RuleSetName") => String.t()
      }
      
  """
  @type clone_receipt_rule_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_configuration_set_reputation_metrics_enabled_request() :: %{
        required("ConfigurationSetName") => String.t(),
        required("Enabled") => boolean()
      }
      
  """
  @type update_configuration_set_reputation_metrics_enabled_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      configuration_set_already_exists_exception() :: %{
        "ConfigurationSetName" => String.t(),
        "message" => String.t()
      }
      
  """
  @type configuration_set_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_header_action() :: %{
        "HeaderName" => String.t(),
        "HeaderValue" => String.t()
      }
      
  """
  @type add_header_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_identity_dkim_attributes_request() :: %{
        required("Identities") => list(String.t()())
      }
      
  """
  @type get_identity_dkim_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      message() :: %{
        "Body" => body(),
        "Subject" => content()
      }
      
  """
  @type message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      identity_mail_from_domain_attributes() :: %{
        "BehaviorOnMXFailure" => list(any()),
        "MailFromDomain" => String.t(),
        "MailFromDomainStatus" => list(any())
      }
      
  """
  @type identity_mail_from_domain_attributes() :: %{String.t() => any()}

  @type clone_receipt_rule_set_errors() ::
          limit_exceeded_exception()
          | already_exists_exception()
          | rule_set_does_not_exist_exception()

  @type create_configuration_set_errors() ::
          configuration_set_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_configuration_set_exception()

  @type create_configuration_set_event_destination_errors() ::
          invalid_firehose_destination_exception()
          | limit_exceeded_exception()
          | configuration_set_does_not_exist_exception()
          | event_destination_already_exists_exception()
          | invalid_s_n_s_destination_exception()
          | invalid_cloud_watch_destination_exception()

  @type create_configuration_set_tracking_options_errors() ::
          tracking_options_already_exists_exception()
          | configuration_set_does_not_exist_exception()
          | invalid_tracking_options_exception()

  @type create_custom_verification_email_template_errors() ::
          limit_exceeded_exception()
          | from_email_address_not_verified_exception()
          | custom_verification_email_template_already_exists_exception()
          | custom_verification_email_invalid_content_exception()

  @type create_receipt_filter_errors() :: limit_exceeded_exception() | already_exists_exception()

  @type create_receipt_rule_errors() ::
          limit_exceeded_exception()
          | rule_does_not_exist_exception()
          | invalid_s3_configuration_exception()
          | invalid_sns_topic_exception()
          | invalid_lambda_function_exception()
          | already_exists_exception()
          | rule_set_does_not_exist_exception()

  @type create_receipt_rule_set_errors() ::
          limit_exceeded_exception() | already_exists_exception()

  @type create_template_errors() ::
          limit_exceeded_exception() | invalid_template_exception() | already_exists_exception()

  @type delete_configuration_set_errors() :: configuration_set_does_not_exist_exception()

  @type delete_configuration_set_event_destination_errors() ::
          event_destination_does_not_exist_exception()
          | configuration_set_does_not_exist_exception()

  @type delete_configuration_set_tracking_options_errors() ::
          tracking_options_does_not_exist_exception()
          | configuration_set_does_not_exist_exception()

  @type delete_receipt_rule_errors() :: rule_set_does_not_exist_exception()

  @type delete_receipt_rule_set_errors() :: cannot_delete_exception()

  @type describe_configuration_set_errors() :: configuration_set_does_not_exist_exception()

  @type describe_receipt_rule_errors() ::
          rule_does_not_exist_exception() | rule_set_does_not_exist_exception()

  @type describe_receipt_rule_set_errors() :: rule_set_does_not_exist_exception()

  @type get_custom_verification_email_template_errors() ::
          custom_verification_email_template_does_not_exist_exception()

  @type get_template_errors() :: template_does_not_exist_exception()

  @type put_configuration_set_delivery_options_errors() ::
          invalid_delivery_options_exception() | configuration_set_does_not_exist_exception()

  @type put_identity_policy_errors() :: invalid_policy_exception()

  @type reorder_receipt_rule_set_errors() ::
          rule_does_not_exist_exception() | rule_set_does_not_exist_exception()

  @type send_bounce_errors() :: message_rejected()

  @type send_bulk_templated_email_errors() ::
          template_does_not_exist_exception()
          | message_rejected()
          | account_sending_paused_exception()
          | configuration_set_does_not_exist_exception()
          | mail_from_domain_not_verified_exception()
          | configuration_set_sending_paused_exception()

  @type send_custom_verification_email_errors() ::
          message_rejected()
          | configuration_set_does_not_exist_exception()
          | production_access_not_granted_exception()
          | from_email_address_not_verified_exception()
          | custom_verification_email_template_does_not_exist_exception()

  @type send_email_errors() ::
          message_rejected()
          | account_sending_paused_exception()
          | configuration_set_does_not_exist_exception()
          | mail_from_domain_not_verified_exception()
          | configuration_set_sending_paused_exception()

  @type send_raw_email_errors() ::
          message_rejected()
          | account_sending_paused_exception()
          | configuration_set_does_not_exist_exception()
          | mail_from_domain_not_verified_exception()
          | configuration_set_sending_paused_exception()

  @type send_templated_email_errors() ::
          template_does_not_exist_exception()
          | message_rejected()
          | account_sending_paused_exception()
          | configuration_set_does_not_exist_exception()
          | mail_from_domain_not_verified_exception()
          | configuration_set_sending_paused_exception()

  @type set_active_receipt_rule_set_errors() :: rule_set_does_not_exist_exception()

  @type set_receipt_rule_position_errors() ::
          rule_does_not_exist_exception() | rule_set_does_not_exist_exception()

  @type test_render_template_errors() ::
          template_does_not_exist_exception()
          | missing_rendering_attribute_exception()
          | invalid_rendering_parameter_exception()

  @type update_configuration_set_event_destination_errors() ::
          invalid_firehose_destination_exception()
          | event_destination_does_not_exist_exception()
          | configuration_set_does_not_exist_exception()
          | invalid_s_n_s_destination_exception()
          | invalid_cloud_watch_destination_exception()

  @type update_configuration_set_reputation_metrics_enabled_errors() ::
          configuration_set_does_not_exist_exception()

  @type update_configuration_set_sending_enabled_errors() ::
          configuration_set_does_not_exist_exception()

  @type update_configuration_set_tracking_options_errors() ::
          tracking_options_does_not_exist_exception()
          | configuration_set_does_not_exist_exception()
          | invalid_tracking_options_exception()

  @type update_custom_verification_email_template_errors() ::
          from_email_address_not_verified_exception()
          | custom_verification_email_template_does_not_exist_exception()
          | custom_verification_email_invalid_content_exception()

  @type update_receipt_rule_errors() ::
          limit_exceeded_exception()
          | rule_does_not_exist_exception()
          | invalid_s3_configuration_exception()
          | invalid_sns_topic_exception()
          | invalid_lambda_function_exception()
          | rule_set_does_not_exist_exception()

  @type update_template_errors() ::
          template_does_not_exist_exception() | invalid_template_exception()

  def metadata do
    %{
      api_version: "2010-12-01",
      content_type: "application/x-www-form-urlencoded",
      credential_scope: nil,
      endpoint_prefix: "email",
      global?: false,
      hostname: nil,
      protocol: "query",
      service_id: "SES",
      signature_version: "v4",
      signing_name: "email",
      target_prefix: "SimpleEmailService"
    }
  end

  @doc """
  Creates a receipt rule set by cloning an existing one. All receipt rules and
  configurations are copied to the new receipt rule set and are completely
  independent of the source rule set. For information about setting up rule
  sets, see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/dg/receiving-email-concepts.html#receiving-email-concepts-rules).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20CloneReceiptRuleSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:clone_receipt_rule_set_request`)
    %{
      required("OriginalRuleSetName") => String.t(),
      required("RuleSetName") => String.t()
    }
  """

  @spec clone_receipt_rule_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, clone_receipt_rule_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, clone_receipt_rule_set_errors()}

  def clone_receipt_rule_set(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CloneReceiptRuleSet", input, options)
  end

  @doc """
  Creates a configuration set. Configuration sets enable you to publish email
  sending events. For information about using configuration sets, see the
  [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/dg/monitor-sending-activity.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20CreateConfigurationSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_configuration_set_request`)
    %{
      required("ConfigurationSet") => configuration_set()
    }
  """

  @spec create_configuration_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_configuration_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_configuration_set_errors()}

  def create_configuration_set(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateConfigurationSet", input, options)
  end

  @doc """
  Creates a configuration set event destination. When you create or update an
  event destination, you must provide one, and only one, destination. The
  destination can be CloudWatch, Amazon Kinesis Firehose, or Amazon Simple
  Notification Service (Amazon SNS).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20CreateConfigurationSetEventDestination&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_configuration_set_event_destination_request`)
    %{
      required("ConfigurationSetName") => String.t(),
      required("EventDestination") => event_destination()
    }
  """

  @spec create_configuration_set_event_destination(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_configuration_set_event_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_configuration_set_event_destination_errors()}

  def create_configuration_set_event_destination(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateConfigurationSetEventDestination", input, options)
  end

  @doc """
  Creates an association between a configuration set and a custom domain for open
  and click event tracking.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20CreateConfigurationSetTrackingOptions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_configuration_set_tracking_options_request`)
    %{
      required("ConfigurationSetName") => String.t(),
      required("TrackingOptions") => tracking_options()
    }
  """

  @spec create_configuration_set_tracking_options(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_configuration_set_tracking_options_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_configuration_set_tracking_options_errors()}

  def create_configuration_set_tracking_options(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateConfigurationSetTrackingOptions", input, options)
  end

  @doc """
  Creates a new custom verification email template. For more information about
  custom verification email templates, see [Using Custom Verification Email
  Templates](https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom)
  in the *Amazon SES Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20CreateCustomVerificationEmailTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_custom_verification_email_template_request`)
    %{
      required("FailureRedirectionURL") => String.t(),
      required("FromEmailAddress") => String.t(),
      required("SuccessRedirectionURL") => String.t(),
      required("TemplateContent") => String.t(),
      required("TemplateName") => String.t(),
      required("TemplateSubject") => String.t()
    }
  """

  @spec create_custom_verification_email_template(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_custom_verification_email_template_errors()}

  def create_custom_verification_email_template(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateCustomVerificationEmailTemplate", input, options)
  end

  @doc """
  Creates a new IP address filter. For information about setting up IP address
  filters, see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/dg/receiving-email-ip-filtering-console-walkthrough.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20CreateReceiptFilter&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_receipt_filter_request`)
    %{
      required("Filter") => receipt_filter()
    }
  """

  @spec create_receipt_filter(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_receipt_filter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_receipt_filter_errors()}

  def create_receipt_filter(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateReceiptFilter", input, options)
  end

  @doc """
  Creates a receipt rule. For information about setting up receipt rules, see the
  [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/dg/receiving-email-receipt-rules-console-walkthrough.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20CreateReceiptRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_receipt_rule_request`)
    %{
      optional("After") => String.t(),
      required("Rule") => receipt_rule(),
      required("RuleSetName") => String.t()
    }
  """

  @spec create_receipt_rule(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_receipt_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_receipt_rule_errors()}

  def create_receipt_rule(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateReceiptRule", input, options)
  end

  @doc """
  Creates an empty receipt rule set. For information about setting up receipt rule
  sets, see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/dg/receiving-email-concepts.html#receiving-email-concepts-rules).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20CreateReceiptRuleSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_receipt_rule_set_request`)
    %{
      required("RuleSetName") => String.t()
    }
  """

  @spec create_receipt_rule_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_receipt_rule_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_receipt_rule_set_errors()}

  def create_receipt_rule_set(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateReceiptRuleSet", input, options)
  end

  @doc """
  Creates an email template. Email templates enable you to send personalized email
  to one or more destinations in a single operation. For more information, see
  the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/dg/send-personalized-email-api.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20CreateTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_template_request`)
    %{
      required("Template") => template()
    }
  """

  @spec create_template(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_template_errors()}

  def create_template(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateTemplate", input, options)
  end

  @doc """
  Deletes a configuration set. Configuration sets enable you to publish email
  sending events. For information about using configuration sets, see the
  [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/dg/monitor-sending-activity.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20DeleteConfigurationSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_configuration_set_request`)
    %{
      required("ConfigurationSetName") => String.t()
    }
  """

  @spec delete_configuration_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_configuration_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_configuration_set_errors()}

  def delete_configuration_set(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteConfigurationSet", input, options)
  end

  @doc """
  Deletes a configuration set event destination. Configuration set event
  destinations are associated with configuration sets, which enable you to
  publish email sending events. For information about using configuration sets,
  see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/dg/monitor-sending-activity.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20DeleteConfigurationSetEventDestination&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_configuration_set_event_destination_request`)
    %{
      required("ConfigurationSetName") => String.t(),
      required("EventDestinationName") => String.t()
    }
  """

  @spec delete_configuration_set_event_destination(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_configuration_set_event_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_configuration_set_event_destination_errors()}

  def delete_configuration_set_event_destination(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteConfigurationSetEventDestination", input, options)
  end

  @doc """
  Deletes an association between a configuration set and a custom domain for open
  and click event tracking. By default, images and links used for tracking open
  and click events are hosted on domains operated by Amazon SES. You can
  configure a subdomain of your own to handle these events. For information
  about using custom domains, see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/dg/configure-custom-open-click-domains.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20DeleteConfigurationSetTrackingOptions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_configuration_set_tracking_options_request`)
    %{
      required("ConfigurationSetName") => String.t()
    }
  """

  @spec delete_configuration_set_tracking_options(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_configuration_set_tracking_options_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_configuration_set_tracking_options_errors()}

  def delete_configuration_set_tracking_options(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteConfigurationSetTrackingOptions", input, options)
  end

  @doc """
  Deletes an existing custom verification email template. For more information
  about custom verification email templates, see [Using Custom Verification
  Email
  Templates](https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom)
  in the *Amazon SES Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20DeleteCustomVerificationEmailTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_custom_verification_email_template_request`)
    %{
      required("TemplateName") => String.t()
    }
  """

  @spec delete_custom_verification_email_template(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}

  def delete_custom_verification_email_template(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteCustomVerificationEmailTemplate", input, options)
  end

  @doc """
  Deletes the specified identity (an email address or a domain) from the list of
  verified identities.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20DeleteIdentity&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_identity_request`)
    %{
      required("Identity") => String.t()
    }
  """

  @spec delete_identity(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_identity_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def delete_identity(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteIdentity", input, options)
  end

  @doc """
  Deletes the specified sending authorization policy for the given identity (an
  email address or a domain). This operation returns successfully even if a
  policy with the specified name does not exist. This operation is for the
  identity owner only. If you have not verified the identity, it returns an
  error.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20DeleteIdentityPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_identity_policy_request`)
    %{
      required("Identity") => String.t(),
      required("PolicyName") => String.t()
    }
  """

  @spec delete_identity_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_identity_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def delete_identity_policy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteIdentityPolicy", input, options)
  end

  @doc """
  Deletes the specified IP address filter. For information about managing IP
  address filters, see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/dg/receiving-email-ip-filtering-console-walkthrough.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20DeleteReceiptFilter&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_receipt_filter_request`)
    %{
      required("FilterName") => String.t()
    }
  """

  @spec delete_receipt_filter(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_receipt_filter_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def delete_receipt_filter(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteReceiptFilter", input, options)
  end

  @doc """
  Deletes the specified receipt rule. For information about managing receipt
  rules, see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/dg/receiving-email-receipt-rules-console-walkthrough.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20DeleteReceiptRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_receipt_rule_request`)
    %{
      required("RuleName") => String.t(),
      required("RuleSetName") => String.t()
    }
  """

  @spec delete_receipt_rule(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_receipt_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_receipt_rule_errors()}

  def delete_receipt_rule(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteReceiptRule", input, options)
  end

  @doc """
  Deletes the specified receipt rule set and all of the receipt rules it contains.
  The currently active rule set cannot be deleted.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20DeleteReceiptRuleSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_receipt_rule_set_request`)
    %{
      required("RuleSetName") => String.t()
    }
  """

  @spec delete_receipt_rule_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_receipt_rule_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_receipt_rule_set_errors()}

  def delete_receipt_rule_set(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteReceiptRuleSet", input, options)
  end

  @doc """
  Deletes an email template.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20DeleteTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_template_request`)
    %{
      required("TemplateName") => String.t()
    }
  """

  @spec delete_template(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_template_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def delete_template(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteTemplate", input, options)
  end

  @doc """
  Deprecated. Use the `DeleteIdentity` operation to delete email addresses and
  domains.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20DeleteVerifiedEmailAddress&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_verified_email_address_request`)
    %{
      required("EmailAddress") => String.t()
    }
  """

  @spec delete_verified_email_address(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}

  def delete_verified_email_address(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteVerifiedEmailAddress", input, options)
  end

  @doc """
  Returns the metadata and receipt rules for the receipt rule set that is
  currently active. For information about setting up receipt rule sets, see the
  [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/dg/receiving-email-concepts.html#receiving-email-concepts-rules).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20DescribeActiveReceiptRuleSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_active_receipt_rule_set_request`)
    %{
      
    }
  """

  @spec describe_active_receipt_rule_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_active_receipt_rule_set_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def describe_active_receipt_rule_set(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeActiveReceiptRuleSet", input, options)
  end

  @doc """
  Returns the details of the specified configuration set. For information about
  using configuration sets, see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/dg/monitor-sending-activity.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20DescribeConfigurationSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_configuration_set_request`)
    %{
      optional("ConfigurationSetAttributeNames") => list(list(any())()),
      required("ConfigurationSetName") => String.t()
    }
  """

  @spec describe_configuration_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_configuration_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_configuration_set_errors()}

  def describe_configuration_set(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeConfigurationSet", input, options)
  end

  @doc """
  Returns the details of the specified receipt rule. For information about setting
  up receipt rules, see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/dg/receiving-email-receipt-rules-console-walkthrough.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20DescribeReceiptRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_receipt_rule_request`)
    %{
      required("RuleName") => String.t(),
      required("RuleSetName") => String.t()
    }
  """

  @spec describe_receipt_rule(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_receipt_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_receipt_rule_errors()}

  def describe_receipt_rule(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeReceiptRule", input, options)
  end

  @doc """
  Returns the details of the specified receipt rule set. For information about
  managing receipt rule sets, see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/dg/receiving-email-receipt-rules-console-walkthrough.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20DescribeReceiptRuleSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_receipt_rule_set_request`)
    %{
      required("RuleSetName") => String.t()
    }
  """

  @spec describe_receipt_rule_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_receipt_rule_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_receipt_rule_set_errors()}

  def describe_receipt_rule_set(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeReceiptRuleSet", input, options)
  end

  @doc """
  Returns the email sending status of the Amazon SES account for the current
  Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20GetAccountSendingEnabled&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:%{}`)
  """

  @spec get_account_sending_enabled(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_account_sending_enabled_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def get_account_sending_enabled(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetAccountSendingEnabled", input, options)
  end

  @doc """
  Returns the custom email verification template for the template name you
  specify. For more information about custom verification email templates, see
  [Using Custom Verification Email
  Templates](https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom)
  in the *Amazon SES Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20GetCustomVerificationEmailTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_custom_verification_email_template_request`)
    %{
      required("TemplateName") => String.t()
    }
  """

  @spec get_custom_verification_email_template(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_custom_verification_email_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_custom_verification_email_template_errors()}

  def get_custom_verification_email_template(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetCustomVerificationEmailTemplate", input, options)
  end

  @doc """
  Returns the current status of Easy DKIM signing for an entity. For domain name
  identities, this operation also returns the DKIM tokens that are required for
  Easy DKIM signing, and whether Amazon SES has successfully verified that these
  tokens have been published. This operation takes a list of identities as input
  and returns the following information for each:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20GetIdentityDkimAttributes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_identity_dkim_attributes_request`)
    %{
      required("Identities") => list(String.t()())
    }
  """

  @spec get_identity_dkim_attributes(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_identity_dkim_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def get_identity_dkim_attributes(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetIdentityDkimAttributes", input, options)
  end

  @doc """
  Returns the custom MAIL FROM attributes for a list of identities (email
  addresses : domains).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20GetIdentityMailFromDomainAttributes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_identity_mail_from_domain_attributes_request`)
    %{
      required("Identities") => list(String.t()())
    }
  """

  @spec get_identity_mail_from_domain_attributes(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_identity_mail_from_domain_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def get_identity_mail_from_domain_attributes(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetIdentityMailFromDomainAttributes", input, options)
  end

  @doc """
  Given a list of verified identities (email addresses and/or domains), returns a
  structure describing identity notification attributes. This operation is
  throttled at one request per second and can only get notification attributes
  for up to 100 identities at a time.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20GetIdentityNotificationAttributes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_identity_notification_attributes_request`)
    %{
      required("Identities") => list(String.t()())
    }
  """

  @spec get_identity_notification_attributes(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_identity_notification_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def get_identity_notification_attributes(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetIdentityNotificationAttributes", input, options)
  end

  @doc """
  Returns the requested sending authorization policies for the given identity (an
  email address or a domain). The policies are returned as a map of policy names
  to policy contents. You can retrieve a maximum of 20 policies at a time. This
  operation is for the identity owner only. If you have not verified the
  identity, it returns an error.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20GetIdentityPolicies&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_identity_policies_request`)
    %{
      required("Identity") => String.t(),
      required("PolicyNames") => list(String.t()())
    }
  """

  @spec get_identity_policies(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_identity_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def get_identity_policies(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetIdentityPolicies", input, options)
  end

  @doc """
  Given a list of identities (email addresses and/or domains), returns the
  verification status and (for domain identities) the verification token for
  each identity. The verification status of an email address is "Pending" until
  the email address owner clicks the link within the verification email that
  Amazon SES sent to that address. If the email address owner clicks the link
  within 24 hours, the verification status of the email address changes to
  "Success". If the link is not clicked within 24 hours, the verification status
  changes to "Failed." In that case, to verify the email address, you must
  restart the verification process from the beginning.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20GetIdentityVerificationAttributes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_identity_verification_attributes_request`)
    %{
      required("Identities") => list(String.t()())
    }
  """

  @spec get_identity_verification_attributes(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_identity_verification_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def get_identity_verification_attributes(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetIdentityVerificationAttributes", input, options)
  end

  @doc """
  Provides the sending limits for the Amazon SES account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20GetSendQuota&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:%{}`)
  """

  @spec get_send_quota(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_send_quota_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def get_send_quota(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetSendQuota", input, options)
  end

  @doc """
  Provides sending statistics for the current Amazon Web Services Region. The
  result is a list of data points, representing the last two weeks of sending
  activity. Each data point in the list contains statistics for a 15-minute
  period of time.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20GetSendStatistics&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:%{}`)
  """

  @spec get_send_statistics(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_send_statistics_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def get_send_statistics(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetSendStatistics", input, options)
  end

  @doc """
  Displays the template object (which includes the Subject line, HTML part and
  text part) for the template you specify.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20GetTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_template_request`)
    %{
      required("TemplateName") => String.t()
    }
  """

  @spec get_template(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_template_errors()}

  def get_template(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetTemplate", input, options)
  end

  @doc """
  Provides a list of the configuration sets associated with your Amazon SES
  account in the current Amazon Web Services Region. For information about using
  configuration sets, see [Monitoring Your Amazon SES Sending
  Activity](https://docs.aws.amazon.com/ses/latest/dg/monitor-sending-activity.html)
  in the *Amazon SES Developer Guide.*

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20ListConfigurationSets&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_configuration_sets_request`)
    %{
      optional("MaxItems") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec list_configuration_sets(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_configuration_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def list_configuration_sets(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListConfigurationSets", input, options)
  end

  @doc """
  Lists the existing custom verification email templates for your account in the
  current Amazon Web Services Region. For more information about custom
  verification email templates, see [Using Custom Verification Email
  Templates](https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom)
  in the *Amazon SES Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20ListCustomVerificationEmailTemplates&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_custom_verification_email_templates_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec list_custom_verification_email_templates(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_custom_verification_email_templates_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def list_custom_verification_email_templates(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListCustomVerificationEmailTemplates", input, options)
  end

  @doc """
  Returns a list containing all of the identities (email addresses and domains)
  for your Amazon Web Services account in the current Amazon Web Services
  Region, regardless of verification status. You can execute this operation no
  more than once per second.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20ListIdentities&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_identities_request`)
    %{
      optional("IdentityType") => list(any()),
      optional("MaxItems") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec list_identities(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_identities_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def list_identities(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListIdentities", input, options)
  end

  @doc """
  Returns a list of sending authorization policies that are attached to the given
  identity (an email address or a domain). This operation returns only a list.
  To get the actual policy content, use `GetIdentityPolicies`. This operation is
  for the identity owner only. If you have not verified the identity, it returns
  an error.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20ListIdentityPolicies&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_identity_policies_request`)
    %{
      required("Identity") => String.t()
    }
  """

  @spec list_identity_policies(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_identity_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def list_identity_policies(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListIdentityPolicies", input, options)
  end

  @doc """
  Lists the IP address filters associated with your Amazon Web Services account in
  the current Amazon Web Services Region. For information about managing IP
  address filters, see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/dg/receiving-email-ip-filtering-console-walkthrough.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20ListReceiptFilters&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_receipt_filters_request`)
    %{
      
    }
  """

  @spec list_receipt_filters(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_receipt_filters_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def list_receipt_filters(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListReceiptFilters", input, options)
  end

  @doc """
  Lists the receipt rule sets that exist under your Amazon Web Services account in
  the current Amazon Web Services Region. If there are additional receipt rule
  sets to be retrieved, you receive a `NextToken` that you can provide to the
  next call to `ListReceiptRuleSets` to retrieve the additional entries. For
  information about managing receipt rule sets, see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/dg/receiving-email-receipt-rules-console-walkthrough.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20ListReceiptRuleSets&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_receipt_rule_sets_request`)
    %{
      optional("NextToken") => String.t()
    }
  """

  @spec list_receipt_rule_sets(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_receipt_rule_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def list_receipt_rule_sets(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListReceiptRuleSets", input, options)
  end

  @doc """
  Lists the email templates present in your Amazon SES account in the current
  Amazon Web Services Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20ListTemplates&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_templates_request`)
    %{
      optional("MaxItems") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec list_templates(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_templates_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def list_templates(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTemplates", input, options)
  end

  @doc """
  Deprecated. Use the `ListIdentities` operation to list the email addresses and
  domains associated with your account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20ListVerifiedEmailAddresses&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:%{}`)
  """

  @spec list_verified_email_addresses(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_verified_email_addresses_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def list_verified_email_addresses(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListVerifiedEmailAddresses", input, options)
  end

  @doc """
  Adds or updates the delivery options for a configuration set.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20PutConfigurationSetDeliveryOptions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_configuration_set_delivery_options_request`)
    %{
      optional("DeliveryOptions") => delivery_options(),
      required("ConfigurationSetName") => String.t()
    }
  """

  @spec put_configuration_set_delivery_options(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_configuration_set_delivery_options_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_configuration_set_delivery_options_errors()}

  def put_configuration_set_delivery_options(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutConfigurationSetDeliveryOptions", input, options)
  end

  @doc """
  Adds or updates a sending authorization policy for the specified identity (an
  email address or a domain). This operation is for the identity owner only. If
  you have not verified the identity, it returns an error.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20PutIdentityPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_identity_policy_request`)
    %{
      required("Identity") => String.t(),
      required("Policy") => String.t(),
      required("PolicyName") => String.t()
    }
  """

  @spec put_identity_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_identity_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_identity_policy_errors()}

  def put_identity_policy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutIdentityPolicy", input, options)
  end

  @doc """
  Reorders the receipt rules within a receipt rule set. All of the rules in the
  rule set must be represented in this request. That is, it is error if the
  reorder request doesn't explicitly position all of the rules.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20ReorderReceiptRuleSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:reorder_receipt_rule_set_request`)
    %{
      required("RuleNames") => list(String.t()()),
      required("RuleSetName") => String.t()
    }
  """

  @spec reorder_receipt_rule_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, reorder_receipt_rule_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reorder_receipt_rule_set_errors()}

  def reorder_receipt_rule_set(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ReorderReceiptRuleSet", input, options)
  end

  @doc """
  Generates and sends a bounce message to the sender of an email you received
  through Amazon SES. You can only use this operation on an email up to 24 hours
  after you receive it. You cannot use this operation to send generic bounces
  for mail that was not received by Amazon SES.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20SendBounce&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:send_bounce_request`)
    %{
      optional("BounceSenderArn") => String.t(),
      optional("Explanation") => String.t(),
      optional("MessageDsn") => message_dsn(),
      required("BounceSender") => String.t(),
      required("BouncedRecipientInfoList") => list(bounced_recipient_info()()),
      required("OriginalMessageId") => String.t()
    }
  """

  @spec send_bounce(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, send_bounce_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_bounce_errors()}

  def send_bounce(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SendBounce", input, options)
  end

  @doc """
  Composes an email message to multiple destinations. The message body is created
  using an email template. To send email using this operation, your call must
  meet the following requirements:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20SendBulkTemplatedEmail&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:send_bulk_templated_email_request`)
    %{
      optional("ConfigurationSetName") => String.t(),
      optional("DefaultTags") => list(message_tag()()),
      optional("DefaultTemplateData") => String.t(),
      optional("ReplyToAddresses") => list(String.t()()),
      optional("ReturnPath") => String.t(),
      optional("ReturnPathArn") => String.t(),
      optional("SourceArn") => String.t(),
      optional("TemplateArn") => String.t(),
      required("Destinations") => list(bulk_email_destination()()),
      required("Source") => String.t(),
      required("Template") => String.t()
    }
  """

  @spec send_bulk_templated_email(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, send_bulk_templated_email_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_bulk_templated_email_errors()}

  def send_bulk_templated_email(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SendBulkTemplatedEmail", input, options)
  end

  @doc """
  Adds an email address to the list of identities for your Amazon SES account in
  the current Amazon Web Services Region and attempts to verify it. As a result
  of executing this operation, a customized verification email is sent to the
  specified address. To use this operation, you must first create a custom
  verification email template. For more information about creating and using
  custom verification email templates, see [Using Custom Verification Email
  Templates](https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom)
  in the *Amazon SES Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20SendCustomVerificationEmail&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:send_custom_verification_email_request`)
    %{
      optional("ConfigurationSetName") => String.t(),
      required("EmailAddress") => String.t(),
      required("TemplateName") => String.t()
    }
  """

  @spec send_custom_verification_email(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, send_custom_verification_email_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_custom_verification_email_errors()}

  def send_custom_verification_email(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SendCustomVerificationEmail", input, options)
  end

  @doc """
  Composes an email message and immediately queues it for sending. To send email
  using this operation, your message must meet the following requirements:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20SendEmail&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:send_email_request`)
    %{
      optional("ConfigurationSetName") => String.t(),
      optional("ReplyToAddresses") => list(String.t()()),
      optional("ReturnPath") => String.t(),
      optional("ReturnPathArn") => String.t(),
      optional("SourceArn") => String.t(),
      optional("Tags") => list(message_tag()()),
      required("Destination") => destination(),
      required("Message") => message(),
      required("Source") => String.t()
    }
  """

  @spec send_email(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, send_email_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_email_errors()}

  def send_email(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SendEmail", input, options)
  end

  @doc """
  Composes an email message and immediately queues it for sending. This operation
  is more flexible than the `SendEmail` operation. When you use the
  `SendRawEmail` operation, you can specify the headers of the message as well
  as its content. This flexibility is useful, for example, when you need to send
  a multipart MIME email (such a message that contains both a text and an HTML
  version). You can also use this operation to send messages that include
  attachments.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20SendRawEmail&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:send_raw_email_request`)
    %{
      optional("ConfigurationSetName") => String.t(),
      optional("Destinations") => list(String.t()()),
      optional("FromArn") => String.t(),
      optional("ReturnPathArn") => String.t(),
      optional("Source") => String.t(),
      optional("SourceArn") => String.t(),
      optional("Tags") => list(message_tag()()),
      required("RawMessage") => raw_message()
    }
  """

  @spec send_raw_email(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, send_raw_email_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_raw_email_errors()}

  def send_raw_email(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SendRawEmail", input, options)
  end

  @doc """
  Composes an email message using an email template and immediately queues it for
  sending. To send email using this operation, your call must meet the following
  requirements:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20SendTemplatedEmail&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:send_templated_email_request`)
    %{
      optional("ConfigurationSetName") => String.t(),
      optional("ReplyToAddresses") => list(String.t()()),
      optional("ReturnPath") => String.t(),
      optional("ReturnPathArn") => String.t(),
      optional("SourceArn") => String.t(),
      optional("Tags") => list(message_tag()()),
      optional("TemplateArn") => String.t(),
      required("Destination") => destination(),
      required("Source") => String.t(),
      required("Template") => String.t(),
      required("TemplateData") => String.t()
    }
  """

  @spec send_templated_email(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, send_templated_email_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_templated_email_errors()}

  def send_templated_email(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SendTemplatedEmail", input, options)
  end

  @doc """
  Sets the specified receipt rule set as the active receipt rule set. To disable
  your email-receiving through Amazon SES completely, you can call this
  operation with `RuleSetName` set to null.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20SetActiveReceiptRuleSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:set_active_receipt_rule_set_request`)
    %{
      optional("RuleSetName") => String.t()
    }
  """

  @spec set_active_receipt_rule_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, set_active_receipt_rule_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, set_active_receipt_rule_set_errors()}

  def set_active_receipt_rule_set(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetActiveReceiptRuleSet", input, options)
  end

  @doc """
  Enables or disables Easy DKIM signing of email sent from an identity. If Easy
  DKIM signing is enabled for a domain, then Amazon SES uses DKIM to sign all
  email that it sends from addresses on that domain. If Easy DKIM signing is
  enabled for an email address, then Amazon SES uses DKIM to sign all email it
  sends from that address. For email addresses (for example,
  `user@example.com`), you can only enable DKIM signing if the corresponding
  domain (in this case, `example.com`) has been set up to use Easy DKIM.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20SetIdentityDkimEnabled&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:set_identity_dkim_enabled_request`)
    %{
      required("DkimEnabled") => boolean(),
      required("Identity") => String.t()
    }
  """

  @spec set_identity_dkim_enabled(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, set_identity_dkim_enabled_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def set_identity_dkim_enabled(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetIdentityDkimEnabled", input, options)
  end

  @doc """
  Given an identity (an email address or a domain), enables or disables whether
  Amazon SES forwards bounce and complaint notifications as email. Feedback
  forwarding can only be disabled when Amazon Simple Notification Service
  (Amazon SNS) topics are specified for both bounces and complaints. Feedback
  forwarding does not apply to delivery notifications. Delivery notifications
  are only available through Amazon SNS.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20SetIdentityFeedbackForwardingEnabled&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:set_identity_feedback_forwarding_enabled_request`)
    %{
      required("ForwardingEnabled") => boolean(),
      required("Identity") => String.t()
    }
  """

  @spec set_identity_feedback_forwarding_enabled(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, set_identity_feedback_forwarding_enabled_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def set_identity_feedback_forwarding_enabled(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetIdentityFeedbackForwardingEnabled", input, options)
  end

  @doc """
  Given an identity (an email address or a domain), sets whether Amazon SES
  includes the original email headers in the Amazon Simple Notification Service
  (Amazon SNS) notifications of a specified type. You can execute this operation
  no more than once per second.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20SetIdentityHeadersInNotificationsEnabled&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:set_identity_headers_in_notifications_enabled_request`)
    %{
      required("Enabled") => boolean(),
      required("Identity") => String.t(),
      required("NotificationType") => list(any())
    }
  """

  @spec set_identity_headers_in_notifications_enabled(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, set_identity_headers_in_notifications_enabled_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def set_identity_headers_in_notifications_enabled(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetIdentityHeadersInNotificationsEnabled", input, options)
  end

  @doc """
  Enables or disables the custom MAIL FROM domain setup for a verified identity
  (an email address or a domain). To send emails using the specified MAIL FROM
  domain, you must add an MX record to your MAIL FROM domain's DNS settings. To
  ensure that your emails pass Sender Policy Framework (SPF) checks, you must
  also add or update an SPF record. For more information, see the [Amazon SES
  Developer Guide](https://docs.aws.amazon.com/ses/latest/dg/mail-from.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20SetIdentityMailFromDomain&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:set_identity_mail_from_domain_request`)
    %{
      optional("BehaviorOnMXFailure") => list(any()),
      optional("MailFromDomain") => String.t(),
      required("Identity") => String.t()
    }
  """

  @spec set_identity_mail_from_domain(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, set_identity_mail_from_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def set_identity_mail_from_domain(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetIdentityMailFromDomain", input, options)
  end

  @doc """
  Sets an Amazon Simple Notification Service (Amazon SNS) topic to use when
  delivering notifications. When you use this operation, you specify a verified
  identity, such as an email address or domain. When you send an email that uses
  the chosen identity in the Source field, Amazon SES sends notifications to the
  topic you specified. You can send bounce, complaint, or delivery notifications
  (or any combination of the three) to the Amazon SNS topic that you specify.
  You can execute this operation no more than once per second.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20SetIdentityNotificationTopic&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:set_identity_notification_topic_request`)
    %{
      optional("SnsTopic") => String.t(),
      required("Identity") => String.t(),
      required("NotificationType") => list(any())
    }
  """

  @spec set_identity_notification_topic(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, set_identity_notification_topic_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def set_identity_notification_topic(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetIdentityNotificationTopic", input, options)
  end

  @doc """
  Sets the position of the specified receipt rule in the receipt rule set. For
  information about managing receipt rules, see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/dg/receiving-email-receipt-rules-console-walkthrough.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20SetReceiptRulePosition&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:set_receipt_rule_position_request`)
    %{
      optional("After") => String.t(),
      required("RuleName") => String.t(),
      required("RuleSetName") => String.t()
    }
  """

  @spec set_receipt_rule_position(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, set_receipt_rule_position_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, set_receipt_rule_position_errors()}

  def set_receipt_rule_position(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetReceiptRulePosition", input, options)
  end

  @doc """
  Creates a preview of the MIME content of an email when provided with a template
  and a set of replacement data.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20TestRenderTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:test_render_template_request`)
    %{
      required("TemplateData") => String.t(),
      required("TemplateName") => String.t()
    }
  """

  @spec test_render_template(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, test_render_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, test_render_template_errors()}

  def test_render_template(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "TestRenderTemplate", input, options)
  end

  @doc """
  Enables or disables email sending across your entire Amazon SES account in the
  current Amazon Web Services Region. You can use this operation in conjunction
  with Amazon CloudWatch alarms to temporarily pause email sending across your
  Amazon SES account in a given Amazon Web Services Region when reputation
  metrics (such as your bounce or complaint rates) reach certain thresholds.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20UpdateAccountSendingEnabled&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_account_sending_enabled_request`)
    %{
      optional("Enabled") => boolean()
    }
  """

  @spec update_account_sending_enabled(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}

  def update_account_sending_enabled(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateAccountSendingEnabled", input, options)
  end

  @doc """
  Updates the event destination of a configuration set. Event destinations are
  associated with configuration sets, which enable you to publish email sending
  events to Amazon CloudWatch, Amazon Kinesis Firehose, or Amazon Simple
  Notification Service (Amazon SNS). For information about using configuration
  sets, see [Monitoring Your Amazon SES Sending
  Activity](https://docs.aws.amazon.com/ses/latest/dg/monitor-sending-activity.html)
  in the *Amazon SES Developer Guide.* When you create or update an event
  destination, you must provide one, and only one, destination. The destination
  can be Amazon CloudWatch, Amazon Kinesis Firehose, or Amazon Simple
  Notification Service (Amazon SNS).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20UpdateConfigurationSetEventDestination&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_configuration_set_event_destination_request`)
    %{
      required("ConfigurationSetName") => String.t(),
      required("EventDestination") => event_destination()
    }
  """

  @spec update_configuration_set_event_destination(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_configuration_set_event_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_configuration_set_event_destination_errors()}

  def update_configuration_set_event_destination(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateConfigurationSetEventDestination", input, options)
  end

  @doc """
  Enables or disables the publishing of reputation metrics for emails sent using a
  specific configuration set in a given Amazon Web Services Region. Reputation
  metrics include bounce and complaint rates. These metrics are published to
  Amazon CloudWatch. By using CloudWatch, you can create alarms when bounce or
  complaint rates exceed certain thresholds.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20UpdateConfigurationSetReputationMetricsEnabled&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_configuration_set_reputation_metrics_enabled_request`)
    %{
      required("ConfigurationSetName") => String.t(),
      required("Enabled") => boolean()
    }
  """

  @spec update_configuration_set_reputation_metrics_enabled(
          AWS.Client.t(),
          input :: map(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_configuration_set_reputation_metrics_enabled_errors()}

  def update_configuration_set_reputation_metrics_enabled(
        %Client{} = client,
        input,
        options \\ []
      )
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(
      client,
      meta,
      "UpdateConfigurationSetReputationMetricsEnabled",
      input,
      options
    )
  end

  @doc """
  Enables or disables email sending for messages sent using a specific
  configuration set in a given Amazon Web Services Region. You can use this
  operation in conjunction with Amazon CloudWatch alarms to temporarily pause
  email sending for a configuration set when the reputation metrics for that
  configuration set (such as your bounce on complaint rate) exceed certain
  thresholds.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20UpdateConfigurationSetSendingEnabled&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_configuration_set_sending_enabled_request`)
    %{
      required("ConfigurationSetName") => String.t(),
      required("Enabled") => boolean()
    }
  """

  @spec update_configuration_set_sending_enabled(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_configuration_set_sending_enabled_errors()}

  def update_configuration_set_sending_enabled(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateConfigurationSetSendingEnabled", input, options)
  end

  @doc """
  Modifies an association between a configuration set and a custom domain for open
  and click event tracking.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20UpdateConfigurationSetTrackingOptions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_configuration_set_tracking_options_request`)
    %{
      required("ConfigurationSetName") => String.t(),
      required("TrackingOptions") => tracking_options()
    }
  """

  @spec update_configuration_set_tracking_options(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_configuration_set_tracking_options_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_configuration_set_tracking_options_errors()}

  def update_configuration_set_tracking_options(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateConfigurationSetTrackingOptions", input, options)
  end

  @doc """
  Updates an existing custom verification email template. For more information
  about custom verification email templates, see [Using Custom Verification
  Email
  Templates](https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom)
  in the *Amazon SES Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20UpdateCustomVerificationEmailTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_custom_verification_email_template_request`)
    %{
      optional("FailureRedirectionURL") => String.t(),
      optional("FromEmailAddress") => String.t(),
      optional("SuccessRedirectionURL") => String.t(),
      optional("TemplateContent") => String.t(),
      optional("TemplateSubject") => String.t(),
      required("TemplateName") => String.t()
    }
  """

  @spec update_custom_verification_email_template(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_custom_verification_email_template_errors()}

  def update_custom_verification_email_template(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateCustomVerificationEmailTemplate", input, options)
  end

  @doc """
  Updates a receipt rule. For information about managing receipt rules, see the
  [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/dg/receiving-email-receipt-rules-console-walkthrough.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20UpdateReceiptRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_receipt_rule_request`)
    %{
      required("Rule") => receipt_rule(),
      required("RuleSetName") => String.t()
    }
  """

  @spec update_receipt_rule(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_receipt_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_receipt_rule_errors()}

  def update_receipt_rule(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateReceiptRule", input, options)
  end

  @doc """
  Updates an email template. Email templates enable you to send personalized email
  to one or more destinations in a single operation. For more information, see
  the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/dg/send-personalized-email-api.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20UpdateTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_template_request`)
    %{
      required("Template") => template()
    }
  """

  @spec update_template(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_template_errors()}

  def update_template(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateTemplate", input, options)
  end

  @doc """
  Returns a set of DKIM tokens for a domain identity. When you execute the
  `VerifyDomainDkim` operation, the domain that you specify is added to the list
  of identities that are associated with your account. This is true even if you
  haven't already associated the domain with your account by using the
  `VerifyDomainIdentity` operation. However, you can't send email from the
  domain until you either successfully [verify
  it](https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#verify-domain-procedure)
  or you successfully [set up DKIM for
  it](https://docs.aws.amazon.com/ses/latest/dg/send-email-authentication-dkim-easy.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20VerifyDomainDkim&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:verify_domain_dkim_request`)
    %{
      required("Domain") => String.t()
    }
  """

  @spec verify_domain_dkim(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, verify_domain_dkim_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def verify_domain_dkim(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "VerifyDomainDkim", input, options)
  end

  @doc """
  Adds a domain to the list of identities for your Amazon SES account in the
  current Amazon Web Services Region and attempts to verify it. For more
  information about verifying domains, see [Verifying Email Addresses and
  Domains](https://docs.aws.amazon.com/ses/latest/dg/verify-addresses-and-domains.html)
  in the *Amazon SES Developer Guide.*

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20VerifyDomainIdentity&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:verify_domain_identity_request`)
    %{
      required("Domain") => String.t()
    }
  """

  @spec verify_domain_identity(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, verify_domain_identity_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def verify_domain_identity(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "VerifyDomainIdentity", input, options)
  end

  @doc """
  Deprecated. Use the `VerifyEmailIdentity` operation to verify a new email
  address.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20VerifyEmailAddress&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:verify_email_address_request`)
    %{
      required("EmailAddress") => String.t()
    }
  """

  @spec verify_email_address(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}

  def verify_email_address(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "VerifyEmailAddress", input, options)
  end

  @doc """
  Adds an email address to the list of identities for your Amazon SES account in
  the current Amazon Web Services Region and attempts to verify it. As a result
  of executing this operation, a verification email is sent to the specified
  address.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ses%20VerifyEmailIdentity&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:verify_email_identity_request`)
    %{
      required("EmailAddress") => String.t()
    }
  """

  @spec verify_email_identity(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, verify_email_identity_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def verify_email_identity(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "VerifyEmailIdentity", input, options)
  end
end
