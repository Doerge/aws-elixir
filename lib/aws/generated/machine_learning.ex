# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MachineLearning do
  @moduledoc """
  Definition of the public APIs
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      create_data_source_from_s3_input() :: %{
        optional("ComputeStatistics") => boolean(),
        optional("DataSourceName") => String.t(),
        required("DataSourceId") => String.t(),
        required("DataSpec") => s3_data_spec()
      }
      
  """
  @type create_data_source_from_s3_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_batch_prediction_output() :: %{
        "BatchPredictionDataSourceId" => String.t(),
        "BatchPredictionId" => String.t(),
        "ComputeTime" => float(),
        "CreatedAt" => non_neg_integer(),
        "CreatedByIamUser" => String.t(),
        "FinishedAt" => non_neg_integer(),
        "InputDataLocationS3" => String.t(),
        "InvalidRecordCount" => float(),
        "LastUpdatedAt" => non_neg_integer(),
        "LogUri" => String.t(),
        "MLModelId" => String.t(),
        "Message" => String.t(),
        "Name" => String.t(),
        "OutputUri" => String.t(),
        "StartedAt" => non_neg_integer(),
        "Status" => list(any()),
        "TotalRecordCount" => float()
      }
      
  """
  @type get_batch_prediction_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_evaluation_output() :: %{
        "EvaluationId" => String.t()
      }
      
  """
  @type delete_evaluation_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_realtime_endpoint_output() :: %{
        "MLModelId" => String.t(),
        "RealtimeEndpointInfo" => realtime_endpoint_info()
      }
      
  """
  @type create_realtime_endpoint_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_evaluation_input() :: %{
        required("EvaluationId") => String.t()
      }
      
  """
  @type delete_evaluation_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_data_source_input() :: %{
        optional("Verbose") => boolean(),
        required("DataSourceId") => String.t()
      }
      
  """
  @type get_data_source_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      redshift_data_spec() :: %{
        "DataRearrangement" => String.t(),
        "DataSchema" => String.t(),
        "DataSchemaUri" => String.t(),
        "DatabaseCredentials" => redshift_database_credentials(),
        "DatabaseInformation" => redshift_database(),
        "S3StagingLocation" => String.t(),
        "SelectSqlQuery" => String.t()
      }
      
  """
  @type redshift_data_spec() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_ml_model_output() :: %{
        "ComputeTime" => float(),
        "CreatedAt" => non_neg_integer(),
        "CreatedByIamUser" => String.t(),
        "EndpointInfo" => realtime_endpoint_info(),
        "FinishedAt" => non_neg_integer(),
        "InputDataLocationS3" => String.t(),
        "LastUpdatedAt" => non_neg_integer(),
        "LogUri" => String.t(),
        "MLModelId" => String.t(),
        "MLModelType" => list(any()),
        "Message" => String.t(),
        "Name" => String.t(),
        "Recipe" => String.t(),
        "Schema" => String.t(),
        "ScoreThreshold" => float(),
        "ScoreThresholdLastUpdatedAt" => non_neg_integer(),
        "SizeInBytes" => float(),
        "StartedAt" => non_neg_integer(),
        "Status" => list(any()),
        "TrainingDataSourceId" => String.t(),
        "TrainingParameters" => map()
      }
      
  """
  @type get_ml_model_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_tags_input() :: %{
        required("ResourceId") => String.t(),
        required("ResourceType") => list(any()),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type delete_tags_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      predict_input() :: %{
        required("MLModelId") => String.t(),
        required("PredictEndpoint") => String.t(),
        required("Record") => map()
      }
      
  """
  @type predict_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      redshift_metadata() :: %{
        "DatabaseUserName" => String.t(),
        "RedshiftDatabase" => redshift_database(),
        "SelectSqlQuery" => String.t()
      }
      
  """
  @type redshift_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_tags_output() :: %{
        "ResourceId" => String.t(),
        "ResourceType" => list(any())
      }
      
  """
  @type add_tags_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_ml_model_output() :: %{
        "MLModelId" => String.t()
      }
      
  """
  @type delete_ml_model_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_ml_model_input() :: %{
        optional("MLModelName") => String.t(),
        optional("Parameters") => map(),
        optional("Recipe") => String.t(),
        optional("RecipeUri") => String.t(),
        required("MLModelId") => String.t(),
        required("MLModelType") => list(any()),
        required("TrainingDataSourceId") => String.t()
      }
      
  """
  @type create_ml_model_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_batch_predictions_output() :: %{
        "NextToken" => String.t(),
        "Results" => list(batch_prediction()())
      }
      
  """
  @type describe_batch_predictions_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_data_source_output() :: %{
        "ComputeStatistics" => boolean(),
        "ComputeTime" => float(),
        "CreatedAt" => non_neg_integer(),
        "CreatedByIamUser" => String.t(),
        "DataLocationS3" => String.t(),
        "DataRearrangement" => String.t(),
        "DataSizeInBytes" => float(),
        "DataSourceId" => String.t(),
        "DataSourceSchema" => String.t(),
        "FinishedAt" => non_neg_integer(),
        "LastUpdatedAt" => non_neg_integer(),
        "LogUri" => String.t(),
        "Message" => String.t(),
        "Name" => String.t(),
        "NumberOfFiles" => float(),
        "RDSMetadata" => rds_metadata(),
        "RedshiftMetadata" => redshift_metadata(),
        "RoleARN" => String.t(),
        "StartedAt" => non_neg_integer(),
        "Status" => list(any())
      }
      
  """
  @type get_data_source_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_evaluation_output() :: %{
        "ComputeTime" => float(),
        "CreatedAt" => non_neg_integer(),
        "CreatedByIamUser" => String.t(),
        "EvaluationDataSourceId" => String.t(),
        "EvaluationId" => String.t(),
        "FinishedAt" => non_neg_integer(),
        "InputDataLocationS3" => String.t(),
        "LastUpdatedAt" => non_neg_integer(),
        "LogUri" => String.t(),
        "MLModelId" => String.t(),
        "Message" => String.t(),
        "Name" => String.t(),
        "PerformanceMetrics" => performance_metrics(),
        "StartedAt" => non_neg_integer(),
        "Status" => list(any())
      }
      
  """
  @type get_evaluation_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_tags_input() :: %{
        required("ResourceId") => String.t(),
        required("ResourceType") => list(any()),
        required("Tags") => list(tag()())
      }
      
  """
  @type add_tags_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      predict_output() :: %{
        "Prediction" => prediction()
      }
      
  """
  @type predict_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_evaluations_input() :: %{
        optional("EQ") => String.t(),
        optional("FilterVariable") => list(any()),
        optional("GE") => String.t(),
        optional("GT") => String.t(),
        optional("LE") => String.t(),
        optional("LT") => String.t(),
        optional("Limit") => integer(),
        optional("NE") => String.t(),
        optional("NextToken") => String.t(),
        optional("Prefix") => String.t(),
        optional("SortOrder") => list(any())
      }
      
  """
  @type describe_evaluations_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rds_database() :: %{
        "DatabaseName" => String.t(),
        "InstanceIdentifier" => String.t()
      }
      
  """
  @type rds_database() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_evaluation_input() :: %{
        required("EvaluationId") => String.t(),
        required("EvaluationName") => String.t()
      }
      
  """
  @type update_evaluation_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_prediction() :: %{
        "BatchPredictionDataSourceId" => String.t(),
        "BatchPredictionId" => String.t(),
        "ComputeTime" => float(),
        "CreatedAt" => non_neg_integer(),
        "CreatedByIamUser" => String.t(),
        "FinishedAt" => non_neg_integer(),
        "InputDataLocationS3" => String.t(),
        "InvalidRecordCount" => float(),
        "LastUpdatedAt" => non_neg_integer(),
        "MLModelId" => String.t(),
        "Message" => String.t(),
        "Name" => String.t(),
        "OutputUri" => String.t(),
        "StartedAt" => non_neg_integer(),
        "Status" => list(any()),
        "TotalRecordCount" => float()
      }
      
  """
  @type batch_prediction() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_ml_models_output() :: %{
        "NextToken" => String.t(),
        "Results" => list(ml_model()())
      }
      
  """
  @type describe_ml_models_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_ml_model_input() :: %{
        required("MLModelId") => String.t()
      }
      
  """
  @type delete_ml_model_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_data_source_input() :: %{
        required("DataSourceId") => String.t(),
        required("DataSourceName") => String.t()
      }
      
  """
  @type update_data_source_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_ml_model_input() :: %{
        optional("Verbose") => boolean(),
        required("MLModelId") => String.t()
      }
      
  """
  @type get_ml_model_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_ml_model_input() :: %{
        optional("MLModelName") => String.t(),
        optional("ScoreThreshold") => float(),
        required("MLModelId") => String.t()
      }
      
  """
  @type update_ml_model_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ml_model() :: %{
        "Algorithm" => list(any()),
        "ComputeTime" => float(),
        "CreatedAt" => non_neg_integer(),
        "CreatedByIamUser" => String.t(),
        "EndpointInfo" => realtime_endpoint_info(),
        "FinishedAt" => non_neg_integer(),
        "InputDataLocationS3" => String.t(),
        "LastUpdatedAt" => non_neg_integer(),
        "MLModelId" => String.t(),
        "MLModelType" => list(any()),
        "Message" => String.t(),
        "Name" => String.t(),
        "ScoreThreshold" => float(),
        "ScoreThresholdLastUpdatedAt" => non_neg_integer(),
        "SizeInBytes" => float(),
        "StartedAt" => non_neg_integer(),
        "Status" => list(any()),
        "TrainingDataSourceId" => String.t(),
        "TrainingParameters" => map()
      }
      
  """
  @type ml_model() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rds_data_spec() :: %{
        "DataRearrangement" => String.t(),
        "DataSchema" => String.t(),
        "DataSchemaUri" => String.t(),
        "DatabaseCredentials" => rds_database_credentials(),
        "DatabaseInformation" => rds_database(),
        "ResourceRole" => String.t(),
        "S3StagingLocation" => String.t(),
        "SecurityGroupIds" => list(String.t()()),
        "SelectSqlQuery" => String.t(),
        "ServiceRole" => String.t(),
        "SubnetId" => String.t()
      }
      
  """
  @type rds_data_spec() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_evaluation_input() :: %{
        optional("EvaluationName") => String.t(),
        required("EvaluationDataSourceId") => String.t(),
        required("EvaluationId") => String.t(),
        required("MLModelId") => String.t()
      }
      
  """
  @type create_evaluation_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "code" => integer(),
        "message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_tags_input() :: %{
        required("ResourceId") => String.t(),
        required("ResourceType") => list(any())
      }
      
  """
  @type describe_tags_input() :: %{String.t() => any()}

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
      
      delete_data_source_output() :: %{
        "DataSourceId" => String.t()
      }
      
  """
  @type delete_data_source_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      predictor_not_mounted_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type predictor_not_mounted_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      idempotent_parameter_mismatch_exception() :: %{
        "code" => integer(),
        "message" => String.t()
      }
      
  """
  @type idempotent_parameter_mismatch_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      realtime_endpoint_info() :: %{
        "CreatedAt" => non_neg_integer(),
        "EndpointStatus" => list(any()),
        "EndpointUrl" => String.t(),
        "PeakRequestsPerSecond" => integer()
      }
      
  """
  @type realtime_endpoint_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_data_source_from_s3_output() :: %{
        "DataSourceId" => String.t()
      }
      
  """
  @type create_data_source_from_s3_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type tag_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_data_source_from_redshift_output() :: %{
        "DataSourceId" => String.t()
      }
      
  """
  @type create_data_source_from_redshift_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_tags_output() :: %{
        "ResourceId" => String.t(),
        "ResourceType" => list(any()),
        "Tags" => list(tag()())
      }
      
  """
  @type describe_tags_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_input_exception() :: %{
        "code" => integer(),
        "message" => String.t()
      }
      
  """
  @type invalid_input_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_data_source_from_rds_input() :: %{
        optional("ComputeStatistics") => boolean(),
        optional("DataSourceName") => String.t(),
        required("DataSourceId") => String.t(),
        required("RDSData") => rds_data_spec(),
        required("RoleARN") => String.t()
      }
      
  """
  @type create_data_source_from_rds_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_evaluation_output() :: %{
        "EvaluationId" => String.t()
      }
      
  """
  @type update_evaluation_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_evaluation_input() :: %{
        required("EvaluationId") => String.t()
      }
      
  """
  @type get_evaluation_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_batch_prediction_input() :: %{
        required("BatchPredictionId") => String.t()
      }
      
  """
  @type get_batch_prediction_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rds_metadata() :: %{
        "DataPipelineId" => String.t(),
        "Database" => rds_database(),
        "DatabaseUserName" => String.t(),
        "ResourceRole" => String.t(),
        "SelectSqlQuery" => String.t(),
        "ServiceRole" => String.t()
      }
      
  """
  @type rds_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_realtime_endpoint_output() :: %{
        "MLModelId" => String.t(),
        "RealtimeEndpointInfo" => realtime_endpoint_info()
      }
      
  """
  @type delete_realtime_endpoint_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_data_source_output() :: %{
        "DataSourceId" => String.t()
      }
      
  """
  @type update_data_source_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_realtime_endpoint_input() :: %{
        required("MLModelId") => String.t()
      }
      
  """
  @type create_realtime_endpoint_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_data_spec() :: %{
        "DataLocationS3" => String.t(),
        "DataRearrangement" => String.t(),
        "DataSchema" => String.t(),
        "DataSchemaLocationS3" => String.t()
      }
      
  """
  @type s3_data_spec() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "code" => integer(),
        "message" => String.t()
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_data_sources_input() :: %{
        optional("EQ") => String.t(),
        optional("FilterVariable") => list(any()),
        optional("GE") => String.t(),
        optional("GT") => String.t(),
        optional("LE") => String.t(),
        optional("LT") => String.t(),
        optional("Limit") => integer(),
        optional("NE") => String.t(),
        optional("NextToken") => String.t(),
        optional("Prefix") => String.t(),
        optional("SortOrder") => list(any())
      }
      
  """
  @type describe_data_sources_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_batch_prediction_input() :: %{
        required("BatchPredictionId") => String.t(),
        required("BatchPredictionName") => String.t()
      }
      
  """
  @type update_batch_prediction_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_data_sources_output() :: %{
        "NextToken" => String.t(),
        "Results" => list(data_source()())
      }
      
  """
  @type describe_data_sources_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_evaluation_output() :: %{
        "EvaluationId" => String.t()
      }
      
  """
  @type create_evaluation_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_batch_prediction_output() :: %{
        "BatchPredictionId" => String.t()
      }
      
  """
  @type create_batch_prediction_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      redshift_database() :: %{
        "ClusterIdentifier" => String.t(),
        "DatabaseName" => String.t()
      }
      
  """
  @type redshift_database() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      performance_metrics() :: %{
        "Properties" => map()
      }
      
  """
  @type performance_metrics() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_ml_models_input() :: %{
        optional("EQ") => String.t(),
        optional("FilterVariable") => list(any()),
        optional("GE") => String.t(),
        optional("GT") => String.t(),
        optional("LE") => String.t(),
        optional("LT") => String.t(),
        optional("Limit") => integer(),
        optional("NE") => String.t(),
        optional("NextToken") => String.t(),
        optional("Prefix") => String.t(),
        optional("SortOrder") => list(any())
      }
      
  """
  @type describe_ml_models_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "code" => integer(),
        "message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_batch_predictions_input() :: %{
        optional("EQ") => String.t(),
        optional("FilterVariable") => list(any()),
        optional("GE") => String.t(),
        optional("GT") => String.t(),
        optional("LE") => String.t(),
        optional("LT") => String.t(),
        optional("Limit") => integer(),
        optional("NE") => String.t(),
        optional("NextToken") => String.t(),
        optional("Prefix") => String.t(),
        optional("SortOrder") => list(any())
      }
      
  """
  @type describe_batch_predictions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluation() :: %{
        "ComputeTime" => float(),
        "CreatedAt" => non_neg_integer(),
        "CreatedByIamUser" => String.t(),
        "EvaluationDataSourceId" => String.t(),
        "EvaluationId" => String.t(),
        "FinishedAt" => non_neg_integer(),
        "InputDataLocationS3" => String.t(),
        "LastUpdatedAt" => non_neg_integer(),
        "MLModelId" => String.t(),
        "Message" => String.t(),
        "Name" => String.t(),
        "PerformanceMetrics" => performance_metrics(),
        "StartedAt" => non_neg_integer(),
        "Status" => list(any())
      }
      
  """
  @type evaluation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_source() :: %{
        "ComputeStatistics" => boolean(),
        "ComputeTime" => float(),
        "CreatedAt" => non_neg_integer(),
        "CreatedByIamUser" => String.t(),
        "DataLocationS3" => String.t(),
        "DataRearrangement" => String.t(),
        "DataSizeInBytes" => float(),
        "DataSourceId" => String.t(),
        "FinishedAt" => non_neg_integer(),
        "LastUpdatedAt" => non_neg_integer(),
        "Message" => String.t(),
        "Name" => String.t(),
        "NumberOfFiles" => float(),
        "RDSMetadata" => rds_metadata(),
        "RedshiftMetadata" => redshift_metadata(),
        "RoleARN" => String.t(),
        "StartedAt" => non_neg_integer(),
        "Status" => list(any())
      }
      
  """
  @type data_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_ml_model_output() :: %{
        "MLModelId" => String.t()
      }
      
  """
  @type update_ml_model_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_data_source_input() :: %{
        required("DataSourceId") => String.t()
      }
      
  """
  @type delete_data_source_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      redshift_database_credentials() :: %{
        "Password" => String.t(),
        "Username" => String.t()
      }
      
  """
  @type redshift_database_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_realtime_endpoint_input() :: %{
        required("MLModelId") => String.t()
      }
      
  """
  @type delete_realtime_endpoint_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_batch_prediction_output() :: %{
        "BatchPredictionId" => String.t()
      }
      
  """
  @type delete_batch_prediction_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_tag_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_tag_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_data_source_from_rds_output() :: %{
        "DataSourceId" => String.t()
      }
      
  """
  @type create_data_source_from_rds_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_data_source_from_redshift_input() :: %{
        optional("ComputeStatistics") => boolean(),
        optional("DataSourceName") => String.t(),
        required("DataSourceId") => String.t(),
        required("DataSpec") => redshift_data_spec(),
        required("RoleARN") => String.t()
      }
      
  """
  @type create_data_source_from_redshift_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_batch_prediction_output() :: %{
        "BatchPredictionId" => String.t()
      }
      
  """
  @type update_batch_prediction_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      prediction() :: %{
        "details" => map(),
        "predictedLabel" => String.t(),
        "predictedScores" => map(),
        "predictedValue" => float()
      }
      
  """
  @type prediction() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_ml_model_output() :: %{
        "MLModelId" => String.t()
      }
      
  """
  @type create_ml_model_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rds_database_credentials() :: %{
        "Password" => String.t(),
        "Username" => String.t()
      }
      
  """
  @type rds_database_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_batch_prediction_input() :: %{
        optional("BatchPredictionName") => String.t(),
        required("BatchPredictionDataSourceId") => String.t(),
        required("BatchPredictionId") => String.t(),
        required("MLModelId") => String.t(),
        required("OutputUri") => String.t()
      }
      
  """
  @type create_batch_prediction_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_batch_prediction_input() :: %{
        required("BatchPredictionId") => String.t()
      }
      
  """
  @type delete_batch_prediction_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_tags_output() :: %{
        "ResourceId" => String.t(),
        "ResourceType" => list(any())
      }
      
  """
  @type delete_tags_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_evaluations_output() :: %{
        "NextToken" => String.t(),
        "Results" => list(evaluation()())
      }
      
  """
  @type describe_evaluations_output() :: %{String.t() => any()}

  @type add_tags_errors() ::
          invalid_tag_exception()
          | internal_server_exception()
          | invalid_input_exception()
          | tag_limit_exceeded_exception()
          | resource_not_found_exception()

  @type create_batch_prediction_errors() ::
          internal_server_exception()
          | invalid_input_exception()
          | idempotent_parameter_mismatch_exception()

  @type create_data_source_from_rds_errors() ::
          internal_server_exception()
          | invalid_input_exception()
          | idempotent_parameter_mismatch_exception()

  @type create_data_source_from_redshift_errors() ::
          internal_server_exception()
          | invalid_input_exception()
          | idempotent_parameter_mismatch_exception()

  @type create_data_source_from_s3_errors() ::
          internal_server_exception()
          | invalid_input_exception()
          | idempotent_parameter_mismatch_exception()

  @type create_evaluation_errors() ::
          internal_server_exception()
          | invalid_input_exception()
          | idempotent_parameter_mismatch_exception()

  @type create_ml_model_errors() ::
          internal_server_exception()
          | invalid_input_exception()
          | idempotent_parameter_mismatch_exception()

  @type create_realtime_endpoint_errors() ::
          internal_server_exception() | invalid_input_exception() | resource_not_found_exception()

  @type delete_batch_prediction_errors() ::
          internal_server_exception() | invalid_input_exception() | resource_not_found_exception()

  @type delete_data_source_errors() ::
          internal_server_exception() | invalid_input_exception() | resource_not_found_exception()

  @type delete_evaluation_errors() ::
          internal_server_exception() | invalid_input_exception() | resource_not_found_exception()

  @type delete_ml_model_errors() ::
          internal_server_exception() | invalid_input_exception() | resource_not_found_exception()

  @type delete_realtime_endpoint_errors() ::
          internal_server_exception() | invalid_input_exception() | resource_not_found_exception()

  @type delete_tags_errors() ::
          invalid_tag_exception()
          | internal_server_exception()
          | invalid_input_exception()
          | resource_not_found_exception()

  @type describe_batch_predictions_errors() ::
          internal_server_exception() | invalid_input_exception()

  @type describe_data_sources_errors() :: internal_server_exception() | invalid_input_exception()

  @type describe_evaluations_errors() :: internal_server_exception() | invalid_input_exception()

  @type describe_ml_models_errors() :: internal_server_exception() | invalid_input_exception()

  @type describe_tags_errors() ::
          internal_server_exception() | invalid_input_exception() | resource_not_found_exception()

  @type get_batch_prediction_errors() ::
          internal_server_exception() | invalid_input_exception() | resource_not_found_exception()

  @type get_data_source_errors() ::
          internal_server_exception() | invalid_input_exception() | resource_not_found_exception()

  @type get_evaluation_errors() ::
          internal_server_exception() | invalid_input_exception() | resource_not_found_exception()

  @type get_ml_model_errors() ::
          internal_server_exception() | invalid_input_exception() | resource_not_found_exception()

  @type predict_errors() ::
          limit_exceeded_exception()
          | internal_server_exception()
          | invalid_input_exception()
          | predictor_not_mounted_exception()
          | resource_not_found_exception()

  @type update_batch_prediction_errors() ::
          internal_server_exception() | invalid_input_exception() | resource_not_found_exception()

  @type update_data_source_errors() ::
          internal_server_exception() | invalid_input_exception() | resource_not_found_exception()

  @type update_evaluation_errors() ::
          internal_server_exception() | invalid_input_exception() | resource_not_found_exception()

  @type update_ml_model_errors() ::
          internal_server_exception() | invalid_input_exception() | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2014-12-12",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "machinelearning",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Machine Learning",
      signature_version: "v4",
      signing_name: "machinelearning",
      target_prefix: "AmazonML_20141212"
    }
  end

  @doc """
  Adds one or more tags to an object, up to a limit of 10. Each tag consists of a
  key and an optional value. If you add a tag using a key that is already
  associated with the ML object, `AddTags` updates the tag's value.
  """
  @spec add_tags(AWS.Client.t(), add_tags_input(), Keyword.t()) ::
          {:ok, add_tags_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, add_tags_errors()}
  def add_tags(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AddTags", input, options)
  end

  @doc """
  Generates predictions for a group of observations. The observations to process
  exist in one or more data files referenced by a `DataSource`. This operation
  creates a new `BatchPrediction`, and uses an `MLModel` and the data files
  referenced by the `DataSource` as information sources.
  """
  @spec create_batch_prediction(AWS.Client.t(), create_batch_prediction_input(), Keyword.t()) ::
          {:ok, create_batch_prediction_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_batch_prediction_errors()}
  def create_batch_prediction(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateBatchPrediction", input, options)
  end

  @doc """
  Creates a `DataSource` object from an [ Amazon Relational Database
  Service](http://aws.amazon.com/rds/) (Amazon RDS). A `DataSource` references
  data that can be used to perform `CreateMLModel`, `CreateEvaluation`, or
  `CreateBatchPrediction` operations.
  """
  @spec create_data_source_from_rds(
          AWS.Client.t(),
          create_data_source_from_rds_input(),
          Keyword.t()
        ) ::
          {:ok, create_data_source_from_rds_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_data_source_from_rds_errors()}
  def create_data_source_from_rds(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateDataSourceFromRDS", input, options)
  end

  @doc """
  Creates a `DataSource` from a database hosted on an Amazon Redshift cluster. A
  `DataSource` references data that can be used to perform either
  `CreateMLModel`, `CreateEvaluation`, or `CreateBatchPrediction` operations.
  """
  @spec create_data_source_from_redshift(
          AWS.Client.t(),
          create_data_source_from_redshift_input(),
          Keyword.t()
        ) ::
          {:ok, create_data_source_from_redshift_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_data_source_from_redshift_errors()}
  def create_data_source_from_redshift(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateDataSourceFromRedshift", input, options)
  end

  @doc """
  Creates a `DataSource` object. A `DataSource` references data that can be used
  to perform `CreateMLModel`, `CreateEvaluation`, or `CreateBatchPrediction`
  operations.
  """
  @spec create_data_source_from_s3(
          AWS.Client.t(),
          create_data_source_from_s3_input(),
          Keyword.t()
        ) ::
          {:ok, create_data_source_from_s3_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_data_source_from_s3_errors()}
  def create_data_source_from_s3(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateDataSourceFromS3", input, options)
  end

  @doc """
  Creates a new `Evaluation` of an `MLModel`. An `MLModel` is evaluated on a set
  of observations associated to a `DataSource`. Like a `DataSource` for an
  `MLModel`, the `DataSource` for an `Evaluation` contains values for the
  `Target Variable`. The `Evaluation` compares the predicted result for each
  observation to the actual outcome and provides a summary so that you know how
  effective the `MLModel` functions on the test data. Evaluation generates a
  relevant performance metric, such as BinaryAUC, RegressionRMSE or
  MulticlassAvgFScore based on the corresponding `MLModelType`: `BINARY`,
  `REGRESSION` or `MULTICLASS`. `CreateEvaluation` is an asynchronous operation.
  In response to `CreateEvaluation`, Amazon Machine Learning (Amazon ML)
  immediately returns and sets the evaluation status to `PENDING`. After the
  `Evaluation` is created and ready for use, Amazon ML sets the status to
  `COMPLETED`.
  """
  @spec create_evaluation(AWS.Client.t(), create_evaluation_input(), Keyword.t()) ::
          {:ok, create_evaluation_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_evaluation_errors()}
  def create_evaluation(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateEvaluation", input, options)
  end

  @doc """
  Creates a new `MLModel` using the `DataSource` and the recipe as information
  sources. An `MLModel` is nearly immutable. Users can update only the
  `MLModelName` and the `ScoreThreshold` in an `MLModel` without creating a new
  `MLModel`.
  """
  @spec create_ml_model(AWS.Client.t(), create_ml_model_input(), Keyword.t()) ::
          {:ok, create_ml_model_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_ml_model_errors()}
  def create_ml_model(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateMLModel", input, options)
  end

  @doc """
  Creates a real-time endpoint for the `MLModel`. The endpoint contains the URI of
  the `MLModel`; that is, the location to send real-time prediction requests for
  the specified `MLModel`.
  """
  @spec create_realtime_endpoint(AWS.Client.t(), create_realtime_endpoint_input(), Keyword.t()) ::
          {:ok, create_realtime_endpoint_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_realtime_endpoint_errors()}
  def create_realtime_endpoint(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateRealtimeEndpoint", input, options)
  end

  @doc """
  Assigns the DELETED status to a `BatchPrediction`, rendering it unusable. After
  using the `DeleteBatchPrediction` operation, you can use the
  `GetBatchPrediction` operation to verify that the status of the
  `BatchPrediction` changed to DELETED.
  """
  @spec delete_batch_prediction(AWS.Client.t(), delete_batch_prediction_input(), Keyword.t()) ::
          {:ok, delete_batch_prediction_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_batch_prediction_errors()}
  def delete_batch_prediction(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteBatchPrediction", input, options)
  end

  @doc """
  Assigns the DELETED status to a `DataSource`, rendering it unusable. After using
  the `DeleteDataSource` operation, you can use the `GetDataSource` operation to
  verify that the status of the `DataSource` changed to DELETED.
  """
  @spec delete_data_source(AWS.Client.t(), delete_data_source_input(), Keyword.t()) ::
          {:ok, delete_data_source_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_data_source_errors()}
  def delete_data_source(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteDataSource", input, options)
  end

  @doc """
  Assigns the `DELETED` status to an `Evaluation`, rendering it unusable. After
  invoking the `DeleteEvaluation` operation, you can use the `GetEvaluation`
  operation to verify that the status of the `Evaluation` changed to `DELETED`.
  """
  @spec delete_evaluation(AWS.Client.t(), delete_evaluation_input(), Keyword.t()) ::
          {:ok, delete_evaluation_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_evaluation_errors()}
  def delete_evaluation(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteEvaluation", input, options)
  end

  @doc """
  Assigns the `DELETED` status to an `MLModel`, rendering it unusable. After using
  the `DeleteMLModel` operation, you can use the `GetMLModel` operation to
  verify that the status of the `MLModel` changed to DELETED.
  """
  @spec delete_ml_model(AWS.Client.t(), delete_ml_model_input(), Keyword.t()) ::
          {:ok, delete_ml_model_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_ml_model_errors()}
  def delete_ml_model(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteMLModel", input, options)
  end

  @doc """
  Deletes a real time endpoint of an `MLModel`.
  """
  @spec delete_realtime_endpoint(AWS.Client.t(), delete_realtime_endpoint_input(), Keyword.t()) ::
          {:ok, delete_realtime_endpoint_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_realtime_endpoint_errors()}
  def delete_realtime_endpoint(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteRealtimeEndpoint", input, options)
  end

  @doc """
  Deletes the specified tags associated with an ML object. After this operation is
  complete, you can't recover deleted tags.
  """
  @spec delete_tags(AWS.Client.t(), delete_tags_input(), Keyword.t()) ::
          {:ok, delete_tags_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_tags_errors()}
  def delete_tags(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteTags", input, options)
  end

  @doc """
  Returns a list of `BatchPrediction` operations that match the search criteria in
  the request.
  """
  @spec describe_batch_predictions(
          AWS.Client.t(),
          describe_batch_predictions_input(),
          Keyword.t()
        ) ::
          {:ok, describe_batch_predictions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_batch_predictions_errors()}
  def describe_batch_predictions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeBatchPredictions", input, options)
  end

  @doc """
  Returns a list of `DataSource` that match the search criteria in the request.
  """
  @spec describe_data_sources(AWS.Client.t(), describe_data_sources_input(), Keyword.t()) ::
          {:ok, describe_data_sources_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_data_sources_errors()}
  def describe_data_sources(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeDataSources", input, options)
  end

  @doc """
  Returns a list of `DescribeEvaluations` that match the search criteria in the
  request.
  """
  @spec describe_evaluations(AWS.Client.t(), describe_evaluations_input(), Keyword.t()) ::
          {:ok, describe_evaluations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_evaluations_errors()}
  def describe_evaluations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeEvaluations", input, options)
  end

  @doc """
  Returns a list of `MLModel` that match the search criteria in the request.
  """
  @spec describe_ml_models(AWS.Client.t(), describe_ml_models_input(), Keyword.t()) ::
          {:ok, describe_ml_models_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_ml_models_errors()}
  def describe_ml_models(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeMLModels", input, options)
  end

  @doc """
  Describes one or more of the tags for your Amazon ML object.
  """
  @spec describe_tags(AWS.Client.t(), describe_tags_input(), Keyword.t()) ::
          {:ok, describe_tags_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_tags_errors()}
  def describe_tags(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeTags", input, options)
  end

  @doc """
  Returns a `BatchPrediction` that includes detailed metadata, status, and data
  file information for a `Batch Prediction` request.
  """
  @spec get_batch_prediction(AWS.Client.t(), get_batch_prediction_input(), Keyword.t()) ::
          {:ok, get_batch_prediction_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_batch_prediction_errors()}
  def get_batch_prediction(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetBatchPrediction", input, options)
  end

  @doc """
  Returns a `DataSource` that includes metadata and data file information, as well
  as the current status of the `DataSource`.
  """
  @spec get_data_source(AWS.Client.t(), get_data_source_input(), Keyword.t()) ::
          {:ok, get_data_source_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_data_source_errors()}
  def get_data_source(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDataSource", input, options)
  end

  @doc """
  Returns an `Evaluation` that includes metadata as well as the current status of
  the `Evaluation`.
  """
  @spec get_evaluation(AWS.Client.t(), get_evaluation_input(), Keyword.t()) ::
          {:ok, get_evaluation_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_evaluation_errors()}
  def get_evaluation(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetEvaluation", input, options)
  end

  @doc """
  Returns an `MLModel` that includes detailed metadata, data source information,
  and the current status of the `MLModel`.
  """
  @spec get_ml_model(AWS.Client.t(), get_ml_model_input(), Keyword.t()) ::
          {:ok, get_ml_model_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_ml_model_errors()}
  def get_ml_model(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetMLModel", input, options)
  end

  @doc """
  Generates a prediction for the observation using the specified `ML Model`.
  """
  @spec predict(AWS.Client.t(), predict_input(), Keyword.t()) ::
          {:ok, predict_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, predict_errors()}
  def predict(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "Predict", input, options)
  end

  @doc """
  Updates the `BatchPredictionName` of a `BatchPrediction`.
  """
  @spec update_batch_prediction(AWS.Client.t(), update_batch_prediction_input(), Keyword.t()) ::
          {:ok, update_batch_prediction_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_batch_prediction_errors()}
  def update_batch_prediction(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateBatchPrediction", input, options)
  end

  @doc """
  Updates the `DataSourceName` of a `DataSource`.
  """
  @spec update_data_source(AWS.Client.t(), update_data_source_input(), Keyword.t()) ::
          {:ok, update_data_source_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_data_source_errors()}
  def update_data_source(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateDataSource", input, options)
  end

  @doc """
  Updates the `EvaluationName` of an `Evaluation`.
  """
  @spec update_evaluation(AWS.Client.t(), update_evaluation_input(), Keyword.t()) ::
          {:ok, update_evaluation_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_evaluation_errors()}
  def update_evaluation(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateEvaluation", input, options)
  end

  @doc """
  Updates the `MLModelName` and the `ScoreThreshold` of an `MLModel`.
  """
  @spec update_ml_model(AWS.Client.t(), update_ml_model_input(), Keyword.t()) ::
          {:ok, update_ml_model_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_ml_model_errors()}
  def update_ml_model(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateMLModel", input, options)
  end
end
