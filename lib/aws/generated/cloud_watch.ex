# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CloudWatch do
  @moduledoc """
  Amazon CloudWatch monitors your Amazon Web Services (Amazon Web Services)
  resources and the applications you run on Amazon Web Services in real time.
  You can use CloudWatch to collect and track metrics, which are the variables
  you want to measure for your resources and applications. CloudWatch alarms
  send notifications or automatically change the resources you are monitoring
  based on rules that you define. For example, you can monitor the CPU usage and
  disk reads and writes of your Amazon EC2 instances. Then, use this data to
  determine whether you should launch additional instances to handle increased
  load. You can also use this data to stop under-used instances to save money.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      enable_insight_rules_input() :: %{
        required("RuleNames") => list(String.t()())
      }
      
  """
  @type enable_insight_rules_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_dashboards_output() :: %{}
      
  """
  @type delete_dashboards_output() :: %{}

  @typedoc """

  ## Example:
      
      metric_stream_filter() :: %{
        "MetricNames" => list(String.t()()),
        "Namespace" => String.t()
      }
      
  """
  @type metric_stream_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      range() :: %{
        "EndTime" => non_neg_integer(),
        "StartTime" => non_neg_integer()
      }
      
  """
  @type range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      managed_rule() :: %{
        "ResourceARN" => String.t(),
        "Tags" => list(tag()()),
        "TemplateName" => String.t()
      }
      
  """
  @type managed_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_metric_streams_input() :: %{
        required("Names") => list(String.t()())
      }
      
  """
  @type start_metric_streams_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      label_options() :: %{
        "Timezone" => String.t()
      }
      
  """
  @type label_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dashboard_not_found_error() :: %{
        "message" => String.t()
      }
      
  """
  @type dashboard_not_found_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_insight_rule_input() :: %{
        optional("RuleState") => String.t(),
        optional("Tags") => list(tag()()),
        required("RuleDefinition") => String.t(),
        required("RuleName") => String.t()
      }
      
  """
  @type put_insight_rule_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_composite_alarm_input() :: %{
        optional("ActionsEnabled") => boolean(),
        optional("ActionsSuppressor") => String.t(),
        optional("ActionsSuppressorExtensionPeriod") => integer(),
        optional("ActionsSuppressorWaitPeriod") => integer(),
        optional("AlarmActions") => list(String.t()()),
        optional("AlarmDescription") => String.t(),
        optional("InsufficientDataActions") => list(String.t()()),
        optional("OKActions") => list(String.t()()),
        optional("Tags") => list(tag()()),
        required("AlarmName") => String.t(),
        required("AlarmRule") => String.t()
      }
      
  """
  @type put_composite_alarm_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_anomaly_detector_input() :: %{
        optional("Dimensions") => list(dimension()()),
        optional("MetricMathAnomalyDetector") => metric_math_anomaly_detector(),
        optional("MetricName") => String.t(),
        optional("Namespace") => String.t(),
        optional("SingleMetricAnomalyDetector") => single_metric_anomaly_detector(),
        optional("Stat") => String.t()
      }
      
  """
  @type delete_anomaly_detector_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_insight_rule_report_output() :: %{
        "AggregateValue" => float(),
        "AggregationStatistic" => String.t(),
        "ApproximateUniqueCount" => float(),
        "Contributors" => list(insight_rule_contributor()()),
        "KeyLabels" => list(String.t()()),
        "MetricDatapoints" => list(insight_rule_metric_datapoint()())
      }
      
  """
  @type get_insight_rule_report_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      alarm_history_item() :: %{
        "AlarmName" => String.t(),
        "AlarmType" => list(any()),
        "HistoryData" => String.t(),
        "HistoryItemType" => list(any()),
        "HistorySummary" => String.t(),
        "Timestamp" => non_neg_integer()
      }
      
  """
  @type alarm_history_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_dashboards_input() :: %{
        required("DashboardNames") => list(String.t()())
      }
      
  """
  @type delete_dashboards_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_insight_rules_output() :: %{
        "Failures" => list(partial_failure()())
      }
      
  """
  @type enable_insight_rules_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_insight_rule_report_input() :: %{
        optional("MaxContributorCount") => integer(),
        optional("Metrics") => list(String.t()()),
        optional("OrderBy") => String.t(),
        required("EndTime") => non_neg_integer(),
        required("Period") => integer(),
        required("RuleName") => String.t(),
        required("StartTime") => non_neg_integer()
      }
      
  """
  @type get_insight_rule_report_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric() :: %{
        "Dimensions" => list(dimension()()),
        "MetricName" => String.t(),
        "Namespace" => String.t()
      }
      
  """
  @type metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      anomaly_detector_configuration() :: %{
        "ExcludedTimeRanges" => list(range()()),
        "MetricTimezone" => String.t()
      }
      
  """
  @type anomaly_detector_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_metric_stream_input() :: %{
        required("Name") => String.t()
      }
      
  """
  @type delete_metric_stream_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_metric_stream_output() :: %{
        "Arn" => String.t()
      }
      
  """
  @type put_metric_stream_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type limit_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disable_alarm_actions_input() :: %{
        required("AlarmNames") => list(String.t()())
      }
      
  """
  @type disable_alarm_actions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      missing_required_parameter_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type missing_required_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_managed_insight_rules_output() :: %{
        "ManagedRules" => list(managed_rule_description()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_managed_insight_rules_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_metrics_input() :: %{
        optional("Dimensions") => list(dimension_filter()()),
        optional("IncludeLinkedAccounts") => boolean(),
        optional("MetricName") => String.t(),
        optional("Namespace") => String.t(),
        optional("NextToken") => String.t(),
        optional("OwningAccount") => String.t(),
        optional("RecentlyActive") => list(any())
      }
      
  """
  @type list_metrics_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_metric_widget_image_output() :: %{
        "MetricWidgetImage" => binary()
      }
      
  """
  @type get_metric_widget_image_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_metric_widget_image_input() :: %{
        optional("OutputFormat") => String.t(),
        required("MetricWidget") => String.t()
      }
      
  """
  @type get_metric_widget_image_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      managed_rule_state() :: %{
        "RuleName" => String.t(),
        "State" => String.t()
      }
      
  """
  @type managed_rule_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_stream_entry() :: %{
        "Arn" => String.t(),
        "CreationDate" => non_neg_integer(),
        "FirehoseArn" => String.t(),
        "LastUpdateDate" => non_neg_integer(),
        "Name" => String.t(),
        "OutputFormat" => list(any()),
        "State" => String.t()
      }
      
  """
  @type metric_stream_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_stream_statistics_configuration() :: %{
        "AdditionalStatistics" => list(String.t()()),
        "IncludeMetrics" => list(metric_stream_statistics_metric()())
      }
      
  """
  @type metric_stream_statistics_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_managed_insight_rules_input() :: %{
        required("ManagedRules") => list(managed_rule()())
      }
      
  """
  @type put_managed_insight_rules_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_managed_insight_rules_output() :: %{
        "Failures" => list(partial_failure()())
      }
      
  """
  @type put_managed_insight_rules_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_dashboards_input() :: %{
        optional("DashboardNamePrefix") => String.t(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_dashboards_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_output() :: %{
        "Tags" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_alarms_input() :: %{
        optional("ActionPrefix") => String.t(),
        optional("AlarmNamePrefix") => String.t(),
        optional("AlarmNames") => list(String.t()()),
        optional("AlarmTypes") => list(list(any())()),
        optional("ChildrenOfAlarmName") => String.t(),
        optional("MaxRecords") => integer(),
        optional("NextToken") => String.t(),
        optional("ParentsOfAlarmName") => String.t(),
        optional("StateValue") => list(any())
      }
      
  """
  @type describe_alarms_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_alarms_output() :: %{
        "CompositeAlarms" => list(composite_alarm()()),
        "MetricAlarms" => list(metric_alarm()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_alarms_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_combination_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_parameter_combination_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_alarm_history_input() :: %{
        optional("AlarmName") => String.t(),
        optional("AlarmTypes") => list(list(any())()),
        optional("EndDate") => non_neg_integer(),
        optional("HistoryItemType") => list(any()),
        optional("MaxRecords") => integer(),
        optional("NextToken") => String.t(),
        optional("ScanBy") => list(any()),
        optional("StartDate") => non_neg_integer()
      }
      
  """
  @type describe_alarm_history_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_insight_rule_output() :: %{}
      
  """
  @type put_insight_rule_output() :: %{}

  @typedoc """

  ## Example:
      
      put_anomaly_detector_input() :: %{
        optional("Configuration") => anomaly_detector_configuration(),
        optional("Dimensions") => list(dimension()()),
        optional("MetricCharacteristics") => metric_characteristics(),
        optional("MetricMathAnomalyDetector") => metric_math_anomaly_detector(),
        optional("MetricName") => String.t(),
        optional("Namespace") => String.t(),
        optional("SingleMetricAnomalyDetector") => single_metric_anomaly_detector(),
        optional("Stat") => String.t()
      }
      
  """
  @type put_anomaly_detector_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disable_insight_rules_output() :: %{
        "Failures" => list(partial_failure()())
      }
      
  """
  @type disable_insight_rules_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_stream_statistics_metric() :: %{
        "MetricName" => String.t(),
        "Namespace" => String.t()
      }
      
  """
  @type metric_stream_statistics_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      message_data() :: %{
        "Code" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type message_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_metric_streams_output() :: %{}
      
  """
  @type stop_metric_streams_output() :: %{}

  @typedoc """

  ## Example:
      
      dashboard_invalid_input_error() :: %{
        "dashboardValidationMessages" => list(dashboard_validation_message()()),
        "message" => String.t()
      }
      
  """
  @type dashboard_invalid_input_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_alarm_state_input() :: %{
        optional("StateReasonData") => String.t(),
        required("AlarmName") => String.t(),
        required("StateReason") => String.t(),
        required("StateValue") => list(any())
      }
      
  """
  @type set_alarm_state_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disable_insight_rules_input() :: %{
        required("RuleNames") => list(String.t()())
      }
      
  """
  @type disable_insight_rules_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_datum() :: %{
        "Counts" => list(float()()),
        "Dimensions" => list(dimension()()),
        "MetricName" => String.t(),
        "StatisticValues" => statistic_set(),
        "StorageResolution" => integer(),
        "Timestamp" => non_neg_integer(),
        "Unit" => list(any()),
        "Value" => float(),
        "Values" => list(float()())
      }
      
  """
  @type metric_datum() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_metric_alarm_input() :: %{
        optional("ActionsEnabled") => boolean(),
        optional("AlarmActions") => list(String.t()()),
        optional("AlarmDescription") => String.t(),
        optional("DatapointsToAlarm") => integer(),
        optional("Dimensions") => list(dimension()()),
        optional("EvaluateLowSampleCountPercentile") => String.t(),
        optional("ExtendedStatistic") => String.t(),
        optional("InsufficientDataActions") => list(String.t()()),
        optional("MetricName") => String.t(),
        optional("Metrics") => list(metric_data_query()()),
        optional("Namespace") => String.t(),
        optional("OKActions") => list(String.t()()),
        optional("Period") => integer(),
        optional("Statistic") => list(any()),
        optional("Tags") => list(tag()()),
        optional("Threshold") => float(),
        optional("ThresholdMetricId") => String.t(),
        optional("TreatMissingData") => String.t(),
        optional("Unit") => list(any()),
        required("AlarmName") => String.t(),
        required("ComparisonOperator") => list(any()),
        required("EvaluationPeriods") => integer()
      }
      
  """
  @type put_metric_alarm_input() :: %{String.t() => any()}

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
      
      insight_rule_metric_datapoint() :: %{
        "Average" => float(),
        "MaxContributorValue" => float(),
        "Maximum" => float(),
        "Minimum" => float(),
        "SampleCount" => float(),
        "Sum" => float(),
        "Timestamp" => non_neg_integer(),
        "UniqueContributors" => float()
      }
      
  """
  @type insight_rule_metric_datapoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      datapoint() :: %{
        "Average" => float(),
        "ExtendedStatistics" => map(),
        "Maximum" => float(),
        "Minimum" => float(),
        "SampleCount" => float(),
        "Sum" => float(),
        "Timestamp" => non_neg_integer(),
        "Unit" => list(any())
      }
      
  """
  @type datapoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_data_query() :: %{
        "AccountId" => String.t(),
        "Expression" => String.t(),
        "Id" => String.t(),
        "Label" => String.t(),
        "MetricStat" => metric_stat(),
        "Period" => integer(),
        "ReturnData" => boolean()
      }
      
  """
  @type metric_data_query() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dashboard_entry() :: %{
        "DashboardArn" => String.t(),
        "DashboardName" => String.t(),
        "LastModified" => non_neg_integer(),
        "Size" => float()
      }
      
  """
  @type dashboard_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_value_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_parameter_value_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      single_metric_anomaly_detector() :: %{
        "AccountId" => String.t(),
        "Dimensions" => list(dimension()()),
        "MetricName" => String.t(),
        "Namespace" => String.t(),
        "Stat" => String.t()
      }
      
  """
  @type single_metric_anomaly_detector() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_characteristics() :: %{
        "PeriodicSpikes" => boolean()
      }
      
  """
  @type metric_characteristics() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_anomaly_detectors_output() :: %{
        "AnomalyDetectors" => list(anomaly_detector()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_anomaly_detectors_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      insight_rule_contributor_datapoint() :: %{
        "ApproximateValue" => float(),
        "Timestamp" => non_neg_integer()
      }
      
  """
  @type insight_rule_contributor_datapoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_anomaly_detectors_input() :: %{
        optional("AnomalyDetectorTypes") => list(list(any())()),
        optional("Dimensions") => list(dimension()()),
        optional("MaxResults") => integer(),
        optional("MetricName") => String.t(),
        optional("Namespace") => String.t(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_anomaly_detectors_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_alarm_actions_input() :: %{
        required("AlarmNames") => list(String.t()())
      }
      
  """
  @type enable_alarm_actions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_format_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_format_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      insight_rule_contributor() :: %{
        "ApproximateAggregateValue" => float(),
        "Datapoints" => list(insight_rule_contributor_datapoint()()),
        "Keys" => list(String.t()())
      }
      
  """
  @type insight_rule_contributor() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_math_anomaly_detector() :: %{
        "MetricDataQueries" => list(metric_data_query()())
      }
      
  """
  @type metric_math_anomaly_detector() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_metric_data_output() :: %{
        "Messages" => list(message_data()()),
        "MetricDataResults" => list(metric_data_result()()),
        "NextToken" => String.t()
      }
      
  """
  @type get_metric_data_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_input() :: %{
        required("ResourceARN") => String.t(),
        required("Tags") => list(tag()())
      }
      
  """
  @type tag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_metrics_output() :: %{
        "Metrics" => list(metric()()),
        "NextToken" => String.t(),
        "OwningAccounts" => list(String.t()())
      }
      
  """
  @type list_metrics_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_metric_data_input() :: %{
        required("MetricData") => list(metric_datum()()),
        required("Namespace") => String.t()
      }
      
  """
  @type put_metric_data_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_output() :: %{}
      
  """
  @type tag_resource_output() :: %{}

  @typedoc """

  ## Example:
      
      get_metric_stream_input() :: %{
        required("Name") => String.t()
      }
      
  """
  @type get_metric_stream_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_metric_streams_output() :: %{
        "Entries" => list(metric_stream_entry()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_metric_streams_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_metric_stream_output() :: %{
        "Arn" => String.t(),
        "CreationDate" => non_neg_integer(),
        "ExcludeFilters" => list(metric_stream_filter()()),
        "FirehoseArn" => String.t(),
        "IncludeFilters" => list(metric_stream_filter()()),
        "IncludeLinkedAccountsMetrics" => boolean(),
        "LastUpdateDate" => non_neg_integer(),
        "Name" => String.t(),
        "OutputFormat" => list(any()),
        "RoleArn" => String.t(),
        "State" => String.t(),
        "StatisticsConfigurations" => list(metric_stream_statistics_configuration()())
      }
      
  """
  @type get_metric_stream_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_alarms_for_metric_input() :: %{
        optional("Dimensions") => list(dimension()()),
        optional("ExtendedStatistic") => String.t(),
        optional("Period") => integer(),
        optional("Statistic") => list(any()),
        optional("Unit") => list(any()),
        required("MetricName") => String.t(),
        required("Namespace") => String.t()
      }
      
  """
  @type describe_alarms_for_metric_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_alarms_input() :: %{
        required("AlarmNames") => list(String.t()())
      }
      
  """
  @type delete_alarms_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_metric_stream_input() :: %{
        optional("ExcludeFilters") => list(metric_stream_filter()()),
        optional("IncludeFilters") => list(metric_stream_filter()()),
        optional("IncludeLinkedAccountsMetrics") => boolean(),
        optional("StatisticsConfigurations") => list(metric_stream_statistics_configuration()()),
        optional("Tags") => list(tag()()),
        required("FirehoseArn") => String.t(),
        required("Name") => String.t(),
        required("OutputFormat") => list(any()),
        required("RoleArn") => String.t()
      }
      
  """
  @type put_metric_stream_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_dashboard_output() :: %{
        "DashboardValidationMessages" => list(dashboard_validation_message()())
      }
      
  """
  @type put_dashboard_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_metric_streams_output() :: %{}
      
  """
  @type start_metric_streams_output() :: %{}

  @typedoc """

  ## Example:
      
      dashboard_validation_message() :: %{
        "DataPath" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type dashboard_validation_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_anomaly_detector_output() :: %{}
      
  """
  @type delete_anomaly_detector_output() :: %{}

  @typedoc """

  ## Example:
      
      managed_rule_description() :: %{
        "ResourceARN" => String.t(),
        "RuleState" => managed_rule_state(),
        "TemplateName" => String.t()
      }
      
  """
  @type managed_rule_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_metric_statistics_output() :: %{
        "Datapoints" => list(datapoint()()),
        "Label" => String.t()
      }
      
  """
  @type get_metric_statistics_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_metric_streams_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_metric_streams_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_insight_rules_input() :: %{
        required("RuleNames") => list(String.t()())
      }
      
  """
  @type delete_insight_rules_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_metric_stream_output() :: %{}
      
  """
  @type delete_metric_stream_output() :: %{}

  @typedoc """

  ## Example:
      
      metric_stat() :: %{
        "Metric" => metric(),
        "Period" => integer(),
        "Stat" => String.t(),
        "Unit" => list(any())
      }
      
  """
  @type metric_stat() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_input() :: %{
        required("ResourceARN") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      insight_rule() :: %{
        "Definition" => String.t(),
        "ManagedRule" => boolean(),
        "Name" => String.t(),
        "Schema" => String.t(),
        "State" => String.t()
      }
      
  """
  @type insight_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_dashboards_output() :: %{
        "DashboardEntries" => list(dashboard_entry()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_dashboards_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      concurrent_modification_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type concurrent_modification_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_input() :: %{
        required("ResourceARN") => String.t()
      }
      
  """
  @type list_tags_for_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_output() :: %{}
      
  """
  @type untag_resource_output() :: %{}

  @typedoc """

  ## Example:
      
      get_metric_data_input() :: %{
        optional("LabelOptions") => label_options(),
        optional("MaxDatapoints") => integer(),
        optional("NextToken") => String.t(),
        optional("ScanBy") => list(any()),
        required("EndTime") => non_neg_integer(),
        required("MetricDataQueries") => list(metric_data_query()()),
        required("StartTime") => non_neg_integer()
      }
      
  """
  @type get_metric_data_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_alarm_history_output() :: %{
        "AlarmHistoryItems" => list(alarm_history_item()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_alarm_history_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      composite_alarm() :: %{
        "ActionsEnabled" => boolean(),
        "ActionsSuppressedBy" => list(any()),
        "ActionsSuppressedReason" => String.t(),
        "ActionsSuppressor" => String.t(),
        "ActionsSuppressorExtensionPeriod" => integer(),
        "ActionsSuppressorWaitPeriod" => integer(),
        "AlarmActions" => list(String.t()()),
        "AlarmArn" => String.t(),
        "AlarmConfigurationUpdatedTimestamp" => non_neg_integer(),
        "AlarmDescription" => String.t(),
        "AlarmName" => String.t(),
        "AlarmRule" => String.t(),
        "InsufficientDataActions" => list(String.t()()),
        "OKActions" => list(String.t()()),
        "StateReason" => String.t(),
        "StateReasonData" => String.t(),
        "StateTransitionedTimestamp" => non_neg_integer(),
        "StateUpdatedTimestamp" => non_neg_integer(),
        "StateValue" => list(any())
      }
      
  """
  @type composite_alarm() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_dashboard_output() :: %{
        "DashboardArn" => String.t(),
        "DashboardBody" => String.t(),
        "DashboardName" => String.t()
      }
      
  """
  @type get_dashboard_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_alarm() :: %{
        "ActionsEnabled" => boolean(),
        "AlarmActions" => list(String.t()()),
        "AlarmArn" => String.t(),
        "AlarmConfigurationUpdatedTimestamp" => non_neg_integer(),
        "AlarmDescription" => String.t(),
        "AlarmName" => String.t(),
        "ComparisonOperator" => list(any()),
        "DatapointsToAlarm" => integer(),
        "Dimensions" => list(dimension()()),
        "EvaluateLowSampleCountPercentile" => String.t(),
        "EvaluationPeriods" => integer(),
        "EvaluationState" => list(any()),
        "ExtendedStatistic" => String.t(),
        "InsufficientDataActions" => list(String.t()()),
        "MetricName" => String.t(),
        "Metrics" => list(metric_data_query()()),
        "Namespace" => String.t(),
        "OKActions" => list(String.t()()),
        "Period" => integer(),
        "StateReason" => String.t(),
        "StateReasonData" => String.t(),
        "StateTransitionedTimestamp" => non_neg_integer(),
        "StateUpdatedTimestamp" => non_neg_integer(),
        "StateValue" => list(any()),
        "Statistic" => list(any()),
        "Threshold" => float(),
        "ThresholdMetricId" => String.t(),
        "TreatMissingData" => String.t(),
        "Unit" => list(any())
      }
      
  """
  @type metric_alarm() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dimension() :: %{
        "Name" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type dimension() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_service_fault() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_service_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      anomaly_detector() :: %{
        "Configuration" => anomaly_detector_configuration(),
        "Dimensions" => list(dimension()()),
        "MetricCharacteristics" => metric_characteristics(),
        "MetricMathAnomalyDetector" => metric_math_anomaly_detector(),
        "MetricName" => String.t(),
        "Namespace" => String.t(),
        "SingleMetricAnomalyDetector" => single_metric_anomaly_detector(),
        "Stat" => String.t(),
        "StateValue" => list(any())
      }
      
  """
  @type anomaly_detector() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_anomaly_detector_output() :: %{}
      
  """
  @type put_anomaly_detector_output() :: %{}

  @typedoc """

  ## Example:
      
      describe_alarms_for_metric_output() :: %{
        "MetricAlarms" => list(metric_alarm()())
      }
      
  """
  @type describe_alarms_for_metric_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dimension_filter() :: %{
        "Name" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type dimension_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_managed_insight_rules_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ResourceARN") => String.t()
      }
      
  """
  @type list_managed_insight_rules_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_dashboard_input() :: %{
        required("DashboardBody") => String.t(),
        required("DashboardName") => String.t()
      }
      
  """
  @type put_dashboard_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_insight_rules_output() :: %{
        "InsightRules" => list(insight_rule()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_insight_rules_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_metric_streams_input() :: %{
        required("Names") => list(String.t()())
      }
      
  """
  @type stop_metric_streams_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_next_token() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_next_token() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_data_result() :: %{
        "Id" => String.t(),
        "Label" => String.t(),
        "Messages" => list(message_data()()),
        "StatusCode" => list(any()),
        "Timestamps" => list(non_neg_integer()()),
        "Values" => list(float()())
      }
      
  """
  @type metric_data_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      partial_failure() :: %{
        "ExceptionType" => String.t(),
        "FailureCode" => String.t(),
        "FailureDescription" => String.t(),
        "FailureResource" => String.t()
      }
      
  """
  @type partial_failure() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_insight_rules_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_insight_rules_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_dashboard_input() :: %{
        required("DashboardName") => String.t()
      }
      
  """
  @type get_dashboard_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      statistic_set() :: %{
        "Maximum" => float(),
        "Minimum" => float(),
        "SampleCount" => float(),
        "Sum" => float()
      }
      
  """
  @type statistic_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_metric_statistics_input() :: %{
        optional("Dimensions") => list(dimension()()),
        optional("ExtendedStatistics") => list(String.t()()),
        optional("Statistics") => list(list(any())()),
        optional("Unit") => list(any()),
        required("EndTime") => non_neg_integer(),
        required("MetricName") => String.t(),
        required("Namespace") => String.t(),
        required("Period") => integer(),
        required("StartTime") => non_neg_integer()
      }
      
  """
  @type get_metric_statistics_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_insight_rules_output() :: %{
        "Failures" => list(partial_failure()())
      }
      
  """
  @type delete_insight_rules_output() :: %{String.t() => any()}

  @type delete_alarms_errors() :: resource_not_found()

  @type delete_anomaly_detector_errors() ::
          internal_service_fault()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | invalid_parameter_combination_exception()
          | missing_required_parameter_exception()

  @type delete_dashboards_errors() ::
          internal_service_fault()
          | invalid_parameter_value_exception()
          | dashboard_not_found_error()

  @type delete_insight_rules_errors() ::
          invalid_parameter_value_exception() | missing_required_parameter_exception()

  @type delete_metric_stream_errors() ::
          internal_service_fault()
          | invalid_parameter_value_exception()
          | missing_required_parameter_exception()

  @type describe_alarm_history_errors() :: invalid_next_token()

  @type describe_alarms_errors() :: invalid_next_token()

  @type describe_anomaly_detectors_errors() ::
          invalid_next_token()
          | internal_service_fault()
          | invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()

  @type describe_insight_rules_errors() :: invalid_next_token()

  @type disable_insight_rules_errors() ::
          invalid_parameter_value_exception() | missing_required_parameter_exception()

  @type enable_insight_rules_errors() ::
          limit_exceeded_exception()
          | invalid_parameter_value_exception()
          | missing_required_parameter_exception()

  @type get_dashboard_errors() ::
          internal_service_fault()
          | invalid_parameter_value_exception()
          | dashboard_not_found_error()

  @type get_insight_rule_report_errors() ::
          invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_required_parameter_exception()

  @type get_metric_data_errors() :: invalid_next_token()

  @type get_metric_statistics_errors() ::
          internal_service_fault()
          | invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()
          | missing_required_parameter_exception()

  @type get_metric_stream_errors() ::
          internal_service_fault()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | invalid_parameter_combination_exception()
          | missing_required_parameter_exception()

  @type list_dashboards_errors() :: internal_service_fault() | invalid_parameter_value_exception()

  @type list_managed_insight_rules_errors() ::
          invalid_next_token()
          | invalid_parameter_value_exception()
          | missing_required_parameter_exception()

  @type list_metric_streams_errors() ::
          invalid_next_token()
          | internal_service_fault()
          | invalid_parameter_value_exception()
          | missing_required_parameter_exception()

  @type list_metrics_errors() :: internal_service_fault() | invalid_parameter_value_exception()

  @type list_tags_for_resource_errors() ::
          internal_service_fault()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()

  @type put_anomaly_detector_errors() ::
          internal_service_fault()
          | limit_exceeded_exception()
          | invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()
          | missing_required_parameter_exception()

  @type put_composite_alarm_errors() :: limit_exceeded_fault()

  @type put_dashboard_errors() :: internal_service_fault() | dashboard_invalid_input_error()

  @type put_insight_rule_errors() ::
          limit_exceeded_exception()
          | invalid_parameter_value_exception()
          | missing_required_parameter_exception()

  @type put_managed_insight_rules_errors() ::
          invalid_parameter_value_exception() | missing_required_parameter_exception()

  @type put_metric_alarm_errors() :: limit_exceeded_fault()

  @type put_metric_data_errors() ::
          internal_service_fault()
          | invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()
          | missing_required_parameter_exception()

  @type put_metric_stream_errors() ::
          internal_service_fault()
          | concurrent_modification_exception()
          | invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()
          | missing_required_parameter_exception()

  @type set_alarm_state_errors() :: invalid_format_fault() | resource_not_found()

  @type start_metric_streams_errors() ::
          internal_service_fault()
          | invalid_parameter_value_exception()
          | missing_required_parameter_exception()

  @type stop_metric_streams_errors() ::
          internal_service_fault()
          | invalid_parameter_value_exception()
          | missing_required_parameter_exception()

  @type tag_resource_errors() ::
          internal_service_fault()
          | concurrent_modification_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          internal_service_fault()
          | concurrent_modification_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2010-08-01",
      content_type: "application/x-www-form-urlencoded",
      credential_scope: nil,
      endpoint_prefix: "monitoring",
      global?: false,
      hostname: nil,
      protocol: "query",
      service_id: "CloudWatch",
      signature_version: "v4",
      signing_name: "monitoring",
      target_prefix: "GraniteServiceVersion20100801"
    }
  end

  @doc """
  Deletes the specified alarms. You can delete up to 100 alarms in one operation.
  However, this total can include no more than one composite alarm. For example,
  you could delete 99 metric alarms and one composite alarms with one operation,
  but you can't delete two composite alarms with one operation. If you specify
  an incorrect alarm name or make any other error in the operation, no alarms
  are deleted. To confirm that alarms were deleted successfully, you can use the
  [DescribeAlarms](https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeAlarms.html)
  operation after using `DeleteAlarms`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatch%20DeleteAlarms&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_alarms_input`)
    %{
      required("AlarmNames") => list(String.t()())
    }
  """

  @spec delete_alarms(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_alarms_errors()}

  def delete_alarms(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteAlarms", input, options)
  end

  @doc """
  Deletes the specified anomaly detection model from your account. For more
  information about how to delete an anomaly detection model, see [Deleting an
  anomaly detection
  model](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Create_Anomaly_Detection_Alarm.html#Delete_Anomaly_Detection_Model)
  in the *CloudWatch User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatch%20DeleteAnomalyDetector&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_anomaly_detector_input`)
    %{
      optional("Dimensions") => list(dimension()()),
      optional("MetricMathAnomalyDetector") => metric_math_anomaly_detector(),
      optional("MetricName") => String.t(),
      optional("Namespace") => String.t(),
      optional("SingleMetricAnomalyDetector") => single_metric_anomaly_detector(),
      optional("Stat") => String.t()
    }
  """

  @spec delete_anomaly_detector(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_anomaly_detector_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_anomaly_detector_errors()}

  def delete_anomaly_detector(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteAnomalyDetector", input, options)
  end

  @doc """
  Deletes all dashboards that you specify. You can specify up to 100 dashboards to
  delete. If there is an error during this call, no dashboards are deleted.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatch%20DeleteDashboards&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_dashboards_input`)
    %{
      required("DashboardNames") => list(String.t()())
    }
  """

  @spec delete_dashboards(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_dashboards_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_dashboards_errors()}

  def delete_dashboards(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteDashboards", input, options)
  end

  @doc """
  Permanently deletes the specified Contributor Insights rules.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatch%20DeleteInsightRules&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_insight_rules_input`)
    %{
      required("RuleNames") => list(String.t()())
    }
  """

  @spec delete_insight_rules(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_insight_rules_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_insight_rules_errors()}

  def delete_insight_rules(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteInsightRules", input, options)
  end

  @doc """
  Permanently deletes the metric stream that you specify.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatch%20DeleteMetricStream&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_metric_stream_input`)
    %{
      required("Name") => String.t()
    }
  """

  @spec delete_metric_stream(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_metric_stream_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_metric_stream_errors()}

  def delete_metric_stream(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteMetricStream", input, options)
  end

  @doc """
  Retrieves the history for the specified alarm. You can filter the results by
  date range or item type. If an alarm name is not specified, the histories for
  either all metric alarms or all composite alarms are returned. CloudWatch
  retains the history of an alarm even if you delete the alarm.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatch%20DescribeAlarmHistory&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_alarm_history_input`)
    %{
      optional("AlarmName") => String.t(),
      optional("AlarmTypes") => list(list(any())()),
      optional("EndDate") => non_neg_integer(),
      optional("HistoryItemType") => list(any()),
      optional("MaxRecords") => integer(),
      optional("NextToken") => String.t(),
      optional("ScanBy") => list(any()),
      optional("StartDate") => non_neg_integer()
    }
  """

  @spec describe_alarm_history(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_alarm_history_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_alarm_history_errors()}

  def describe_alarm_history(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeAlarmHistory", input, options)
  end

  @doc """
  Retrieves the specified alarms. You can filter the results by specifying a
  prefix for the alarm name, the alarm state, or a prefix for any action.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatch%20DescribeAlarms&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_alarms_input`)
    %{
      optional("ActionPrefix") => String.t(),
      optional("AlarmNamePrefix") => String.t(),
      optional("AlarmNames") => list(String.t()()),
      optional("AlarmTypes") => list(list(any())()),
      optional("ChildrenOfAlarmName") => String.t(),
      optional("MaxRecords") => integer(),
      optional("NextToken") => String.t(),
      optional("ParentsOfAlarmName") => String.t(),
      optional("StateValue") => list(any())
    }
  """

  @spec describe_alarms(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_alarms_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_alarms_errors()}

  def describe_alarms(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeAlarms", input, options)
  end

  @doc """
  Retrieves the alarms for the specified metric. To filter the results, specify a
  statistic, period, or unit.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatch%20DescribeAlarmsForMetric&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_alarms_for_metric_input`)
    %{
      optional("Dimensions") => list(dimension()()),
      optional("ExtendedStatistic") => String.t(),
      optional("Period") => integer(),
      optional("Statistic") => list(any()),
      optional("Unit") => list(any()),
      required("MetricName") => String.t(),
      required("Namespace") => String.t()
    }
  """

  @spec describe_alarms_for_metric(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_alarms_for_metric_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def describe_alarms_for_metric(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeAlarmsForMetric", input, options)
  end

  @doc """
  Lists the anomaly detection models that you have created in your account. For
  single metric anomaly detectors, you can list all of the models in your
  account or filter the results to only the models that are related to a certain
  namespace, metric name, or metric dimension. For metric math anomaly
  detectors, you can list them by adding `METRIC_MATH` to the
  `AnomalyDetectorTypes` array. This will return all metric math anomaly
  detectors in your account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatch%20DescribeAnomalyDetectors&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_anomaly_detectors_input`)
    %{
      optional("AnomalyDetectorTypes") => list(list(any())()),
      optional("Dimensions") => list(dimension()()),
      optional("MaxResults") => integer(),
      optional("MetricName") => String.t(),
      optional("Namespace") => String.t(),
      optional("NextToken") => String.t()
    }
  """

  @spec describe_anomaly_detectors(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_anomaly_detectors_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_anomaly_detectors_errors()}

  def describe_anomaly_detectors(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeAnomalyDetectors", input, options)
  end

  @doc """
  Returns a list of all the Contributor Insights rules in your account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatch%20DescribeInsightRules&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_insight_rules_input`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec describe_insight_rules(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_insight_rules_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_insight_rules_errors()}

  def describe_insight_rules(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeInsightRules", input, options)
  end

  @doc """
  Disables the actions for the specified alarms. When an alarm's actions are
  disabled, the alarm actions do not execute when the alarm state changes.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatch%20DisableAlarmActions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:disable_alarm_actions_input`)
    %{
      required("AlarmNames") => list(String.t()())
    }
  """

  @spec disable_alarm_actions(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}

  def disable_alarm_actions(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisableAlarmActions", input, options)
  end

  @doc """
  Disables the specified Contributor Insights rules. When rules are disabled, they
  do not analyze log groups and do not incur costs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatch%20DisableInsightRules&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:disable_insight_rules_input`)
    %{
      required("RuleNames") => list(String.t()())
    }
  """

  @spec disable_insight_rules(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, disable_insight_rules_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disable_insight_rules_errors()}

  def disable_insight_rules(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisableInsightRules", input, options)
  end

  @doc """
  Enables the actions for the specified alarms.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatch%20EnableAlarmActions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:enable_alarm_actions_input`)
    %{
      required("AlarmNames") => list(String.t()())
    }
  """

  @spec enable_alarm_actions(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}

  def enable_alarm_actions(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "EnableAlarmActions", input, options)
  end

  @doc """
  Enables the specified Contributor Insights rules. When rules are enabled, they
  immediately begin analyzing log data.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatch%20EnableInsightRules&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:enable_insight_rules_input`)
    %{
      required("RuleNames") => list(String.t()())
    }
  """

  @spec enable_insight_rules(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, enable_insight_rules_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, enable_insight_rules_errors()}

  def enable_insight_rules(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "EnableInsightRules", input, options)
  end

  @doc """
  Displays the details of the dashboard that you specify.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatch%20GetDashboard&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_dashboard_input`)
    %{
      required("DashboardName") => String.t()
    }
  """

  @spec get_dashboard(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_dashboard_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_dashboard_errors()}

  def get_dashboard(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDashboard", input, options)
  end

  @doc """
  This operation returns the time series data collected by a Contributor Insights
  rule. The data includes the identity and number of contributors to the log
  group. You can also optionally return one or more statistics about each data
  point in the time series. These statistics can include the following:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatch%20GetInsightRuleReport&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_insight_rule_report_input`)
    %{
      optional("MaxContributorCount") => integer(),
      optional("Metrics") => list(String.t()()),
      optional("OrderBy") => String.t(),
      required("EndTime") => non_neg_integer(),
      required("Period") => integer(),
      required("RuleName") => String.t(),
      required("StartTime") => non_neg_integer()
    }
  """

  @spec get_insight_rule_report(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_insight_rule_report_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_insight_rule_report_errors()}

  def get_insight_rule_report(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetInsightRuleReport", input, options)
  end

  @doc """
  You can use the `GetMetricData` API to retrieve CloudWatch metric values. The
  operation can also include a CloudWatch Metrics Insights query, and one or
  more metric math functions. A `GetMetricData` operation that does not include
  a query can retrieve as many as 500 different metrics in a single request,
  with a total of as many as 100,800 data points. You can also optionally
  perform metric math expressions on the values of the returned statistics, to
  create new time series that represent new insights into your data. For
  example, using Lambda metrics, you could divide the Errors metric by the
  Invocations metric to get an error rate time series. For more information
  about metric math expressions, see [Metric Math Syntax and
  Functions](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/using-metric-math.html#metric-math-syntax)
  in the *Amazon CloudWatch User Guide*. If you include a Metrics Insights
  query, each `GetMetricData` operation can include only one query. But the same
  `GetMetricData` operation can also retrieve other metrics. Metrics Insights
  queries can query only the most recent three hours of metric data. For more
  information about Metrics Insights, see [Query your metrics with CloudWatch
  Metrics
  Insights](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/query_with_cloudwatch-metrics-insights.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatch%20GetMetricData&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_metric_data_input`)
    %{
      optional("LabelOptions") => label_options(),
      optional("MaxDatapoints") => integer(),
      optional("NextToken") => String.t(),
      optional("ScanBy") => list(any()),
      required("EndTime") => non_neg_integer(),
      required("MetricDataQueries") => list(metric_data_query()()),
      required("StartTime") => non_neg_integer()
    }
  """

  @spec get_metric_data(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_metric_data_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_metric_data_errors()}

  def get_metric_data(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetMetricData", input, options)
  end

  @doc """
  Gets statistics for the specified metric. The maximum number of data points
  returned from a single call is 1,440. If you request more than 1,440 data
  points, CloudWatch returns an error. To reduce the number of data points, you
  can narrow the specified time range and make multiple requests across adjacent
  time ranges, or you can increase the specified period. Data points are not
  returned in chronological order.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatch%20GetMetricStatistics&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_metric_statistics_input`)
    %{
      optional("Dimensions") => list(dimension()()),
      optional("ExtendedStatistics") => list(String.t()()),
      optional("Statistics") => list(list(any())()),
      optional("Unit") => list(any()),
      required("EndTime") => non_neg_integer(),
      required("MetricName") => String.t(),
      required("Namespace") => String.t(),
      required("Period") => integer(),
      required("StartTime") => non_neg_integer()
    }
  """

  @spec get_metric_statistics(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_metric_statistics_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_metric_statistics_errors()}

  def get_metric_statistics(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetMetricStatistics", input, options)
  end

  @doc """
  Returns information about the metric stream that you specify.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatch%20GetMetricStream&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_metric_stream_input`)
    %{
      required("Name") => String.t()
    }
  """

  @spec get_metric_stream(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_metric_stream_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_metric_stream_errors()}

  def get_metric_stream(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetMetricStream", input, options)
  end

  @doc """
  You can use the `GetMetricWidgetImage` API to retrieve a snapshot graph of one
  or more Amazon CloudWatch metrics as a bitmap image. You can then embed this
  image into your services and products, such as wiki pages, reports, and
  documents. You could also retrieve images regularly, such as every minute, and
  create your own custom live dashboard. The graph you retrieve can include all
  CloudWatch metric graph features, including metric math and horizontal and
  vertical annotations.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatch%20GetMetricWidgetImage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_metric_widget_image_input`)
    %{
      optional("OutputFormat") => String.t(),
      required("MetricWidget") => String.t()
    }
  """

  @spec get_metric_widget_image(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_metric_widget_image_output(), any()}
          | {:error, {:unexpected_response, any()}}

  def get_metric_widget_image(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetMetricWidgetImage", input, options)
  end

  @doc """
  Returns a list of the dashboards for your account. If you include
  `DashboardNamePrefix`, only those dashboards with names starting with the
  prefix are listed. Otherwise, all dashboards in your account are listed.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatch%20ListDashboards&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_dashboards_input`)
    %{
      optional("DashboardNamePrefix") => String.t(),
      optional("NextToken") => String.t()
    }
  """

  @spec list_dashboards(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_dashboards_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_dashboards_errors()}

  def list_dashboards(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListDashboards", input, options)
  end

  @doc """
  Returns a list that contains the number of managed Contributor Insights rules in
  your account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatch%20ListManagedInsightRules&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_managed_insight_rules_input`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("ResourceARN") => String.t()
    }
  """

  @spec list_managed_insight_rules(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_managed_insight_rules_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_managed_insight_rules_errors()}

  def list_managed_insight_rules(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListManagedInsightRules", input, options)
  end

  @doc """
  Returns a list of metric streams in this account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatch%20ListMetricStreams&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_metric_streams_input`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec list_metric_streams(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_metric_streams_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_metric_streams_errors()}

  def list_metric_streams(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListMetricStreams", input, options)
  end

  @doc """
  List the specified metrics. You can use the returned metrics with
  [GetMetricData](https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricData.html)
  or
  [GetMetricStatistics](https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricStatistics.html)
  to get statistical data. Up to 500 results are returned for any one call. To
  retrieve additional results, use the returned token with subsequent calls.
  After you create a metric, allow up to 15 minutes for the metric to appear. To
  see metric statistics sooner, use
  [GetMetricData](https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricData.html)
  or
  [GetMetricStatistics](https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricStatistics.html).
  If you are using CloudWatch cross-account observability, you can use this
  operation in a monitoring account and view metrics from the linked source
  accounts. For more information, see [CloudWatch cross-account
  observability](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatch%20ListMetrics&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_metrics_input`)
    %{
      optional("Dimensions") => list(dimension_filter()()),
      optional("IncludeLinkedAccounts") => boolean(),
      optional("MetricName") => String.t(),
      optional("Namespace") => String.t(),
      optional("NextToken") => String.t(),
      optional("OwningAccount") => String.t(),
      optional("RecentlyActive") => list(any())
    }
  """

  @spec list_metrics(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_metrics_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_metrics_errors()}

  def list_metrics(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListMetrics", input, options)
  end

  @doc """
  Displays the tags associated with a CloudWatch resource. Currently, alarms and
  Contributor Insights rules support tagging.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatch%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_tags_for_resource_input`)
    %{
      required("ResourceARN") => String.t()
    }
  """

  @spec list_tags_for_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_tags_for_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}

  def list_tags_for_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Creates an anomaly detection model for a CloudWatch metric. You can use the
  model to display a band of expected normal values when the metric is graphed.
  If you have enabled unified cross-account observability, and this account is a
  monitoring account, the metric can be in the same account or a source account.
  You can specify the account ID in the object you specify in the
  `SingleMetricAnomalyDetector` parameter.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatch%20PutAnomalyDetector&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_anomaly_detector_input`)
    %{
      optional("Configuration") => anomaly_detector_configuration(),
      optional("Dimensions") => list(dimension()()),
      optional("MetricCharacteristics") => metric_characteristics(),
      optional("MetricMathAnomalyDetector") => metric_math_anomaly_detector(),
      optional("MetricName") => String.t(),
      optional("Namespace") => String.t(),
      optional("SingleMetricAnomalyDetector") => single_metric_anomaly_detector(),
      optional("Stat") => String.t()
    }
  """

  @spec put_anomaly_detector(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_anomaly_detector_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_anomaly_detector_errors()}

  def put_anomaly_detector(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutAnomalyDetector", input, options)
  end

  @doc """
  Creates or updates a *composite alarm*. When you create a composite alarm, you
  specify a rule expression for the alarm that takes into account the alarm
  states of other alarms that you have created. The composite alarm goes into
  ALARM state only if all conditions of the rule are met. The alarms specified
  in a composite alarm's rule expression can include metric alarms and other
  composite alarms. The rule expression of a composite alarm can include as many
  as 100 underlying alarms. Any single alarm can be included in the rule
  expressions of as many as 150 composite alarms.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatch%20PutCompositeAlarm&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_composite_alarm_input`)
    %{
      optional("ActionsEnabled") => boolean(),
      optional("ActionsSuppressor") => String.t(),
      optional("ActionsSuppressorExtensionPeriod") => integer(),
      optional("ActionsSuppressorWaitPeriod") => integer(),
      optional("AlarmActions") => list(String.t()()),
      optional("AlarmDescription") => String.t(),
      optional("InsufficientDataActions") => list(String.t()()),
      optional("OKActions") => list(String.t()()),
      optional("Tags") => list(tag()()),
      required("AlarmName") => String.t(),
      required("AlarmRule") => String.t()
    }
  """

  @spec put_composite_alarm(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_composite_alarm_errors()}

  def put_composite_alarm(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutCompositeAlarm", input, options)
  end

  @doc """
  Creates a dashboard if it does not already exist, or updates an existing
  dashboard. If you update a dashboard, the entire contents are replaced with
  what you specify here. All dashboards in your account are global, not
  region-specific.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatch%20PutDashboard&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_dashboard_input`)
    %{
      required("DashboardBody") => String.t(),
      required("DashboardName") => String.t()
    }
  """

  @spec put_dashboard(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_dashboard_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_dashboard_errors()}

  def put_dashboard(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutDashboard", input, options)
  end

  @doc """
  Creates a Contributor Insights rule. Rules evaluate log events in a CloudWatch
  Logs log group, enabling you to find contributor data for the log events in
  that log group. For more information, see [Using Contributor Insights to
  Analyze High-Cardinality
  Data](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ContributorInsights.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatch%20PutInsightRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_insight_rule_input`)
    %{
      optional("RuleState") => String.t(),
      optional("Tags") => list(tag()()),
      required("RuleDefinition") => String.t(),
      required("RuleName") => String.t()
    }
  """

  @spec put_insight_rule(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_insight_rule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_insight_rule_errors()}

  def put_insight_rule(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutInsightRule", input, options)
  end

  @doc """
  Creates a managed Contributor Insights rule for a specified Amazon Web Services
  resource. When you enable a managed rule, you create a Contributor Insights
  rule that collects data from Amazon Web Services services. You cannot edit
  these rules with `PutInsightRule`. The rules can be enabled, disabled, and
  deleted using `EnableInsightRules`, `DisableInsightRules`, and
  `DeleteInsightRules`. If a previously created managed rule is currently
  disabled, a subsequent call to this API will re-enable it. Use
  `ListManagedInsightRules` to describe all available rules.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatch%20PutManagedInsightRules&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_managed_insight_rules_input`)
    %{
      required("ManagedRules") => list(managed_rule()())
    }
  """

  @spec put_managed_insight_rules(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_managed_insight_rules_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_managed_insight_rules_errors()}

  def put_managed_insight_rules(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutManagedInsightRules", input, options)
  end

  @doc """
  Creates or updates an alarm and associates it with the specified metric, metric
  math expression, anomaly detection model, or Metrics Insights query. For more
  information about using a Metrics Insights query for an alarm, see [Create
  alarms on Metrics Insights
  queries](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Create_Metrics_Insights_Alarm.html).
  Alarms based on anomaly detection models cannot have Auto Scaling actions.
  When this operation creates an alarm, the alarm state is immediately set to
  `INSUFFICIENT_DATA`. The alarm is then evaluated and its state is set
  appropriately. Any actions associated with the new state are then executed.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatch%20PutMetricAlarm&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_metric_alarm_input`)
    %{
      optional("ActionsEnabled") => boolean(),
      optional("AlarmActions") => list(String.t()()),
      optional("AlarmDescription") => String.t(),
      optional("DatapointsToAlarm") => integer(),
      optional("Dimensions") => list(dimension()()),
      optional("EvaluateLowSampleCountPercentile") => String.t(),
      optional("ExtendedStatistic") => String.t(),
      optional("InsufficientDataActions") => list(String.t()()),
      optional("MetricName") => String.t(),
      optional("Metrics") => list(metric_data_query()()),
      optional("Namespace") => String.t(),
      optional("OKActions") => list(String.t()()),
      optional("Period") => integer(),
      optional("Statistic") => list(any()),
      optional("Tags") => list(tag()()),
      optional("Threshold") => float(),
      optional("ThresholdMetricId") => String.t(),
      optional("TreatMissingData") => String.t(),
      optional("Unit") => list(any()),
      required("AlarmName") => String.t(),
      required("ComparisonOperator") => list(any()),
      required("EvaluationPeriods") => integer()
    }
  """

  @spec put_metric_alarm(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_metric_alarm_errors()}

  def put_metric_alarm(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutMetricAlarm", input, options)
  end

  @doc """
  Publishes metric data points to Amazon CloudWatch. CloudWatch associates the
  data points with the specified metric. If the specified metric does not exist,
  CloudWatch creates the metric. When CloudWatch creates a metric, it can take
  up to fifteen minutes for the metric to appear in calls to
  [ListMetrics](https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_ListMetrics.html).
  You can publish either individual data points in the `Value` field, or arrays
  of values and the number of times each value occurred during the period by
  using the `Values` and `Counts` fields in the `MetricData` structure. Using
  the `Values` and `Counts` method enables you to publish up to 150 values per
  metric with one `PutMetricData` request, and supports retrieving percentile
  statistics on this data. Each `PutMetricData` request is limited to 1 MB in
  size for HTTP POST requests. You can send a payload compressed by gzip. Each
  request is also limited to no more than 1000 different metrics.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatch%20PutMetricData&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_metric_data_input`)
    %{
      required("MetricData") => list(metric_datum()()),
      required("Namespace") => String.t()
    }
  """

  @spec put_metric_data(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_metric_data_errors()}

  def put_metric_data(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutMetricData", input, options)
  end

  @doc """
  Creates or updates a metric stream. Metric streams can automatically stream
  CloudWatch metrics to Amazon Web Services destinations, including Amazon S3,
  and to many third-party solutions. For more information, see [ Using Metric
  Streams](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Metric-Streams.html).
  To create a metric stream, you must be signed in to an account that has the
  `iam:PassRole` permission and either the `CloudWatchFullAccess` policy or the
  `cloudwatch:PutMetricStream` permission.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatch%20PutMetricStream&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_metric_stream_input`)
    %{
      optional("ExcludeFilters") => list(metric_stream_filter()()),
      optional("IncludeFilters") => list(metric_stream_filter()()),
      optional("IncludeLinkedAccountsMetrics") => boolean(),
      optional("StatisticsConfigurations") => list(metric_stream_statistics_configuration()()),
      optional("Tags") => list(tag()()),
      required("FirehoseArn") => String.t(),
      required("Name") => String.t(),
      required("OutputFormat") => list(any()),
      required("RoleArn") => String.t()
    }
  """

  @spec put_metric_stream(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_metric_stream_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_metric_stream_errors()}

  def put_metric_stream(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutMetricStream", input, options)
  end

  @doc """
  Temporarily sets the state of an alarm for testing purposes. When the updated
  state differs from the previous value, the action configured for the
  appropriate state is invoked. For example, if your alarm is configured to send
  an Amazon SNS message when an alarm is triggered, temporarily changing the
  alarm state to `ALARM` sends an SNS message. Metric alarms returns to their
  actual state quickly, often within seconds. Because the metric alarm state
  change happens quickly, it is typically only visible in the alarm's
  **History** tab in the Amazon CloudWatch console or through
  [DescribeAlarmHistory](https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeAlarmHistory.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatch%20SetAlarmState&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:set_alarm_state_input`)
    %{
      optional("StateReasonData") => String.t(),
      required("AlarmName") => String.t(),
      required("StateReason") => String.t(),
      required("StateValue") => list(any())
    }
  """

  @spec set_alarm_state(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, set_alarm_state_errors()}

  def set_alarm_state(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetAlarmState", input, options)
  end

  @doc """
  Starts the streaming of metrics for one or more of your metric streams.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatch%20StartMetricStreams&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:start_metric_streams_input`)
    %{
      required("Names") => list(String.t()())
    }
  """

  @spec start_metric_streams(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, start_metric_streams_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_metric_streams_errors()}

  def start_metric_streams(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartMetricStreams", input, options)
  end

  @doc """
  Stops the streaming of metrics for one or more of your metric streams.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatch%20StopMetricStreams&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:stop_metric_streams_input`)
    %{
      required("Names") => list(String.t()())
    }
  """

  @spec stop_metric_streams(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, stop_metric_streams_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_metric_streams_errors()}

  def stop_metric_streams(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopMetricStreams", input, options)
  end

  @doc """
  Assigns one or more tags (key-value pairs) to the specified CloudWatch resource.
  Currently, the only CloudWatch resources that can be tagged are alarms and
  Contributor Insights rules. Tags can help you organize and categorize your
  resources. You can also use them to scope user permissions by granting a user
  permission to access or change only resources with certain tag values.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatch%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:tag_resource_input`)
    %{
      required("ResourceARN") => String.t(),
      required("Tags") => list(tag()())
    }
  """

  @spec tag_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, tag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}

  def tag_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes one or more tags from the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatch%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:untag_resource_input`)
    %{
      required("ResourceARN") => String.t(),
      required("TagKeys") => list(String.t()())
    }
  """

  @spec untag_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, untag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}

  def untag_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end
end
