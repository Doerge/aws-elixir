# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Comprehend do
  @moduledoc """
  Amazon Comprehend is an Amazon Web Services service for gaining insight into the
  content of documents. Use these actions to determine the topics contained in
  your documents, the topics they discuss, the predominant sentiment expressed
  in them, the predominant language used, and more.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      flywheel_iteration_filter() :: %{
        "CreationTimeAfter" => non_neg_integer(),
        "CreationTimeBefore" => non_neg_integer()
      }
      
  """
  @type flywheel_iteration_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_request_detail() :: %{
        "Reason" => list(any())
      }
      
  """
  @type invalid_request_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_document_classifier_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("Mode") => list(any()),
        optional("ModelKmsKeyId") => String.t(),
        optional("ModelPolicy") => String.t(),
        optional("OutputDataConfig") => document_classifier_output_data_config(),
        optional("Tags") => list(tag()()),
        optional("VersionName") => String.t(),
        optional("VolumeKmsKeyId") => String.t(),
        optional("VpcConfig") => vpc_config(),
        required("DataAccessRoleArn") => String.t(),
        required("DocumentClassifierName") => String.t(),
        required("InputDataConfig") => document_classifier_input_data_config(),
        required("LanguageCode") => list(any())
      }
      
  """
  @type create_document_classifier_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_events_detection_job_response() :: %{
        "EventsDetectionJobProperties" => events_detection_job_properties()
      }
      
  """
  @type describe_events_detection_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_flywheel_request() :: %{
        optional("ActiveModelArn") => String.t(),
        optional("DataAccessRoleArn") => String.t(),
        optional("DataSecurityConfig") => update_data_security_config(),
        required("FlywheelArn") => String.t()
      }
      
  """
  @type update_flywheel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      contains_pii_entities_request() :: %{
        required("LanguageCode") => list(any()),
        required("Text") => String.t()
      }
      
  """
  @type contains_pii_entities_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_entity_recognizers_response() :: %{
        "EntityRecognizerPropertiesList" => list(entity_recognizer_properties()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_entity_recognizers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_flywheel_iteration_request() :: %{
        optional("ClientRequestToken") => String.t(),
        required("FlywheelArn") => String.t()
      }
      
  """
  @type start_flywheel_iteration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_pii_entities_detection_jobs_request() :: %{
        optional("Filter") => pii_entities_detection_job_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_pii_entities_detection_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document_classifier_output_data_config() :: %{
        "FlywheelStatsS3Prefix" => String.t(),
        "KmsKeyId" => String.t(),
        "S3Uri" => String.t()
      }
      
  """
  @type document_classifier_output_data_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_training_document_classifier_request() :: %{
        required("DocumentClassifierArn") => String.t()
      }
      
  """
  @type stop_training_document_classifier_request() :: %{String.t() => any()}

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
      
      describe_dominant_language_detection_job_response() :: %{
        "DominantLanguageDetectionJobProperties" => dominant_language_detection_job_properties()
      }
      
  """
  @type describe_dominant_language_detection_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_resource_policy_response() :: %{}
      
  """
  @type delete_resource_policy_response() :: %{}

  @typedoc """

  ## Example:
      
      describe_targeted_sentiment_detection_job_response() :: %{
        "TargetedSentimentDetectionJobProperties" => targeted_sentiment_detection_job_properties()
      }
      
  """
  @type describe_targeted_sentiment_detection_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document_classifier_input_data_config() :: %{
        "AugmentedManifests" => list(augmented_manifests_list_item()()),
        "DataFormat" => list(any()),
        "DocumentReaderConfig" => document_reader_config(),
        "DocumentType" => list(any()),
        "Documents" => document_classifier_documents(),
        "LabelDelimiter" => String.t(),
        "S3Uri" => String.t(),
        "TestS3Uri" => String.t()
      }
      
  """
  @type document_classifier_input_data_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_detect_dominant_language_response() :: %{
        "ErrorList" => list(batch_item_error()()),
        "ResultList" => list(batch_detect_dominant_language_item_result()())
      }
      
  """
  @type batch_detect_dominant_language_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_events_detection_job_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("JobName") => String.t(),
        optional("Tags") => list(tag()()),
        required("DataAccessRoleArn") => String.t(),
        required("InputDataConfig") => input_data_config(),
        required("LanguageCode") => list(any()),
        required("OutputDataConfig") => output_data_config(),
        required("TargetEventTypes") => list(String.t()())
      }
      
  """
  @type start_events_detection_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dataset_document_classifier_input_data_config() :: %{
        "LabelDelimiter" => String.t(),
        "S3Uri" => String.t()
      }
      
  """
  @type dataset_document_classifier_input_data_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_endpoint_response() :: %{
        "DesiredModelArn" => String.t()
      }
      
  """
  @type update_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      classifier_metadata() :: %{
        "EvaluationMetrics" => classifier_evaluation_metrics(),
        "NumberOfLabels" => integer(),
        "NumberOfTestDocuments" => integer(),
        "NumberOfTrainedDocuments" => integer()
      }
      
  """
  @type classifier_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      entity_recognizer_summary() :: %{
        "LatestVersionCreatedAt" => non_neg_integer(),
        "LatestVersionName" => String.t(),
        "LatestVersionStatus" => list(any()),
        "NumberOfVersions" => integer(),
        "RecognizerName" => String.t()
      }
      
  """
  @type entity_recognizer_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_detect_dominant_language_item_result() :: %{
        "Index" => integer(),
        "Languages" => list(dominant_language()())
      }
      
  """
  @type batch_detect_dominant_language_item_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      events_detection_job_properties() :: %{
        "DataAccessRoleArn" => String.t(),
        "EndTime" => non_neg_integer(),
        "InputDataConfig" => input_data_config(),
        "JobArn" => String.t(),
        "JobId" => String.t(),
        "JobName" => String.t(),
        "JobStatus" => list(any()),
        "LanguageCode" => list(any()),
        "Message" => String.t(),
        "OutputDataConfig" => output_data_config(),
        "SubmitTime" => non_neg_integer(),
        "TargetEventTypes" => list(String.t()())
      }
      
  """
  @type events_detection_job_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      input_data_config() :: %{
        "DocumentReaderConfig" => document_reader_config(),
        "InputFormat" => list(any()),
        "S3Uri" => String.t()
      }
      
  """
  @type input_data_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_topics_detection_job_request() :: %{
        required("JobId") => String.t()
      }
      
  """
  @type describe_topics_detection_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      geometry() :: %{
        "BoundingBox" => bounding_box(),
        "Polygon" => list(point()())
      }
      
  """
  @type geometry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_document_classification_job_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("DocumentClassifierArn") => String.t(),
        optional("FlywheelArn") => String.t(),
        optional("JobName") => String.t(),
        optional("Tags") => list(tag()()),
        optional("VolumeKmsKeyId") => String.t(),
        optional("VpcConfig") => vpc_config(),
        required("DataAccessRoleArn") => String.t(),
        required("InputDataConfig") => input_data_config(),
        required("OutputDataConfig") => output_data_config()
      }
      
  """
  @type start_document_classification_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      list_flywheel_iteration_history_response() :: %{
        "FlywheelIterationPropertiesList" => list(flywheel_iteration_properties()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_flywheel_iteration_history_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      entity() :: %{
        "BeginOffset" => integer(),
        "BlockReferences" => list(block_reference()()),
        "EndOffset" => integer(),
        "Score" => float(),
        "Text" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type entity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      key_phrases_detection_job_filter() :: %{
        "JobName" => String.t(),
        "JobStatus" => list(any()),
        "SubmitTimeAfter" => non_neg_integer(),
        "SubmitTimeBefore" => non_neg_integer()
      }
      
  """
  @type key_phrases_detection_job_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sentiment_detection_job_filter() :: %{
        "JobName" => String.t(),
        "JobStatus" => list(any()),
        "SubmitTimeAfter" => non_neg_integer(),
        "SubmitTimeBefore" => non_neg_integer()
      }
      
  """
  @type sentiment_detection_job_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_model_response() :: %{
        "ModelArn" => String.t()
      }
      
  """
  @type import_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_in_use_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_entity_recognizer_request() :: %{
        required("EntityRecognizerArn") => String.t()
      }
      
  """
  @type delete_entity_recognizer_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_security_config() :: %{
        "DataLakeKmsKeyId" => String.t(),
        "ModelKmsKeyId" => String.t(),
        "VolumeKmsKeyId" => String.t(),
        "VpcConfig" => vpc_config()
      }
      
  """
  @type data_security_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document_classifier_properties() :: %{
        "ClassifierMetadata" => classifier_metadata(),
        "DataAccessRoleArn" => String.t(),
        "DocumentClassifierArn" => String.t(),
        "EndTime" => non_neg_integer(),
        "FlywheelArn" => String.t(),
        "InputDataConfig" => document_classifier_input_data_config(),
        "LanguageCode" => list(any()),
        "Message" => String.t(),
        "Mode" => list(any()),
        "ModelKmsKeyId" => String.t(),
        "OutputDataConfig" => document_classifier_output_data_config(),
        "SourceModelArn" => String.t(),
        "Status" => list(any()),
        "SubmitTime" => non_neg_integer(),
        "TrainingEndTime" => non_neg_integer(),
        "TrainingStartTime" => non_neg_integer(),
        "VersionName" => String.t(),
        "VolumeKmsKeyId" => String.t(),
        "VpcConfig" => vpc_config()
      }
      
  """
  @type document_classifier_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_flywheels_response() :: %{
        "FlywheelSummaryList" => list(flywheel_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_flywheels_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dataset_augmented_manifests_list_item() :: %{
        "AnnotationDataS3Uri" => String.t(),
        "AttributeNames" => list(String.t()()),
        "DocumentType" => list(any()),
        "S3Uri" => String.t(),
        "SourceDocumentsS3Uri" => String.t()
      }
      
  """
  @type dataset_augmented_manifests_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      classify_document_request() :: %{
        optional("Bytes") => binary(),
        optional("DocumentReaderConfig") => document_reader_config(),
        optional("Text") => String.t(),
        required("EndpointArn") => String.t()
      }
      
  """
  @type classify_document_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_unavailable_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_detect_syntax_item_result() :: %{
        "Index" => integer(),
        "SyntaxTokens" => list(syntax_token()())
      }
      
  """
  @type batch_detect_syntax_item_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document_reader_config() :: %{
        "DocumentReadAction" => list(any()),
        "DocumentReadMode" => list(any()),
        "FeatureTypes" => list(list(any())())
      }
      
  """
  @type document_reader_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_document_classifier_summaries_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_document_classifier_summaries_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_endpoint_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("DataAccessRoleArn") => String.t(),
        optional("FlywheelArn") => String.t(),
        optional("ModelArn") => String.t(),
        optional("Tags") => list(tag()()),
        required("DesiredInferenceUnits") => integer(),
        required("EndpointName") => String.t()
      }
      
  """
  @type create_endpoint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_datasets_request() :: %{
        optional("Filter") => dataset_filter(),
        optional("FlywheelArn") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_datasets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_key_phrases_request() :: %{
        required("LanguageCode") => list(any()),
        required("Text") => String.t()
      }
      
  """
  @type detect_key_phrases_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_entities_detection_job_request() :: %{
        required("JobId") => String.t()
      }
      
  """
  @type describe_entities_detection_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_flywheels_request() :: %{
        optional("Filter") => flywheel_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_flywheels_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_entity_recognizer_response() :: %{
        "EntityRecognizerProperties" => entity_recognizer_properties()
      }
      
  """
  @type describe_entity_recognizer_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      contains_pii_entities_response() :: %{
        "Labels" => list(entity_label()())
      }
      
  """
  @type contains_pii_entities_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_training_entity_recognizer_response() :: %{}
      
  """
  @type stop_training_entity_recognizer_response() :: %{}

  @typedoc """

  ## Example:
      
      augmented_manifests_list_item() :: %{
        "AnnotationDataS3Uri" => String.t(),
        "AttributeNames" => list(String.t()()),
        "DocumentType" => list(any()),
        "S3Uri" => String.t(),
        "SourceDocumentsS3Uri" => String.t(),
        "Split" => list(any())
      }
      
  """
  @type augmented_manifests_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      part_of_speech_tag() :: %{
        "Score" => float(),
        "Tag" => list(any())
      }
      
  """
  @type part_of_speech_tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_endpoint_request() :: %{
        optional("DesiredDataAccessRoleArn") => String.t(),
        optional("DesiredInferenceUnits") => integer(),
        optional("DesiredModelArn") => String.t(),
        optional("FlywheelArn") => String.t(),
        required("EndpointArn") => String.t()
      }
      
  """
  @type update_endpoint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_sentiment_detection_job_response() :: %{
        "JobId" => String.t(),
        "JobStatus" => list(any())
      }
      
  """
  @type stop_sentiment_detection_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_pii_entities_response() :: %{
        "Entities" => list(pii_entity()())
      }
      
  """
  @type detect_pii_entities_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_events_detection_job_request() :: %{
        required("JobId") => String.t()
      }
      
  """
  @type describe_events_detection_job_request() :: %{String.t() => any()}

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
      
      too_many_requests_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_sentiment_detection_job_request() :: %{
        required("JobId") => String.t()
      }
      
  """
  @type describe_sentiment_detection_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_topics_detection_job_response() :: %{
        "TopicsDetectionJobProperties" => topics_detection_job_properties()
      }
      
  """
  @type describe_topics_detection_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_entity_recognizers_request() :: %{
        optional("Filter") => entity_recognizer_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_entity_recognizers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_detect_syntax_request() :: %{
        required("LanguageCode") => list(any()),
        required("TextList") => list(String.t()())
      }
      
  """
  @type batch_detect_syntax_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_filter_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_filter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dataset_entity_recognizer_documents() :: %{
        "InputFormat" => list(any()),
        "S3Uri" => String.t()
      }
      
  """
  @type dataset_entity_recognizer_documents() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      entity_recognizer_properties() :: %{
        "DataAccessRoleArn" => String.t(),
        "EndTime" => non_neg_integer(),
        "EntityRecognizerArn" => String.t(),
        "FlywheelArn" => String.t(),
        "InputDataConfig" => entity_recognizer_input_data_config(),
        "LanguageCode" => list(any()),
        "Message" => String.t(),
        "ModelKmsKeyId" => String.t(),
        "OutputDataConfig" => entity_recognizer_output_data_config(),
        "RecognizerMetadata" => entity_recognizer_metadata(),
        "SourceModelArn" => String.t(),
        "Status" => list(any()),
        "SubmitTime" => non_neg_integer(),
        "TrainingEndTime" => non_neg_integer(),
        "TrainingStartTime" => non_neg_integer(),
        "VersionName" => String.t(),
        "VolumeKmsKeyId" => String.t(),
        "VpcConfig" => vpc_config()
      }
      
  """
  @type entity_recognizer_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_tag_keys_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type too_many_tag_keys_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      task_config() :: %{
        "DocumentClassificationConfig" => document_classification_config(),
        "EntityRecognitionConfig" => entity_recognition_config(),
        "LanguageCode" => list(any())
      }
      
  """
  @type task_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      entity_recognizer_evaluation_metrics() :: %{
        "F1Score" => float(),
        "Precision" => float(),
        "Recall" => float()
      }
      
  """
  @type entity_recognizer_evaluation_metrics() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_entity_recognizer_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("ModelKmsKeyId") => String.t(),
        optional("ModelPolicy") => String.t(),
        optional("Tags") => list(tag()()),
        optional("VersionName") => String.t(),
        optional("VolumeKmsKeyId") => String.t(),
        optional("VpcConfig") => vpc_config(),
        required("DataAccessRoleArn") => String.t(),
        required("InputDataConfig") => entity_recognizer_input_data_config(),
        required("LanguageCode") => list(any()),
        required("RecognizerName") => String.t()
      }
      
  """
  @type create_entity_recognizer_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_detect_targeted_sentiment_request() :: %{
        required("LanguageCode") => list(any()),
        required("TextList") => list(String.t()())
      }
      
  """
  @type batch_detect_targeted_sentiment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_entities_detection_job_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("EntityRecognizerArn") => String.t(),
        optional("FlywheelArn") => String.t(),
        optional("JobName") => String.t(),
        optional("Tags") => list(tag()()),
        optional("VolumeKmsKeyId") => String.t(),
        optional("VpcConfig") => vpc_config(),
        required("DataAccessRoleArn") => String.t(),
        required("InputDataConfig") => input_data_config(),
        required("LanguageCode") => list(any()),
        required("OutputDataConfig") => output_data_config()
      }
      
  """
  @type start_entities_detection_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_document_classification_job_request() :: %{
        required("JobId") => String.t()
      }
      
  """
  @type describe_document_classification_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_entity_recognizer_response() :: %{}
      
  """
  @type delete_entity_recognizer_response() :: %{}

  @typedoc """

  ## Example:
      
      classifier_evaluation_metrics() :: %{
        "Accuracy" => float(),
        "F1Score" => float(),
        "HammingLoss" => float(),
        "MicroF1Score" => float(),
        "MicroPrecision" => float(),
        "MicroRecall" => float(),
        "Precision" => float(),
        "Recall" => float()
      }
      
  """
  @type classifier_evaluation_metrics() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      topics_detection_job_properties() :: %{
        "DataAccessRoleArn" => String.t(),
        "EndTime" => non_neg_integer(),
        "InputDataConfig" => input_data_config(),
        "JobArn" => String.t(),
        "JobId" => String.t(),
        "JobName" => String.t(),
        "JobStatus" => list(any()),
        "Message" => String.t(),
        "NumberOfTopics" => integer(),
        "OutputDataConfig" => output_data_config(),
        "SubmitTime" => non_neg_integer(),
        "VolumeKmsKeyId" => String.t(),
        "VpcConfig" => vpc_config()
      }
      
  """
  @type topics_detection_job_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_sentiment_detection_job_request() :: %{
        required("JobId") => String.t()
      }
      
  """
  @type stop_sentiment_detection_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      entity_recognizer_input_data_config() :: %{
        "Annotations" => entity_recognizer_annotations(),
        "AugmentedManifests" => list(augmented_manifests_list_item()()),
        "DataFormat" => list(any()),
        "Documents" => entity_recognizer_documents(),
        "EntityList" => entity_recognizer_entity_list(),
        "EntityTypes" => list(entity_types_list_item()())
      }
      
  """
  @type entity_recognizer_input_data_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_syntax_request() :: %{
        required("LanguageCode") => list(any()),
        required("Text") => String.t()
      }
      
  """
  @type detect_syntax_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      syntax_token() :: %{
        "BeginOffset" => integer(),
        "EndOffset" => integer(),
        "PartOfSpeech" => part_of_speech_tag(),
        "Text" => String.t(),
        "TokenId" => integer()
      }
      
  """
  @type syntax_token() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_pii_entities_detection_job_response() :: %{
        "JobId" => String.t(),
        "JobStatus" => list(any())
      }
      
  """
  @type stop_pii_entities_detection_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      flywheel_summary() :: %{
        "ActiveModelArn" => String.t(),
        "CreationTime" => non_neg_integer(),
        "DataLakeS3Uri" => String.t(),
        "FlywheelArn" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "LatestFlywheelIteration" => String.t(),
        "Message" => String.t(),
        "ModelType" => list(any()),
        "Status" => list(any())
      }
      
  """
  @type flywheel_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_entities_response() :: %{
        "Blocks" => list(block()()),
        "DocumentMetadata" => document_metadata(),
        "DocumentType" => list(document_type_list_item()()),
        "Entities" => list(entity()()),
        "Errors" => list(errors_list_item()())
      }
      
  """
  @type detect_entities_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      entity_label() :: %{
        "Name" => list(any()),
        "Score" => float()
      }
      
  """
  @type entity_label() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      point() :: %{
        "X" => float(),
        "Y" => float()
      }
      
  """
  @type point() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_document_classifier_summaries_response() :: %{
        "DocumentClassifierSummariesList" => list(document_classifier_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_document_classifier_summaries_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_sentiment_request() :: %{
        required("LanguageCode") => list(any()),
        required("Text") => String.t()
      }
      
  """
  @type detect_sentiment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_sentiment_detection_job_response() :: %{
        "JobArn" => String.t(),
        "JobId" => String.t(),
        "JobStatus" => list(any())
      }
      
  """
  @type start_sentiment_detection_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_dataset_response() :: %{
        "DatasetArn" => String.t()
      }
      
  """
  @type create_dataset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_document_classification_jobs_response() :: %{
        "DocumentClassificationJobPropertiesList" => list(document_classification_job_properties()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_document_classification_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      key_phrase() :: %{
        "BeginOffset" => integer(),
        "EndOffset" => integer(),
        "Score" => float(),
        "Text" => String.t()
      }
      
  """
  @type key_phrase() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_entities_detection_jobs_request() :: %{
        optional("Filter") => entities_detection_job_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_entities_detection_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pii_entities_detection_job_filter() :: %{
        "JobName" => String.t(),
        "JobStatus" => list(any()),
        "SubmitTimeAfter" => non_neg_integer(),
        "SubmitTimeBefore" => non_neg_integer()
      }
      
  """
  @type pii_entities_detection_job_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_topics_detection_jobs_request() :: %{
        optional("Filter") => topics_detection_job_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_topics_detection_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_entities_detection_job_request() :: %{
        required("JobId") => String.t()
      }
      
  """
  @type stop_entities_detection_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      entity_recognizer_entity_list() :: %{
        "S3Uri" => String.t()
      }
      
  """
  @type entity_recognizer_entity_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_targeted_sentiment_detection_job_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("JobName") => String.t(),
        optional("Tags") => list(tag()()),
        optional("VolumeKmsKeyId") => String.t(),
        optional("VpcConfig") => vpc_config(),
        required("DataAccessRoleArn") => String.t(),
        required("InputDataConfig") => input_data_config(),
        required("LanguageCode") => list(any()),
        required("OutputDataConfig") => output_data_config()
      }
      
  """
  @type start_targeted_sentiment_detection_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_document_classifier_request() :: %{
        required("DocumentClassifierArn") => String.t()
      }
      
  """
  @type delete_document_classifier_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sentiment_score() :: %{
        "Mixed" => float(),
        "Negative" => float(),
        "Neutral" => float(),
        "Positive" => float()
      }
      
  """
  @type sentiment_score() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_flywheel_iteration_request() :: %{
        required("FlywheelArn") => String.t(),
        required("FlywheelIterationId") => String.t()
      }
      
  """
  @type describe_flywheel_iteration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dataset_entity_recognizer_annotations() :: %{
        "S3Uri" => String.t()
      }
      
  """
  @type dataset_entity_recognizer_annotations() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_entities_request() :: %{
        optional("Bytes") => binary(),
        optional("DocumentReaderConfig") => document_reader_config(),
        optional("EndpointArn") => String.t(),
        optional("LanguageCode") => list(any()),
        optional("Text") => String.t()
      }
      
  """
  @type detect_entities_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      block_reference() :: %{
        "BeginOffset" => integer(),
        "BlockId" => String.t(),
        "ChildBlocks" => list(child_block()()),
        "EndOffset" => integer()
      }
      
  """
  @type block_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_sentiment_detection_job_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("JobName") => String.t(),
        optional("Tags") => list(tag()()),
        optional("VolumeKmsKeyId") => String.t(),
        optional("VpcConfig") => vpc_config(),
        required("DataAccessRoleArn") => String.t(),
        required("InputDataConfig") => input_data_config(),
        required("LanguageCode") => list(any()),
        required("OutputDataConfig") => output_data_config()
      }
      
  """
  @type start_sentiment_detection_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_flywheel_iteration_history_request() :: %{
        optional("Filter") => flywheel_iteration_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("FlywheelArn") => String.t()
      }
      
  """
  @type list_flywheel_iteration_history_request() :: %{String.t() => any()}

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
      
      relationships_list_item() :: %{
        "Ids" => list(String.t()()),
        "Type" => list(any())
      }
      
  """
  @type relationships_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document_classifier_filter() :: %{
        "DocumentClassifierName" => String.t(),
        "Status" => list(any()),
        "SubmitTimeAfter" => non_neg_integer(),
        "SubmitTimeBefore" => non_neg_integer()
      }
      
  """
  @type document_classifier_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_request_exception() :: %{
        "Detail" => invalid_request_detail(),
        "Message" => String.t(),
        "Reason" => list(any())
      }
      
  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_flywheel_iteration_response() :: %{
        "FlywheelIterationProperties" => flywheel_iteration_properties()
      }
      
  """
  @type describe_flywheel_iteration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_endpoint_response() :: %{}
      
  """
  @type delete_endpoint_response() :: %{}

  @typedoc """

  ## Example:
      
      batch_detect_key_phrases_response() :: %{
        "ErrorList" => list(batch_item_error()()),
        "ResultList" => list(batch_detect_key_phrases_item_result()())
      }
      
  """
  @type batch_detect_key_phrases_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_pii_entities_detection_job_request() :: %{
        required("JobId") => String.t()
      }
      
  """
  @type describe_pii_entities_detection_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sentiment_detection_job_properties() :: %{
        "DataAccessRoleArn" => String.t(),
        "EndTime" => non_neg_integer(),
        "InputDataConfig" => input_data_config(),
        "JobArn" => String.t(),
        "JobId" => String.t(),
        "JobName" => String.t(),
        "JobStatus" => list(any()),
        "LanguageCode" => list(any()),
        "Message" => String.t(),
        "OutputDataConfig" => output_data_config(),
        "SubmitTime" => non_neg_integer(),
        "VolumeKmsKeyId" => String.t(),
        "VpcConfig" => vpc_config()
      }
      
  """
  @type sentiment_detection_job_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      mention_sentiment() :: %{
        "Sentiment" => list(any()),
        "SentimentScore" => sentiment_score()
      }
      
  """
  @type mention_sentiment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_endpoints_response() :: %{
        "EndpointPropertiesList" => list(endpoint_properties()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_endpoints_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_detect_entities_request() :: %{
        required("LanguageCode") => list(any()),
        required("TextList") => list(String.t()())
      }
      
  """
  @type batch_detect_entities_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dataset_input_data_config() :: %{
        "AugmentedManifests" => list(dataset_augmented_manifests_list_item()()),
        "DataFormat" => list(any()),
        "DocumentClassifierInputDataConfig" => dataset_document_classifier_input_data_config(),
        "EntityRecognizerInputDataConfig" => dataset_entity_recognizer_input_data_config()
      }
      
  """
  @type dataset_input_data_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_document_classifier_response() :: %{
        "DocumentClassifierProperties" => document_classifier_properties()
      }
      
  """
  @type describe_document_classifier_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dominant_language() :: %{
        "LanguageCode" => String.t(),
        "Score" => float()
      }
      
  """
  @type dominant_language() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      endpoint_filter() :: %{
        "CreationTimeAfter" => non_neg_integer(),
        "CreationTimeBefore" => non_neg_integer(),
        "ModelArn" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type endpoint_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_dominant_language_detection_job_request() :: %{
        required("JobId") => String.t()
      }
      
  """
  @type stop_dominant_language_detection_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_events_detection_jobs_response() :: %{
        "EventsDetectionJobPropertiesList" => list(events_detection_job_properties()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_events_detection_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_sentiment_detection_jobs_request() :: %{
        optional("Filter") => sentiment_detection_job_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_sentiment_detection_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_size_limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type batch_size_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_document_classifier_response() :: %{
        "DocumentClassifierArn" => String.t()
      }
      
  """
  @type create_document_classifier_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pii_output_data_config() :: %{
        "KmsKeyId" => String.t(),
        "S3Uri" => String.t()
      }
      
  """
  @type pii_output_data_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document_label() :: %{
        "Name" => String.t(),
        "Page" => integer(),
        "Score" => float()
      }
      
  """
  @type document_label() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_detect_sentiment_response() :: %{
        "ErrorList" => list(batch_item_error()()),
        "ResultList" => list(batch_detect_sentiment_item_result()())
      }
      
  """
  @type batch_detect_sentiment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_document_classifiers_response() :: %{
        "DocumentClassifierPropertiesList" => list(document_classifier_properties()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_document_classifiers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_pii_entities_detection_job_request() :: %{
        required("JobId") => String.t()
      }
      
  """
  @type stop_pii_entities_detection_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_config() :: %{
        "SecurityGroupIds" => list(String.t()()),
        "Subnets" => list(String.t()())
      }
      
  """
  @type vpc_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      targeted_sentiment_mention() :: %{
        "BeginOffset" => integer(),
        "EndOffset" => integer(),
        "GroupScore" => float(),
        "MentionSentiment" => mention_sentiment(),
        "Score" => float(),
        "Text" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type targeted_sentiment_mention() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_data_security_config() :: %{
        "ModelKmsKeyId" => String.t(),
        "VolumeKmsKeyId" => String.t(),
        "VpcConfig" => vpc_config()
      }
      
  """
  @type update_data_security_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_detect_dominant_language_request() :: %{
        required("TextList") => list(String.t()())
      }
      
  """
  @type batch_detect_dominant_language_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_targeted_sentiment_detection_job_response() :: %{
        "JobArn" => String.t(),
        "JobId" => String.t(),
        "JobStatus" => list(any())
      }
      
  """
  @type start_targeted_sentiment_detection_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_endpoint_request() :: %{
        required("EndpointArn") => String.t()
      }
      
  """
  @type describe_endpoint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "ResourceArn" => String.t(),
        "Tags" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      errors_list_item() :: %{
        "ErrorCode" => list(any()),
        "ErrorMessage" => String.t(),
        "Page" => integer()
      }
      
  """
  @type errors_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_entity_recognizer_response() :: %{
        "EntityRecognizerArn" => String.t()
      }
      
  """
  @type create_entity_recognizer_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      text_segment() :: %{
        "Text" => String.t()
      }
      
  """
  @type text_segment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_document_classification_job_response() :: %{
        "DocumentClassificationJobProperties" => document_classification_job_properties()
      }
      
  """
  @type describe_document_classification_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_syntax_response() :: %{
        "SyntaxTokens" => list(syntax_token()())
      }
      
  """
  @type detect_syntax_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_key_phrases_response() :: %{
        "KeyPhrases" => list(key_phrase()())
      }
      
  """
  @type detect_key_phrases_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_key_phrases_detection_job_response() :: %{
        "JobArn" => String.t(),
        "JobId" => String.t(),
        "JobStatus" => list(any())
      }
      
  """
  @type start_key_phrases_detection_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_dominant_language_detection_job_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("JobName") => String.t(),
        optional("Tags") => list(tag()()),
        optional("VolumeKmsKeyId") => String.t(),
        optional("VpcConfig") => vpc_config(),
        required("DataAccessRoleArn") => String.t(),
        required("InputDataConfig") => input_data_config(),
        required("OutputDataConfig") => output_data_config()
      }
      
  """
  @type start_dominant_language_detection_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dataset_properties() :: %{
        "CreationTime" => non_neg_integer(),
        "DatasetArn" => String.t(),
        "DatasetName" => String.t(),
        "DatasetS3Uri" => String.t(),
        "DatasetType" => list(any()),
        "Description" => String.t(),
        "EndTime" => non_neg_integer(),
        "Message" => String.t(),
        "NumberOfDocuments" => float(),
        "Status" => list(any())
      }
      
  """
  @type dataset_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_flywheel_request() :: %{
        optional("ActiveModelArn") => String.t(),
        optional("ClientRequestToken") => String.t(),
        optional("DataSecurityConfig") => data_security_config(),
        optional("ModelType") => list(any()),
        optional("Tags") => list(tag()()),
        optional("TaskConfig") => task_config(),
        required("DataAccessRoleArn") => String.t(),
        required("DataLakeS3Uri") => String.t(),
        required("FlywheelName") => String.t()
      }
      
  """
  @type create_flywheel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      entity_recognizer_documents() :: %{
        "InputFormat" => list(any()),
        "S3Uri" => String.t(),
        "TestS3Uri" => String.t()
      }
      
  """
  @type entity_recognizer_documents() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_training_document_classifier_response() :: %{}
      
  """
  @type stop_training_document_classifier_response() :: %{}

  @typedoc """

  ## Example:
      
      stop_dominant_language_detection_job_response() :: %{
        "JobId" => String.t(),
        "JobStatus" => list(any())
      }
      
  """
  @type stop_dominant_language_detection_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_toxic_content_request() :: %{
        required("LanguageCode") => list(any()),
        required("TextSegments") => list(text_segment()())
      }
      
  """
  @type detect_toxic_content_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_targeted_sentiment_request() :: %{
        required("LanguageCode") => list(any()),
        required("Text") => String.t()
      }
      
  """
  @type detect_targeted_sentiment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      entity_recognizer_filter() :: %{
        "RecognizerName" => String.t(),
        "Status" => list(any()),
        "SubmitTimeAfter" => non_neg_integer(),
        "SubmitTimeBefore" => non_neg_integer()
      }
      
  """
  @type entity_recognizer_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_flywheel_response() :: %{}
      
  """
  @type delete_flywheel_response() :: %{}

  @typedoc """

  ## Example:
      
      dominant_language_detection_job_properties() :: %{
        "DataAccessRoleArn" => String.t(),
        "EndTime" => non_neg_integer(),
        "InputDataConfig" => input_data_config(),
        "JobArn" => String.t(),
        "JobId" => String.t(),
        "JobName" => String.t(),
        "JobStatus" => list(any()),
        "Message" => String.t(),
        "OutputDataConfig" => output_data_config(),
        "SubmitTime" => non_neg_integer(),
        "VolumeKmsKeyId" => String.t(),
        "VpcConfig" => vpc_config()
      }
      
  """
  @type dominant_language_detection_job_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_entity_recognizer_request() :: %{
        required("EntityRecognizerArn") => String.t()
      }
      
  """
  @type describe_entity_recognizer_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_dominant_language_detection_job_request() :: %{
        required("JobId") => String.t()
      }
      
  """
  @type describe_dominant_language_detection_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document_classifier_summary() :: %{
        "DocumentClassifierName" => String.t(),
        "LatestVersionCreatedAt" => non_neg_integer(),
        "LatestVersionName" => String.t(),
        "LatestVersionStatus" => list(any()),
        "NumberOfVersions" => integer()
      }
      
  """
  @type document_classifier_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_sentiment_detection_jobs_response() :: %{
        "NextToken" => String.t(),
        "SentimentDetectionJobPropertiesList" => list(sentiment_detection_job_properties()())
      }
      
  """
  @type list_sentiment_detection_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_item_error() :: %{
        "ErrorCode" => String.t(),
        "ErrorMessage" => String.t(),
        "Index" => integer()
      }
      
  """
  @type batch_item_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_topics_detection_job_response() :: %{
        "JobArn" => String.t(),
        "JobId" => String.t(),
        "JobStatus" => list(any())
      }
      
  """
  @type start_topics_detection_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_flywheel_response() :: %{
        "FlywheelProperties" => flywheel_properties()
      }
      
  """
  @type describe_flywheel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_entities_detection_jobs_response() :: %{
        "EntitiesDetectionJobPropertiesList" => list(entities_detection_job_properties()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_entities_detection_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      redaction_config() :: %{
        "MaskCharacter" => String.t(),
        "MaskMode" => list(any()),
        "PiiEntityTypes" => list(list(any())())
      }
      
  """
  @type redaction_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      targeted_sentiment_entity() :: %{
        "DescriptiveMentionIndex" => list(integer()()),
        "Mentions" => list(targeted_sentiment_mention()())
      }
      
  """
  @type targeted_sentiment_entity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      entities_detection_job_properties() :: %{
        "DataAccessRoleArn" => String.t(),
        "EndTime" => non_neg_integer(),
        "EntityRecognizerArn" => String.t(),
        "FlywheelArn" => String.t(),
        "InputDataConfig" => input_data_config(),
        "JobArn" => String.t(),
        "JobId" => String.t(),
        "JobName" => String.t(),
        "JobStatus" => list(any()),
        "LanguageCode" => list(any()),
        "Message" => String.t(),
        "OutputDataConfig" => output_data_config(),
        "SubmitTime" => non_neg_integer(),
        "VolumeKmsKeyId" => String.t(),
        "VpcConfig" => vpc_config()
      }
      
  """
  @type entities_detection_job_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_training_entity_recognizer_request() :: %{
        required("EntityRecognizerArn") => String.t()
      }
      
  """
  @type stop_training_entity_recognizer_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pii_entity() :: %{
        "BeginOffset" => integer(),
        "EndOffset" => integer(),
        "Score" => float(),
        "Type" => list(any())
      }
      
  """
  @type pii_entity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_entity_recognizer_summaries_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_entity_recognizer_summaries_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      warnings_list_item() :: %{
        "Page" => integer(),
        "WarnCode" => list(any()),
        "WarnMessage" => String.t()
      }
      
  """
  @type warnings_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_detect_sentiment_request() :: %{
        required("LanguageCode") => list(any()),
        required("TextList") => list(String.t()())
      }
      
  """
  @type batch_detect_sentiment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document_classifier_documents() :: %{
        "S3Uri" => String.t(),
        "TestS3Uri" => String.t()
      }
      
  """
  @type document_classifier_documents() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_targeted_sentiment_detection_job_request() :: %{
        required("JobId") => String.t()
      }
      
  """
  @type stop_targeted_sentiment_detection_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_targeted_sentiment_detection_job_request() :: %{
        required("JobId") => String.t()
      }
      
  """
  @type describe_targeted_sentiment_detection_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document_type_list_item() :: %{
        "Page" => integer(),
        "Type" => list(any())
      }
      
  """
  @type document_type_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bounding_box() :: %{
        "Height" => float(),
        "Left" => float(),
        "Top" => float(),
        "Width" => float()
      }
      
  """
  @type bounding_box() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_dominant_language_response() :: %{
        "Languages" => list(dominant_language()())
      }
      
  """
  @type detect_dominant_language_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_endpoints_request() :: %{
        optional("Filter") => endpoint_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_endpoints_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      targeted_sentiment_detection_job_filter() :: %{
        "JobName" => String.t(),
        "JobStatus" => list(any()),
        "SubmitTimeAfter" => non_neg_integer(),
        "SubmitTimeBefore" => non_neg_integer()
      }
      
  """
  @type targeted_sentiment_detection_job_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      endpoint_properties() :: %{
        "CreationTime" => non_neg_integer(),
        "CurrentInferenceUnits" => integer(),
        "DataAccessRoleArn" => String.t(),
        "DesiredDataAccessRoleArn" => String.t(),
        "DesiredInferenceUnits" => integer(),
        "DesiredModelArn" => String.t(),
        "EndpointArn" => String.t(),
        "FlywheelArn" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Message" => String.t(),
        "ModelArn" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type endpoint_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_endpoint_request() :: %{
        required("EndpointArn") => String.t()
      }
      
  """
  @type delete_endpoint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_detect_sentiment_item_result() :: %{
        "Index" => integer(),
        "Sentiment" => list(any()),
        "SentimentScore" => sentiment_score()
      }
      
  """
  @type batch_detect_sentiment_item_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_resource_policy_request() :: %{
        optional("PolicyRevisionId") => String.t(),
        required("ResourceArn") => String.t(),
        required("ResourcePolicy") => String.t()
      }
      
  """
  @type put_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document_classification_job_filter() :: %{
        "JobName" => String.t(),
        "JobStatus" => list(any()),
        "SubmitTimeAfter" => non_neg_integer(),
        "SubmitTimeBefore" => non_neg_integer()
      }
      
  """
  @type document_classification_job_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_document_classifier_request() :: %{
        required("DocumentClassifierArn") => String.t()
      }
      
  """
  @type describe_document_classifier_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      entity_recognition_config() :: %{
        "EntityTypes" => list(entity_types_list_item()())
      }
      
  """
  @type entity_recognition_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      text_size_limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type text_size_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_key_phrases_detection_job_response() :: %{
        "KeyPhrasesDetectionJobProperties" => key_phrases_detection_job_properties()
      }
      
  """
  @type describe_key_phrases_detection_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_key_phrases_detection_job_response() :: %{
        "JobId" => String.t(),
        "JobStatus" => list(any())
      }
      
  """
  @type stop_key_phrases_detection_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_endpoint_response() :: %{
        "EndpointProperties" => endpoint_properties()
      }
      
  """
  @type describe_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_entities_detection_job_response() :: %{
        "EntityRecognizerArn" => String.t(),
        "JobArn" => String.t(),
        "JobId" => String.t(),
        "JobStatus" => list(any())
      }
      
  """
  @type start_entities_detection_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      entity_recognizer_metadata_entity_types_list_item() :: %{
        "EvaluationMetrics" => entity_types_evaluation_metrics(),
        "NumberOfTrainMentions" => integer(),
        "Type" => String.t()
      }
      
  """
  @type entity_recognizer_metadata_entity_types_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      entity_recognizer_annotations() :: %{
        "S3Uri" => String.t(),
        "TestS3Uri" => String.t()
      }
      
  """
  @type entity_recognizer_annotations() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      key_phrases_detection_job_properties() :: %{
        "DataAccessRoleArn" => String.t(),
        "EndTime" => non_neg_integer(),
        "InputDataConfig" => input_data_config(),
        "JobArn" => String.t(),
        "JobId" => String.t(),
        "JobName" => String.t(),
        "JobStatus" => list(any()),
        "LanguageCode" => list(any()),
        "Message" => String.t(),
        "OutputDataConfig" => output_data_config(),
        "SubmitTime" => non_neg_integer(),
        "VolumeKmsKeyId" => String.t(),
        "VpcConfig" => vpc_config()
      }
      
  """
  @type key_phrases_detection_job_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_flywheel_response() :: %{
        "ActiveModelArn" => String.t(),
        "FlywheelArn" => String.t()
      }
      
  """
  @type create_flywheel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      concurrent_modification_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type concurrent_modification_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pii_entities_detection_job_properties() :: %{
        "DataAccessRoleArn" => String.t(),
        "EndTime" => non_neg_integer(),
        "InputDataConfig" => input_data_config(),
        "JobArn" => String.t(),
        "JobId" => String.t(),
        "JobName" => String.t(),
        "JobStatus" => list(any()),
        "LanguageCode" => list(any()),
        "Message" => String.t(),
        "Mode" => list(any()),
        "OutputDataConfig" => pii_output_data_config(),
        "RedactionConfig" => redaction_config(),
        "SubmitTime" => non_neg_integer()
      }
      
  """
  @type pii_entities_detection_job_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_key_phrases_detection_job_request() :: %{
        required("JobId") => String.t()
      }
      
  """
  @type stop_key_phrases_detection_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_language_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type unsupported_language_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_dataset_response() :: %{
        "DatasetProperties" => dataset_properties()
      }
      
  """
  @type describe_dataset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      entity_recognizer_metadata() :: %{
        "EntityTypes" => list(entity_recognizer_metadata_entity_types_list_item()()),
        "EvaluationMetrics" => entity_recognizer_evaluation_metrics(),
        "NumberOfTestDocuments" => integer(),
        "NumberOfTrainedDocuments" => integer()
      }
      
  """
  @type entity_recognizer_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_document_classifier_response() :: %{}
      
  """
  @type delete_document_classifier_response() :: %{}

  @typedoc """

  ## Example:
      
      flywheel_iteration_properties() :: %{
        "CreationTime" => non_neg_integer(),
        "EndTime" => non_neg_integer(),
        "EvaluatedModelArn" => String.t(),
        "EvaluatedModelMetrics" => flywheel_model_evaluation_metrics(),
        "EvaluationManifestS3Prefix" => String.t(),
        "FlywheelArn" => String.t(),
        "FlywheelIterationId" => String.t(),
        "Message" => String.t(),
        "Status" => list(any()),
        "TrainedModelArn" => String.t(),
        "TrainedModelMetrics" => flywheel_model_evaluation_metrics()
      }
      
  """
  @type flywheel_iteration_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_key_phrases_detection_jobs_request() :: %{
        optional("Filter") => key_phrases_detection_job_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_key_phrases_detection_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceArn") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_detect_key_phrases_item_result() :: %{
        "Index" => integer(),
        "KeyPhrases" => list(key_phrase()())
      }
      
  """
  @type batch_detect_key_phrases_item_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_dataset_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("DatasetType") => list(any()),
        optional("Description") => String.t(),
        optional("Tags") => list(tag()()),
        required("DatasetName") => String.t(),
        required("FlywheelArn") => String.t(),
        required("InputDataConfig") => dataset_input_data_config()
      }
      
  """
  @type create_dataset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_dominant_language_request() :: %{
        required("Text") => String.t()
      }
      
  """
  @type detect_dominant_language_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document_metadata() :: %{
        "ExtractedCharacters" => list(extracted_characters_list_item()()),
        "Pages" => integer()
      }
      
  """
  @type document_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_flywheel_response() :: %{
        "FlywheelProperties" => flywheel_properties()
      }
      
  """
  @type update_flywheel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_document_classification_jobs_request() :: %{
        optional("Filter") => document_classification_job_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_document_classification_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_key_phrases_detection_job_request() :: %{
        required("JobId") => String.t()
      }
      
  """
  @type describe_key_phrases_detection_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_pii_entities_detection_job_response() :: %{
        "JobArn" => String.t(),
        "JobId" => String.t(),
        "JobStatus" => list(any())
      }
      
  """
  @type start_pii_entities_detection_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_targeted_sentiment_detection_job_response() :: %{
        "JobId" => String.t(),
        "JobStatus" => list(any())
      }
      
  """
  @type stop_targeted_sentiment_detection_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_pii_entities_detection_job_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("JobName") => String.t(),
        optional("RedactionConfig") => redaction_config(),
        optional("Tags") => list(tag()()),
        required("DataAccessRoleArn") => String.t(),
        required("InputDataConfig") => input_data_config(),
        required("LanguageCode") => list(any()),
        required("Mode") => list(any()),
        required("OutputDataConfig") => output_data_config()
      }
      
  """
  @type start_pii_entities_detection_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_pii_entities_request() :: %{
        required("LanguageCode") => list(any()),
        required("Text") => String.t()
      }
      
  """
  @type detect_pii_entities_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_events_detection_job_request() :: %{
        required("JobId") => String.t()
      }
      
  """
  @type stop_events_detection_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      topics_detection_job_filter() :: %{
        "JobName" => String.t(),
        "JobStatus" => list(any()),
        "SubmitTimeAfter" => non_neg_integer(),
        "SubmitTimeBefore" => non_neg_integer()
      }
      
  """
  @type topics_detection_job_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_resource_policy_response() :: %{
        "CreationTime" => non_neg_integer(),
        "LastModifiedTime" => non_neg_integer(),
        "PolicyRevisionId" => String.t(),
        "ResourcePolicy" => String.t()
      }
      
  """
  @type describe_resource_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_entities_detection_job_response() :: %{
        "EntitiesDetectionJobProperties" => entities_detection_job_properties()
      }
      
  """
  @type describe_entities_detection_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_topics_detection_jobs_response() :: %{
        "NextToken" => String.t(),
        "TopicsDetectionJobPropertiesList" => list(topics_detection_job_properties()())
      }
      
  """
  @type list_topics_detection_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_detect_targeted_sentiment_item_result() :: %{
        "Entities" => list(targeted_sentiment_entity()()),
        "Index" => integer()
      }
      
  """
  @type batch_detect_targeted_sentiment_item_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_targeted_sentiment_detection_jobs_response() :: %{
        "NextToken" => String.t(),
        "TargetedSentimentDetectionJobPropertiesList" => list(targeted_sentiment_detection_job_properties()())
      }
      
  """
  @type list_targeted_sentiment_detection_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      toxic_content() :: %{
        "Name" => list(any()),
        "Score" => float()
      }
      
  """
  @type toxic_content() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_events_detection_jobs_request() :: %{
        optional("Filter") => events_detection_job_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_events_detection_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_targeted_sentiment_detection_jobs_request() :: %{
        optional("Filter") => targeted_sentiment_detection_job_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_targeted_sentiment_detection_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_resource_policy_response() :: %{
        "PolicyRevisionId" => String.t()
      }
      
  """
  @type put_resource_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      output_data_config() :: %{
        "KmsKeyId" => String.t(),
        "S3Uri" => String.t()
      }
      
  """
  @type output_data_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dominant_language_detection_job_filter() :: %{
        "JobName" => String.t(),
        "JobStatus" => list(any()),
        "SubmitTimeAfter" => non_neg_integer(),
        "SubmitTimeBefore" => non_neg_integer()
      }
      
  """
  @type dominant_language_detection_job_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_sentiment_response() :: %{
        "Sentiment" => list(any()),
        "SentimentScore" => sentiment_score()
      }
      
  """
  @type detect_sentiment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_detect_key_phrases_request() :: %{
        required("LanguageCode") => list(any()),
        required("TextList") => list(String.t()())
      }
      
  """
  @type batch_detect_key_phrases_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_pii_entities_detection_job_response() :: %{
        "PiiEntitiesDetectionJobProperties" => pii_entities_detection_job_properties()
      }
      
  """
  @type describe_pii_entities_detection_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_detect_entities_item_result() :: %{
        "Entities" => list(entity()()),
        "Index" => integer()
      }
      
  """
  @type batch_detect_entities_item_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      toxic_labels() :: %{
        "Labels" => list(toxic_content()()),
        "Toxicity" => float()
      }
      
  """
  @type toxic_labels() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_targeted_sentiment_response() :: %{
        "Entities" => list(targeted_sentiment_entity()())
      }
      
  """
  @type detect_targeted_sentiment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_resource_policy_request() :: %{
        optional("PolicyRevisionId") => String.t(),
        required("ResourceArn") => String.t()
      }
      
  """
  @type delete_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      entity_types_list_item() :: %{
        "Type" => String.t()
      }
      
  """
  @type entity_types_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      job_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type job_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_key_phrases_detection_jobs_response() :: %{
        "KeyPhrasesDetectionJobPropertiesList" => list(key_phrases_detection_job_properties()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_key_phrases_detection_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      flywheel_model_evaluation_metrics() :: %{
        "AverageAccuracy" => float(),
        "AverageF1Score" => float(),
        "AveragePrecision" => float(),
        "AverageRecall" => float()
      }
      
  """
  @type flywheel_model_evaluation_metrics() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_flywheel_iteration_response() :: %{
        "FlywheelArn" => String.t(),
        "FlywheelIterationId" => String.t()
      }
      
  """
  @type start_flywheel_iteration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_detect_targeted_sentiment_response() :: %{
        "ErrorList" => list(batch_item_error()()),
        "ResultList" => list(batch_detect_targeted_sentiment_item_result()())
      }
      
  """
  @type batch_detect_targeted_sentiment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_dataset_request() :: %{
        required("DatasetArn") => String.t()
      }
      
  """
  @type describe_dataset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_document_classification_job_response() :: %{
        "DocumentClassifierArn" => String.t(),
        "JobArn" => String.t(),
        "JobId" => String.t(),
        "JobStatus" => list(any())
      }
      
  """
  @type start_document_classification_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_datasets_response() :: %{
        "DatasetPropertiesList" => list(dataset_properties()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_datasets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_endpoint_response() :: %{
        "EndpointArn" => String.t(),
        "ModelArn" => String.t()
      }
      
  """
  @type create_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      events_detection_job_filter() :: %{
        "JobName" => String.t(),
        "JobStatus" => list(any()),
        "SubmitTimeAfter" => non_neg_integer(),
        "SubmitTimeBefore" => non_neg_integer()
      }
      
  """
  @type events_detection_job_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      flywheel_properties() :: %{
        "ActiveModelArn" => String.t(),
        "CreationTime" => non_neg_integer(),
        "DataAccessRoleArn" => String.t(),
        "DataLakeS3Uri" => String.t(),
        "DataSecurityConfig" => data_security_config(),
        "FlywheelArn" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "LatestFlywheelIteration" => String.t(),
        "Message" => String.t(),
        "ModelType" => list(any()),
        "Status" => list(any()),
        "TaskConfig" => task_config()
      }
      
  """
  @type flywheel_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_toxic_content_response() :: %{
        "ResultList" => list(toxic_labels()())
      }
      
  """
  @type detect_toxic_content_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_dominant_language_detection_job_response() :: %{
        "JobArn" => String.t(),
        "JobId" => String.t(),
        "JobStatus" => list(any())
      }
      
  """
  @type start_dominant_language_detection_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_key_phrases_detection_job_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("JobName") => String.t(),
        optional("Tags") => list(tag()()),
        optional("VolumeKmsKeyId") => String.t(),
        optional("VpcConfig") => vpc_config(),
        required("DataAccessRoleArn") => String.t(),
        required("InputDataConfig") => input_data_config(),
        required("LanguageCode") => list(any()),
        required("OutputDataConfig") => output_data_config()
      }
      
  """
  @type start_key_phrases_detection_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_sentiment_detection_job_response() :: %{
        "SentimentDetectionJobProperties" => sentiment_detection_job_properties()
      }
      
  """
  @type describe_sentiment_detection_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      block() :: %{
        "BlockType" => list(any()),
        "Geometry" => geometry(),
        "Id" => String.t(),
        "Page" => integer(),
        "Relationships" => list(relationships_list_item()()),
        "Text" => String.t()
      }
      
  """
  @type block() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dataset_filter() :: %{
        "CreationTimeAfter" => non_neg_integer(),
        "CreationTimeBefore" => non_neg_integer(),
        "DatasetType" => list(any()),
        "Status" => list(any())
      }
      
  """
  @type dataset_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      child_block() :: %{
        "BeginOffset" => integer(),
        "ChildBlockId" => String.t(),
        "EndOffset" => integer()
      }
      
  """
  @type child_block() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_events_detection_job_response() :: %{
        "JobArn" => String.t(),
        "JobId" => String.t(),
        "JobStatus" => list(any())
      }
      
  """
  @type start_events_detection_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_entity_recognizer_summaries_response() :: %{
        "EntityRecognizerSummariesList" => list(entity_recognizer_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_entity_recognizer_summaries_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      targeted_sentiment_detection_job_properties() :: %{
        "DataAccessRoleArn" => String.t(),
        "EndTime" => non_neg_integer(),
        "InputDataConfig" => input_data_config(),
        "JobArn" => String.t(),
        "JobId" => String.t(),
        "JobName" => String.t(),
        "JobStatus" => list(any()),
        "LanguageCode" => list(any()),
        "Message" => String.t(),
        "OutputDataConfig" => output_data_config(),
        "SubmitTime" => non_neg_integer(),
        "VolumeKmsKeyId" => String.t(),
        "VpcConfig" => vpc_config()
      }
      
  """
  @type targeted_sentiment_detection_job_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_detect_entities_response() :: %{
        "ErrorList" => list(batch_item_error()()),
        "ResultList" => list(batch_detect_entities_item_result()())
      }
      
  """
  @type batch_detect_entities_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_model_request() :: %{
        optional("DataAccessRoleArn") => String.t(),
        optional("ModelKmsKeyId") => String.t(),
        optional("ModelName") => String.t(),
        optional("Tags") => list(tag()()),
        optional("VersionName") => String.t(),
        required("SourceModelArn") => String.t()
      }
      
  """
  @type import_model_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_events_detection_job_response() :: %{
        "JobId" => String.t(),
        "JobStatus" => list(any())
      }
      
  """
  @type stop_events_detection_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kms_key_validation_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type kms_key_validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_entities_detection_job_response() :: %{
        "JobId" => String.t(),
        "JobStatus" => list(any())
      }
      
  """
  @type stop_entities_detection_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_dominant_language_detection_jobs_request() :: %{
        optional("Filter") => dominant_language_detection_job_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_dominant_language_detection_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_pii_entities_detection_jobs_response() :: %{
        "NextToken" => String.t(),
        "PiiEntitiesDetectionJobPropertiesList" => list(pii_entities_detection_job_properties()())
      }
      
  """
  @type list_pii_entities_detection_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_flywheel_request() :: %{
        required("FlywheelArn") => String.t()
      }
      
  """
  @type describe_flywheel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dataset_entity_recognizer_input_data_config() :: %{
        "Annotations" => dataset_entity_recognizer_annotations(),
        "Documents" => dataset_entity_recognizer_documents(),
        "EntityList" => dataset_entity_recognizer_entity_list()
      }
      
  """
  @type dataset_entity_recognizer_input_data_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dataset_entity_recognizer_entity_list() :: %{
        "S3Uri" => String.t()
      }
      
  """
  @type dataset_entity_recognizer_entity_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_document_classifiers_request() :: %{
        optional("Filter") => document_classifier_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_document_classifiers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      flywheel_filter() :: %{
        "CreationTimeAfter" => non_neg_integer(),
        "CreationTimeBefore" => non_neg_integer(),
        "Status" => list(any())
      }
      
  """
  @type flywheel_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_detect_syntax_response() :: %{
        "ErrorList" => list(batch_item_error()()),
        "ResultList" => list(batch_detect_syntax_item_result()())
      }
      
  """
  @type batch_detect_syntax_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      entity_recognizer_output_data_config() :: %{
        "FlywheelStatsS3Prefix" => String.t()
      }
      
  """
  @type entity_recognizer_output_data_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      extracted_characters_list_item() :: %{
        "Count" => integer(),
        "Page" => integer()
      }
      
  """
  @type extracted_characters_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document_classification_config() :: %{
        "Labels" => list(String.t()()),
        "Mode" => list(any())
      }
      
  """
  @type document_classification_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_tags_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type too_many_tags_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      classify_document_response() :: %{
        "Classes" => list(document_class()()),
        "DocumentMetadata" => document_metadata(),
        "DocumentType" => list(document_type_list_item()()),
        "Errors" => list(errors_list_item()()),
        "Labels" => list(document_label()()),
        "Warnings" => list(warnings_list_item()())
      }
      
  """
  @type classify_document_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_flywheel_request() :: %{
        required("FlywheelArn") => String.t()
      }
      
  """
  @type delete_flywheel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_topics_detection_job_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("JobName") => String.t(),
        optional("NumberOfTopics") => integer(),
        optional("Tags") => list(tag()()),
        optional("VolumeKmsKeyId") => String.t(),
        optional("VpcConfig") => vpc_config(),
        required("DataAccessRoleArn") => String.t(),
        required("InputDataConfig") => input_data_config(),
        required("OutputDataConfig") => output_data_config()
      }
      
  """
  @type start_topics_detection_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_resource_policy_request() :: %{
        required("ResourceArn") => String.t()
      }
      
  """
  @type describe_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document_class() :: %{
        "Name" => String.t(),
        "Page" => integer(),
        "Score" => float()
      }
      
  """
  @type document_class() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      entity_types_evaluation_metrics() :: %{
        "F1Score" => float(),
        "Precision" => float(),
        "Recall" => float()
      }
      
  """
  @type entity_types_evaluation_metrics() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      entities_detection_job_filter() :: %{
        "JobName" => String.t(),
        "JobStatus" => list(any()),
        "SubmitTimeAfter" => non_neg_integer(),
        "SubmitTimeBefore" => non_neg_integer()
      }
      
  """
  @type entities_detection_job_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document_classification_job_properties() :: %{
        "DataAccessRoleArn" => String.t(),
        "DocumentClassifierArn" => String.t(),
        "EndTime" => non_neg_integer(),
        "FlywheelArn" => String.t(),
        "InputDataConfig" => input_data_config(),
        "JobArn" => String.t(),
        "JobId" => String.t(),
        "JobName" => String.t(),
        "JobStatus" => list(any()),
        "Message" => String.t(),
        "OutputDataConfig" => output_data_config(),
        "SubmitTime" => non_neg_integer(),
        "VolumeKmsKeyId" => String.t(),
        "VpcConfig" => vpc_config()
      }
      
  """
  @type document_classification_job_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_dominant_language_detection_jobs_response() :: %{
        "DominantLanguageDetectionJobPropertiesList" => list(dominant_language_detection_job_properties()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_dominant_language_detection_jobs_response() :: %{String.t() => any()}

  @type batch_detect_dominant_language_errors() ::
          text_size_limit_exceeded_exception()
          | internal_server_exception()
          | batch_size_limit_exceeded_exception()
          | invalid_request_exception()

  @type batch_detect_entities_errors() ::
          unsupported_language_exception()
          | text_size_limit_exceeded_exception()
          | internal_server_exception()
          | batch_size_limit_exceeded_exception()
          | invalid_request_exception()

  @type batch_detect_key_phrases_errors() ::
          unsupported_language_exception()
          | text_size_limit_exceeded_exception()
          | internal_server_exception()
          | batch_size_limit_exceeded_exception()
          | invalid_request_exception()

  @type batch_detect_sentiment_errors() ::
          unsupported_language_exception()
          | text_size_limit_exceeded_exception()
          | internal_server_exception()
          | batch_size_limit_exceeded_exception()
          | invalid_request_exception()

  @type batch_detect_syntax_errors() ::
          unsupported_language_exception()
          | text_size_limit_exceeded_exception()
          | internal_server_exception()
          | batch_size_limit_exceeded_exception()
          | invalid_request_exception()

  @type batch_detect_targeted_sentiment_errors() ::
          unsupported_language_exception()
          | text_size_limit_exceeded_exception()
          | internal_server_exception()
          | batch_size_limit_exceeded_exception()
          | invalid_request_exception()

  @type classify_document_errors() ::
          text_size_limit_exceeded_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | resource_unavailable_exception()

  @type contains_pii_entities_errors() ::
          unsupported_language_exception()
          | text_size_limit_exceeded_exception()
          | internal_server_exception()
          | invalid_request_exception()

  @type create_dataset_errors() ::
          too_many_tags_exception()
          | internal_server_exception()
          | resource_limit_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | resource_in_use_exception()

  @type create_document_classifier_errors() ::
          too_many_tags_exception()
          | kms_key_validation_exception()
          | unsupported_language_exception()
          | internal_server_exception()
          | resource_limit_exceeded_exception()
          | invalid_request_exception()
          | too_many_requests_exception()
          | resource_in_use_exception()

  @type create_endpoint_errors() ::
          too_many_tags_exception()
          | internal_server_exception()
          | resource_limit_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | resource_unavailable_exception()
          | resource_in_use_exception()

  @type create_entity_recognizer_errors() ::
          too_many_tags_exception()
          | kms_key_validation_exception()
          | unsupported_language_exception()
          | internal_server_exception()
          | resource_limit_exceeded_exception()
          | invalid_request_exception()
          | too_many_requests_exception()
          | resource_in_use_exception()

  @type create_flywheel_errors() ::
          too_many_tags_exception()
          | kms_key_validation_exception()
          | unsupported_language_exception()
          | internal_server_exception()
          | resource_limit_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | resource_unavailable_exception()
          | resource_in_use_exception()

  @type delete_document_classifier_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | resource_unavailable_exception()
          | resource_in_use_exception()

  @type delete_endpoint_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | resource_in_use_exception()

  @type delete_entity_recognizer_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | resource_unavailable_exception()
          | resource_in_use_exception()

  @type delete_flywheel_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | resource_unavailable_exception()
          | resource_in_use_exception()

  @type delete_resource_policy_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type describe_dataset_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type describe_document_classification_job_errors() ::
          job_not_found_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()

  @type describe_document_classifier_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type describe_dominant_language_detection_job_errors() ::
          job_not_found_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()

  @type describe_endpoint_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type describe_entities_detection_job_errors() ::
          job_not_found_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()

  @type describe_entity_recognizer_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type describe_events_detection_job_errors() ::
          job_not_found_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()

  @type describe_flywheel_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type describe_flywheel_iteration_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type describe_key_phrases_detection_job_errors() ::
          job_not_found_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()

  @type describe_pii_entities_detection_job_errors() ::
          job_not_found_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()

  @type describe_resource_policy_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type describe_sentiment_detection_job_errors() ::
          job_not_found_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()

  @type describe_targeted_sentiment_detection_job_errors() ::
          job_not_found_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()

  @type describe_topics_detection_job_errors() ::
          job_not_found_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()

  @type detect_dominant_language_errors() ::
          text_size_limit_exceeded_exception()
          | internal_server_exception()
          | invalid_request_exception()

  @type detect_entities_errors() ::
          unsupported_language_exception()
          | text_size_limit_exceeded_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | resource_unavailable_exception()

  @type detect_key_phrases_errors() ::
          unsupported_language_exception()
          | text_size_limit_exceeded_exception()
          | internal_server_exception()
          | invalid_request_exception()

  @type detect_pii_entities_errors() ::
          unsupported_language_exception()
          | text_size_limit_exceeded_exception()
          | internal_server_exception()
          | invalid_request_exception()

  @type detect_sentiment_errors() ::
          unsupported_language_exception()
          | text_size_limit_exceeded_exception()
          | internal_server_exception()
          | invalid_request_exception()

  @type detect_syntax_errors() ::
          unsupported_language_exception()
          | text_size_limit_exceeded_exception()
          | internal_server_exception()
          | invalid_request_exception()

  @type detect_targeted_sentiment_errors() ::
          unsupported_language_exception()
          | text_size_limit_exceeded_exception()
          | internal_server_exception()
          | invalid_request_exception()

  @type detect_toxic_content_errors() ::
          unsupported_language_exception()
          | text_size_limit_exceeded_exception()
          | internal_server_exception()
          | invalid_request_exception()

  @type import_model_errors() ::
          too_many_tags_exception()
          | kms_key_validation_exception()
          | internal_server_exception()
          | resource_limit_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | resource_unavailable_exception()
          | resource_in_use_exception()

  @type list_datasets_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | invalid_filter_exception()
          | too_many_requests_exception()

  @type list_document_classification_jobs_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | invalid_filter_exception()
          | too_many_requests_exception()

  @type list_document_classifier_summaries_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()

  @type list_document_classifiers_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | invalid_filter_exception()
          | too_many_requests_exception()

  @type list_dominant_language_detection_jobs_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | invalid_filter_exception()
          | too_many_requests_exception()

  @type list_endpoints_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()

  @type list_entities_detection_jobs_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | invalid_filter_exception()
          | too_many_requests_exception()

  @type list_entity_recognizer_summaries_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()

  @type list_entity_recognizers_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | invalid_filter_exception()
          | too_many_requests_exception()

  @type list_events_detection_jobs_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | invalid_filter_exception()
          | too_many_requests_exception()

  @type list_flywheel_iteration_history_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | invalid_filter_exception()
          | too_many_requests_exception()

  @type list_flywheels_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | invalid_filter_exception()
          | too_many_requests_exception()

  @type list_key_phrases_detection_jobs_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | invalid_filter_exception()
          | too_many_requests_exception()

  @type list_pii_entities_detection_jobs_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | invalid_filter_exception()
          | too_many_requests_exception()

  @type list_sentiment_detection_jobs_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | invalid_filter_exception()
          | too_many_requests_exception()

  @type list_tags_for_resource_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type list_targeted_sentiment_detection_jobs_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | invalid_filter_exception()
          | too_many_requests_exception()

  @type list_topics_detection_jobs_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | invalid_filter_exception()
          | too_many_requests_exception()

  @type put_resource_policy_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type start_document_classification_job_errors() ::
          too_many_tags_exception()
          | kms_key_validation_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | resource_unavailable_exception()
          | resource_in_use_exception()

  @type start_dominant_language_detection_job_errors() ::
          too_many_tags_exception()
          | kms_key_validation_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()
          | resource_in_use_exception()

  @type start_entities_detection_job_errors() ::
          too_many_tags_exception()
          | kms_key_validation_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | resource_unavailable_exception()
          | resource_in_use_exception()

  @type start_events_detection_job_errors() ::
          too_many_tags_exception()
          | kms_key_validation_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()
          | resource_in_use_exception()

  @type start_flywheel_iteration_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | resource_in_use_exception()

  @type start_key_phrases_detection_job_errors() ::
          too_many_tags_exception()
          | kms_key_validation_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()
          | resource_in_use_exception()

  @type start_pii_entities_detection_job_errors() ::
          too_many_tags_exception()
          | kms_key_validation_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()
          | resource_in_use_exception()

  @type start_sentiment_detection_job_errors() ::
          too_many_tags_exception()
          | kms_key_validation_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()
          | resource_in_use_exception()

  @type start_targeted_sentiment_detection_job_errors() ::
          too_many_tags_exception()
          | kms_key_validation_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()
          | resource_in_use_exception()

  @type start_topics_detection_job_errors() ::
          too_many_tags_exception()
          | kms_key_validation_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()
          | resource_in_use_exception()

  @type stop_dominant_language_detection_job_errors() ::
          job_not_found_exception() | internal_server_exception() | invalid_request_exception()

  @type stop_entities_detection_job_errors() ::
          job_not_found_exception() | internal_server_exception() | invalid_request_exception()

  @type stop_events_detection_job_errors() ::
          job_not_found_exception() | internal_server_exception() | invalid_request_exception()

  @type stop_key_phrases_detection_job_errors() ::
          job_not_found_exception() | internal_server_exception() | invalid_request_exception()

  @type stop_pii_entities_detection_job_errors() ::
          job_not_found_exception() | internal_server_exception() | invalid_request_exception()

  @type stop_sentiment_detection_job_errors() ::
          job_not_found_exception() | internal_server_exception() | invalid_request_exception()

  @type stop_targeted_sentiment_detection_job_errors() ::
          job_not_found_exception() | internal_server_exception() | invalid_request_exception()

  @type stop_training_document_classifier_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type stop_training_entity_recognizer_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type tag_resource_errors() ::
          too_many_tags_exception()
          | concurrent_modification_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          concurrent_modification_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_tag_keys_exception()

  @type update_endpoint_errors() ::
          internal_server_exception()
          | resource_limit_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | resource_unavailable_exception()
          | resource_in_use_exception()

  @type update_flywheel_errors() ::
          kms_key_validation_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  def metadata do
    %{
      api_version: "2017-11-27",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "comprehend",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Comprehend",
      signature_version: "v4",
      signing_name: "comprehend",
      target_prefix: "Comprehend_20171127"
    }
  end

  @doc """
  Determines the dominant language of the input text for a batch of documents. For
  a list of languages that Amazon Comprehend can detect, see [Amazon Comprehend
  Supported
  Languages](https://docs.aws.amazon.com/comprehend/latest/dg/how-languages.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20BatchDetectDominantLanguage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:batch_detect_dominant_language_request`)
    %{
      required("TextList") => list(String.t()())
    }
  """

  @spec batch_detect_dominant_language(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, batch_detect_dominant_language_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_detect_dominant_language_errors()}

  def batch_detect_dominant_language(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "BatchDetectDominantLanguage", input, options)
  end

  @doc """
  Inspects the text of a batch of documents for named entities and returns
  information about them. For more information about named entities, see
  [Entities](https://docs.aws.amazon.com/comprehend/latest/dg/how-entities.html)
  in the Comprehend Developer Guide.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20BatchDetectEntities&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:batch_detect_entities_request`)
    %{
      required("LanguageCode") => list(any()),
      required("TextList") => list(String.t()())
    }
  """

  @spec batch_detect_entities(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, batch_detect_entities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_detect_entities_errors()}

  def batch_detect_entities(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "BatchDetectEntities", input, options)
  end

  @doc """
  Detects the key noun phrases found in a batch of documents.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20BatchDetectKeyPhrases&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:batch_detect_key_phrases_request`)
    %{
      required("LanguageCode") => list(any()),
      required("TextList") => list(String.t()())
    }
  """

  @spec batch_detect_key_phrases(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, batch_detect_key_phrases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_detect_key_phrases_errors()}

  def batch_detect_key_phrases(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "BatchDetectKeyPhrases", input, options)
  end

  @doc """
  Inspects a batch of documents and returns an inference of the prevailing
  sentiment, `POSITIVE`, `NEUTRAL`, `MIXED`, or `NEGATIVE`, in each one.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20BatchDetectSentiment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:batch_detect_sentiment_request`)
    %{
      required("LanguageCode") => list(any()),
      required("TextList") => list(String.t()())
    }
  """

  @spec batch_detect_sentiment(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, batch_detect_sentiment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_detect_sentiment_errors()}

  def batch_detect_sentiment(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "BatchDetectSentiment", input, options)
  end

  @doc """
  Inspects the text of a batch of documents for the syntax and part of speech of
  the words in the document and returns information about them. For more
  information, see
  [Syntax](https://docs.aws.amazon.com/comprehend/latest/dg/how-syntax.html) in
  the Comprehend Developer Guide.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20BatchDetectSyntax&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:batch_detect_syntax_request`)
    %{
      required("LanguageCode") => list(any()),
      required("TextList") => list(String.t()())
    }
  """

  @spec batch_detect_syntax(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, batch_detect_syntax_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_detect_syntax_errors()}

  def batch_detect_syntax(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "BatchDetectSyntax", input, options)
  end

  @doc """
  Inspects a batch of documents and returns a sentiment analysis for each entity
  identified in the documents.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20BatchDetectTargetedSentiment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:batch_detect_targeted_sentiment_request`)
    %{
      required("LanguageCode") => list(any()),
      required("TextList") => list(String.t()())
    }
  """

  @spec batch_detect_targeted_sentiment(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, batch_detect_targeted_sentiment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_detect_targeted_sentiment_errors()}

  def batch_detect_targeted_sentiment(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "BatchDetectTargetedSentiment", input, options)
  end

  @doc """
  Creates a classification request to analyze a single document in real-time.
  `ClassifyDocument` supports the following model types:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20ClassifyDocument&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:classify_document_request`)
    %{
      optional("Bytes") => binary(),
      optional("DocumentReaderConfig") => document_reader_config(),
      optional("Text") => String.t(),
      required("EndpointArn") => String.t()
    }
  """

  @spec classify_document(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, classify_document_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, classify_document_errors()}

  def classify_document(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ClassifyDocument", input, options)
  end

  @doc """
  Analyzes input text for the presence of personally identifiable information
  (PII) and returns the labels of identified PII entity types such as name,
  address, bank account number, or phone number.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20ContainsPiiEntities&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:contains_pii_entities_request`)
    %{
      required("LanguageCode") => list(any()),
      required("Text") => String.t()
    }
  """

  @spec contains_pii_entities(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, contains_pii_entities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, contains_pii_entities_errors()}

  def contains_pii_entities(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ContainsPiiEntities", input, options)
  end

  @doc """
  Creates a dataset to upload training or test data for a model associated with a
  flywheel. For more information about datasets, see [ Flywheel
  overview](https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html)
  in the *Amazon Comprehend Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20CreateDataset&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_dataset_request`)
    %{
      optional("ClientRequestToken") => String.t(),
      optional("DatasetType") => list(any()),
      optional("Description") => String.t(),
      optional("Tags") => list(tag()()),
      required("DatasetName") => String.t(),
      required("FlywheelArn") => String.t(),
      required("InputDataConfig") => dataset_input_data_config()
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
  Creates a new document classifier that you can use to categorize documents. To
  create a classifier, you provide a set of training documents that are labeled
  with the categories that you want to use. For more information, see [Training
  classifier
  models](https://docs.aws.amazon.com/comprehend/latest/dg/training-classifier-model.html)
  in the Comprehend Developer Guide.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20CreateDocumentClassifier&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_document_classifier_request`)
    %{
      optional("ClientRequestToken") => String.t(),
      optional("Mode") => list(any()),
      optional("ModelKmsKeyId") => String.t(),
      optional("ModelPolicy") => String.t(),
      optional("OutputDataConfig") => document_classifier_output_data_config(),
      optional("Tags") => list(tag()()),
      optional("VersionName") => String.t(),
      optional("VolumeKmsKeyId") => String.t(),
      optional("VpcConfig") => vpc_config(),
      required("DataAccessRoleArn") => String.t(),
      required("DocumentClassifierName") => String.t(),
      required("InputDataConfig") => document_classifier_input_data_config(),
      required("LanguageCode") => list(any())
    }
  """

  @spec create_document_classifier(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_document_classifier_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_document_classifier_errors()}

  def create_document_classifier(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateDocumentClassifier", input, options)
  end

  @doc """
  Creates a model-specific endpoint for synchronous inference for a previously
  trained custom model For information about endpoints, see [Managing
  endpoints](https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20CreateEndpoint&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_endpoint_request`)
    %{
      optional("ClientRequestToken") => String.t(),
      optional("DataAccessRoleArn") => String.t(),
      optional("FlywheelArn") => String.t(),
      optional("ModelArn") => String.t(),
      optional("Tags") => list(tag()()),
      required("DesiredInferenceUnits") => integer(),
      required("EndpointName") => String.t()
    }
  """

  @spec create_endpoint(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_endpoint_errors()}

  def create_endpoint(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateEndpoint", input, options)
  end

  @doc """
  Creates an entity recognizer using submitted files. After your
  `CreateEntityRecognizer` request is submitted, you can check job status using
  the `DescribeEntityRecognizer` API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20CreateEntityRecognizer&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_entity_recognizer_request`)
    %{
      optional("ClientRequestToken") => String.t(),
      optional("ModelKmsKeyId") => String.t(),
      optional("ModelPolicy") => String.t(),
      optional("Tags") => list(tag()()),
      optional("VersionName") => String.t(),
      optional("VolumeKmsKeyId") => String.t(),
      optional("VpcConfig") => vpc_config(),
      required("DataAccessRoleArn") => String.t(),
      required("InputDataConfig") => entity_recognizer_input_data_config(),
      required("LanguageCode") => list(any()),
      required("RecognizerName") => String.t()
    }
  """

  @spec create_entity_recognizer(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_entity_recognizer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_entity_recognizer_errors()}

  def create_entity_recognizer(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateEntityRecognizer", input, options)
  end

  @doc """
  A flywheel is an Amazon Web Services resource that orchestrates the ongoing
  training of a model for custom classification or custom entity recognition.
  You can create a flywheel to start with an existing trained model, or
  Comprehend can create and train a new model. When you create the flywheel,
  Comprehend creates a data lake in your account. The data lake holds the
  training data and test data for all versions of the model.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20CreateFlywheel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_flywheel_request`)
    %{
      optional("ActiveModelArn") => String.t(),
      optional("ClientRequestToken") => String.t(),
      optional("DataSecurityConfig") => data_security_config(),
      optional("ModelType") => list(any()),
      optional("Tags") => list(tag()()),
      optional("TaskConfig") => task_config(),
      required("DataAccessRoleArn") => String.t(),
      required("DataLakeS3Uri") => String.t(),
      required("FlywheelName") => String.t()
    }
  """

  @spec create_flywheel(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_flywheel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_flywheel_errors()}

  def create_flywheel(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateFlywheel", input, options)
  end

  @doc """
  Deletes a previously created document classifier Only those classifiers that are
  in terminated states (IN_ERROR, TRAINED) will be deleted. If an active
  inference job is using the model, a `ResourceInUseException` will be returned.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20DeleteDocumentClassifier&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_document_classifier_request`)
    %{
      required("DocumentClassifierArn") => String.t()
    }
  """

  @spec delete_document_classifier(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_document_classifier_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_document_classifier_errors()}

  def delete_document_classifier(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteDocumentClassifier", input, options)
  end

  @doc """
  Deletes a model-specific endpoint for a previously-trained custom model. All
  endpoints must be deleted in order for the model to be deleted. For
  information about endpoints, see [Managing
  endpoints](https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20DeleteEndpoint&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_endpoint_request`)
    %{
      required("EndpointArn") => String.t()
    }
  """

  @spec delete_endpoint(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_endpoint_errors()}

  def delete_endpoint(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteEndpoint", input, options)
  end

  @doc """
  Deletes an entity recognizer. Only those recognizers that are in terminated
  states (IN_ERROR, TRAINED) will be deleted. If an active inference job is
  using the model, a `ResourceInUseException` will be returned.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20DeleteEntityRecognizer&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_entity_recognizer_request`)
    %{
      required("EntityRecognizerArn") => String.t()
    }
  """

  @spec delete_entity_recognizer(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_entity_recognizer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_entity_recognizer_errors()}

  def delete_entity_recognizer(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteEntityRecognizer", input, options)
  end

  @doc """
  Deletes a flywheel. When you delete the flywheel, Amazon Comprehend does not
  delete the data lake or the model associated with the flywheel.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20DeleteFlywheel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_flywheel_request`)
    %{
      required("FlywheelArn") => String.t()
    }
  """

  @spec delete_flywheel(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_flywheel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_flywheel_errors()}

  def delete_flywheel(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteFlywheel", input, options)
  end

  @doc """
  Deletes a resource-based policy that is attached to a custom model.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20DeleteResourcePolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_resource_policy_request`)
    %{
      optional("PolicyRevisionId") => String.t(),
      required("ResourceArn") => String.t()
    }
  """

  @spec delete_resource_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_resource_policy_errors()}

  def delete_resource_policy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteResourcePolicy", input, options)
  end

  @doc """
  Returns information about the dataset that you specify. For more information
  about datasets, see [ Flywheel
  overview](https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html)
  in the *Amazon Comprehend Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20DescribeDataset&this_doc_guide=API%2520Reference)

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
  Gets the properties associated with a document classification job. Use this
  operation to get the status of a classification job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20DescribeDocumentClassificationJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_document_classification_job_request`)
    %{
      required("JobId") => String.t()
    }
  """

  @spec describe_document_classification_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_document_classification_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_document_classification_job_errors()}

  def describe_document_classification_job(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeDocumentClassificationJob", input, options)
  end

  @doc """
  Gets the properties associated with a document classifier.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20DescribeDocumentClassifier&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_document_classifier_request`)
    %{
      required("DocumentClassifierArn") => String.t()
    }
  """

  @spec describe_document_classifier(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_document_classifier_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_document_classifier_errors()}

  def describe_document_classifier(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeDocumentClassifier", input, options)
  end

  @doc """
  Gets the properties associated with a dominant language detection job. Use this
  operation to get the status of a detection job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20DescribeDominantLanguageDetectionJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_dominant_language_detection_job_request`)
    %{
      required("JobId") => String.t()
    }
  """

  @spec describe_dominant_language_detection_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_dominant_language_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_dominant_language_detection_job_errors()}

  def describe_dominant_language_detection_job(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeDominantLanguageDetectionJob", input, options)
  end

  @doc """
  Gets the properties associated with a specific endpoint. Use this operation to
  get the status of an endpoint. For information about endpoints, see [Managing
  endpoints](https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20DescribeEndpoint&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_endpoint_request`)
    %{
      required("EndpointArn") => String.t()
    }
  """

  @spec describe_endpoint(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_endpoint_errors()}

  def describe_endpoint(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeEndpoint", input, options)
  end

  @doc """
  Gets the properties associated with an entities detection job. Use this
  operation to get the status of a detection job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20DescribeEntitiesDetectionJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_entities_detection_job_request`)
    %{
      required("JobId") => String.t()
    }
  """

  @spec describe_entities_detection_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_entities_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_entities_detection_job_errors()}

  def describe_entities_detection_job(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeEntitiesDetectionJob", input, options)
  end

  @doc """
  Provides details about an entity recognizer including status, S3 buckets
  containing training data, recognizer metadata, metrics, and so on.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20DescribeEntityRecognizer&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_entity_recognizer_request`)
    %{
      required("EntityRecognizerArn") => String.t()
    }
  """

  @spec describe_entity_recognizer(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_entity_recognizer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_entity_recognizer_errors()}

  def describe_entity_recognizer(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeEntityRecognizer", input, options)
  end

  @doc """
  Gets the status and details of an events detection job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20DescribeEventsDetectionJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_events_detection_job_request`)
    %{
      required("JobId") => String.t()
    }
  """

  @spec describe_events_detection_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_events_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_events_detection_job_errors()}

  def describe_events_detection_job(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeEventsDetectionJob", input, options)
  end

  @doc """
  Provides configuration information about the flywheel. For more information
  about flywheels, see [ Flywheel
  overview](https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html)
  in the *Amazon Comprehend Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20DescribeFlywheel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_flywheel_request`)
    %{
      required("FlywheelArn") => String.t()
    }
  """

  @spec describe_flywheel(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_flywheel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_flywheel_errors()}

  def describe_flywheel(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeFlywheel", input, options)
  end

  @doc """
  Retrieve the configuration properties of a flywheel iteration. For more
  information about flywheels, see [ Flywheel
  overview](https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html)
  in the *Amazon Comprehend Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20DescribeFlywheelIteration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_flywheel_iteration_request`)
    %{
      required("FlywheelArn") => String.t(),
      required("FlywheelIterationId") => String.t()
    }
  """

  @spec describe_flywheel_iteration(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_flywheel_iteration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_flywheel_iteration_errors()}

  def describe_flywheel_iteration(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeFlywheelIteration", input, options)
  end

  @doc """
  Gets the properties associated with a key phrases detection job. Use this
  operation to get the status of a detection job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20DescribeKeyPhrasesDetectionJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_key_phrases_detection_job_request`)
    %{
      required("JobId") => String.t()
    }
  """

  @spec describe_key_phrases_detection_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_key_phrases_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_key_phrases_detection_job_errors()}

  def describe_key_phrases_detection_job(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeKeyPhrasesDetectionJob", input, options)
  end

  @doc """
  Gets the properties associated with a PII entities detection job. For example,
  you can use this operation to get the job status.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20DescribePiiEntitiesDetectionJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_pii_entities_detection_job_request`)
    %{
      required("JobId") => String.t()
    }
  """

  @spec describe_pii_entities_detection_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_pii_entities_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_pii_entities_detection_job_errors()}

  def describe_pii_entities_detection_job(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribePiiEntitiesDetectionJob", input, options)
  end

  @doc """
  Gets the details of a resource-based policy that is attached to a custom model,
  including the JSON body of the policy.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20DescribeResourcePolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_resource_policy_request`)
    %{
      required("ResourceArn") => String.t()
    }
  """

  @spec describe_resource_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_resource_policy_errors()}

  def describe_resource_policy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeResourcePolicy", input, options)
  end

  @doc """
  Gets the properties associated with a sentiment detection job. Use this
  operation to get the status of a detection job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20DescribeSentimentDetectionJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_sentiment_detection_job_request`)
    %{
      required("JobId") => String.t()
    }
  """

  @spec describe_sentiment_detection_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_sentiment_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_sentiment_detection_job_errors()}

  def describe_sentiment_detection_job(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeSentimentDetectionJob", input, options)
  end

  @doc """
  Gets the properties associated with a targeted sentiment detection job. Use this
  operation to get the status of the job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20DescribeTargetedSentimentDetectionJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_targeted_sentiment_detection_job_request`)
    %{
      required("JobId") => String.t()
    }
  """

  @spec describe_targeted_sentiment_detection_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_targeted_sentiment_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_targeted_sentiment_detection_job_errors()}

  def describe_targeted_sentiment_detection_job(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeTargetedSentimentDetectionJob", input, options)
  end

  @doc """
  Gets the properties associated with a topic detection job. Use this operation to
  get the status of a detection job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20DescribeTopicsDetectionJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_topics_detection_job_request`)
    %{
      required("JobId") => String.t()
    }
  """

  @spec describe_topics_detection_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_topics_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_topics_detection_job_errors()}

  def describe_topics_detection_job(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeTopicsDetectionJob", input, options)
  end

  @doc """
  Determines the dominant language of the input text. For a list of languages that
  Amazon Comprehend can detect, see [Amazon Comprehend Supported
  Languages](https://docs.aws.amazon.com/comprehend/latest/dg/how-languages.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20DetectDominantLanguage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:detect_dominant_language_request`)
    %{
      required("Text") => String.t()
    }
  """

  @spec detect_dominant_language(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, detect_dominant_language_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, detect_dominant_language_errors()}

  def detect_dominant_language(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DetectDominantLanguage", input, options)
  end

  @doc """
  Detects named entities in input text when you use the pre-trained model. Detects
  custom entities if you have a custom entity recognition model. When detecting
  named entities using the pre-trained model, use plain text as the input. For
  more information about named entities, see
  [Entities](https://docs.aws.amazon.com/comprehend/latest/dg/how-entities.html)
  in the Comprehend Developer Guide. When you use a custom entity recognition
  model, you can input plain text or you can upload a single-page input document
  (text, PDF, Word, or image).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20DetectEntities&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:detect_entities_request`)
    %{
      optional("Bytes") => binary(),
      optional("DocumentReaderConfig") => document_reader_config(),
      optional("EndpointArn") => String.t(),
      optional("LanguageCode") => list(any()),
      optional("Text") => String.t()
    }
  """

  @spec detect_entities(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, detect_entities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, detect_entities_errors()}

  def detect_entities(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DetectEntities", input, options)
  end

  @doc """
  Detects the key noun phrases found in the text.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20DetectKeyPhrases&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:detect_key_phrases_request`)
    %{
      required("LanguageCode") => list(any()),
      required("Text") => String.t()
    }
  """

  @spec detect_key_phrases(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, detect_key_phrases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, detect_key_phrases_errors()}

  def detect_key_phrases(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DetectKeyPhrases", input, options)
  end

  @doc """
  Inspects the input text for entities that contain personally identifiable
  information (PII) and returns information about them.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20DetectPiiEntities&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:detect_pii_entities_request`)
    %{
      required("LanguageCode") => list(any()),
      required("Text") => String.t()
    }
  """

  @spec detect_pii_entities(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, detect_pii_entities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, detect_pii_entities_errors()}

  def detect_pii_entities(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DetectPiiEntities", input, options)
  end

  @doc """
  Inspects text and returns an inference of the prevailing sentiment (`POSITIVE`,
  `NEUTRAL`, `MIXED`, or `NEGATIVE`).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20DetectSentiment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:detect_sentiment_request`)
    %{
      required("LanguageCode") => list(any()),
      required("Text") => String.t()
    }
  """

  @spec detect_sentiment(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, detect_sentiment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, detect_sentiment_errors()}

  def detect_sentiment(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DetectSentiment", input, options)
  end

  @doc """
  Inspects text for syntax and the part of speech of words in the document. For
  more information, see
  [Syntax](https://docs.aws.amazon.com/comprehend/latest/dg/how-syntax.html) in
  the Comprehend Developer Guide.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20DetectSyntax&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:detect_syntax_request`)
    %{
      required("LanguageCode") => list(any()),
      required("Text") => String.t()
    }
  """

  @spec detect_syntax(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, detect_syntax_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, detect_syntax_errors()}

  def detect_syntax(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DetectSyntax", input, options)
  end

  @doc """
  Inspects the input text and returns a sentiment analysis for each entity
  identified in the text.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20DetectTargetedSentiment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:detect_targeted_sentiment_request`)
    %{
      required("LanguageCode") => list(any()),
      required("Text") => String.t()
    }
  """

  @spec detect_targeted_sentiment(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, detect_targeted_sentiment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, detect_targeted_sentiment_errors()}

  def detect_targeted_sentiment(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DetectTargetedSentiment", input, options)
  end

  @doc """
  Performs toxicity analysis on the list of text strings that you provide as
  input. The API response contains a results list that matches the size of the
  input list. For more information about toxicity detection, see [Toxicity
  detection](https://docs.aws.amazon.com/comprehend/latest/dg/toxicity-detection.html)
  in the *Amazon Comprehend Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20DetectToxicContent&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:detect_toxic_content_request`)
    %{
      required("LanguageCode") => list(any()),
      required("TextSegments") => list(text_segment()())
    }
  """

  @spec detect_toxic_content(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, detect_toxic_content_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, detect_toxic_content_errors()}

  def detect_toxic_content(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DetectToxicContent", input, options)
  end

  @doc """
  Creates a new custom model that replicates a source custom model that you
  import. The source model can be in your Amazon Web Services account or another
  one. If the source model is in another Amazon Web Services account, then it
  must have a resource-based policy that authorizes you to import it.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20ImportModel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:import_model_request`)
    %{
      optional("DataAccessRoleArn") => String.t(),
      optional("ModelKmsKeyId") => String.t(),
      optional("ModelName") => String.t(),
      optional("Tags") => list(tag()()),
      optional("VersionName") => String.t(),
      required("SourceModelArn") => String.t()
    }
  """

  @spec import_model(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, import_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, import_model_errors()}

  def import_model(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ImportModel", input, options)
  end

  @doc """
  List the datasets that you have configured in this Region. For more information
  about datasets, see [ Flywheel
  overview](https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html)
  in the *Amazon Comprehend Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20ListDatasets&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_datasets_request`)
    %{
      optional("Filter") => dataset_filter(),
      optional("FlywheelArn") => String.t(),
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
  Gets a list of the documentation classification jobs that you have submitted.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20ListDocumentClassificationJobs&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_document_classification_jobs_request`)
    %{
      optional("Filter") => document_classification_job_filter(),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec list_document_classification_jobs(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_document_classification_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_document_classification_jobs_errors()}

  def list_document_classification_jobs(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListDocumentClassificationJobs", input, options)
  end

  @doc """
  Gets a list of summaries of the document classifiers that you have created

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20ListDocumentClassifierSummaries&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_document_classifier_summaries_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec list_document_classifier_summaries(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_document_classifier_summaries_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_document_classifier_summaries_errors()}

  def list_document_classifier_summaries(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListDocumentClassifierSummaries", input, options)
  end

  @doc """
  Gets a list of the document classifiers that you have created.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20ListDocumentClassifiers&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_document_classifiers_request`)
    %{
      optional("Filter") => document_classifier_filter(),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec list_document_classifiers(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_document_classifiers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_document_classifiers_errors()}

  def list_document_classifiers(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListDocumentClassifiers", input, options)
  end

  @doc """
  Gets a list of the dominant language detection jobs that you have submitted.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20ListDominantLanguageDetectionJobs&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_dominant_language_detection_jobs_request`)
    %{
      optional("Filter") => dominant_language_detection_job_filter(),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec list_dominant_language_detection_jobs(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_dominant_language_detection_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_dominant_language_detection_jobs_errors()}

  def list_dominant_language_detection_jobs(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListDominantLanguageDetectionJobs", input, options)
  end

  @doc """
  Gets a list of all existing endpoints that you've created. For information about
  endpoints, see [Managing
  endpoints](https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20ListEndpoints&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_endpoints_request`)
    %{
      optional("Filter") => endpoint_filter(),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec list_endpoints(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_endpoints_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_endpoints_errors()}

  def list_endpoints(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListEndpoints", input, options)
  end

  @doc """
  Gets a list of the entity detection jobs that you have submitted.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20ListEntitiesDetectionJobs&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_entities_detection_jobs_request`)
    %{
      optional("Filter") => entities_detection_job_filter(),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec list_entities_detection_jobs(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_entities_detection_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_entities_detection_jobs_errors()}

  def list_entities_detection_jobs(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListEntitiesDetectionJobs", input, options)
  end

  @doc """
  Gets a list of summaries for the entity recognizers that you have created.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20ListEntityRecognizerSummaries&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_entity_recognizer_summaries_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec list_entity_recognizer_summaries(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_entity_recognizer_summaries_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_entity_recognizer_summaries_errors()}

  def list_entity_recognizer_summaries(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListEntityRecognizerSummaries", input, options)
  end

  @doc """
  Gets a list of the properties of all entity recognizers that you created,
  including recognizers currently in training. Allows you to filter the list of
  recognizers based on criteria such as status and submission time. This call
  returns up to 500 entity recognizers in the list, with a default number of 100
  recognizers in the list.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20ListEntityRecognizers&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_entity_recognizers_request`)
    %{
      optional("Filter") => entity_recognizer_filter(),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec list_entity_recognizers(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_entity_recognizers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_entity_recognizers_errors()}

  def list_entity_recognizers(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListEntityRecognizers", input, options)
  end

  @doc """
  Gets a list of the events detection jobs that you have submitted.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20ListEventsDetectionJobs&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_events_detection_jobs_request`)
    %{
      optional("Filter") => events_detection_job_filter(),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec list_events_detection_jobs(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_events_detection_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_events_detection_jobs_errors()}

  def list_events_detection_jobs(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListEventsDetectionJobs", input, options)
  end

  @doc """
  Information about the history of a flywheel iteration. For more information
  about flywheels, see [ Flywheel
  overview](https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html)
  in the *Amazon Comprehend Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20ListFlywheelIterationHistory&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_flywheel_iteration_history_request`)
    %{
      optional("Filter") => flywheel_iteration_filter(),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("FlywheelArn") => String.t()
    }
  """

  @spec list_flywheel_iteration_history(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_flywheel_iteration_history_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_flywheel_iteration_history_errors()}

  def list_flywheel_iteration_history(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListFlywheelIterationHistory", input, options)
  end

  @doc """
  Gets a list of the flywheels that you have created.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20ListFlywheels&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_flywheels_request`)
    %{
      optional("Filter") => flywheel_filter(),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec list_flywheels(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_flywheels_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_flywheels_errors()}

  def list_flywheels(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListFlywheels", input, options)
  end

  @doc """
  Get a list of key phrase detection jobs that you have submitted.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20ListKeyPhrasesDetectionJobs&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_key_phrases_detection_jobs_request`)
    %{
      optional("Filter") => key_phrases_detection_job_filter(),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec list_key_phrases_detection_jobs(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_key_phrases_detection_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_key_phrases_detection_jobs_errors()}

  def list_key_phrases_detection_jobs(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListKeyPhrasesDetectionJobs", input, options)
  end

  @doc """
  Gets a list of the PII entity detection jobs that you have submitted.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20ListPiiEntitiesDetectionJobs&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_pii_entities_detection_jobs_request`)
    %{
      optional("Filter") => pii_entities_detection_job_filter(),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec list_pii_entities_detection_jobs(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_pii_entities_detection_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_pii_entities_detection_jobs_errors()}

  def list_pii_entities_detection_jobs(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListPiiEntitiesDetectionJobs", input, options)
  end

  @doc """
  Gets a list of sentiment detection jobs that you have submitted.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20ListSentimentDetectionJobs&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_sentiment_detection_jobs_request`)
    %{
      optional("Filter") => sentiment_detection_job_filter(),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec list_sentiment_detection_jobs(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_sentiment_detection_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_sentiment_detection_jobs_errors()}

  def list_sentiment_detection_jobs(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListSentimentDetectionJobs", input, options)
  end

  @doc """
  Lists all tags associated with a given Amazon Comprehend resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20ListTagsForResource&this_doc_guide=API%2520Reference)

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
  Gets a list of targeted sentiment detection jobs that you have submitted.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20ListTargetedSentimentDetectionJobs&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_targeted_sentiment_detection_jobs_request`)
    %{
      optional("Filter") => targeted_sentiment_detection_job_filter(),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec list_targeted_sentiment_detection_jobs(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_targeted_sentiment_detection_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_targeted_sentiment_detection_jobs_errors()}

  def list_targeted_sentiment_detection_jobs(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTargetedSentimentDetectionJobs", input, options)
  end

  @doc """
  Gets a list of the topic detection jobs that you have submitted.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20ListTopicsDetectionJobs&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_topics_detection_jobs_request`)
    %{
      optional("Filter") => topics_detection_job_filter(),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec list_topics_detection_jobs(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_topics_detection_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_topics_detection_jobs_errors()}

  def list_topics_detection_jobs(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTopicsDetectionJobs", input, options)
  end

  @doc """
  Attaches a resource-based policy to a custom model. You can use this policy to
  authorize an entity in another Amazon Web Services account to import the
  custom model, which replicates it in Amazon Comprehend in their account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20PutResourcePolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_resource_policy_request`)
    %{
      optional("PolicyRevisionId") => String.t(),
      required("ResourceArn") => String.t(),
      required("ResourcePolicy") => String.t()
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
  Starts an asynchronous document classification job using a custom classification
  model. Use the `DescribeDocumentClassificationJob` operation to track the
  progress of the job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20StartDocumentClassificationJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:start_document_classification_job_request`)
    %{
      optional("ClientRequestToken") => String.t(),
      optional("DocumentClassifierArn") => String.t(),
      optional("FlywheelArn") => String.t(),
      optional("JobName") => String.t(),
      optional("Tags") => list(tag()()),
      optional("VolumeKmsKeyId") => String.t(),
      optional("VpcConfig") => vpc_config(),
      required("DataAccessRoleArn") => String.t(),
      required("InputDataConfig") => input_data_config(),
      required("OutputDataConfig") => output_data_config()
    }
  """

  @spec start_document_classification_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, start_document_classification_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_document_classification_job_errors()}

  def start_document_classification_job(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartDocumentClassificationJob", input, options)
  end

  @doc """
  Starts an asynchronous dominant language detection job for a collection of
  documents. Use the operation to track the status of a job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20StartDominantLanguageDetectionJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:start_dominant_language_detection_job_request`)
    %{
      optional("ClientRequestToken") => String.t(),
      optional("JobName") => String.t(),
      optional("Tags") => list(tag()()),
      optional("VolumeKmsKeyId") => String.t(),
      optional("VpcConfig") => vpc_config(),
      required("DataAccessRoleArn") => String.t(),
      required("InputDataConfig") => input_data_config(),
      required("OutputDataConfig") => output_data_config()
    }
  """

  @spec start_dominant_language_detection_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, start_dominant_language_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_dominant_language_detection_job_errors()}

  def start_dominant_language_detection_job(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartDominantLanguageDetectionJob", input, options)
  end

  @doc """
  Starts an asynchronous entity detection job for a collection of documents. Use
  the operation to track the status of a job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20StartEntitiesDetectionJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:start_entities_detection_job_request`)
    %{
      optional("ClientRequestToken") => String.t(),
      optional("EntityRecognizerArn") => String.t(),
      optional("FlywheelArn") => String.t(),
      optional("JobName") => String.t(),
      optional("Tags") => list(tag()()),
      optional("VolumeKmsKeyId") => String.t(),
      optional("VpcConfig") => vpc_config(),
      required("DataAccessRoleArn") => String.t(),
      required("InputDataConfig") => input_data_config(),
      required("LanguageCode") => list(any()),
      required("OutputDataConfig") => output_data_config()
    }
  """

  @spec start_entities_detection_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, start_entities_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_entities_detection_job_errors()}

  def start_entities_detection_job(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartEntitiesDetectionJob", input, options)
  end

  @doc """
  Starts an asynchronous event detection job for a collection of documents.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20StartEventsDetectionJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:start_events_detection_job_request`)
    %{
      optional("ClientRequestToken") => String.t(),
      optional("JobName") => String.t(),
      optional("Tags") => list(tag()()),
      required("DataAccessRoleArn") => String.t(),
      required("InputDataConfig") => input_data_config(),
      required("LanguageCode") => list(any()),
      required("OutputDataConfig") => output_data_config(),
      required("TargetEventTypes") => list(String.t()())
    }
  """

  @spec start_events_detection_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, start_events_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_events_detection_job_errors()}

  def start_events_detection_job(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartEventsDetectionJob", input, options)
  end

  @doc """
  Start the flywheel iteration.This operation uses any new datasets to train a new
  model version. For more information about flywheels, see [ Flywheel
  overview](https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html)
  in the *Amazon Comprehend Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20StartFlywheelIteration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:start_flywheel_iteration_request`)
    %{
      optional("ClientRequestToken") => String.t(),
      required("FlywheelArn") => String.t()
    }
  """

  @spec start_flywheel_iteration(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, start_flywheel_iteration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_flywheel_iteration_errors()}

  def start_flywheel_iteration(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartFlywheelIteration", input, options)
  end

  @doc """
  Starts an asynchronous key phrase detection job for a collection of documents.
  Use the operation to track the status of a job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20StartKeyPhrasesDetectionJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:start_key_phrases_detection_job_request`)
    %{
      optional("ClientRequestToken") => String.t(),
      optional("JobName") => String.t(),
      optional("Tags") => list(tag()()),
      optional("VolumeKmsKeyId") => String.t(),
      optional("VpcConfig") => vpc_config(),
      required("DataAccessRoleArn") => String.t(),
      required("InputDataConfig") => input_data_config(),
      required("LanguageCode") => list(any()),
      required("OutputDataConfig") => output_data_config()
    }
  """

  @spec start_key_phrases_detection_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, start_key_phrases_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_key_phrases_detection_job_errors()}

  def start_key_phrases_detection_job(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartKeyPhrasesDetectionJob", input, options)
  end

  @doc """
  Starts an asynchronous PII entity detection job for a collection of documents.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20StartPiiEntitiesDetectionJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:start_pii_entities_detection_job_request`)
    %{
      optional("ClientRequestToken") => String.t(),
      optional("JobName") => String.t(),
      optional("RedactionConfig") => redaction_config(),
      optional("Tags") => list(tag()()),
      required("DataAccessRoleArn") => String.t(),
      required("InputDataConfig") => input_data_config(),
      required("LanguageCode") => list(any()),
      required("Mode") => list(any()),
      required("OutputDataConfig") => output_data_config()
    }
  """

  @spec start_pii_entities_detection_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, start_pii_entities_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_pii_entities_detection_job_errors()}

  def start_pii_entities_detection_job(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartPiiEntitiesDetectionJob", input, options)
  end

  @doc """
  Starts an asynchronous sentiment detection job for a collection of documents.
  Use the operation to track the status of a job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20StartSentimentDetectionJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:start_sentiment_detection_job_request`)
    %{
      optional("ClientRequestToken") => String.t(),
      optional("JobName") => String.t(),
      optional("Tags") => list(tag()()),
      optional("VolumeKmsKeyId") => String.t(),
      optional("VpcConfig") => vpc_config(),
      required("DataAccessRoleArn") => String.t(),
      required("InputDataConfig") => input_data_config(),
      required("LanguageCode") => list(any()),
      required("OutputDataConfig") => output_data_config()
    }
  """

  @spec start_sentiment_detection_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, start_sentiment_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_sentiment_detection_job_errors()}

  def start_sentiment_detection_job(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartSentimentDetectionJob", input, options)
  end

  @doc """
  Starts an asynchronous targeted sentiment detection job for a collection of
  documents. Use the `DescribeTargetedSentimentDetectionJob` operation to track
  the status of a job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20StartTargetedSentimentDetectionJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:start_targeted_sentiment_detection_job_request`)
    %{
      optional("ClientRequestToken") => String.t(),
      optional("JobName") => String.t(),
      optional("Tags") => list(tag()()),
      optional("VolumeKmsKeyId") => String.t(),
      optional("VpcConfig") => vpc_config(),
      required("DataAccessRoleArn") => String.t(),
      required("InputDataConfig") => input_data_config(),
      required("LanguageCode") => list(any()),
      required("OutputDataConfig") => output_data_config()
    }
  """

  @spec start_targeted_sentiment_detection_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, start_targeted_sentiment_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_targeted_sentiment_detection_job_errors()}

  def start_targeted_sentiment_detection_job(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartTargetedSentimentDetectionJob", input, options)
  end

  @doc """
  Starts an asynchronous topic detection job. Use the `DescribeTopicDetectionJob`
  operation to track the status of a job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20StartTopicsDetectionJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:start_topics_detection_job_request`)
    %{
      optional("ClientRequestToken") => String.t(),
      optional("JobName") => String.t(),
      optional("NumberOfTopics") => integer(),
      optional("Tags") => list(tag()()),
      optional("VolumeKmsKeyId") => String.t(),
      optional("VpcConfig") => vpc_config(),
      required("DataAccessRoleArn") => String.t(),
      required("InputDataConfig") => input_data_config(),
      required("OutputDataConfig") => output_data_config()
    }
  """

  @spec start_topics_detection_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, start_topics_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_topics_detection_job_errors()}

  def start_topics_detection_job(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartTopicsDetectionJob", input, options)
  end

  @doc """
  Stops a dominant language detection job in progress. If the job state is
  `IN_PROGRESS` the job is marked for termination and put into the
  `STOP_REQUESTED` state. If the job completes before it can be stopped, it is
  put into the `COMPLETED` state; otherwise the job is stopped and put into the
  `STOPPED` state.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20StopDominantLanguageDetectionJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:stop_dominant_language_detection_job_request`)
    %{
      required("JobId") => String.t()
    }
  """

  @spec stop_dominant_language_detection_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, stop_dominant_language_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_dominant_language_detection_job_errors()}

  def stop_dominant_language_detection_job(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopDominantLanguageDetectionJob", input, options)
  end

  @doc """
  Stops an entities detection job in progress. If the job state is `IN_PROGRESS`
  the job is marked for termination and put into the `STOP_REQUESTED` state. If
  the job completes before it can be stopped, it is put into the `COMPLETED`
  state; otherwise the job is stopped and put into the `STOPPED` state.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20StopEntitiesDetectionJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:stop_entities_detection_job_request`)
    %{
      required("JobId") => String.t()
    }
  """

  @spec stop_entities_detection_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, stop_entities_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_entities_detection_job_errors()}

  def stop_entities_detection_job(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopEntitiesDetectionJob", input, options)
  end

  @doc """
  Stops an events detection job in progress.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20StopEventsDetectionJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:stop_events_detection_job_request`)
    %{
      required("JobId") => String.t()
    }
  """

  @spec stop_events_detection_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, stop_events_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_events_detection_job_errors()}

  def stop_events_detection_job(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopEventsDetectionJob", input, options)
  end

  @doc """
  Stops a key phrases detection job in progress. If the job state is `IN_PROGRESS`
  the job is marked for termination and put into the `STOP_REQUESTED` state. If
  the job completes before it can be stopped, it is put into the `COMPLETED`
  state; otherwise the job is stopped and put into the `STOPPED` state.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20StopKeyPhrasesDetectionJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:stop_key_phrases_detection_job_request`)
    %{
      required("JobId") => String.t()
    }
  """

  @spec stop_key_phrases_detection_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, stop_key_phrases_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_key_phrases_detection_job_errors()}

  def stop_key_phrases_detection_job(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopKeyPhrasesDetectionJob", input, options)
  end

  @doc """
  Stops a PII entities detection job in progress.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20StopPiiEntitiesDetectionJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:stop_pii_entities_detection_job_request`)
    %{
      required("JobId") => String.t()
    }
  """

  @spec stop_pii_entities_detection_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, stop_pii_entities_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_pii_entities_detection_job_errors()}

  def stop_pii_entities_detection_job(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopPiiEntitiesDetectionJob", input, options)
  end

  @doc """
  Stops a sentiment detection job in progress. If the job state is `IN_PROGRESS`,
  the job is marked for termination and put into the `STOP_REQUESTED` state. If
  the job completes before it can be stopped, it is put into the `COMPLETED`
  state; otherwise the job is be stopped and put into the `STOPPED` state.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20StopSentimentDetectionJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:stop_sentiment_detection_job_request`)
    %{
      required("JobId") => String.t()
    }
  """

  @spec stop_sentiment_detection_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, stop_sentiment_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_sentiment_detection_job_errors()}

  def stop_sentiment_detection_job(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopSentimentDetectionJob", input, options)
  end

  @doc """
  Stops a targeted sentiment detection job in progress. If the job state is
  `IN_PROGRESS`, the job is marked for termination and put into the
  `STOP_REQUESTED` state. If the job completes before it can be stopped, it is
  put into the `COMPLETED` state; otherwise the job is be stopped and put into
  the `STOPPED` state.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20StopTargetedSentimentDetectionJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:stop_targeted_sentiment_detection_job_request`)
    %{
      required("JobId") => String.t()
    }
  """

  @spec stop_targeted_sentiment_detection_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, stop_targeted_sentiment_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_targeted_sentiment_detection_job_errors()}

  def stop_targeted_sentiment_detection_job(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopTargetedSentimentDetectionJob", input, options)
  end

  @doc """
  Stops a document classifier training job while in progress.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20StopTrainingDocumentClassifier&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:stop_training_document_classifier_request`)
    %{
      required("DocumentClassifierArn") => String.t()
    }
  """

  @spec stop_training_document_classifier(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, stop_training_document_classifier_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_training_document_classifier_errors()}

  def stop_training_document_classifier(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopTrainingDocumentClassifier", input, options)
  end

  @doc """
  Stops an entity recognizer training job while in progress.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20StopTrainingEntityRecognizer&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:stop_training_entity_recognizer_request`)
    %{
      required("EntityRecognizerArn") => String.t()
    }
  """

  @spec stop_training_entity_recognizer(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, stop_training_entity_recognizer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_training_entity_recognizer_errors()}

  def stop_training_entity_recognizer(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopTrainingEntityRecognizer", input, options)
  end

  @doc """
  Associates a specific tag with an Amazon Comprehend resource. A tag is a
  key-value pair that adds as a metadata to a resource used by Amazon
  Comprehend. For example, a tag with "Sales" as the key might be added to a
  resource to indicate its use by the sales department.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20TagResource&this_doc_guide=API%2520Reference)

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
  Removes a specific tag associated with an Amazon Comprehend resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20UntagResource&this_doc_guide=API%2520Reference)

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
  Updates information about the specified endpoint. For information about
  endpoints, see [Managing
  endpoints](https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20UpdateEndpoint&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_endpoint_request`)
    %{
      optional("DesiredDataAccessRoleArn") => String.t(),
      optional("DesiredInferenceUnits") => integer(),
      optional("DesiredModelArn") => String.t(),
      optional("FlywheelArn") => String.t(),
      required("EndpointArn") => String.t()
    }
  """

  @spec update_endpoint(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_endpoint_errors()}

  def update_endpoint(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateEndpoint", input, options)
  end

  @doc """
  Update the configuration information for an existing flywheel.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=comprehend%20UpdateFlywheel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_flywheel_request`)
    %{
      optional("ActiveModelArn") => String.t(),
      optional("DataAccessRoleArn") => String.t(),
      optional("DataSecurityConfig") => update_data_security_config(),
      required("FlywheelArn") => String.t()
    }
  """

  @spec update_flywheel(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_flywheel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_flywheel_errors()}

  def update_flywheel(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateFlywheel", input, options)
  end
end
