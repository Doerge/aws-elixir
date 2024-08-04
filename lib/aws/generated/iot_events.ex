# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoTEvents do
  @moduledoc """
  AWS IoT Events monitors your equipment or device fleets for failures or changes
  in operation, and triggers actions when such events occur. You can use AWS IoT
  Events API operations to create, read, update, and delete inputs and detector
  models, and to list their versions.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      get_detector_model_analysis_results_response() :: %{
        "analysisResults" => list(analysis_result()()),
        "nextToken" => String.t()
      }
      
  """
  @type get_detector_model_analysis_results_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      state() :: %{
        "onEnter" => on_enter_lifecycle(),
        "onExit" => on_exit_lifecycle(),
        "onInput" => on_input_lifecycle(),
        "stateName" => String.t()
      }
      
  """
  @type state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      analysis_result() :: %{
        "level" => list(any()),
        "locations" => list(analysis_result_location()()),
        "message" => String.t(),
        "type" => String.t()
      }
      
  """
  @type analysis_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("resourceArn") => String.t(),
        required("tags") => list(tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_failure_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type internal_failure_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      firehose_action() :: %{
        "deliveryStreamName" => String.t(),
        "payload" => payload(),
        "separator" => String.t()
      }
      
  """
  @type firehose_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_alarm_model_request() :: %{}
      
  """
  @type delete_alarm_model_request() :: %{}

  @typedoc """

  ## Example:
      
      payload() :: %{
        "contentExpression" => String.t(),
        "type" => list(any())
      }
      
  """
  @type payload() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_input_request() :: %{}
      
  """
  @type describe_input_request() :: %{}

  @typedoc """

  ## Example:
      
      unsupported_operation_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type unsupported_operation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_detector_model_analysis_response() :: %{
        "status" => list(any())
      }
      
  """
  @type describe_detector_model_analysis_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      input_summary() :: %{
        "creationTime" => non_neg_integer(),
        "inputArn" => String.t(),
        "inputDescription" => String.t(),
        "inputName" => String.t(),
        "lastUpdateTime" => non_neg_integer(),
        "status" => list(any())
      }
      
  """
  @type input_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_timer_action() :: %{
        "durationExpression" => String.t(),
        "seconds" => integer(),
        "timerName" => String.t()
      }
      
  """
  @type set_timer_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_detector_model_analysis_request() :: %{
        required("detectorModelDefinition") => detector_model_definition()
      }
      
  """
  @type start_detector_model_analysis_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      alarm_event_actions() :: %{
        "alarmActions" => list(alarm_action()())
      }
      
  """
  @type alarm_event_actions() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_detector_model_response() :: %{
        "detectorModelConfiguration" => detector_model_configuration()
      }
      
  """
  @type create_detector_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_in_use_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dynamo_dbv2_action() :: %{
        "payload" => payload(),
        "tableName" => String.t()
      }
      
  """
  @type dynamo_dbv2_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      asset_property_value() :: %{
        "quality" => String.t(),
        "timestamp" => asset_property_timestamp(),
        "value" => asset_property_variant()
      }
      
  """
  @type asset_property_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_alarm_model_request() :: %{
        optional("alarmCapabilities") => alarm_capabilities(),
        optional("alarmEventActions") => alarm_event_actions(),
        optional("alarmModelDescription") => String.t(),
        optional("alarmNotification") => alarm_notification(),
        optional("severity") => integer(),
        required("alarmRule") => alarm_rule(),
        required("roleArn") => String.t()
      }
      
  """
  @type update_alarm_model_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_detector_model_request() :: %{
        optional("detectorModelDescription") => String.t(),
        optional("evaluationMethod") => list(any()),
        required("detectorModelDefinition") => detector_model_definition(),
        required("roleArn") => String.t()
      }
      
  """
  @type update_detector_model_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detector_model_definition() :: %{
        "initialStateName" => String.t(),
        "states" => list(state()())
      }
      
  """
  @type detector_model_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notification_target_actions() :: %{
        "lambdaAction" => lambda_action()
      }
      
  """
  @type notification_target_actions() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dynamo_db_action() :: %{
        "hashKeyField" => String.t(),
        "hashKeyType" => String.t(),
        "hashKeyValue" => String.t(),
        "operation" => String.t(),
        "payload" => payload(),
        "payloadField" => String.t(),
        "rangeKeyField" => String.t(),
        "rangeKeyType" => String.t(),
        "rangeKeyValue" => String.t(),
        "tableName" => String.t()
      }
      
  """
  @type dynamo_db_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      alarm_model_summary() :: %{
        "alarmModelDescription" => String.t(),
        "alarmModelName" => String.t(),
        "creationTime" => non_neg_integer()
      }
      
  """
  @type alarm_model_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      clear_timer_action() :: %{
        "timerName" => String.t()
      }
      
  """
  @type clear_timer_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_detector_model_analysis_response() :: %{
        "analysisId" => String.t()
      }
      
  """
  @type start_detector_model_analysis_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      email_content() :: %{
        "additionalMessage" => String.t(),
        "subject" => String.t()
      }
      
  """
  @type email_content() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_logging_options_response() :: %{
        "loggingOptions" => logging_options()
      }
      
  """
  @type describe_logging_options_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_alarm_models_response() :: %{
        "alarmModelSummaries" => list(alarm_model_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_alarm_models_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s_s_o_identity() :: %{
        "identityStoreId" => String.t(),
        "userId" => String.t()
      }
      
  """
  @type s_s_o_identity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      on_exit_lifecycle() :: %{
        "events" => list(event()())
      }
      
  """
  @type on_exit_lifecycle() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_alarm_model_response() :: %{
        "alarmCapabilities" => alarm_capabilities(),
        "alarmEventActions" => alarm_event_actions(),
        "alarmModelArn" => String.t(),
        "alarmModelDescription" => String.t(),
        "alarmModelName" => String.t(),
        "alarmModelVersion" => String.t(),
        "alarmNotification" => alarm_notification(),
        "alarmRule" => alarm_rule(),
        "creationTime" => non_neg_integer(),
        "key" => String.t(),
        "lastUpdateTime" => non_neg_integer(),
        "roleArn" => String.t(),
        "severity" => integer(),
        "status" => list(any()),
        "statusMessage" => String.t()
      }
      
  """
  @type describe_alarm_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detector_model() :: %{
        "detectorModelConfiguration" => detector_model_configuration(),
        "detectorModelDefinition" => detector_model_definition()
      }
      
  """
  @type detector_model() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_alarm_model_response() :: %{
        "alarmModelArn" => String.t(),
        "alarmModelVersion" => String.t(),
        "creationTime" => non_neg_integer(),
        "lastUpdateTime" => non_neg_integer(),
        "status" => list(any())
      }
      
  """
  @type update_alarm_model_response() :: %{String.t() => any()}

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
      
      alarm_action() :: %{
        "dynamoDB" => dynamo_db_action(),
        "dynamoDBv2" => dynamo_dbv2_action(),
        "firehose" => firehose_action(),
        "iotEvents" => iot_events_action(),
        "iotSiteWise" => iot_site_wise_action(),
        "iotTopicPublish" => iot_topic_publish_action(),
        "lambda" => lambda_action(),
        "sns" => s_n_s_topic_publish_action(),
        "sqs" => sqs_action()
      }
      
  """
  @type alarm_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_alarm_model_versions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_alarm_model_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_input_routings_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("inputIdentifier") => input_identifier()
      }
      
  """
  @type list_input_routings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_alarm_model_request() :: %{
        optional("alarmModelVersion") => String.t()
      }
      
  """
  @type describe_alarm_model_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      simple_rule() :: %{
        "comparisonOperator" => list(any()),
        "inputProperty" => String.t(),
        "threshold" => String.t()
      }
      
  """
  @type simple_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      iot_site_wise_input_identifier() :: %{
        "iotSiteWiseAssetModelPropertyIdentifier" => iot_site_wise_asset_model_property_identifier()
      }
      
  """
  @type iot_site_wise_input_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_detector_models_response() :: %{
        "detectorModelSummaries" => list(detector_model_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_detector_models_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      acknowledge_flow() :: %{
        "enabled" => boolean()
      }
      
  """
  @type acknowledge_flow() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      alarm_capabilities() :: %{
        "acknowledgeFlow" => acknowledge_flow(),
        "initializationConfiguration" => initialization_configuration()
      }
      
  """
  @type alarm_capabilities() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_detector_model_response() :: %{
        "detectorModelConfiguration" => detector_model_configuration()
      }
      
  """
  @type update_detector_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sms_configuration() :: %{
        "additionalMessage" => String.t(),
        "recipients" => list(recipient_detail()()),
        "senderId" => String.t()
      }
      
  """
  @type sms_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_input_response() :: %{
        "inputConfiguration" => input_configuration()
      }
      
  """
  @type create_input_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_input_request() :: %{
        optional("inputDescription") => String.t(),
        optional("tags") => list(tag()()),
        required("inputDefinition") => input_definition(),
        required("inputName") => String.t()
      }
      
  """
  @type create_input_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_variable_action() :: %{
        "value" => String.t(),
        "variableName" => String.t()
      }
      
  """
  @type set_variable_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_input_routings_response() :: %{
        "nextToken" => String.t(),
        "routedResources" => list(routed_resource()())
      }
      
  """
  @type list_input_routings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      input() :: %{
        "inputConfiguration" => input_configuration(),
        "inputDefinition" => input_definition()
      }
      
  """
  @type input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_input_request() :: %{}
      
  """
  @type delete_input_request() :: %{}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detector_model_version_summary() :: %{
        "creationTime" => non_neg_integer(),
        "detectorModelArn" => String.t(),
        "detectorModelName" => String.t(),
        "detectorModelVersion" => String.t(),
        "evaluationMethod" => list(any()),
        "lastUpdateTime" => non_neg_integer(),
        "roleArn" => String.t(),
        "status" => list(any())
      }
      
  """
  @type detector_model_version_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_input_request() :: %{
        optional("inputDescription") => String.t(),
        required("inputDefinition") => input_definition()
      }
      
  """
  @type update_input_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lambda_action() :: %{
        "functionArn" => String.t(),
        "payload" => payload()
      }
      
  """
  @type lambda_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "key" => String.t(),
        "value" => String.t()
      }
      
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_detector_model_request() :: %{
        optional("detectorModelVersion") => String.t()
      }
      
  """
  @type describe_detector_model_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_request_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_detector_model_response() :: %{
        "detectorModel" => detector_model()
      }
      
  """
  @type describe_detector_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_alarm_model_response() :: %{}
      
  """
  @type delete_alarm_model_response() :: %{}

  @typedoc """

  ## Example:
      
      list_inputs_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_inputs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      on_input_lifecycle() :: %{
        "events" => list(event()()),
        "transitionEvents" => list(transition_event()())
      }
      
  """
  @type on_input_lifecycle() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_detector_model_response() :: %{}
      
  """
  @type delete_detector_model_response() :: %{}

  @typedoc """

  ## Example:
      
      list_alarm_model_versions_response() :: %{
        "alarmModelVersionSummaries" => list(alarm_model_version_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_alarm_model_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_input_response() :: %{
        "input" => input()
      }
      
  """
  @type describe_input_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      alarm_rule() :: %{
        "simpleRule" => simple_rule()
      }
      
  """
  @type alarm_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_detector_model_versions_response() :: %{
        "detectorModelVersionSummaries" => list(detector_model_version_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_detector_model_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_alarm_model_request() :: %{
        optional("alarmCapabilities") => alarm_capabilities(),
        optional("alarmEventActions") => alarm_event_actions(),
        optional("alarmModelDescription") => String.t(),
        optional("alarmNotification") => alarm_notification(),
        optional("key") => String.t(),
        optional("severity") => integer(),
        optional("tags") => list(tag()()),
        required("alarmModelName") => String.t(),
        required("alarmRule") => alarm_rule(),
        required("roleArn") => String.t()
      }
      
  """
  @type create_alarm_model_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "tags" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s_n_s_topic_publish_action() :: %{
        "payload" => payload(),
        "targetArn" => String.t()
      }
      
  """
  @type s_n_s_topic_publish_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_unavailable_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      input_definition() :: %{
        "attributes" => list(attribute()())
      }
      
  """
  @type input_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      input_configuration() :: %{
        "creationTime" => non_neg_integer(),
        "inputArn" => String.t(),
        "inputDescription" => String.t(),
        "inputName" => String.t(),
        "lastUpdateTime" => non_neg_integer(),
        "status" => list(any())
      }
      
  """
  @type input_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_inputs_response() :: %{
        "inputSummaries" => list(input_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_inputs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      input_identifier() :: %{
        "iotEventsInputIdentifier" => iot_events_input_identifier(),
        "iotSiteWiseInputIdentifier" => iot_site_wise_input_identifier()
      }
      
  """
  @type input_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      on_enter_lifecycle() :: %{
        "events" => list(event()())
      }
      
  """
  @type on_enter_lifecycle() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_alarm_models_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_alarm_models_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_logging_options_request() :: %{}
      
  """
  @type describe_logging_options_request() :: %{}

  @typedoc """

  ## Example:
      
      iot_site_wise_asset_model_property_identifier() :: %{
        "assetModelId" => String.t(),
        "propertyId" => String.t()
      }
      
  """
  @type iot_site_wise_asset_model_property_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_input_response() :: %{}
      
  """
  @type delete_input_response() :: %{}

  @typedoc """

  ## Example:
      
      analysis_result_location() :: %{
        "path" => String.t()
      }
      
  """
  @type analysis_result_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      asset_property_timestamp() :: %{
        "offsetInNanos" => String.t(),
        "timeInSeconds" => String.t()
      }
      
  """
  @type asset_property_timestamp() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event() :: %{
        "actions" => list(action()()),
        "condition" => String.t(),
        "eventName" => String.t()
      }
      
  """
  @type event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      iot_events_input_identifier() :: %{
        "inputName" => String.t()
      }
      
  """
  @type iot_events_input_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      action() :: %{
        "clearTimer" => clear_timer_action(),
        "dynamoDB" => dynamo_db_action(),
        "dynamoDBv2" => dynamo_dbv2_action(),
        "firehose" => firehose_action(),
        "iotEvents" => iot_events_action(),
        "iotSiteWise" => iot_site_wise_action(),
        "iotTopicPublish" => iot_topic_publish_action(),
        "lambda" => lambda_action(),
        "resetTimer" => reset_timer_action(),
        "setTimer" => set_timer_action(),
        "setVariable" => set_variable_action(),
        "sns" => s_n_s_topic_publish_action(),
        "sqs" => sqs_action()
      }
      
  """
  @type action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      routed_resource() :: %{
        "arn" => String.t(),
        "name" => String.t()
      }
      
  """
  @type routed_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_detector_model_analysis_results_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type get_detector_model_analysis_results_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detector_debug_option() :: %{
        "detectorModelName" => String.t(),
        "keyValue" => String.t()
      }
      
  """
  @type detector_debug_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detector_model_configuration() :: %{
        "creationTime" => non_neg_integer(),
        "detectorModelArn" => String.t(),
        "detectorModelDescription" => String.t(),
        "detectorModelName" => String.t(),
        "detectorModelVersion" => String.t(),
        "evaluationMethod" => list(any()),
        "key" => String.t(),
        "lastUpdateTime" => non_neg_integer(),
        "roleArn" => String.t(),
        "status" => list(any())
      }
      
  """
  @type detector_model_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_detector_model_request() :: %{
        optional("detectorModelDescription") => String.t(),
        optional("evaluationMethod") => list(any()),
        optional("key") => String.t(),
        optional("tags") => list(tag()()),
        required("detectorModelDefinition") => detector_model_definition(),
        required("detectorModelName") => String.t(),
        required("roleArn") => String.t()
      }
      
  """
  @type create_detector_model_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_detector_model_versions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_detector_model_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      put_logging_options_request() :: %{
        required("loggingOptions") => logging_options()
      }
      
  """
  @type put_logging_options_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      transition_event() :: %{
        "actions" => list(action()()),
        "condition" => String.t(),
        "eventName" => String.t(),
        "nextState" => String.t()
      }
      
  """
  @type transition_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_detector_models_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_detector_models_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("resourceArn") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      email_recipients() :: %{
        "to" => list(recipient_detail()())
      }
      
  """
  @type email_recipients() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      alarm_notification() :: %{
        "notificationActions" => list(notification_action()())
      }
      
  """
  @type alarm_notification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reset_timer_action() :: %{
        "timerName" => String.t()
      }
      
  """
  @type reset_timer_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      iot_topic_publish_action() :: %{
        "mqttTopic" => String.t(),
        "payload" => payload()
      }
      
  """
  @type iot_topic_publish_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attribute() :: %{
        "jsonPath" => String.t()
      }
      
  """
  @type attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detector_model_summary() :: %{
        "creationTime" => non_neg_integer(),
        "detectorModelDescription" => String.t(),
        "detectorModelName" => String.t()
      }
      
  """
  @type detector_model_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_input_response() :: %{
        "inputConfiguration" => input_configuration()
      }
      
  """
  @type update_input_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      iot_site_wise_action() :: %{
        "assetId" => String.t(),
        "entryId" => String.t(),
        "propertyAlias" => String.t(),
        "propertyId" => String.t(),
        "propertyValue" => asset_property_value()
      }
      
  """
  @type iot_site_wise_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      logging_options() :: %{
        "detectorDebugOptions" => list(detector_debug_option()()),
        "enabled" => boolean(),
        "level" => list(any()),
        "roleArn" => String.t()
      }
      
  """
  @type logging_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notification_action() :: %{
        "action" => notification_target_actions(),
        "emailConfigurations" => list(email_configuration()()),
        "smsConfigurations" => list(sms_configuration()())
      }
      
  """
  @type notification_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      asset_property_variant() :: %{
        "booleanValue" => String.t(),
        "doubleValue" => String.t(),
        "integerValue" => String.t(),
        "stringValue" => String.t()
      }
      
  """
  @type asset_property_variant() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_alarm_model_response() :: %{
        "alarmModelArn" => String.t(),
        "alarmModelVersion" => String.t(),
        "creationTime" => non_neg_integer(),
        "lastUpdateTime" => non_neg_integer(),
        "status" => list(any())
      }
      
  """
  @type create_alarm_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_already_exists_exception() :: %{
        "message" => String.t(),
        "resourceArn" => String.t(),
        "resourceId" => String.t()
      }
      
  """
  @type resource_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_detector_model_request() :: %{}
      
  """
  @type delete_detector_model_request() :: %{}

  @typedoc """

  ## Example:
      
      recipient_detail() :: %{
        "ssoIdentity" => s_s_o_identity()
      }
      
  """
  @type recipient_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_detector_model_analysis_request() :: %{}
      
  """
  @type describe_detector_model_analysis_request() :: %{}

  @typedoc """

  ## Example:
      
      alarm_model_version_summary() :: %{
        "alarmModelArn" => String.t(),
        "alarmModelName" => String.t(),
        "alarmModelVersion" => String.t(),
        "creationTime" => non_neg_integer(),
        "lastUpdateTime" => non_neg_integer(),
        "roleArn" => String.t(),
        "status" => list(any()),
        "statusMessage" => String.t()
      }
      
  """
  @type alarm_model_version_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      initialization_configuration() :: %{
        "disabledOnInitialization" => boolean()
      }
      
  """
  @type initialization_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      email_configuration() :: %{
        "content" => email_content(),
        "from" => String.t(),
        "recipients" => email_recipients()
      }
      
  """
  @type email_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sqs_action() :: %{
        "payload" => payload(),
        "queueUrl" => String.t(),
        "useBase64" => boolean()
      }
      
  """
  @type sqs_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      iot_events_action() :: %{
        "inputName" => String.t(),
        "payload" => payload()
      }
      
  """
  @type iot_events_action() :: %{String.t() => any()}

  @type create_alarm_model_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_in_use_exception()
          | internal_failure_exception()

  @type create_detector_model_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_in_use_exception()
          | internal_failure_exception()

  @type create_input_errors() ::
          resource_already_exists_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type delete_alarm_model_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()
          | internal_failure_exception()

  @type delete_detector_model_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()
          | internal_failure_exception()

  @type delete_input_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()
          | internal_failure_exception()

  @type describe_alarm_model_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_detector_model_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_detector_model_analysis_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_input_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_logging_options_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unsupported_operation_exception()
          | internal_failure_exception()

  @type get_detector_model_analysis_results_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_alarm_model_versions_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_alarm_models_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type list_detector_model_versions_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_detector_models_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type list_input_routings_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_inputs_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()
          | internal_failure_exception()

  @type put_logging_options_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_in_use_exception()
          | unsupported_operation_exception()
          | internal_failure_exception()

  @type start_detector_model_analysis_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type tag_resource_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()
          | internal_failure_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()
          | internal_failure_exception()

  @type update_alarm_model_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()
          | internal_failure_exception()

  @type update_detector_model_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()
          | internal_failure_exception()

  @type update_input_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()
          | internal_failure_exception()

  def metadata do
    %{
      api_version: "2018-07-27",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "iotevents",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "IoT Events",
      signature_version: "v4",
      signing_name: "iotevents",
      target_prefix: nil
    }
  end

  @doc """
  Creates an alarm model to monitor an AWS IoT Events input attribute. You can use
  the alarm to get notified when the value is outside a specified range. For
  more information, see [Create an alarm
  model](https://docs.aws.amazon.com/iotevents/latest/developerguide/create-alarms.html)
  in the *AWS IoT Events Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotevents%20CreateAlarmModel&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec create_alarm_model(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_alarm_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_alarm_model_errors()}
  def create_alarm_model(%Client{} = client, options \\ []) do
    url_path = "/alarm-models"

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
  Creates a detector model.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotevents%20CreateDetectorModel&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec create_detector_model(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_detector_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_detector_model_errors()}
  def create_detector_model(%Client{} = client, options \\ []) do
    url_path = "/detector-models"

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
  Creates an input.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotevents%20CreateInput&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec create_input(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_input_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_input_errors()}
  def create_input(%Client{} = client, options \\ []) do
    url_path = "/inputs"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Deletes an alarm model. Any alarm instances that were created based on this
  alarm model are also deleted. This action can't be undone.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotevents%20DeleteAlarmModel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:alarm_model_name` (`t:string` required) The name of the alarm model.
  """
  @spec delete_alarm_model(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_alarm_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_alarm_model_errors()}
  def delete_alarm_model(%Client{} = client, alarm_model_name, options \\ []) do
    url_path = "/alarm-models/#{AWS.Util.encode_uri(alarm_model_name)}"

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
      204
    )
  end

  @doc """
  Deletes a detector model. Any active instances of the detector model are also
  deleted.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotevents%20DeleteDetectorModel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:detector_model_name` (`t:string` required) The name of the detector model to
    be deleted.
  """
  @spec delete_detector_model(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_detector_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_detector_model_errors()}
  def delete_detector_model(%Client{} = client, detector_model_name, options \\ []) do
    url_path = "/detector-models/#{AWS.Util.encode_uri(detector_model_name)}"

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
      204
    )
  end

  @doc """
  Deletes an input.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotevents%20DeleteInput&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input_name` (`t:string` required) The name of the input to delete.
  """
  @spec delete_input(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_input_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_input_errors()}
  def delete_input(%Client{} = client, input_name, options \\ []) do
    url_path = "/inputs/#{AWS.Util.encode_uri(input_name)}"

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
  Retrieves information about an alarm model. If you don't specify a value for the
  `alarmModelVersion` parameter, the latest version is returned.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotevents%20DescribeAlarmModel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:alarm_model_name` (`t:string` required) The name of the alarm model.

  ## Keyword parameters:
  * `:alarm_model_version` (`t:string`) The version of the alarm model.
  """
  @spec describe_alarm_model(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_alarm_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_alarm_model_errors()}
  def describe_alarm_model(%Client{} = client, alarm_model_name, options \\ []) do
    url_path = "/alarm-models/#{AWS.Util.encode_uri(alarm_model_name)}"

    # Validate optional parameters
    optional_params = [alarm_model_version: nil]

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
      if opt_val = Keyword.get(options, :alarm_model_version) do
        [{"version", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:alarm_model_version])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes a detector model. If the `version` parameter is not specified,
  information about the latest version is returned.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotevents%20DescribeDetectorModel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:detector_model_name` (`t:string` required) The name of the detector model.

  ## Keyword parameters:
  * `:detector_model_version` (`t:string`) The version of the detector model.
  """
  @spec describe_detector_model(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_detector_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_detector_model_errors()}
  def describe_detector_model(%Client{} = client, detector_model_name, options \\ []) do
    url_path = "/detector-models/#{AWS.Util.encode_uri(detector_model_name)}"

    # Validate optional parameters
    optional_params = [detector_model_version: nil]

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
      if opt_val = Keyword.get(options, :detector_model_version) do
        [{"version", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:detector_model_version])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves runtime information about a detector model analysis.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotevents%20DescribeDetectorModelAnalysis&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:analysis_id` (`t:string` required) The ID of the analysis result that you
    want to retrieve.
  """
  @spec describe_detector_model_analysis(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_detector_model_analysis_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_detector_model_analysis_errors()}
  def describe_detector_model_analysis(%Client{} = client, analysis_id, options \\ []) do
    url_path = "/analysis/detector-models/#{AWS.Util.encode_uri(analysis_id)}"

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
  Describes an input.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotevents%20DescribeInput&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input_name` (`t:string` required) The name of the input.
  """
  @spec describe_input(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_input_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_input_errors()}
  def describe_input(%Client{} = client, input_name, options \\ []) do
    url_path = "/inputs/#{AWS.Util.encode_uri(input_name)}"

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
  Retrieves the current settings of the AWS IoT Events logging options.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotevents%20DescribeLoggingOptions&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec describe_logging_options(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_logging_options_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_logging_options_errors()}
  def describe_logging_options(%Client{} = client, options \\ []) do
    url_path = "/logging"

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
  Retrieves one or more analysis results of the detector model.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotevents%20GetDetectorModelAnalysisResults&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:analysis_id` (`t:string` required) The ID of the analysis result that you
    want to retrieve.

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to be returned per
    request.
  * `:next_token` (`t:string`) The token that you can use to return the next set
    of results.
  """
  @spec get_detector_model_analysis_results(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_detector_model_analysis_results_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_detector_model_analysis_results_errors()}
  def get_detector_model_analysis_results(%Client{} = client, analysis_id, options \\ []) do
    url_path = "/analysis/detector-models/#{AWS.Util.encode_uri(analysis_id)}/results"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

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
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all the versions of an alarm model. The operation returns only the
  metadata associated with each alarm model version.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotevents%20ListAlarmModelVersions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:alarm_model_name` (`t:string` required) The name of the alarm model.

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to be returned per
    request.
  * `:next_token` (`t:string`) The token that you can use to return the next set
    of results.
  """
  @spec list_alarm_model_versions(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_alarm_model_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_alarm_model_versions_errors()}
  def list_alarm_model_versions(%Client{} = client, alarm_model_name, options \\ []) do
    url_path = "/alarm-models/#{AWS.Util.encode_uri(alarm_model_name)}/versions"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

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
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the alarm models that you created. The operation returns only the metadata
  associated with each alarm model.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotevents%20ListAlarmModels&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to be returned per
    request.
  * `:next_token` (`t:string`) The token that you can use to return the next set
    of results.
  """
  @spec list_alarm_models(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_alarm_models_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_alarm_models_errors()}
  def list_alarm_models(%Client{} = client, options \\ []) do
    url_path = "/alarm-models"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

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
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all the versions of a detector model. Only the metadata associated with
  each detector model version is returned.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotevents%20ListDetectorModelVersions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:detector_model_name` (`t:string` required) The name of the detector model
    whose versions are returned.

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to be returned per
    request.
  * `:next_token` (`t:string`) The token that you can use to return the next set
    of results.
  """
  @spec list_detector_model_versions(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_detector_model_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_detector_model_versions_errors()}
  def list_detector_model_versions(%Client{} = client, detector_model_name, options \\ []) do
    url_path = "/detector-models/#{AWS.Util.encode_uri(detector_model_name)}/versions"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

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
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the detector models you have created. Only the metadata associated with
  each detector model is returned.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotevents%20ListDetectorModels&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to be returned per
    request.
  * `:next_token` (`t:string`) The token that you can use to return the next set
    of results.
  """
  @spec list_detector_models(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_detector_models_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_detector_models_errors()}
  def list_detector_models(%Client{} = client, options \\ []) do
    url_path = "/detector-models"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

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
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists one or more input routings.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotevents%20ListInputRoutings&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec list_input_routings(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_input_routings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_input_routings_errors()}
  def list_input_routings(%Client{} = client, options \\ []) do
    url_path = "/input-routings"

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
  Lists the inputs you have created.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotevents%20ListInputs&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to be returned per
    request.
  * `:next_token` (`t:string`) The token that you can use to return the next set
    of results.
  """
  @spec list_inputs(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_inputs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_inputs_errors()}
  def list_inputs(%Client{} = client, options \\ []) do
    url_path = "/inputs"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

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
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags (metadata) you have assigned to the resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotevents%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The ARN of the resource.
  """
  @spec list_tags_for_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ [])
      when is_binary(resource_arn) do
    url_path = "/tags"

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
    query_params = [{"resourceArn", resource_arn}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Sets or updates the AWS IoT Events logging options.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotevents%20PutLoggingOptions&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec put_logging_options(AWS.Client.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_logging_options_errors()}
  def put_logging_options(%Client{} = client, options \\ []) do
    url_path = "/logging"

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
  Performs an analysis of your detector model. For more information, see
  [Troubleshooting a detector
  model](https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-analyze-api.html)
  in the *AWS IoT Events Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotevents%20StartDetectorModelAnalysis&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec start_detector_model_analysis(AWS.Client.t(), Keyword.t()) ::
          {:ok, start_detector_model_analysis_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_detector_model_analysis_errors()}
  def start_detector_model_analysis(%Client{} = client, options \\ []) do
    url_path = "/analysis/detector-models"

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
  Adds to or modifies the tags of the given resource. Tags are metadata that can
  be used to manage a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotevents%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The ARN of the resource.
  """
  @spec tag_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, options \\ [])
      when is_binary(resource_arn) do
    url_path = "/tags"

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
    query_params = [{"resourceArn", resource_arn}]

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Removes the given tags (metadata) from the resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotevents%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The ARN of the resource.
  * `:tag_keys` (`t:list[com.amazonaws.iotevents#TagKey]` required) A list of the
    keys of the tags to be removed from the resource.
  """
  @spec untag_resource(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, tag_keys, options \\ [])
      when is_binary(resource_arn) and is_binary(tag_keys) do
    url_path = "/tags"

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
    query_params = [{"resourceArn", resource_arn}, {"tagKeys", tag_keys}]

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
  Updates an alarm model. Any alarms that were created based on the previous
  version are deleted and then created again as new data arrives.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotevents%20UpdateAlarmModel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:alarm_model_name` (`t:string` required) The name of the alarm model.
  """
  @spec update_alarm_model(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_alarm_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_alarm_model_errors()}
  def update_alarm_model(%Client{} = client, alarm_model_name, options \\ []) do
    url_path = "/alarm-models/#{AWS.Util.encode_uri(alarm_model_name)}"

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
  Updates a detector model. Detectors (instances) spawned by the previous version
  are deleted and then re-created as new inputs arrive.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotevents%20UpdateDetectorModel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:detector_model_name` (`t:string` required) The name of the detector model
    that is updated.
  """
  @spec update_detector_model(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_detector_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_detector_model_errors()}
  def update_detector_model(%Client{} = client, detector_model_name, options \\ []) do
    url_path = "/detector-models/#{AWS.Util.encode_uri(detector_model_name)}"

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
  Updates an input.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotevents%20UpdateInput&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input_name` (`t:string` required) The name of the input you want to update.
  """
  @spec update_input(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_input_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_input_errors()}
  def update_input(%Client{} = client, input_name, options \\ []) do
    url_path = "/inputs/#{AWS.Util.encode_uri(input_name)}"

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
