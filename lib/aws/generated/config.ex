# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Config do
  @moduledoc """
  Config
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      organization_conformance_pack_template_validation_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type organization_conformance_pack_template_validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_config_rules_evaluation_response() :: %{}
      
  """
  @type start_config_rules_evaluation_response() :: %{}

  @typedoc """

  ## Example:
      
      describe_configuration_recorder_status_response() :: %{
        "ConfigurationRecordersStatus" => list(configuration_recorder_status()())
      }
      
  """
  @type describe_configuration_recorder_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_organization_config_rule_detailed_status_request() :: %{
        optional("Filters") => status_detail_filters(),
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        required("OrganizationConfigRuleName") => String.t()
      }
      
  """
  @type get_organization_config_rule_detailed_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      config_snapshot_delivery_properties() :: %{
        "deliveryFrequency" => list(any())
      }
      
  """
  @type config_snapshot_delivery_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_recording_group_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_recording_group_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_configuration_aggregator_request() :: %{
        required("ConfigurationAggregatorName") => String.t()
      }
      
  """
  @type delete_configuration_aggregator_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_all_features_not_enabled_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type organization_all_features_not_enabled_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluation_result_identifier() :: %{
        "EvaluationResultQualifier" => evaluation_result_qualifier(),
        "OrderingTimestamp" => non_neg_integer(),
        "ResourceEvaluationId" => String.t()
      }
      
  """
  @type evaluation_result_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remediation_configuration() :: %{
        "Arn" => String.t(),
        "Automatic" => boolean(),
        "ConfigRuleName" => String.t(),
        "CreatedByService" => String.t(),
        "ExecutionControls" => execution_controls(),
        "MaximumAutomaticAttempts" => integer(),
        "Parameters" => map(),
        "ResourceType" => String.t(),
        "RetryAttemptSeconds" => float(),
        "TargetId" => String.t(),
        "TargetType" => list(any()),
        "TargetVersion" => String.t()
      }
      
  """
  @type remediation_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aggregated_source_status() :: %{
        "AwsRegion" => String.t(),
        "LastErrorCode" => String.t(),
        "LastErrorMessage" => String.t(),
        "LastUpdateStatus" => list(any()),
        "LastUpdateTime" => non_neg_integer(),
        "SourceId" => String.t(),
        "SourceType" => list(any())
      }
      
  """
  @type aggregated_source_status() :: %{String.t() => any()}

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
      
      get_custom_rule_policy_response() :: %{
        "PolicyText" => String.t()
      }
      
  """
  @type get_custom_rule_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      no_such_configuration_aggregator_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type no_such_configuration_aggregator_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_aggregate_conformance_pack_compliance_summary_response() :: %{
        "AggregateConformancePackComplianceSummaries" => list(aggregate_conformance_pack_compliance_summary()()),
        "GroupByKey" => String.t(),
        "NextToken" => String.t()
      }
      
  """
  @type get_aggregate_conformance_pack_compliance_summary_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_compliance_details_by_resource_response() :: %{
        "EvaluationResults" => list(evaluation_result()()),
        "NextToken" => String.t()
      }
      
  """
  @type get_compliance_details_by_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      last_delivery_channel_delete_failed_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type last_delivery_channel_delete_failed_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_stored_query_response() :: %{
        "StoredQuery" => stored_query()
      }
      
  """
  @type get_stored_query_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_aggregate_discovered_resource_counts_response() :: %{
        "GroupByKey" => String.t(),
        "GroupedResourceCounts" => list(grouped_resource_count()()),
        "NextToken" => String.t(),
        "TotalDiscoveredResources" => float()
      }
      
  """
  @type get_aggregate_discovered_resource_counts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_evaluation_results_request() :: %{
        required("ConfigRuleName") => String.t()
      }
      
  """
  @type delete_evaluation_results_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_remediation_configuration_response() :: %{}
      
  """
  @type delete_remediation_configuration_response() :: %{}

  @typedoc """

  ## Example:
      
      insufficient_permissions_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type insufficient_permissions_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_config_rule_evaluation_status_request() :: %{
        optional("ConfigRuleNames") => list(String.t()()),
        optional("Limit") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_config_rule_evaluation_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      grouped_resource_count() :: %{
        "GroupName" => String.t(),
        "ResourceCount" => float()
      }
      
  """
  @type grouped_resource_count() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_remediation_configuration_request() :: %{
        optional("ResourceType") => String.t(),
        required("ConfigRuleName") => String.t()
      }
      
  """
  @type delete_remediation_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      config_rule_evaluation_status() :: %{
        "ConfigRuleArn" => String.t(),
        "ConfigRuleId" => String.t(),
        "ConfigRuleName" => String.t(),
        "FirstActivatedTime" => non_neg_integer(),
        "FirstEvaluationStarted" => boolean(),
        "LastDeactivatedTime" => non_neg_integer(),
        "LastDebugLogDeliveryStatus" => String.t(),
        "LastDebugLogDeliveryStatusReason" => String.t(),
        "LastDebugLogDeliveryTime" => non_neg_integer(),
        "LastErrorCode" => String.t(),
        "LastErrorMessage" => String.t(),
        "LastFailedEvaluationTime" => non_neg_integer(),
        "LastFailedInvocationTime" => non_neg_integer(),
        "LastSuccessfulEvaluationTime" => non_neg_integer(),
        "LastSuccessfulInvocationTime" => non_neg_integer()
      }
      
  """
  @type config_rule_evaluation_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      config_rule() :: %{
        "ConfigRuleArn" => String.t(),
        "ConfigRuleId" => String.t(),
        "ConfigRuleName" => String.t(),
        "ConfigRuleState" => list(any()),
        "CreatedBy" => String.t(),
        "Description" => String.t(),
        "EvaluationModes" => list(evaluation_mode_configuration()()),
        "InputParameters" => String.t(),
        "MaximumExecutionFrequency" => list(any()),
        "Scope" => scope(),
        "Source" => source()
      }
      
  """
  @type config_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      max_number_of_delivery_channels_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type max_number_of_delivery_channels_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_config_rule_request() :: %{
        optional("Tags") => list(tag()()),
        required("ConfigRule") => config_rule()
      }
      
  """
  @type put_config_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      insufficient_delivery_policy_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type insufficient_delivery_policy_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_retention_configurations_response() :: %{
        "NextToken" => String.t(),
        "RetentionConfigurations" => list(retention_configuration()())
      }
      
  """
  @type describe_retention_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      configuration_aggregator() :: %{
        "AccountAggregationSources" => list(account_aggregation_source()()),
        "ConfigurationAggregatorArn" => String.t(),
        "ConfigurationAggregatorName" => String.t(),
        "CreatedBy" => String.t(),
        "CreationTime" => non_neg_integer(),
        "LastUpdatedTime" => non_neg_integer(),
        "OrganizationAggregationSource" => organization_aggregation_source()
      }
      
  """
  @type configuration_aggregator() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compliance() :: %{
        "ComplianceContributorCount" => compliance_contributor_count(),
        "ComplianceType" => list(any())
      }
      
  """
  @type compliance() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remediation_exception() :: %{
        "ConfigRuleName" => String.t(),
        "ExpirationTime" => non_neg_integer(),
        "Message" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => String.t()
      }
      
  """
  @type remediation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_compliance_by_resource_request() :: %{
        optional("ComplianceTypes") => list(list(any())()),
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        optional("ResourceId") => String.t(),
        optional("ResourceType") => String.t()
      }
      
  """
  @type describe_compliance_by_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_in_use_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      configuration_recorder() :: %{
        "name" => String.t(),
        "recordingGroup" => recording_group(),
        "recordingMode" => recording_mode(),
        "roleARN" => String.t()
      }
      
  """
  @type configuration_recorder() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_evaluation_filters() :: %{
        "EvaluationContextIdentifier" => String.t(),
        "EvaluationMode" => list(any()),
        "TimeWindow" => time_window()
      }
      
  """
  @type resource_evaluation_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_policy_details() :: %{
        "EnableDebugLogDelivery" => boolean(),
        "PolicyRuntime" => String.t(),
        "PolicyText" => String.t()
      }
      
  """
  @type custom_policy_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_conformance_pack_compliance_summary_response() :: %{
        "ConformancePackComplianceSummaryList" => list(conformance_pack_compliance_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type get_conformance_pack_compliance_summary_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      oversized_configuration_item_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type oversized_configuration_item_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      relationship() :: %{
        "relationshipName" => String.t(),
        "resourceId" => String.t(),
        "resourceName" => String.t(),
        "resourceType" => list(any())
      }
      
  """
  @type relationship() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_remediation_exceptions_response() :: %{
        "FailedBatches" => list(failed_delete_remediation_exceptions_batch()())
      }
      
  """
  @type delete_remediation_exceptions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      max_number_of_organization_conformance_packs_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type max_number_of_organization_conformance_packs_exceeded_exception() :: %{
          String.t() => any()
        }

  @typedoc """

  ## Example:
      
      describe_compliance_by_config_rule_request() :: %{
        optional("ComplianceTypes") => list(list(any())()),
        optional("ConfigRuleNames") => list(String.t()()),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_compliance_by_config_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_organization_config_rules_response() :: %{
        "NextToken" => String.t(),
        "OrganizationConfigRules" => list(organization_config_rule()())
      }
      
  """
  @type describe_organization_config_rules_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_remediation_exceptions_request() :: %{
        required("ConfigRuleName") => String.t(),
        required("ResourceKeys") => list(remediation_exception_resource_key()())
      }
      
  """
  @type delete_remediation_exceptions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_remediation_configurations_request() :: %{
        required("RemediationConfigurations") => list(remediation_configuration()())
      }
      
  """
  @type put_remediation_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_remediation_configurations_request() :: %{
        required("ConfigRuleNames") => list(String.t()())
      }
      
  """
  @type describe_remediation_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_custom_rule_policy_request() :: %{
        optional("ConfigRuleName") => String.t()
      }
      
  """
  @type get_custom_rule_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_aggregate_compliance_details_by_config_rule_response() :: %{
        "AggregateEvaluationResults" => list(aggregate_evaluation_result()()),
        "NextToken" => String.t()
      }
      
  """
  @type get_aggregate_compliance_details_by_config_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_config_rule_request() :: %{
        required("ConfigRuleName") => String.t()
      }
      
  """
  @type delete_config_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aggregate_evaluation_result() :: %{
        "AccountId" => String.t(),
        "Annotation" => String.t(),
        "AwsRegion" => String.t(),
        "ComplianceType" => list(any()),
        "ConfigRuleInvokedTime" => non_neg_integer(),
        "EvaluationResultIdentifier" => evaluation_result_identifier(),
        "ResultRecordedTime" => non_neg_integer()
      }
      
  """
  @type aggregate_evaluation_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_conformance_pack_detailed_status() :: %{
        "AccountId" => String.t(),
        "ConformancePackName" => String.t(),
        "ErrorCode" => String.t(),
        "ErrorMessage" => String.t(),
        "LastUpdateTime" => non_neg_integer(),
        "Status" => list(any())
      }
      
  """
  @type organization_conformance_pack_detailed_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_delivery_channels_request() :: %{
        optional("DeliveryChannelNames") => list(String.t()())
      }
      
  """
  @type describe_delivery_channels_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remediation_parameter_value() :: %{
        "ResourceValue" => resource_value(),
        "StaticValue" => static_value()
      }
      
  """
  @type remediation_parameter_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_aggregate_compliance_by_config_rules_request() :: %{
        optional("Filters") => config_rule_compliance_filters(),
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        required("ConfigurationAggregatorName") => String.t()
      }
      
  """
  @type describe_aggregate_compliance_by_config_rules_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_limit_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_limit_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_aggregate_config_rule_compliance_summary_request() :: %{
        optional("Filters") => config_rule_compliance_summary_filters(),
        optional("GroupByKey") => list(any()),
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        required("ConfigurationAggregatorName") => String.t()
      }
      
  """
  @type get_aggregate_config_rule_compliance_summary_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compliance_contributor_count() :: %{
        "CapExceeded" => boolean(),
        "CappedCount" => integer()
      }
      
  """
  @type compliance_contributor_count() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_remediation_configurations_response() :: %{
        "RemediationConfigurations" => list(remediation_configuration()())
      }
      
  """
  @type describe_remediation_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recording_mode() :: %{
        "recordingFrequency" => list(any()),
        "recordingModeOverrides" => list(recording_mode_override()())
      }
      
  """
  @type recording_mode() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_result_token_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_result_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_resource_evaluations_response() :: %{
        "NextToken" => String.t(),
        "ResourceEvaluations" => list(resource_evaluation()())
      }
      
  """
  @type list_resource_evaluations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      failed_remediation_exception_batch() :: %{
        "FailedItems" => list(remediation_exception()()),
        "FailureMessage" => String.t()
      }
      
  """
  @type failed_remediation_exception_batch() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remediation_in_progress_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type remediation_in_progress_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_compliance_details_by_config_rule_response() :: %{
        "EvaluationResults" => list(evaluation_result()()),
        "NextToken" => String.t()
      }
      
  """
  @type get_compliance_details_by_config_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      max_number_of_organization_config_rules_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type max_number_of_organization_config_rules_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aggregation_authorization() :: %{
        "AggregationAuthorizationArn" => String.t(),
        "AuthorizedAccountId" => String.t(),
        "AuthorizedAwsRegion" => String.t(),
        "CreationTime" => non_neg_integer()
      }
      
  """
  @type aggregation_authorization() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_organization_conformance_packs_response() :: %{
        "NextToken" => String.t(),
        "OrganizationConformancePacks" => list(organization_conformance_pack()())
      }
      
  """
  @type describe_organization_conformance_packs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      max_number_of_config_rules_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type max_number_of_config_rules_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_compliance_by_config_rule_response() :: %{
        "ComplianceByConfigRules" => list(compliance_by_config_rule()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_compliance_by_config_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_evaluations_request() :: %{
        optional("Evaluations") => list(evaluation()()),
        optional("TestMode") => boolean(),
        required("ResultToken") => String.t()
      }
      
  """
  @type put_evaluations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_evaluation_results_response() :: %{}
      
  """
  @type delete_evaluation_results_response() :: %{}

  @typedoc """

  ## Example:
      
      describe_config_rules_response() :: %{
        "ConfigRules" => list(config_rule()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_config_rules_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_stored_query_request() :: %{
        required("QueryName") => String.t()
      }
      
  """
  @type get_stored_query_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_config_rules_filters() :: %{
        "EvaluationMode" => list(any())
      }
      
  """
  @type describe_config_rules_filters() :: %{String.t() => any()}

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
      
      get_conformance_pack_compliance_summary_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        required("ConformancePackNames") => list(String.t()())
      }
      
  """
  @type get_conformance_pack_compliance_summary_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_config_rule_status() :: %{
        "ErrorCode" => String.t(),
        "ErrorMessage" => String.t(),
        "LastUpdateTime" => non_neg_integer(),
        "OrganizationConfigRuleName" => String.t(),
        "OrganizationRuleStatus" => list(any())
      }
      
  """
  @type organization_config_rule_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_organization_custom_rule_policy_response() :: %{
        "PolicyText" => String.t()
      }
      
  """
  @type get_organization_custom_rule_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deliver_config_snapshot_request() :: %{
        required("deliveryChannelName") => String.t()
      }
      
  """
  @type deliver_config_snapshot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_aggregate_config_rule_compliance_summary_response() :: %{
        "AggregateComplianceCounts" => list(aggregate_compliance_count()()),
        "GroupByKey" => String.t(),
        "NextToken" => String.t()
      }
      
  """
  @type get_aggregate_config_rule_compliance_summary_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_count() :: %{
        "count" => float(),
        "resourceType" => list(any())
      }
      
  """
  @type resource_count() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_compliance_summary_by_resource_type_response() :: %{
        "ComplianceSummariesByResourceType" => list(compliance_summary_by_resource_type()())
      }
      
  """
  @type get_compliance_summary_by_resource_type_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aggregate_resource_identifier() :: %{
        "ResourceId" => String.t(),
        "ResourceName" => String.t(),
        "ResourceType" => list(any()),
        "SourceAccountId" => String.t(),
        "SourceRegion" => String.t()
      }
      
  """
  @type aggregate_resource_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_aggregate_resource_config_response() :: %{
        "BaseConfigurationItems" => list(base_configuration_item()()),
        "UnprocessedResourceIdentifiers" => list(aggregate_resource_identifier()())
      }
      
  """
  @type batch_get_aggregate_resource_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_conformance_pack_status_response() :: %{
        "ConformancePackStatusDetails" => list(conformance_pack_status_detail()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_conformance_pack_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_configuration_recorder_request() :: %{
        required("ConfigurationRecorderName") => String.t()
      }
      
  """
  @type stop_configuration_recorder_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      select_resource_config_response() :: %{
        "NextToken" => String.t(),
        "QueryInfo" => query_info(),
        "Results" => list(String.t()())
      }
      
  """
  @type select_resource_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_config_history_response() :: %{
        "configurationItems" => list(configuration_item()()),
        "nextToken" => String.t()
      }
      
  """
  @type get_resource_config_history_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_filters() :: %{
        "AccountId" => String.t(),
        "Region" => String.t(),
        "ResourceId" => String.t(),
        "ResourceName" => String.t()
      }
      
  """
  @type resource_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      no_such_config_rule_in_conformance_pack_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type no_such_config_rule_in_conformance_pack_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ssm_controls() :: %{
        "ConcurrentExecutionRatePercentage" => integer(),
        "ErrorPercentage" => integer()
      }
      
  """
  @type ssm_controls() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      no_such_remediation_exception_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type no_such_remediation_exception_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remediation_execution_status() :: %{
        "InvocationTime" => non_neg_integer(),
        "LastUpdatedTime" => non_neg_integer(),
        "ResourceKey" => resource_key(),
        "State" => list(any()),
        "StepDetails" => list(remediation_execution_step()())
      }
      
  """
  @type remediation_execution_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_delivery_channels_response() :: %{
        "DeliveryChannels" => list(delivery_channel()())
      }
      
  """
  @type describe_delivery_channels_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_conformance_pack_response() :: %{
        "ConformancePackArn" => String.t()
      }
      
  """
  @type put_conformance_pack_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_s_n_s_topic_arn_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_s_n_s_topic_arn_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_aggregation_source() :: %{
        "AllAwsRegions" => boolean(),
        "AwsRegions" => list(String.t()()),
        "RoleArn" => String.t()
      }
      
  """
  @type organization_aggregation_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_managed_rule_metadata() :: %{
        "Description" => String.t(),
        "InputParameters" => String.t(),
        "MaximumExecutionFrequency" => list(any()),
        "ResourceIdScope" => String.t(),
        "ResourceTypesScope" => list(String.t()()),
        "RuleIdentifier" => String.t(),
        "TagKeyScope" => String.t(),
        "TagValueScope" => String.t()
      }
      
  """
  @type organization_managed_rule_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aggregate_conformance_pack_compliance() :: %{
        "ComplianceType" => list(any()),
        "CompliantRuleCount" => integer(),
        "NonCompliantRuleCount" => integer(),
        "TotalRuleCount" => integer()
      }
      
  """
  @type aggregate_conformance_pack_compliance() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_discovered_resources_response() :: %{
        "nextToken" => String.t(),
        "resourceIdentifiers" => list(resource_identifier()())
      }
      
  """
  @type list_discovered_resources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      idempotent_parameter_mismatch() :: %{
        "message" => String.t()
      }
      
  """
  @type idempotent_parameter_mismatch() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_delivery_channel_status_request() :: %{
        optional("DeliveryChannelNames") => list(String.t()())
      }
      
  """
  @type describe_delivery_channel_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_organization_config_rules_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        optional("OrganizationConfigRuleNames") => list(String.t()())
      }
      
  """
  @type describe_organization_config_rules_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_organization_config_rule_detailed_status_response() :: %{
        "NextToken" => String.t(),
        "OrganizationConfigRuleDetailedStatus" => list(member_account_status()())
      }
      
  """
  @type get_organization_config_rule_detailed_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_compliance_by_resource_response() :: %{
        "ComplianceByResources" => list(compliance_by_resource()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_compliance_by_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_remediation_configurations_response() :: %{
        "FailedBatches" => list(failed_remediation_batch()())
      }
      
  """
  @type put_remediation_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      member_account_status() :: %{
        "AccountId" => String.t(),
        "ConfigRuleName" => String.t(),
        "ErrorCode" => String.t(),
        "ErrorMessage" => String.t(),
        "LastUpdateTime" => non_neg_integer(),
        "MemberAccountRuleStatus" => list(any())
      }
      
  """
  @type member_account_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      external_evaluation() :: %{
        "Annotation" => String.t(),
        "ComplianceResourceId" => String.t(),
        "ComplianceResourceType" => String.t(),
        "ComplianceType" => list(any()),
        "OrderingTimestamp" => non_neg_integer()
      }
      
  """
  @type external_evaluation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_evaluation_summary_request() :: %{
        required("ResourceEvaluationId") => String.t()
      }
      
  """
  @type get_resource_evaluation_summary_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      config_rule_compliance_summary_filters() :: %{
        "AccountId" => String.t(),
        "AwsRegion" => String.t()
      }
      
  """
  @type config_rule_compliance_summary_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compliance_by_config_rule() :: %{
        "Compliance" => compliance(),
        "ConfigRuleName" => String.t()
      }
      
  """
  @type compliance_by_config_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stored_query_metadata() :: %{
        "Description" => String.t(),
        "QueryArn" => String.t(),
        "QueryId" => String.t(),
        "QueryName" => String.t()
      }
      
  """
  @type stored_query_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      configuration_recorder_status() :: %{
        "lastErrorCode" => String.t(),
        "lastErrorMessage" => String.t(),
        "lastStartTime" => non_neg_integer(),
        "lastStatus" => list(any()),
        "lastStatusChangeTime" => non_neg_integer(),
        "lastStopTime" => non_neg_integer(),
        "name" => String.t(),
        "recording" => boolean()
      }
      
  """
  @type configuration_recorder_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_retention_configuration_request() :: %{
        required("RetentionConfigurationName") => String.t()
      }
      
  """
  @type delete_retention_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_organization_config_rule_statuses_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        optional("OrganizationConfigRuleNames") => list(String.t()())
      }
      
  """
  @type describe_organization_config_rule_statuses_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_remediation_execution_status_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        optional("ResourceKeys") => list(resource_key()()),
        required("ConfigRuleName") => String.t()
      }
      
  """
  @type describe_remediation_execution_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conformance_pack_detail() :: %{
        "ConformancePackArn" => String.t(),
        "ConformancePackId" => String.t(),
        "ConformancePackInputParameters" => list(conformance_pack_input_parameter()()),
        "ConformancePackName" => String.t(),
        "CreatedBy" => String.t(),
        "DeliveryS3Bucket" => String.t(),
        "DeliveryS3KeyPrefix" => String.t(),
        "LastUpdateRequestedTime" => non_neg_integer(),
        "TemplateSSMDocumentDetails" => template_s_s_m_document_details()
      }
      
  """
  @type conformance_pack_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_conformance_pack_request() :: %{
        optional("ConformancePackInputParameters") => list(conformance_pack_input_parameter()()),
        optional("DeliveryS3Bucket") => String.t(),
        optional("DeliveryS3KeyPrefix") => String.t(),
        optional("TemplateBody") => String.t(),
        optional("TemplateS3Uri") => String.t(),
        optional("TemplateSSMDocumentDetails") => template_s_s_m_document_details(),
        required("ConformancePackName") => String.t()
      }
      
  """
  @type put_conformance_pack_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      retention_configuration() :: %{
        "Name" => String.t(),
        "RetentionPeriodInDays" => integer()
      }
      
  """
  @type retention_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_resource_evaluation_response() :: %{
        "ResourceEvaluationId" => String.t()
      }
      
  """
  @type start_resource_evaluation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_configuration_recorder_status_request() :: %{
        optional("ConfigurationRecorderNames") => list(String.t()())
      }
      
  """
  @type describe_configuration_recorder_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      time_window() :: %{
        "EndTime" => non_neg_integer(),
        "StartTime" => non_neg_integer()
      }
      
  """
  @type time_window() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aggregate_conformance_pack_compliance_summary() :: %{
        "ComplianceSummary" => aggregate_conformance_pack_compliance_count(),
        "GroupName" => String.t()
      }
      
  """
  @type aggregate_conformance_pack_compliance_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_time_range_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_time_range_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_external_evaluation_request() :: %{
        required("ConfigRuleName") => String.t(),
        required("ExternalEvaluation") => external_evaluation()
      }
      
  """
  @type put_external_evaluation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pending_aggregation_request() :: %{
        "RequesterAccountId" => String.t(),
        "RequesterAwsRegion" => String.t()
      }
      
  """
  @type pending_aggregation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_identifier() :: %{
        "resourceDeletionTime" => non_neg_integer(),
        "resourceId" => String.t(),
        "resourceName" => String.t(),
        "resourceType" => list(any())
      }
      
  """
  @type resource_identifier() :: %{String.t() => any()}

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
      
      account_aggregation_source() :: %{
        "AccountIds" => list(String.t()()),
        "AllAwsRegions" => boolean(),
        "AwsRegions" => list(String.t()())
      }
      
  """
  @type account_aggregation_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_resource_config_response() :: %{
        "baseConfigurationItems" => list(base_configuration_item()()),
        "unprocessedResourceKeys" => list(resource_key()())
      }
      
  """
  @type batch_get_resource_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      source_detail() :: %{
        "EventSource" => list(any()),
        "MaximumExecutionFrequency" => list(any()),
        "MessageType" => list(any())
      }
      
  """
  @type source_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_configuration_aggregators_request() :: %{
        optional("ConfigurationAggregatorNames") => list(String.t()()),
        optional("Limit") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_configuration_aggregators_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_conformance_pack_compliance_scores_request() :: %{
        optional("Filters") => conformance_pack_compliance_scores_filters(),
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any())
      }
      
  """
  @type list_conformance_pack_compliance_scores_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conformance_pack_evaluation_filters() :: %{
        "ComplianceType" => list(any()),
        "ConfigRuleNames" => list(String.t()()),
        "ResourceIds" => list(String.t()()),
        "ResourceType" => String.t()
      }
      
  """
  @type conformance_pack_evaluation_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_pending_aggregation_requests_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_pending_aggregation_requests_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_remediation_execution_response() :: %{
        "FailedItems" => list(resource_key()()),
        "FailureMessage" => String.t()
      }
      
  """
  @type start_remediation_execution_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_aggregate_compliance_by_config_rules_response() :: %{
        "AggregateComplianceByConfigRules" => list(aggregate_compliance_by_config_rule()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_aggregate_compliance_by_config_rules_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      max_number_of_configuration_recorders_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type max_number_of_configuration_recorders_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_value() :: %{
        "Value" => list(any())
      }
      
  """
  @type resource_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_next_token_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_next_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_value_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_parameter_value_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_delivery_channel_name_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_delivery_channel_name_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_aggregate_resource_config_request() :: %{
        required("ConfigurationAggregatorName") => String.t(),
        required("ResourceIdentifier") => aggregate_resource_identifier()
      }
      
  """
  @type get_aggregate_resource_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recording_strategy() :: %{
        "useOnly" => list(any())
      }
      
  """
  @type recording_strategy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deliver_config_snapshot_response() :: %{
        "configSnapshotId" => String.t()
      }
      
  """
  @type deliver_config_snapshot_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_organization_conformance_pack_statuses_response() :: %{
        "NextToken" => String.t(),
        "OrganizationConformancePackStatuses" => list(organization_conformance_pack_status()())
      }
      
  """
  @type describe_organization_conformance_pack_statuses_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_retention_configuration_request() :: %{
        required("RetentionPeriodInDays") => integer()
      }
      
  """
  @type put_retention_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      no_such_delivery_channel_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type no_such_delivery_channel_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_organization_conformance_pack_response() :: %{
        "OrganizationConformancePackArn" => String.t()
      }
      
  """
  @type put_organization_conformance_pack_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_s3_kms_key_arn_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_s3_kms_key_arn_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_configuration_aggregators_response() :: %{
        "ConfigurationAggregators" => list(configuration_aggregator()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_configuration_aggregators_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      select_aggregate_resource_config_request() :: %{
        optional("Limit") => integer(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ConfigurationAggregatorName") => String.t(),
        required("Expression") => String.t()
      }
      
  """
  @type select_aggregate_resource_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conformance_pack_compliance_filters() :: %{
        "ComplianceType" => list(any()),
        "ConfigRuleNames" => list(String.t()())
      }
      
  """
  @type conformance_pack_compliance_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_remediation_execution_request() :: %{
        required("ConfigRuleName") => String.t(),
        required("ResourceKeys") => list(resource_key()())
      }
      
  """
  @type start_remediation_execution_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_discovered_resources_request() :: %{
        optional("includeDeletedResources") => boolean(),
        optional("limit") => integer(),
        optional("nextToken") => String.t(),
        optional("resourceIds") => list(String.t()()),
        optional("resourceName") => String.t(),
        required("resourceType") => list(any())
      }
      
  """
  @type list_discovered_resources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_aggregate_discovered_resources_response() :: %{
        "NextToken" => String.t(),
        "ResourceIdentifiers" => list(aggregate_resource_identifier()())
      }
      
  """
  @type list_aggregate_discovered_resources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_delivery_channel_request() :: %{
        required("DeliveryChannel") => delivery_channel()
      }
      
  """
  @type put_delivery_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conformance_pack_rule_compliance() :: %{
        "ComplianceType" => list(any()),
        "ConfigRuleName" => String.t(),
        "Controls" => list(String.t()())
      }
      
  """
  @type conformance_pack_rule_compliance() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_aggregation_authorization_response() :: %{
        "AggregationAuthorization" => aggregation_authorization()
      }
      
  """
  @type put_aggregation_authorization_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stored_query() :: %{
        "Description" => String.t(),
        "Expression" => String.t(),
        "QueryArn" => String.t(),
        "QueryId" => String.t(),
        "QueryName" => String.t()
      }
      
  """
  @type stored_query() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_stored_query_request() :: %{
        required("QueryName") => String.t()
      }
      
  """
  @type delete_stored_query_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_external_evaluation_response() :: %{}
      
  """
  @type put_external_evaluation_response() :: %{}

  @typedoc """

  ## Example:
      
      get_resource_config_history_request() :: %{
        optional("chronologicalOrder") => list(any()),
        optional("earlierTime") => non_neg_integer(),
        optional("laterTime") => non_neg_integer(),
        optional("limit") => integer(),
        optional("nextToken") => String.t(),
        required("resourceId") => String.t(),
        required("resourceType") => list(any())
      }
      
  """
  @type get_resource_config_history_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_aggregate_compliance_by_conformance_packs_response() :: %{
        "AggregateComplianceByConformancePacks" => list(aggregate_compliance_by_conformance_pack()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_aggregate_compliance_by_conformance_packs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_stored_queries_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_stored_queries_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_remediation_exceptions_response() :: %{
        "FailedBatches" => list(failed_remediation_exception_batch()())
      }
      
  """
  @type put_remediation_exceptions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_config_rules_evaluation_request() :: %{
        optional("ConfigRuleNames") => list(String.t()())
      }
      
  """
  @type start_config_rules_evaluation_request() :: %{String.t() => any()}

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
      
      delete_aggregation_authorization_request() :: %{
        required("AuthorizedAccountId") => String.t(),
        required("AuthorizedAwsRegion") => String.t()
      }
      
  """
  @type delete_aggregation_authorization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recording_mode_override() :: %{
        "description" => String.t(),
        "recordingFrequency" => list(any()),
        "resourceTypes" => list(list(any())())
      }
      
  """
  @type recording_mode_override() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_configuration_recorder_request() :: %{
        required("ConfigurationRecorderName") => String.t()
      }
      
  """
  @type start_configuration_recorder_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_configuration_recorders_request() :: %{
        optional("ConfigurationRecorderNames") => list(String.t()())
      }
      
  """
  @type describe_configuration_recorders_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_compliance_details_by_resource_request() :: %{
        optional("ComplianceTypes") => list(list(any())()),
        optional("NextToken") => String.t(),
        optional("ResourceEvaluationId") => String.t(),
        optional("ResourceId") => String.t(),
        optional("ResourceType") => String.t()
      }
      
  """
  @type get_compliance_details_by_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aggregate_compliance_by_config_rule() :: %{
        "AccountId" => String.t(),
        "AwsRegion" => String.t(),
        "Compliance" => compliance(),
        "ConfigRuleName" => String.t()
      }
      
  """
  @type aggregate_compliance_by_config_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_organization_config_rule_response() :: %{
        "OrganizationConfigRuleArn" => String.t()
      }
      
  """
  @type put_organization_config_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      no_available_delivery_channel_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type no_available_delivery_channel_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_aggregate_compliance_by_conformance_packs_request() :: %{
        optional("Filters") => aggregate_conformance_pack_compliance_filters(),
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        required("ConfigurationAggregatorName") => String.t()
      }
      
  """
  @type describe_aggregate_compliance_by_conformance_packs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_remediation_exceptions_response() :: %{
        "NextToken" => String.t(),
        "RemediationExceptions" => list(remediation_exception()())
      }
      
  """
  @type describe_remediation_exceptions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_evaluation() :: %{
        "EvaluationMode" => list(any()),
        "EvaluationStartTimestamp" => non_neg_integer(),
        "ResourceEvaluationId" => String.t()
      }
      
  """
  @type resource_evaluation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aggregate_conformance_pack_compliance_filters() :: %{
        "AccountId" => String.t(),
        "AwsRegion" => String.t(),
        "ComplianceType" => list(any()),
        "ConformancePackName" => String.t()
      }
      
  """
  @type aggregate_conformance_pack_compliance_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluation_status() :: %{
        "FailureReason" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type evaluation_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_evaluation_summary_response() :: %{
        "Compliance" => list(any()),
        "EvaluationContext" => evaluation_context(),
        "EvaluationMode" => list(any()),
        "EvaluationStartTimestamp" => non_neg_integer(),
        "EvaluationStatus" => evaluation_status(),
        "ResourceDetails" => resource_details(),
        "ResourceEvaluationId" => String.t()
      }
      
  """
  @type get_resource_evaluation_summary_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_aggregate_compliance_details_by_config_rule_request() :: %{
        optional("ComplianceType") => list(any()),
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        required("AccountId") => String.t(),
        required("AwsRegion") => String.t(),
        required("ConfigRuleName") => String.t(),
        required("ConfigurationAggregatorName") => String.t()
      }
      
  """
  @type get_aggregate_compliance_details_by_config_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_conformance_pack_status_request() :: %{
        optional("ConformancePackNames") => list(String.t()()),
        optional("Limit") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_conformance_pack_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_conformance_pack_status() :: %{
        "ErrorCode" => String.t(),
        "ErrorMessage" => String.t(),
        "LastUpdateTime" => non_neg_integer(),
        "OrganizationConformancePackName" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type organization_conformance_pack_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_configuration_aggregator_request() :: %{
        optional("AccountAggregationSources") => list(account_aggregation_source()()),
        optional("OrganizationAggregationSource") => organization_aggregation_source(),
        optional("Tags") => list(tag()()),
        required("ConfigurationAggregatorName") => String.t()
      }
      
  """
  @type put_configuration_aggregator_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_role_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_role_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      exclusion_by_resource_types() :: %{
        "resourceTypes" => list(list(any())())
      }
      
  """
  @type exclusion_by_resource_types() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_aggregate_discovered_resources_request() :: %{
        optional("Filters") => resource_filters(),
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        required("ConfigurationAggregatorName") => String.t(),
        required("ResourceType") => list(any())
      }
      
  """
  @type list_aggregate_discovered_resources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conformance_pack_evaluation_result() :: %{
        "Annotation" => String.t(),
        "ComplianceType" => list(any()),
        "ConfigRuleInvokedTime" => non_neg_integer(),
        "EvaluationResultIdentifier" => evaluation_result_identifier(),
        "ResultRecordedTime" => non_neg_integer()
      }
      
  """
  @type conformance_pack_evaluation_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_aggregation_authorizations_response() :: %{
        "AggregationAuthorizations" => list(aggregation_authorization()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_aggregation_authorizations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_resource_config_request() :: %{
        optional("ResourceName") => String.t(),
        optional("Tags") => map(),
        required("Configuration") => String.t(),
        required("ResourceId") => String.t(),
        required("ResourceType") => String.t(),
        required("SchemaVersionId") => String.t()
      }
      
  """
  @type put_resource_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_organization_conformance_pack_request() :: %{
        required("OrganizationConformancePackName") => String.t()
      }
      
  """
  @type delete_organization_conformance_pack_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      source() :: %{
        "CustomPolicyDetails" => custom_policy_details(),
        "Owner" => list(any()),
        "SourceDetails" => list(source_detail()()),
        "SourceIdentifier" => String.t()
      }
      
  """
  @type source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      no_running_configuration_recorder_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type no_running_configuration_recorder_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delivery_channel_status() :: %{
        "configHistoryDeliveryInfo" => config_export_delivery_info(),
        "configSnapshotDeliveryInfo" => config_export_delivery_info(),
        "configStreamDeliveryInfo" => config_stream_delivery_info(),
        "name" => String.t()
      }
      
  """
  @type delivery_channel_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scope() :: %{
        "ComplianceResourceId" => String.t(),
        "ComplianceResourceTypes" => list(String.t()()),
        "TagKey" => String.t(),
        "TagValue" => String.t()
      }
      
  """
  @type scope() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_pending_aggregation_request_request() :: %{
        required("RequesterAccountId") => String.t(),
        required("RequesterAwsRegion") => String.t()
      }
      
  """
  @type delete_pending_aggregation_request_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conformance_pack_input_parameter() :: %{
        "ParameterName" => String.t(),
        "ParameterValue" => String.t()
      }
      
  """
  @type conformance_pack_input_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_stored_query_request() :: %{
        optional("Tags") => list(tag()()),
        required("StoredQuery") => stored_query()
      }
      
  """
  @type put_stored_query_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_discovered_resource_counts_request() :: %{
        optional("limit") => integer(),
        optional("nextToken") => String.t(),
        optional("resourceTypes") => list(String.t()())
      }
      
  """
  @type get_discovered_resource_counts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_evaluations_response() :: %{
        "FailedEvaluations" => list(evaluation()())
      }
      
  """
  @type put_evaluations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluation_mode_configuration() :: %{
        "Mode" => list(any())
      }
      
  """
  @type evaluation_mode_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      failed_delete_remediation_exceptions_batch() :: %{
        "FailedItems" => list(remediation_exception_resource_key()()),
        "FailureMessage" => String.t()
      }
      
  """
  @type failed_delete_remediation_exceptions_batch() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      no_such_configuration_recorder_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type no_such_configuration_recorder_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      no_such_organization_conformance_pack_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type no_such_organization_conformance_pack_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_expression_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_expression_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_aggregation_authorization_request() :: %{
        optional("Tags") => list(tag()()),
        required("AuthorizedAccountId") => String.t(),
        required("AuthorizedAwsRegion") => String.t()
      }
      
  """
  @type put_aggregation_authorization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_delivery_channel_request() :: %{
        required("DeliveryChannelName") => String.t()
      }
      
  """
  @type delete_delivery_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_retention_configuration_response() :: %{
        "RetentionConfiguration" => retention_configuration()
      }
      
  """
  @type put_retention_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delivery_channel() :: %{
        "configSnapshotDeliveryProperties" => config_snapshot_delivery_properties(),
        "name" => String.t(),
        "s3BucketName" => String.t(),
        "s3KeyPrefix" => String.t(),
        "s3KmsKeyArn" => String.t(),
        "snsTopicARN" => String.t()
      }
      
  """
  @type delivery_channel() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_stored_query_response() :: %{
        "QueryArn" => String.t()
      }
      
  """
  @type put_stored_query_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_organization_conformance_pack_detailed_status_response() :: %{
        "NextToken" => String.t(),
        "OrganizationConformancePackDetailedStatuses" => list(organization_conformance_pack_detailed_status()())
      }
      
  """
  @type get_organization_conformance_pack_detailed_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_conformance_packs_request() :: %{
        optional("ConformancePackNames") => list(String.t()()),
        optional("Limit") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_conformance_packs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_compliance_summary_by_resource_type_request() :: %{
        optional("ResourceTypes") => list(String.t()())
      }
      
  """
  @type get_compliance_summary_by_resource_type_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      no_such_conformance_pack_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type no_such_conformance_pack_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conformance_pack_compliance_score() :: %{
        "ConformancePackName" => String.t(),
        "LastUpdatedTime" => non_neg_integer(),
        "Score" => String.t()
      }
      
  """
  @type conformance_pack_compliance_score() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_configuration_aggregator_response() :: %{
        "ConfigurationAggregator" => configuration_aggregator()
      }
      
  """
  @type put_configuration_aggregator_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conformance_pack_compliance_scores_filters() :: %{
        "ConformancePackNames" => list(String.t()())
      }
      
  """
  @type conformance_pack_compliance_scores_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      failed_remediation_batch() :: %{
        "FailedItems" => list(remediation_configuration()()),
        "FailureMessage" => String.t()
      }
      
  """
  @type failed_remediation_batch() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_organization_config_rule_request() :: %{
        optional("ExcludedAccounts") => list(String.t()()),
        optional("OrganizationCustomPolicyRuleMetadata") => organization_custom_policy_rule_metadata(),
        optional("OrganizationCustomRuleMetadata") => organization_custom_rule_metadata(),
        optional("OrganizationManagedRuleMetadata") => organization_managed_rule_metadata(),
        required("OrganizationConfigRuleName") => String.t()
      }
      
  """
  @type put_organization_config_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recording_group() :: %{
        "allSupported" => boolean(),
        "exclusionByResourceTypes" => exclusion_by_resource_types(),
        "includeGlobalResourceTypes" => boolean(),
        "recordingStrategy" => recording_strategy(),
        "resourceTypes" => list(list(any())())
      }
      
  """
  @type recording_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_stored_queries_response() :: %{
        "NextToken" => String.t(),
        "StoredQueryMetadata" => list(stored_query_metadata()())
      }
      
  """
  @type list_stored_queries_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_key() :: %{
        "resourceId" => String.t(),
        "resourceType" => list(any())
      }
      
  """
  @type resource_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_discovered_resource_counts_response() :: %{
        "nextToken" => String.t(),
        "resourceCounts" => list(resource_count()()),
        "totalDiscoveredResources" => float()
      }
      
  """
  @type get_discovered_resource_counts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execution_controls() :: %{
        "SsmControls" => ssm_controls()
      }
      
  """
  @type execution_controls() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      config_export_delivery_info() :: %{
        "lastAttemptTime" => non_neg_integer(),
        "lastErrorCode" => String.t(),
        "lastErrorMessage" => String.t(),
        "lastStatus" => list(any()),
        "lastSuccessfulTime" => non_neg_integer(),
        "nextDeliveryTime" => non_neg_integer()
      }
      
  """
  @type config_export_delivery_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_discovered_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_not_discovered_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        required("ResourceArn") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluation_context() :: %{
        "EvaluationContextIdentifier" => String.t()
      }
      
  """
  @type evaluation_context() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_count_filters() :: %{
        "AccountId" => String.t(),
        "Region" => String.t(),
        "ResourceType" => list(any())
      }
      
  """
  @type resource_count_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_concurrent_modification_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_concurrent_modification_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_configuration_aggregator_sources_status_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        optional("UpdateStatus") => list(list(any())()),
        required("ConfigurationAggregatorName") => String.t()
      }
      
  """
  @type describe_configuration_aggregator_sources_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_retention_configurations_request() :: %{
        optional("NextToken") => String.t(),
        optional("RetentionConfigurationNames") => list(String.t()())
      }
      
  """
  @type describe_retention_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_aggregate_discovered_resource_counts_request() :: %{
        optional("Filters") => resource_count_filters(),
        optional("GroupByKey") => list(any()),
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        required("ConfigurationAggregatorName") => String.t()
      }
      
  """
  @type get_aggregate_discovered_resource_counts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      no_such_bucket_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type no_such_bucket_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      no_available_organization_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type no_available_organization_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_custom_rule_metadata() :: %{
        "Description" => String.t(),
        "InputParameters" => String.t(),
        "LambdaFunctionArn" => String.t(),
        "MaximumExecutionFrequency" => list(any()),
        "OrganizationConfigRuleTriggerTypes" => list(list(any())()),
        "ResourceIdScope" => String.t(),
        "ResourceTypesScope" => list(String.t()()),
        "TagKeyScope" => String.t(),
        "TagValueScope" => String.t()
      }
      
  """
  @type organization_custom_rule_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_configuration_recorders_response() :: %{
        "ConfigurationRecorders" => list(configuration_recorder()())
      }
      
  """
  @type describe_configuration_recorders_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_resource_config_request() :: %{
        required("ResourceId") => String.t(),
        required("ResourceType") => String.t()
      }
      
  """
  @type delete_resource_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      max_active_resources_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type max_active_resources_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      no_such_organization_config_rule_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type no_such_organization_config_rule_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      status_detail_filters() :: %{
        "AccountId" => String.t(),
        "MemberAccountRuleStatus" => list(any())
      }
      
  """
  @type status_detail_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_config_rules_request() :: %{
        optional("ConfigRuleNames") => list(String.t()()),
        optional("Filters") => describe_config_rules_filters(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_config_rules_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_resource_config_request() :: %{
        required("resourceKeys") => list(resource_key()())
      }
      
  """
  @type batch_get_resource_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_conformance_pack_compliance_details_request() :: %{
        optional("Filters") => conformance_pack_evaluation_filters(),
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        required("ConformancePackName") => String.t()
      }
      
  """
  @type get_conformance_pack_compliance_details_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_configuration_aggregator_sources_status_response() :: %{
        "AggregatedSourceStatusList" => list(aggregated_source_status()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_configuration_aggregator_sources_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      field_info() :: %{
        "Name" => String.t()
      }
      
  """
  @type field_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_conformance_pack_compliance_request() :: %{
        optional("Filters") => conformance_pack_compliance_filters(),
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        required("ConformancePackName") => String.t()
      }
      
  """
  @type describe_conformance_pack_compliance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      config_stream_delivery_info() :: %{
        "lastErrorCode" => String.t(),
        "lastErrorMessage" => String.t(),
        "lastStatus" => list(any()),
        "lastStatusChangeTime" => non_neg_integer()
      }
      
  """
  @type config_stream_delivery_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_aggregate_conformance_pack_compliance_summary_request() :: %{
        optional("Filters") => aggregate_conformance_pack_compliance_summary_filters(),
        optional("GroupByKey") => list(any()),
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        required("ConfigurationAggregatorName") => String.t()
      }
      
  """
  @type get_aggregate_conformance_pack_compliance_summary_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aggregate_compliance_by_conformance_pack() :: %{
        "AccountId" => String.t(),
        "AwsRegion" => String.t(),
        "Compliance" => aggregate_conformance_pack_compliance(),
        "ConformancePackName" => String.t()
      }
      
  """
  @type aggregate_compliance_by_conformance_pack() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_delivery_channel_status_response() :: %{
        "DeliveryChannelsStatus" => list(delivery_channel_status()())
      }
      
  """
  @type describe_delivery_channel_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_remediation_execution_status_response() :: %{
        "NextToken" => String.t(),
        "RemediationExecutionStatuses" => list(remediation_execution_status()())
      }
      
  """
  @type describe_remediation_execution_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_custom_policy_rule_metadata() :: %{
        "DebugLogDeliveryAccounts" => list(String.t()()),
        "Description" => String.t(),
        "InputParameters" => String.t(),
        "MaximumExecutionFrequency" => list(any()),
        "OrganizationConfigRuleTriggerTypes" => list(list(any())()),
        "PolicyRuntime" => String.t(),
        "PolicyText" => String.t(),
        "ResourceIdScope" => String.t(),
        "ResourceTypesScope" => list(String.t()()),
        "TagKeyScope" => String.t(),
        "TagValueScope" => String.t()
      }
      
  """
  @type organization_custom_policy_rule_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conformance_pack_compliance_summary() :: %{
        "ConformancePackComplianceStatus" => list(any()),
        "ConformancePackName" => String.t()
      }
      
  """
  @type conformance_pack_compliance_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compliance_summary_by_resource_type() :: %{
        "ComplianceSummary" => compliance_summary(),
        "ResourceType" => String.t()
      }
      
  """
  @type compliance_summary_by_resource_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_resource_detailed_status_filters() :: %{
        "AccountId" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type organization_resource_detailed_status_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluation() :: %{
        "Annotation" => String.t(),
        "ComplianceResourceId" => String.t(),
        "ComplianceResourceType" => String.t(),
        "ComplianceType" => list(any()),
        "OrderingTimestamp" => non_neg_integer()
      }
      
  """
  @type evaluation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_aggregation_authorizations_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_aggregation_authorizations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      base_configuration_item() :: %{
        "accountId" => String.t(),
        "arn" => String.t(),
        "availabilityZone" => String.t(),
        "awsRegion" => String.t(),
        "configuration" => String.t(),
        "configurationItemCaptureTime" => non_neg_integer(),
        "configurationItemDeliveryTime" => non_neg_integer(),
        "configurationItemStatus" => list(any()),
        "configurationStateId" => String.t(),
        "recordingFrequency" => list(any()),
        "resourceCreationTime" => non_neg_integer(),
        "resourceId" => String.t(),
        "resourceName" => String.t(),
        "resourceType" => list(any()),
        "supplementaryConfiguration" => map(),
        "version" => String.t()
      }
      
  """
  @type base_configuration_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_remediation_exceptions_request() :: %{
        optional("ExpirationTime") => non_neg_integer(),
        optional("Message") => String.t(),
        required("ConfigRuleName") => String.t(),
        required("ResourceKeys") => list(remediation_exception_resource_key()())
      }
      
  """
  @type put_remediation_exceptions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conformance_pack_status_detail() :: %{
        "ConformancePackArn" => String.t(),
        "ConformancePackId" => String.t(),
        "ConformancePackName" => String.t(),
        "ConformancePackState" => list(any()),
        "ConformancePackStatusReason" => String.t(),
        "LastUpdateCompletedTime" => non_neg_integer(),
        "LastUpdateRequestedTime" => non_neg_integer(),
        "StackArn" => String.t()
      }
      
  """
  @type conformance_pack_status_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_conformance_pack_compliance_details_response() :: %{
        "ConformancePackName" => String.t(),
        "ConformancePackRuleEvaluationResults" => list(conformance_pack_evaluation_result()()),
        "NextToken" => String.t()
      }
      
  """
  @type get_conformance_pack_compliance_details_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluation_result() :: %{
        "Annotation" => String.t(),
        "ComplianceType" => list(any()),
        "ConfigRuleInvokedTime" => non_neg_integer(),
        "EvaluationResultIdentifier" => evaluation_result_identifier(),
        "ResultRecordedTime" => non_neg_integer(),
        "ResultToken" => String.t()
      }
      
  """
  @type evaluation_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_organization_conformance_pack_request() :: %{
        optional("ConformancePackInputParameters") => list(conformance_pack_input_parameter()()),
        optional("DeliveryS3Bucket") => String.t(),
        optional("DeliveryS3KeyPrefix") => String.t(),
        optional("ExcludedAccounts") => list(String.t()()),
        optional("TemplateBody") => String.t(),
        optional("TemplateS3Uri") => String.t(),
        required("OrganizationConformancePackName") => String.t()
      }
      
  """
  @type put_organization_conformance_pack_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_organization_conformance_pack_statuses_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        optional("OrganizationConformancePackNames") => list(String.t()())
      }
      
  """
  @type describe_organization_conformance_pack_statuses_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      template_s_s_m_document_details() :: %{
        "DocumentName" => String.t(),
        "DocumentVersion" => String.t()
      }
      
  """
  @type template_s_s_m_document_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_resource_evaluation_request() :: %{
        optional("ClientToken") => String.t(),
        optional("EvaluationContext") => evaluation_context(),
        optional("EvaluationTimeout") => integer(),
        required("EvaluationMode") => list(any()),
        required("ResourceDetails") => resource_details()
      }
      
  """
  @type start_resource_evaluation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_stored_query_response() :: %{}
      
  """
  @type delete_stored_query_response() :: %{}

  @typedoc """

  ## Example:
      
      aggregate_conformance_pack_compliance_count() :: %{
        "CompliantConformancePackCount" => integer(),
        "NonCompliantConformancePackCount" => integer()
      }
      
  """
  @type aggregate_conformance_pack_compliance_count() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_organization_config_rule_statuses_response() :: %{
        "NextToken" => String.t(),
        "OrganizationConfigRuleStatuses" => list(organization_config_rule_status()())
      }
      
  """
  @type describe_organization_config_rule_statuses_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_details() :: %{
        "ResourceConfiguration" => String.t(),
        "ResourceConfigurationSchemaType" => list(any()),
        "ResourceId" => String.t(),
        "ResourceType" => String.t()
      }
      
  """
  @type resource_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      select_resource_config_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        required("Expression") => String.t()
      }
      
  """
  @type select_resource_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_s3_key_prefix_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_s3_key_prefix_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      configuration_item() :: %{
        "accountId" => String.t(),
        "arn" => String.t(),
        "availabilityZone" => String.t(),
        "awsRegion" => String.t(),
        "configuration" => String.t(),
        "configurationItemCaptureTime" => non_neg_integer(),
        "configurationItemDeliveryTime" => non_neg_integer(),
        "configurationItemMD5Hash" => String.t(),
        "configurationItemStatus" => list(any()),
        "configurationStateId" => String.t(),
        "recordingFrequency" => list(any()),
        "relatedEvents" => list(String.t()()),
        "relationships" => list(relationship()()),
        "resourceCreationTime" => non_neg_integer(),
        "resourceId" => String.t(),
        "resourceName" => String.t(),
        "resourceType" => list(any()),
        "supplementaryConfiguration" => map(),
        "tags" => map(),
        "version" => String.t()
      }
      
  """
  @type configuration_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compliance_by_resource() :: %{
        "Compliance" => compliance(),
        "ResourceId" => String.t(),
        "ResourceType" => String.t()
      }
      
  """
  @type compliance_by_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_config_rule_evaluation_status_response() :: %{
        "ConfigRulesEvaluationStatus" => list(config_rule_evaluation_status()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_config_rule_evaluation_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_config_rule() :: %{
        "ExcludedAccounts" => list(String.t()()),
        "LastUpdateTime" => non_neg_integer(),
        "OrganizationConfigRuleArn" => String.t(),
        "OrganizationConfigRuleName" => String.t(),
        "OrganizationCustomPolicyRuleMetadata" => organization_custom_policy_rule_metadata_no_policy(),
        "OrganizationCustomRuleMetadata" => organization_custom_rule_metadata(),
        "OrganizationManagedRuleMetadata" => organization_managed_rule_metadata()
      }
      
  """
  @type organization_config_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      max_number_of_conformance_packs_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type max_number_of_conformance_packs_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_conformance_pack_compliance_scores_response() :: %{
        "ConformancePackComplianceScores" => list(conformance_pack_compliance_score()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_conformance_pack_compliance_scores_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_pending_aggregation_requests_response() :: %{
        "NextToken" => String.t(),
        "PendingAggregationRequests" => list(pending_aggregation_request()())
      }
      
  """
  @type describe_pending_aggregation_requests_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      static_value() :: %{
        "Values" => list(String.t()())
      }
      
  """
  @type static_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      max_number_of_retention_configurations_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type max_number_of_retention_configurations_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_organization_config_rule_request() :: %{
        required("OrganizationConfigRuleName") => String.t()
      }
      
  """
  @type delete_organization_config_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_remediation_exceptions_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        optional("ResourceKeys") => list(remediation_exception_resource_key()()),
        required("ConfigRuleName") => String.t()
      }
      
  """
  @type describe_remediation_exceptions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_aggregate_resource_config_request() :: %{
        required("ConfigurationAggregatorName") => String.t(),
        required("ResourceIdentifiers") => list(aggregate_resource_identifier()())
      }
      
  """
  @type batch_get_aggregate_resource_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_conformance_packs_response() :: %{
        "ConformancePackDetails" => list(conformance_pack_detail()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_conformance_packs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      query_info() :: %{
        "SelectFields" => list(field_info()())
      }
      
  """
  @type query_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_compliance_summary_by_config_rule_response() :: %{
        "ComplianceSummary" => compliance_summary()
      }
      
  """
  @type get_compliance_summary_by_config_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_aggregate_resource_config_response() :: %{
        "ConfigurationItem" => configuration_item()
      }
      
  """
  @type get_aggregate_resource_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conformance_pack_template_validation_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type conformance_pack_template_validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_organization_conformance_pack_detailed_status_request() :: %{
        optional("Filters") => organization_resource_detailed_status_filters(),
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        required("OrganizationConformancePackName") => String.t()
      }
      
  """
  @type get_organization_conformance_pack_detailed_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_access_denied_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type organization_access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      no_such_retention_configuration_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type no_such_retention_configuration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remediation_exception_resource_key() :: %{
        "ResourceId" => String.t(),
        "ResourceType" => String.t()
      }
      
  """
  @type remediation_exception_resource_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_configuration_recorder_name_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_configuration_recorder_name_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compliance_summary() :: %{
        "ComplianceSummaryTimestamp" => non_neg_integer(),
        "CompliantResourceCount" => compliance_contributor_count(),
        "NonCompliantResourceCount" => compliance_contributor_count()
      }
      
  """
  @type compliance_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_configuration_recorder_request() :: %{
        required("ConfigurationRecorderName") => String.t()
      }
      
  """
  @type delete_configuration_recorder_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_conformance_pack_request() :: %{
        required("ConformancePackName") => String.t()
      }
      
  """
  @type delete_conformance_pack_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluation_result_qualifier() :: %{
        "ConfigRuleName" => String.t(),
        "EvaluationMode" => list(any()),
        "ResourceId" => String.t(),
        "ResourceType" => String.t()
      }
      
  """
  @type evaluation_result_qualifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_conformance_pack() :: %{
        "ConformancePackInputParameters" => list(conformance_pack_input_parameter()()),
        "DeliveryS3Bucket" => String.t(),
        "DeliveryS3KeyPrefix" => String.t(),
        "ExcludedAccounts" => list(String.t()()),
        "LastUpdateTime" => non_neg_integer(),
        "OrganizationConformancePackArn" => String.t(),
        "OrganizationConformancePackName" => String.t()
      }
      
  """
  @type organization_conformance_pack() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_organization_conformance_packs_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        optional("OrganizationConformancePackNames") => list(String.t()())
      }
      
  """
  @type describe_organization_conformance_packs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_tags_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type too_many_tags_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_compliance_details_by_config_rule_request() :: %{
        optional("ComplianceTypes") => list(list(any())()),
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        required("ConfigRuleName") => String.t()
      }
      
  """
  @type get_compliance_details_by_config_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      config_rule_compliance_filters() :: %{
        "AccountId" => String.t(),
        "AwsRegion" => String.t(),
        "ComplianceType" => list(any()),
        "ConfigRuleName" => String.t()
      }
      
  """
  @type config_rule_compliance_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_organization_custom_rule_policy_request() :: %{
        required("OrganizationConfigRuleName") => String.t()
      }
      
  """
  @type get_organization_custom_rule_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_resource_evaluations_request() :: %{
        optional("Filters") => resource_evaluation_filters(),
        optional("Limit") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_resource_evaluations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aggregate_compliance_count() :: %{
        "ComplianceSummary" => compliance_summary(),
        "GroupName" => String.t()
      }
      
  """
  @type aggregate_compliance_count() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      select_aggregate_resource_config_response() :: %{
        "NextToken" => String.t(),
        "QueryInfo" => query_info(),
        "Results" => list(String.t()())
      }
      
  """
  @type select_aggregate_resource_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      no_such_config_rule_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type no_such_config_rule_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remediation_execution_step() :: %{
        "ErrorMessage" => String.t(),
        "Name" => String.t(),
        "StartTime" => non_neg_integer(),
        "State" => list(any()),
        "StopTime" => non_neg_integer()
      }
      
  """
  @type remediation_execution_step() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      no_such_remediation_configuration_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type no_such_remediation_configuration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_conformance_pack_compliance_response() :: %{
        "ConformancePackName" => String.t(),
        "ConformancePackRuleComplianceList" => list(conformance_pack_rule_compliance()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_conformance_pack_compliance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_configuration_recorder_request() :: %{
        required("ConfigurationRecorder") => configuration_recorder()
      }
      
  """
  @type put_configuration_recorder_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      no_available_configuration_recorder_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type no_available_configuration_recorder_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aggregate_conformance_pack_compliance_summary_filters() :: %{
        "AccountId" => String.t(),
        "AwsRegion" => String.t()
      }
      
  """
  @type aggregate_conformance_pack_compliance_summary_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_custom_policy_rule_metadata_no_policy() :: %{
        "DebugLogDeliveryAccounts" => list(String.t()()),
        "Description" => String.t(),
        "InputParameters" => String.t(),
        "MaximumExecutionFrequency" => list(any()),
        "OrganizationConfigRuleTriggerTypes" => list(list(any())()),
        "PolicyRuntime" => String.t(),
        "ResourceIdScope" => String.t(),
        "ResourceTypesScope" => list(String.t()()),
        "TagKeyScope" => String.t(),
        "TagValueScope" => String.t()
      }
      
  """
  @type organization_custom_policy_rule_metadata_no_policy() :: %{String.t() => any()}

  @type batch_get_aggregate_resource_config_errors() ::
          validation_exception() | no_such_configuration_aggregator_exception()

  @type batch_get_resource_config_errors() ::
          no_available_configuration_recorder_exception() | validation_exception()

  @type delete_aggregation_authorization_errors() :: invalid_parameter_value_exception()

  @type delete_config_rule_errors() ::
          no_such_config_rule_exception() | resource_in_use_exception()

  @type delete_configuration_aggregator_errors() :: no_such_configuration_aggregator_exception()

  @type delete_configuration_recorder_errors() :: no_such_configuration_recorder_exception()

  @type delete_conformance_pack_errors() ::
          no_such_conformance_pack_exception() | resource_in_use_exception()

  @type delete_delivery_channel_errors() ::
          no_such_delivery_channel_exception() | last_delivery_channel_delete_failed_exception()

  @type delete_evaluation_results_errors() ::
          no_such_config_rule_exception() | resource_in_use_exception()

  @type delete_organization_config_rule_errors() ::
          organization_access_denied_exception()
          | no_such_organization_config_rule_exception()
          | resource_in_use_exception()

  @type delete_organization_conformance_pack_errors() ::
          organization_access_denied_exception()
          | no_such_organization_conformance_pack_exception()
          | resource_in_use_exception()

  @type delete_pending_aggregation_request_errors() :: invalid_parameter_value_exception()

  @type delete_remediation_configuration_errors() ::
          no_such_remediation_configuration_exception()
          | invalid_parameter_value_exception()
          | remediation_in_progress_exception()
          | insufficient_permissions_exception()

  @type delete_remediation_exceptions_errors() :: no_such_remediation_exception_exception()

  @type delete_resource_config_errors() ::
          validation_exception() | no_running_configuration_recorder_exception()

  @type delete_retention_configuration_errors() ::
          no_such_retention_configuration_exception() | invalid_parameter_value_exception()

  @type delete_stored_query_errors() :: validation_exception() | resource_not_found_exception()

  @type deliver_config_snapshot_errors() ::
          no_available_configuration_recorder_exception()
          | no_running_configuration_recorder_exception()
          | no_such_delivery_channel_exception()

  @type describe_aggregate_compliance_by_config_rules_errors() ::
          validation_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()
          | no_such_configuration_aggregator_exception()

  @type describe_aggregate_compliance_by_conformance_packs_errors() ::
          validation_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()
          | no_such_configuration_aggregator_exception()

  @type describe_aggregation_authorizations_errors() ::
          invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()

  @type describe_compliance_by_config_rule_errors() ::
          no_such_config_rule_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()

  @type describe_compliance_by_resource_errors() ::
          invalid_parameter_value_exception() | invalid_next_token_exception()

  @type describe_config_rule_evaluation_status_errors() ::
          no_such_config_rule_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()

  @type describe_config_rules_errors() ::
          no_such_config_rule_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()

  @type describe_configuration_aggregator_sources_status_errors() ::
          invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()
          | no_such_configuration_aggregator_exception()

  @type describe_configuration_aggregators_errors() ::
          invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()
          | no_such_configuration_aggregator_exception()

  @type describe_configuration_recorder_status_errors() ::
          no_such_configuration_recorder_exception()

  @type describe_configuration_recorders_errors() :: no_such_configuration_recorder_exception()

  @type describe_conformance_pack_compliance_errors() ::
          no_such_conformance_pack_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | no_such_config_rule_in_conformance_pack_exception()
          | invalid_limit_exception()

  @type describe_conformance_pack_status_errors() ::
          invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()

  @type describe_conformance_packs_errors() ::
          no_such_conformance_pack_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()

  @type describe_delivery_channel_status_errors() :: no_such_delivery_channel_exception()

  @type describe_delivery_channels_errors() :: no_such_delivery_channel_exception()

  @type describe_organization_config_rule_statuses_errors() ::
          organization_access_denied_exception()
          | no_such_organization_config_rule_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()

  @type describe_organization_config_rules_errors() ::
          organization_access_denied_exception()
          | no_such_organization_config_rule_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()

  @type describe_organization_conformance_pack_statuses_errors() ::
          organization_access_denied_exception()
          | no_such_organization_conformance_pack_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()

  @type describe_organization_conformance_packs_errors() ::
          organization_access_denied_exception()
          | no_such_organization_conformance_pack_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()

  @type describe_pending_aggregation_requests_errors() ::
          invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()

  @type describe_remediation_exceptions_errors() ::
          invalid_parameter_value_exception() | invalid_next_token_exception()

  @type describe_remediation_execution_status_errors() ::
          no_such_remediation_configuration_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()

  @type describe_retention_configurations_errors() ::
          no_such_retention_configuration_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()

  @type get_aggregate_compliance_details_by_config_rule_errors() ::
          validation_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()
          | no_such_configuration_aggregator_exception()

  @type get_aggregate_config_rule_compliance_summary_errors() ::
          validation_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()
          | no_such_configuration_aggregator_exception()

  @type get_aggregate_conformance_pack_compliance_summary_errors() ::
          validation_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()
          | no_such_configuration_aggregator_exception()

  @type get_aggregate_discovered_resource_counts_errors() ::
          validation_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()
          | no_such_configuration_aggregator_exception()

  @type get_aggregate_resource_config_errors() ::
          validation_exception()
          | resource_not_discovered_exception()
          | oversized_configuration_item_exception()
          | no_such_configuration_aggregator_exception()

  @type get_compliance_details_by_config_rule_errors() ::
          no_such_config_rule_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()

  @type get_compliance_details_by_resource_errors() :: invalid_parameter_value_exception()

  @type get_compliance_summary_by_resource_type_errors() :: invalid_parameter_value_exception()

  @type get_conformance_pack_compliance_details_errors() ::
          no_such_conformance_pack_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | no_such_config_rule_in_conformance_pack_exception()
          | invalid_limit_exception()

  @type get_conformance_pack_compliance_summary_errors() ::
          no_such_conformance_pack_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()

  @type get_custom_rule_policy_errors() :: no_such_config_rule_exception()

  @type get_discovered_resource_counts_errors() ::
          validation_exception() | invalid_next_token_exception() | invalid_limit_exception()

  @type get_organization_config_rule_detailed_status_errors() ::
          organization_access_denied_exception()
          | no_such_organization_config_rule_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()

  @type get_organization_conformance_pack_detailed_status_errors() ::
          organization_access_denied_exception()
          | no_such_organization_conformance_pack_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()

  @type get_organization_custom_rule_policy_errors() ::
          organization_access_denied_exception() | no_such_organization_config_rule_exception()

  @type get_resource_config_history_errors() ::
          no_available_configuration_recorder_exception()
          | validation_exception()
          | resource_not_discovered_exception()
          | invalid_next_token_exception()
          | invalid_time_range_exception()
          | invalid_limit_exception()

  @type get_resource_evaluation_summary_errors() :: resource_not_found_exception()

  @type get_stored_query_errors() :: validation_exception() | resource_not_found_exception()

  @type list_aggregate_discovered_resources_errors() ::
          validation_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()
          | no_such_configuration_aggregator_exception()

  @type list_conformance_pack_compliance_scores_errors() ::
          invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()

  @type list_discovered_resources_errors() ::
          no_available_configuration_recorder_exception()
          | validation_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()

  @type list_resource_evaluations_errors() ::
          invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | invalid_time_range_exception()

  @type list_stored_queries_errors() :: validation_exception() | invalid_next_token_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | invalid_limit_exception()

  @type put_aggregation_authorization_errors() :: invalid_parameter_value_exception()

  @type put_config_rule_errors() ::
          no_available_configuration_recorder_exception()
          | invalid_parameter_value_exception()
          | max_number_of_config_rules_exceeded_exception()
          | resource_in_use_exception()
          | insufficient_permissions_exception()

  @type put_configuration_aggregator_errors() ::
          organization_access_denied_exception()
          | limit_exceeded_exception()
          | no_available_organization_exception()
          | invalid_role_exception()
          | invalid_parameter_value_exception()
          | organization_all_features_not_enabled_exception()

  @type put_configuration_recorder_errors() ::
          invalid_configuration_recorder_name_exception()
          | validation_exception()
          | invalid_role_exception()
          | max_number_of_configuration_recorders_exceeded_exception()
          | invalid_recording_group_exception()

  @type put_conformance_pack_errors() ::
          conformance_pack_template_validation_exception()
          | max_number_of_conformance_packs_exceeded_exception()
          | invalid_parameter_value_exception()
          | resource_in_use_exception()
          | insufficient_permissions_exception()

  @type put_delivery_channel_errors() ::
          no_available_configuration_recorder_exception()
          | invalid_s3_key_prefix_exception()
          | no_such_bucket_exception()
          | invalid_s3_kms_key_arn_exception()
          | invalid_delivery_channel_name_exception()
          | invalid_s_n_s_topic_arn_exception()
          | insufficient_delivery_policy_exception()
          | max_number_of_delivery_channels_exceeded_exception()

  @type put_evaluations_errors() ::
          no_such_config_rule_exception()
          | invalid_parameter_value_exception()
          | invalid_result_token_exception()

  @type put_external_evaluation_errors() ::
          no_such_config_rule_exception() | invalid_parameter_value_exception()

  @type put_organization_config_rule_errors() ::
          organization_access_denied_exception()
          | no_available_organization_exception()
          | validation_exception()
          | invalid_parameter_value_exception()
          | max_number_of_organization_config_rules_exceeded_exception()
          | resource_in_use_exception()
          | insufficient_permissions_exception()
          | organization_all_features_not_enabled_exception()

  @type put_organization_conformance_pack_errors() ::
          organization_access_denied_exception()
          | no_available_organization_exception()
          | validation_exception()
          | max_number_of_organization_conformance_packs_exceeded_exception()
          | resource_in_use_exception()
          | insufficient_permissions_exception()
          | organization_all_features_not_enabled_exception()
          | organization_conformance_pack_template_validation_exception()

  @type put_remediation_configurations_errors() ::
          invalid_parameter_value_exception() | insufficient_permissions_exception()

  @type put_remediation_exceptions_errors() ::
          invalid_parameter_value_exception() | insufficient_permissions_exception()

  @type put_resource_config_errors() ::
          max_active_resources_exceeded_exception()
          | validation_exception()
          | no_running_configuration_recorder_exception()
          | insufficient_permissions_exception()

  @type put_retention_configuration_errors() ::
          max_number_of_retention_configurations_exceeded_exception()
          | invalid_parameter_value_exception()

  @type put_stored_query_errors() ::
          too_many_tags_exception()
          | resource_concurrent_modification_exception()
          | validation_exception()

  @type select_aggregate_resource_config_errors() ::
          invalid_expression_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()
          | no_such_configuration_aggregator_exception()

  @type select_resource_config_errors() ::
          invalid_expression_exception()
          | invalid_next_token_exception()
          | invalid_limit_exception()

  @type start_config_rules_evaluation_errors() ::
          no_such_config_rule_exception()
          | limit_exceeded_exception()
          | invalid_parameter_value_exception()
          | resource_in_use_exception()

  @type start_configuration_recorder_errors() ::
          no_such_configuration_recorder_exception() | no_available_delivery_channel_exception()

  @type start_remediation_execution_errors() ::
          no_such_remediation_configuration_exception()
          | invalid_parameter_value_exception()
          | insufficient_permissions_exception()

  @type start_resource_evaluation_errors() ::
          invalid_parameter_value_exception() | idempotent_parameter_mismatch()

  @type stop_configuration_recorder_errors() :: no_such_configuration_recorder_exception()

  @type tag_resource_errors() ::
          too_many_tags_exception() | validation_exception() | resource_not_found_exception()

  @type untag_resource_errors() :: validation_exception() | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2014-11-12",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "config",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Config Service",
      signature_version: "v4",
      signing_name: "config",
      target_prefix: "StarlingDoveService"
    }
  end

  @doc """
  Returns the current configuration items for resources that are present in your
  Config aggregator. The operation also returns a list of resources that are not
  processed in the current request. If there are no unprocessed resources, the
  operation returns an empty `unprocessedResourceIdentifiers` list.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20BatchGetAggregateResourceConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:batch_get_aggregate_resource_config_request`)
    %{
      required("ConfigurationAggregatorName") => String.t(),
      required("ResourceIdentifiers") => list(aggregate_resource_identifier()())
    }
  """

  @spec batch_get_aggregate_resource_config(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, batch_get_aggregate_resource_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_get_aggregate_resource_config_errors()}

  def batch_get_aggregate_resource_config(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "BatchGetAggregateResourceConfig", input, options)
  end

  @doc """
  Returns the `BaseConfigurationItem` for one or more requested resources. The
  operation also returns a list of resources that are not processed in the
  current request. If there are no unprocessed resources, the operation returns
  an empty unprocessedResourceKeys list.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20BatchGetResourceConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:batch_get_resource_config_request`)
    %{
      required("resourceKeys") => list(resource_key()())
    }
  """

  @spec batch_get_resource_config(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, batch_get_resource_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_get_resource_config_errors()}

  def batch_get_resource_config(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "BatchGetResourceConfig", input, options)
  end

  @doc """
  Deletes the authorization granted to the specified configuration aggregator
  account in a specified region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20DeleteAggregationAuthorization&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_aggregation_authorization_request`)
    %{
      required("AuthorizedAccountId") => String.t(),
      required("AuthorizedAwsRegion") => String.t()
    }
  """

  @spec delete_aggregation_authorization(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_aggregation_authorization_errors()}

  def delete_aggregation_authorization(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteAggregationAuthorization", input, options)
  end

  @doc """
  Deletes the specified Config rule and all of its evaluation results. Config sets
  the state of a rule to `DELETING` until the deletion is complete. You cannot
  update a rule while it is in this state. If you make a `PutConfigRule` or
  `DeleteConfigRule` request for the rule, you will receive a
  `ResourceInUseException`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20DeleteConfigRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_config_rule_request`)
    %{
      required("ConfigRuleName") => String.t()
    }
  """

  @spec delete_config_rule(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_config_rule_errors()}

  def delete_config_rule(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteConfigRule", input, options)
  end

  @doc """
  Deletes the specified configuration aggregator and the aggregated data
  associated with the aggregator.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20DeleteConfigurationAggregator&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_configuration_aggregator_request`)
    %{
      required("ConfigurationAggregatorName") => String.t()
    }
  """

  @spec delete_configuration_aggregator(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_configuration_aggregator_errors()}

  def delete_configuration_aggregator(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteConfigurationAggregator", input, options)
  end

  @doc """
  Deletes the configuration recorder. After the configuration recorder is deleted,
  Config will not record resource configuration changes until you create a new
  configuration recorder.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20DeleteConfigurationRecorder&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_configuration_recorder_request`)
    %{
      required("ConfigurationRecorderName") => String.t()
    }
  """

  @spec delete_configuration_recorder(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_configuration_recorder_errors()}

  def delete_configuration_recorder(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteConfigurationRecorder", input, options)
  end

  @doc """
  Deletes the specified conformance pack and all the Config rules, remediation
  actions, and all evaluation results within that conformance pack.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20DeleteConformancePack&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_conformance_pack_request`)
    %{
      required("ConformancePackName") => String.t()
    }
  """

  @spec delete_conformance_pack(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_conformance_pack_errors()}

  def delete_conformance_pack(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteConformancePack", input, options)
  end

  @doc """
  Deletes the delivery channel.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20DeleteDeliveryChannel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_delivery_channel_request`)
    %{
      required("DeliveryChannelName") => String.t()
    }
  """

  @spec delete_delivery_channel(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_delivery_channel_errors()}

  def delete_delivery_channel(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteDeliveryChannel", input, options)
  end

  @doc """
  Deletes the evaluation results for the specified Config rule. You can specify
  one Config rule per request. After you delete the evaluation results, you can
  call the `StartConfigRulesEvaluation` API to start evaluating your Amazon Web
  Services resources against the rule.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20DeleteEvaluationResults&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_evaluation_results_request`)
    %{
      required("ConfigRuleName") => String.t()
    }
  """

  @spec delete_evaluation_results(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_evaluation_results_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_evaluation_results_errors()}

  def delete_evaluation_results(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteEvaluationResults", input, options)
  end

  @doc """
  Deletes the specified organization Config rule and all of its evaluation results
  from all member accounts in that organization. Only a management account and a
  delegated administrator account can delete an organization Config rule. When
  calling this API with a delegated administrator, you must ensure Organizations
  `ListDelegatedAdministrator` permissions are added.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20DeleteOrganizationConfigRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_organization_config_rule_request`)
    %{
      required("OrganizationConfigRuleName") => String.t()
    }
  """

  @spec delete_organization_config_rule(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_organization_config_rule_errors()}

  def delete_organization_config_rule(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteOrganizationConfigRule", input, options)
  end

  @doc """
  Deletes the specified organization conformance pack and all of the Config rules
  and remediation actions from all member accounts in that organization. Only a
  management account or a delegated administrator account can delete an
  organization conformance pack. When calling this API with a delegated
  administrator, you must ensure Organizations `ListDelegatedAdministrator`
  permissions are added.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20DeleteOrganizationConformancePack&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_organization_conformance_pack_request`)
    %{
      required("OrganizationConformancePackName") => String.t()
    }
  """

  @spec delete_organization_conformance_pack(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_organization_conformance_pack_errors()}

  def delete_organization_conformance_pack(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteOrganizationConformancePack", input, options)
  end

  @doc """
  Deletes pending authorization requests for a specified aggregator account in a
  specified region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20DeletePendingAggregationRequest&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_pending_aggregation_request_request`)
    %{
      required("RequesterAccountId") => String.t(),
      required("RequesterAwsRegion") => String.t()
    }
  """

  @spec delete_pending_aggregation_request(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_pending_aggregation_request_errors()}

  def delete_pending_aggregation_request(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeletePendingAggregationRequest", input, options)
  end

  @doc """
  Deletes the remediation configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20DeleteRemediationConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_remediation_configuration_request`)
    %{
      optional("ResourceType") => String.t(),
      required("ConfigRuleName") => String.t()
    }
  """

  @spec delete_remediation_configuration(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_remediation_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_remediation_configuration_errors()}

  def delete_remediation_configuration(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteRemediationConfiguration", input, options)
  end

  @doc """
  Deletes one or more remediation exceptions mentioned in the resource keys.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20DeleteRemediationExceptions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_remediation_exceptions_request`)
    %{
      required("ConfigRuleName") => String.t(),
      required("ResourceKeys") => list(remediation_exception_resource_key()())
    }
  """

  @spec delete_remediation_exceptions(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_remediation_exceptions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_remediation_exceptions_errors()}

  def delete_remediation_exceptions(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteRemediationExceptions", input, options)
  end

  @doc """
  Records the configuration state for a custom resource that has been deleted.
  This API records a new ConfigurationItem with a ResourceDeleted status. You
  can retrieve the ConfigurationItems recorded for this resource in your Config
  History.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20DeleteResourceConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_resource_config_request`)
    %{
      required("ResourceId") => String.t(),
      required("ResourceType") => String.t()
    }
  """

  @spec delete_resource_config(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_resource_config_errors()}

  def delete_resource_config(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteResourceConfig", input, options)
  end

  @doc """
  Deletes the retention configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20DeleteRetentionConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_retention_configuration_request`)
    %{
      required("RetentionConfigurationName") => String.t()
    }
  """

  @spec delete_retention_configuration(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_retention_configuration_errors()}

  def delete_retention_configuration(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteRetentionConfiguration", input, options)
  end

  @doc """
  Deletes the stored query for a single Amazon Web Services account and a single
  Amazon Web Services Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20DeleteStoredQuery&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_stored_query_request`)
    %{
      required("QueryName") => String.t()
    }
  """

  @spec delete_stored_query(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_stored_query_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_stored_query_errors()}

  def delete_stored_query(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteStoredQuery", input, options)
  end

  @doc """
  Schedules delivery of a configuration snapshot to the Amazon S3 bucket in the
  specified delivery channel. After the delivery has started, Config sends the
  following notifications using an Amazon SNS topic that you have specified.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20DeliverConfigSnapshot&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:deliver_config_snapshot_request`)
    %{
      required("deliveryChannelName") => String.t()
    }
  """

  @spec deliver_config_snapshot(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, deliver_config_snapshot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deliver_config_snapshot_errors()}

  def deliver_config_snapshot(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeliverConfigSnapshot", input, options)
  end

  @doc """
  Returns a list of compliant and noncompliant rules with the number of resources
  for compliant and noncompliant rules. Does not display rules that do not have
  compliance results.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20DescribeAggregateComplianceByConfigRules&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_aggregate_compliance_by_config_rules_request`)
    %{
      optional("Filters") => config_rule_compliance_filters(),
      optional("Limit") => integer(),
      optional("NextToken") => String.t(),
      required("ConfigurationAggregatorName") => String.t()
    }
  """

  @spec describe_aggregate_compliance_by_config_rules(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_aggregate_compliance_by_config_rules_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_aggregate_compliance_by_config_rules_errors()}

  def describe_aggregate_compliance_by_config_rules(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeAggregateComplianceByConfigRules", input, options)
  end

  @doc """
  Returns a list of the conformance packs and their associated compliance status
  with the count of compliant and noncompliant Config rules within each
  conformance pack. Also returns the total rule count which includes compliant
  rules, noncompliant rules, and rules that cannot be evaluated due to
  insufficient data.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20DescribeAggregateComplianceByConformancePacks&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_aggregate_compliance_by_conformance_packs_request`)
    %{
      optional("Filters") => aggregate_conformance_pack_compliance_filters(),
      optional("Limit") => integer(),
      optional("NextToken") => String.t(),
      required("ConfigurationAggregatorName") => String.t()
    }
  """

  @spec describe_aggregate_compliance_by_conformance_packs(
          AWS.Client.t(),
          input :: map(),
          Keyword.t()
        ) ::
          {:ok, describe_aggregate_compliance_by_conformance_packs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_aggregate_compliance_by_conformance_packs_errors()}

  def describe_aggregate_compliance_by_conformance_packs(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(
      client,
      meta,
      "DescribeAggregateComplianceByConformancePacks",
      input,
      options
    )
  end

  @doc """
  Returns a list of authorizations granted to various aggregator accounts and
  regions.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20DescribeAggregationAuthorizations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_aggregation_authorizations_request`)
    %{
      optional("Limit") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec describe_aggregation_authorizations(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_aggregation_authorizations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_aggregation_authorizations_errors()}

  def describe_aggregation_authorizations(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeAggregationAuthorizations", input, options)
  end

  @doc """
  Indicates whether the specified Config rules are compliant. If a rule is
  noncompliant, this action returns the number of Amazon Web Services resources
  that do not comply with the rule. A rule is compliant if all of the evaluated
  resources comply with it. It is noncompliant if any of these resources do not
  comply.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20DescribeComplianceByConfigRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_compliance_by_config_rule_request`)
    %{
      optional("ComplianceTypes") => list(list(any())()),
      optional("ConfigRuleNames") => list(String.t()()),
      optional("NextToken") => String.t()
    }
  """

  @spec describe_compliance_by_config_rule(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_compliance_by_config_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_compliance_by_config_rule_errors()}

  def describe_compliance_by_config_rule(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeComplianceByConfigRule", input, options)
  end

  @doc """
  Indicates whether the specified Amazon Web Services resources are compliant. If
  a resource is noncompliant, this action returns the number of Config rules
  that the resource does not comply with. A resource is compliant if it complies
  with all the Config rules that evaluate it. It is noncompliant if it does not
  comply with one or more of these rules.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20DescribeComplianceByResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_compliance_by_resource_request`)
    %{
      optional("ComplianceTypes") => list(list(any())()),
      optional("Limit") => integer(),
      optional("NextToken") => String.t(),
      optional("ResourceId") => String.t(),
      optional("ResourceType") => String.t()
    }
  """

  @spec describe_compliance_by_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_compliance_by_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_compliance_by_resource_errors()}

  def describe_compliance_by_resource(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeComplianceByResource", input, options)
  end

  @doc """
  Returns status information for each of your Config managed rules. The status
  includes information such as the last time Config invoked the rule, the last
  time Config failed to invoke the rule, and the related error for the last
  failure.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20DescribeConfigRuleEvaluationStatus&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_config_rule_evaluation_status_request`)
    %{
      optional("ConfigRuleNames") => list(String.t()()),
      optional("Limit") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec describe_config_rule_evaluation_status(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_config_rule_evaluation_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_config_rule_evaluation_status_errors()}

  def describe_config_rule_evaluation_status(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeConfigRuleEvaluationStatus", input, options)
  end

  @doc """
  Returns details about your Config rules.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20DescribeConfigRules&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_config_rules_request`)
    %{
      optional("ConfigRuleNames") => list(String.t()()),
      optional("Filters") => describe_config_rules_filters(),
      optional("NextToken") => String.t()
    }
  """

  @spec describe_config_rules(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_config_rules_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_config_rules_errors()}

  def describe_config_rules(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeConfigRules", input, options)
  end

  @doc """
  Returns status information for sources within an aggregator. The status includes
  information about the last time Config verified authorization between the
  source account and an aggregator account. In case of a failure, the status
  contains the related error code or message.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20DescribeConfigurationAggregatorSourcesStatus&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_configuration_aggregator_sources_status_request`)
    %{
      optional("Limit") => integer(),
      optional("NextToken") => String.t(),
      optional("UpdateStatus") => list(list(any())()),
      required("ConfigurationAggregatorName") => String.t()
    }
  """

  @spec describe_configuration_aggregator_sources_status(
          AWS.Client.t(),
          input :: map(),
          Keyword.t()
        ) ::
          {:ok, describe_configuration_aggregator_sources_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_configuration_aggregator_sources_status_errors()}

  def describe_configuration_aggregator_sources_status(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(
      client,
      meta,
      "DescribeConfigurationAggregatorSourcesStatus",
      input,
      options
    )
  end

  @doc """
  Returns the details of one or more configuration aggregators. If the
  configuration aggregator is not specified, this action returns the details for
  all the configuration aggregators associated with the account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20DescribeConfigurationAggregators&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_configuration_aggregators_request`)
    %{
      optional("ConfigurationAggregatorNames") => list(String.t()()),
      optional("Limit") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec describe_configuration_aggregators(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_configuration_aggregators_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_configuration_aggregators_errors()}

  def describe_configuration_aggregators(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeConfigurationAggregators", input, options)
  end

  @doc """
  Returns the current status of the specified configuration recorder as well as
  the status of the last recording event for the recorder. If a configuration
  recorder is not specified, this action returns the status of all configuration
  recorders associated with the account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20DescribeConfigurationRecorderStatus&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_configuration_recorder_status_request`)
    %{
      optional("ConfigurationRecorderNames") => list(String.t()())
    }
  """

  @spec describe_configuration_recorder_status(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_configuration_recorder_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_configuration_recorder_status_errors()}

  def describe_configuration_recorder_status(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeConfigurationRecorderStatus", input, options)
  end

  @doc """
  Returns the details for the specified configuration recorders. If the
  configuration recorder is not specified, this action returns the details for
  all configuration recorders associated with the account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20DescribeConfigurationRecorders&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_configuration_recorders_request`)
    %{
      optional("ConfigurationRecorderNames") => list(String.t()())
    }
  """

  @spec describe_configuration_recorders(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_configuration_recorders_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_configuration_recorders_errors()}

  def describe_configuration_recorders(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeConfigurationRecorders", input, options)
  end

  @doc """
  Returns compliance details for each rule in that conformance pack.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20DescribeConformancePackCompliance&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_conformance_pack_compliance_request`)
    %{
      optional("Filters") => conformance_pack_compliance_filters(),
      optional("Limit") => integer(),
      optional("NextToken") => String.t(),
      required("ConformancePackName") => String.t()
    }
  """

  @spec describe_conformance_pack_compliance(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_conformance_pack_compliance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_conformance_pack_compliance_errors()}

  def describe_conformance_pack_compliance(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeConformancePackCompliance", input, options)
  end

  @doc """
  Provides one or more conformance packs deployment status.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20DescribeConformancePackStatus&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_conformance_pack_status_request`)
    %{
      optional("ConformancePackNames") => list(String.t()()),
      optional("Limit") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec describe_conformance_pack_status(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_conformance_pack_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_conformance_pack_status_errors()}

  def describe_conformance_pack_status(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeConformancePackStatus", input, options)
  end

  @doc """
  Returns a list of one or more conformance packs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20DescribeConformancePacks&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_conformance_packs_request`)
    %{
      optional("ConformancePackNames") => list(String.t()()),
      optional("Limit") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec describe_conformance_packs(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_conformance_packs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_conformance_packs_errors()}

  def describe_conformance_packs(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeConformancePacks", input, options)
  end

  @doc """
  Returns the current status of the specified delivery channel. If a delivery
  channel is not specified, this action returns the current status of all
  delivery channels associated with the account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20DescribeDeliveryChannelStatus&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_delivery_channel_status_request`)
    %{
      optional("DeliveryChannelNames") => list(String.t()())
    }
  """

  @spec describe_delivery_channel_status(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_delivery_channel_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_delivery_channel_status_errors()}

  def describe_delivery_channel_status(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeDeliveryChannelStatus", input, options)
  end

  @doc """
  Returns details about the specified delivery channel. If a delivery channel is
  not specified, this action returns the details of all delivery channels
  associated with the account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20DescribeDeliveryChannels&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_delivery_channels_request`)
    %{
      optional("DeliveryChannelNames") => list(String.t()())
    }
  """

  @spec describe_delivery_channels(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_delivery_channels_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_delivery_channels_errors()}

  def describe_delivery_channels(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeDeliveryChannels", input, options)
  end

  @doc """
  Provides organization Config rule deployment status for an organization.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20DescribeOrganizationConfigRuleStatuses&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_organization_config_rule_statuses_request`)
    %{
      optional("Limit") => integer(),
      optional("NextToken") => String.t(),
      optional("OrganizationConfigRuleNames") => list(String.t()())
    }
  """

  @spec describe_organization_config_rule_statuses(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_organization_config_rule_statuses_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_organization_config_rule_statuses_errors()}

  def describe_organization_config_rule_statuses(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeOrganizationConfigRuleStatuses", input, options)
  end

  @doc """
  Returns a list of organization Config rules.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20DescribeOrganizationConfigRules&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_organization_config_rules_request`)
    %{
      optional("Limit") => integer(),
      optional("NextToken") => String.t(),
      optional("OrganizationConfigRuleNames") => list(String.t()())
    }
  """

  @spec describe_organization_config_rules(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_organization_config_rules_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_organization_config_rules_errors()}

  def describe_organization_config_rules(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeOrganizationConfigRules", input, options)
  end

  @doc """
  Provides organization conformance pack deployment status for an organization.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20DescribeOrganizationConformancePackStatuses&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_organization_conformance_pack_statuses_request`)
    %{
      optional("Limit") => integer(),
      optional("NextToken") => String.t(),
      optional("OrganizationConformancePackNames") => list(String.t()())
    }
  """

  @spec describe_organization_conformance_pack_statuses(
          AWS.Client.t(),
          input :: map(),
          Keyword.t()
        ) ::
          {:ok, describe_organization_conformance_pack_statuses_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_organization_conformance_pack_statuses_errors()}

  def describe_organization_conformance_pack_statuses(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(
      client,
      meta,
      "DescribeOrganizationConformancePackStatuses",
      input,
      options
    )
  end

  @doc """
  Returns a list of organization conformance packs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20DescribeOrganizationConformancePacks&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_organization_conformance_packs_request`)
    %{
      optional("Limit") => integer(),
      optional("NextToken") => String.t(),
      optional("OrganizationConformancePackNames") => list(String.t()())
    }
  """

  @spec describe_organization_conformance_packs(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_organization_conformance_packs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_organization_conformance_packs_errors()}

  def describe_organization_conformance_packs(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeOrganizationConformancePacks", input, options)
  end

  @doc """
  Returns a list of all pending aggregation requests.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20DescribePendingAggregationRequests&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_pending_aggregation_requests_request`)
    %{
      optional("Limit") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec describe_pending_aggregation_requests(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_pending_aggregation_requests_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_pending_aggregation_requests_errors()}

  def describe_pending_aggregation_requests(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribePendingAggregationRequests", input, options)
  end

  @doc """
  Returns the details of one or more remediation configurations.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20DescribeRemediationConfigurations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_remediation_configurations_request`)
    %{
      required("ConfigRuleNames") => list(String.t()())
    }
  """

  @spec describe_remediation_configurations(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_remediation_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def describe_remediation_configurations(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeRemediationConfigurations", input, options)
  end

  @doc """
  Returns the details of one or more remediation exceptions. A detailed view of a
  remediation exception for a set of resources that includes an explanation of
  an exception and the time when the exception will be deleted. When you specify
  the limit and the next token, you receive a paginated response.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20DescribeRemediationExceptions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_remediation_exceptions_request`)
    %{
      optional("Limit") => integer(),
      optional("NextToken") => String.t(),
      optional("ResourceKeys") => list(remediation_exception_resource_key()()),
      required("ConfigRuleName") => String.t()
    }
  """

  @spec describe_remediation_exceptions(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_remediation_exceptions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_remediation_exceptions_errors()}

  def describe_remediation_exceptions(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeRemediationExceptions", input, options)
  end

  @doc """
  Provides a detailed view of a Remediation Execution for a set of resources
  including state, timestamps for when steps for the remediation execution
  occur, and any error messages for steps that have failed. When you specify the
  limit and the next token, you receive a paginated response.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20DescribeRemediationExecutionStatus&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_remediation_execution_status_request`)
    %{
      optional("Limit") => integer(),
      optional("NextToken") => String.t(),
      optional("ResourceKeys") => list(resource_key()()),
      required("ConfigRuleName") => String.t()
    }
  """

  @spec describe_remediation_execution_status(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_remediation_execution_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_remediation_execution_status_errors()}

  def describe_remediation_execution_status(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeRemediationExecutionStatus", input, options)
  end

  @doc """
  Returns the details of one or more retention configurations. If the retention
  configuration name is not specified, this action returns the details for all
  the retention configurations for that account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20DescribeRetentionConfigurations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_retention_configurations_request`)
    %{
      optional("NextToken") => String.t(),
      optional("RetentionConfigurationNames") => list(String.t()())
    }
  """

  @spec describe_retention_configurations(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_retention_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_retention_configurations_errors()}

  def describe_retention_configurations(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeRetentionConfigurations", input, options)
  end

  @doc """
  Returns the evaluation results for the specified Config rule for a specific
  resource in a rule. The results indicate which Amazon Web Services resources
  were evaluated by the rule, when each resource was last evaluated, and whether
  each resource complies with the rule.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20GetAggregateComplianceDetailsByConfigRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_aggregate_compliance_details_by_config_rule_request`)
    %{
      optional("ComplianceType") => list(any()),
      optional("Limit") => integer(),
      optional("NextToken") => String.t(),
      required("AccountId") => String.t(),
      required("AwsRegion") => String.t(),
      required("ConfigRuleName") => String.t(),
      required("ConfigurationAggregatorName") => String.t()
    }
  """

  @spec get_aggregate_compliance_details_by_config_rule(
          AWS.Client.t(),
          input :: map(),
          Keyword.t()
        ) ::
          {:ok, get_aggregate_compliance_details_by_config_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_aggregate_compliance_details_by_config_rule_errors()}

  def get_aggregate_compliance_details_by_config_rule(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(
      client,
      meta,
      "GetAggregateComplianceDetailsByConfigRule",
      input,
      options
    )
  end

  @doc """
  Returns the number of compliant and noncompliant rules for one or more accounts
  and regions in an aggregator.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20GetAggregateConfigRuleComplianceSummary&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_aggregate_config_rule_compliance_summary_request`)
    %{
      optional("Filters") => config_rule_compliance_summary_filters(),
      optional("GroupByKey") => list(any()),
      optional("Limit") => integer(),
      optional("NextToken") => String.t(),
      required("ConfigurationAggregatorName") => String.t()
    }
  """

  @spec get_aggregate_config_rule_compliance_summary(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_aggregate_config_rule_compliance_summary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_aggregate_config_rule_compliance_summary_errors()}

  def get_aggregate_config_rule_compliance_summary(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetAggregateConfigRuleComplianceSummary", input, options)
  end

  @doc """
  Returns the count of compliant and noncompliant conformance packs across all
  Amazon Web Services accounts and Amazon Web Services Regions in an aggregator.
  You can filter based on Amazon Web Services account ID or Amazon Web Services
  Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20GetAggregateConformancePackComplianceSummary&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_aggregate_conformance_pack_compliance_summary_request`)
    %{
      optional("Filters") => aggregate_conformance_pack_compliance_summary_filters(),
      optional("GroupByKey") => list(any()),
      optional("Limit") => integer(),
      optional("NextToken") => String.t(),
      required("ConfigurationAggregatorName") => String.t()
    }
  """

  @spec get_aggregate_conformance_pack_compliance_summary(
          AWS.Client.t(),
          input :: map(),
          Keyword.t()
        ) ::
          {:ok, get_aggregate_conformance_pack_compliance_summary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_aggregate_conformance_pack_compliance_summary_errors()}

  def get_aggregate_conformance_pack_compliance_summary(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(
      client,
      meta,
      "GetAggregateConformancePackComplianceSummary",
      input,
      options
    )
  end

  @doc """
  Returns the resource counts across accounts and regions that are present in your
  Config aggregator. You can request the resource counts by providing filters
  and GroupByKey.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20GetAggregateDiscoveredResourceCounts&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_aggregate_discovered_resource_counts_request`)
    %{
      optional("Filters") => resource_count_filters(),
      optional("GroupByKey") => list(any()),
      optional("Limit") => integer(),
      optional("NextToken") => String.t(),
      required("ConfigurationAggregatorName") => String.t()
    }
  """

  @spec get_aggregate_discovered_resource_counts(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_aggregate_discovered_resource_counts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_aggregate_discovered_resource_counts_errors()}

  def get_aggregate_discovered_resource_counts(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetAggregateDiscoveredResourceCounts", input, options)
  end

  @doc """
  Returns configuration item that is aggregated for your specific resource in a
  specific source account and region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20GetAggregateResourceConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_aggregate_resource_config_request`)
    %{
      required("ConfigurationAggregatorName") => String.t(),
      required("ResourceIdentifier") => aggregate_resource_identifier()
    }
  """

  @spec get_aggregate_resource_config(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_aggregate_resource_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_aggregate_resource_config_errors()}

  def get_aggregate_resource_config(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetAggregateResourceConfig", input, options)
  end

  @doc """
  Returns the evaluation results for the specified Config rule. The results
  indicate which Amazon Web Services resources were evaluated by the rule, when
  each resource was last evaluated, and whether each resource complies with the
  rule.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20GetComplianceDetailsByConfigRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_compliance_details_by_config_rule_request`)
    %{
      optional("ComplianceTypes") => list(list(any())()),
      optional("Limit") => integer(),
      optional("NextToken") => String.t(),
      required("ConfigRuleName") => String.t()
    }
  """

  @spec get_compliance_details_by_config_rule(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_compliance_details_by_config_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_compliance_details_by_config_rule_errors()}

  def get_compliance_details_by_config_rule(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetComplianceDetailsByConfigRule", input, options)
  end

  @doc """
  Returns the evaluation results for the specified Amazon Web Services resource.
  The results indicate which Config rules were used to evaluate the resource,
  when each rule was last invoked, and whether the resource complies with each
  rule.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20GetComplianceDetailsByResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_compliance_details_by_resource_request`)
    %{
      optional("ComplianceTypes") => list(list(any())()),
      optional("NextToken") => String.t(),
      optional("ResourceEvaluationId") => String.t(),
      optional("ResourceId") => String.t(),
      optional("ResourceType") => String.t()
    }
  """

  @spec get_compliance_details_by_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_compliance_details_by_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_compliance_details_by_resource_errors()}

  def get_compliance_details_by_resource(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetComplianceDetailsByResource", input, options)
  end

  @doc """
  Returns the number of Config rules that are compliant and noncompliant, up to a
  maximum of 25 for each.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20GetComplianceSummaryByConfigRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:%{}`)
  """

  @spec get_compliance_summary_by_config_rule(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_compliance_summary_by_config_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def get_compliance_summary_by_config_rule(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetComplianceSummaryByConfigRule", input, options)
  end

  @doc """
  Returns the number of resources that are compliant and the number that are
  noncompliant. You can specify one or more resource types to get these numbers
  for each resource type. The maximum number returned is 100.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20GetComplianceSummaryByResourceType&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_compliance_summary_by_resource_type_request`)
    %{
      optional("ResourceTypes") => list(String.t()())
    }
  """

  @spec get_compliance_summary_by_resource_type(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_compliance_summary_by_resource_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_compliance_summary_by_resource_type_errors()}

  def get_compliance_summary_by_resource_type(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetComplianceSummaryByResourceType", input, options)
  end

  @doc """
  Returns compliance details of a conformance pack for all Amazon Web Services
  resources that are monitered by conformance pack.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20GetConformancePackComplianceDetails&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_conformance_pack_compliance_details_request`)
    %{
      optional("Filters") => conformance_pack_evaluation_filters(),
      optional("Limit") => integer(),
      optional("NextToken") => String.t(),
      required("ConformancePackName") => String.t()
    }
  """

  @spec get_conformance_pack_compliance_details(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_conformance_pack_compliance_details_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_conformance_pack_compliance_details_errors()}

  def get_conformance_pack_compliance_details(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetConformancePackComplianceDetails", input, options)
  end

  @doc """
  Returns compliance details for the conformance pack based on the cumulative
  compliance results of all the rules in that conformance pack.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20GetConformancePackComplianceSummary&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_conformance_pack_compliance_summary_request`)
    %{
      optional("Limit") => integer(),
      optional("NextToken") => String.t(),
      required("ConformancePackNames") => list(String.t()())
    }
  """

  @spec get_conformance_pack_compliance_summary(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_conformance_pack_compliance_summary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_conformance_pack_compliance_summary_errors()}

  def get_conformance_pack_compliance_summary(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetConformancePackComplianceSummary", input, options)
  end

  @doc """
  Returns the policy definition containing the logic for your Config Custom Policy
  rule.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20GetCustomRulePolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_custom_rule_policy_request`)
    %{
      optional("ConfigRuleName") => String.t()
    }
  """

  @spec get_custom_rule_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_custom_rule_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_custom_rule_policy_errors()}

  def get_custom_rule_policy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetCustomRulePolicy", input, options)
  end

  @doc """
  Returns the resource types, the number of each resource type, and the total
  number of resources that Config is recording in this region for your Amazon
  Web Services account. **Example**

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20GetDiscoveredResourceCounts&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_discovered_resource_counts_request`)
    %{
      optional("limit") => integer(),
      optional("nextToken") => String.t(),
      optional("resourceTypes") => list(String.t()())
    }
  """

  @spec get_discovered_resource_counts(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_discovered_resource_counts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_discovered_resource_counts_errors()}

  def get_discovered_resource_counts(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDiscoveredResourceCounts", input, options)
  end

  @doc """
  Returns detailed status for each member account within an organization for a
  given organization Config rule.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20GetOrganizationConfigRuleDetailedStatus&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_organization_config_rule_detailed_status_request`)
    %{
      optional("Filters") => status_detail_filters(),
      optional("Limit") => integer(),
      optional("NextToken") => String.t(),
      required("OrganizationConfigRuleName") => String.t()
    }
  """

  @spec get_organization_config_rule_detailed_status(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_organization_config_rule_detailed_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_organization_config_rule_detailed_status_errors()}

  def get_organization_config_rule_detailed_status(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetOrganizationConfigRuleDetailedStatus", input, options)
  end

  @doc """
  Returns detailed status for each member account within an organization for a
  given organization conformance pack.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20GetOrganizationConformancePackDetailedStatus&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_organization_conformance_pack_detailed_status_request`)
    %{
      optional("Filters") => organization_resource_detailed_status_filters(),
      optional("Limit") => integer(),
      optional("NextToken") => String.t(),
      required("OrganizationConformancePackName") => String.t()
    }
  """

  @spec get_organization_conformance_pack_detailed_status(
          AWS.Client.t(),
          input :: map(),
          Keyword.t()
        ) ::
          {:ok, get_organization_conformance_pack_detailed_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_organization_conformance_pack_detailed_status_errors()}

  def get_organization_conformance_pack_detailed_status(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(
      client,
      meta,
      "GetOrganizationConformancePackDetailedStatus",
      input,
      options
    )
  end

  @doc """
  Returns the policy definition containing the logic for your organization Config
  Custom Policy rule.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20GetOrganizationCustomRulePolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_organization_custom_rule_policy_request`)
    %{
      required("OrganizationConfigRuleName") => String.t()
    }
  """

  @spec get_organization_custom_rule_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_organization_custom_rule_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_organization_custom_rule_policy_errors()}

  def get_organization_custom_rule_policy(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetOrganizationCustomRulePolicy", input, options)
  end

  @doc """
  For accurate reporting on the compliance status, you must record the
  `AWS::Config::ResourceCompliance` resource type. For more information, see
  [Selecting Which Resources Config
  Records](https://docs.aws.amazon.com/config/latest/developerguide/select-resources.html).
  Returns a list of `ConfigurationItems` for the specified resource. The list
  contains details about each state of the resource during the specified time
  interval. If you specified a retention period to retain your
  `ConfigurationItems` between a minimum of 30 days and a maximum of 7 years
  (2557 days), Config returns the `ConfigurationItems` for the specified
  retention period.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20GetResourceConfigHistory&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_resource_config_history_request`)
    %{
      optional("chronologicalOrder") => list(any()),
      optional("earlierTime") => non_neg_integer(),
      optional("laterTime") => non_neg_integer(),
      optional("limit") => integer(),
      optional("nextToken") => String.t(),
      required("resourceId") => String.t(),
      required("resourceType") => list(any())
    }
  """

  @spec get_resource_config_history(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_resource_config_history_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_resource_config_history_errors()}

  def get_resource_config_history(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetResourceConfigHistory", input, options)
  end

  @doc """
  Returns a summary of resource evaluation for the specified resource evaluation
  ID from the proactive rules that were run. The results indicate which
  evaluation context was used to evaluate the rules, which resource details were
  evaluated, the evaluation mode that was run, and whether the resource details
  comply with the configuration of the proactive rules.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20GetResourceEvaluationSummary&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_resource_evaluation_summary_request`)
    %{
      required("ResourceEvaluationId") => String.t()
    }
  """

  @spec get_resource_evaluation_summary(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_resource_evaluation_summary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_resource_evaluation_summary_errors()}

  def get_resource_evaluation_summary(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetResourceEvaluationSummary", input, options)
  end

  @doc """
  Returns the details of a specific stored query.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20GetStoredQuery&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_stored_query_request`)
    %{
      required("QueryName") => String.t()
    }
  """

  @spec get_stored_query(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_stored_query_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_stored_query_errors()}

  def get_stored_query(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetStoredQuery", input, options)
  end

  @doc """
  Accepts a resource type and returns a list of resource identifiers that are
  aggregated for a specific resource type across accounts and regions. A
  resource identifier includes the resource type, ID, (if available) the custom
  resource name, source account, and source region. You can narrow the results
  to include only resources that have specific resource IDs, or a resource name,
  or source account ID, or source region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20ListAggregateDiscoveredResources&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_aggregate_discovered_resources_request`)
    %{
      optional("Filters") => resource_filters(),
      optional("Limit") => integer(),
      optional("NextToken") => String.t(),
      required("ConfigurationAggregatorName") => String.t(),
      required("ResourceType") => list(any())
    }
  """

  @spec list_aggregate_discovered_resources(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_aggregate_discovered_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_aggregate_discovered_resources_errors()}

  def list_aggregate_discovered_resources(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAggregateDiscoveredResources", input, options)
  end

  @doc """
  Returns a list of conformance pack compliance scores. A compliance score is the
  percentage of the number of compliant rule-resource combinations in a
  conformance pack compared to the number of total possible rule-resource
  combinations in the conformance pack. This metric provides you with a
  high-level view of the compliance state of your conformance packs. You can use
  it to identify, investigate, and understand the level of compliance in your
  conformance packs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20ListConformancePackComplianceScores&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_conformance_pack_compliance_scores_request`)
    %{
      optional("Filters") => conformance_pack_compliance_scores_filters(),
      optional("Limit") => integer(),
      optional("NextToken") => String.t(),
      optional("SortBy") => list(any()),
      optional("SortOrder") => list(any())
    }
  """

  @spec list_conformance_pack_compliance_scores(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_conformance_pack_compliance_scores_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_conformance_pack_compliance_scores_errors()}

  def list_conformance_pack_compliance_scores(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListConformancePackComplianceScores", input, options)
  end

  @doc """
  Accepts a resource type and returns a list of resource identifiers for the
  resources of that type. A resource identifier includes the resource type, ID,
  and (if available) the custom resource name. The results consist of resources
  that Config has discovered, including those that Config is not currently
  recording. You can narrow the results to include only resources that have
  specific resource IDs or a resource name. You can specify either resource IDs
  or a resource name, but not both, in the same request.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20ListDiscoveredResources&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_discovered_resources_request`)
    %{
      optional("includeDeletedResources") => boolean(),
      optional("limit") => integer(),
      optional("nextToken") => String.t(),
      optional("resourceIds") => list(String.t()()),
      optional("resourceName") => String.t(),
      required("resourceType") => list(any())
    }
  """

  @spec list_discovered_resources(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_discovered_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_discovered_resources_errors()}

  def list_discovered_resources(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListDiscoveredResources", input, options)
  end

  @doc """
  Returns a list of proactive resource evaluations.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20ListResourceEvaluations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_resource_evaluations_request`)
    %{
      optional("Filters") => resource_evaluation_filters(),
      optional("Limit") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec list_resource_evaluations(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_resource_evaluations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_resource_evaluations_errors()}

  def list_resource_evaluations(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListResourceEvaluations", input, options)
  end

  @doc """
  Lists the stored queries for a single Amazon Web Services account and a single
  Amazon Web Services Region. The default is 100.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20ListStoredQueries&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_stored_queries_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec list_stored_queries(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_stored_queries_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_stored_queries_errors()}

  def list_stored_queries(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListStoredQueries", input, options)
  end

  @doc """
  List the tags for Config resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_tags_for_resource_request`)
    %{
      optional("Limit") => integer(),
      optional("NextToken") => String.t(),
      required("ResourceArn") => String.t()
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
  Authorizes the aggregator account and region to collect data from the source
  account and region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20PutAggregationAuthorization&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_aggregation_authorization_request`)
    %{
      optional("Tags") => list(tag()()),
      required("AuthorizedAccountId") => String.t(),
      required("AuthorizedAwsRegion") => String.t()
    }
  """

  @spec put_aggregation_authorization(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_aggregation_authorization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_aggregation_authorization_errors()}

  def put_aggregation_authorization(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutAggregationAuthorization", input, options)
  end

  @doc """
  Adds or updates an Config rule to evaluate if your Amazon Web Services resources
  comply with your desired configurations. For information on how many Config
  rules you can have per account, see [ **Service Limits**
  ](https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html)
  in the *Config Developer Guide*. There are two types of rules: *Config Managed
  Rules* and *Config Custom Rules*. You can use `PutConfigRule` to create both
  Config Managed Rules and Config Custom Rules. Config Managed Rules are
  predefined, customizable rules created by Config. For a list of managed rules,
  see [List of Config Managed
  Rules](https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html).
  If you are adding an Config managed rule, you must specify the rule's
  identifier for the `SourceIdentifier` key.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20PutConfigRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_config_rule_request`)
    %{
      optional("Tags") => list(tag()()),
      required("ConfigRule") => config_rule()
    }
  """

  @spec put_config_rule(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_config_rule_errors()}

  def put_config_rule(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutConfigRule", input, options)
  end

  @doc """
  Creates and updates the configuration aggregator with the selected source
  accounts and regions. The source account can be individual account(s) or an
  organization. `accountIds` that are passed will be replaced with existing
  accounts. If you want to add additional accounts into the aggregator, call
  `DescribeConfigurationAggregators` to get the previous accounts and then
  append new ones.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20PutConfigurationAggregator&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_configuration_aggregator_request`)
    %{
      optional("AccountAggregationSources") => list(account_aggregation_source()()),
      optional("OrganizationAggregationSource") => organization_aggregation_source(),
      optional("Tags") => list(tag()()),
      required("ConfigurationAggregatorName") => String.t()
    }
  """

  @spec put_configuration_aggregator(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_configuration_aggregator_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_configuration_aggregator_errors()}

  def put_configuration_aggregator(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutConfigurationAggregator", input, options)
  end

  @doc """
  Creates a new configuration recorder to record configuration changes for
  specified resource types. You can also use this action to change the `roleARN`
  or the `recordingGroup` of an existing recorder. For more information, see [
  **Managing the Configuration Recorder**
  ](https://docs.aws.amazon.com/config/latest/developerguide/stop-start-recorder.html)
  in the *Config Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20PutConfigurationRecorder&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_configuration_recorder_request`)
    %{
      required("ConfigurationRecorder") => configuration_recorder()
    }
  """

  @spec put_configuration_recorder(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_configuration_recorder_errors()}

  def put_configuration_recorder(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutConfigurationRecorder", input, options)
  end

  @doc """
  Creates or updates a conformance pack. A conformance pack is a collection of
  Config rules that can be easily deployed in an account and a region and across
  an organization. For information on how many conformance packs you can have
  per account, see [ **Service Limits**
  ](https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html)
  in the *Config Developer Guide*. This API creates a service-linked role
  `AWSServiceRoleForConfigConforms` in your account. The service-linked role is
  created only when the role does not exist in your account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20PutConformancePack&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_conformance_pack_request`)
    %{
      optional("ConformancePackInputParameters") => list(conformance_pack_input_parameter()()),
      optional("DeliveryS3Bucket") => String.t(),
      optional("DeliveryS3KeyPrefix") => String.t(),
      optional("TemplateBody") => String.t(),
      optional("TemplateS3Uri") => String.t(),
      optional("TemplateSSMDocumentDetails") => template_s_s_m_document_details(),
      required("ConformancePackName") => String.t()
    }
  """

  @spec put_conformance_pack(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_conformance_pack_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_conformance_pack_errors()}

  def put_conformance_pack(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutConformancePack", input, options)
  end

  @doc """
  Creates a delivery channel object to deliver configuration information and other
  compliance information to an Amazon S3 bucket and Amazon SNS topic. For more
  information, see [Notifications that Config Sends to an Amazon SNS
  topic](https://docs.aws.amazon.com/config/latest/developerguide/notifications-for-AWS-Config.html).
  Before you can create a delivery channel, you must create a configuration
  recorder.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20PutDeliveryChannel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_delivery_channel_request`)
    %{
      required("DeliveryChannel") => delivery_channel()
    }
  """

  @spec put_delivery_channel(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_delivery_channel_errors()}

  def put_delivery_channel(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutDeliveryChannel", input, options)
  end

  @doc """
  Used by an Lambda function to deliver evaluation results to Config. This action
  is required in every Lambda function that is invoked by an Config rule.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20PutEvaluations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_evaluations_request`)
    %{
      optional("Evaluations") => list(evaluation()()),
      optional("TestMode") => boolean(),
      required("ResultToken") => String.t()
    }
  """

  @spec put_evaluations(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_evaluations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_evaluations_errors()}

  def put_evaluations(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutEvaluations", input, options)
  end

  @doc """
  Add or updates the evaluations for process checks. This API checks if the rule
  is a process check when the name of the Config rule is provided.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20PutExternalEvaluation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_external_evaluation_request`)
    %{
      required("ConfigRuleName") => String.t(),
      required("ExternalEvaluation") => external_evaluation()
    }
  """

  @spec put_external_evaluation(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_external_evaluation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_external_evaluation_errors()}

  def put_external_evaluation(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutExternalEvaluation", input, options)
  end

  @doc """
  Adds or updates an Config rule for your entire organization to evaluate if your
  Amazon Web Services resources comply with your desired configurations. For
  information on how many organization Config rules you can have per account,
  see [ **Service Limits**
  ](https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html)
  in the *Config Developer Guide*. Only a management account and a delegated
  administrator can create or update an organization Config rule. When calling
  this API with a delegated administrator, you must ensure Organizations
  `ListDelegatedAdministrator` permissions are added. An organization can have
  up to 3 delegated administrators. This API enables organization service access
  through the `EnableAWSServiceAccess` action and creates a service-linked role
  `AWSServiceRoleForConfigMultiAccountSetup` in the management or delegated
  administrator account of your organization. The service-linked role is created
  only when the role does not exist in the caller account. Config verifies the
  existence of role with `GetRole` action.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20PutOrganizationConfigRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_organization_config_rule_request`)
    %{
      optional("ExcludedAccounts") => list(String.t()()),
      optional("OrganizationCustomPolicyRuleMetadata") => organization_custom_policy_rule_metadata(),
      optional("OrganizationCustomRuleMetadata") => organization_custom_rule_metadata(),
      optional("OrganizationManagedRuleMetadata") => organization_managed_rule_metadata(),
      required("OrganizationConfigRuleName") => String.t()
    }
  """

  @spec put_organization_config_rule(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_organization_config_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_organization_config_rule_errors()}

  def put_organization_config_rule(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutOrganizationConfigRule", input, options)
  end

  @doc """
  Deploys conformance packs across member accounts in an Amazon Web Services
  Organization. For information on how many organization conformance packs and
  how many Config rules you can have per account, see [ **Service Limits**
  ](https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html)
  in the *Config Developer Guide*. Only a management account and a delegated
  administrator can call this API. When calling this API with a delegated
  administrator, you must ensure Organizations `ListDelegatedAdministrator`
  permissions are added. An organization can have up to 3 delegated
  administrators.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20PutOrganizationConformancePack&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_organization_conformance_pack_request`)
    %{
      optional("ConformancePackInputParameters") => list(conformance_pack_input_parameter()()),
      optional("DeliveryS3Bucket") => String.t(),
      optional("DeliveryS3KeyPrefix") => String.t(),
      optional("ExcludedAccounts") => list(String.t()()),
      optional("TemplateBody") => String.t(),
      optional("TemplateS3Uri") => String.t(),
      required("OrganizationConformancePackName") => String.t()
    }
  """

  @spec put_organization_conformance_pack(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_organization_conformance_pack_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_organization_conformance_pack_errors()}

  def put_organization_conformance_pack(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutOrganizationConformancePack", input, options)
  end

  @doc """
  Adds or updates the remediation configuration with a specific Config rule with
  the selected target or action. The API creates the `RemediationConfiguration`
  object for the Config rule. The Config rule must already exist for you to add
  a remediation configuration. The target (SSM document) must exist and have
  permissions to use the target. **Be aware of backward incompatible changes**
  If you make backward incompatible changes to the SSM document, you must call
  this again to ensure the remediations can run. This API does not support
  adding remediation configurations for service-linked Config Rules such as
  Organization Config rules, the rules deployed by conformance packs, and rules
  deployed by Amazon Web Services Security Hub.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20PutRemediationConfigurations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_remediation_configurations_request`)
    %{
      required("RemediationConfigurations") => list(remediation_configuration()())
    }
  """

  @spec put_remediation_configurations(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_remediation_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_remediation_configurations_errors()}

  def put_remediation_configurations(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutRemediationConfigurations", input, options)
  end

  @doc """
  A remediation exception is when a specified resource is no longer considered for
  auto-remediation. This API adds a new exception or updates an existing
  exception for a specified resource with a specified Config rule. **Exceptions
  block auto remediation** Config generates a remediation exception when a
  problem occurs running a remediation action for a specified resource.
  Remediation exceptions blocks auto-remediation until the exception is cleared.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20PutRemediationExceptions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_remediation_exceptions_request`)
    %{
      optional("ExpirationTime") => non_neg_integer(),
      optional("Message") => String.t(),
      required("ConfigRuleName") => String.t(),
      required("ResourceKeys") => list(remediation_exception_resource_key()())
    }
  """

  @spec put_remediation_exceptions(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_remediation_exceptions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_remediation_exceptions_errors()}

  def put_remediation_exceptions(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutRemediationExceptions", input, options)
  end

  @doc """
  Records the configuration state for the resource provided in the request. The
  configuration state of a resource is represented in Config as Configuration
  Items. Once this API records the configuration item, you can retrieve the list
  of configuration items for the custom resource type using existing Config
  APIs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20PutResourceConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_resource_config_request`)
    %{
      optional("ResourceName") => String.t(),
      optional("Tags") => map(),
      required("Configuration") => String.t(),
      required("ResourceId") => String.t(),
      required("ResourceType") => String.t(),
      required("SchemaVersionId") => String.t()
    }
  """

  @spec put_resource_config(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_resource_config_errors()}

  def put_resource_config(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutResourceConfig", input, options)
  end

  @doc """
  Creates and updates the retention configuration with details about retention
  period (number of days) that Config stores your historical information. The
  API creates the `RetentionConfiguration` object and names the object as
  **default**. When you have a `RetentionConfiguration` object named
  **default**, calling the API modifies the default object.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20PutRetentionConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_retention_configuration_request`)
    %{
      required("RetentionPeriodInDays") => integer()
    }
  """

  @spec put_retention_configuration(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_retention_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_retention_configuration_errors()}

  def put_retention_configuration(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutRetentionConfiguration", input, options)
  end

  @doc """
  Saves a new query or updates an existing saved query. The `QueryName` must be
  unique for a single Amazon Web Services account and a single Amazon Web
  Services Region. You can create upto 300 queries in a single Amazon Web
  Services account and a single Amazon Web Services Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20PutStoredQuery&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_stored_query_request`)
    %{
      optional("Tags") => list(tag()()),
      required("StoredQuery") => stored_query()
    }
  """

  @spec put_stored_query(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_stored_query_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_stored_query_errors()}

  def put_stored_query(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutStoredQuery", input, options)
  end

  @doc """
  Accepts a structured query language (SQL) SELECT command and an aggregator to
  query configuration state of Amazon Web Services resources across multiple
  accounts and regions, performs the corresponding search, and returns resource
  configurations matching the properties. For more information about query
  components, see the [ **Query Components**
  ](https://docs.aws.amazon.com/config/latest/developerguide/query-components.html)
  section in the *Config Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20SelectAggregateResourceConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:select_aggregate_resource_config_request`)
    %{
      optional("Limit") => integer(),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("ConfigurationAggregatorName") => String.t(),
      required("Expression") => String.t()
    }
  """

  @spec select_aggregate_resource_config(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, select_aggregate_resource_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, select_aggregate_resource_config_errors()}

  def select_aggregate_resource_config(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SelectAggregateResourceConfig", input, options)
  end

  @doc """
  Accepts a structured query language (SQL) `SELECT` command, performs the
  corresponding search, and returns resource configurations matching the
  properties.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20SelectResourceConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:select_resource_config_request`)
    %{
      optional("Limit") => integer(),
      optional("NextToken") => String.t(),
      required("Expression") => String.t()
    }
  """

  @spec select_resource_config(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, select_resource_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, select_resource_config_errors()}

  def select_resource_config(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SelectResourceConfig", input, options)
  end

  @doc """
  Runs an on-demand evaluation for the specified Config rules against the last
  known configuration state of the resources. Use `StartConfigRulesEvaluation`
  when you want to test that a rule you updated is working as expected.
  `StartConfigRulesEvaluation` does not re-record the latest configuration state
  for your resources. It re-runs an evaluation against the last known state of
  your resources. You can specify up to 25 Config rules per request.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20StartConfigRulesEvaluation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:start_config_rules_evaluation_request`)
    %{
      optional("ConfigRuleNames") => list(String.t()())
    }
  """

  @spec start_config_rules_evaluation(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, start_config_rules_evaluation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_config_rules_evaluation_errors()}

  def start_config_rules_evaluation(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartConfigRulesEvaluation", input, options)
  end

  @doc """
  Starts recording configurations of the Amazon Web Services resources you have
  selected to record in your Amazon Web Services account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20StartConfigurationRecorder&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:start_configuration_recorder_request`)
    %{
      required("ConfigurationRecorderName") => String.t()
    }
  """

  @spec start_configuration_recorder(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_configuration_recorder_errors()}

  def start_configuration_recorder(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartConfigurationRecorder", input, options)
  end

  @doc """
  Runs an on-demand remediation for the specified Config rules against the last
  known remediation configuration. It runs an execution against the current
  state of your resources. Remediation execution is asynchronous.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20StartRemediationExecution&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:start_remediation_execution_request`)
    %{
      required("ConfigRuleName") => String.t(),
      required("ResourceKeys") => list(resource_key()())
    }
  """

  @spec start_remediation_execution(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, start_remediation_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_remediation_execution_errors()}

  def start_remediation_execution(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartRemediationExecution", input, options)
  end

  @doc """
  Runs an on-demand evaluation for the specified resource to determine whether the
  resource details will comply with configured Config rules. You can also use it
  for evaluation purposes. Config recommends using an evaluation context. It
  runs an execution against the resource details with all of the Config rules in
  your account that match with the specified proactive mode and resource type.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20StartResourceEvaluation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:start_resource_evaluation_request`)
    %{
      optional("ClientToken") => String.t(),
      optional("EvaluationContext") => evaluation_context(),
      optional("EvaluationTimeout") => integer(),
      required("EvaluationMode") => list(any()),
      required("ResourceDetails") => resource_details()
    }
  """

  @spec start_resource_evaluation(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, start_resource_evaluation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_resource_evaluation_errors()}

  def start_resource_evaluation(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartResourceEvaluation", input, options)
  end

  @doc """
  Stops recording configurations of the Amazon Web Services resources you have
  selected to record in your Amazon Web Services account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20StopConfigurationRecorder&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:stop_configuration_recorder_request`)
    %{
      required("ConfigurationRecorderName") => String.t()
    }
  """

  @spec stop_configuration_recorder(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_configuration_recorder_errors()}

  def stop_configuration_recorder(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopConfigurationRecorder", input, options)
  end

  @doc """
  Associates the specified tags to a resource with the specified resourceArn. If
  existing tags on a resource are not specified in the request parameters, they
  are not changed. If existing tags are specified, however, then their values
  will be updated. When a resource is deleted, the tags associated with that
  resource are deleted as well.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:tag_resource_request`)
    %{
      required("ResourceArn") => String.t(),
      required("Tags") => list(tag()())
    }
  """

  @spec tag_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}

  def tag_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Deletes specified tags from a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=configservice%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:untag_resource_request`)
    %{
      required("ResourceArn") => String.t(),
      required("TagKeys") => list(String.t()())
    }
  """

  @spec untag_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}

  def untag_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end
end
