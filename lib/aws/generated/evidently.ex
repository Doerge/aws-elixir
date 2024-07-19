# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Evidently do
  @moduledoc """
  You can use Amazon CloudWatch Evidently to safely validate new features by
  serving them to a specified percentage of your users while you roll out the
  feature. You can monitor the performance of the new feature to help you decide
  when to ramp up traffic to your users. This helps you reduce risk and identify
  unintended consequences before you fully launch the feature.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      evaluation_request() :: %{
        "entityId" => String.t(),
        "evaluationContext" => String.t(),
        "feature" => String.t()
      }
      
  """
  @type evaluation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_experiments_response() :: %{
        optional("experiments") => list(experiment()()),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_experiments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_experiment_response() :: %{}
      
  """
  @type delete_experiment_response() :: %{}

  @typedoc """

  ## Example:
      
      treatment_config() :: %{
        "description" => String.t(),
        "feature" => String.t(),
        "name" => String.t(),
        "variation" => String.t()
      }
      
  """
  @type treatment_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      launch_group() :: %{
        "description" => String.t(),
        "featureVariations" => map(),
        "name" => String.t()
      }
      
  """
  @type launch_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_launches_response() :: %{
        optional("launches") => list(launch()()),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_launches_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_feature_request() :: %{
        optional("defaultVariation") => String.t(),
        optional("description") => String.t(),
        optional("entityOverrides") => map(),
        optional("evaluationStrategy") => String.t(),
        optional("tags") => map(),
        required("name") => String.t(),
        required("variations") => list(variation_config()())
      }
      
  """
  @type create_feature_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_feature_response() :: %{
        optional("feature") => feature()
      }
      
  """
  @type create_feature_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_project_data_delivery_response() :: %{
        required("project") => project()
      }
      
  """
  @type update_project_data_delivery_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_experiment_response() :: %{
        optional("experiment") => experiment()
      }
      
  """
  @type get_experiment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test_segment_pattern_request() :: %{
        required("pattern") => String.t(),
        required("payload") => String.t()
      }
      
  """
  @type test_segment_pattern_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      feature() :: %{
        "arn" => String.t(),
        "createdTime" => [non_neg_integer()],
        "defaultVariation" => String.t(),
        "description" => String.t(),
        "entityOverrides" => map(),
        "evaluationRules" => list(evaluation_rule()()),
        "evaluationStrategy" => String.t(),
        "lastUpdatedTime" => [non_neg_integer()],
        "name" => String.t(),
        "project" => String.t(),
        "status" => String.t(),
        "tags" => map(),
        "valueType" => String.t(),
        "variations" => list(variation()())
      }
      
  """
  @type feature() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      online_ab_definition() :: %{
        "controlTreatmentName" => String.t(),
        "treatmentWeights" => map()
      }
      
  """
  @type online_ab_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scheduled_splits_launch_definition() :: %{
        "steps" => list(scheduled_split()())
      }
      
  """
  @type scheduled_splits_launch_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      project_summary() :: %{
        "activeExperimentCount" => [float()],
        "activeLaunchCount" => [float()],
        "arn" => String.t(),
        "createdTime" => [non_neg_integer()],
        "description" => String.t(),
        "experimentCount" => [float()],
        "featureCount" => [float()],
        "lastUpdatedTime" => [non_neg_integer()],
        "launchCount" => [float()],
        "name" => String.t(),
        "status" => String.t(),
        "tags" => map()
      }
      
  """
  @type project_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      get_launch_response() :: %{
        optional("launch") => launch()
      }
      
  """
  @type get_launch_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_segment_request() :: %{}
      
  """
  @type get_segment_request() :: %{}

  @typedoc """

  ## Example:
      
      put_project_events_response() :: %{
        optional("eventResults") => list(put_project_events_result_entry()()),
        optional("failedEventCount") => [integer()]
      }
      
  """
  @type put_project_events_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      variation_config() :: %{
        "name" => String.t(),
        "value" => list()
      }
      
  """
  @type variation_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test_segment_pattern_response() :: %{
        required("match") => [boolean()]
      }
      
  """
  @type test_segment_pattern_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_project_request() :: %{}
      
  """
  @type get_project_request() :: %{}

  @typedoc """

  ## Example:
      
      list_segment_references_response() :: %{
        optional("nextToken") => String.t(),
        optional("referencedBy") => list(ref_resource()())
      }
      
  """
  @type list_segment_references_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_watch_logs_destination() :: %{
        "logGroup" => String.t()
      }
      
  """
  @type cloud_watch_logs_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_project_events_result_entry() :: %{
        "errorCode" => String.t(),
        "errorMessage" => String.t(),
        "eventId" => String.t()
      }
      
  """
  @type put_project_events_result_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_features_response() :: %{
        optional("features") => list(feature_summary()()),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_features_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_definition_config() :: %{
        "entityIdKey" => String.t(),
        "eventPattern" => String.t(),
        "name" => String.t(),
        "unitLabel" => String.t(),
        "valueKey" => String.t()
      }
      
  """
  @type metric_definition_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_experiment_response() :: %{
        required("experiment") => experiment()
      }
      
  """
  @type create_experiment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      segment_override() :: %{
        "evaluationOrder" => [float()],
        "segment" => String.t(),
        "weights" => map()
      }
      
  """
  @type segment_override() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_launches_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("status") => String.t()
      }
      
  """
  @type list_launches_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_launch_response() :: %{}
      
  """
  @type delete_launch_response() :: %{}

  @typedoc """

  ## Example:
      
      list_features_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_features_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_definition() :: %{
        "entityIdKey" => String.t(),
        "eventPattern" => String.t(),
        "name" => String.t(),
        "unitLabel" => String.t(),
        "valueKey" => String.t()
      }
      
  """
  @type metric_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_launch_request() :: %{
        optional("description") => String.t(),
        optional("metricMonitors") => list(metric_monitor_config()()),
        optional("randomizationSalt") => String.t(),
        optional("scheduledSplitsConfig") => scheduled_splits_launch_config(),
        optional("tags") => map(),
        required("groups") => list(launch_group_config()()),
        required("name") => String.t()
      }
      
  """
  @type create_launch_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_project_data_delivery_request() :: %{
        optional("cloudWatchLogs") => cloud_watch_logs_destination_config(),
        optional("s3Destination") => s3_destination_config()
      }
      
  """
  @type update_project_data_delivery_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      variation() :: %{
        "name" => String.t(),
        "value" => list()
      }
      
  """
  @type variation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_project_response() :: %{
        required("project") => project()
      }
      
  """
  @type update_project_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluate_feature_response() :: %{
        optional("details") => String.t(),
        optional("reason") => [String.t()],
        optional("value") => list(),
        optional("variation") => [String.t()]
      }
      
  """
  @type evaluate_feature_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_feature_request() :: %{
        optional("addOrUpdateVariations") => list(variation_config()()),
        optional("defaultVariation") => String.t(),
        optional("description") => String.t(),
        optional("entityOverrides") => map(),
        optional("evaluationStrategy") => String.t(),
        optional("removeVariations") => list(String.t()())
      }
      
  """
  @type update_feature_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      segment() :: %{
        "arn" => String.t(),
        "createdTime" => [non_neg_integer()],
        "description" => String.t(),
        "experimentCount" => [float()],
        "lastUpdatedTime" => [non_neg_integer()],
        "launchCount" => [float()],
        "name" => String.t(),
        "pattern" => String.t(),
        "tags" => map()
      }
      
  """
  @type segment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_project_events_request() :: %{
        required("events") => list(event()())
      }
      
  """
  @type put_project_events_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      project_data_delivery_config() :: %{
        "cloudWatchLogs" => cloud_watch_logs_destination_config(),
        "s3Destination" => s3_destination_config()
      }
      
  """
  @type project_data_delivery_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_segment_response() :: %{
        required("segment") => segment()
      }
      
  """
  @type create_segment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      project_app_config_resource() :: %{
        "applicationId" => String.t(),
        "configurationProfileId" => String.t(),
        "environmentId" => String.t()
      }
      
  """
  @type project_app_config_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_segments_response() :: %{
        optional("nextToken") => String.t(),
        optional("segments") => list(segment()())
      }
      
  """
  @type list_segments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluate_feature_request() :: %{
        optional("evaluationContext") => String.t(),
        required("entityId") => String.t()
      }
      
  """
  @type evaluate_feature_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scheduled_split_config() :: %{
        "groupWeights" => map(),
        "segmentOverrides" => list(segment_override()()),
        "startTime" => [non_neg_integer()]
      }
      
  """
  @type scheduled_split_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_project_response() :: %{
        required("project") => project()
      }
      
  """
  @type create_project_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_experiment_request() :: %{}
      
  """
  @type delete_experiment_request() :: %{}

  @typedoc """

  ## Example:
      
      get_experiment_request() :: %{}
      
  """
  @type get_experiment_request() :: %{}

  @typedoc """

  ## Example:
      
      project() :: %{
        "activeExperimentCount" => [float()],
        "activeLaunchCount" => [float()],
        "appConfigResource" => project_app_config_resource(),
        "arn" => String.t(),
        "createdTime" => [non_neg_integer()],
        "dataDelivery" => project_data_delivery(),
        "description" => String.t(),
        "experimentCount" => [float()],
        "featureCount" => [float()],
        "lastUpdatedTime" => [non_neg_integer()],
        "launchCount" => [float()],
        "name" => String.t(),
        "status" => String.t(),
        "tags" => map()
      }
      
  """
  @type project() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      launch_group_config() :: %{
        "description" => String.t(),
        "feature" => String.t(),
        "name" => String.t(),
        "variation" => String.t()
      }
      
  """
  @type launch_group_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_monitor() :: %{
        "metricDefinition" => metric_definition()
      }
      
  """
  @type metric_monitor() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => [String.t()],
        "quotaCode" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()],
        "serviceCode" => [String.t()]
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_feature_response() :: %{
        required("feature") => feature()
      }
      
  """
  @type update_feature_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_goal_config() :: %{
        "desiredChange" => String.t(),
        "metricDefinition" => metric_definition_config()
      }
      
  """
  @type metric_goal_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_projects_response() :: %{
        optional("nextToken") => String.t(),
        optional("projects") => list(project_summary()())
      }
      
  """
  @type list_projects_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_project_response() :: %{
        required("project") => project()
      }
      
  """
  @type get_project_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        optional("tags") => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      feature_summary() :: %{
        "arn" => String.t(),
        "createdTime" => [non_neg_integer()],
        "defaultVariation" => String.t(),
        "evaluationRules" => list(evaluation_rule()()),
        "evaluationStrategy" => String.t(),
        "lastUpdatedTime" => [non_neg_integer()],
        "name" => String.t(),
        "project" => String.t(),
        "status" => String.t(),
        "tags" => map()
      }
      
  """
  @type feature_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception_field() :: %{
        "message" => [String.t()],
        "name" => [String.t()]
      }
      
  """
  @type validation_exception_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_unavailable_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      experiment_report() :: %{
        "content" => String.t(),
        "metricName" => String.t(),
        "reportName" => String.t(),
        "treatmentName" => String.t()
      }
      
  """
  @type experiment_report() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_evaluate_feature_response() :: %{
        optional("results") => list(evaluation_result()())
      }
      
  """
  @type batch_evaluate_feature_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_segment_response() :: %{
        required("segment") => segment()
      }
      
  """
  @type get_segment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ref_resource() :: %{
        "arn" => [String.t()],
        "endTime" => [String.t()],
        "lastUpdatedOn" => [String.t()],
        "name" => [String.t()],
        "startTime" => [String.t()],
        "status" => [String.t()],
        "type" => [String.t()]
      }
      
  """
  @type ref_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scheduled_splits_launch_config() :: %{
        "steps" => list(scheduled_split_config()())
      }
      
  """
  @type scheduled_splits_launch_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_segment_request() :: %{
        optional("description") => String.t(),
        optional("tags") => map(),
        required("name") => String.t(),
        required("pattern") => String.t()
      }
      
  """
  @type create_segment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_watch_logs_destination_config() :: %{
        "logGroup" => String.t()
      }
      
  """
  @type cloud_watch_logs_destination_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_destination() :: %{
        "bucket" => String.t(),
        "prefix" => String.t()
      }
      
  """
  @type s3_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_experiment_request() :: %{
        optional("description") => String.t(),
        optional("metricGoals") => list(metric_goal_config()()),
        optional("onlineAbConfig") => online_ab_config(),
        optional("randomizationSalt") => String.t(),
        optional("removeSegment") => [boolean()],
        optional("samplingRate") => float(),
        optional("segment") => String.t(),
        optional("treatments") => list(treatment_config()())
      }
      
  """
  @type update_experiment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_experiment_request() :: %{
        optional("description") => String.t(),
        optional("onlineAbConfig") => online_ab_config(),
        optional("randomizationSalt") => String.t(),
        optional("samplingRate") => float(),
        optional("segment") => String.t(),
        optional("tags") => map(),
        required("metricGoals") => list(metric_goal_config()()),
        required("name") => String.t(),
        required("treatments") => list(treatment_config()())
      }
      
  """
  @type create_experiment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_segment_response() :: %{}
      
  """
  @type delete_segment_response() :: %{}

  @typedoc """

  ## Example:
      
      experiment_results_data() :: %{
        "metricName" => String.t(),
        "resultStat" => String.t(),
        "treatmentName" => String.t(),
        "values" => list([float()]())
      }
      
  """
  @type experiment_results_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      experiment_schedule() :: %{
        "analysisCompleteTime" => [non_neg_integer()]
      }
      
  """
  @type experiment_schedule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluation_rule() :: %{
        "name" => String.t(),
        "type" => String.t()
      }
      
  """
  @type evaluation_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      experiment_execution() :: %{
        "endedTime" => [non_neg_integer()],
        "startedTime" => [non_neg_integer()]
      }
      
  """
  @type experiment_execution() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_experiment_request() :: %{
        optional("desiredState") => String.t(),
        optional("reason") => String.t()
      }
      
  """
  @type stop_experiment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_project_response() :: %{}
      
  """
  @type delete_project_response() :: %{}

  @typedoc """

  ## Example:
      
      update_project_request() :: %{
        optional("appConfigResource") => project_app_config_resource_config(),
        optional("description") => String.t()
      }
      
  """
  @type update_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event() :: %{
        "data" => String.t(),
        "timestamp" => [non_neg_integer()],
        "type" => String.t()
      }
      
  """
  @type event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      online_ab_config() :: %{
        "controlTreatmentName" => String.t(),
        "treatmentWeights" => map()
      }
      
  """
  @type online_ab_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      treatment() :: %{
        "description" => String.t(),
        "featureVariations" => map(),
        "name" => String.t()
      }
      
  """
  @type treatment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_experiment_response() :: %{
        optional("startedTime") => [non_neg_integer()]
      }
      
  """
  @type start_experiment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_launch_response() :: %{
        required("launch") => launch()
      }
      
  """
  @type update_launch_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      project_data_delivery() :: %{
        "cloudWatchLogs" => cloud_watch_logs_destination(),
        "s3Destination" => s3_destination()
      }
      
  """
  @type project_data_delivery() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()()),
        "message" => [String.t()],
        "reason" => String.t()
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
      
      batch_evaluate_feature_request() :: %{
        required("requests") => list(evaluation_request()())
      }
      
  """
  @type batch_evaluate_feature_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_experiments_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("status") => String.t()
      }
      
  """
  @type list_experiments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => [String.t()],
        "quotaCode" => [String.t()],
        "serviceCode" => [String.t()]
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_project_request() :: %{
        optional("appConfigResource") => project_app_config_resource_config(),
        optional("dataDelivery") => project_data_delivery_config(),
        optional("description") => String.t(),
        optional("tags") => map(),
        required("name") => String.t()
      }
      
  """
  @type create_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_experiment_request() :: %{
        required("analysisCompleteTime") => [non_neg_integer()]
      }
      
  """
  @type start_experiment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_projects_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_projects_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_segments_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_segments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_segment_references_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("type") => String.t()
      }
      
  """
  @type list_segment_references_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_goal() :: %{
        "desiredChange" => String.t(),
        "metricDefinition" => metric_definition()
      }
      
  """
  @type metric_goal() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      launch_execution() :: %{
        "endedTime" => [non_neg_integer()],
        "startedTime" => [non_neg_integer()]
      }
      
  """
  @type launch_execution() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_segment_request() :: %{}
      
  """
  @type delete_segment_request() :: %{}

  @typedoc """

  ## Example:
      
      metric_monitor_config() :: %{
        "metricDefinition" => metric_definition_config()
      }
      
  """
  @type metric_monitor_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      project_app_config_resource_config() :: %{
        "applicationId" => String.t(),
        "environmentId" => String.t()
      }
      
  """
  @type project_app_config_resource_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluation_result() :: %{
        "details" => String.t(),
        "entityId" => String.t(),
        "feature" => String.t(),
        "project" => String.t(),
        "reason" => [String.t()],
        "value" => list(),
        "variation" => [String.t()]
      }
      
  """
  @type evaluation_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_experiment_response() :: %{
        optional("endedTime") => [non_neg_integer()]
      }
      
  """
  @type stop_experiment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_launch_request() :: %{
        optional("desiredState") => String.t(),
        optional("reason") => String.t()
      }
      
  """
  @type stop_launch_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_feature_response() :: %{}
      
  """
  @type delete_feature_response() :: %{}

  @typedoc """

  ## Example:
      
      start_launch_response() :: %{
        required("launch") => launch()
      }
      
  """
  @type start_launch_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_feature_response() :: %{
        required("feature") => feature()
      }
      
  """
  @type get_feature_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_launch_request() :: %{}
      
  """
  @type start_launch_request() :: %{}

  @typedoc """

  ## Example:
      
      launch() :: %{
        "arn" => String.t(),
        "createdTime" => [non_neg_integer()],
        "description" => String.t(),
        "execution" => launch_execution(),
        "groups" => list(launch_group()()),
        "lastUpdatedTime" => [non_neg_integer()],
        "metricMonitors" => list(metric_monitor()()),
        "name" => String.t(),
        "project" => String.t(),
        "randomizationSalt" => String.t(),
        "scheduledSplitsDefinition" => scheduled_splits_launch_definition(),
        "status" => String.t(),
        "statusReason" => String.t(),
        "tags" => map(),
        "type" => String.t()
      }
      
  """
  @type launch() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_experiment_results_response() :: %{
        optional("details") => [String.t()],
        optional("reports") => list(experiment_report()()),
        optional("resultsData") => list(experiment_results_data()()),
        optional("timestamps") => list([non_neg_integer()]())
      }
      
  """
  @type get_experiment_results_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scheduled_split() :: %{
        "groupWeights" => map(),
        "segmentOverrides" => list(segment_override()()),
        "startTime" => [non_neg_integer()]
      }
      
  """
  @type scheduled_split() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      experiment() :: %{
        "arn" => String.t(),
        "createdTime" => [non_neg_integer()],
        "description" => String.t(),
        "execution" => experiment_execution(),
        "lastUpdatedTime" => [non_neg_integer()],
        "metricGoals" => list(metric_goal()()),
        "name" => String.t(),
        "onlineAbDefinition" => online_ab_definition(),
        "project" => String.t(),
        "randomizationSalt" => String.t(),
        "samplingRate" => float(),
        "schedule" => experiment_schedule(),
        "segment" => String.t(),
        "status" => String.t(),
        "statusReason" => String.t(),
        "tags" => map(),
        "treatments" => list(treatment()()),
        "type" => String.t()
      }
      
  """
  @type experiment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_project_request() :: %{}
      
  """
  @type delete_project_request() :: %{}

  @typedoc """

  ## Example:
      
      stop_launch_response() :: %{
        optional("endedTime") => [non_neg_integer()]
      }
      
  """
  @type stop_launch_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_experiment_response() :: %{
        required("experiment") => experiment()
      }
      
  """
  @type update_experiment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_launch_request() :: %{}
      
  """
  @type get_launch_request() :: %{}

  @typedoc """

  ## Example:
      
      s3_destination_config() :: %{
        "bucket" => String.t(),
        "prefix" => String.t()
      }
      
  """
  @type s3_destination_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_experiment_results_request() :: %{
        optional("baseStat") => String.t(),
        optional("endTime") => [non_neg_integer()],
        optional("period") => float(),
        optional("reportNames") => list(String.t()()),
        optional("resultStats") => list(String.t()()),
        optional("startTime") => [non_neg_integer()],
        required("metricNames") => list(String.t()()),
        required("treatmentNames") => list(String.t()())
      }
      
  """
  @type get_experiment_results_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_feature_request() :: %{}
      
  """
  @type delete_feature_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_launch_request() :: %{}
      
  """
  @type delete_launch_request() :: %{}

  @typedoc """

  ## Example:
      
      get_feature_request() :: %{}
      
  """
  @type get_feature_request() :: %{}

  @typedoc """

  ## Example:
      
      create_launch_response() :: %{
        required("launch") => launch()
      }
      
  """
  @type create_launch_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_launch_request() :: %{
        optional("description") => String.t(),
        optional("groups") => list(launch_group_config()()),
        optional("metricMonitors") => list(metric_monitor_config()()),
        optional("randomizationSalt") => String.t(),
        optional("scheduledSplitsConfig") => scheduled_splits_launch_config()
      }
      
  """
  @type update_launch_request() :: %{String.t() => any()}

  @type batch_evaluate_feature_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type create_experiment_errors() ::
          validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_feature_errors() ::
          validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_launch_errors() ::
          validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_project_errors() ::
          validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_segment_errors() ::
          validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_experiment_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_feature_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_launch_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_project_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_segment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type evaluate_feature_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_experiment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_experiment_results_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_feature_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_launch_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_project_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_segment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_experiments_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type list_features_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_launches_errors() ::
          throttling_exception() | validation_exception() | access_denied_exception()

  @type list_projects_errors() ::
          throttling_exception() | validation_exception() | access_denied_exception()

  @type list_segment_references_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_segments_errors() ::
          throttling_exception() | validation_exception() | access_denied_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | resource_not_found_exception() | conflict_exception()

  @type put_project_events_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type start_experiment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_launch_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type stop_experiment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type stop_launch_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() ::
          validation_exception() | resource_not_found_exception() | conflict_exception()

  @type test_segment_pattern_errors() ::
          throttling_exception() | validation_exception() | access_denied_exception()

  @type untag_resource_errors() ::
          validation_exception() | resource_not_found_exception() | conflict_exception()

  @type update_experiment_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_feature_errors() ::
          validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_launch_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_project_errors() ::
          validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_project_data_delivery_errors() ::
          validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2021-02-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "evidently",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Evidently",
      signature_version: "v4",
      signing_name: "evidently",
      target_prefix: nil
    }
  end

  @doc """
  This operation assigns feature variation to user sessions. For each user
  session, you pass in an `entityID` that represents the user. Evidently then
  checks the evaluation rules and assigns the variation. The first rules that
  are evaluated are the override rules. If the user's `entityID` matches an
  override rule, the user is served the variation specified by that rule.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=evidently%20BatchEvaluateFeature&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:project` (`t:string`) The name or ARN of the project that contains the
  feature being evaluated.

  ## Optional parameters:
  """

  @spec batch_evaluate_feature(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, batch_evaluate_feature_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_evaluate_feature_errors()}

  def batch_evaluate_feature(%Client{} = client, project, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project)}/evaluations"

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
      metadata() |> Map.put_new(:host_prefix, "dataplane.")

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates an Evidently *experiment*. Before you create an experiment, you must
  create the feature to use for the experiment. An experiment helps you make
  feature design decisions based on evidence and data. An experiment can test as
  many as five variations at once. Evidently collects experiment data and
  analyzes it by statistical methods, and provides clear recommendations about
  which variations perform better.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=evidently%20CreateExperiment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:project` (`t:string`) The name or ARN of the project that you want to create
  the new experiment in.

  ## Optional parameters:
  """

  @spec create_experiment(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_experiment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_experiment_errors()}

  def create_experiment(%Client{} = client, project, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project)}/experiments"

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
  Creates an Evidently *feature* that you want to launch or test. You can define
  up to five variations of a feature, and use these variations in your launches
  and experiments. A feature must be created in a project. For information about
  creating a project, see
  [CreateProject](https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_CreateProject.html).
  Don't use this operation to update an existing feature. Instead, use
  [UpdateFeature](https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_UpdateFeature.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=evidently%20CreateFeature&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:project` (`t:string`) The name or ARN of the project that is to contain the
  new feature.

  ## Optional parameters:
  """

  @spec create_feature(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_feature_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_feature_errors()}

  def create_feature(%Client{} = client, project, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project)}/features"

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
  Creates a *launch* of a given feature. Before you create a launch, you must
  create the feature to use for the launch. You can use a launch to safely
  validate new features by serving them to a specified percentage of your users
  while you roll out the feature. You can monitor the performance of the new
  feature to help you decide when to ramp up traffic to more users. This helps
  you reduce risk and identify unintended consequences before you fully launch
  the feature.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=evidently%20CreateLaunch&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:project` (`t:string`) The name or ARN of the project that you want to create
  the launch in.

  ## Optional parameters:
  """

  @spec create_launch(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_launch_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_launch_errors()}

  def create_launch(%Client{} = client, project, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project)}/launches"

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
  Creates a project, which is the logical object in Evidently that can contain
  features, launches, and experiments. Use projects to group similar features
  together.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=evidently%20CreateProject&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_project(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_project_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_project_errors()}

  def create_project(%Client{} = client, options \\ []) do
    url_path = "/projects"

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
  Use this operation to define a *segment* of your audience. A segment is a
  portion of your audience that share one or more characteristics. Examples
  could be Chrome browser users, users in Europe, or Firefox browser users in
  Europe who also fit other criteria that your application collects, such as
  age. Using a segment in an experiment limits that experiment to evaluate only
  the users who match the segment criteria. Using one or more segments in a
  launch allows you to define different traffic splits for the different
  audience segments.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=evidently%20CreateSegment&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_segment(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_segment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_segment_errors()}

  def create_segment(%Client{} = client, options \\ []) do
    url_path = "/segments"

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
  Deletes an Evidently experiment. The feature used for the experiment is not
  deleted.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=evidently%20DeleteExperiment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:experiment` (`t:string`) The name of the experiment to delete.
  * `:project` (`t:string`) The name or ARN of the project that contains the
  experiment to delete.

  ## Optional parameters:
  """

  @spec delete_experiment(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_experiment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_experiment_errors()}

  def delete_experiment(%Client{} = client, experiment, project, options \\ []) do
    url_path =
      "/projects/#{AWS.Util.encode_uri(project)}/experiments/#{AWS.Util.encode_uri(experiment)}"

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
  Deletes an Evidently feature.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=evidently%20DeleteFeature&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:feature` (`t:string`) The name of the feature to delete.
  * `:project` (`t:string`) The name or ARN of the project that contains the
  feature to delete.

  ## Optional parameters:
  """

  @spec delete_feature(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_feature_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_feature_errors()}

  def delete_feature(%Client{} = client, feature, project, options \\ []) do
    url_path =
      "/projects/#{AWS.Util.encode_uri(project)}/features/#{AWS.Util.encode_uri(feature)}"

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
  Deletes an Evidently launch. The feature used for the launch is not deleted.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=evidently%20DeleteLaunch&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:launch` (`t:string`) The name of the launch to delete.
  * `:project` (`t:string`) The name or ARN of the project that contains the
  launch to delete.

  ## Optional parameters:
  """

  @spec delete_launch(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_launch_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_launch_errors()}

  def delete_launch(%Client{} = client, launch, project, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project)}/launches/#{AWS.Util.encode_uri(launch)}"

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
  Deletes an Evidently project. Before you can delete a project, you must delete
  all the features that the project contains. To delete a feature, use
  [DeleteFeature](https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_DeleteFeature.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=evidently%20DeleteProject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:project` (`t:string`) The name or ARN of the project to delete.

  ## Optional parameters:
  """

  @spec delete_project(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_project_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_project_errors()}

  def delete_project(%Client{} = client, project, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project)}"

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
  Deletes a segment. You can't delete a segment that is being used in a launch or
  experiment, even if that launch or experiment is not currently running.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=evidently%20DeleteSegment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:segment` (`t:string`) Specifies the segment to delete.

  ## Optional parameters:
  """

  @spec delete_segment(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_segment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_segment_errors()}

  def delete_segment(%Client{} = client, segment, options \\ []) do
    url_path = "/segments/#{AWS.Util.encode_uri(segment)}"

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
  This operation assigns a feature variation to one given user session. You pass
  in an `entityID` that represents the user. Evidently then checks the
  evaluation rules and assigns the variation. The first rules that are evaluated
  are the override rules. If the user's `entityID` matches an override rule, the
  user is served the variation specified by that rule.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=evidently%20EvaluateFeature&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:feature` (`t:string`) The name of the feature being evaluated.
  * `:project` (`t:string`) The name or ARN of the project that contains this
  feature.

  ## Optional parameters:
  """

  @spec evaluate_feature(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, evaluate_feature_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, evaluate_feature_errors()}

  def evaluate_feature(%Client{} = client, feature, project, options \\ []) do
    url_path =
      "/projects/#{AWS.Util.encode_uri(project)}/evaluations/#{AWS.Util.encode_uri(feature)}"

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
      metadata() |> Map.put_new(:host_prefix, "dataplane.")

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Returns the details about one experiment. You must already know the experiment
  name. To retrieve a list of experiments in your account, use
  [ListExperiments](https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_ListExperiments.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=evidently%20GetExperiment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:experiment` (`t:string`) The name of the experiment that you want to see the
  details of.
  * `:project` (`t:string`) The name or ARN of the project that contains the
  experiment.

  ## Optional parameters:
  """

  @spec get_experiment(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_experiment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_experiment_errors()}

  def get_experiment(%Client{} = client, experiment, project, options \\ []) do
    url_path =
      "/projects/#{AWS.Util.encode_uri(project)}/experiments/#{AWS.Util.encode_uri(experiment)}"

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
  Retrieves the results of a running or completed experiment. No results are
  available until there have been 100 events for each variation and at least 10
  minutes have passed since the start of the experiment. To increase the
  statistical power, Evidently performs an additional offline p-value analysis
  at the end of the experiment. Offline p-value analysis can detect statistical
  significance in some cases where the anytime p-values used during the
  experiment do not find statistical significance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=evidently%20GetExperimentResults&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:experiment` (`t:string`) The name of the experiment to retrieve the results
  of.
  * `:project` (`t:string`) The name or ARN of the project that contains the
  experiment that you want to see the results of.

  ## Optional parameters:
  """

  @spec get_experiment_results(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_experiment_results_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_experiment_results_errors()}

  def get_experiment_results(%Client{} = client, experiment, project, options \\ []) do
    url_path =
      "/projects/#{AWS.Util.encode_uri(project)}/experiments/#{AWS.Util.encode_uri(experiment)}/results"

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
  Returns the details about one feature. You must already know the feature name.
  To retrieve a list of features in your account, use
  [ListFeatures](https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_ListFeatures.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=evidently%20GetFeature&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:feature` (`t:string`) The name of the feature that you want to retrieve
  information for.
  * `:project` (`t:string`) The name or ARN of the project that contains the
  feature.

  ## Optional parameters:
  """

  @spec get_feature(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_feature_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_feature_errors()}

  def get_feature(%Client{} = client, feature, project, options \\ []) do
    url_path =
      "/projects/#{AWS.Util.encode_uri(project)}/features/#{AWS.Util.encode_uri(feature)}"

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
  Returns the details about one launch. You must already know the launch name. To
  retrieve a list of launches in your account, use
  [ListLaunches](https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_ListLaunches.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=evidently%20GetLaunch&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:launch` (`t:string`) The name of the launch that you want to see the details
  of.
  * `:project` (`t:string`) The name or ARN of the project that contains the
  launch.

  ## Optional parameters:
  """

  @spec get_launch(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_launch_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_launch_errors()}

  def get_launch(%Client{} = client, launch, project, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project)}/launches/#{AWS.Util.encode_uri(launch)}"

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
  Returns the details about one launch. You must already know the project name. To
  retrieve a list of projects in your account, use
  [ListProjects](https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_ListProjects.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=evidently%20GetProject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:project` (`t:string`) The name or ARN of the project that you want to see
  the details of.

  ## Optional parameters:
  """

  @spec get_project(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_project_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_project_errors()}

  def get_project(%Client{} = client, project, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project)}"

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
  Returns information about the specified segment. Specify the segment you want to
  view by specifying its ARN.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=evidently%20GetSegment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:segment` (`t:string`) The ARN of the segment to return information for.

  ## Optional parameters:
  """

  @spec get_segment(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_segment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_segment_errors()}

  def get_segment(%Client{} = client, segment, options \\ []) do
    url_path = "/segments/#{AWS.Util.encode_uri(segment)}"

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
  Returns configuration details about all the experiments in the specified
  project.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=evidently%20ListExperiments&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:project` (`t:string`) The name or ARN of the project to return the
  experiment list from.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to include in the
  response.
  * `:next_token` (`t:string`) The token to use when requesting the next set of
  results. You received this token from a previous ListExperiments operation.
  * `:status` (`t:string`) Use this optional parameter to limit the returned
  results to only the experiments with the status that you specify here.
  """

  @spec list_experiments(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_experiments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_experiments_errors()}

  def list_experiments(%Client{} = client, project, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project)}/experiments"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, status: nil]

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
      if opt_val = Keyword.get(options, :status) do
        [{"status", opt_val} | query_params]
      else
        query_params
      end

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
      |> Keyword.drop([:max_results, :next_token, :status])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns configuration details about all the features in the specified project.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=evidently%20ListFeatures&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:project` (`t:string`) The name or ARN of the project to return the feature
  list from.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to include in the
  response.
  * `:next_token` (`t:string`) The token to use when requesting the next set of
  results. You received this token from a previous ListFeatures operation.
  """

  @spec list_features(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_features_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_features_errors()}

  def list_features(%Client{} = client, project, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project)}/features"

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
  Returns configuration details about all the launches in the specified project.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=evidently%20ListLaunches&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:project` (`t:string`) The name or ARN of the project to return the launch
  list from.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to include in the
  response.
  * `:next_token` (`t:string`) The token to use when requesting the next set of
  results. You received this token from a previous ListLaunches operation.
  * `:status` (`t:string`) Use this optional parameter to limit the returned
  results to only the launches with the status that you specify here.
  """

  @spec list_launches(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_launches_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_launches_errors()}

  def list_launches(%Client{} = client, project, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project)}/launches"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, status: nil]

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
      if opt_val = Keyword.get(options, :status) do
        [{"status", opt_val} | query_params]
      else
        query_params
      end

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
      |> Keyword.drop([:max_results, :next_token, :status])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns configuration details about all the projects in the current Region in
  your account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=evidently%20ListProjects&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to include in the
  response.
  * `:next_token` (`t:string`) The token to use when requesting the next set of
  results. You received this token from a previous ListProjects operation.
  """

  @spec list_projects(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_projects_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_projects_errors()}

  def list_projects(%Client{} = client, options \\ []) do
    url_path = "/projects"

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
  Use this operation to find which experiments or launches are using a specified
  segment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=evidently%20ListSegmentReferences&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:segment` (`t:string`) The ARN of the segment that you want to view
  information for.
  * `:type` (`t:string`) Specifies whether to return information about launches or
  experiments that use this segment.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to include in the
  response. If you omit this, the default of 50 is used.
  * `:next_token` (`t:string`) The token to use when requesting the next set of
  results. You received this token from a previous ListSegmentReferences
  operation.
  """

  @spec list_segment_references(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_segment_references_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_segment_references_errors()}

  def list_segment_references(%Client{} = client, segment, type, options \\ [])
      when is_binary(type) do
    url_path = "/segments/#{AWS.Util.encode_uri(segment)}/references"

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
    query_params = [{"type", type}]

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
  Returns a list of audience segments that you have created in your account in
  this Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=evidently%20ListSegments&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to include in the
  response. If you omit this, the default of 50 is used.
  * `:next_token` (`t:string`) The token to use when requesting the next set of
  results. You received this token from a previous ListSegments operation.
  """

  @spec list_segments(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_segments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_segments_errors()}

  def list_segments(%Client{} = client, options \\ []) do
    url_path = "/segments"

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
  Displays the tags associated with an Evidently resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=evidently%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The ARN of the resource that you want to see the
  tags of.

  ## Optional parameters:
  """

  @spec list_tags_for_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}

  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"

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
  Sends performance events to Evidently. These events can be used to evaluate a
  launch or an experiment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=evidently%20PutProjectEvents&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:project` (`t:string`) The name or ARN of the project to write the events to.

  ## Optional parameters:
  """

  @spec put_project_events(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, put_project_events_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_project_events_errors()}

  def put_project_events(%Client{} = client, project, options \\ []) do
    url_path = "/events/projects/#{AWS.Util.encode_uri(project)}"

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
      metadata() |> Map.put_new(:host_prefix, "dataplane.")

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Starts an existing experiment. To create an experiment, use
  [CreateExperiment](https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_CreateExperiment.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=evidently%20StartExperiment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:experiment` (`t:string`) The name of the experiment to start.
  * `:project` (`t:string`) The name or ARN of the project that contains the
  experiment to start.

  ## Optional parameters:
  """

  @spec start_experiment(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, start_experiment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_experiment_errors()}

  def start_experiment(%Client{} = client, experiment, project, options \\ []) do
    url_path =
      "/projects/#{AWS.Util.encode_uri(project)}/experiments/#{AWS.Util.encode_uri(experiment)}/start"

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
  Starts an existing launch. To create a launch, use
  [CreateLaunch](https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_CreateLaunch.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=evidently%20StartLaunch&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:launch` (`t:string`) The name of the launch to start.
  * `:project` (`t:string`) The name or ARN of the project that contains the
  launch to start.

  ## Optional parameters:
  """

  @spec start_launch(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, start_launch_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_launch_errors()}

  def start_launch(%Client{} = client, launch, project, options \\ []) do
    url_path =
      "/projects/#{AWS.Util.encode_uri(project)}/launches/#{AWS.Util.encode_uri(launch)}/start"

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
  Stops an experiment that is currently running. If you stop an experiment, you
  can't resume it or restart it.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=evidently%20StopExperiment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:experiment` (`t:string`) The name of the experiment to stop.
  * `:project` (`t:string`) The name or ARN of the project that contains the
  experiment to stop.

  ## Optional parameters:
  """

  @spec stop_experiment(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, stop_experiment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_experiment_errors()}

  def stop_experiment(%Client{} = client, experiment, project, options \\ []) do
    url_path =
      "/projects/#{AWS.Util.encode_uri(project)}/experiments/#{AWS.Util.encode_uri(experiment)}/cancel"

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
  Stops a launch that is currently running. After you stop a launch, you will not
  be able to resume it or restart it. Also, it will not be evaluated as a rule
  for traffic allocation, and the traffic that was allocated to the launch will
  instead be available to the feature's experiment, if there is one. Otherwise,
  all traffic will be served the default variation after the launch is stopped.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=evidently%20StopLaunch&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:launch` (`t:string`) The name of the launch to stop.
  * `:project` (`t:string`) The name or ARN of the project that contains the
  launch that you want to stop.

  ## Optional parameters:
  """

  @spec stop_launch(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, stop_launch_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_launch_errors()}

  def stop_launch(%Client{} = client, launch, project, options \\ []) do
    url_path =
      "/projects/#{AWS.Util.encode_uri(project)}/launches/#{AWS.Util.encode_uri(launch)}/cancel"

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
  Assigns one or more tags (key-value pairs) to the specified CloudWatch Evidently
  resource. Projects, features, launches, and experiments can be tagged. Tags
  can help you organize and categorize your resources. You can also use them to
  scope user permissions by granting a user permission to access or change only
  resources with certain tag values.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=evidently%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The ARN of the CloudWatch Evidently resource that
  you're adding tags to.

  ## Optional parameters:
  """

  @spec tag_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}

  def tag_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"

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
  Use this operation to test a rules pattern that you plan to use to create an
  audience segment. For more information about segments, see
  [CreateSegment](https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_CreateSegment.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=evidently%20TestSegmentPattern&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec test_segment_pattern(AWS.Client.t(), Keyword.t()) ::
          {:ok, test_segment_pattern_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, test_segment_pattern_errors()}

  def test_segment_pattern(%Client{} = client, options \\ []) do
    url_path = "/test-segment-pattern"

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
  Removes one or more tags from the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=evidently%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The ARN of the CloudWatch Evidently resource that
  you're removing tags from.
  * `:tag_keys` (`t:list[com.amazonaws.evidently#TagKey]`) The list of tag keys to
  remove from the resource.

  ## Optional parameters:
  """

  @spec untag_resource(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}

  def untag_resource(%Client{} = client, resource_arn, tag_keys, options \\ [])
      when is_binary(tag_keys) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"

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
    query_params = [{"tagKeys", tag_keys}]

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
  Updates an Evidently experiment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=evidently%20UpdateExperiment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:experiment` (`t:string`) The name of the experiment to update.
  * `:project` (`t:string`) The name or ARN of the project that contains the
  experiment that you want to update.

  ## Optional parameters:
  """

  @spec update_experiment(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_experiment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_experiment_errors()}

  def update_experiment(%Client{} = client, experiment, project, options \\ []) do
    url_path =
      "/projects/#{AWS.Util.encode_uri(project)}/experiments/#{AWS.Util.encode_uri(experiment)}"

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
      :patch,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Updates an existing feature.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=evidently%20UpdateFeature&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:feature` (`t:string`) The name of the feature to be updated.
  * `:project` (`t:string`) The name or ARN of the project that contains the
  feature to be updated.

  ## Optional parameters:
  """

  @spec update_feature(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_feature_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_feature_errors()}

  def update_feature(%Client{} = client, feature, project, options \\ []) do
    url_path =
      "/projects/#{AWS.Util.encode_uri(project)}/features/#{AWS.Util.encode_uri(feature)}"

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
      :patch,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Updates a launch of a given feature.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=evidently%20UpdateLaunch&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:launch` (`t:string`) The name of the launch that is to be updated.
  * `:project` (`t:string`) The name or ARN of the project that contains the
  launch that you want to update.

  ## Optional parameters:
  """

  @spec update_launch(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_launch_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_launch_errors()}

  def update_launch(%Client{} = client, launch, project, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project)}/launches/#{AWS.Util.encode_uri(launch)}"

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
      :patch,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Updates the description of an existing project. To create a new project, use
  [CreateProject](https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_CreateProject.html).
  Don't use this operation to update the data storage options of a project.
  Instead, use
  [UpdateProjectDataDelivery](https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_UpdateProjectDataDelivery.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=evidently%20UpdateProject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:project` (`t:string`) The name or ARN of the project to update.

  ## Optional parameters:
  """

  @spec update_project(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_project_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_project_errors()}

  def update_project(%Client{} = client, project, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project)}"

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
      :patch,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Updates the data storage options for this project. If you store evaluation
  events, you an keep them and analyze them on your own. If you choose not to
  store evaluation events, Evidently deletes them after using them to produce
  metrics and other experiment results that you can view.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=evidently%20UpdateProjectDataDelivery&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:project` (`t:string`) The name or ARN of the project that you want to modify
  the data storage options for.

  ## Optional parameters:
  """

  @spec update_project_data_delivery(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_project_data_delivery_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_project_data_delivery_errors()}

  def update_project_data_delivery(%Client{} = client, project, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project)}/data-delivery"

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
      :patch,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end
end
