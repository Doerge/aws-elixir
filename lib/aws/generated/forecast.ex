# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Forecast do
  @moduledoc """
  Provides APIs for creating and managing Amazon Forecast resources.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      list_forecast_export_jobs_request() :: %{
        optional("Filters") => list(filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_forecast_export_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      weighted_quantile_loss() :: %{
        "LossValue" => float(),
        "Quantile" => float()
      }
      
  """
  @type weighted_quantile_loss() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_what_if_forecasts_response() :: %{
        "NextToken" => String.t(),
        "WhatIfForecasts" => list(what_if_forecast_summary()())
      }
      
  """
  @type list_what_if_forecasts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_explainability_export_request() :: %{
        required("ExplainabilityExportArn") => String.t()
      }
      
  """
  @type describe_explainability_export_request() :: %{String.t() => any()}

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
      
      create_predictor_request() :: %{
        optional("AlgorithmArn") => String.t(),
        optional("AutoMLOverrideStrategy") => list(any()),
        optional("EncryptionConfig") => encryption_config(),
        optional("EvaluationParameters") => evaluation_parameters(),
        optional("ForecastTypes") => list(String.t()()),
        optional("HPOConfig") => hyper_parameter_tuning_job_config(),
        optional("OptimizationMetric") => list(any()),
        optional("PerformAutoML") => boolean(),
        optional("PerformHPO") => boolean(),
        optional("Tags") => list(tag()()),
        optional("TrainingParameters") => map(),
        required("FeaturizationConfig") => featurization_config(),
        required("ForecastHorizon") => integer(),
        required("InputDataConfig") => input_data_config(),
        required("PredictorName") => String.t()
      }
      
  """
  @type create_predictor_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      integer_parameter_range() :: %{
        "MaxValue" => integer(),
        "MinValue" => integer(),
        "Name" => String.t(),
        "ScalingType" => list(any())
      }
      
  """
  @type integer_parameter_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_explainability_export_response() :: %{
        "CreationTime" => non_neg_integer(),
        "Destination" => data_destination(),
        "ExplainabilityArn" => String.t(),
        "ExplainabilityExportArn" => String.t(),
        "ExplainabilityExportName" => String.t(),
        "Format" => String.t(),
        "LastModificationTime" => non_neg_integer(),
        "Message" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type describe_explainability_export_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      encryption_config() :: %{
        "KMSKeyArn" => String.t(),
        "RoleArn" => String.t()
      }
      
  """
  @type encryption_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reference_predictor_summary() :: %{
        "Arn" => String.t(),
        "State" => list(any())
      }
      
  """
  @type reference_predictor_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_monitor_request() :: %{
        required("MonitorArn") => String.t()
      }
      
  """
  @type delete_monitor_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_monitors_response() :: %{
        "Monitors" => list(monitor_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_monitors_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_monitor_evaluations_response() :: %{
        "NextToken" => String.t(),
        "PredictorMonitorEvaluations" => list(predictor_monitor_evaluation()())
      }
      
  """
  @type list_monitor_evaluations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_forecast_request() :: %{
        required("ForecastArn") => String.t()
      }
      
  """
  @type delete_forecast_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_forecast_request() :: %{
        required("ForecastArn") => String.t()
      }
      
  """
  @type describe_forecast_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_accuracy_metrics_response() :: %{
        "AutoMLOverrideStrategy" => list(any()),
        "IsAutoPredictor" => boolean(),
        "OptimizationMetric" => list(any()),
        "PredictorEvaluationResults" => list(evaluation_result()())
      }
      
  """
  @type get_accuracy_metrics_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      predictor_monitor_evaluation() :: %{
        "EvaluationState" => String.t(),
        "EvaluationTime" => non_neg_integer(),
        "Message" => String.t(),
        "MetricResults" => list(metric_result()()),
        "MonitorArn" => String.t(),
        "MonitorDataSource" => monitor_data_source(),
        "NumItemsEvaluated" => float(),
        "PredictorEvent" => predictor_event(),
        "ResourceArn" => String.t(),
        "WindowEndDatetime" => non_neg_integer(),
        "WindowStartDatetime" => non_neg_integer()
      }
      
  """
  @type predictor_monitor_evaluation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      input_data_config() :: %{
        "DatasetGroupArn" => String.t(),
        "SupplementaryFeatures" => list(supplementary_feature()())
      }
      
  """
  @type input_data_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      resource_in_use_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_auto_predictor_response() :: %{
        "CreationTime" => non_neg_integer(),
        "DataConfig" => data_config(),
        "DatasetImportJobArns" => list(String.t()()),
        "EncryptionConfig" => encryption_config(),
        "EstimatedTimeRemainingInMinutes" => float(),
        "ExplainabilityInfo" => explainability_info(),
        "ForecastDimensions" => list(String.t()()),
        "ForecastFrequency" => String.t(),
        "ForecastHorizon" => integer(),
        "ForecastTypes" => list(String.t()()),
        "LastModificationTime" => non_neg_integer(),
        "Message" => String.t(),
        "MonitorInfo" => monitor_info(),
        "OptimizationMetric" => list(any()),
        "PredictorArn" => String.t(),
        "PredictorName" => String.t(),
        "ReferencePredictorSummary" => reference_predictor_summary(),
        "Status" => String.t(),
        "TimeAlignmentBoundary" => time_alignment_boundary()
      }
      
  """
  @type describe_auto_predictor_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      monitor_config() :: %{
        "MonitorName" => String.t()
      }
      
  """
  @type monitor_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_dataset_import_job_response() :: %{
        "CreationTime" => non_neg_integer(),
        "DataSize" => float(),
        "DataSource" => data_source(),
        "DatasetArn" => String.t(),
        "DatasetImportJobArn" => String.t(),
        "DatasetImportJobName" => String.t(),
        "EstimatedTimeRemainingInMinutes" => float(),
        "FieldStatistics" => map(),
        "Format" => String.t(),
        "GeolocationFormat" => String.t(),
        "ImportMode" => list(any()),
        "LastModificationTime" => non_neg_integer(),
        "Message" => String.t(),
        "Status" => String.t(),
        "TimeZone" => String.t(),
        "TimestampFormat" => String.t(),
        "UseGeolocationForTimeZone" => boolean()
      }
      
  """
  @type describe_dataset_import_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attribute_config() :: %{
        "AttributeName" => String.t(),
        "Transformations" => map()
      }
      
  """
  @type attribute_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_what_if_analyses_response() :: %{
        "NextToken" => String.t(),
        "WhatIfAnalyses" => list(what_if_analysis_summary()())
      }
      
  """
  @type list_what_if_analyses_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      featurization_method() :: %{
        "FeaturizationMethodName" => list(any()),
        "FeaturizationMethodParameters" => map()
      }
      
  """
  @type featurization_method() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parameter_ranges() :: %{
        "CategoricalParameterRanges" => list(categorical_parameter_range()()),
        "ContinuousParameterRanges" => list(continuous_parameter_range()()),
        "IntegerParameterRanges" => list(integer_parameter_range()())
      }
      
  """
  @type parameter_ranges() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_predictor_response() :: %{
        "PredictorArn" => String.t()
      }
      
  """
  @type create_predictor_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_forecast_export_jobs_response() :: %{
        "ForecastExportJobs" => list(forecast_export_job_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_forecast_export_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_explainability_export_request() :: %{
        optional("Format") => String.t(),
        optional("Tags") => list(tag()()),
        required("Destination") => data_destination(),
        required("ExplainabilityArn") => String.t(),
        required("ExplainabilityExportName") => String.t()
      }
      
  """
  @type create_explainability_export_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_dataset_group_response() :: %{}
      
  """
  @type update_dataset_group_response() :: %{}

  @typedoc """

  ## Example:
      
      list_datasets_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_datasets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_what_if_forecast_exports_response() :: %{
        "NextToken" => String.t(),
        "WhatIfForecastExports" => list(what_if_forecast_export_summary()())
      }
      
  """
  @type list_what_if_forecast_exports_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluation_parameters() :: %{
        "BackTestWindowOffset" => integer(),
        "NumberOfBacktestWindows" => integer()
      }
      
  """
  @type evaluation_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      featurization_config() :: %{
        "Featurizations" => list(featurization()()),
        "ForecastDimensions" => list(String.t()()),
        "ForecastFrequency" => String.t()
      }
      
  """
  @type featurization_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_monitors_request() :: %{
        optional("Filters") => list(filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_monitors_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_predictors_response() :: %{
        "NextToken" => String.t(),
        "Predictors" => list(predictor_summary()())
      }
      
  """
  @type list_predictors_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_predictor_backtest_export_job_response() :: %{
        "PredictorBacktestExportJobArn" => String.t()
      }
      
  """
  @type create_predictor_backtest_export_job_response() :: %{String.t() => any()}

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
      
      monitor_info() :: %{
        "MonitorArn" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type monitor_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_monitor_response() :: %{
        "MonitorArn" => String.t()
      }
      
  """
  @type create_monitor_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_what_if_forecasts_request() :: %{
        optional("Filters") => list(filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_what_if_forecasts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      explainability_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "ExplainabilityArn" => String.t(),
        "ExplainabilityConfig" => explainability_config(),
        "ExplainabilityName" => String.t(),
        "LastModificationTime" => non_neg_integer(),
        "Message" => String.t(),
        "ResourceArn" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type explainability_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_dataset_group_request() :: %{
        optional("DatasetArns") => list(String.t()()),
        optional("Tags") => list(tag()()),
        required("DatasetGroupName") => String.t(),
        required("Domain") => list(any())
      }
      
  """
  @type create_dataset_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_forecast_response() :: %{
        "CreationTime" => non_neg_integer(),
        "DatasetGroupArn" => String.t(),
        "EstimatedTimeRemainingInMinutes" => float(),
        "ForecastArn" => String.t(),
        "ForecastName" => String.t(),
        "ForecastTypes" => list(String.t()()),
        "LastModificationTime" => non_neg_integer(),
        "Message" => String.t(),
        "PredictorArn" => String.t(),
        "Status" => String.t(),
        "TimeSeriesSelector" => time_series_selector()
      }
      
  """
  @type describe_forecast_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_what_if_forecast_export_request() :: %{
        required("WhatIfForecastExportArn") => String.t()
      }
      
  """
  @type describe_what_if_forecast_export_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      baseline() :: %{
        "PredictorBaseline" => predictor_baseline()
      }
      
  """
  @type baseline() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      time_series_selector() :: %{
        "TimeSeriesIdentifiers" => time_series_identifiers()
      }
      
  """
  @type time_series_selector() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      predictor_execution_details() :: %{
        "PredictorExecutions" => list(predictor_execution()())
      }
      
  """
  @type predictor_execution_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      forecast_summary() :: %{
        "CreatedUsingAutoPredictor" => boolean(),
        "CreationTime" => non_neg_integer(),
        "DatasetGroupArn" => String.t(),
        "ForecastArn" => String.t(),
        "ForecastName" => String.t(),
        "LastModificationTime" => non_neg_integer(),
        "Message" => String.t(),
        "PredictorArn" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type forecast_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_predictor_response() :: %{
        "AlgorithmArn" => String.t(),
        "AutoMLAlgorithmArns" => list(String.t()()),
        "AutoMLOverrideStrategy" => list(any()),
        "CreationTime" => non_neg_integer(),
        "DatasetImportJobArns" => list(String.t()()),
        "EncryptionConfig" => encryption_config(),
        "EstimatedTimeRemainingInMinutes" => float(),
        "EvaluationParameters" => evaluation_parameters(),
        "FeaturizationConfig" => featurization_config(),
        "ForecastHorizon" => integer(),
        "ForecastTypes" => list(String.t()()),
        "HPOConfig" => hyper_parameter_tuning_job_config(),
        "InputDataConfig" => input_data_config(),
        "IsAutoPredictor" => boolean(),
        "LastModificationTime" => non_neg_integer(),
        "Message" => String.t(),
        "OptimizationMetric" => list(any()),
        "PerformAutoML" => boolean(),
        "PerformHPO" => boolean(),
        "PredictorArn" => String.t(),
        "PredictorExecutionDetails" => predictor_execution_details(),
        "PredictorName" => String.t(),
        "Status" => String.t(),
        "TrainingParameters" => map()
      }
      
  """
  @type describe_predictor_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      what_if_forecast_export_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "Destination" => data_destination(),
        "LastModificationTime" => non_neg_integer(),
        "Message" => String.t(),
        "Status" => String.t(),
        "WhatIfForecastArns" => list(String.t()()),
        "WhatIfForecastExportArn" => String.t(),
        "WhatIfForecastExportName" => String.t()
      }
      
  """
  @type what_if_forecast_export_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test_window_summary() :: %{
        "Message" => String.t(),
        "Status" => String.t(),
        "TestWindowEnd" => non_neg_integer(),
        "TestWindowStart" => non_neg_integer()
      }
      
  """
  @type test_window_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_resource_request() :: %{
        required("ResourceArn") => String.t()
      }
      
  """
  @type stop_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_explainability_exports_response() :: %{
        "ExplainabilityExports" => list(explainability_export_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_explainability_exports_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_auto_predictor_response() :: %{
        "PredictorArn" => String.t()
      }
      
  """
  @type create_auto_predictor_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_dataset_response() :: %{
        "DatasetArn" => String.t()
      }
      
  """
  @type create_dataset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metrics() :: %{
        "AverageWeightedQuantileLoss" => float(),
        "ErrorMetrics" => list(error_metric()()),
        "RMSE" => float(),
        "WeightedQuantileLosses" => list(weighted_quantile_loss()())
      }
      
  """
  @type metrics() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      explainability_export_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "Destination" => data_destination(),
        "ExplainabilityExportArn" => String.t(),
        "ExplainabilityExportName" => String.t(),
        "LastModificationTime" => non_neg_integer(),
        "Message" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type explainability_export_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_what_if_forecast_response() :: %{
        "CreationTime" => non_neg_integer(),
        "EstimatedTimeRemainingInMinutes" => float(),
        "ForecastTypes" => list(String.t()()),
        "LastModificationTime" => non_neg_integer(),
        "Message" => String.t(),
        "Status" => String.t(),
        "TimeSeriesReplacementsDataSource" => time_series_replacements_data_source(),
        "TimeSeriesTransformations" => list(time_series_transformation()()),
        "WhatIfAnalysisArn" => String.t(),
        "WhatIfForecastArn" => String.t(),
        "WhatIfForecastName" => String.t()
      }
      
  """
  @type describe_what_if_forecast_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      supplementary_feature() :: %{
        "Name" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type supplementary_feature() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_dataset_import_jobs_request() :: %{
        optional("Filters") => list(filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_dataset_import_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_what_if_forecast_response() :: %{
        "WhatIfForecastArn" => String.t()
      }
      
  """
  @type create_what_if_forecast_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      forecast_export_job_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "Destination" => data_destination(),
        "ForecastExportJobArn" => String.t(),
        "ForecastExportJobName" => String.t(),
        "LastModificationTime" => non_neg_integer(),
        "Message" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type forecast_export_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_explainability_response() :: %{
        "CreationTime" => non_neg_integer(),
        "DataSource" => data_source(),
        "EnableVisualization" => boolean(),
        "EndDateTime" => String.t(),
        "EstimatedTimeRemainingInMinutes" => float(),
        "ExplainabilityArn" => String.t(),
        "ExplainabilityConfig" => explainability_config(),
        "ExplainabilityName" => String.t(),
        "LastModificationTime" => non_neg_integer(),
        "Message" => String.t(),
        "ResourceArn" => String.t(),
        "Schema" => schema(),
        "StartDateTime" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type describe_explainability_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      explainability_info() :: %{
        "ExplainabilityArn" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type explainability_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_accuracy_metrics_request() :: %{
        required("PredictorArn") => String.t()
      }
      
  """
  @type get_accuracy_metrics_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dataset_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "DatasetArn" => String.t(),
        "DatasetName" => String.t(),
        "DatasetType" => list(any()),
        "Domain" => list(any()),
        "LastModificationTime" => non_neg_integer()
      }
      
  """
  @type dataset_summary() :: %{String.t() => any()}

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
      
      describe_auto_predictor_request() :: %{
        required("PredictorArn") => String.t()
      }
      
  """
  @type describe_auto_predictor_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resume_resource_request() :: %{
        required("ResourceArn") => String.t()
      }
      
  """
  @type resume_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_config() :: %{
        "KMSKeyArn" => String.t(),
        "Path" => String.t(),
        "RoleArn" => String.t()
      }
      
  """
  @type s3_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_dataset_import_job_request() :: %{
        required("DatasetImportJobArn") => String.t()
      }
      
  """
  @type delete_dataset_import_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_forecast_export_job_request() :: %{
        required("ForecastExportJobArn") => String.t()
      }
      
  """
  @type delete_forecast_export_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      time_series_transformation() :: %{
        "Action" => action(),
        "TimeSeriesConditions" => list(time_series_condition()())
      }
      
  """
  @type time_series_transformation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_config() :: %{
        "AdditionalDatasets" => list(additional_dataset()()),
        "AttributeConfigs" => list(attribute_config()()),
        "DatasetGroupArn" => String.t()
      }
      
  """
  @type data_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_next_token_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_next_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_forecast_export_job_response() :: %{
        "ForecastExportJobArn" => String.t()
      }
      
  """
  @type create_forecast_export_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_what_if_forecast_request() :: %{
        optional("Tags") => list(tag()()),
        optional("TimeSeriesReplacementsDataSource") => time_series_replacements_data_source(),
        optional("TimeSeriesTransformations") => list(time_series_transformation()()),
        required("WhatIfAnalysisArn") => String.t(),
        required("WhatIfForecastName") => String.t()
      }
      
  """
  @type create_what_if_forecast_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_auto_predictor_request() :: %{
        optional("DataConfig") => data_config(),
        optional("EncryptionConfig") => encryption_config(),
        optional("ExplainPredictor") => boolean(),
        optional("ForecastDimensions") => list(String.t()()),
        optional("ForecastFrequency") => String.t(),
        optional("ForecastHorizon") => integer(),
        optional("ForecastTypes") => list(String.t()()),
        optional("MonitorConfig") => monitor_config(),
        optional("OptimizationMetric") => list(any()),
        optional("ReferencePredictorArn") => String.t(),
        optional("Tags") => list(tag()()),
        optional("TimeAlignmentBoundary") => time_alignment_boundary(),
        required("PredictorName") => String.t()
      }
      
  """
  @type create_auto_predictor_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_dataset_groups_response() :: %{
        "DatasetGroups" => list(dataset_group_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_dataset_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_what_if_analysis_response() :: %{
        "WhatIfAnalysisArn" => String.t()
      }
      
  """
  @type create_what_if_analysis_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_what_if_analyses_request() :: %{
        optional("Filters") => list(filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_what_if_analyses_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_predictors_request() :: %{
        optional("Filters") => list(filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_predictors_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_what_if_analysis_response() :: %{
        "CreationTime" => non_neg_integer(),
        "EstimatedTimeRemainingInMinutes" => float(),
        "ForecastArn" => String.t(),
        "LastModificationTime" => non_neg_integer(),
        "Message" => String.t(),
        "Status" => String.t(),
        "TimeSeriesSelector" => time_series_selector(),
        "WhatIfAnalysisArn" => String.t(),
        "WhatIfAnalysisName" => String.t()
      }
      
  """
  @type describe_what_if_analysis_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      schema() :: %{
        "Attributes" => list(schema_attribute()())
      }
      
  """
  @type schema() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_dataset_groups_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_dataset_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_forecasts_response() :: %{
        "Forecasts" => list(forecast_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_forecasts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_input_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_input_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_explainability_request() :: %{
        required("ExplainabilityArn") => String.t()
      }
      
  """
  @type delete_explainability_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_predictor_backtest_export_jobs_response() :: %{
        "NextToken" => String.t(),
        "PredictorBacktestExportJobs" => list(predictor_backtest_export_job_summary()())
      }
      
  """
  @type list_predictor_backtest_export_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_what_if_analysis_request() :: %{
        optional("Tags") => list(tag()()),
        optional("TimeSeriesSelector") => time_series_selector(),
        required("ForecastArn") => String.t(),
        required("WhatIfAnalysisName") => String.t()
      }
      
  """
  @type create_what_if_analysis_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_what_if_analysis_request() :: %{
        required("WhatIfAnalysisArn") => String.t()
      }
      
  """
  @type describe_what_if_analysis_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      baseline_metric() :: %{
        "Name" => String.t(),
        "Value" => float()
      }
      
  """
  @type baseline_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      categorical_parameter_range() :: %{
        "Name" => String.t(),
        "Values" => list(String.t()())
      }
      
  """
  @type categorical_parameter_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_predictor_backtest_export_job_response() :: %{
        "CreationTime" => non_neg_integer(),
        "Destination" => data_destination(),
        "Format" => String.t(),
        "LastModificationTime" => non_neg_integer(),
        "Message" => String.t(),
        "PredictorArn" => String.t(),
        "PredictorBacktestExportJobArn" => String.t(),
        "PredictorBacktestExportJobName" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type describe_predictor_backtest_export_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      filter() :: %{
        "Condition" => list(any()),
        "Key" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_explainabilities_request() :: %{
        optional("Filters") => list(filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_explainabilities_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      time_series_condition() :: %{
        "AttributeName" => String.t(),
        "AttributeValue" => String.t(),
        "Condition" => list(any())
      }
      
  """
  @type time_series_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_explainability_request() :: %{
        optional("DataSource") => data_source(),
        optional("EnableVisualization") => boolean(),
        optional("EndDateTime") => String.t(),
        optional("Schema") => schema(),
        optional("StartDateTime") => String.t(),
        optional("Tags") => list(tag()()),
        required("ExplainabilityConfig") => explainability_config(),
        required("ExplainabilityName") => String.t(),
        required("ResourceArn") => String.t()
      }
      
  """
  @type create_explainability_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_predictor_request() :: %{
        required("PredictorArn") => String.t()
      }
      
  """
  @type delete_predictor_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_result() :: %{
        "MetricName" => String.t(),
        "MetricValue" => float()
      }
      
  """
  @type metric_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_destination() :: %{
        "S3Config" => s3_config()
      }
      
  """
  @type data_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      explainability_config() :: %{
        "TimePointGranularity" => list(any()),
        "TimeSeriesGranularity" => list(any())
      }
      
  """
  @type explainability_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      predictor_execution() :: %{
        "AlgorithmArn" => String.t(),
        "TestWindows" => list(test_window_summary()())
      }
      
  """
  @type predictor_execution() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      monitor_data_source() :: %{
        "DatasetImportJobArn" => String.t(),
        "ForecastArn" => String.t(),
        "PredictorArn" => String.t()
      }
      
  """
  @type monitor_data_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_what_if_forecast_export_response() :: %{
        "WhatIfForecastExportArn" => String.t()
      }
      
  """
  @type create_what_if_forecast_export_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      action() :: %{
        "AttributeName" => String.t(),
        "Operation" => list(any()),
        "Value" => float()
      }
      
  """
  @type action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      schema_attribute() :: %{
        "AttributeName" => String.t(),
        "AttributeType" => list(any())
      }
      
  """
  @type schema_attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_explainability_export_response() :: %{
        "ExplainabilityExportArn" => String.t()
      }
      
  """
  @type create_explainability_export_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dataset_import_job_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "DataSource" => data_source(),
        "DatasetImportJobArn" => String.t(),
        "DatasetImportJobName" => String.t(),
        "ImportMode" => list(any()),
        "LastModificationTime" => non_neg_integer(),
        "Message" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type dataset_import_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_predictor_backtest_export_job_request() :: %{
        required("PredictorBacktestExportJobArn") => String.t()
      }
      
  """
  @type describe_predictor_backtest_export_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_dataset_import_jobs_response() :: %{
        "DatasetImportJobs" => list(dataset_import_job_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_dataset_import_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      error_metric() :: %{
        "ForecastType" => String.t(),
        "MAPE" => float(),
        "MASE" => float(),
        "RMSE" => float(),
        "WAPE" => float()
      }
      
  """
  @type error_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_dataset_group_request() :: %{
        required("DatasetGroupArn") => String.t()
      }
      
  """
  @type delete_dataset_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      predictor_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "DatasetGroupArn" => String.t(),
        "IsAutoPredictor" => boolean(),
        "LastModificationTime" => non_neg_integer(),
        "Message" => String.t(),
        "PredictorArn" => String.t(),
        "PredictorName" => String.t(),
        "ReferencePredictorSummary" => reference_predictor_summary(),
        "Status" => String.t()
      }
      
  """
  @type predictor_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_dataset_group_request() :: %{
        required("DatasetArns") => list(String.t()()),
        required("DatasetGroupArn") => String.t()
      }
      
  """
  @type update_dataset_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      describe_predictor_request() :: %{
        required("PredictorArn") => String.t()
      }
      
  """
  @type describe_predictor_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_what_if_forecast_exports_request() :: %{
        optional("Filters") => list(filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_what_if_forecast_exports_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_forecast_export_job_request() :: %{
        optional("Format") => String.t(),
        optional("Tags") => list(tag()()),
        required("Destination") => data_destination(),
        required("ForecastArn") => String.t(),
        required("ForecastExportJobName") => String.t()
      }
      
  """
  @type create_forecast_export_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_predictor_backtest_export_job_request() :: %{
        optional("Format") => String.t(),
        optional("Tags") => list(tag()()),
        required("Destination") => data_destination(),
        required("PredictorArn") => String.t(),
        required("PredictorBacktestExportJobName") => String.t()
      }
      
  """
  @type create_predictor_backtest_export_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_dataset_group_response() :: %{
        "DatasetGroupArn" => String.t()
      }
      
  """
  @type create_dataset_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      statistics() :: %{
        "Avg" => float(),
        "Count" => integer(),
        "CountDistinct" => integer(),
        "CountDistinctLong" => float(),
        "CountLong" => float(),
        "CountNan" => integer(),
        "CountNanLong" => float(),
        "CountNull" => integer(),
        "CountNullLong" => float(),
        "Max" => String.t(),
        "Min" => String.t(),
        "Stddev" => float()
      }
      
  """
  @type statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_what_if_forecast_request() :: %{
        required("WhatIfForecastArn") => String.t()
      }
      
  """
  @type delete_what_if_forecast_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      predictor_backtest_export_job_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "Destination" => data_destination(),
        "LastModificationTime" => non_neg_integer(),
        "Message" => String.t(),
        "PredictorBacktestExportJobArn" => String.t(),
        "PredictorBacktestExportJobName" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type predictor_backtest_export_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_dataset_response() :: %{
        "CreationTime" => non_neg_integer(),
        "DataFrequency" => String.t(),
        "DatasetArn" => String.t(),
        "DatasetName" => String.t(),
        "DatasetType" => list(any()),
        "Domain" => list(any()),
        "EncryptionConfig" => encryption_config(),
        "LastModificationTime" => non_neg_integer(),
        "Schema" => schema(),
        "Status" => String.t()
      }
      
  """
  @type describe_dataset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_what_if_forecast_export_response() :: %{
        "CreationTime" => non_neg_integer(),
        "Destination" => data_destination(),
        "EstimatedTimeRemainingInMinutes" => float(),
        "Format" => String.t(),
        "LastModificationTime" => non_neg_integer(),
        "Message" => String.t(),
        "Status" => String.t(),
        "WhatIfForecastArns" => list(String.t()()),
        "WhatIfForecastExportArn" => String.t(),
        "WhatIfForecastExportName" => String.t()
      }
      
  """
  @type describe_what_if_forecast_export_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceArn") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_what_if_forecast_request() :: %{
        required("WhatIfForecastArn") => String.t()
      }
      
  """
  @type describe_what_if_forecast_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_what_if_analysis_request() :: %{
        required("WhatIfAnalysisArn") => String.t()
      }
      
  """
  @type delete_what_if_analysis_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_dataset_request() :: %{
        optional("DataFrequency") => String.t(),
        optional("EncryptionConfig") => encryption_config(),
        optional("Tags") => list(tag()()),
        required("DatasetName") => String.t(),
        required("DatasetType") => list(any()),
        required("Domain") => list(any()),
        required("Schema") => schema()
      }
      
  """
  @type create_dataset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_dataset_group_request() :: %{
        required("DatasetGroupArn") => String.t()
      }
      
  """
  @type describe_dataset_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_predictor_backtest_export_job_request() :: %{
        required("PredictorBacktestExportJobArn") => String.t()
      }
      
  """
  @type delete_predictor_backtest_export_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      continuous_parameter_range() :: %{
        "MaxValue" => float(),
        "MinValue" => float(),
        "Name" => String.t(),
        "ScalingType" => list(any())
      }
      
  """
  @type continuous_parameter_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_dataset_import_job_request() :: %{
        optional("Format") => String.t(),
        optional("GeolocationFormat") => String.t(),
        optional("ImportMode") => list(any()),
        optional("Tags") => list(tag()()),
        optional("TimeZone") => String.t(),
        optional("TimestampFormat") => String.t(),
        optional("UseGeolocationForTimeZone") => boolean(),
        required("DataSource") => data_source(),
        required("DatasetArn") => String.t(),
        required("DatasetImportJobName") => String.t()
      }
      
  """
  @type create_dataset_import_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_monitor_request() :: %{
        required("MonitorArn") => String.t()
      }
      
  """
  @type describe_monitor_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      predictor_event() :: %{
        "Datetime" => non_neg_integer(),
        "Detail" => String.t()
      }
      
  """
  @type predictor_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_explainability_request() :: %{
        required("ExplainabilityArn") => String.t()
      }
      
  """
  @type describe_explainability_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_forecast_export_job_response() :: %{
        "CreationTime" => non_neg_integer(),
        "Destination" => data_destination(),
        "ForecastArn" => String.t(),
        "ForecastExportJobArn" => String.t(),
        "ForecastExportJobName" => String.t(),
        "Format" => String.t(),
        "LastModificationTime" => non_neg_integer(),
        "Message" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type describe_forecast_export_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_explainability_response() :: %{
        "ExplainabilityArn" => String.t()
      }
      
  """
  @type create_explainability_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_monitor_response() :: %{
        "Baseline" => baseline(),
        "CreationTime" => non_neg_integer(),
        "EstimatedEvaluationTimeRemainingInMinutes" => float(),
        "LastEvaluationState" => String.t(),
        "LastEvaluationTime" => non_neg_integer(),
        "LastModificationTime" => non_neg_integer(),
        "Message" => String.t(),
        "MonitorArn" => String.t(),
        "MonitorName" => String.t(),
        "ResourceArn" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type describe_monitor_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_dataset_import_job_request() :: %{
        required("DatasetImportJobArn") => String.t()
      }
      
  """
  @type describe_dataset_import_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_forecast_export_job_request() :: %{
        required("ForecastExportJobArn") => String.t()
      }
      
  """
  @type describe_forecast_export_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_what_if_forecast_export_request() :: %{
        optional("Format") => String.t(),
        optional("Tags") => list(tag()()),
        required("Destination") => data_destination(),
        required("WhatIfForecastArns") => list(String.t()()),
        required("WhatIfForecastExportName") => String.t()
      }
      
  """
  @type create_what_if_forecast_export_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      what_if_analysis_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "ForecastArn" => String.t(),
        "LastModificationTime" => non_neg_integer(),
        "Message" => String.t(),
        "Status" => String.t(),
        "WhatIfAnalysisArn" => String.t(),
        "WhatIfAnalysisName" => String.t()
      }
      
  """
  @type what_if_analysis_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_monitor_evaluations_request() :: %{
        optional("Filters") => list(filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("MonitorArn") => String.t()
      }
      
  """
  @type list_monitor_evaluations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_dataset_group_response() :: %{
        "CreationTime" => non_neg_integer(),
        "DatasetArns" => list(String.t()()),
        "DatasetGroupArn" => String.t(),
        "DatasetGroupName" => String.t(),
        "Domain" => list(any()),
        "LastModificationTime" => non_neg_integer(),
        "Status" => String.t()
      }
      
  """
  @type describe_dataset_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluation_result() :: %{
        "AlgorithmArn" => String.t(),
        "TestWindows" => list(window_summary()())
      }
      
  """
  @type evaluation_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_forecasts_request() :: %{
        optional("Filters") => list(filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_forecasts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_dataset_request() :: %{
        required("DatasetArn") => String.t()
      }
      
  """
  @type describe_dataset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_dataset_request() :: %{
        required("DatasetArn") => String.t()
      }
      
  """
  @type delete_dataset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_datasets_response() :: %{
        "Datasets" => list(dataset_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_datasets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      what_if_forecast_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "LastModificationTime" => non_neg_integer(),
        "Message" => String.t(),
        "Status" => String.t(),
        "WhatIfAnalysisArn" => String.t(),
        "WhatIfForecastArn" => String.t(),
        "WhatIfForecastName" => String.t()
      }
      
  """
  @type what_if_forecast_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_forecast_request() :: %{
        optional("ForecastTypes") => list(String.t()()),
        optional("Tags") => list(tag()()),
        optional("TimeSeriesSelector") => time_series_selector(),
        required("ForecastName") => String.t(),
        required("PredictorArn") => String.t()
      }
      
  """
  @type create_forecast_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      additional_dataset() :: %{
        "Configuration" => map(),
        "Name" => String.t()
      }
      
  """
  @type additional_dataset() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_explainability_export_request() :: %{
        required("ExplainabilityExportArn") => String.t()
      }
      
  """
  @type delete_explainability_export_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_already_exists_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_monitor_request() :: %{
        optional("Tags") => list(tag()()),
        required("MonitorName") => String.t(),
        required("ResourceArn") => String.t()
      }
      
  """
  @type create_monitor_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_explainability_exports_request() :: %{
        optional("Filters") => list(filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_explainability_exports_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_source() :: %{
        "S3Config" => s3_config()
      }
      
  """
  @type data_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_resource_tree_request() :: %{
        required("ResourceArn") => String.t()
      }
      
  """
  @type delete_resource_tree_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      window_summary() :: %{
        "EvaluationType" => list(any()),
        "ItemCount" => integer(),
        "Metrics" => metrics(),
        "TestWindowEnd" => non_neg_integer(),
        "TestWindowStart" => non_neg_integer()
      }
      
  """
  @type window_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_explainabilities_response() :: %{
        "Explainabilities" => list(explainability_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_explainabilities_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      predictor_baseline() :: %{
        "BaselineMetrics" => list(baseline_metric()())
      }
      
  """
  @type predictor_baseline() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hyper_parameter_tuning_job_config() :: %{
        "ParameterRanges" => parameter_ranges()
      }
      
  """
  @type hyper_parameter_tuning_job_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_forecast_response() :: %{
        "ForecastArn" => String.t()
      }
      
  """
  @type create_forecast_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      time_series_replacements_data_source() :: %{
        "Format" => String.t(),
        "S3Config" => s3_config(),
        "Schema" => schema(),
        "TimestampFormat" => String.t()
      }
      
  """
  @type time_series_replacements_data_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_what_if_forecast_export_request() :: %{
        required("WhatIfForecastExportArn") => String.t()
      }
      
  """
  @type delete_what_if_forecast_export_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      monitor_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "LastModificationTime" => non_neg_integer(),
        "MonitorArn" => String.t(),
        "MonitorName" => String.t(),
        "ResourceArn" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type monitor_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      time_alignment_boundary() :: %{
        "DayOfMonth" => integer(),
        "DayOfWeek" => list(any()),
        "Hour" => integer(),
        "Month" => list(any())
      }
      
  """
  @type time_alignment_boundary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      featurization() :: %{
        "AttributeName" => String.t(),
        "FeaturizationPipeline" => list(featurization_method()())
      }
      
  """
  @type featurization() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_predictor_backtest_export_jobs_request() :: %{
        optional("Filters") => list(filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_predictor_backtest_export_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      time_series_identifiers() :: %{
        "DataSource" => data_source(),
        "Format" => String.t(),
        "Schema" => schema()
      }
      
  """
  @type time_series_identifiers() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_dataset_import_job_response() :: %{
        "DatasetImportJobArn" => String.t()
      }
      
  """
  @type create_dataset_import_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dataset_group_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "DatasetGroupArn" => String.t(),
        "DatasetGroupName" => String.t(),
        "LastModificationTime" => non_neg_integer()
      }
      
  """
  @type dataset_group_summary() :: %{String.t() => any()}

  @type create_auto_predictor_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type create_dataset_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()

  @type create_dataset_group_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type create_dataset_import_job_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type create_explainability_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type create_explainability_export_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type create_forecast_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type create_forecast_export_job_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type create_monitor_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type create_predictor_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type create_predictor_backtest_export_job_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type create_what_if_analysis_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type create_what_if_forecast_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type create_what_if_forecast_export_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type delete_dataset_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type delete_dataset_group_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type delete_dataset_import_job_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type delete_explainability_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type delete_explainability_export_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type delete_forecast_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type delete_forecast_export_job_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type delete_monitor_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type delete_predictor_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type delete_predictor_backtest_export_job_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type delete_resource_tree_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type delete_what_if_analysis_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type delete_what_if_forecast_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type delete_what_if_forecast_export_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type describe_auto_predictor_errors() ::
          invalid_input_exception() | resource_not_found_exception()

  @type describe_dataset_errors() :: invalid_input_exception() | resource_not_found_exception()

  @type describe_dataset_group_errors() ::
          invalid_input_exception() | resource_not_found_exception()

  @type describe_dataset_import_job_errors() ::
          invalid_input_exception() | resource_not_found_exception()

  @type describe_explainability_errors() ::
          invalid_input_exception() | resource_not_found_exception()

  @type describe_explainability_export_errors() ::
          invalid_input_exception() | resource_not_found_exception()

  @type describe_forecast_errors() :: invalid_input_exception() | resource_not_found_exception()

  @type describe_forecast_export_job_errors() ::
          invalid_input_exception() | resource_not_found_exception()

  @type describe_monitor_errors() :: invalid_input_exception() | resource_not_found_exception()

  @type describe_predictor_errors() :: invalid_input_exception() | resource_not_found_exception()

  @type describe_predictor_backtest_export_job_errors() ::
          invalid_input_exception() | resource_not_found_exception()

  @type describe_what_if_analysis_errors() ::
          invalid_input_exception() | resource_not_found_exception()

  @type describe_what_if_forecast_errors() ::
          invalid_input_exception() | resource_not_found_exception()

  @type describe_what_if_forecast_export_errors() ::
          invalid_input_exception() | resource_not_found_exception()

  @type get_accuracy_metrics_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  @type list_dataset_groups_errors() :: invalid_next_token_exception()

  @type list_dataset_import_jobs_errors() ::
          invalid_input_exception() | invalid_next_token_exception()

  @type list_datasets_errors() :: invalid_next_token_exception()

  @type list_explainabilities_errors() ::
          invalid_input_exception() | invalid_next_token_exception()

  @type list_explainability_exports_errors() ::
          invalid_input_exception() | invalid_next_token_exception()

  @type list_forecast_export_jobs_errors() ::
          invalid_input_exception() | invalid_next_token_exception()

  @type list_forecasts_errors() :: invalid_input_exception() | invalid_next_token_exception()

  @type list_monitor_evaluations_errors() ::
          invalid_input_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()

  @type list_monitors_errors() :: invalid_input_exception() | invalid_next_token_exception()

  @type list_predictor_backtest_export_jobs_errors() ::
          invalid_input_exception() | invalid_next_token_exception()

  @type list_predictors_errors() :: invalid_input_exception() | invalid_next_token_exception()

  @type list_tags_for_resource_errors() ::
          invalid_input_exception() | resource_not_found_exception()

  @type list_what_if_analyses_errors() ::
          invalid_input_exception() | invalid_next_token_exception()

  @type list_what_if_forecast_exports_errors() ::
          invalid_input_exception() | invalid_next_token_exception()

  @type list_what_if_forecasts_errors() ::
          invalid_input_exception() | invalid_next_token_exception()

  @type resume_resource_errors() ::
          limit_exceeded_exception()
          | invalid_input_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type stop_resource_errors() ::
          limit_exceeded_exception() | invalid_input_exception() | resource_not_found_exception()

  @type tag_resource_errors() ::
          limit_exceeded_exception() | invalid_input_exception() | resource_not_found_exception()

  @type untag_resource_errors() :: invalid_input_exception() | resource_not_found_exception()

  @type update_dataset_group_errors() ::
          invalid_input_exception() | resource_not_found_exception() | resource_in_use_exception()

  def metadata do
    %{
      api_version: "2018-06-26",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "forecast",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "forecast",
      signature_version: "v4",
      signing_name: "forecast",
      target_prefix: "AmazonForecast"
    }
  end

  @doc """
  Creates an Amazon Forecast predictor. Amazon Forecast creates predictors with
  AutoPredictor, which involves applying the optimal combination of algorithms
  to each time series in your datasets. You can use `CreateAutoPredictor` to
  create new predictors or upgrade/retrain existing predictors.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20CreateAutoPredictor&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_auto_predictor_request`)
    %{
      optional("DataConfig") => data_config(),
      optional("EncryptionConfig") => encryption_config(),
      optional("ExplainPredictor") => boolean(),
      optional("ForecastDimensions") => list(String.t()()),
      optional("ForecastFrequency") => String.t(),
      optional("ForecastHorizon") => integer(),
      optional("ForecastTypes") => list(String.t()()),
      optional("MonitorConfig") => monitor_config(),
      optional("OptimizationMetric") => list(any()),
      optional("ReferencePredictorArn") => String.t(),
      optional("Tags") => list(tag()()),
      optional("TimeAlignmentBoundary") => time_alignment_boundary(),
      required("PredictorName") => String.t()
    }
  """

  @spec create_auto_predictor(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_auto_predictor_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_auto_predictor_errors()}

  def create_auto_predictor(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateAutoPredictor", input, options)
  end

  @doc """
  Creates an Amazon Forecast dataset. The information about the dataset that you
  provide helps Forecast understand how to consume the data for model training.
  This includes the following:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20CreateDataset&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_dataset_request`)
    %{
      optional("DataFrequency") => String.t(),
      optional("EncryptionConfig") => encryption_config(),
      optional("Tags") => list(tag()()),
      required("DatasetName") => String.t(),
      required("DatasetType") => list(any()),
      required("Domain") => list(any()),
      required("Schema") => schema()
    }
  """

  @spec create_dataset(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_dataset_errors()}

  def create_dataset(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateDataset", input, options)
  end

  @doc """
  Creates a dataset group, which holds a collection of related datasets. You can
  add datasets to the dataset group when you create the dataset group, or later
  by using the
  [UpdateDatasetGroup](https://docs.aws.amazon.com/forecast/latest/dg/API_UpdateDatasetGroup.html)
  operation. After creating a dataset group and adding datasets, you use the
  dataset group when you create a predictor. For more information, see [Dataset
  groups](https://docs.aws.amazon.com/forecast/latest/dg/howitworks-datasets-groups.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20CreateDatasetGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_dataset_group_request`)
    %{
      optional("DatasetArns") => list(String.t()()),
      optional("Tags") => list(tag()()),
      required("DatasetGroupName") => String.t(),
      required("Domain") => list(any())
    }
  """

  @spec create_dataset_group(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_dataset_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_dataset_group_errors()}

  def create_dataset_group(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateDatasetGroup", input, options)
  end

  @doc """
  Imports your training data to an Amazon Forecast dataset. You provide the
  location of your training data in an Amazon Simple Storage Service (Amazon S3)
  bucket and the Amazon Resource Name (ARN) of the dataset that you want to
  import the data to. You must specify a
  [DataSource](https://docs.aws.amazon.com/forecast/latest/dg/API_DataSource.html)
  object that includes an Identity and Access Management (IAM) role that Amazon
  Forecast can assume to access the data, as Amazon Forecast makes a copy of
  your data and processes it in an internal Amazon Web Services system. For more
  information, see [Set up
  permissions](https://docs.aws.amazon.com/forecast/latest/dg/aws-forecast-iam-roles.html).
  The training data must be in CSV or Parquet format. The delimiter must be a
  comma (,).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20CreateDatasetImportJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_dataset_import_job_request`)
    %{
      optional("Format") => String.t(),
      optional("GeolocationFormat") => String.t(),
      optional("ImportMode") => list(any()),
      optional("Tags") => list(tag()()),
      optional("TimeZone") => String.t(),
      optional("TimestampFormat") => String.t(),
      optional("UseGeolocationForTimeZone") => boolean(),
      required("DataSource") => data_source(),
      required("DatasetArn") => String.t(),
      required("DatasetImportJobName") => String.t()
    }
  """

  @spec create_dataset_import_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_dataset_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_dataset_import_job_errors()}

  def create_dataset_import_job(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateDatasetImportJob", input, options)
  end

  @doc """
  Explainability is only available for Forecasts and Predictors generated from an
  AutoPredictor (`CreateAutoPredictor`) Creates an Amazon Forecast
  Explainability.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20CreateExplainability&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_explainability_request`)
    %{
      optional("DataSource") => data_source(),
      optional("EnableVisualization") => boolean(),
      optional("EndDateTime") => String.t(),
      optional("Schema") => schema(),
      optional("StartDateTime") => String.t(),
      optional("Tags") => list(tag()()),
      required("ExplainabilityConfig") => explainability_config(),
      required("ExplainabilityName") => String.t(),
      required("ResourceArn") => String.t()
    }
  """

  @spec create_explainability(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_explainability_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_explainability_errors()}

  def create_explainability(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateExplainability", input, options)
  end

  @doc """
  Exports an Explainability resource created by the `CreateExplainability`
  operation. Exported files are exported to an Amazon Simple Storage Service
  (Amazon S3) bucket. You must specify a `DataDestination` object that includes
  an Amazon S3 bucket and an Identity and Access Management (IAM) role that
  Amazon Forecast can assume to access the Amazon S3 bucket. For more
  information, see `aws-forecast-iam-roles`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20CreateExplainabilityExport&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_explainability_export_request`)
    %{
      optional("Format") => String.t(),
      optional("Tags") => list(tag()()),
      required("Destination") => data_destination(),
      required("ExplainabilityArn") => String.t(),
      required("ExplainabilityExportName") => String.t()
    }
  """

  @spec create_explainability_export(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_explainability_export_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_explainability_export_errors()}

  def create_explainability_export(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateExplainabilityExport", input, options)
  end

  @doc """
  Creates a forecast for each item in the `TARGET_TIME_SERIES` dataset that was
  used to train the predictor. This is known as inference. To retrieve the
  forecast for a single item at low latency, use the operation. To export the
  complete forecast into your Amazon Simple Storage Service (Amazon S3) bucket,
  use the `CreateForecastExportJob` operation. The range of the forecast is
  determined by the `ForecastHorizon` value, which you specify in the
  `CreatePredictor` request. When you query a forecast, you can request a
  specific date range within the forecast.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20CreateForecast&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_forecast_request`)
    %{
      optional("ForecastTypes") => list(String.t()()),
      optional("Tags") => list(tag()()),
      optional("TimeSeriesSelector") => time_series_selector(),
      required("ForecastName") => String.t(),
      required("PredictorArn") => String.t()
    }
  """

  @spec create_forecast(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_forecast_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_forecast_errors()}

  def create_forecast(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateForecast", input, options)
  end

  @doc """
  Exports a forecast created by the `CreateForecast` operation to your Amazon
  Simple Storage Service (Amazon S3) bucket. The forecast file name will match
  the following conventions: __

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20CreateForecastExportJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_forecast_export_job_request`)
    %{
      optional("Format") => String.t(),
      optional("Tags") => list(tag()()),
      required("Destination") => data_destination(),
      required("ForecastArn") => String.t(),
      required("ForecastExportJobName") => String.t()
    }
  """

  @spec create_forecast_export_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_forecast_export_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_forecast_export_job_errors()}

  def create_forecast_export_job(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateForecastExportJob", input, options)
  end

  @doc """
  Creates a predictor monitor resource for an existing auto predictor. Predictor
  monitoring allows you to see how your predictor's performance changes over
  time. For more information, see [Predictor
  Monitoring](https://docs.aws.amazon.com/forecast/latest/dg/predictor-monitoring.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20CreateMonitor&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_monitor_request`)
    %{
      optional("Tags") => list(tag()()),
      required("MonitorName") => String.t(),
      required("ResourceArn") => String.t()
    }
  """

  @spec create_monitor(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_monitor_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_monitor_errors()}

  def create_monitor(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateMonitor", input, options)
  end

  @doc """
  This operation creates a legacy predictor that does not include all the
  predictor functionalities provided by Amazon Forecast. To create a predictor
  that is compatible with all aspects of Forecast, use `CreateAutoPredictor`.
  Creates an Amazon Forecast predictor.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20CreatePredictor&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_predictor_request`)
    %{
      optional("AlgorithmArn") => String.t(),
      optional("AutoMLOverrideStrategy") => list(any()),
      optional("EncryptionConfig") => encryption_config(),
      optional("EvaluationParameters") => evaluation_parameters(),
      optional("ForecastTypes") => list(String.t()()),
      optional("HPOConfig") => hyper_parameter_tuning_job_config(),
      optional("OptimizationMetric") => list(any()),
      optional("PerformAutoML") => boolean(),
      optional("PerformHPO") => boolean(),
      optional("Tags") => list(tag()()),
      optional("TrainingParameters") => map(),
      required("FeaturizationConfig") => featurization_config(),
      required("ForecastHorizon") => integer(),
      required("InputDataConfig") => input_data_config(),
      required("PredictorName") => String.t()
    }
  """

  @spec create_predictor(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_predictor_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_predictor_errors()}

  def create_predictor(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreatePredictor", input, options)
  end

  @doc """
  Exports backtest forecasts and accuracy metrics generated by the
  `CreateAutoPredictor` or `CreatePredictor` operations. Two folders containing
  CSV or Parquet files are exported to your specified S3 bucket. The export file
  names will match the following conventions:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20CreatePredictorBacktestExportJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_predictor_backtest_export_job_request`)
    %{
      optional("Format") => String.t(),
      optional("Tags") => list(tag()()),
      required("Destination") => data_destination(),
      required("PredictorArn") => String.t(),
      required("PredictorBacktestExportJobName") => String.t()
    }
  """

  @spec create_predictor_backtest_export_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_predictor_backtest_export_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_predictor_backtest_export_job_errors()}

  def create_predictor_backtest_export_job(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreatePredictorBacktestExportJob", input, options)
  end

  @doc """
  What-if analysis is a scenario modeling technique where you make a hypothetical
  change to a time series and compare the forecasts generated by these changes
  against the baseline, unchanged time series. It is important to remember that
  the purpose of a what-if analysis is to understand how a forecast can change
  given different modifications to the baseline time series. For example,
  imagine you are a clothing retailer who is considering an end of season sale
  to clear space for new styles. After creating a baseline forecast, you can use
  a what-if analysis to investigate how different sales tactics might affect
  your goals.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20CreateWhatIfAnalysis&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_what_if_analysis_request`)
    %{
      optional("Tags") => list(tag()()),
      optional("TimeSeriesSelector") => time_series_selector(),
      required("ForecastArn") => String.t(),
      required("WhatIfAnalysisName") => String.t()
    }
  """

  @spec create_what_if_analysis(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_what_if_analysis_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_what_if_analysis_errors()}

  def create_what_if_analysis(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateWhatIfAnalysis", input, options)
  end

  @doc """
  A what-if forecast is a forecast that is created from a modified version of the
  baseline forecast. Each what-if forecast incorporates either a replacement
  dataset or a set of transformations to the original dataset.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20CreateWhatIfForecast&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_what_if_forecast_request`)
    %{
      optional("Tags") => list(tag()()),
      optional("TimeSeriesReplacementsDataSource") => time_series_replacements_data_source(),
      optional("TimeSeriesTransformations") => list(time_series_transformation()()),
      required("WhatIfAnalysisArn") => String.t(),
      required("WhatIfForecastName") => String.t()
    }
  """

  @spec create_what_if_forecast(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_what_if_forecast_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_what_if_forecast_errors()}

  def create_what_if_forecast(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateWhatIfForecast", input, options)
  end

  @doc """
  Exports a forecast created by the `CreateWhatIfForecast` operation to your
  Amazon Simple Storage Service (Amazon S3) bucket. The forecast file name will
  match the following conventions: `≈__`

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20CreateWhatIfForecastExport&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_what_if_forecast_export_request`)
    %{
      optional("Format") => String.t(),
      optional("Tags") => list(tag()()),
      required("Destination") => data_destination(),
      required("WhatIfForecastArns") => list(String.t()()),
      required("WhatIfForecastExportName") => String.t()
    }
  """

  @spec create_what_if_forecast_export(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_what_if_forecast_export_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_what_if_forecast_export_errors()}

  def create_what_if_forecast_export(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateWhatIfForecastExport", input, options)
  end

  @doc """
  Deletes an Amazon Forecast dataset that was created using the
  [CreateDataset](https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDataset.html)
  operation. You can only delete datasets that have a status of `ACTIVE` or
  `CREATE_FAILED`. To get the status use the
  [DescribeDataset](https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDataset.html)
  operation. Forecast does not automatically update any dataset groups that
  contain the deleted dataset. In order to update the dataset group, use the
  [UpdateDatasetGroup](https://docs.aws.amazon.com/forecast/latest/dg/API_UpdateDatasetGroup.html)
  operation, omitting the deleted dataset's ARN.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20DeleteDataset&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_dataset_request`)
    %{
      required("DatasetArn") => String.t()
    }
  """

  @spec delete_dataset(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_dataset_errors()}

  def delete_dataset(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteDataset", input, options)
  end

  @doc """
  Deletes a dataset group created using the
  [CreateDatasetGroup](https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetGroup.html)
  operation. You can only delete dataset groups that have a status of `ACTIVE`,
  `CREATE_FAILED`, or `UPDATE_FAILED`. To get the status, use the
  [DescribeDatasetGroup](https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDatasetGroup.html)
  operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20DeleteDatasetGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_dataset_group_request`)
    %{
      required("DatasetGroupArn") => String.t()
    }
  """

  @spec delete_dataset_group(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_dataset_group_errors()}

  def delete_dataset_group(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteDatasetGroup", input, options)
  end

  @doc """
  Deletes a dataset import job created using the
  [CreateDatasetImportJob](https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetImportJob.html)
  operation. You can delete only dataset import jobs that have a status of
  `ACTIVE` or `CREATE_FAILED`. To get the status, use the
  [DescribeDatasetImportJob](https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDatasetImportJob.html)
  operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20DeleteDatasetImportJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_dataset_import_job_request`)
    %{
      required("DatasetImportJobArn") => String.t()
    }
  """

  @spec delete_dataset_import_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_dataset_import_job_errors()}

  def delete_dataset_import_job(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteDatasetImportJob", input, options)
  end

  @doc """
  Deletes an Explainability resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20DeleteExplainability&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_explainability_request`)
    %{
      required("ExplainabilityArn") => String.t()
    }
  """

  @spec delete_explainability(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_explainability_errors()}

  def delete_explainability(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteExplainability", input, options)
  end

  @doc """
  Deletes an Explainability export.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20DeleteExplainabilityExport&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_explainability_export_request`)
    %{
      required("ExplainabilityExportArn") => String.t()
    }
  """

  @spec delete_explainability_export(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_explainability_export_errors()}

  def delete_explainability_export(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteExplainabilityExport", input, options)
  end

  @doc """
  Deletes a forecast created using the `CreateForecast` operation. You can delete
  only forecasts that have a status of `ACTIVE` or `CREATE_FAILED`. To get the
  status, use the `DescribeForecast` operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20DeleteForecast&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_forecast_request`)
    %{
      required("ForecastArn") => String.t()
    }
  """

  @spec delete_forecast(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_forecast_errors()}

  def delete_forecast(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteForecast", input, options)
  end

  @doc """
  Deletes a forecast export job created using the `CreateForecastExportJob`
  operation. You can delete only export jobs that have a status of `ACTIVE` or
  `CREATE_FAILED`. To get the status, use the `DescribeForecastExportJob`
  operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20DeleteForecastExportJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_forecast_export_job_request`)
    %{
      required("ForecastExportJobArn") => String.t()
    }
  """

  @spec delete_forecast_export_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_forecast_export_job_errors()}

  def delete_forecast_export_job(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteForecastExportJob", input, options)
  end

  @doc """
  Deletes a monitor resource. You can only delete a monitor resource with a status
  of `ACTIVE`, `ACTIVE_STOPPED`, `CREATE_FAILED`, or `CREATE_STOPPED`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20DeleteMonitor&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_monitor_request`)
    %{
      required("MonitorArn") => String.t()
    }
  """

  @spec delete_monitor(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_monitor_errors()}

  def delete_monitor(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteMonitor", input, options)
  end

  @doc """
  Deletes a predictor created using the `DescribePredictor` or `CreatePredictor`
  operations. You can delete only predictor that have a status of `ACTIVE` or
  `CREATE_FAILED`. To get the status, use the `DescribePredictor` operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20DeletePredictor&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_predictor_request`)
    %{
      required("PredictorArn") => String.t()
    }
  """

  @spec delete_predictor(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_predictor_errors()}

  def delete_predictor(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeletePredictor", input, options)
  end

  @doc """
  Deletes a predictor backtest export job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20DeletePredictorBacktestExportJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_predictor_backtest_export_job_request`)
    %{
      required("PredictorBacktestExportJobArn") => String.t()
    }
  """

  @spec delete_predictor_backtest_export_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_predictor_backtest_export_job_errors()}

  def delete_predictor_backtest_export_job(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeletePredictorBacktestExportJob", input, options)
  end

  @doc """
  Deletes an entire resource tree. This operation will delete the parent resource
  and its child resources. Child resources are resources that were created from
  another resource. For example, when a forecast is generated from a predictor,
  the forecast is the child resource and the predictor is the parent resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20DeleteResourceTree&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_resource_tree_request`)
    %{
      required("ResourceArn") => String.t()
    }
  """

  @spec delete_resource_tree(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_resource_tree_errors()}

  def delete_resource_tree(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteResourceTree", input, options)
  end

  @doc """
  Deletes a what-if analysis created using the `CreateWhatIfAnalysis` operation.
  You can delete only what-if analyses that have a status of `ACTIVE` or
  `CREATE_FAILED`. To get the status, use the `DescribeWhatIfAnalysis`
  operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20DeleteWhatIfAnalysis&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_what_if_analysis_request`)
    %{
      required("WhatIfAnalysisArn") => String.t()
    }
  """

  @spec delete_what_if_analysis(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_what_if_analysis_errors()}

  def delete_what_if_analysis(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteWhatIfAnalysis", input, options)
  end

  @doc """
  Deletes a what-if forecast created using the `CreateWhatIfForecast` operation.
  You can delete only what-if forecasts that have a status of `ACTIVE` or
  `CREATE_FAILED`. To get the status, use the `DescribeWhatIfForecast`
  operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20DeleteWhatIfForecast&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_what_if_forecast_request`)
    %{
      required("WhatIfForecastArn") => String.t()
    }
  """

  @spec delete_what_if_forecast(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_what_if_forecast_errors()}

  def delete_what_if_forecast(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteWhatIfForecast", input, options)
  end

  @doc """
  Deletes a what-if forecast export created using the `CreateWhatIfForecastExport`
  operation. You can delete only what-if forecast exports that have a status of
  `ACTIVE` or `CREATE_FAILED`. To get the status, use the
  `DescribeWhatIfForecastExport` operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20DeleteWhatIfForecastExport&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_what_if_forecast_export_request`)
    %{
      required("WhatIfForecastExportArn") => String.t()
    }
  """

  @spec delete_what_if_forecast_export(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_what_if_forecast_export_errors()}

  def delete_what_if_forecast_export(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteWhatIfForecastExport", input, options)
  end

  @doc """
  Describes a predictor created using the CreateAutoPredictor operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20DescribeAutoPredictor&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_auto_predictor_request`)
    %{
      required("PredictorArn") => String.t()
    }
  """

  @spec describe_auto_predictor(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_auto_predictor_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_auto_predictor_errors()}

  def describe_auto_predictor(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeAutoPredictor", input, options)
  end

  @doc """
  Describes an Amazon Forecast dataset created using the
  [CreateDataset](https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDataset.html)
  operation. In addition to listing the parameters specified in the
  `CreateDataset` request, this operation includes the following dataset
  properties:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20DescribeDataset&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_dataset_request`)
    %{
      required("DatasetArn") => String.t()
    }
  """

  @spec describe_dataset(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_dataset_errors()}

  def describe_dataset(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeDataset", input, options)
  end

  @doc """
  Describes a dataset group created using the
  [CreateDatasetGroup](https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetGroup.html)
  operation. In addition to listing the parameters provided in the
  `CreateDatasetGroup` request, this operation includes the following
  properties:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20DescribeDatasetGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_dataset_group_request`)
    %{
      required("DatasetGroupArn") => String.t()
    }
  """

  @spec describe_dataset_group(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_dataset_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_dataset_group_errors()}

  def describe_dataset_group(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeDatasetGroup", input, options)
  end

  @doc """
  Describes a dataset import job created using the
  [CreateDatasetImportJob](https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetImportJob.html)
  operation. In addition to listing the parameters provided in the
  `CreateDatasetImportJob` request, this operation includes the following
  properties:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20DescribeDatasetImportJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_dataset_import_job_request`)
    %{
      required("DatasetImportJobArn") => String.t()
    }
  """

  @spec describe_dataset_import_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_dataset_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_dataset_import_job_errors()}

  def describe_dataset_import_job(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeDatasetImportJob", input, options)
  end

  @doc """
  Describes an Explainability resource created using the `CreateExplainability`
  operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20DescribeExplainability&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_explainability_request`)
    %{
      required("ExplainabilityArn") => String.t()
    }
  """

  @spec describe_explainability(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_explainability_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_explainability_errors()}

  def describe_explainability(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeExplainability", input, options)
  end

  @doc """
  Describes an Explainability export created using the
  `CreateExplainabilityExport` operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20DescribeExplainabilityExport&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_explainability_export_request`)
    %{
      required("ExplainabilityExportArn") => String.t()
    }
  """

  @spec describe_explainability_export(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_explainability_export_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_explainability_export_errors()}

  def describe_explainability_export(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeExplainabilityExport", input, options)
  end

  @doc """
  Describes a forecast created using the `CreateForecast` operation. In addition
  to listing the properties provided in the `CreateForecast` request, this
  operation lists the following properties:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20DescribeForecast&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_forecast_request`)
    %{
      required("ForecastArn") => String.t()
    }
  """

  @spec describe_forecast(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_forecast_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_forecast_errors()}

  def describe_forecast(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeForecast", input, options)
  end

  @doc """
  Describes a forecast export job created using the `CreateForecastExportJob`
  operation. In addition to listing the properties provided by the user in the
  `CreateForecastExportJob` request, this operation lists the following
  properties:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20DescribeForecastExportJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_forecast_export_job_request`)
    %{
      required("ForecastExportJobArn") => String.t()
    }
  """

  @spec describe_forecast_export_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_forecast_export_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_forecast_export_job_errors()}

  def describe_forecast_export_job(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeForecastExportJob", input, options)
  end

  @doc """
  Describes a monitor resource. In addition to listing the properties provided in
  the `CreateMonitor` request, this operation lists the following properties:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20DescribeMonitor&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_monitor_request`)
    %{
      required("MonitorArn") => String.t()
    }
  """

  @spec describe_monitor(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_monitor_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_monitor_errors()}

  def describe_monitor(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeMonitor", input, options)
  end

  @doc """
  This operation is only valid for legacy predictors created with CreatePredictor.
  If you are not using a legacy predictor, use `DescribeAutoPredictor`.
  Describes a predictor created using the `CreatePredictor` operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20DescribePredictor&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_predictor_request`)
    %{
      required("PredictorArn") => String.t()
    }
  """

  @spec describe_predictor(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_predictor_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_predictor_errors()}

  def describe_predictor(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribePredictor", input, options)
  end

  @doc """
  Describes a predictor backtest export job created using the
  `CreatePredictorBacktestExportJob` operation. In addition to listing the
  properties provided by the user in the `CreatePredictorBacktestExportJob`
  request, this operation lists the following properties:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20DescribePredictorBacktestExportJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_predictor_backtest_export_job_request`)
    %{
      required("PredictorBacktestExportJobArn") => String.t()
    }
  """

  @spec describe_predictor_backtest_export_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_predictor_backtest_export_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_predictor_backtest_export_job_errors()}

  def describe_predictor_backtest_export_job(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribePredictorBacktestExportJob", input, options)
  end

  @doc """
  Describes the what-if analysis created using the `CreateWhatIfAnalysis`
  operation. In addition to listing the properties provided in the
  `CreateWhatIfAnalysis` request, this operation lists the following properties:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20DescribeWhatIfAnalysis&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_what_if_analysis_request`)
    %{
      required("WhatIfAnalysisArn") => String.t()
    }
  """

  @spec describe_what_if_analysis(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_what_if_analysis_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_what_if_analysis_errors()}

  def describe_what_if_analysis(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeWhatIfAnalysis", input, options)
  end

  @doc """
  Describes the what-if forecast created using the `CreateWhatIfForecast`
  operation. In addition to listing the properties provided in the
  `CreateWhatIfForecast` request, this operation lists the following properties:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20DescribeWhatIfForecast&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_what_if_forecast_request`)
    %{
      required("WhatIfForecastArn") => String.t()
    }
  """

  @spec describe_what_if_forecast(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_what_if_forecast_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_what_if_forecast_errors()}

  def describe_what_if_forecast(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeWhatIfForecast", input, options)
  end

  @doc """
  Describes the what-if forecast export created using the
  `CreateWhatIfForecastExport` operation. In addition to listing the properties
  provided in the `CreateWhatIfForecastExport` request, this operation lists the
  following properties:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20DescribeWhatIfForecastExport&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_what_if_forecast_export_request`)
    %{
      required("WhatIfForecastExportArn") => String.t()
    }
  """

  @spec describe_what_if_forecast_export(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_what_if_forecast_export_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_what_if_forecast_export_errors()}

  def describe_what_if_forecast_export(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeWhatIfForecastExport", input, options)
  end

  @doc """
  Provides metrics on the accuracy of the models that were trained by the
  `CreatePredictor` operation. Use metrics to see how well the model performed
  and to decide whether to use the predictor to generate a forecast. For more
  information, see [Predictor
  Metrics](https://docs.aws.amazon.com/forecast/latest/dg/metrics.html). This
  operation generates metrics for each backtest window that was evaluated. The
  number of backtest windows (`NumberOfBacktestWindows`) is specified using the
  `EvaluationParameters` object, which is optionally included in the
  `CreatePredictor` request. If `NumberOfBacktestWindows` isn't specified, the
  number defaults to one.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20GetAccuracyMetrics&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_accuracy_metrics_request`)
    %{
      required("PredictorArn") => String.t()
    }
  """

  @spec get_accuracy_metrics(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_accuracy_metrics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_accuracy_metrics_errors()}

  def get_accuracy_metrics(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetAccuracyMetrics", input, options)
  end

  @doc """
  Returns a list of dataset groups created using the
  [CreateDatasetGroup](https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetGroup.html)
  operation. For each dataset group, this operation returns a summary of its
  properties, including its Amazon Resource Name (ARN). You can retrieve the
  complete set of properties by using the dataset group ARN with the
  [DescribeDatasetGroup](https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDatasetGroup.html)
  operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20ListDatasetGroups&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_dataset_groups_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec list_dataset_groups(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_dataset_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_dataset_groups_errors()}

  def list_dataset_groups(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListDatasetGroups", input, options)
  end

  @doc """
  Returns a list of dataset import jobs created using the
  [CreateDatasetImportJob](https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetImportJob.html)
  operation. For each import job, this operation returns a summary of its
  properties, including its Amazon Resource Name (ARN). You can retrieve the
  complete set of properties by using the ARN with the
  [DescribeDatasetImportJob](https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDatasetImportJob.html)
  operation. You can filter the list by providing an array of
  [Filter](https://docs.aws.amazon.com/forecast/latest/dg/API_Filter.html)
  objects.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20ListDatasetImportJobs&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_dataset_import_jobs_request`)
    %{
      optional("Filters") => list(filter()()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec list_dataset_import_jobs(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_dataset_import_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_dataset_import_jobs_errors()}

  def list_dataset_import_jobs(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListDatasetImportJobs", input, options)
  end

  @doc """
  Returns a list of datasets created using the
  [CreateDataset](https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDataset.html)
  operation. For each dataset, a summary of its properties, including its Amazon
  Resource Name (ARN), is returned. To retrieve the complete set of properties,
  use the ARN with the
  [DescribeDataset](https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDataset.html)
  operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20ListDatasets&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_datasets_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec list_datasets(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_datasets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_datasets_errors()}

  def list_datasets(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListDatasets", input, options)
  end

  @doc """
  Returns a list of Explainability resources created using the
  `CreateExplainability` operation. This operation returns a summary for each
  Explainability. You can filter the list using an array of `Filter` objects.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20ListExplainabilities&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_explainabilities_request`)
    %{
      optional("Filters") => list(filter()()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec list_explainabilities(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_explainabilities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_explainabilities_errors()}

  def list_explainabilities(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListExplainabilities", input, options)
  end

  @doc """
  Returns a list of Explainability exports created using the
  `CreateExplainabilityExport` operation. This operation returns a summary for
  each Explainability export. You can filter the list using an array of `Filter`
  objects.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20ListExplainabilityExports&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_explainability_exports_request`)
    %{
      optional("Filters") => list(filter()()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec list_explainability_exports(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_explainability_exports_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_explainability_exports_errors()}

  def list_explainability_exports(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListExplainabilityExports", input, options)
  end

  @doc """
  Returns a list of forecast export jobs created using the
  `CreateForecastExportJob` operation. For each forecast export job, this
  operation returns a summary of its properties, including its Amazon Resource
  Name (ARN). To retrieve the complete set of properties, use the ARN with the
  `DescribeForecastExportJob` operation. You can filter the list using an array
  of `Filter` objects.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20ListForecastExportJobs&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_forecast_export_jobs_request`)
    %{
      optional("Filters") => list(filter()()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec list_forecast_export_jobs(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_forecast_export_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_forecast_export_jobs_errors()}

  def list_forecast_export_jobs(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListForecastExportJobs", input, options)
  end

  @doc """
  Returns a list of forecasts created using the `CreateForecast` operation. For
  each forecast, this operation returns a summary of its properties, including
  its Amazon Resource Name (ARN). To retrieve the complete set of properties,
  specify the ARN with the `DescribeForecast` operation. You can filter the list
  using an array of `Filter` objects.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20ListForecasts&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_forecasts_request`)
    %{
      optional("Filters") => list(filter()()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec list_forecasts(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_forecasts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_forecasts_errors()}

  def list_forecasts(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListForecasts", input, options)
  end

  @doc """
  Returns a list of the monitoring evaluation results and predictor events
  collected by the monitor resource during different windows of time.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20ListMonitorEvaluations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_monitor_evaluations_request`)
    %{
      optional("Filters") => list(filter()()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("MonitorArn") => String.t()
    }
  """

  @spec list_monitor_evaluations(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_monitor_evaluations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_monitor_evaluations_errors()}

  def list_monitor_evaluations(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListMonitorEvaluations", input, options)
  end

  @doc """
  Returns a list of monitors created with the `CreateMonitor` operation and
  `CreateAutoPredictor` operation. For each monitor resource, this operation
  returns of a summary of its properties, including its Amazon Resource Name
  (ARN). You can retrieve a complete set of properties of a monitor resource by
  specify the monitor's ARN in the `DescribeMonitor` operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20ListMonitors&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_monitors_request`)
    %{
      optional("Filters") => list(filter()()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec list_monitors(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_monitors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_monitors_errors()}

  def list_monitors(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListMonitors", input, options)
  end

  @doc """
  Returns a list of predictor backtest export jobs created using the
  `CreatePredictorBacktestExportJob` operation. This operation returns a summary
  for each backtest export job. You can filter the list using an array of
  `Filter` objects.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20ListPredictorBacktestExportJobs&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_predictor_backtest_export_jobs_request`)
    %{
      optional("Filters") => list(filter()()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec list_predictor_backtest_export_jobs(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_predictor_backtest_export_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_predictor_backtest_export_jobs_errors()}

  def list_predictor_backtest_export_jobs(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListPredictorBacktestExportJobs", input, options)
  end

  @doc """
  Returns a list of predictors created using the `CreateAutoPredictor` or
  `CreatePredictor` operations. For each predictor, this operation returns a
  summary of its properties, including its Amazon Resource Name (ARN).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20ListPredictors&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_predictors_request`)
    %{
      optional("Filters") => list(filter()()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec list_predictors(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_predictors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_predictors_errors()}

  def list_predictors(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListPredictors", input, options)
  end

  @doc """
  Lists the tags for an Amazon Forecast resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_tags_for_resource_request`)
    %{
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
  Returns a list of what-if analyses created using the `CreateWhatIfAnalysis`
  operation. For each what-if analysis, this operation returns a summary of its
  properties, including its Amazon Resource Name (ARN). You can retrieve the
  complete set of properties by using the what-if analysis ARN with the
  `DescribeWhatIfAnalysis` operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20ListWhatIfAnalyses&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_what_if_analyses_request`)
    %{
      optional("Filters") => list(filter()()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec list_what_if_analyses(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_what_if_analyses_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_what_if_analyses_errors()}

  def list_what_if_analyses(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListWhatIfAnalyses", input, options)
  end

  @doc """
  Returns a list of what-if forecast exports created using the
  `CreateWhatIfForecastExport` operation. For each what-if forecast export, this
  operation returns a summary of its properties, including its Amazon Resource
  Name (ARN). You can retrieve the complete set of properties by using the
  what-if forecast export ARN with the `DescribeWhatIfForecastExport` operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20ListWhatIfForecastExports&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_what_if_forecast_exports_request`)
    %{
      optional("Filters") => list(filter()()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec list_what_if_forecast_exports(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_what_if_forecast_exports_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_what_if_forecast_exports_errors()}

  def list_what_if_forecast_exports(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListWhatIfForecastExports", input, options)
  end

  @doc """
  Returns a list of what-if forecasts created using the `CreateWhatIfForecast`
  operation. For each what-if forecast, this operation returns a summary of its
  properties, including its Amazon Resource Name (ARN). You can retrieve the
  complete set of properties by using the what-if forecast ARN with the
  `DescribeWhatIfForecast` operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20ListWhatIfForecasts&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_what_if_forecasts_request`)
    %{
      optional("Filters") => list(filter()()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec list_what_if_forecasts(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_what_if_forecasts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_what_if_forecasts_errors()}

  def list_what_if_forecasts(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListWhatIfForecasts", input, options)
  end

  @doc """
  Resumes a stopped monitor resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20ResumeResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:resume_resource_request`)
    %{
      required("ResourceArn") => String.t()
    }
  """

  @spec resume_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resume_resource_errors()}

  def resume_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ResumeResource", input, options)
  end

  @doc """
  Stops a resource. The resource undergoes the following states: `CREATE_STOPPING`
  and `CREATE_STOPPED`. You cannot resume a resource once it has been stopped.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20StopResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:stop_resource_request`)
    %{
      required("ResourceArn") => String.t()
    }
  """

  @spec stop_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_resource_errors()}

  def stop_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopResource", input, options)
  end

  @doc """
  Associates the specified tags to a resource with the specified `resourceArn`. If
  existing tags on a resource are not specified in the request parameters, they
  are not changed. When a resource is deleted, the tags associated with that
  resource are also deleted.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:tag_resource_request`)
    %{
      required("ResourceArn") => String.t(),
      required("Tags") => list(tag()())
    }
  """

  @spec tag_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}

  def tag_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Deletes the specified tags from a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:untag_resource_request`)
    %{
      required("ResourceArn") => String.t(),
      required("TagKeys") => list(String.t()())
    }
  """

  @spec untag_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}

  def untag_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Replaces the datasets in a dataset group with the specified datasets.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecast%20UpdateDatasetGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_dataset_group_request`)
    %{
      required("DatasetArns") => list(String.t()()),
      required("DatasetGroupArn") => String.t()
    }
  """

  @spec update_dataset_group(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_dataset_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_dataset_group_errors()}

  def update_dataset_group(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateDatasetGroup", input, options)
  end
end
