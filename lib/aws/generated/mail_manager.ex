# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MailManager do
  @moduledoc """
  AWS SES Mail Manager API

  [AWS SES Mail Manager API](http://aws.amazon.com/ses) contains operations and data types
  that comprise the Mail Manager feature of Amazon Simple Email Service.

  Mail Manager is a set of Amazon SES email gateway features designed to help you
  strengthen
  your organization's email infrastructure, simplify email workflow management,
  and
  streamline email compliance control. To learn more, see the [Mail Manager
  chapter](https://docs.aws.amazon.com/ses/latest/dg/eb.html) in the Amazon SES
  Developer
  Guide.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      create_addon_instance_response() :: %{
        "AddonInstanceId" => String.t()
      }
      
  """
  @type create_addon_instance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_traffic_policies_request() :: %{
        optional("NextToken") => String.t(),
        optional("PageSize") => integer()
      }
      
  """
  @type list_traffic_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ingress_analysis() :: %{
        "Analyzer" => String.t(),
        "ResultField" => String.t()
      }
      
  """
  @type ingress_analysis() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_archive_message_content_response() :: %{
        "Body" => message_body()
      }
      
  """
  @type get_archive_message_content_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ingress_point_password_configuration() :: %{
        "PreviousSmtpPasswordExpiryTimestamp" => [non_neg_integer()],
        "PreviousSmtpPasswordVersion" => [String.t()],
        "SmtpPasswordVersion" => [String.t()]
      }
      
  """
  @type ingress_point_password_configuration() :: %{String.t() => any()}

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
      
      get_archive_message_response() :: %{
        "MessageDownloadLink" => String.t()
      }
      
  """
  @type get_archive_message_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_relay_response() :: %{}
      
  """
  @type update_relay_response() :: %{}

  @typedoc """

  ## Example:
      
      rule_dmarc_expression() :: %{
        "Operator" => list(any()),
        "Values" => list(list(any())())
      }
      
  """
  @type rule_dmarc_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      drop_action() :: %{}
      
  """
  @type drop_action() :: %{}

  @typedoc """

  ## Example:
      
      update_rule_set_request() :: %{
        optional("RuleSetName") => String.t(),
        optional("Rules") => list(rule()()),
        required("RuleSetId") => String.t()
      }
      
  """
  @type update_rule_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      addon_instance() :: %{
        "AddonInstanceArn" => String.t(),
        "AddonInstanceId" => String.t(),
        "AddonName" => String.t(),
        "AddonSubscriptionId" => String.t(),
        "CreatedTimestamp" => [non_neg_integer()]
      }
      
  """
  @type addon_instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_archive_search_results_response() :: %{
        "Rows" => list(row()())
      }
      
  """
  @type get_archive_search_results_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_archives_response() :: %{
        "Archives" => list(archive()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_archives_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_archive_search_response() :: %{}
      
  """
  @type stop_archive_search_response() :: %{}

  @typedoc """

  ## Example:
      
      list_ingress_points_request() :: %{
        optional("NextToken") => String.t(),
        optional("PageSize") => integer()
      }
      
  """
  @type list_ingress_points_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_traffic_policy_request() :: %{
        optional("ClientToken") => String.t(),
        optional("MaxMessageSizeBytes") => integer(),
        optional("Tags") => list(tag()()),
        required("DefaultAction") => list(any()),
        required("PolicyStatements") => list(policy_statement()()),
        required("TrafficPolicyName") => String.t()
      }
      
  """
  @type create_traffic_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_addon_instance_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Tags") => list(tag()()),
        required("AddonSubscriptionId") => String.t()
      }
      
  """
  @type create_addon_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_ingress_point_request() :: %{
        optional("IngressPointConfiguration") => list(),
        optional("IngressPointName") => String.t(),
        optional("RuleSetId") => String.t(),
        optional("StatusToUpdate") => list(any()),
        optional("TrafficPolicyId") => String.t(),
        required("IngressPointId") => String.t()
      }
      
  """
  @type update_ingress_point_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      relay_action() :: %{
        "ActionFailurePolicy" => list(any()),
        "MailFrom" => list(any()),
        "Relay" => String.t()
      }
      
  """
  @type relay_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rule_number_expression() :: %{
        "Evaluate" => list(),
        "Operator" => list(any()),
        "Value" => [float()]
      }
      
  """
  @type rule_number_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_status() :: %{
        "CompletionTimestamp" => [non_neg_integer()],
        "ErrorMessage" => String.t(),
        "State" => list(any()),
        "SubmissionTimestamp" => [non_neg_integer()]
      }
      
  """
  @type export_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_archive_search_response() :: %{
        "ArchiveId" => String.t(),
        "Filters" => archive_filters(),
        "FromTimestamp" => [non_neg_integer()],
        "MaxResults" => integer(),
        "Status" => search_status(),
        "ToTimestamp" => [non_neg_integer()]
      }
      
  """
  @type get_archive_search_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      get_relay_response() :: %{
        "Authentication" => list(),
        "CreatedTimestamp" => [non_neg_integer()],
        "LastModifiedTimestamp" => [non_neg_integer()],
        "RelayArn" => String.t(),
        "RelayId" => String.t(),
        "RelayName" => String.t(),
        "ServerName" => String.t(),
        "ServerPort" => integer()
      }
      
  """
  @type get_relay_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_action() :: %{
        "ActionFailurePolicy" => list(any()),
        "RoleArn" => String.t(),
        "S3Bucket" => String.t(),
        "S3Prefix" => String.t(),
        "S3SseKmsKeyId" => String.t()
      }
      
  """
  @type s3_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_addon_subscriptions_response() :: %{
        "AddonSubscriptions" => list(addon_subscription()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_addon_subscriptions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_addon_instance_request() :: %{
        required("AddonInstanceId") => String.t()
      }
      
  """
  @type delete_addon_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_traffic_policy_response() :: %{}
      
  """
  @type update_traffic_policy_response() :: %{}

  @typedoc """

  ## Example:
      
      rule_ip_expression() :: %{
        "Evaluate" => list(),
        "Operator" => list(any()),
        "Values" => list(String.t()())
      }
      
  """
  @type rule_ip_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_archive_export_request() :: %{
        optional("Filters") => archive_filters(),
        optional("MaxResults") => integer(),
        required("ArchiveId") => String.t(),
        required("ExportDestinationConfiguration") => list(),
        required("FromTimestamp") => [non_neg_integer()],
        required("ToTimestamp") => [non_neg_integer()]
      }
      
  """
  @type start_archive_export_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      relay() :: %{
        "LastModifiedTimestamp" => [non_neg_integer()],
        "RelayId" => String.t(),
        "RelayName" => String.t()
      }
      
  """
  @type relay() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_addon_instances_response() :: %{
        "AddonInstances" => list(addon_instance()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_addon_instances_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_traffic_policies_response() :: %{
        "NextToken" => String.t(),
        "TrafficPolicies" => list(traffic_policy()())
      }
      
  """
  @type list_traffic_policies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      message_body() :: %{
        "Html" => [String.t()],
        "MessageMalformed" => [boolean()],
        "Text" => [String.t()]
      }
      
  """
  @type message_body() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_rule_set_response() :: %{}
      
  """
  @type delete_rule_set_response() :: %{}

  @typedoc """

  ## Example:
      
      get_addon_subscription_request() :: %{
        required("AddonSubscriptionId") => String.t()
      }
      
  """
  @type get_addon_subscription_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_archive_search_request() :: %{
        required("SearchId") => String.t()
      }
      
  """
  @type get_archive_search_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_archive_export_response() :: %{
        "ExportId" => String.t()
      }
      
  """
  @type start_archive_export_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_statement() :: %{
        "Action" => list(any()),
        "Conditions" => list(list()())
      }
      
  """
  @type policy_statement() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      traffic_policy() :: %{
        "DefaultAction" => list(any()),
        "TrafficPolicyId" => String.t(),
        "TrafficPolicyName" => String.t()
      }
      
  """
  @type traffic_policy() :: %{String.t() => any()}

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
      
      get_ingress_point_response() :: %{
        "ARecord" => String.t(),
        "CreatedTimestamp" => [non_neg_integer()],
        "IngressPointArn" => String.t(),
        "IngressPointAuthConfiguration" => ingress_point_auth_configuration(),
        "IngressPointId" => String.t(),
        "IngressPointName" => String.t(),
        "LastUpdatedTimestamp" => [non_neg_integer()],
        "RuleSetId" => String.t(),
        "Status" => list(any()),
        "TrafficPolicyId" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type get_ingress_point_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_archive_message_request() :: %{
        required("ArchivedMessageId") => String.t()
      }
      
  """
  @type get_archive_message_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rule_boolean_expression() :: %{
        "Evaluate" => list(),
        "Operator" => list(any())
      }
      
  """
  @type rule_boolean_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_action() :: %{
        "ActionFailurePolicy" => list(any()),
        "RoleArn" => String.t()
      }
      
  """
  @type send_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_rule_set_response() :: %{
        "CreatedDate" => [non_neg_integer()],
        "LastModificationDate" => [non_neg_integer()],
        "RuleSetArn" => String.t(),
        "RuleSetId" => String.t(),
        "RuleSetName" => String.t(),
        "Rules" => list(rule()())
      }
      
  """
  @type get_rule_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deliver_to_mailbox_action() :: %{
        "ActionFailurePolicy" => list(any()),
        "MailboxArn" => String.t(),
        "RoleArn" => String.t()
      }
      
  """
  @type deliver_to_mailbox_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rule_verdict_expression() :: %{
        "Evaluate" => list(),
        "Operator" => list(any()),
        "Values" => list(list(any())())
      }
      
  """
  @type rule_verdict_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_relay_request() :: %{
        required("RelayId") => String.t()
      }
      
  """
  @type get_relay_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_archive_response() :: %{}
      
  """
  @type delete_archive_response() :: %{}

  @typedoc """

  ## Example:
      
      get_addon_instance_response() :: %{
        "AddonInstanceArn" => String.t(),
        "AddonName" => String.t(),
        "AddonSubscriptionId" => String.t(),
        "CreatedTimestamp" => [non_neg_integer()]
      }
      
  """
  @type get_addon_instance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ingress_boolean_expression() :: %{
        "Evaluate" => list(),
        "Operator" => list(any())
      }
      
  """
  @type ingress_boolean_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_summary() :: %{
        "SearchId" => String.t(),
        "Status" => search_status()
      }
      
  """
  @type search_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_archive_request() :: %{
        optional("ClientToken") => String.t(),
        optional("KmsKeyArn") => String.t(),
        optional("Retention") => list(),
        optional("Tags") => list(tag()()),
        required("ArchiveName") => String.t()
      }
      
  """
  @type create_archive_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_archive_request() :: %{
        required("ArchiveId") => String.t()
      }
      
  """
  @type delete_archive_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ingress_point() :: %{
        "ARecord" => String.t(),
        "IngressPointId" => String.t(),
        "IngressPointName" => String.t(),
        "Status" => list(any()),
        "Type" => list(any())
      }
      
  """
  @type ingress_point() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_addon_instance_response() :: %{}
      
  """
  @type delete_addon_instance_response() :: %{}

  @typedoc """

  ## Example:
      
      list_archives_request() :: %{
        optional("NextToken") => String.t(),
        optional("PageSize") => integer()
      }
      
  """
  @type list_archives_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_addon_subscription_response() :: %{
        "AddonSubscriptionId" => String.t()
      }
      
  """
  @type create_addon_subscription_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_archive_response() :: %{
        "ArchiveArn" => String.t(),
        "ArchiveId" => String.t(),
        "ArchiveName" => String.t(),
        "ArchiveState" => list(any()),
        "CreatedTimestamp" => [non_neg_integer()],
        "KmsKeyArn" => String.t(),
        "LastUpdatedTimestamp" => [non_neg_integer()],
        "Retention" => list()
      }
      
  """
  @type get_archive_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_archive_message_content_request() :: %{
        required("ArchivedMessageId") => String.t()
      }
      
  """
  @type get_archive_message_content_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      archive_string_expression() :: %{
        "Evaluate" => list(),
        "Operator" => list(any()),
        "Values" => list([String.t()]())
      }
      
  """
  @type archive_string_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ingress_ipv4_expression() :: %{
        "Evaluate" => list(),
        "Operator" => list(any()),
        "Values" => list(String.t()())
      }
      
  """
  @type ingress_ipv4_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_relays_response() :: %{
        "NextToken" => String.t(),
        "Relays" => list(relay()())
      }
      
  """
  @type list_relays_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_rule_set_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Tags") => list(tag()()),
        required("RuleSetName") => String.t(),
        required("Rules") => list(rule()())
      }
      
  """
  @type create_rule_set_request() :: %{String.t() => any()}

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
      
      list_addon_subscriptions_request() :: %{
        optional("NextToken") => String.t(),
        optional("PageSize") => integer()
      }
      
  """
  @type list_addon_subscriptions_request() :: %{String.t() => any()}

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
      
      archive_action() :: %{
        "ActionFailurePolicy" => list(any()),
        "TargetArchive" => String.t()
      }
      
  """
  @type archive_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_archive_search_request() :: %{
        required("SearchId") => String.t()
      }
      
  """
  @type stop_archive_search_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      row() :: %{
        "ArchivedMessageId" => String.t(),
        "Cc" => [String.t()],
        "Date" => [String.t()],
        "From" => [String.t()],
        "HasAttachments" => [boolean()],
        "InReplyTo" => [String.t()],
        "MessageId" => [String.t()],
        "ReceivedHeaders" => list([String.t()]()),
        "ReceivedTimestamp" => [non_neg_integer()],
        "Subject" => [String.t()],
        "To" => [String.t()],
        "XMailer" => [String.t()],
        "XOriginalMailer" => [String.t()],
        "XPriority" => [String.t()]
      }
      
  """
  @type row() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_relay_response() :: %{
        "RelayId" => String.t()
      }
      
  """
  @type create_relay_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_ingress_point_request() :: %{
        required("IngressPointId") => String.t()
      }
      
  """
  @type delete_ingress_point_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_rule_set_response() :: %{
        "RuleSetId" => String.t()
      }
      
  """
  @type create_rule_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_traffic_policy_response() :: %{
        "TrafficPolicyId" => String.t()
      }
      
  """
  @type create_traffic_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_summary() :: %{
        "ExportId" => String.t(),
        "Status" => export_status()
      }
      
  """
  @type export_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_traffic_policy_request() :: %{
        optional("DefaultAction") => list(any()),
        optional("MaxMessageSizeBytes") => integer(),
        optional("PolicyStatements") => list(policy_statement()()),
        optional("TrafficPolicyName") => String.t(),
        required("TrafficPolicyId") => String.t()
      }
      
  """
  @type update_traffic_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_rule_set_response() :: %{}
      
  """
  @type update_rule_set_response() :: %{}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_ingress_point_response() :: %{}
      
  """
  @type update_ingress_point_response() :: %{}

  @typedoc """

  ## Example:
      
      create_ingress_point_response() :: %{
        "IngressPointId" => String.t()
      }
      
  """
  @type create_ingress_point_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_relay_request() :: %{
        optional("Authentication") => list(),
        optional("RelayName") => String.t(),
        optional("ServerName") => String.t(),
        optional("ServerPort") => integer(),
        required("RelayId") => String.t()
      }
      
  """
  @type update_relay_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_addon_instance_request() :: %{
        required("AddonInstanceId") => String.t()
      }
      
  """
  @type get_addon_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rule_set() :: %{
        "LastModificationDate" => [non_neg_integer()],
        "RuleSetId" => String.t(),
        "RuleSetName" => String.t()
      }
      
  """
  @type rule_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rule() :: %{
        "Actions" => list(list()()),
        "Conditions" => list(list()()),
        "Name" => String.t(),
        "Unless" => list(list()())
      }
      
  """
  @type rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_rule_sets_response() :: %{
        "NextToken" => String.t(),
        "RuleSets" => list(rule_set()())
      }
      
  """
  @type list_rule_sets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_traffic_policy_response() :: %{}
      
  """
  @type delete_traffic_policy_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_addon_subscription_response() :: %{}
      
  """
  @type delete_addon_subscription_response() :: %{}

  @typedoc """

  ## Example:
      
      list_archive_searches_request() :: %{
        optional("NextToken") => String.t(),
        optional("PageSize") => integer(),
        required("ArchiveId") => String.t()
      }
      
  """
  @type list_archive_searches_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_archive_searches_response() :: %{
        "NextToken" => String.t(),
        "Searches" => list(search_summary()())
      }
      
  """
  @type list_archive_searches_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      analysis() :: %{
        "Analyzer" => String.t(),
        "ResultField" => String.t()
      }
      
  """
  @type analysis() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_addon_subscription_request() :: %{
        required("AddonSubscriptionId") => String.t()
      }
      
  """
  @type delete_addon_subscription_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      archive_boolean_expression() :: %{
        "Evaluate" => list(),
        "Operator" => list(any())
      }
      
  """
  @type archive_boolean_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_rule_sets_request() :: %{
        optional("NextToken") => String.t(),
        optional("PageSize") => integer()
      }
      
  """
  @type list_rule_sets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_archive_export_request() :: %{
        required("ExportId") => String.t()
      }
      
  """
  @type stop_archive_export_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_traffic_policy_response() :: %{
        "CreatedTimestamp" => [non_neg_integer()],
        "DefaultAction" => list(any()),
        "LastUpdatedTimestamp" => [non_neg_integer()],
        "MaxMessageSizeBytes" => integer(),
        "PolicyStatements" => list(policy_statement()()),
        "TrafficPolicyArn" => String.t(),
        "TrafficPolicyId" => String.t(),
        "TrafficPolicyName" => String.t()
      }
      
  """
  @type get_traffic_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ingress_tls_protocol_expression() :: %{
        "Evaluate" => list(),
        "Operator" => list(any()),
        "Value" => list(any())
      }
      
  """
  @type ingress_tls_protocol_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_ingress_point_response() :: %{}
      
  """
  @type delete_ingress_point_response() :: %{}

  @typedoc """

  ## Example:
      
      no_authentication() :: %{}
      
  """
  @type no_authentication() :: %{}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_archive_request() :: %{
        required("ArchiveId") => String.t()
      }
      
  """
  @type get_archive_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_relay_response() :: %{}
      
  """
  @type delete_relay_response() :: %{}

  @typedoc """

  ## Example:
      
      addon_subscription() :: %{
        "AddonName" => String.t(),
        "AddonSubscriptionArn" => String.t(),
        "AddonSubscriptionId" => String.t(),
        "CreatedTimestamp" => [non_neg_integer()]
      }
      
  """
  @type addon_subscription() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_relay_request() :: %{
        required("RelayId") => String.t()
      }
      
  """
  @type delete_relay_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replace_recipient_action() :: %{
        "ReplaceWith" => list(String.t()())
      }
      
  """
  @type replace_recipient_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceArn") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_archive_search_request() :: %{
        optional("Filters") => archive_filters(),
        required("ArchiveId") => String.t(),
        required("FromTimestamp") => [non_neg_integer()],
        required("MaxResults") => integer(),
        required("ToTimestamp") => [non_neg_integer()]
      }
      
  """
  @type start_archive_search_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_archive_export_response() :: %{
        "ArchiveId" => String.t(),
        "ExportDestinationConfiguration" => list(),
        "Filters" => archive_filters(),
        "FromTimestamp" => [non_neg_integer()],
        "MaxResults" => integer(),
        "Status" => export_status(),
        "ToTimestamp" => [non_neg_integer()]
      }
      
  """
  @type get_archive_export_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_ingress_points_response() :: %{
        "IngressPoints" => list(ingress_point()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_ingress_points_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_archive_response() :: %{
        "ArchiveId" => String.t()
      }
      
  """
  @type create_archive_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_ingress_point_request() :: %{
        optional("ClientToken") => String.t(),
        optional("IngressPointConfiguration") => list(),
        optional("Tags") => list(tag()()),
        required("IngressPointName") => String.t(),
        required("RuleSetId") => String.t(),
        required("TrafficPolicyId") => String.t(),
        required("Type") => list(any())
      }
      
  """
  @type create_ingress_point_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_relays_request() :: %{
        optional("NextToken") => String.t(),
        optional("PageSize") => [integer()]
      }
      
  """
  @type list_relays_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ingress_string_expression() :: %{
        "Evaluate" => list(),
        "Operator" => list(any()),
        "Values" => list([String.t()]())
      }
      
  """
  @type ingress_string_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_rule_set_request() :: %{
        required("RuleSetId") => String.t()
      }
      
  """
  @type get_rule_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_addon_subscription_response() :: %{
        "AddonName" => String.t(),
        "AddonSubscriptionArn" => String.t(),
        "CreatedTimestamp" => [non_neg_integer()]
      }
      
  """
  @type get_addon_subscription_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      archive() :: %{
        "ArchiveId" => String.t(),
        "ArchiveName" => String.t(),
        "ArchiveState" => list(any()),
        "LastUpdatedTimestamp" => [non_neg_integer()]
      }
      
  """
  @type archive() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_archive_request() :: %{
        optional("ArchiveName") => String.t(),
        optional("Retention") => list(),
        required("ArchiveId") => String.t()
      }
      
  """
  @type update_archive_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_traffic_policy_request() :: %{
        required("TrafficPolicyId") => String.t()
      }
      
  """
  @type delete_traffic_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_archive_export_response() :: %{}
      
  """
  @type stop_archive_export_response() :: %{}

  @typedoc """

  ## Example:
      
      get_traffic_policy_request() :: %{
        required("TrafficPolicyId") => String.t()
      }
      
  """
  @type get_traffic_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_rule_set_request() :: %{
        required("RuleSetId") => String.t()
      }
      
  """
  @type delete_rule_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_addon_subscription_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Tags") => list(tag()()),
        required("AddonName") => String.t()
      }
      
  """
  @type create_addon_subscription_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_archive_exports_response() :: %{
        "Exports" => list(export_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_archive_exports_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_archive_exports_request() :: %{
        optional("NextToken") => String.t(),
        optional("PageSize") => integer(),
        required("ArchiveId") => String.t()
      }
      
  """
  @type list_archive_exports_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_archive_search_results_request() :: %{
        required("SearchId") => String.t()
      }
      
  """
  @type get_archive_search_results_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_archive_export_request() :: %{
        required("ExportId") => String.t()
      }
      
  """
  @type get_archive_export_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_archive_response() :: %{}
      
  """
  @type update_archive_response() :: %{}

  @typedoc """

  ## Example:
      
      search_status() :: %{
        "CompletionTimestamp" => [non_neg_integer()],
        "ErrorMessage" => String.t(),
        "State" => list(any()),
        "SubmissionTimestamp" => [non_neg_integer()]
      }
      
  """
  @type search_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ingress_point_auth_configuration() :: %{
        "IngressPointPasswordConfiguration" => ingress_point_password_configuration(),
        "SecretArn" => String.t()
      }
      
  """
  @type ingress_point_auth_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_archive_search_response() :: %{
        "SearchId" => String.t()
      }
      
  """
  @type start_archive_search_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_ingress_point_request() :: %{
        required("IngressPointId") => String.t()
      }
      
  """
  @type get_ingress_point_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_addon_instances_request() :: %{
        optional("NextToken") => String.t(),
        optional("PageSize") => integer()
      }
      
  """
  @type list_addon_instances_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_export_destination_configuration() :: %{
        "S3Location" => String.t()
      }
      
  """
  @type s3_export_destination_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rule_string_expression() :: %{
        "Evaluate" => list(),
        "Operator" => list(any()),
        "Values" => list(String.t()())
      }
      
  """
  @type rule_string_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_relay_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Tags") => list(tag()()),
        required("Authentication") => list(),
        required("RelayName") => String.t(),
        required("ServerName") => String.t(),
        required("ServerPort") => integer()
      }
      
  """
  @type create_relay_request() :: %{String.t() => any()}

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
      
      archive_filters() :: %{
        "Include" => list(list()()),
        "Unless" => list(list()())
      }
      
  """
  @type archive_filters() :: %{String.t() => any()}

  @type create_addon_instance_errors() ::
          validation_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_addon_subscription_errors() ::
          validation_exception() | service_quota_exceeded_exception() | conflict_exception()

  @type create_archive_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_ingress_point_errors() ::
          validation_exception() | service_quota_exceeded_exception() | conflict_exception()

  @type create_relay_errors() ::
          validation_exception() | service_quota_exceeded_exception() | conflict_exception()

  @type create_rule_set_errors() ::
          validation_exception() | service_quota_exceeded_exception() | conflict_exception()

  @type create_traffic_policy_errors() ::
          validation_exception() | service_quota_exceeded_exception() | conflict_exception()

  @type delete_addon_instance_errors() :: validation_exception() | conflict_exception()

  @type delete_addon_subscription_errors() :: validation_exception() | conflict_exception()

  @type delete_archive_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | conflict_exception()

  @type delete_ingress_point_errors() ::
          validation_exception() | resource_not_found_exception() | conflict_exception()

  @type delete_relay_errors() ::
          validation_exception() | resource_not_found_exception() | conflict_exception()

  @type delete_rule_set_errors() :: validation_exception() | conflict_exception()

  @type delete_traffic_policy_errors() ::
          validation_exception() | resource_not_found_exception() | conflict_exception()

  @type get_addon_instance_errors() :: validation_exception() | resource_not_found_exception()

  @type get_addon_subscription_errors() :: validation_exception() | resource_not_found_exception()

  @type get_archive_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_archive_export_errors() ::
          throttling_exception() | validation_exception() | access_denied_exception()

  @type get_archive_message_errors() ::
          throttling_exception() | validation_exception() | access_denied_exception()

  @type get_archive_message_content_errors() ::
          throttling_exception() | validation_exception() | access_denied_exception()

  @type get_archive_search_errors() ::
          throttling_exception() | validation_exception() | access_denied_exception()

  @type get_archive_search_results_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | conflict_exception()

  @type get_ingress_point_errors() :: validation_exception() | resource_not_found_exception()

  @type get_relay_errors() :: validation_exception() | resource_not_found_exception()

  @type get_rule_set_errors() :: validation_exception() | resource_not_found_exception()

  @type get_traffic_policy_errors() :: validation_exception() | resource_not_found_exception()

  @type list_addon_instances_errors() :: validation_exception()

  @type list_addon_subscriptions_errors() :: validation_exception()

  @type list_archive_exports_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_archive_searches_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_archives_errors() ::
          throttling_exception() | validation_exception() | access_denied_exception()

  @type list_ingress_points_errors() :: validation_exception()

  @type list_relays_errors() :: validation_exception()

  @type list_rule_sets_errors() :: validation_exception()

  @type list_tags_for_resource_errors() :: validation_exception() | resource_not_found_exception()

  @type list_traffic_policies_errors() :: validation_exception()

  @type start_archive_export_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type start_archive_search_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type stop_archive_export_errors() ::
          throttling_exception() | validation_exception() | access_denied_exception()

  @type stop_archive_search_errors() ::
          throttling_exception() | validation_exception() | access_denied_exception()

  @type tag_resource_errors() ::
          validation_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type untag_resource_errors() ::
          validation_exception() | resource_not_found_exception() | conflict_exception()

  @type update_archive_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_ingress_point_errors() ::
          validation_exception() | resource_not_found_exception() | conflict_exception()

  @type update_relay_errors() ::
          validation_exception() | resource_not_found_exception() | conflict_exception()

  @type update_rule_set_errors() ::
          validation_exception() | resource_not_found_exception() | conflict_exception()

  @type update_traffic_policy_errors() ::
          validation_exception() | resource_not_found_exception() | conflict_exception()

  def metadata do
    %{
      api_version: "2023-10-17",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "mail-manager",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "MailManager",
      signature_version: "v4",
      signing_name: "mail-manager",
      target_prefix: "MailManagerSvc"
    }
  end

  @doc """
  Creates an Add On instance for the subscription indicated in the request.

  The
  resulting Amazon Resource Name (ARN) can be used in a conditional statement for
  a rule set or traffic policy.
  """
  @spec create_addon_instance(AWS.Client.t(), create_addon_instance_request(), Keyword.t()) ::
          {:ok, create_addon_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_addon_instance_errors()}
  def create_addon_instance(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateAddonInstance", input, options)
  end

  @doc """
  Creates a subscription for an Add On representing the acceptance of its terms of
  use
  and additional pricing.

  The subscription can then be used to create an instance for use
  in rule sets or traffic policies.
  """
  @spec create_addon_subscription(
          AWS.Client.t(),
          create_addon_subscription_request(),
          Keyword.t()
        ) ::
          {:ok, create_addon_subscription_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_addon_subscription_errors()}
  def create_addon_subscription(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateAddonSubscription", input, options)
  end

  @doc """
  Creates a new email archive resource for storing and retaining emails.
  """
  @spec create_archive(AWS.Client.t(), create_archive_request(), Keyword.t()) ::
          {:ok, create_archive_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_archive_errors()}
  def create_archive(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateArchive", input, options)
  end

  @doc """
  Provision a new ingress endpoint resource.
  """
  @spec create_ingress_point(AWS.Client.t(), create_ingress_point_request(), Keyword.t()) ::
          {:ok, create_ingress_point_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_ingress_point_errors()}
  def create_ingress_point(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateIngressPoint", input, options)
  end

  @doc """
  Creates a relay resource which can be used in rules to relay incoming emails to
  defined relay destinations.
  """
  @spec create_relay(AWS.Client.t(), create_relay_request(), Keyword.t()) ::
          {:ok, create_relay_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_relay_errors()}
  def create_relay(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateRelay", input, options)
  end

  @doc """
  Provision a new rule set.
  """
  @spec create_rule_set(AWS.Client.t(), create_rule_set_request(), Keyword.t()) ::
          {:ok, create_rule_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_rule_set_errors()}
  def create_rule_set(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateRuleSet", input, options)
  end

  @doc """
  Provision a new traffic policy resource.
  """
  @spec create_traffic_policy(AWS.Client.t(), create_traffic_policy_request(), Keyword.t()) ::
          {:ok, create_traffic_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_traffic_policy_errors()}
  def create_traffic_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateTrafficPolicy", input, options)
  end

  @doc """
  Deletes an Add On instance.
  """
  @spec delete_addon_instance(AWS.Client.t(), delete_addon_instance_request(), Keyword.t()) ::
          {:ok, delete_addon_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_addon_instance_errors()}
  def delete_addon_instance(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteAddonInstance", input, options)
  end

  @doc """
  Deletes an Add On subscription.
  """
  @spec delete_addon_subscription(
          AWS.Client.t(),
          delete_addon_subscription_request(),
          Keyword.t()
        ) ::
          {:ok, delete_addon_subscription_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_addon_subscription_errors()}
  def delete_addon_subscription(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteAddonSubscription", input, options)
  end

  @doc """
  Initiates deletion of an email archive.

  This changes the archive state to pending
  deletion. In this state, no new emails can be added, and existing archived
  emails become
  inaccessible (search, export, download). The archive and all of its contents
  will be
  permanently deleted 30 days after entering the pending deletion state,
  regardless of the
  configured retention period.
  """
  @spec delete_archive(AWS.Client.t(), delete_archive_request(), Keyword.t()) ::
          {:ok, delete_archive_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_archive_errors()}
  def delete_archive(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteArchive", input, options)
  end

  @doc """
  Delete an ingress endpoint resource.
  """
  @spec delete_ingress_point(AWS.Client.t(), delete_ingress_point_request(), Keyword.t()) ::
          {:ok, delete_ingress_point_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_ingress_point_errors()}
  def delete_ingress_point(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteIngressPoint", input, options)
  end

  @doc """
  Deletes an existing relay resource.
  """
  @spec delete_relay(AWS.Client.t(), delete_relay_request(), Keyword.t()) ::
          {:ok, delete_relay_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_relay_errors()}
  def delete_relay(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteRelay", input, options)
  end

  @doc """
  Delete a rule set.
  """
  @spec delete_rule_set(AWS.Client.t(), delete_rule_set_request(), Keyword.t()) ::
          {:ok, delete_rule_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_rule_set_errors()}
  def delete_rule_set(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteRuleSet", input, options)
  end

  @doc """
  Delete a traffic policy resource.
  """
  @spec delete_traffic_policy(AWS.Client.t(), delete_traffic_policy_request(), Keyword.t()) ::
          {:ok, delete_traffic_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_traffic_policy_errors()}
  def delete_traffic_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteTrafficPolicy", input, options)
  end

  @doc """
  Gets detailed information about an Add On instance.
  """
  @spec get_addon_instance(AWS.Client.t(), get_addon_instance_request(), Keyword.t()) ::
          {:ok, get_addon_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_addon_instance_errors()}
  def get_addon_instance(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetAddonInstance", input, options)
  end

  @doc """
  Gets detailed information about an Add On subscription.
  """
  @spec get_addon_subscription(AWS.Client.t(), get_addon_subscription_request(), Keyword.t()) ::
          {:ok, get_addon_subscription_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_addon_subscription_errors()}
  def get_addon_subscription(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetAddonSubscription", input, options)
  end

  @doc """
  Retrieves the full details and current state of a specified email archive.
  """
  @spec get_archive(AWS.Client.t(), get_archive_request(), Keyword.t()) ::
          {:ok, get_archive_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_archive_errors()}
  def get_archive(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetArchive", input, options)
  end

  @doc """
  Retrieves the details and current status of a specific email archive export job.
  """
  @spec get_archive_export(AWS.Client.t(), get_archive_export_request(), Keyword.t()) ::
          {:ok, get_archive_export_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_archive_export_errors()}
  def get_archive_export(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetArchiveExport", input, options)
  end

  @doc """
  Returns a pre-signed URL that provides temporary download access to the specific
  email message stored in
  the archive.
  """
  @spec get_archive_message(AWS.Client.t(), get_archive_message_request(), Keyword.t()) ::
          {:ok, get_archive_message_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_archive_message_errors()}
  def get_archive_message(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetArchiveMessage", input, options)
  end

  @doc """
  Returns the textual content of a specific email message stored in the archive.

  Attachments are not
  included.
  """
  @spec get_archive_message_content(
          AWS.Client.t(),
          get_archive_message_content_request(),
          Keyword.t()
        ) ::
          {:ok, get_archive_message_content_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_archive_message_content_errors()}
  def get_archive_message_content(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetArchiveMessageContent", input, options)
  end

  @doc """
  Retrieves the details and current status of a specific email archive search job.
  """
  @spec get_archive_search(AWS.Client.t(), get_archive_search_request(), Keyword.t()) ::
          {:ok, get_archive_search_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_archive_search_errors()}
  def get_archive_search(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetArchiveSearch", input, options)
  end

  @doc """
  Returns the results of a completed email archive search job.
  """
  @spec get_archive_search_results(
          AWS.Client.t(),
          get_archive_search_results_request(),
          Keyword.t()
        ) ::
          {:ok, get_archive_search_results_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_archive_search_results_errors()}
  def get_archive_search_results(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetArchiveSearchResults", input, options)
  end

  @doc """
  Fetch ingress endpoint resource attributes.
  """
  @spec get_ingress_point(AWS.Client.t(), get_ingress_point_request(), Keyword.t()) ::
          {:ok, get_ingress_point_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_ingress_point_errors()}
  def get_ingress_point(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetIngressPoint", input, options)
  end

  @doc """
  Fetch the relay resource and it's attributes.
  """
  @spec get_relay(AWS.Client.t(), get_relay_request(), Keyword.t()) ::
          {:ok, get_relay_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_relay_errors()}
  def get_relay(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetRelay", input, options)
  end

  @doc """
  Fetch attributes of a rule set.
  """
  @spec get_rule_set(AWS.Client.t(), get_rule_set_request(), Keyword.t()) ::
          {:ok, get_rule_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_rule_set_errors()}
  def get_rule_set(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetRuleSet", input, options)
  end

  @doc """
  Fetch attributes of a traffic policy resource.
  """
  @spec get_traffic_policy(AWS.Client.t(), get_traffic_policy_request(), Keyword.t()) ::
          {:ok, get_traffic_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_traffic_policy_errors()}
  def get_traffic_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetTrafficPolicy", input, options)
  end

  @doc """
  Lists all Add On instances in your account.
  """
  @spec list_addon_instances(AWS.Client.t(), list_addon_instances_request(), Keyword.t()) ::
          {:ok, list_addon_instances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_addon_instances_errors()}
  def list_addon_instances(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAddonInstances", input, options)
  end

  @doc """
  Lists all Add On subscriptions in your account.
  """
  @spec list_addon_subscriptions(AWS.Client.t(), list_addon_subscriptions_request(), Keyword.t()) ::
          {:ok, list_addon_subscriptions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_addon_subscriptions_errors()}
  def list_addon_subscriptions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAddonSubscriptions", input, options)
  end

  @doc """
  Returns a list of email archive export jobs.
  """
  @spec list_archive_exports(AWS.Client.t(), list_archive_exports_request(), Keyword.t()) ::
          {:ok, list_archive_exports_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_archive_exports_errors()}
  def list_archive_exports(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListArchiveExports", input, options)
  end

  @doc """
  Returns a list of email archive search jobs.
  """
  @spec list_archive_searches(AWS.Client.t(), list_archive_searches_request(), Keyword.t()) ::
          {:ok, list_archive_searches_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_archive_searches_errors()}
  def list_archive_searches(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListArchiveSearches", input, options)
  end

  @doc """
  Returns a list of all email archives in your account.
  """
  @spec list_archives(AWS.Client.t(), list_archives_request(), Keyword.t()) ::
          {:ok, list_archives_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_archives_errors()}
  def list_archives(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListArchives", input, options)
  end

  @doc """
  List all ingress endpoint resources.
  """
  @spec list_ingress_points(AWS.Client.t(), list_ingress_points_request(), Keyword.t()) ::
          {:ok, list_ingress_points_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_ingress_points_errors()}
  def list_ingress_points(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListIngressPoints", input, options)
  end

  @doc """
  Lists all the existing relay resources.
  """
  @spec list_relays(AWS.Client.t(), list_relays_request(), Keyword.t()) ::
          {:ok, list_relays_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_relays_errors()}
  def list_relays(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListRelays", input, options)
  end

  @doc """
  List rule sets for this account.
  """
  @spec list_rule_sets(AWS.Client.t(), list_rule_sets_request(), Keyword.t()) ::
          {:ok, list_rule_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_rule_sets_errors()}
  def list_rule_sets(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListRuleSets", input, options)
  end

  @doc """
  Retrieves the list of tags (keys and values) assigned to the resource.
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
  List traffic policy resources.
  """
  @spec list_traffic_policies(AWS.Client.t(), list_traffic_policies_request(), Keyword.t()) ::
          {:ok, list_traffic_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_traffic_policies_errors()}
  def list_traffic_policies(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTrafficPolicies", input, options)
  end

  @doc """
  Initiates an export of emails from the specified archive.
  """
  @spec start_archive_export(AWS.Client.t(), start_archive_export_request(), Keyword.t()) ::
          {:ok, start_archive_export_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_archive_export_errors()}
  def start_archive_export(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartArchiveExport", input, options)
  end

  @doc """
  Initiates a search across emails in the specified archive.
  """
  @spec start_archive_search(AWS.Client.t(), start_archive_search_request(), Keyword.t()) ::
          {:ok, start_archive_search_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_archive_search_errors()}
  def start_archive_search(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartArchiveSearch", input, options)
  end

  @doc """
  Stops an in-progress export of emails from an archive.
  """
  @spec stop_archive_export(AWS.Client.t(), stop_archive_export_request(), Keyword.t()) ::
          {:ok, stop_archive_export_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_archive_export_errors()}
  def stop_archive_export(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopArchiveExport", input, options)
  end

  @doc """
  Stops an in-progress archive search job.
  """
  @spec stop_archive_search(AWS.Client.t(), stop_archive_search_request(), Keyword.t()) ::
          {:ok, stop_archive_search_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_archive_search_errors()}
  def stop_archive_search(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopArchiveSearch", input, options)
  end

  @doc """
  Adds one or more tags (keys and values) to a specified resource.
  """
  @spec tag_resource(AWS.Client.t(), tag_resource_request(), Keyword.t()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Remove one or more tags (keys and values) from a specified resource.
  """
  @spec untag_resource(AWS.Client.t(), untag_resource_request(), Keyword.t()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates the attributes of an existing email archive.
  """
  @spec update_archive(AWS.Client.t(), update_archive_request(), Keyword.t()) ::
          {:ok, update_archive_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_archive_errors()}
  def update_archive(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateArchive", input, options)
  end

  @doc """
  Update attributes of a provisioned ingress endpoint resource.
  """
  @spec update_ingress_point(AWS.Client.t(), update_ingress_point_request(), Keyword.t()) ::
          {:ok, update_ingress_point_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_ingress_point_errors()}
  def update_ingress_point(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateIngressPoint", input, options)
  end

  @doc """
  Updates the attributes of an existing relay resource.
  """
  @spec update_relay(AWS.Client.t(), update_relay_request(), Keyword.t()) ::
          {:ok, update_relay_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_relay_errors()}
  def update_relay(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateRelay", input, options)
  end

  @doc """
  >Update attributes of an already provisioned rule set.
  """
  @spec update_rule_set(AWS.Client.t(), update_rule_set_request(), Keyword.t()) ::
          {:ok, update_rule_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_rule_set_errors()}
  def update_rule_set(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateRuleSet", input, options)
  end

  @doc """
  Update attributes of an already provisioned traffic policy resource.
  """
  @spec update_traffic_policy(AWS.Client.t(), update_traffic_policy_request(), Keyword.t()) ::
          {:ok, update_traffic_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_traffic_policy_errors()}
  def update_traffic_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateTrafficPolicy", input, options)
  end
end
