# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.LookoutVision do
  @moduledoc """
  This is the Amazon Lookout for Vision API Reference. It provides descriptions of
  actions, data types, common parameters, and common errors.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      describe_project_response() :: %{
        "ProjectDescription" => project_description()
      }
      
  """
  @type describe_project_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_dataset_entries_request() :: %{
        optional("ClientToken") => String.t(),
        required("Changes") => binary()
      }
      
  """
  @type update_dataset_entries_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      greengrass_output_details() :: %{
        "ComponentName" => String.t(),
        "ComponentVersion" => String.t(),
        "ComponentVersionArn" => String.t()
      }
      
  """
  @type greengrass_output_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_models_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_models_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_models_response() :: %{
        "Models" => list(model_metadata()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_models_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("Tags") => list(tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      project_description() :: %{
        "CreationTimestamp" => non_neg_integer(),
        "Datasets" => list(dataset_metadata()()),
        "ProjectArn" => String.t(),
        "ProjectName" => String.t()
      }
      
  """
  @type project_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_dataset_entries_response() :: %{
        "Status" => list(any())
      }
      
  """
  @type update_dataset_entries_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_dataset_response() :: %{}
      
  """
  @type delete_dataset_response() :: %{}

  @typedoc """

  ## Example:
      
      dataset_source() :: %{
        "GroundTruthManifest" => dataset_ground_truth_manifest()
      }
      
  """
  @type dataset_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_metadata() :: %{
        "CreationTimestamp" => non_neg_integer(),
        "Description" => String.t(),
        "ModelArn" => String.t(),
        "ModelVersion" => String.t(),
        "Performance" => model_performance(),
        "Status" => list(any()),
        "StatusMessage" => String.t()
      }
      
  """
  @type model_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pixel_anomaly() :: %{
        "Color" => String.t(),
        "TotalPercentageArea" => float()
      }
      
  """
  @type pixel_anomaly() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dataset_description() :: %{
        "CreationTimestamp" => non_neg_integer(),
        "DatasetType" => String.t(),
        "ImageStats" => dataset_image_stats(),
        "LastUpdatedTimestamp" => non_neg_integer(),
        "ProjectName" => String.t(),
        "Status" => list(any()),
        "StatusMessage" => String.t()
      }
      
  """
  @type dataset_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      model_packaging_description() :: %{
        "CreationTimestamp" => non_neg_integer(),
        "JobName" => String.t(),
        "LastUpdatedTimestamp" => non_neg_integer(),
        "ModelPackagingConfiguration" => model_packaging_configuration(),
        "ModelPackagingJobDescription" => String.t(),
        "ModelPackagingMethod" => String.t(),
        "ModelPackagingOutputDetails" => model_packaging_output_details(),
        "ModelVersion" => String.t(),
        "ProjectName" => String.t(),
        "Status" => list(any()),
        "StatusMessage" => String.t()
      }
      
  """
  @type model_packaging_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_model_packaging_job_request() :: %{}
      
  """
  @type describe_model_packaging_job_request() :: %{}

  @typedoc """

  ## Example:
      
      output_s3_object() :: %{
        "Bucket" => String.t(),
        "Key" => String.t()
      }
      
  """
  @type output_s3_object() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_project_request() :: %{}
      
  """
  @type describe_project_request() :: %{}

  @typedoc """

  ## Example:
      
      create_model_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Description") => String.t(),
        optional("KmsKeyId") => String.t(),
        optional("Tags") => list(tag()()),
        required("OutputConfig") => output_config()
      }
      
  """
  @type create_model_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_model_request() :: %{}
      
  """
  @type describe_model_request() :: %{}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_model_response() :: %{
        "Status" => list(any())
      }
      
  """
  @type start_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      project_metadata() :: %{
        "CreationTimestamp" => non_neg_integer(),
        "ProjectArn" => String.t(),
        "ProjectName" => String.t()
      }
      
  """
  @type project_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_model_response() :: %{
        "ModelDescription" => model_description()
      }
      
  """
  @type describe_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_anomalies_response() :: %{
        "DetectAnomalyResult" => detect_anomaly_result()
      }
      
  """
  @type detect_anomalies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_dataset_response() :: %{
        "DatasetMetadata" => dataset_metadata()
      }
      
  """
  @type create_dataset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_project_response() :: %{
        "ProjectMetadata" => project_metadata()
      }
      
  """
  @type create_project_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Message" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => list(any())
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => list(any())
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

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
      
      list_model_packaging_jobs_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_model_packaging_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "Message" => String.t(),
        "QuotaCode" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => list(any()),
        "ServiceCode" => String.t()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dataset_image_stats() :: %{
        "Anomaly" => integer(),
        "Labeled" => integer(),
        "Normal" => integer(),
        "Total" => integer()
      }
      
  """
  @type dataset_image_stats() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_model_request() :: %{
        optional("ClientToken") => String.t()
      }
      
  """
  @type stop_model_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_projects_response() :: %{
        "NextToken" => String.t(),
        "Projects" => list(project_metadata()())
      }
      
  """
  @type list_projects_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_dataset_entries_request() :: %{
        optional("AfterCreationDate") => non_neg_integer(),
        optional("AnomalyClass") => String.t(),
        optional("BeforeCreationDate") => non_neg_integer(),
        optional("Labeled") => boolean(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SourceRefContains") => String.t()
      }
      
  """
  @type list_dataset_entries_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_model_request() :: %{
        optional("ClientToken") => String.t(),
        optional("MaxInferenceUnits") => integer(),
        required("MinInferenceUnits") => integer()
      }
      
  """
  @type start_model_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_location() :: %{
        "Bucket" => String.t(),
        "Prefix" => String.t()
      }
      
  """
  @type s3_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_anomaly_result() :: %{
        "Anomalies" => list(anomaly()()),
        "AnomalyMask" => binary(),
        "Confidence" => float(),
        "IsAnomalous" => boolean(),
        "Source" => image_source()
      }
      
  """
  @type detect_anomaly_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_model_response() :: %{
        "ModelMetadata" => model_metadata()
      }
      
  """
  @type create_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_source() :: %{
        "Type" => String.t()
      }
      
  """
  @type image_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_packaging_output_details() :: %{
        "Greengrass" => greengrass_output_details()
      }
      
  """
  @type model_packaging_output_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_packaging_job_metadata() :: %{
        "CreationTimestamp" => non_neg_integer(),
        "JobName" => String.t(),
        "LastUpdatedTimestamp" => non_neg_integer(),
        "ModelPackagingJobDescription" => String.t(),
        "ModelPackagingMethod" => String.t(),
        "ModelVersion" => String.t(),
        "ProjectName" => String.t(),
        "Status" => list(any()),
        "StatusMessage" => String.t()
      }
      
  """
  @type model_packaging_job_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_model_packaging_jobs_response() :: %{
        "ModelPackagingJobs" => list(model_packaging_job_metadata()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_model_packaging_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_anomalies_request() :: %{
        required("Body") => binary(),
        required("ContentType") => String.t()
      }
      
  """
  @type detect_anomalies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_performance() :: %{
        "F1Score" => float(),
        "Precision" => float(),
        "Recall" => float()
      }
      
  """
  @type model_performance() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "Message" => String.t(),
        "RetryAfterSeconds" => integer()
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dataset_ground_truth_manifest() :: %{
        "S3Object" => input_s3_object()
      }
      
  """
  @type dataset_ground_truth_manifest() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_project_response() :: %{
        "ProjectArn" => String.t()
      }
      
  """
  @type delete_project_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      anomaly() :: %{
        "Name" => String.t(),
        "PixelAnomaly" => pixel_anomaly()
      }
      
  """
  @type anomaly() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_model_request() :: %{
        optional("ClientToken") => String.t()
      }
      
  """
  @type delete_model_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_model_packaging_job_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Description") => String.t(),
        optional("JobName") => String.t(),
        required("Configuration") => model_packaging_configuration(),
        required("ModelVersion") => String.t()
      }
      
  """
  @type start_model_packaging_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      output_config() :: %{
        "S3Location" => s3_location()
      }
      
  """
  @type output_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_dataset_response() :: %{
        "DatasetDescription" => dataset_description()
      }
      
  """
  @type describe_dataset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "Message" => String.t()
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
      
      target_platform() :: %{
        "Accelerator" => list(any()),
        "Arch" => list(any()),
        "Os" => list(any())
      }
      
  """
  @type target_platform() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_dataset_request() :: %{
        optional("ClientToken") => String.t(),
        optional("DatasetSource") => dataset_source(),
        required("DatasetType") => String.t()
      }
      
  """
  @type create_dataset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Message" => String.t(),
        "QuotaCode" => String.t(),
        "RetryAfterSeconds" => integer(),
        "ServiceCode" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_project_request() :: %{
        optional("ClientToken") => String.t(),
        required("ProjectName") => String.t()
      }
      
  """
  @type create_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_projects_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_projects_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_packaging_configuration() :: %{
        "Greengrass" => greengrass_configuration()
      }
      
  """
  @type model_packaging_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      greengrass_configuration() :: %{
        "CompilerOptions" => String.t(),
        "ComponentDescription" => String.t(),
        "ComponentName" => String.t(),
        "ComponentVersion" => String.t(),
        "S3OutputLocation" => s3_location(),
        "Tags" => list(tag()()),
        "TargetDevice" => list(any()),
        "TargetPlatform" => target_platform()
      }
      
  """
  @type greengrass_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_model_packaging_job_response() :: %{
        "ModelPackagingDescription" => model_packaging_description()
      }
      
  """
  @type describe_model_packaging_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_model_packaging_job_response() :: %{
        "JobName" => String.t()
      }
      
  """
  @type start_model_packaging_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_description() :: %{
        "CreationTimestamp" => non_neg_integer(),
        "Description" => String.t(),
        "EvaluationEndTimestamp" => non_neg_integer(),
        "EvaluationManifest" => output_s3_object(),
        "EvaluationResult" => output_s3_object(),
        "KmsKeyId" => String.t(),
        "MaxInferenceUnits" => integer(),
        "MinInferenceUnits" => integer(),
        "ModelArn" => String.t(),
        "ModelVersion" => String.t(),
        "OutputConfig" => output_config(),
        "Performance" => model_performance(),
        "Status" => list(any()),
        "StatusMessage" => String.t()
      }
      
  """
  @type model_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_dataset_request() :: %{}
      
  """
  @type describe_dataset_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_dataset_request() :: %{
        optional("ClientToken") => String.t()
      }
      
  """
  @type delete_dataset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_model_response() :: %{
        "Status" => list(any())
      }
      
  """
  @type stop_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_project_request() :: %{
        optional("ClientToken") => String.t()
      }
      
  """
  @type delete_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_model_response() :: %{
        "ModelArn" => String.t()
      }
      
  """
  @type delete_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_dataset_entries_response() :: %{
        "DatasetEntries" => list(String.t()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_dataset_entries_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dataset_metadata() :: %{
        "CreationTimestamp" => non_neg_integer(),
        "DatasetType" => String.t(),
        "Status" => list(any()),
        "StatusMessage" => String.t()
      }
      
  """
  @type dataset_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      input_s3_object() :: %{
        "Bucket" => String.t(),
        "Key" => String.t(),
        "VersionId" => String.t()
      }
      
  """
  @type input_s3_object() :: %{String.t() => any()}

  @type create_dataset_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_model_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_project_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_dataset_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_model_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_project_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_dataset_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_model_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_model_packaging_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_project_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type detect_anomalies_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_dataset_entries_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_model_packaging_jobs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_models_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_projects_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_model_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_model_packaging_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type stop_model_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_dataset_entries_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2020-11-20",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "lookoutvision",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "LookoutVision",
      signature_version: "v4",
      signing_name: "lookoutvision",
      target_prefix: nil
    }
  end

  @doc """
  Creates a new dataset in an Amazon Lookout for Vision project. `CreateDataset`
  can create a training or a test dataset from a valid dataset source
  (`DatasetSource`). If you want a single dataset project, specify `train` for
  the value of `DatasetType`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lookoutvision%20CreateDataset&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:project_name` (`t:string`) The name of the project in which you want to
  create a dataset.

  ## Optional parameters:
  * `:client_token` (`t:string`) ClientToken is an idempotency token that ensures
  a call to CreateDataset completes only once. You choose the value to pass.
  For example, An issue might prevent you from getting a response from
  CreateDataset. In this case, safely retry your call to CreateDataset by
  using the same ClientToken parameter value.
  """

  @spec create_dataset(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_dataset_errors()}

  def create_dataset(%Client{} = client, project_name, options \\ []) do
    url_path = "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}/datasets"

    # Validate optional parameters
    optional_params = [client_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :client_token) do
        [{"X-Amzn-Client-Token", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 202)
  end

  @doc """
  Creates a new version of a model within an an Amazon Lookout for Vision project.
  `CreateModel` is an asynchronous operation in which Amazon Lookout for Vision
  trains, tests, and evaluates a new version of a model. To get the current
  status, check the `Status` field returned in the response from
  `DescribeModel`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lookoutvision%20CreateModel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:project_name` (`t:string`) The name of the project in which you want to
  create a model version.

  ## Optional parameters:
  * `:client_token` (`t:string`) ClientToken is an idempotency token that ensures
  a call to CreateModel completes only once. You choose the value to pass. For
  example, An issue might prevent you from getting a response from
  CreateModel. In this case, safely retry your call to CreateModel by using
  the same ClientToken parameter value.
  """

  @spec create_model(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_model_errors()}

  def create_model(%Client{} = client, project_name, options \\ []) do
    url_path = "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}/models"

    # Validate optional parameters
    optional_params = [client_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :client_token) do
        [{"X-Amzn-Client-Token", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 202)
  end

  @doc """
  Creates an empty Amazon Lookout for Vision project. After you create the
  project, add a dataset by calling `CreateDataset`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lookoutvision%20CreateProject&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:client_token` (`t:string`) ClientToken is an idempotency token that ensures
  a call to CreateProject completes only once. You choose the value to pass.
  For example, An issue might prevent you from getting a response from
  CreateProject. In this case, safely retry your call to CreateProject by
  using the same ClientToken parameter value.
  """

  @spec create_project(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_project_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_project_errors()}

  def create_project(%Client{} = client, options \\ []) do
    url_path = "/2020-11-20/projects"

    # Validate optional parameters
    optional_params = [client_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :client_token) do
        [{"X-Amzn-Client-Token", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Deletes an existing Amazon Lookout for Vision `dataset`. If your the project has
  a single dataset, you must create a new dataset before you can create a model.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lookoutvision%20DeleteDataset&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:dataset_type` (`t:string`) The type of the dataset to delete. Specify train
  to delete the training dataset. Specify test to delete the test dataset. To
  delete the dataset in a single dataset project, specify train.
  * `:project_name` (`t:string`) The name of the project that contains the dataset
  that you want to delete.

  ## Optional parameters:
  * `:client_token` (`t:string`) ClientToken is an idempotency token that ensures
  a call to DeleteDataset completes only once. You choose the value to pass.
  For example, An issue might prevent you from getting a response from
  DeleteDataset. In this case, safely retry your call to DeleteDataset by
  using the same ClientToken parameter value.
  """

  @spec delete_dataset(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_dataset_errors()}

  def delete_dataset(%Client{} = client, dataset_type, project_name, options \\ []) do
    url_path =
      "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}/datasets/#{AWS.Util.encode_uri(dataset_type)}"

    # Validate optional parameters
    optional_params = [client_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :client_token) do
        [{"X-Amzn-Client-Token", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

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
      202
    )
  end

  @doc """
  Deletes an Amazon Lookout for Vision model. You can't delete a running model. To
  stop a running model, use the `StopModel` operation. It might take a few
  seconds to delete a model. To determine if a model has been deleted, call
  `ListModels` and check if the version of the model (`ModelVersion`) is in the
  `Models` array.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lookoutvision%20DeleteModel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:model_version` (`t:string`) The version of the model that you want to
  delete.
  * `:project_name` (`t:string`) The name of the project that contains the model
  that you want to delete.

  ## Optional parameters:
  * `:client_token` (`t:string`) ClientToken is an idempotency token that ensures
  a call to DeleteModel completes only once. You choose the value to pass. For
  example, an issue might prevent you from getting a response from
  DeleteModel. In this case, safely retry your call to DeleteModel by using
  the same ClientToken parameter value.
  """

  @spec delete_model(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_model_errors()}

  def delete_model(%Client{} = client, model_version, project_name, options \\ []) do
    url_path =
      "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}/models/#{AWS.Util.encode_uri(model_version)}"

    # Validate optional parameters
    optional_params = [client_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :client_token) do
        [{"X-Amzn-Client-Token", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

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
      202
    )
  end

  @doc """
  Deletes an Amazon Lookout for Vision project. To delete a project, you must
  first delete each version of the model associated with the project. To delete
  a model use the `DeleteModel` operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lookoutvision%20DeleteProject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:project_name` (`t:string`) The name of the project to delete.

  ## Optional parameters:
  * `:client_token` (`t:string`) ClientToken is an idempotency token that ensures
  a call to DeleteProject completes only once. You choose the value to pass.
  For example, An issue might prevent you from getting a response from
  DeleteProject. In this case, safely retry your call to DeleteProject by
  using the same ClientToken parameter value.
  """

  @spec delete_project(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_project_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_project_errors()}

  def delete_project(%Client{} = client, project_name, options \\ []) do
    url_path = "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}"

    # Validate optional parameters
    optional_params = [client_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :client_token) do
        [{"X-Amzn-Client-Token", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

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
  Describe an Amazon Lookout for Vision dataset.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lookoutvision%20DescribeDataset&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:dataset_type` (`t:string`) The type of the dataset to describe. Specify
  train to describe the training dataset. Specify test to describe the test
  dataset. If you have a single dataset project, specify train
  * `:project_name` (`t:string`) The name of the project that contains the dataset
  that you want to describe.

  ## Optional parameters:
  """

  @spec describe_dataset(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_dataset_errors()}

  def describe_dataset(%Client{} = client, dataset_type, project_name, options \\ []) do
    url_path =
      "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}/datasets/#{AWS.Util.encode_uri(dataset_type)}"

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
  Describes a version of an Amazon Lookout for Vision model.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lookoutvision%20DescribeModel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:model_version` (`t:string`) The version of the model that you want to
  describe.
  * `:project_name` (`t:string`) The project that contains the version of a model
  that you want to describe.

  ## Optional parameters:
  """

  @spec describe_model(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_model_errors()}

  def describe_model(%Client{} = client, model_version, project_name, options \\ []) do
    url_path =
      "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}/models/#{AWS.Util.encode_uri(model_version)}"

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
  Describes an Amazon Lookout for Vision model packaging job. This operation
  requires permissions to perform the `lookoutvision:DescribeModelPackagingJob`
  operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lookoutvision%20DescribeModelPackagingJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:job_name` (`t:string`) The job name for the model packaging job.
  * `:project_name` (`t:string`) The name of the project that contains the model
  packaging job that you want to describe.

  ## Optional parameters:
  """

  @spec describe_model_packaging_job(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_model_packaging_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_model_packaging_job_errors()}

  def describe_model_packaging_job(%Client{} = client, job_name, project_name, options \\ []) do
    url_path =
      "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}/modelpackagingjobs/#{AWS.Util.encode_uri(job_name)}"

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
  Describes an Amazon Lookout for Vision project.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lookoutvision%20DescribeProject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:project_name` (`t:string`) The name of the project that you want to
  describe.

  ## Optional parameters:
  """

  @spec describe_project(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_project_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_project_errors()}

  def describe_project(%Client{} = client, project_name, options \\ []) do
    url_path = "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}"

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
  Detects anomalies in an image that you supply. The response from
  `DetectAnomalies` includes a boolean prediction that the image contains one or
  more anomalies and a confidence value for the prediction. If the model is an
  image segmentation model, the response also includes segmentation information
  for each type of anomaly found in the image.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lookoutvision%20DetectAnomalies&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:model_version` (`t:string`) The version of the model that you want to use.
  * `:project_name` (`t:string`) The name of the project that contains the model
  version that you want to use.
  * `:content_type` (`t:string`) The type of the image passed in Body. Valid
  values are image/png (PNG format images) and image/jpeg (JPG format images).
  * `:input` (`t:map`):
    * `:body` (`t:blob`) The unencrypted image bytes that you want to analyze.

  ## Optional parameters:
  """

  @spec detect_anomalies(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          input :: map(),
          Keyword.t()
        ) ::
          {:ok, detect_anomalies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, detect_anomalies_errors()}

  def detect_anomalies(
        %Client{} = client,
        model_version,
        project_name,
        content_type,
        input,
        options \\ []
      )
      when is_map(input) and is_binary(content_type) do
    url_path =
      "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}/models/#{AWS.Util.encode_uri(model_version)}/detect"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"Content-Type", content_type}]

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Lists the JSON Lines within a dataset. An Amazon Lookout for Vision JSON Line
  contains the anomaly information for a single image, including the image
  location and the assigned label.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lookoutvision%20ListDatasetEntries&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:dataset_type` (`t:string`) The type of the dataset that you want to list.
  Specify train to list the training dataset. Specify test to list the test
  dataset. If you have a single dataset project, specify train.
  * `:project_name` (`t:string`) The name of the project that contains the dataset
  that you want to list.

  ## Optional parameters:
  * `:after_creation_date` (`t:timestamp`) Only includes entries after the
  specified date in the response. For example, 2020-06-23T00:00:00.
  * `:anomaly_class` (`t:string`) Specify normal to include only normal images.
  Specify anomaly to only include anomalous entries. If you don't specify a
  value, Amazon Lookout for Vision returns normal and anomalous images.
  * `:before_creation_date` (`t:timestamp`) Only includes entries before the
  specified date in the response. For example, 2020-06-23T00:00:00.
  * `:labeled` (`t:boolean`) Specify true to include labeled entries, otherwise
  specify false. If you don't specify a value, Lookout for Vision returns all
  entries.
  * `:max_results` (`t:integer`) The maximum number of results to return per
  paginated call. The largest value you can specify is 100. If you specify a
  value greater than 100, a ValidationException error occurs. The default
  value is 100.
  * `:next_token` (`t:string`) If the previous response was incomplete (because
  there is more data to retrieve), Amazon Lookout for Vision returns a
  pagination token in the response. You can use this pagination token to
  retrieve the next set of dataset entries.
  * `:source_ref_contains` (`t:string`) Perform a "contains" search on the values
  of the source-ref key within the dataset. For example a value of "IMG_17"
  returns all JSON Lines where the source-ref key value matches *IMG_17*.
  """

  @spec list_dataset_entries(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_dataset_entries_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_dataset_entries_errors()}

  def list_dataset_entries(%Client{} = client, dataset_type, project_name, options \\ []) do
    url_path =
      "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}/datasets/#{AWS.Util.encode_uri(dataset_type)}/entries"

    # Validate optional parameters
    optional_params = [
      after_creation_date: nil,
      anomaly_class: nil,
      before_creation_date: nil,
      labeled: nil,
      max_results: nil,
      next_token: nil,
      source_ref_contains: nil
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
      if opt_val = Keyword.get(options, :source_ref_contains) do
        [{"sourceRefContains", opt_val} | query_params]
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

    query_params =
      if opt_val = Keyword.get(options, :labeled) do
        [{"labeled", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :before_creation_date) do
        [{"createdBefore", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :anomaly_class) do
        [{"anomalyClass", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :after_creation_date) do
        [{"createdAfter", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :after_creation_date,
        :anomaly_class,
        :before_creation_date,
        :labeled,
        :max_results,
        :next_token,
        :source_ref_contains
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the model packaging jobs created for an Amazon Lookout for Vision project.
  This operation requires permissions to perform the
  `lookoutvision:ListModelPackagingJobs` operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lookoutvision%20ListModelPackagingJobs&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:project_name` (`t:string`) The name of the project for which you want to
  list the model packaging jobs.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per
  paginated call. The largest value you can specify is 100. If you specify a
  value greater than 100, a ValidationException error occurs. The default
  value is 100.
  * `:next_token` (`t:string`) If the previous response was incomplete (because
  there is more results to retrieve), Amazon Lookout for Vision returns a
  pagination token in the response. You can use this pagination token to
  retrieve the next set of results.
  """

  @spec list_model_packaging_jobs(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_model_packaging_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_model_packaging_jobs_errors()}

  def list_model_packaging_jobs(%Client{} = client, project_name, options \\ []) do
    url_path = "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}/modelpackagingjobs"

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
  Lists the versions of a model in an Amazon Lookout for Vision project. The
  `ListModels` operation is eventually consistent. Recent calls to `CreateModel`
  might take a while to appear in the response from `ListProjects`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lookoutvision%20ListModels&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:project_name` (`t:string`) The name of the project that contains the model
  versions that you want to list.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per
  paginated call. The largest value you can specify is 100. If you specify a
  value greater than 100, a ValidationException error occurs. The default
  value is 100.
  * `:next_token` (`t:string`) If the previous response was incomplete (because
  there is more data to retrieve), Amazon Lookout for Vision returns a
  pagination token in the response. You can use this pagination token to
  retrieve the next set of models.
  """

  @spec list_models(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_models_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_models_errors()}

  def list_models(%Client{} = client, project_name, options \\ []) do
    url_path = "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}/models"

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
  Lists the Amazon Lookout for Vision projects in your AWS account that are in the
  AWS Region in which you call `ListProjects`. The `ListProjects` operation is
  eventually consistent. Recent calls to `CreateProject` and `DeleteProject`
  might take a while to appear in the response from `ListProjects`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lookoutvision%20ListProjects&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per
  paginated call. The largest value you can specify is 100. If you specify a
  value greater than 100, a ValidationException error occurs. The default
  value is 100.
  * `:next_token` (`t:string`) If the previous response was incomplete (because
  there is more data to retrieve), Amazon Lookout for Vision returns a
  pagination token in the response. You can use this pagination token to
  retrieve the next set of projects.
  """

  @spec list_projects(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_projects_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_projects_errors()}

  def list_projects(%Client{} = client, options \\ []) do
    url_path = "/2020-11-20/projects"

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
  Returns a list of tags attached to the specified Amazon Lookout for Vision
  model.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lookoutvision%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the model for
  which you want to list tags.

  ## Optional parameters:
  """

  @spec list_tags_for_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}

  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/2020-11-20/tags/#{AWS.Util.encode_uri(resource_arn)}"

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
  Starts the running of the version of an Amazon Lookout for Vision model.
  Starting a model takes a while to complete. To check the current state of the
  model, use `DescribeModel`. A model is ready to use when its status is
  `HOSTED`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lookoutvision%20StartModel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:model_version` (`t:string`) The version of the model that you want to start.
  * `:project_name` (`t:string`) The name of the project that contains the model
  that you want to start.

  ## Optional parameters:
  * `:client_token` (`t:string`) ClientToken is an idempotency token that ensures
  a call to StartModel completes only once. You choose the value to pass. For
  example, An issue might prevent you from getting a response from StartModel.
  In this case, safely retry your call to StartModel by using the same
  ClientToken parameter value.
  """

  @spec start_model(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, start_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_model_errors()}

  def start_model(%Client{} = client, model_version, project_name, options \\ []) do
    url_path =
      "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}/models/#{AWS.Util.encode_uri(model_version)}/start"

    # Validate optional parameters
    optional_params = [client_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :client_token) do
        [{"X-Amzn-Client-Token", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 202)
  end

  @doc """
  Starts an Amazon Lookout for Vision model packaging job. A model packaging job
  creates an AWS IoT Greengrass component for a Lookout for Vision model. You
  can use the component to deploy your model to an edge device managed by
  Greengrass. Use the `DescribeModelPackagingJob` API to determine the current
  status of the job. The model packaging job is complete if the value of
  `Status` is `SUCCEEDED`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lookoutvision%20StartModelPackagingJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:project_name` (`t:string`) The name of the project which contains the
  version of the model that you want to package.

  ## Optional parameters:
  * `:client_token` (`t:string`) ClientToken is an idempotency token that ensures
  a call to StartModelPackagingJob completes only once. You choose the value
  to pass. For example, An issue might prevent you from getting a response
  from StartModelPackagingJob. In this case, safely retry your call to
  StartModelPackagingJob by using the same ClientToken parameter value.
  """

  @spec start_model_packaging_job(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, start_model_packaging_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_model_packaging_job_errors()}

  def start_model_packaging_job(%Client{} = client, project_name, options \\ []) do
    url_path = "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}/modelpackagingjobs"

    # Validate optional parameters
    optional_params = [client_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :client_token) do
        [{"X-Amzn-Client-Token", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Stops the hosting of a running model. The operation might take a while to
  complete. To check the current status, call `DescribeModel`. After the model
  hosting stops, the `Status` of the model is `TRAINED`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lookoutvision%20StopModel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:model_version` (`t:string`) The version of the model that you want to stop.
  * `:project_name` (`t:string`) The name of the project that contains the model
  that you want to stop.

  ## Optional parameters:
  * `:client_token` (`t:string`) ClientToken is an idempotency token that ensures
  a call to StopModel completes only once. You choose the value to pass. For
  example, An issue might prevent you from getting a response from StopModel.
  In this case, safely retry your call to StopModel by using the same
  ClientToken parameter value.
  """

  @spec stop_model(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, stop_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_model_errors()}

  def stop_model(%Client{} = client, model_version, project_name, options \\ []) do
    url_path =
      "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}/models/#{AWS.Util.encode_uri(model_version)}/stop"

    # Validate optional parameters
    optional_params = [client_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :client_token) do
        [{"X-Amzn-Client-Token", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 202)
  end

  @doc """
  Adds one or more key-value tags to an Amazon Lookout for Vision model. For more
  information, see *Tagging a model* in the *Amazon Lookout for Vision Developer
  Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lookoutvision%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the model to
  assign the tags.

  ## Optional parameters:
  """

  @spec tag_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}

  def tag_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/2020-11-20/tags/#{AWS.Util.encode_uri(resource_arn)}"

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
  Removes one or more tags from an Amazon Lookout for Vision model. For more
  information, see *Tagging a model* in the *Amazon Lookout for Vision Developer
  Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lookoutvision%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the model from
  which you want to remove tags.
  * `:tag_keys` (`t:list[com.amazonaws.lookoutvision#TagKey]`) A list of the keys
  of the tags that you want to remove.

  ## Optional parameters:
  """

  @spec untag_resource(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}

  def untag_resource(%Client{} = client, resource_arn, tag_keys, options \\ [])
      when is_binary(tag_keys) do
    url_path = "/2020-11-20/tags/#{AWS.Util.encode_uri(resource_arn)}"

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
  Adds or updates one or more JSON Line entries in a dataset. A JSON Line includes
  information about an image used for training or testing an Amazon Lookout for
  Vision model. To update an existing JSON Line, use the `source-ref` field to
  identify the JSON Line. The JSON line that you supply replaces the existing
  JSON line. Any existing annotations that are not in the new JSON line are
  removed from the dataset.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lookoutvision%20UpdateDatasetEntries&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:dataset_type` (`t:string`) The type of the dataset that you want to update.
  Specify train to update the training dataset. Specify test to update the
  test dataset. If you have a single dataset project, specify train.
  * `:project_name` (`t:string`) The name of the project that contains the dataset
  that you want to update.

  ## Optional parameters:
  * `:client_token` (`t:string`) ClientToken is an idempotency token that ensures
  a call to UpdateDatasetEntries completes only once. You choose the value to
  pass. For example, An issue might prevent you from getting a response from
  UpdateDatasetEntries. In this case, safely retry your call to
  UpdateDatasetEntries by using the same ClientToken parameter value.
  """

  @spec update_dataset_entries(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_dataset_entries_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_dataset_entries_errors()}

  def update_dataset_entries(%Client{} = client, dataset_type, project_name, options \\ []) do
    url_path =
      "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}/datasets/#{AWS.Util.encode_uri(dataset_type)}/entries"

    # Validate optional parameters
    optional_params = [client_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :client_token) do
        [{"X-Amzn-Client-Token", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

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
      202
    )
  end
end
