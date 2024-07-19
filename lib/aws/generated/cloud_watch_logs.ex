# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CloudWatchLogs do
  @moduledoc """
  You can use Amazon CloudWatch Logs to monitor, store, and access your log files
  from EC2 instances, CloudTrail, and other sources. You can then retrieve the
  associated log data from CloudWatch Logs using the CloudWatch console.
  Alternatively, you can use CloudWatch Logs commands in the Amazon Web Services
  CLI, CloudWatch Logs API, or CloudWatch Logs SDK. You can use CloudWatch Logs
  to:
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      invalid_sequence_token_exception() :: %{
        "expectedSequenceToken" => String.t(),
        "message" => String.t()
      }
      
  """
  @type invalid_sequence_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_anomalies_response() :: %{
        "anomalies" => list(anomaly()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_anomalies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_resource_policies_request() :: %{
        optional("limit") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type describe_resource_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delivery() :: %{
        "arn" => String.t(),
        "deliveryDestinationArn" => String.t(),
        "deliveryDestinationType" => list(any()),
        "deliverySourceName" => String.t(),
        "id" => String.t(),
        "tags" => map()
      }
      
  """
  @type delivery() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("resourceArn") => String.t(),
        required("tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_log_groups_request() :: %{
        optional("accountIdentifiers") => list(String.t()()),
        optional("includeLinkedAccounts") => boolean(),
        optional("limit") => integer(),
        optional("logGroupClass") => list(any()),
        optional("logGroupNamePattern") => String.t(),
        optional("logGroupNamePrefix") => String.t(),
        optional("nextToken") => String.t()
      }
      
  """
  @type describe_log_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_query_definition_request() :: %{
        required("queryDefinitionId") => String.t()
      }
      
  """
  @type delete_query_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_log_anomaly_detector_request() :: %{
        required("anomalyDetectorArn") => String.t()
      }
      
  """
  @type get_log_anomaly_detector_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_delivery_destination_policy_request() :: %{
        required("deliveryDestinationName") => String.t(),
        required("deliveryDestinationPolicy") => String.t()
      }
      
  """
  @type put_delivery_destination_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_policy() :: %{
        "accountId" => String.t(),
        "lastUpdatedTime" => float(),
        "policyDocument" => String.t(),
        "policyName" => String.t(),
        "policyType" => list(any()),
        "scope" => list(any()),
        "selectionCriteria" => String.t()
      }
      
  """
  @type account_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_export_task_request() :: %{
        optional("destinationPrefix") => String.t(),
        optional("logStreamNamePrefix") => String.t(),
        optional("taskName") => String.t(),
        required("destination") => String.t(),
        required("from") => float(),
        required("logGroupName") => String.t(),
        required("to") => float()
      }
      
  """
  @type create_export_task_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_log_group_request() :: %{
        required("logGroupName") => String.t(),
        required("tags") => map()
      }
      
  """
  @type tag_log_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_query_definitions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("queryDefinitionNamePrefix") => String.t()
      }
      
  """
  @type describe_query_definitions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_log_group_response() :: %{
        "tags" => map()
      }
      
  """
  @type list_tags_log_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_destination_response() :: %{
        "destination" => destination()
      }
      
  """
  @type put_destination_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      filter_log_events_response() :: %{
        "events" => list(filtered_log_event()()),
        "nextToken" => String.t(),
        "searchedLogStreams" => list(searched_log_stream()())
      }
      
  """
  @type filter_log_events_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_destination_request() :: %{
        optional("tags") => map(),
        required("destinationName") => String.t(),
        required("roleArn") => String.t(),
        required("targetArn") => String.t()
      }
      
  """
  @type put_destination_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_query_results_response() :: %{
        "encryptionKey" => String.t(),
        "results" => list(list(result_field()())()),
        "statistics" => query_statistics(),
        "status" => list(any())
      }
      
  """
  @type get_query_results_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_queries_request() :: %{
        optional("logGroupName") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("status") => list(any())
      }
      
  """
  @type describe_queries_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_account_policy_response() :: %{
        "accountPolicy" => account_policy()
      }
      
  """
  @type put_account_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_queries_response() :: %{
        "nextToken" => String.t(),
        "queries" => list(query_info()())
      }
      
  """
  @type describe_queries_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_log_events_request() :: %{
        optional("sequenceToken") => String.t(),
        required("logEvents") => list(input_log_event()()),
        required("logGroupName") => String.t(),
        required("logStreamName") => String.t()
      }
      
  """
  @type put_log_events_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_account_policy_request() :: %{
        optional("scope") => list(any()),
        optional("selectionCriteria") => String.t(),
        required("policyDocument") => String.t(),
        required("policyName") => String.t(),
        required("policyType") => list(any())
      }
      
  """
  @type put_account_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_already_accepted_exception() :: %{
        "expectedSequenceToken" => String.t(),
        "message" => String.t()
      }
      
  """
  @type data_already_accepted_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_task_execution_info() :: %{
        "completionTime" => float(),
        "creationTime" => float()
      }
      
  """
  @type export_task_execution_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_data_protection_policy_request() :: %{
        required("logGroupIdentifier") => String.t(),
        required("policyDocument") => String.t()
      }
      
  """
  @type put_data_protection_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_query_results_request() :: %{
        required("queryId") => String.t()
      }
      
  """
  @type get_query_results_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_delivery_request() :: %{
        required("id") => String.t()
      }
      
  """
  @type get_delivery_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      live_tail_session_metadata() :: %{
        "sampled" => boolean()
      }
      
  """
  @type live_tail_session_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_log_group_request() :: %{
        optional("kmsKeyId") => String.t(),
        optional("logGroupClass") => list(any()),
        optional("tags") => map(),
        required("logGroupName") => String.t()
      }
      
  """
  @type create_log_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_delivery_destination_request() :: %{
        optional("outputFormat") => list(any()),
        optional("tags") => map(),
        required("deliveryDestinationConfiguration") => delivery_destination_configuration(),
        required("name") => String.t()
      }
      
  """
  @type put_delivery_destination_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_delivery_source_response() :: %{
        "deliverySource" => delivery_source()
      }
      
  """
  @type get_delivery_source_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subscription_filter() :: %{
        "creationTime" => float(),
        "destinationArn" => String.t(),
        "distribution" => list(any()),
        "filterName" => String.t(),
        "filterPattern" => String.t(),
        "logGroupName" => String.t(),
        "roleArn" => String.t()
      }
      
  """
  @type subscription_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_export_tasks_response() :: %{
        "exportTasks" => list(export_task()()),
        "nextToken" => String.t()
      }
      
  """
  @type describe_export_tasks_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      live_tail_session_start() :: %{
        "logEventFilterPattern" => String.t(),
        "logGroupIdentifiers" => list(String.t()()),
        "logStreamNamePrefixes" => list(String.t()()),
        "logStreamNames" => list(String.t()()),
        "requestId" => String.t(),
        "sessionId" => String.t()
      }
      
  """
  @type live_tail_session_start() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_log_stream_request() :: %{
        required("logGroupName") => String.t(),
        required("logStreamName") => String.t()
      }
      
  """
  @type create_log_stream_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_log_record_response() :: %{
        "logRecord" => map()
      }
      
  """
  @type get_log_record_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_operation_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_operation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_delivery_response() :: %{
        "delivery" => delivery()
      }
      
  """
  @type create_delivery_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_account_policies_response() :: %{
        "accountPolicies" => list(account_policy()())
      }
      
  """
  @type describe_account_policies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_anomaly_request() :: %{
        optional("anomalyId") => String.t(),
        optional("patternId") => String.t(),
        optional("suppressionPeriod") => suppression_period(),
        optional("suppressionType") => list(any()),
        required("anomalyDetectorArn") => String.t()
      }
      
  """
  @type update_anomaly_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_retention_policy_request() :: %{
        required("logGroupName") => String.t(),
        required("retentionInDays") => integer()
      }
      
  """
  @type put_retention_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_query_request() :: %{
        optional("limit") => integer(),
        optional("logGroupIdentifiers") => list(String.t()()),
        optional("logGroupName") => String.t(),
        optional("logGroupNames") => list(String.t()()),
        required("endTime") => float(),
        required("queryString") => String.t(),
        required("startTime") => float()
      }
      
  """
  @type start_query_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_deliveries_request() :: %{
        optional("limit") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type describe_deliveries_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      session_timeout_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type session_timeout_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_log_group_fields_response() :: %{
        "logGroupFields" => list(log_group_field()())
      }
      
  """
  @type get_log_group_fields_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_log_anomaly_detector_request() :: %{
        optional("anomalyVisibilityTime") => float(),
        optional("evaluationFrequency") => list(any()),
        optional("filterPattern") => String.t(),
        required("anomalyDetectorArn") => String.t(),
        required("enabled") => boolean()
      }
      
  """
  @type update_log_anomaly_detector_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_metric_filters_request() :: %{
        optional("filterNamePrefix") => String.t(),
        optional("limit") => integer(),
        optional("logGroupName") => String.t(),
        optional("metricName") => String.t(),
        optional("metricNamespace") => String.t(),
        optional("nextToken") => String.t()
      }
      
  """
  @type describe_metric_filters_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      session_streaming_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type session_streaming_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_data_protection_policy_response() :: %{
        "lastUpdatedTime" => float(),
        "logGroupIdentifier" => String.t(),
        "policyDocument" => String.t()
      }
      
  """
  @type put_data_protection_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("resourceArn") => String.t(),
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_destinations_response() :: %{
        "destinations" => list(destination()()),
        "nextToken" => String.t()
      }
      
  """
  @type describe_destinations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      live_tail_session_update() :: %{
        "sessionMetadata" => live_tail_session_metadata(),
        "sessionResults" => list(live_tail_session_log_event()())
      }
      
  """
  @type live_tail_session_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      query_compile_error_location() :: %{
        "endCharOffset" => integer(),
        "startCharOffset" => integer()
      }
      
  """
  @type query_compile_error_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      operation_aborted_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type operation_aborted_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_query_definitions_response() :: %{
        "nextToken" => String.t(),
        "queryDefinitions" => list(query_definition()())
      }
      
  """
  @type describe_query_definitions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_delivery_response() :: %{
        "delivery" => delivery()
      }
      
  """
  @type get_delivery_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_subscription_filters_request() :: %{
        optional("filterNamePrefix") => String.t(),
        optional("limit") => integer(),
        optional("nextToken") => String.t(),
        required("logGroupName") => String.t()
      }
      
  """
  @type describe_subscription_filters_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_destination_policy_request() :: %{
        optional("forceUpdate") => boolean(),
        required("accessPolicy") => String.t(),
        required("destinationName") => String.t()
      }
      
  """
  @type put_destination_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      input_log_event() :: %{
        "message" => String.t(),
        "timestamp" => float()
      }
      
  """
  @type input_log_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_retention_policy_request() :: %{
        required("logGroupName") => String.t()
      }
      
  """
  @type delete_retention_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      malformed_query_exception() :: %{
        "message" => String.t(),
        "queryCompileError" => query_compile_error()
      }
      
  """
  @type malformed_query_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      live_tail_session_log_event() :: %{
        "ingestionTime" => float(),
        "logGroupIdentifier" => String.t(),
        "logStreamName" => String.t(),
        "message" => String.t(),
        "timestamp" => float()
      }
      
  """
  @type live_tail_session_log_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_delivery_destination_request() :: %{
        required("name") => String.t()
      }
      
  """
  @type get_delivery_destination_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_log_anomaly_detector_request() :: %{
        required("anomalyDetectorArn") => String.t()
      }
      
  """
  @type delete_log_anomaly_detector_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_kms_key_request() :: %{
        optional("logGroupName") => String.t(),
        optional("resourceIdentifier") => String.t()
      }
      
  """
  @type disassociate_kms_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_export_tasks_request() :: %{
        optional("limit") => integer(),
        optional("nextToken") => String.t(),
        optional("statusCode") => list(any()),
        optional("taskId") => String.t()
      }
      
  """
  @type describe_export_tasks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_log_anomaly_detector_response() :: %{
        "anomalyDetectorStatus" => list(any()),
        "anomalyVisibilityTime" => float(),
        "creationTimeStamp" => float(),
        "detectorName" => String.t(),
        "evaluationFrequency" => list(any()),
        "filterPattern" => String.t(),
        "kmsKeyId" => String.t(),
        "lastModifiedTimeStamp" => float(),
        "logGroupArnList" => list(String.t()())
      }
      
  """
  @type get_log_anomaly_detector_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_query_definition_response() :: %{
        "success" => boolean()
      }
      
  """
  @type delete_query_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_log_streams_response() :: %{
        "logStreams" => list(log_stream()()),
        "nextToken" => String.t()
      }
      
  """
  @type describe_log_streams_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_delivery_destination_policy_response() :: %{
        "policy" => policy()
      }
      
  """
  @type put_delivery_destination_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_task_status() :: %{
        "code" => list(any()),
        "message" => String.t()
      }
      
  """
  @type export_task_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delivery_destination_configuration() :: %{
        "destinationResourceArn" => String.t()
      }
      
  """
  @type delivery_destination_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      suppression_period() :: %{
        "suppressionUnit" => list(any()),
        "value" => integer()
      }
      
  """
  @type suppression_period() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pattern_token() :: %{
        "dynamicTokenPosition" => integer(),
        "enumerations" => map(),
        "isDynamic" => boolean(),
        "tokenString" => String.t()
      }
      
  """
  @type pattern_token() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_log_stream_request() :: %{
        required("logGroupName") => String.t(),
        required("logStreamName") => String.t()
      }
      
  """
  @type delete_log_stream_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_export_task_response() :: %{
        "taskId" => String.t()
      }
      
  """
  @type create_export_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_delivery_destinations_response() :: %{
        "deliveryDestinations" => list(delivery_destination()()),
        "nextToken" => String.t()
      }
      
  """
  @type describe_delivery_destinations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_kms_key_request() :: %{
        optional("logGroupName") => String.t(),
        optional("resourceIdentifier") => String.t(),
        required("kmsKeyId") => String.t()
      }
      
  """
  @type associate_kms_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_log_record_request() :: %{
        optional("unmask") => boolean(),
        required("logRecordPointer") => String.t()
      }
      
  """
  @type get_log_record_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_delivery_destination_policy_request() :: %{
        required("deliveryDestinationName") => String.t()
      }
      
  """
  @type delete_delivery_destination_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_filter_match_record() :: %{
        "eventMessage" => String.t(),
        "eventNumber" => float(),
        "extractedValues" => map()
      }
      
  """
  @type metric_filter_match_record() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_query_request() :: %{
        required("queryId") => String.t()
      }
      
  """
  @type stop_query_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_query_response() :: %{
        "success" => boolean()
      }
      
  """
  @type stop_query_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_log_anomaly_detector_response() :: %{
        "anomalyDetectorArn" => String.t()
      }
      
  """
  @type create_log_anomaly_detector_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_delivery_source_request() :: %{
        optional("tags") => map(),
        required("logType") => String.t(),
        required("name") => String.t(),
        required("resourceArn") => String.t()
      }
      
  """
  @type put_delivery_source_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      log_group_field() :: %{
        "name" => String.t(),
        "percent" => integer()
      }
      
  """
  @type log_group_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      log_stream() :: %{
        "arn" => String.t(),
        "creationTime" => float(),
        "firstEventTimestamp" => float(),
        "lastEventTimestamp" => float(),
        "lastIngestionTime" => float(),
        "logStreamName" => String.t(),
        "storedBytes" => float(),
        "uploadSequenceToken" => String.t()
      }
      
  """
  @type log_stream() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "tags" => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_metric_filter_request() :: %{
        required("filterName") => String.t(),
        required("filterPattern") => String.t(),
        required("logGroupName") => String.t(),
        required("metricTransformations") => list(metric_transformation()())
      }
      
  """
  @type put_metric_filter_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      filter_log_events_request() :: %{
        optional("endTime") => float(),
        optional("filterPattern") => String.t(),
        optional("interleaved") => boolean(),
        optional("limit") => integer(),
        optional("logGroupIdentifier") => String.t(),
        optional("logGroupName") => String.t(),
        optional("logStreamNamePrefix") => String.t(),
        optional("logStreamNames") => list(String.t()()),
        optional("nextToken") => String.t(),
        optional("startTime") => float(),
        optional("unmask") => boolean()
      }
      
  """
  @type filter_log_events_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_deliveries_response() :: %{
        "deliveries" => list(delivery()()),
        "nextToken" => String.t()
      }
      
  """
  @type describe_deliveries_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_unavailable_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_destination_request() :: %{
        required("destinationName") => String.t()
      }
      
  """
  @type delete_destination_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_account_policy_request() :: %{
        required("policyName") => String.t(),
        required("policyType") => list(any())
      }
      
  """
  @type delete_account_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_log_groups_response() :: %{
        "logGroups" => list(log_group()()),
        "nextToken" => String.t()
      }
      
  """
  @type describe_log_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_log_group_request() :: %{
        required("logGroupName") => String.t(),
        required("tags") => list(String.t()())
      }
      
  """
  @type untag_log_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_subscription_filter_request() :: %{
        optional("distribution") => list(any()),
        optional("roleArn") => String.t(),
        required("destinationArn") => String.t(),
        required("filterName") => String.t(),
        required("filterPattern") => String.t(),
        required("logGroupName") => String.t()
      }
      
  """
  @type put_subscription_filter_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_delivery_sources_response() :: %{
        "deliverySources" => list(delivery_source()()),
        "nextToken" => String.t()
      }
      
  """
  @type describe_delivery_sources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_live_tail_response() :: %{
        "responseStream" => list()
      }
      
  """
  @type start_live_tail_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delivery_destination() :: %{
        "arn" => String.t(),
        "deliveryDestinationConfiguration" => delivery_destination_configuration(),
        "deliveryDestinationType" => list(any()),
        "name" => String.t(),
        "outputFormat" => list(any()),
        "tags" => map()
      }
      
  """
  @type delivery_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      query_compile_error() :: %{
        "location" => query_compile_error_location(),
        "message" => String.t()
      }
      
  """
  @type query_compile_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_delivery_destination_response() :: %{
        "deliveryDestination" => delivery_destination()
      }
      
  """
  @type get_delivery_destination_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_log_anomaly_detector_request() :: %{
        optional("anomalyVisibilityTime") => float(),
        optional("detectorName") => String.t(),
        optional("evaluationFrequency") => list(any()),
        optional("filterPattern") => String.t(),
        optional("kmsKeyId") => String.t(),
        optional("tags") => map(),
        required("logGroupArnList") => list(String.t()())
      }
      
  """
  @type create_log_anomaly_detector_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_delivery_destination_policy_response() :: %{
        "policy" => policy()
      }
      
  """
  @type get_delivery_destination_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_log_group_fields_request() :: %{
        optional("logGroupIdentifier") => String.t(),
        optional("logGroupName") => String.t(),
        optional("time") => float()
      }
      
  """
  @type get_log_group_fields_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_query_definition_request() :: %{
        optional("clientToken") => String.t(),
        optional("logGroupNames") => list(String.t()()),
        optional("queryDefinitionId") => String.t(),
        required("name") => String.t(),
        required("queryString") => String.t()
      }
      
  """
  @type put_query_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_task() :: %{
        "destination" => String.t(),
        "destinationPrefix" => String.t(),
        "executionInfo" => export_task_execution_info(),
        "from" => float(),
        "logGroupName" => String.t(),
        "status" => export_task_status(),
        "taskId" => String.t(),
        "taskName" => String.t(),
        "to" => float()
      }
      
  """
  @type export_task() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_transformation() :: %{
        "defaultValue" => float(),
        "dimensions" => map(),
        "metricName" => String.t(),
        "metricNamespace" => String.t(),
        "metricValue" => String.t(),
        "unit" => list(any())
      }
      
  """
  @type metric_transformation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_log_group_request() :: %{
        required("logGroupName") => String.t()
      }
      
  """
  @type list_tags_log_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_policy() :: %{
        "lastUpdatedTime" => float(),
        "policyDocument" => String.t(),
        "policyName" => String.t()
      }
      
  """
  @type resource_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      anomaly() :: %{
        "active" => boolean(),
        "anomalyDetectorArn" => String.t(),
        "anomalyId" => String.t(),
        "description" => String.t(),
        "firstSeen" => float(),
        "histogram" => map(),
        "isPatternLevelSuppression" => boolean(),
        "lastSeen" => float(),
        "logGroupArnList" => list(String.t()()),
        "logSamples" => list(log_event()()),
        "patternId" => String.t(),
        "patternRegex" => String.t(),
        "patternString" => String.t(),
        "patternTokens" => list(pattern_token()()),
        "priority" => String.t(),
        "state" => list(any()),
        "suppressed" => boolean(),
        "suppressedDate" => float(),
        "suppressedUntil" => float()
      }
      
  """
  @type anomaly() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_anomalies_request() :: %{
        optional("anomalyDetectorArn") => String.t(),
        optional("limit") => integer(),
        optional("nextToken") => String.t(),
        optional("suppressionState") => list(any())
      }
      
  """
  @type list_anomalies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_delivery_destination_response() :: %{
        "deliveryDestination" => delivery_destination()
      }
      
  """
  @type put_delivery_destination_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_delivery_sources_request() :: %{
        optional("limit") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type describe_delivery_sources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_query_response() :: %{
        "queryId" => String.t()
      }
      
  """
  @type start_query_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_live_tail_request() :: %{
        optional("logEventFilterPattern") => String.t(),
        optional("logStreamNamePrefixes") => list(String.t()()),
        optional("logStreamNames") => list(String.t()()),
        required("logGroupIdentifiers") => list(String.t()())
      }
      
  """
  @type start_live_tail_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      filtered_log_event() :: %{
        "eventId" => String.t(),
        "ingestionTime" => float(),
        "logStreamName" => String.t(),
        "message" => String.t(),
        "timestamp" => float()
      }
      
  """
  @type filtered_log_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_data_protection_policy_request() :: %{
        required("logGroupIdentifier") => String.t()
      }
      
  """
  @type delete_data_protection_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy() :: %{
        "deliveryDestinationPolicy" => String.t()
      }
      
  """
  @type policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_resource_policy_request() :: %{
        optional("policyDocument") => String.t(),
        optional("policyName") => String.t()
      }
      
  """
  @type put_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_delivery_source_request() :: %{
        required("name") => String.t()
      }
      
  """
  @type delete_delivery_source_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_log_events_request() :: %{
        optional("endTime") => float(),
        optional("limit") => integer(),
        optional("logGroupIdentifier") => String.t(),
        optional("logGroupName") => String.t(),
        optional("nextToken") => String.t(),
        optional("startFromHead") => boolean(),
        optional("startTime") => float(),
        optional("unmask") => boolean(),
        required("logStreamName") => String.t()
      }
      
  """
  @type get_log_events_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rejected_log_events_info() :: %{
        "expiredLogEventEndIndex" => integer(),
        "tooNewLogEventStartIndex" => integer(),
        "tooOldLogEventEndIndex" => integer()
      }
      
  """
  @type rejected_log_events_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_data_protection_policy_request() :: %{
        required("logGroupIdentifier") => String.t()
      }
      
  """
  @type get_data_protection_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_log_events_response() :: %{
        "events" => list(output_log_event()()),
        "nextBackwardToken" => String.t(),
        "nextForwardToken" => String.t()
      }
      
  """
  @type get_log_events_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      output_log_event() :: %{
        "ingestionTime" => float(),
        "message" => String.t(),
        "timestamp" => float()
      }
      
  """
  @type output_log_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      searched_log_stream() :: %{
        "logStreamName" => String.t(),
        "searchedCompletely" => boolean()
      }
      
  """
  @type searched_log_stream() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_account_policies_request() :: %{
        optional("accountIdentifiers") => list(String.t()()),
        optional("policyName") => String.t(),
        required("policyType") => list(any())
      }
      
  """
  @type describe_account_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_filter() :: %{
        "creationTime" => float(),
        "filterName" => String.t(),
        "filterPattern" => String.t(),
        "logGroupName" => String.t(),
        "metricTransformations" => list(metric_transformation()())
      }
      
  """
  @type metric_filter() :: %{String.t() => any()}

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
        required("resourceArn") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      destination() :: %{
        "accessPolicy" => String.t(),
        "arn" => String.t(),
        "creationTime" => float(),
        "destinationName" => String.t(),
        "roleArn" => String.t(),
        "targetArn" => String.t()
      }
      
  """
  @type destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_log_events_response() :: %{
        "nextSequenceToken" => String.t(),
        "rejectedLogEventsInfo" => rejected_log_events_info()
      }
      
  """
  @type put_log_events_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_delivery_source_response() :: %{
        "deliverySource" => delivery_source()
      }
      
  """
  @type put_delivery_source_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_delivery_request() :: %{
        required("id") => String.t()
      }
      
  """
  @type delete_delivery_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      log_group() :: %{
        "arn" => String.t(),
        "creationTime" => float(),
        "dataProtectionStatus" => list(any()),
        "inheritedProperties" => list(list(any())()),
        "kmsKeyId" => String.t(),
        "logGroupArn" => String.t(),
        "logGroupClass" => list(any()),
        "logGroupName" => String.t(),
        "metricFilterCount" => integer(),
        "retentionInDays" => integer(),
        "storedBytes" => float()
      }
      
  """
  @type log_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_log_anomaly_detectors_request() :: %{
        optional("filterLogGroupArn") => String.t(),
        optional("limit") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_log_anomaly_detectors_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_log_streams_request() :: %{
        optional("descending") => boolean(),
        optional("limit") => integer(),
        optional("logGroupIdentifier") => String.t(),
        optional("logGroupName") => String.t(),
        optional("logStreamNamePrefix") => String.t(),
        optional("nextToken") => String.t(),
        optional("orderBy") => list(any())
      }
      
  """
  @type describe_log_streams_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      result_field() :: %{
        "field" => String.t(),
        "value" => String.t()
      }
      
  """
  @type result_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_resource_policy_response() :: %{
        "resourcePolicy" => resource_policy()
      }
      
  """
  @type put_resource_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_delivery_source_request() :: %{
        required("name") => String.t()
      }
      
  """
  @type get_delivery_source_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_metric_filter_request() :: %{
        required("filterName") => String.t(),
        required("logGroupName") => String.t()
      }
      
  """
  @type delete_metric_filter_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_resource_policies_response() :: %{
        "nextToken" => String.t(),
        "resourcePolicies" => list(resource_policy()())
      }
      
  """
  @type describe_resource_policies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_subscription_filters_response() :: %{
        "nextToken" => String.t(),
        "subscriptionFilters" => list(subscription_filter()())
      }
      
  """
  @type describe_subscription_filters_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      query_statistics() :: %{
        "bytesScanned" => float(),
        "recordsMatched" => float(),
        "recordsScanned" => float()
      }
      
  """
  @type query_statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_data_protection_policy_response() :: %{
        "lastUpdatedTime" => float(),
        "logGroupIdentifier" => String.t(),
        "policyDocument" => String.t()
      }
      
  """
  @type get_data_protection_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delivery_source() :: %{
        "arn" => String.t(),
        "logType" => String.t(),
        "name" => String.t(),
        "resourceArns" => list(String.t()()),
        "service" => String.t(),
        "tags" => map()
      }
      
  """
  @type delivery_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_resource_policy_request() :: %{
        optional("policyName") => String.t()
      }
      
  """
  @type delete_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      anomaly_detector() :: %{
        "anomalyDetectorArn" => String.t(),
        "anomalyDetectorStatus" => list(any()),
        "anomalyVisibilityTime" => float(),
        "creationTimeStamp" => float(),
        "detectorName" => String.t(),
        "evaluationFrequency" => list(any()),
        "filterPattern" => String.t(),
        "kmsKeyId" => String.t(),
        "lastModifiedTimeStamp" => float(),
        "logGroupArnList" => list(String.t()())
      }
      
  """
  @type anomaly_detector() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_log_anomaly_detectors_response() :: %{
        "anomalyDetectors" => list(anomaly_detector()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_log_anomaly_detectors_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_delivery_destination_request() :: %{
        required("name") => String.t()
      }
      
  """
  @type delete_delivery_destination_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_export_task_request() :: %{
        required("taskId") => String.t()
      }
      
  """
  @type cancel_export_task_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_already_exists_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_subscription_filter_request() :: %{
        required("filterName") => String.t(),
        required("logGroupName") => String.t()
      }
      
  """
  @type delete_subscription_filter_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_destinations_request() :: %{
        optional("DestinationNamePrefix") => String.t(),
        optional("limit") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type describe_destinations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test_metric_filter_response() :: %{
        "matches" => list(metric_filter_match_record()())
      }
      
  """
  @type test_metric_filter_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      query_definition() :: %{
        "lastModified" => float(),
        "logGroupNames" => list(String.t()()),
        "name" => String.t(),
        "queryDefinitionId" => String.t(),
        "queryString" => String.t()
      }
      
  """
  @type query_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_delivery_destination_policy_request() :: %{
        required("deliveryDestinationName") => String.t()
      }
      
  """
  @type get_delivery_destination_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_delivery_destinations_request() :: %{
        optional("limit") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type describe_delivery_destinations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_delivery_request() :: %{
        optional("tags") => map(),
        required("deliveryDestinationArn") => String.t(),
        required("deliverySourceName") => String.t()
      }
      
  """
  @type create_delivery_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_log_group_request() :: %{
        required("logGroupName") => String.t()
      }
      
  """
  @type delete_log_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test_metric_filter_request() :: %{
        required("filterPattern") => String.t(),
        required("logEventMessages") => list(String.t()())
      }
      
  """
  @type test_metric_filter_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      query_info() :: %{
        "createTime" => float(),
        "logGroupName" => String.t(),
        "queryId" => String.t(),
        "queryString" => String.t(),
        "status" => list(any())
      }
      
  """
  @type query_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unrecognized_client_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type unrecognized_client_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_tags_exception() :: %{
        "message" => String.t(),
        "resourceName" => String.t()
      }
      
  """
  @type too_many_tags_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_metric_filters_response() :: %{
        "metricFilters" => list(metric_filter()()),
        "nextToken" => String.t()
      }
      
  """
  @type describe_metric_filters_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      log_event() :: %{
        "message" => String.t(),
        "timestamp" => float()
      }
      
  """
  @type log_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_query_definition_response() :: %{
        "queryDefinitionId" => String.t()
      }
      
  """
  @type put_query_definition_response() :: %{String.t() => any()}

  @type associate_kms_key_errors() ::
          invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | operation_aborted_exception()

  @type cancel_export_task_errors() ::
          invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type create_delivery_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_export_task_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | operation_aborted_exception()

  @type create_log_anomaly_detector_errors() ::
          limit_exceeded_exception()
          | invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | operation_aborted_exception()

  @type create_log_group_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | service_unavailable_exception()
          | operation_aborted_exception()

  @type create_log_stream_errors() ::
          resource_already_exists_exception()
          | invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()

  @type delete_account_policy_errors() ::
          invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | operation_aborted_exception()

  @type delete_data_protection_policy_errors() ::
          invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | operation_aborted_exception()

  @type delete_delivery_errors() ::
          throttling_exception()
          | validation_exception()
          | service_unavailable_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_delivery_destination_errors() ::
          throttling_exception()
          | validation_exception()
          | service_unavailable_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_delivery_destination_policy_errors() ::
          validation_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_delivery_source_errors() ::
          throttling_exception()
          | validation_exception()
          | service_unavailable_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_destination_errors() ::
          invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | operation_aborted_exception()

  @type delete_log_anomaly_detector_errors() ::
          invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | operation_aborted_exception()

  @type delete_log_group_errors() ::
          invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | operation_aborted_exception()

  @type delete_log_stream_errors() ::
          invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | operation_aborted_exception()

  @type delete_metric_filter_errors() ::
          invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | operation_aborted_exception()

  @type delete_query_definition_errors() ::
          invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()

  @type delete_resource_policy_errors() ::
          invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()

  @type delete_retention_policy_errors() ::
          invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | operation_aborted_exception()

  @type delete_subscription_filter_errors() ::
          invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | operation_aborted_exception()

  @type describe_account_policies_errors() ::
          invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | operation_aborted_exception()

  @type describe_deliveries_errors() ::
          throttling_exception()
          | validation_exception()
          | service_unavailable_exception()
          | service_quota_exceeded_exception()

  @type describe_delivery_destinations_errors() ::
          throttling_exception()
          | validation_exception()
          | service_unavailable_exception()
          | service_quota_exceeded_exception()

  @type describe_delivery_sources_errors() ::
          throttling_exception()
          | validation_exception()
          | service_unavailable_exception()
          | service_quota_exceeded_exception()

  @type describe_destinations_errors() ::
          invalid_parameter_exception() | service_unavailable_exception()

  @type describe_export_tasks_errors() ::
          invalid_parameter_exception() | service_unavailable_exception()

  @type describe_log_groups_errors() ::
          invalid_parameter_exception() | service_unavailable_exception()

  @type describe_log_streams_errors() ::
          invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()

  @type describe_metric_filters_errors() ::
          invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()

  @type describe_queries_errors() ::
          invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()

  @type describe_query_definitions_errors() ::
          invalid_parameter_exception() | service_unavailable_exception()

  @type describe_resource_policies_errors() ::
          invalid_parameter_exception() | service_unavailable_exception()

  @type describe_subscription_filters_errors() ::
          invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()

  @type disassociate_kms_key_errors() ::
          invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | operation_aborted_exception()

  @type filter_log_events_errors() ::
          invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()

  @type get_data_protection_policy_errors() ::
          invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | operation_aborted_exception()

  @type get_delivery_errors() ::
          throttling_exception()
          | validation_exception()
          | service_unavailable_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type get_delivery_destination_errors() ::
          throttling_exception()
          | validation_exception()
          | service_unavailable_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type get_delivery_destination_policy_errors() ::
          validation_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()

  @type get_delivery_source_errors() ::
          throttling_exception()
          | validation_exception()
          | service_unavailable_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type get_log_anomaly_detector_errors() ::
          invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | operation_aborted_exception()

  @type get_log_events_errors() ::
          invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()

  @type get_log_group_fields_errors() ::
          limit_exceeded_exception()
          | invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()

  @type get_log_record_errors() ::
          limit_exceeded_exception()
          | invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()

  @type get_query_results_errors() ::
          invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()

  @type list_anomalies_errors() ::
          invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | operation_aborted_exception()

  @type list_log_anomaly_detectors_errors() ::
          invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | operation_aborted_exception()

  @type list_tags_for_resource_errors() ::
          invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()

  @type list_tags_log_group_errors() ::
          service_unavailable_exception() | resource_not_found_exception()

  @type put_account_policy_errors() ::
          limit_exceeded_exception()
          | invalid_parameter_exception()
          | service_unavailable_exception()
          | operation_aborted_exception()

  @type put_data_protection_policy_errors() ::
          limit_exceeded_exception()
          | invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | operation_aborted_exception()

  @type put_delivery_destination_errors() ::
          throttling_exception()
          | validation_exception()
          | service_unavailable_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type put_delivery_destination_policy_errors() ::
          validation_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type put_delivery_source_errors() ::
          throttling_exception()
          | validation_exception()
          | service_unavailable_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type put_destination_errors() ::
          invalid_parameter_exception()
          | service_unavailable_exception()
          | operation_aborted_exception()

  @type put_destination_policy_errors() ::
          invalid_parameter_exception()
          | service_unavailable_exception()
          | operation_aborted_exception()

  @type put_log_events_errors() ::
          unrecognized_client_exception()
          | invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | data_already_accepted_exception()
          | invalid_sequence_token_exception()

  @type put_metric_filter_errors() ::
          limit_exceeded_exception()
          | invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | operation_aborted_exception()

  @type put_query_definition_errors() ::
          limit_exceeded_exception()
          | invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()

  @type put_resource_policy_errors() ::
          limit_exceeded_exception()
          | invalid_parameter_exception()
          | service_unavailable_exception()

  @type put_retention_policy_errors() ::
          invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | operation_aborted_exception()

  @type put_subscription_filter_errors() ::
          limit_exceeded_exception()
          | invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | operation_aborted_exception()

  @type start_live_tail_errors() ::
          limit_exceeded_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type start_query_errors() ::
          limit_exceeded_exception()
          | invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | malformed_query_exception()

  @type stop_query_errors() ::
          invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()

  @type tag_log_group_errors() :: invalid_parameter_exception() | resource_not_found_exception()

  @type tag_resource_errors() ::
          too_many_tags_exception()
          | invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()

  @type test_metric_filter_errors() ::
          invalid_parameter_exception() | service_unavailable_exception()

  @type untag_log_group_errors() :: resource_not_found_exception()

  @type untag_resource_errors() ::
          invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()

  @type update_anomaly_errors() ::
          invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | operation_aborted_exception()

  @type update_log_anomaly_detector_errors() ::
          invalid_parameter_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | operation_aborted_exception()

  def metadata do
    %{
      api_version: "2014-03-28",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "logs",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "CloudWatch Logs",
      signature_version: "v4",
      signing_name: "logs",
      target_prefix: "Logs_20140328"
    }
  end

  @doc """
  Associates the specified KMS key with either one log group in the account, or
  with all stored CloudWatch Logs query insights results in the account. When
  you use `AssociateKmsKey`, you specify either the `logGroupName` parameter or
  the `resourceIdentifier` parameter. You can't specify both of those parameters
  in the same operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20AssociateKmsKey&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:associate_kms_key_request`)
    %{
      optional("logGroupName") => String.t(),
      optional("resourceIdentifier") => String.t(),
      required("kmsKeyId") => String.t()
    }
  """

  @spec associate_kms_key(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_kms_key_errors()}

  def associate_kms_key(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssociateKmsKey", input, options)
  end

  @doc """
  Cancels the specified export task.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20CancelExportTask&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:cancel_export_task_request`)
    %{
      required("taskId") => String.t()
    }
  """

  @spec cancel_export_task(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_export_task_errors()}

  def cancel_export_task(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CancelExportTask", input, options)
  end

  @doc """
  Creates a *delivery*. A delivery is a connection between a logical *delivery
  source* and a logical *delivery destination* that you have already created.
  Only some Amazon Web Services services support being configured as a delivery
  source using this operation. These services are listed as **Supported [V2
  Permissions]** in the table at [Enabling logging from Amazon Web Services
  services.](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AWS-logs-and-resource-policy.html)
  A delivery destination can represent a log group in CloudWatch Logs, an Amazon
  S3 bucket, or a delivery stream in Firehose.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20CreateDelivery&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_delivery_request`)
    %{
      optional("tags") => map(),
      required("deliveryDestinationArn") => String.t(),
      required("deliverySourceName") => String.t()
    }
  """

  @spec create_delivery(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_delivery_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_delivery_errors()}

  def create_delivery(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateDelivery", input, options)
  end

  @doc """
  Creates an export task so that you can efficiently export data from a log group
  to an Amazon S3 bucket. When you perform a `CreateExportTask` operation, you
  must use credentials that have permission to write to the S3 bucket that you
  specify as the destination. Exporting log data to S3 buckets that are
  encrypted by KMS is supported. Exporting log data to Amazon S3 buckets that
  have S3 Object Lock enabled with a retention period is also supported.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20CreateExportTask&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_export_task_request`)
    %{
      optional("destinationPrefix") => String.t(),
      optional("logStreamNamePrefix") => String.t(),
      optional("taskName") => String.t(),
      required("destination") => String.t(),
      required("from") => float(),
      required("logGroupName") => String.t(),
      required("to") => float()
    }
  """

  @spec create_export_task(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_export_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_export_task_errors()}

  def create_export_task(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateExportTask", input, options)
  end

  @doc """
  Creates an *anomaly detector* that regularly scans one or more log groups and
  look for patterns and anomalies in the logs. An anomaly detector can help
  surface issues by automatically discovering anomalies in your log event
  traffic. An anomaly detector uses machine learning algorithms to scan log
  events and find *patterns*. A pattern is a shared text structure that recurs
  among your log fields. Patterns provide a useful tool for analyzing large sets
  of logs because a large number of log events can often be compressed into a
  few patterns.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20CreateLogAnomalyDetector&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_log_anomaly_detector_request`)
    %{
      optional("anomalyVisibilityTime") => float(),
      optional("detectorName") => String.t(),
      optional("evaluationFrequency") => list(any()),
      optional("filterPattern") => String.t(),
      optional("kmsKeyId") => String.t(),
      optional("tags") => map(),
      required("logGroupArnList") => list(String.t()())
    }
  """

  @spec create_log_anomaly_detector(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_log_anomaly_detector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_log_anomaly_detector_errors()}

  def create_log_anomaly_detector(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateLogAnomalyDetector", input, options)
  end

  @doc """
  Creates a log group with the specified name. You can create up to 1,000,000 log
  groups per Region per account. You must use the following guidelines when
  naming a log group:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20CreateLogGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_log_group_request`)
    %{
      optional("kmsKeyId") => String.t(),
      optional("logGroupClass") => list(any()),
      optional("tags") => map(),
      required("logGroupName") => String.t()
    }
  """

  @spec create_log_group(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_log_group_errors()}

  def create_log_group(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateLogGroup", input, options)
  end

  @doc """
  Creates a log stream for the specified log group. A log stream is a sequence of
  log events that originate from a single source, such as an application
  instance or a resource that is being monitored. There is no limit on the
  number of log streams that you can create for a log group. There is a limit of
  50 TPS on `CreateLogStream` operations, after which transactions are
  throttled.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20CreateLogStream&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_log_stream_request`)
    %{
      required("logGroupName") => String.t(),
      required("logStreamName") => String.t()
    }
  """

  @spec create_log_stream(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_log_stream_errors()}

  def create_log_stream(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateLogStream", input, options)
  end

  @doc """
  Deletes a CloudWatch Logs account policy. This stops the policy from applying to
  all log groups or a subset of log groups in the account. Log-group level
  policies will still be in effect. To use this operation, you must be signed on
  with the correct permissions depending on the type of policy that you are
  deleting.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20DeleteAccountPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_account_policy_request`)
    %{
      required("policyName") => String.t(),
      required("policyType") => list(any())
    }
  """

  @spec delete_account_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_account_policy_errors()}

  def delete_account_policy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteAccountPolicy", input, options)
  end

  @doc """
  Deletes the data protection policy from the specified log group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20DeleteDataProtectionPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_data_protection_policy_request`)
    %{
      required("logGroupIdentifier") => String.t()
    }
  """

  @spec delete_data_protection_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_data_protection_policy_errors()}

  def delete_data_protection_policy(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteDataProtectionPolicy", input, options)
  end

  @doc """
  Deletes s *delivery*. A delivery is a connection between a logical *delivery
  source* and a logical *delivery destination*. Deleting a delivery only deletes
  the connection between the delivery source and delivery destination. It does
  not delete the delivery destination or the delivery source.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20DeleteDelivery&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_delivery_request`)
    %{
      required("id") => String.t()
    }
  """

  @spec delete_delivery(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_delivery_errors()}

  def delete_delivery(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteDelivery", input, options)
  end

  @doc """
  Deletes a *delivery destination*. A delivery is a connection between a logical
  *delivery source* and a logical *delivery destination*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20DeleteDeliveryDestination&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_delivery_destination_request`)
    %{
      required("name") => String.t()
    }
  """

  @spec delete_delivery_destination(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_delivery_destination_errors()}

  def delete_delivery_destination(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteDeliveryDestination", input, options)
  end

  @doc """
  Deletes a delivery destination policy. For more information about these
  policies, see
  [PutDeliveryDestinationPolicy](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliveryDestinationPolicy.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20DeleteDeliveryDestinationPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_delivery_destination_policy_request`)
    %{
      required("deliveryDestinationName") => String.t()
    }
  """

  @spec delete_delivery_destination_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_delivery_destination_policy_errors()}

  def delete_delivery_destination_policy(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteDeliveryDestinationPolicy", input, options)
  end

  @doc """
  Deletes a *delivery source*. A delivery is a connection between a logical
  *delivery source* and a logical *delivery destination*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20DeleteDeliverySource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_delivery_source_request`)
    %{
      required("name") => String.t()
    }
  """

  @spec delete_delivery_source(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_delivery_source_errors()}

  def delete_delivery_source(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteDeliverySource", input, options)
  end

  @doc """
  Deletes the specified destination, and eventually disables all the subscription
  filters that publish to it. This operation does not delete the physical
  resource encapsulated by the destination.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20DeleteDestination&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_destination_request`)
    %{
      required("destinationName") => String.t()
    }
  """

  @spec delete_destination(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_destination_errors()}

  def delete_destination(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteDestination", input, options)
  end

  @doc """
  Deletes the specified CloudWatch Logs anomaly detector.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20DeleteLogAnomalyDetector&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_log_anomaly_detector_request`)
    %{
      required("anomalyDetectorArn") => String.t()
    }
  """

  @spec delete_log_anomaly_detector(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_log_anomaly_detector_errors()}

  def delete_log_anomaly_detector(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteLogAnomalyDetector", input, options)
  end

  @doc """
  Deletes the specified log group and permanently deletes all the archived log
  events associated with the log group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20DeleteLogGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_log_group_request`)
    %{
      required("logGroupName") => String.t()
    }
  """

  @spec delete_log_group(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_log_group_errors()}

  def delete_log_group(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteLogGroup", input, options)
  end

  @doc """
  Deletes the specified log stream and permanently deletes all the archived log
  events associated with the log stream.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20DeleteLogStream&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_log_stream_request`)
    %{
      required("logGroupName") => String.t(),
      required("logStreamName") => String.t()
    }
  """

  @spec delete_log_stream(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_log_stream_errors()}

  def delete_log_stream(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteLogStream", input, options)
  end

  @doc """
  Deletes the specified metric filter.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20DeleteMetricFilter&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_metric_filter_request`)
    %{
      required("filterName") => String.t(),
      required("logGroupName") => String.t()
    }
  """

  @spec delete_metric_filter(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_metric_filter_errors()}

  def delete_metric_filter(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteMetricFilter", input, options)
  end

  @doc """
  Deletes a saved CloudWatch Logs Insights query definition. A query definition
  contains details about a saved CloudWatch Logs Insights query. Each
  `DeleteQueryDefinition` operation can delete one query definition.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20DeleteQueryDefinition&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_query_definition_request`)
    %{
      required("queryDefinitionId") => String.t()
    }
  """

  @spec delete_query_definition(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_query_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_query_definition_errors()}

  def delete_query_definition(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteQueryDefinition", input, options)
  end

  @doc """
  Deletes a resource policy from this account. This revokes the access of the
  identities in that policy to put log events to this account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20DeleteResourcePolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_resource_policy_request`)
    %{
      optional("policyName") => String.t()
    }
  """

  @spec delete_resource_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_resource_policy_errors()}

  def delete_resource_policy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteResourcePolicy", input, options)
  end

  @doc """
  Deletes the specified retention policy.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20DeleteRetentionPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_retention_policy_request`)
    %{
      required("logGroupName") => String.t()
    }
  """

  @spec delete_retention_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_retention_policy_errors()}

  def delete_retention_policy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteRetentionPolicy", input, options)
  end

  @doc """
  Deletes the specified subscription filter.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20DeleteSubscriptionFilter&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_subscription_filter_request`)
    %{
      required("filterName") => String.t(),
      required("logGroupName") => String.t()
    }
  """

  @spec delete_subscription_filter(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_subscription_filter_errors()}

  def delete_subscription_filter(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteSubscriptionFilter", input, options)
  end

  @doc """
  Returns a list of all CloudWatch Logs account policies in the account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20DescribeAccountPolicies&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_account_policies_request`)
    %{
      optional("accountIdentifiers") => list(String.t()()),
      optional("policyName") => String.t(),
      required("policyType") => list(any())
    }
  """

  @spec describe_account_policies(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_account_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_account_policies_errors()}

  def describe_account_policies(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeAccountPolicies", input, options)
  end

  @doc """
  Retrieves a list of the deliveries that have been created in the account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20DescribeDeliveries&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_deliveries_request`)
    %{
      optional("limit") => integer(),
      optional("nextToken") => String.t()
    }
  """

  @spec describe_deliveries(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_deliveries_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_deliveries_errors()}

  def describe_deliveries(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeDeliveries", input, options)
  end

  @doc """
  Retrieves a list of the delivery destinations that have been created in the
  account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20DescribeDeliveryDestinations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_delivery_destinations_request`)
    %{
      optional("limit") => integer(),
      optional("nextToken") => String.t()
    }
  """

  @spec describe_delivery_destinations(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_delivery_destinations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_delivery_destinations_errors()}

  def describe_delivery_destinations(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeDeliveryDestinations", input, options)
  end

  @doc """
  Retrieves a list of the delivery sources that have been created in the account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20DescribeDeliverySources&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_delivery_sources_request`)
    %{
      optional("limit") => integer(),
      optional("nextToken") => String.t()
    }
  """

  @spec describe_delivery_sources(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_delivery_sources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_delivery_sources_errors()}

  def describe_delivery_sources(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeDeliverySources", input, options)
  end

  @doc """
  Lists all your destinations. The results are ASCII-sorted by destination name.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20DescribeDestinations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_destinations_request`)
    %{
      optional("DestinationNamePrefix") => String.t(),
      optional("limit") => integer(),
      optional("nextToken") => String.t()
    }
  """

  @spec describe_destinations(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_destinations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_destinations_errors()}

  def describe_destinations(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeDestinations", input, options)
  end

  @doc """
  Lists the specified export tasks. You can list all your export tasks or filter
  the results based on task ID or task status.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20DescribeExportTasks&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_export_tasks_request`)
    %{
      optional("limit") => integer(),
      optional("nextToken") => String.t(),
      optional("statusCode") => list(any()),
      optional("taskId") => String.t()
    }
  """

  @spec describe_export_tasks(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_export_tasks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_export_tasks_errors()}

  def describe_export_tasks(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeExportTasks", input, options)
  end

  @doc """
  Lists the specified log groups. You can list all your log groups or filter the
  results by prefix. The results are ASCII-sorted by log group name.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20DescribeLogGroups&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_log_groups_request`)
    %{
      optional("accountIdentifiers") => list(String.t()()),
      optional("includeLinkedAccounts") => boolean(),
      optional("limit") => integer(),
      optional("logGroupClass") => list(any()),
      optional("logGroupNamePattern") => String.t(),
      optional("logGroupNamePrefix") => String.t(),
      optional("nextToken") => String.t()
    }
  """

  @spec describe_log_groups(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_log_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_log_groups_errors()}

  def describe_log_groups(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeLogGroups", input, options)
  end

  @doc """
  Lists the log streams for the specified log group. You can list all the log
  streams or filter the results by prefix. You can also control how the results
  are ordered. You can specify the log group to search by using either
  `logGroupIdentifier` or `logGroupName`. You must include one of these two
  parameters, but you can't include both.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20DescribeLogStreams&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_log_streams_request`)
    %{
      optional("descending") => boolean(),
      optional("limit") => integer(),
      optional("logGroupIdentifier") => String.t(),
      optional("logGroupName") => String.t(),
      optional("logStreamNamePrefix") => String.t(),
      optional("nextToken") => String.t(),
      optional("orderBy") => list(any())
    }
  """

  @spec describe_log_streams(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_log_streams_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_log_streams_errors()}

  def describe_log_streams(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeLogStreams", input, options)
  end

  @doc """
  Lists the specified metric filters. You can list all of the metric filters or
  filter the results by log name, prefix, metric name, or metric namespace. The
  results are ASCII-sorted by filter name.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20DescribeMetricFilters&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_metric_filters_request`)
    %{
      optional("filterNamePrefix") => String.t(),
      optional("limit") => integer(),
      optional("logGroupName") => String.t(),
      optional("metricName") => String.t(),
      optional("metricNamespace") => String.t(),
      optional("nextToken") => String.t()
    }
  """

  @spec describe_metric_filters(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_metric_filters_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_metric_filters_errors()}

  def describe_metric_filters(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeMetricFilters", input, options)
  end

  @doc """
  Returns a list of CloudWatch Logs Insights queries that are scheduled, running,
  or have been run recently in this account. You can request all queries or
  limit it to queries of a specific log group or queries with a certain status.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20DescribeQueries&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_queries_request`)
    %{
      optional("logGroupName") => String.t(),
      optional("maxResults") => integer(),
      optional("nextToken") => String.t(),
      optional("status") => list(any())
    }
  """

  @spec describe_queries(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_queries_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_queries_errors()}

  def describe_queries(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeQueries", input, options)
  end

  @doc """
  This operation returns a paginated list of your saved CloudWatch Logs Insights
  query definitions. You can retrieve query definitions from the current account
  or from a source account that is linked to the current account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20DescribeQueryDefinitions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_query_definitions_request`)
    %{
      optional("maxResults") => integer(),
      optional("nextToken") => String.t(),
      optional("queryDefinitionNamePrefix") => String.t()
    }
  """

  @spec describe_query_definitions(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_query_definitions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_query_definitions_errors()}

  def describe_query_definitions(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeQueryDefinitions", input, options)
  end

  @doc """
  Lists the resource policies in this account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20DescribeResourcePolicies&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_resource_policies_request`)
    %{
      optional("limit") => integer(),
      optional("nextToken") => String.t()
    }
  """

  @spec describe_resource_policies(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_resource_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_resource_policies_errors()}

  def describe_resource_policies(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeResourcePolicies", input, options)
  end

  @doc """
  Lists the subscription filters for the specified log group. You can list all the
  subscription filters or filter the results by prefix. The results are
  ASCII-sorted by filter name.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20DescribeSubscriptionFilters&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_subscription_filters_request`)
    %{
      optional("filterNamePrefix") => String.t(),
      optional("limit") => integer(),
      optional("nextToken") => String.t(),
      required("logGroupName") => String.t()
    }
  """

  @spec describe_subscription_filters(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_subscription_filters_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_subscription_filters_errors()}

  def describe_subscription_filters(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeSubscriptionFilters", input, options)
  end

  @doc """
  Disassociates the specified KMS key from the specified log group or from all
  CloudWatch Logs Insights query results in the account. When you use
  `DisassociateKmsKey`, you specify either the `logGroupName` parameter or the
  `resourceIdentifier` parameter. You can't specify both of those parameters in
  the same operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20DisassociateKmsKey&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:disassociate_kms_key_request`)
    %{
      optional("logGroupName") => String.t(),
      optional("resourceIdentifier") => String.t()
    }
  """

  @spec disassociate_kms_key(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_kms_key_errors()}

  def disassociate_kms_key(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisassociateKmsKey", input, options)
  end

  @doc """
  Lists log events from the specified log group. You can list all the log events
  or filter the results using a filter pattern, a time range, and the name of
  the log stream. You must have the `logs:FilterLogEvents` permission to perform
  this operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20FilterLogEvents&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:filter_log_events_request`)
    %{
      optional("endTime") => float(),
      optional("filterPattern") => String.t(),
      optional("interleaved") => boolean(),
      optional("limit") => integer(),
      optional("logGroupIdentifier") => String.t(),
      optional("logGroupName") => String.t(),
      optional("logStreamNamePrefix") => String.t(),
      optional("logStreamNames") => list(String.t()()),
      optional("nextToken") => String.t(),
      optional("startTime") => float(),
      optional("unmask") => boolean()
    }
  """

  @spec filter_log_events(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, filter_log_events_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, filter_log_events_errors()}

  def filter_log_events(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "FilterLogEvents", input, options)
  end

  @doc """
  Returns information about a log group data protection policy.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20GetDataProtectionPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_data_protection_policy_request`)
    %{
      required("logGroupIdentifier") => String.t()
    }
  """

  @spec get_data_protection_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_data_protection_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_data_protection_policy_errors()}

  def get_data_protection_policy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDataProtectionPolicy", input, options)
  end

  @doc """
  Returns complete information about one logical *delivery*. A delivery is a
  connection between a [ *delivery source*
  ](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliverySource.html)
  and a [ *delivery destination*
  ](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliveryDestination.html).
  A delivery source represents an Amazon Web Services resource that sends logs
  to an logs delivery destination. The destination can be CloudWatch Logs,
  Amazon S3, or Firehose. Only some Amazon Web Services services support being
  configured as a delivery source. These services are listed in [Enable logging
  from Amazon Web Services
  services.](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AWS-logs-and-resource-policy.html)

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20GetDelivery&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_delivery_request`)
    %{
      required("id") => String.t()
    }
  """

  @spec get_delivery(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_delivery_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_delivery_errors()}

  def get_delivery(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDelivery", input, options)
  end

  @doc """
  Retrieves complete information about one delivery destination.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20GetDeliveryDestination&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_delivery_destination_request`)
    %{
      required("name") => String.t()
    }
  """

  @spec get_delivery_destination(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_delivery_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_delivery_destination_errors()}

  def get_delivery_destination(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDeliveryDestination", input, options)
  end

  @doc """
  Retrieves the delivery destination policy assigned to the delivery destination
  that you specify. For more information about delivery destinations and their
  policies, see
  [PutDeliveryDestinationPolicy](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliveryDestinationPolicy.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20GetDeliveryDestinationPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_delivery_destination_policy_request`)
    %{
      required("deliveryDestinationName") => String.t()
    }
  """

  @spec get_delivery_destination_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_delivery_destination_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_delivery_destination_policy_errors()}

  def get_delivery_destination_policy(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDeliveryDestinationPolicy", input, options)
  end

  @doc """
  Retrieves complete information about one delivery source.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20GetDeliverySource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_delivery_source_request`)
    %{
      required("name") => String.t()
    }
  """

  @spec get_delivery_source(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_delivery_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_delivery_source_errors()}

  def get_delivery_source(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDeliverySource", input, options)
  end

  @doc """
  Retrieves information about the log anomaly detector that you specify.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20GetLogAnomalyDetector&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_log_anomaly_detector_request`)
    %{
      required("anomalyDetectorArn") => String.t()
    }
  """

  @spec get_log_anomaly_detector(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_log_anomaly_detector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_log_anomaly_detector_errors()}

  def get_log_anomaly_detector(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetLogAnomalyDetector", input, options)
  end

  @doc """
  Lists log events from the specified log stream. You can list all of the log
  events or filter using a time range. By default, this operation returns as
  many log events as can fit in a response size of 1MB (up to 10,000 log
  events). You can get additional log events by specifying one of the tokens in
  a subsequent call. This operation can return empty results while there are
  more log events available through the token.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20GetLogEvents&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_log_events_request`)
    %{
      optional("endTime") => float(),
      optional("limit") => integer(),
      optional("logGroupIdentifier") => String.t(),
      optional("logGroupName") => String.t(),
      optional("nextToken") => String.t(),
      optional("startFromHead") => boolean(),
      optional("startTime") => float(),
      optional("unmask") => boolean(),
      required("logStreamName") => String.t()
    }
  """

  @spec get_log_events(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_log_events_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_log_events_errors()}

  def get_log_events(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetLogEvents", input, options)
  end

  @doc """
  Returns a list of the fields that are included in log events in the specified
  log group. Includes the percentage of log events that contain each field. The
  search is limited to a time period that you specify. You can specify the log
  group to search by using either `logGroupIdentifier` or `logGroupName`. You
  must specify one of these parameters, but you can't specify both.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20GetLogGroupFields&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_log_group_fields_request`)
    %{
      optional("logGroupIdentifier") => String.t(),
      optional("logGroupName") => String.t(),
      optional("time") => float()
    }
  """

  @spec get_log_group_fields(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_log_group_fields_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_log_group_fields_errors()}

  def get_log_group_fields(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetLogGroupFields", input, options)
  end

  @doc """
  Retrieves all of the fields and values of a single log event. All fields are
  retrieved, even if the original query that produced the `logRecordPointer`
  retrieved only a subset of fields. Fields are returned as field name/field
  value pairs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20GetLogRecord&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_log_record_request`)
    %{
      optional("unmask") => boolean(),
      required("logRecordPointer") => String.t()
    }
  """

  @spec get_log_record(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_log_record_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_log_record_errors()}

  def get_log_record(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetLogRecord", input, options)
  end

  @doc """
  Returns the results from the specified query. Only the fields requested in the
  query are returned, along with a `@ptr` field, which is the identifier for the
  log record. You can use the value of `@ptr` in a
  [GetLogRecord](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetLogRecord.html)
  operation to get the full log record. `GetQueryResults` does not start running
  a query. To run a query, use
  [StartQuery](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_StartQuery.html).
  For more information about how long results of previous queries are available,
  see [CloudWatch Logs
  quotas](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/cloudwatch_limits_cwl.html).
  If the value of the `Status` field in the output is `Running`, this operation
  returns only partial results. If you see a value of `Scheduled` or `Running`
  for the status, you can retry the operation later to see the final results.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20GetQueryResults&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_query_results_request`)
    %{
      required("queryId") => String.t()
    }
  """

  @spec get_query_results(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_query_results_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_query_results_errors()}

  def get_query_results(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetQueryResults", input, options)
  end

  @doc """
  Returns a list of anomalies that log anomaly detectors have found. For details
  about the structure format of each anomaly object that is returned, see the
  example in this section.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20ListAnomalies&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_anomalies_request`)
    %{
      optional("anomalyDetectorArn") => String.t(),
      optional("limit") => integer(),
      optional("nextToken") => String.t(),
      optional("suppressionState") => list(any())
    }
  """

  @spec list_anomalies(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_anomalies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_anomalies_errors()}

  def list_anomalies(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAnomalies", input, options)
  end

  @doc """
  Retrieves a list of the log anomaly detectors in the account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20ListLogAnomalyDetectors&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_log_anomaly_detectors_request`)
    %{
      optional("filterLogGroupArn") => String.t(),
      optional("limit") => integer(),
      optional("nextToken") => String.t()
    }
  """

  @spec list_log_anomaly_detectors(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_log_anomaly_detectors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_log_anomaly_detectors_errors()}

  def list_log_anomaly_detectors(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListLogAnomalyDetectors", input, options)
  end

  @doc """
  Displays the tags associated with a CloudWatch Logs resource. Currently, log
  groups and destinations support tagging.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_tags_for_resource_request`)
    %{
      required("resourceArn") => String.t()
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
  The ListTagsLogGroup operation is on the path to deprecation. We recommend that
  you use
  [ListTagsForResource](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListTagsForResource.html)
  instead.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20ListTagsLogGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_tags_log_group_request`)
    %{
      required("logGroupName") => String.t()
    }
  """

  @spec list_tags_log_group(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_tags_log_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_log_group_errors()}

  def list_tags_log_group(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsLogGroup", input, options)
  end

  @doc """
  Creates an account-level data protection policy or subscription filter policy
  that applies to all log groups or a subset of log groups in the account.
  **Data protection policy**

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20PutAccountPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_account_policy_request`)
    %{
      optional("scope") => list(any()),
      optional("selectionCriteria") => String.t(),
      required("policyDocument") => String.t(),
      required("policyName") => String.t(),
      required("policyType") => list(any())
    }
  """

  @spec put_account_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_account_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_account_policy_errors()}

  def put_account_policy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutAccountPolicy", input, options)
  end

  @doc """
  Creates a data protection policy for the specified log group. A data protection
  policy can help safeguard sensitive data that's ingested by the log group by
  auditing and masking the sensitive log data. Sensitive data is detected and
  masked when it is ingested into the log group. When you set a data protection
  policy, log events ingested into the log group before that time are not
  masked.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20PutDataProtectionPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_data_protection_policy_request`)
    %{
      required("logGroupIdentifier") => String.t(),
      required("policyDocument") => String.t()
    }
  """

  @spec put_data_protection_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_data_protection_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_data_protection_policy_errors()}

  def put_data_protection_policy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutDataProtectionPolicy", input, options)
  end

  @doc """
  Creates or updates a logical *delivery destination*. A delivery destination is
  an Amazon Web Services resource that represents an Amazon Web Services service
  that logs can be sent to. CloudWatch Logs, Amazon S3, and Firehose are
  supported as logs delivery destinations. To configure logs delivery between a
  supported Amazon Web Services service and a destination, you must do the
  following:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20PutDeliveryDestination&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_delivery_destination_request`)
    %{
      optional("outputFormat") => list(any()),
      optional("tags") => map(),
      required("deliveryDestinationConfiguration") => delivery_destination_configuration(),
      required("name") => String.t()
    }
  """

  @spec put_delivery_destination(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_delivery_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_delivery_destination_errors()}

  def put_delivery_destination(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutDeliveryDestination", input, options)
  end

  @doc """
  Creates and assigns an IAM policy that grants permissions to CloudWatch Logs to
  deliver logs cross-account to a specified destination in this account. To
  configure the delivery of logs from an Amazon Web Services service in another
  account to a logs delivery destination in the current account, you must do the
  following:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20PutDeliveryDestinationPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_delivery_destination_policy_request`)
    %{
      required("deliveryDestinationName") => String.t(),
      required("deliveryDestinationPolicy") => String.t()
    }
  """

  @spec put_delivery_destination_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_delivery_destination_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_delivery_destination_policy_errors()}

  def put_delivery_destination_policy(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutDeliveryDestinationPolicy", input, options)
  end

  @doc """
  Creates or updates a logical *delivery source*. A delivery source represents an
  Amazon Web Services resource that sends logs to an logs delivery destination.
  The destination can be CloudWatch Logs, Amazon S3, or Firehose. To configure
  logs delivery between a delivery destination and an Amazon Web Services
  service that is supported as a delivery source, you must do the following:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20PutDeliverySource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_delivery_source_request`)
    %{
      optional("tags") => map(),
      required("logType") => String.t(),
      required("name") => String.t(),
      required("resourceArn") => String.t()
    }
  """

  @spec put_delivery_source(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_delivery_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_delivery_source_errors()}

  def put_delivery_source(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutDeliverySource", input, options)
  end

  @doc """
  Creates or updates a destination. This operation is used only to create
  destinations for cross-account subscriptions. A destination encapsulates a
  physical resource (such as an Amazon Kinesis stream). With a destination, you
  can subscribe to a real-time stream of log events for a different account,
  ingested using
  [PutLogEvents](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutLogEvents.html).
  Through an access policy, a destination controls what is written to it. By
  default, `PutDestination` does not set any access policy with the destination,
  which means a cross-account user cannot call
  [PutSubscriptionFilter](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutSubscriptionFilter.html)
  against this destination. To enable this, the destination owner must call
  [PutDestinationPolicy](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDestinationPolicy.html)
  after `PutDestination`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20PutDestination&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_destination_request`)
    %{
      optional("tags") => map(),
      required("destinationName") => String.t(),
      required("roleArn") => String.t(),
      required("targetArn") => String.t()
    }
  """

  @spec put_destination(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_destination_errors()}

  def put_destination(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutDestination", input, options)
  end

  @doc """
  Creates or updates an access policy associated with an existing destination. An
  access policy is an [IAM policy
  document](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies_overview.html)
  that is used to authorize claims to register a subscription filter against a
  given destination.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20PutDestinationPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_destination_policy_request`)
    %{
      optional("forceUpdate") => boolean(),
      required("accessPolicy") => String.t(),
      required("destinationName") => String.t()
    }
  """

  @spec put_destination_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_destination_policy_errors()}

  def put_destination_policy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutDestinationPolicy", input, options)
  end

  @doc """
  Uploads a batch of log events to the specified log stream. The sequence token is
  now ignored in `PutLogEvents` actions. `PutLogEvents` actions are always
  accepted and never return `InvalidSequenceTokenException` or
  `DataAlreadyAcceptedException` even if the sequence token is not valid. You
  can use parallel `PutLogEvents` actions on the same log stream.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20PutLogEvents&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_log_events_request`)
    %{
      optional("sequenceToken") => String.t(),
      required("logEvents") => list(input_log_event()()),
      required("logGroupName") => String.t(),
      required("logStreamName") => String.t()
    }
  """

  @spec put_log_events(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_log_events_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_log_events_errors()}

  def put_log_events(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutLogEvents", input, options)
  end

  @doc """
  Creates or updates a metric filter and associates it with the specified log
  group. With metric filters, you can configure rules to extract metric data
  from log events ingested through
  [PutLogEvents](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutLogEvents.html).
  The maximum number of metric filters that can be associated with a log group
  is 100. When you create a metric filter, you can also optionally assign a unit
  and dimensions to the metric that is created.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20PutMetricFilter&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_metric_filter_request`)
    %{
      required("filterName") => String.t(),
      required("filterPattern") => String.t(),
      required("logGroupName") => String.t(),
      required("metricTransformations") => list(metric_transformation()())
    }
  """

  @spec put_metric_filter(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_metric_filter_errors()}

  def put_metric_filter(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutMetricFilter", input, options)
  end

  @doc """
  Creates or updates a query definition for CloudWatch Logs Insights. For more
  information, see [Analyzing Log Data with CloudWatch Logs
  Insights](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AnalyzingLogData.html).
  To update a query definition, specify its `queryDefinitionId` in your request.
  The values of `name`, `queryString`, and `logGroupNames` are changed to the
  values that you specify in your update operation. No current values are
  retained from the current query definition. For example, imagine updating a
  current query definition that includes log groups. If you don't specify the
  `logGroupNames` parameter in your update operation, the query definition
  changes to contain no log groups.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20PutQueryDefinition&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_query_definition_request`)
    %{
      optional("clientToken") => String.t(),
      optional("logGroupNames") => list(String.t()()),
      optional("queryDefinitionId") => String.t(),
      required("name") => String.t(),
      required("queryString") => String.t()
    }
  """

  @spec put_query_definition(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_query_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_query_definition_errors()}

  def put_query_definition(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutQueryDefinition", input, options)
  end

  @doc """
  Creates or updates a resource policy allowing other Amazon Web Services services
  to put log events to this account, such as Amazon Route 53. An account can
  have up to 10 resource policies per Amazon Web Services Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20PutResourcePolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_resource_policy_request`)
    %{
      optional("policyDocument") => String.t(),
      optional("policyName") => String.t()
    }
  """

  @spec put_resource_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_resource_policy_errors()}

  def put_resource_policy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutResourcePolicy", input, options)
  end

  @doc """
  Sets the retention of the specified log group. With a retention policy, you can
  configure the number of days for which to retain log events in the specified
  log group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20PutRetentionPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_retention_policy_request`)
    %{
      required("logGroupName") => String.t(),
      required("retentionInDays") => integer()
    }
  """

  @spec put_retention_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_retention_policy_errors()}

  def put_retention_policy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutRetentionPolicy", input, options)
  end

  @doc """
  Creates or updates a subscription filter and associates it with the specified
  log group. With subscription filters, you can subscribe to a real-time stream
  of log events ingested through
  [PutLogEvents](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutLogEvents.html)
  and have them delivered to a specific destination. When log events are sent to
  the receiving service, they are Base64 encoded and compressed with the GZIP
  format. The following destinations are supported for subscription filters:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20PutSubscriptionFilter&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_subscription_filter_request`)
    %{
      optional("distribution") => list(any()),
      optional("roleArn") => String.t(),
      required("destinationArn") => String.t(),
      required("filterName") => String.t(),
      required("filterPattern") => String.t(),
      required("logGroupName") => String.t()
    }
  """

  @spec put_subscription_filter(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_subscription_filter_errors()}

  def put_subscription_filter(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutSubscriptionFilter", input, options)
  end

  @doc """
  Starts a Live Tail streaming session for one or more log groups. A Live Tail
  session returns a stream of log events that have been recently ingested in the
  log groups. For more information, see [Use Live Tail to view logs in near real
  time](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatchLogs_LiveTail.html).
  The response to this operation is a response stream, over which the server
  sends live log events and the client receives them. The following objects are
  sent over the stream:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20StartLiveTail&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:start_live_tail_request`)
    %{
      optional("logEventFilterPattern") => String.t(),
      optional("logStreamNamePrefixes") => list(String.t()()),
      optional("logStreamNames") => list(String.t()()),
      required("logGroupIdentifiers") => list(String.t()())
    }
  """

  @spec start_live_tail(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, start_live_tail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_live_tail_errors()}

  def start_live_tail(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata() |> Map.put_new(:host_prefix, "streaming-")

    Request.request_post(client, meta, "StartLiveTail", input, options)
  end

  @doc """
  Schedules a query of a log group using CloudWatch Logs Insights. You specify the
  log group and time range to query and the query string to use. For more
  information, see [CloudWatch Logs Insights Query
  Syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html).
  After you run a query using `StartQuery`, the query results are stored by
  CloudWatch Logs. You can use
  [GetQueryResults](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetQueryResults.html)
  to retrieve the results of a query, using the `queryId` that `StartQuery`
  returns.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20StartQuery&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:start_query_request`)
    %{
      optional("limit") => integer(),
      optional("logGroupIdentifiers") => list(String.t()()),
      optional("logGroupName") => String.t(),
      optional("logGroupNames") => list(String.t()()),
      required("endTime") => float(),
      required("queryString") => String.t(),
      required("startTime") => float()
    }
  """

  @spec start_query(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, start_query_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_query_errors()}

  def start_query(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartQuery", input, options)
  end

  @doc """
  Stops a CloudWatch Logs Insights query that is in progress. If the query has
  already ended, the operation returns an error indicating that the specified
  query is not running.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20StopQuery&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:stop_query_request`)
    %{
      required("queryId") => String.t()
    }
  """

  @spec stop_query(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, stop_query_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_query_errors()}

  def stop_query(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopQuery", input, options)
  end

  @doc """
  The TagLogGroup operation is on the path to deprecation. We recommend that you
  use
  [TagResource](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_TagResource.html)
  instead. Adds or updates the specified tags for the specified log group. To
  list the tags for a log group, use
  [ListTagsForResource](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListTagsForResource.html).
  To remove tags, use
  [UntagResource](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_UntagResource.html).
  For more information about tags, see [Tag Log Groups in Amazon CloudWatch
  Logs](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html#log-group-tagging)
  in the *Amazon CloudWatch Logs User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20TagLogGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:tag_log_group_request`)
    %{
      required("logGroupName") => String.t(),
      required("tags") => map()
    }
  """

  @spec tag_log_group(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_log_group_errors()}

  def tag_log_group(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagLogGroup", input, options)
  end

  @doc """
  Assigns one or more tags (key-value pairs) to the specified CloudWatch Logs
  resource. Currently, the only CloudWatch Logs resources that can be tagged are
  log groups and destinations. Tags can help you organize and categorize your
  resources. You can also use them to scope user permissions by granting a user
  permission to access or change only resources with certain tag values.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:tag_resource_request`)
    %{
      required("resourceArn") => String.t(),
      required("tags") => map()
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
  Tests the filter pattern of a metric filter against a sample of log event
  messages. You can use this operation to validate the correctness of a metric
  filter pattern.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20TestMetricFilter&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:test_metric_filter_request`)
    %{
      required("filterPattern") => String.t(),
      required("logEventMessages") => list(String.t()())
    }
  """

  @spec test_metric_filter(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, test_metric_filter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, test_metric_filter_errors()}

  def test_metric_filter(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "TestMetricFilter", input, options)
  end

  @doc """
  The UntagLogGroup operation is on the path to deprecation. We recommend that you
  use
  [UntagResource](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_UntagResource.html)
  instead. Removes the specified tags from the specified log group. To list the
  tags for a log group, use
  [ListTagsForResource](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListTagsForResource.html).
  To add tags, use
  [TagResource](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_TagResource.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20UntagLogGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:untag_log_group_request`)
    %{
      required("logGroupName") => String.t(),
      required("tags") => list(String.t()())
    }
  """

  @spec untag_log_group(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_log_group_errors()}

  def untag_log_group(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagLogGroup", input, options)
  end

  @doc """
  Removes one or more tags from the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:untag_resource_request`)
    %{
      required("resourceArn") => String.t(),
      required("tagKeys") => list(String.t()())
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

  @doc """
  Use this operation to *suppress* anomaly detection for a specified anomaly or
  pattern. If you suppress an anomaly, CloudWatch Logs won’t report new
  occurrences of that anomaly and won't update that anomaly with new data. If
  you suppress a pattern, CloudWatch Logs won’t report any anomalies related to
  that pattern. You must specify either `anomalyId` or `patternId`, but you
  can't specify both parameters in the same operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20UpdateAnomaly&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_anomaly_request`)
    %{
      optional("anomalyId") => String.t(),
      optional("patternId") => String.t(),
      optional("suppressionPeriod") => suppression_period(),
      optional("suppressionType") => list(any()),
      required("anomalyDetectorArn") => String.t()
    }
  """

  @spec update_anomaly(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_anomaly_errors()}

  def update_anomaly(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateAnomaly", input, options)
  end

  @doc """
  Updates an existing log anomaly detector.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudwatchlogs%20UpdateLogAnomalyDetector&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_log_anomaly_detector_request`)
    %{
      optional("anomalyVisibilityTime") => float(),
      optional("evaluationFrequency") => list(any()),
      optional("filterPattern") => String.t(),
      required("anomalyDetectorArn") => String.t(),
      required("enabled") => boolean()
    }
  """

  @spec update_log_anomaly_detector(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_log_anomaly_detector_errors()}

  def update_log_anomaly_detector(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateLogAnomalyDetector", input, options)
  end
end
