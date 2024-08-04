# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Textract do
  @moduledoc """
  Amazon Textract detects and analyzes text in documents and converts it into
  machine-readable text. This is the API reference documentation for Amazon
  Textract.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      analyze_document_request() :: %{
        optional("AdaptersConfig") => adapters_config(),
        optional("HumanLoopConfig") => human_loop_config(),
        optional("QueriesConfig") => queries_config(),
        required("Document") => document(),
        required("FeatureTypes") => list(list(any())())
      }
      
  """
  @type analyze_document_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document_location() :: %{
        "S3Object" => s3_object()
      }
      
  """
  @type document_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_adapter_request() :: %{
        required("AdapterId") => String.t()
      }
      
  """
  @type delete_adapter_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      adapter_version_evaluation_metric() :: %{
        "AdapterVersion" => evaluation_metric(),
        "Baseline" => evaluation_metric(),
        "FeatureType" => list(any())
      }
      
  """
  @type adapter_version_evaluation_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceARN") => String.t(),
        required("Tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      adapter_overview() :: %{
        "AdapterId" => String.t(),
        "AdapterName" => String.t(),
        "CreationTime" => non_neg_integer(),
        "FeatureTypes" => list(list(any())())
      }
      
  """
  @type adapter_overview() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_adapter_version_request() :: %{
        required("AdapterId") => String.t(),
        required("AdapterVersion") => String.t()
      }
      
  """
  @type delete_adapter_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      identity_document_field() :: %{
        "Type" => analyze_id_detections(),
        "ValueDetection" => analyze_id_detections()
      }
      
  """
  @type identity_document_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_document_text_detection_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("JobId") => String.t()
      }
      
  """
  @type get_document_text_detection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_lending_analysis_response() :: %{
        "JobId" => String.t()
      }
      
  """
  @type start_lending_analysis_response() :: %{String.t() => any()}

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
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      analyze_id_response() :: %{
        "AnalyzeIDModelVersion" => String.t(),
        "DocumentMetadata" => document_metadata(),
        "IdentityDocuments" => list(identity_document()())
      }
      
  """
  @type analyze_id_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_document_analysis_request() :: %{
        optional("AdaptersConfig") => adapters_config(),
        optional("ClientRequestToken") => String.t(),
        optional("JobTag") => String.t(),
        optional("KMSKeyId") => String.t(),
        optional("NotificationChannel") => notification_channel(),
        optional("OutputConfig") => output_config(),
        optional("QueriesConfig") => queries_config(),
        required("DocumentLocation") => document_location(),
        required("FeatureTypes") => list(list(any())())
      }
      
  """
  @type start_document_analysis_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bad_document_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type bad_document_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lending_document() :: %{
        "LendingFields" => list(lending_field()()),
        "SignatureDetections" => list(signature_detection()())
      }
      
  """
  @type lending_document() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_expense_analysis_response() :: %{
        "JobId" => String.t()
      }
      
  """
  @type start_expense_analysis_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_document_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type unsupported_document_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detected_signature() :: %{
        "Page" => integer()
      }
      
  """
  @type detected_signature() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      analyze_id_request() :: %{
        required("DocumentPages") => list(document()())
      }
      
  """
  @type analyze_id_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_adapter_versions_request() :: %{
        optional("AdapterId") => String.t(),
        optional("AfterCreationTime") => non_neg_integer(),
        optional("BeforeCreationTime") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_adapter_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      relationship() :: %{
        "Ids" => list(String.t()()),
        "Type" => list(any())
      }
      
  """
  @type relationship() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_expense_analysis_response() :: %{
        "AnalyzeExpenseModelVersion" => String.t(),
        "DocumentMetadata" => document_metadata(),
        "ExpenseDocuments" => list(expense_document()()),
        "JobStatus" => list(any()),
        "NextToken" => String.t(),
        "StatusMessage" => String.t(),
        "Warnings" => list(warning()())
      }
      
  """
  @type get_expense_analysis_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_document_text_request() :: %{
        required("Document") => document()
      }
      
  """
  @type detect_document_text_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_lending_analysis_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("JobTag") => String.t(),
        optional("KMSKeyId") => String.t(),
        optional("NotificationChannel") => notification_channel(),
        optional("OutputConfig") => output_config(),
        required("DocumentLocation") => document_location()
      }
      
  """
  @type start_lending_analysis_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      line_item_fields() :: %{
        "LineItemExpenseFields" => list(expense_field()())
      }
      
  """
  @type line_item_fields() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      adapter() :: %{
        "AdapterId" => String.t(),
        "Pages" => list(String.t()()),
        "Version" => String.t()
      }
      
  """
  @type adapter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_object() :: %{
        "Bucket" => String.t(),
        "Name" => String.t(),
        "Version" => String.t()
      }
      
  """
  @type s3_object() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      analyze_expense_response() :: %{
        "DocumentMetadata" => document_metadata(),
        "ExpenseDocuments" => list(expense_document()())
      }
      
  """
  @type analyze_expense_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      adapters_config() :: %{
        "Adapters" => list(adapter()())
      }
      
  """
  @type adapters_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      line_item_group() :: %{
        "LineItemGroupIndex" => integer(),
        "LineItems" => list(line_item_fields()())
      }
      
  """
  @type line_item_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_lending_analysis_summary_request() :: %{
        required("JobId") => String.t()
      }
      
  """
  @type get_lending_analysis_summary_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      analyze_document_response() :: %{
        "AnalyzeDocumentModelVersion" => String.t(),
        "Blocks" => list(block()()),
        "DocumentMetadata" => document_metadata(),
        "HumanLoopActivationOutput" => human_loop_activation_output()
      }
      
  """
  @type analyze_document_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceARN") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_document_text_detection_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("JobTag") => String.t(),
        optional("KMSKeyId") => String.t(),
        optional("NotificationChannel") => notification_channel(),
        optional("OutputConfig") => output_config(),
        required("DocumentLocation") => document_location()
      }
      
  """
  @type start_document_text_detection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_document_text_detection_response() :: %{
        "JobId" => String.t()
      }
      
  """
  @type start_document_text_detection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      expense_group_property() :: %{
        "Id" => String.t(),
        "Types" => list(String.t()())
      }
      
  """
  @type expense_group_property() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_lending_analysis_summary_response() :: %{
        "AnalyzeLendingModelVersion" => String.t(),
        "DocumentMetadata" => document_metadata(),
        "JobStatus" => list(any()),
        "StatusMessage" => String.t(),
        "Summary" => lending_summary(),
        "Warnings" => list(warning()())
      }
      
  """
  @type get_lending_analysis_summary_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      expense_document() :: %{
        "Blocks" => list(block()()),
        "ExpenseIndex" => integer(),
        "LineItemGroups" => list(line_item_group()()),
        "SummaryFields" => list(expense_field()())
      }
      
  """
  @type expense_document() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      normalized_value() :: %{
        "Value" => String.t(),
        "ValueType" => list(any())
      }
      
  """
  @type normalized_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_adapter_request() :: %{
        optional("AutoUpdate") => list(any()),
        optional("ClientRequestToken") => String.t(),
        optional("Description") => String.t(),
        optional("Tags") => map(),
        required("AdapterName") => String.t(),
        required("FeatureTypes") => list(list(any())())
      }
      
  """
  @type create_adapter_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      split_document() :: %{
        "Index" => integer(),
        "Pages" => list(integer()())
      }
      
  """
  @type split_document() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluation_metric() :: %{
        "F1Score" => float(),
        "Precision" => float(),
        "Recall" => float()
      }
      
  """
  @type evaluation_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_lending_analysis_response() :: %{
        "AnalyzeLendingModelVersion" => String.t(),
        "DocumentMetadata" => document_metadata(),
        "JobStatus" => list(any()),
        "NextToken" => String.t(),
        "Results" => list(lending_result()()),
        "StatusMessage" => String.t(),
        "Warnings" => list(warning()())
      }
      
  """
  @type get_lending_analysis_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notification_channel() :: %{
        "RoleArn" => String.t(),
        "SNSTopicArn" => String.t()
      }
      
  """
  @type notification_channel() :: %{String.t() => any()}

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
      
      human_loop_activation_output() :: %{
        "HumanLoopActivationConditionsEvaluationResults" => String.t(),
        "HumanLoopActivationReasons" => list(String.t()()),
        "HumanLoopArn" => String.t()
      }
      
  """
  @type human_loop_activation_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      provisioned_throughput_exceeded_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type provisioned_throughput_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_adapter_version_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("KMSKeyId") => String.t(),
        optional("Tags") => map(),
        required("AdapterId") => String.t(),
        required("DatasetConfig") => adapter_version_dataset_config(),
        required("OutputConfig") => output_config()
      }
      
  """
  @type create_adapter_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      adapter_version_dataset_config() :: %{
        "ManifestS3Object" => s3_object()
      }
      
  """
  @type adapter_version_dataset_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      adapter_version_overview() :: %{
        "AdapterId" => String.t(),
        "AdapterVersion" => String.t(),
        "CreationTime" => non_neg_integer(),
        "FeatureTypes" => list(list(any())()),
        "Status" => list(any()),
        "StatusMessage" => String.t()
      }
      
  """
  @type adapter_version_overview() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_adapter_response() :: %{
        "AdapterId" => String.t(),
        "AdapterName" => String.t(),
        "AutoUpdate" => list(any()),
        "CreationTime" => non_neg_integer(),
        "Description" => String.t(),
        "FeatureTypes" => list(list(any())()),
        "Tags" => map()
      }
      
  """
  @type get_adapter_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_document_text_detection_response() :: %{
        "Blocks" => list(block()()),
        "DetectDocumentTextModelVersion" => String.t(),
        "DocumentMetadata" => document_metadata(),
        "JobStatus" => list(any()),
        "NextToken" => String.t(),
        "StatusMessage" => String.t(),
        "Warnings" => list(warning()())
      }
      
  """
  @type get_document_text_detection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      idempotent_parameter_mismatch_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type idempotent_parameter_mismatch_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_expense_analysis_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("JobTag") => String.t(),
        optional("KMSKeyId") => String.t(),
        optional("NotificationChannel") => notification_channel(),
        optional("OutputConfig") => output_config(),
        required("DocumentLocation") => document_location()
      }
      
  """
  @type start_expense_analysis_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lending_field() :: %{
        "KeyDetection" => lending_detection(),
        "Type" => String.t(),
        "ValueDetections" => list(lending_detection()())
      }
      
  """
  @type lending_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      undetected_signature() :: %{
        "Page" => integer()
      }
      
  """
  @type undetected_signature() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_adapter_request() :: %{
        required("AdapterId") => String.t()
      }
      
  """
  @type get_adapter_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      queries_config() :: %{
        "Queries" => list(query()())
      }
      
  """
  @type queries_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_adapter_version_request() :: %{
        required("AdapterId") => String.t(),
        required("AdapterVersion") => String.t()
      }
      
  """
  @type get_adapter_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      signature_detection() :: %{
        "Confidence" => float(),
        "Geometry" => geometry()
      }
      
  """
  @type signature_detection() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_lending_analysis_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("JobId") => String.t()
      }
      
  """
  @type get_lending_analysis_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_job_id_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type invalid_job_id_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_kms_key_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type invalid_kms_key_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      expense_detection() :: %{
        "Confidence" => float(),
        "Geometry" => geometry(),
        "Text" => String.t()
      }
      
  """
  @type expense_detection() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      human_loop_data_attributes() :: %{
        "ContentClassifiers" => list(list(any())())
      }
      
  """
  @type human_loop_data_attributes() :: %{String.t() => any()}

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
      
      get_expense_analysis_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("JobId") => String.t()
      }
      
  """
  @type get_expense_analysis_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      analyze_id_detections() :: %{
        "Confidence" => float(),
        "NormalizedValue" => normalized_value(),
        "Text" => String.t()
      }
      
  """
  @type analyze_id_detections() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      expense_currency() :: %{
        "Code" => String.t(),
        "Confidence" => float()
      }
      
  """
  @type expense_currency() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_adapter_versions_response() :: %{
        "AdapterVersions" => list(adapter_version_overview()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_adapter_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      expense_type() :: %{
        "Confidence" => float(),
        "Text" => String.t()
      }
      
  """
  @type expense_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      warning() :: %{
        "ErrorCode" => String.t(),
        "Pages" => list(integer()())
      }
      
  """
  @type warning() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_error() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type internal_server_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type invalid_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_document_analysis_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("JobId") => String.t()
      }
      
  """
  @type get_document_analysis_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      output_config() :: %{
        "S3Bucket" => String.t(),
        "S3Prefix" => String.t()
      }
      
  """
  @type output_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_document_analysis_response() :: %{
        "AnalyzeDocumentModelVersion" => String.t(),
        "Blocks" => list(block()()),
        "DocumentMetadata" => document_metadata(),
        "JobStatus" => list(any()),
        "NextToken" => String.t(),
        "StatusMessage" => String.t(),
        "Warnings" => list(warning()())
      }
      
  """
  @type get_document_analysis_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lending_detection() :: %{
        "Confidence" => float(),
        "Geometry" => geometry(),
        "SelectionStatus" => list(any()),
        "Text" => String.t()
      }
      
  """
  @type lending_detection() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceARN") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_adapter_version_response() :: %{
        "AdapterId" => String.t(),
        "AdapterVersion" => String.t()
      }
      
  """
  @type create_adapter_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      analyze_expense_request() :: %{
        required("Document") => document()
      }
      
  """
  @type analyze_expense_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document_metadata() :: %{
        "Pages" => integer()
      }
      
  """
  @type document_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      page_classification() :: %{
        "PageNumber" => list(prediction()()),
        "PageType" => list(prediction()())
      }
      
  """
  @type page_classification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_adapter_response() :: %{
        "AdapterId" => String.t()
      }
      
  """
  @type create_adapter_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      human_loop_quota_exceeded_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t(),
        "QuotaCode" => String.t(),
        "ResourceType" => String.t(),
        "ServiceCode" => String.t()
      }
      
  """
  @type human_loop_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      extraction() :: %{
        "ExpenseDocument" => expense_document(),
        "IdentityDocument" => identity_document(),
        "LendingDocument" => lending_document()
      }
      
  """
  @type extraction() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document_group() :: %{
        "DetectedSignatures" => list(detected_signature()()),
        "SplitDocuments" => list(split_document()()),
        "Type" => String.t(),
        "UndetectedSignatures" => list(undetected_signature()())
      }
      
  """
  @type document_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      expense_field() :: %{
        "Currency" => expense_currency(),
        "GroupProperties" => list(expense_group_property()()),
        "LabelDetection" => expense_detection(),
        "PageNumber" => integer(),
        "Type" => expense_type(),
        "ValueDetection" => expense_detection()
      }
      
  """
  @type expense_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      query() :: %{
        "Alias" => String.t(),
        "Pages" => list(String.t()()),
        "Text" => String.t()
      }
      
  """
  @type query() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_adapter_version_response() :: %{
        "AdapterId" => String.t(),
        "AdapterVersion" => String.t(),
        "CreationTime" => non_neg_integer(),
        "DatasetConfig" => adapter_version_dataset_config(),
        "EvaluationMetrics" => list(adapter_version_evaluation_metric()()),
        "FeatureTypes" => list(list(any())()),
        "KMSKeyId" => String.t(),
        "OutputConfig" => output_config(),
        "Status" => list(any()),
        "StatusMessage" => String.t(),
        "Tags" => map()
      }
      
  """
  @type get_adapter_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_document_analysis_response() :: %{
        "JobId" => String.t()
      }
      
  """
  @type start_document_analysis_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_document_text_response() :: %{
        "Blocks" => list(block()()),
        "DetectDocumentTextModelVersion" => String.t(),
        "DocumentMetadata" => document_metadata()
      }
      
  """
  @type detect_document_text_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      identity_document() :: %{
        "Blocks" => list(block()()),
        "DocumentIndex" => integer(),
        "IdentityDocumentFields" => list(identity_document_field()())
      }
      
  """
  @type identity_document() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_s3_object_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type invalid_s3_object_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_adapter_request() :: %{
        optional("AdapterName") => String.t(),
        optional("AutoUpdate") => list(any()),
        optional("Description") => String.t(),
        required("AdapterId") => String.t()
      }
      
  """
  @type update_adapter_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      block() :: %{
        "BlockType" => list(any()),
        "ColumnIndex" => integer(),
        "ColumnSpan" => integer(),
        "Confidence" => float(),
        "EntityTypes" => list(list(any())()),
        "Geometry" => geometry(),
        "Id" => String.t(),
        "Page" => integer(),
        "Query" => query(),
        "Relationships" => list(relationship()()),
        "RowIndex" => integer(),
        "RowSpan" => integer(),
        "SelectionStatus" => list(any()),
        "Text" => String.t(),
        "TextType" => list(any())
      }
      
  """
  @type block() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_adapters_response() :: %{
        "Adapters" => list(adapter_overview()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_adapters_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document_too_large_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type document_too_large_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      human_loop_config() :: %{
        "DataAttributes" => human_loop_data_attributes(),
        "FlowDefinitionArn" => String.t(),
        "HumanLoopName" => String.t()
      }
      
  """
  @type human_loop_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_adapter_response() :: %{}
      
  """
  @type delete_adapter_response() :: %{}

  @typedoc """

  ## Example:
      
      lending_summary() :: %{
        "DocumentGroups" => list(document_group()()),
        "UndetectedDocumentTypes" => list(String.t()())
      }
      
  """
  @type lending_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_adapter_response() :: %{
        "AdapterId" => String.t(),
        "AdapterName" => String.t(),
        "AutoUpdate" => list(any()),
        "CreationTime" => non_neg_integer(),
        "Description" => String.t(),
        "FeatureTypes" => list(list(any())())
      }
      
  """
  @type update_adapter_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      prediction() :: %{
        "Confidence" => float(),
        "Value" => String.t()
      }
      
  """
  @type prediction() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document() :: %{
        "Bytes" => binary(),
        "S3Object" => s3_object()
      }
      
  """
  @type document() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_adapters_request() :: %{
        optional("AfterCreationTime") => non_neg_integer(),
        optional("BeforeCreationTime") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_adapters_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lending_result() :: %{
        "Extractions" => list(extraction()()),
        "Page" => integer(),
        "PageClassification" => page_classification()
      }
      
  """
  @type lending_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_adapter_version_response() :: %{}
      
  """
  @type delete_adapter_version_response() :: %{}

  @type analyze_document_errors() ::
          document_too_large_exception()
          | invalid_s3_object_exception()
          | human_loop_quota_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | provisioned_throughput_exceeded_exception()
          | unsupported_document_exception()
          | bad_document_exception()

  @type analyze_expense_errors() ::
          document_too_large_exception()
          | invalid_s3_object_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | provisioned_throughput_exceeded_exception()
          | unsupported_document_exception()
          | bad_document_exception()

  @type analyze_id_errors() ::
          document_too_large_exception()
          | invalid_s3_object_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | provisioned_throughput_exceeded_exception()
          | unsupported_document_exception()
          | bad_document_exception()

  @type create_adapter_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | idempotent_parameter_mismatch_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()
          | provisioned_throughput_exceeded_exception()

  @type create_adapter_version_errors() ::
          invalid_s3_object_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | invalid_kms_key_exception()
          | idempotent_parameter_mismatch_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | provisioned_throughput_exceeded_exception()

  @type delete_adapter_errors() ::
          throttling_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | conflict_exception()
          | provisioned_throughput_exceeded_exception()

  @type delete_adapter_version_errors() ::
          throttling_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | conflict_exception()
          | provisioned_throughput_exceeded_exception()

  @type detect_document_text_errors() ::
          document_too_large_exception()
          | invalid_s3_object_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | provisioned_throughput_exceeded_exception()
          | unsupported_document_exception()
          | bad_document_exception()

  @type get_adapter_errors() ::
          throttling_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()

  @type get_adapter_version_errors() ::
          throttling_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()

  @type get_document_analysis_errors() ::
          invalid_s3_object_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | invalid_kms_key_exception()
          | invalid_job_id_exception()
          | provisioned_throughput_exceeded_exception()

  @type get_document_text_detection_errors() ::
          invalid_s3_object_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | invalid_kms_key_exception()
          | invalid_job_id_exception()
          | provisioned_throughput_exceeded_exception()

  @type get_expense_analysis_errors() ::
          invalid_s3_object_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | invalid_kms_key_exception()
          | invalid_job_id_exception()
          | provisioned_throughput_exceeded_exception()

  @type get_lending_analysis_errors() ::
          invalid_s3_object_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | invalid_kms_key_exception()
          | invalid_job_id_exception()
          | provisioned_throughput_exceeded_exception()

  @type get_lending_analysis_summary_errors() ::
          invalid_s3_object_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | invalid_kms_key_exception()
          | invalid_job_id_exception()
          | provisioned_throughput_exceeded_exception()

  @type list_adapter_versions_errors() ::
          throttling_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()

  @type list_adapters_errors() ::
          throttling_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | provisioned_throughput_exceeded_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()

  @type start_document_analysis_errors() ::
          document_too_large_exception()
          | invalid_s3_object_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | invalid_kms_key_exception()
          | idempotent_parameter_mismatch_exception()
          | provisioned_throughput_exceeded_exception()
          | unsupported_document_exception()
          | bad_document_exception()

  @type start_document_text_detection_errors() ::
          document_too_large_exception()
          | invalid_s3_object_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | invalid_kms_key_exception()
          | idempotent_parameter_mismatch_exception()
          | provisioned_throughput_exceeded_exception()
          | unsupported_document_exception()
          | bad_document_exception()

  @type start_expense_analysis_errors() ::
          document_too_large_exception()
          | invalid_s3_object_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | invalid_kms_key_exception()
          | idempotent_parameter_mismatch_exception()
          | provisioned_throughput_exceeded_exception()
          | unsupported_document_exception()
          | bad_document_exception()

  @type start_lending_analysis_errors() ::
          document_too_large_exception()
          | invalid_s3_object_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | invalid_kms_key_exception()
          | idempotent_parameter_mismatch_exception()
          | provisioned_throughput_exceeded_exception()
          | unsupported_document_exception()
          | bad_document_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()

  @type update_adapter_errors() ::
          throttling_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_server_error()
          | resource_not_found_exception()
          | conflict_exception()
          | provisioned_throughput_exceeded_exception()

  def metadata do
    %{
      api_version: "2018-06-27",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "textract",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Textract",
      signature_version: "v4",
      signing_name: "textract",
      target_prefix: "Textract"
    }
  end

  @doc """
   
  Analyzes an input document for relationships between detected items. The types
  of information returned are as follows:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=textract%20AnalyzeDocument&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:analyze_document_request`)
    %{
      optional("AdaptersConfig") => adapters_config(),
      optional("HumanLoopConfig") => human_loop_config(),
      optional("QueriesConfig") => queries_config(),
      required("Document") => document(),
      required("FeatureTypes") => list(list(any())())
    }
  """
  @spec analyze_document(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, analyze_document_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, analyze_document_errors()}
  def analyze_document(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AnalyzeDocument", input, options)
  end

  @doc """
   
  `AnalyzeExpense` synchronously analyzes an input document for financially
  related relationships between text. Information is returned as
  `ExpenseDocuments` and seperated as follows:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=textract%20AnalyzeExpense&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:analyze_expense_request`)
    %{
      required("Document") => document()
    }
  """
  @spec analyze_expense(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, analyze_expense_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, analyze_expense_errors()}
  def analyze_expense(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AnalyzeExpense", input, options)
  end

  @doc """
   
  Analyzes identity documents for relevant information. This information is
  extracted and returned as `IdentityDocumentFields`, which records both the
  normalized field and value of the extracted text. Unlike other Amazon Textract
  operations, `AnalyzeID` doesn't return any Geometry data.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=textract%20AnalyzeID&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:analyze_id_request`)
    %{
      required("DocumentPages") => list(document()())
    }
  """
  @spec analyze_id(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, analyze_id_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, analyze_id_errors()}
  def analyze_id(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AnalyzeID", input, options)
  end

  @doc """
   
  Creates an adapter, which can be fine-tuned for enhanced performance on user
  provided documents. Takes an AdapterName and FeatureType. Currently the only
  supported feature type is `QUERIES`. You can also provide a Description, Tags,
  and a ClientRequestToken. You can choose whether or not the adapter should be
  AutoUpdated with the AutoUpdate argument. By default, AutoUpdate is set to
  DISABLED.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=textract%20CreateAdapter&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_adapter_request`)
    %{
      optional("AutoUpdate") => list(any()),
      optional("ClientRequestToken") => String.t(),
      optional("Description") => String.t(),
      optional("Tags") => map(),
      required("AdapterName") => String.t(),
      required("FeatureTypes") => list(list(any())())
    }
  """
  @spec create_adapter(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_adapter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_adapter_errors()}
  def create_adapter(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateAdapter", input, options)
  end

  @doc """
   
  Creates a new version of an adapter. Operates on a provided AdapterId and a
  specified dataset provided via the DatasetConfig argument. Requires that you
  specify an Amazon S3 bucket with the OutputConfig argument. You can provide an
  optional KMSKeyId, an optional ClientRequestToken, and optional tags.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=textract%20CreateAdapterVersion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_adapter_version_request`)
    %{
      optional("ClientRequestToken") => String.t(),
      optional("KMSKeyId") => String.t(),
      optional("Tags") => map(),
      required("AdapterId") => String.t(),
      required("DatasetConfig") => adapter_version_dataset_config(),
      required("OutputConfig") => output_config()
    }
  """
  @spec create_adapter_version(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_adapter_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_adapter_version_errors()}
  def create_adapter_version(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateAdapterVersion", input, options)
  end

  @doc """
   
  Deletes an Amazon Textract adapter. Takes an AdapterId and deletes the adapter
  specified by the ID.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=textract%20DeleteAdapter&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_adapter_request`)
    %{
      required("AdapterId") => String.t()
    }
  """
  @spec delete_adapter(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_adapter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_adapter_errors()}
  def delete_adapter(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteAdapter", input, options)
  end

  @doc """
   
  Deletes an Amazon Textract adapter version. Requires that you specify both an
  AdapterId and a AdapterVersion. Deletes the adapter version specified by the
  AdapterId and the AdapterVersion.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=textract%20DeleteAdapterVersion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_adapter_version_request`)
    %{
      required("AdapterId") => String.t(),
      required("AdapterVersion") => String.t()
    }
  """
  @spec delete_adapter_version(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_adapter_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_adapter_version_errors()}
  def delete_adapter_version(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteAdapterVersion", input, options)
  end

  @doc """
   
  Detects text in the input document. Amazon Textract can detect lines of text and
  the words that make up a line of text. The input document must be in one of
  the following image formats: JPEG, PNG, PDF, or TIFF. `DetectDocumentText`
  returns the detected text in an array of `Block` objects. Each document page
  has as an associated `Block` of type PAGE. Each PAGE `Block` object is the
  parent of LINE `Block` objects that represent the lines of detected text on a
  page. A LINE `Block` object is a parent for each word that makes up the line.
  Words are represented by `Block` objects of type WORD.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=textract%20DetectDocumentText&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:detect_document_text_request`)
    %{
      required("Document") => document()
    }
  """
  @spec detect_document_text(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, detect_document_text_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, detect_document_text_errors()}
  def detect_document_text(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DetectDocumentText", input, options)
  end

  @doc """
   
  Gets configuration information for an adapter specified by an AdapterId,
  returning information on AdapterName, Description, CreationTime, AutoUpdate
  status, and FeatureTypes.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=textract%20GetAdapter&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_adapter_request`)
    %{
      required("AdapterId") => String.t()
    }
  """
  @spec get_adapter(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_adapter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_adapter_errors()}
  def get_adapter(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetAdapter", input, options)
  end

  @doc """
   
  Gets configuration information for the specified adapter version, including:
  AdapterId, AdapterVersion, FeatureTypes, Status, StatusMessage, DatasetConfig,
  KMSKeyId, OutputConfig, Tags and EvaluationMetrics.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=textract%20GetAdapterVersion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_adapter_version_request`)
    %{
      required("AdapterId") => String.t(),
      required("AdapterVersion") => String.t()
    }
  """
  @spec get_adapter_version(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_adapter_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_adapter_version_errors()}
  def get_adapter_version(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetAdapterVersion", input, options)
  end

  @doc """
   
  Gets the results for an Amazon Textract asynchronous operation that analyzes
  text in a document. You start asynchronous text analysis by calling
  `StartDocumentAnalysis`, which returns a job identifier (`JobId`). When the
  text analysis operation finishes, Amazon Textract publishes a completion
  status to the Amazon Simple Notification Service (Amazon SNS) topic that's
  registered in the initial call to `StartDocumentAnalysis`. To get the results
  of the text-detection operation, first check that the status value published
  to the Amazon SNS topic is `SUCCEEDED`. If so, call `GetDocumentAnalysis`, and
  pass the job identifier (`JobId`) from the initial call to
  `StartDocumentAnalysis`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=textract%20GetDocumentAnalysis&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_document_analysis_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("JobId") => String.t()
    }
  """
  @spec get_document_analysis(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_document_analysis_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_document_analysis_errors()}
  def get_document_analysis(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDocumentAnalysis", input, options)
  end

  @doc """
   
  Gets the results for an Amazon Textract asynchronous operation that detects text
  in a document. Amazon Textract can detect lines of text and the words that
  make up a line of text. You start asynchronous text detection by calling
  `StartDocumentTextDetection`, which returns a job identifier (`JobId`). When
  the text detection operation finishes, Amazon Textract publishes a completion
  status to the Amazon Simple Notification Service (Amazon SNS) topic that's
  registered in the initial call to `StartDocumentTextDetection`. To get the
  results of the text-detection operation, first check that the status value
  published to the Amazon SNS topic is `SUCCEEDED`. If so, call
  `GetDocumentTextDetection`, and pass the job identifier (`JobId`) from the
  initial call to `StartDocumentTextDetection`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=textract%20GetDocumentTextDetection&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_document_text_detection_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("JobId") => String.t()
    }
  """
  @spec get_document_text_detection(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_document_text_detection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_document_text_detection_errors()}
  def get_document_text_detection(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDocumentTextDetection", input, options)
  end

  @doc """
   
  Gets the results for an Amazon Textract asynchronous operation that analyzes
  invoices and receipts. Amazon Textract finds contact information, items
  purchased, and vendor name, from input invoices and receipts. You start
  asynchronous invoice/receipt analysis by calling `StartExpenseAnalysis`, which
  returns a job identifier (`JobId`). Upon completion of the invoice/receipt
  analysis, Amazon Textract publishes the completion status to the Amazon Simple
  Notification Service (Amazon SNS) topic. This topic must be registered in the
  initial call to `StartExpenseAnalysis`. To get the results of the
  invoice/receipt analysis operation, first ensure that the status value
  published to the Amazon SNS topic is `SUCCEEDED`. If so, call
  `GetExpenseAnalysis`, and pass the job identifier (`JobId`) from the initial
  call to `StartExpenseAnalysis`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=textract%20GetExpenseAnalysis&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_expense_analysis_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("JobId") => String.t()
    }
  """
  @spec get_expense_analysis(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_expense_analysis_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_expense_analysis_errors()}
  def get_expense_analysis(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetExpenseAnalysis", input, options)
  end

  @doc """
   
  Gets the results for an Amazon Textract asynchronous operation that analyzes
  text in a lending document. You start asynchronous text analysis by calling
  `StartLendingAnalysis`, which returns a job identifier (`JobId`). When the
  text analysis operation finishes, Amazon Textract publishes a completion
  status to the Amazon Simple Notification Service (Amazon SNS) topic that's
  registered in the initial call to `StartLendingAnalysis`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=textract%20GetLendingAnalysis&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_lending_analysis_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("JobId") => String.t()
    }
  """
  @spec get_lending_analysis(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_lending_analysis_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_lending_analysis_errors()}
  def get_lending_analysis(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetLendingAnalysis", input, options)
  end

  @doc """
   
  Gets summarized results for the `StartLendingAnalysis` operation, which analyzes
  text in a lending document. The returned summary consists of information about
  documents grouped together by a common document type. Information like
  detected signatures, page numbers, and split documents is returned with
  respect to the type of grouped document. You start asynchronous text analysis
  by calling `StartLendingAnalysis`, which returns a job identifier (`JobId`).
  When the text analysis operation finishes, Amazon Textract publishes a
  completion status to the Amazon Simple Notification Service (Amazon SNS) topic
  that's registered in the initial call to `StartLendingAnalysis`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=textract%20GetLendingAnalysisSummary&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_lending_analysis_summary_request`)
    %{
      required("JobId") => String.t()
    }
  """
  @spec get_lending_analysis_summary(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_lending_analysis_summary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_lending_analysis_summary_errors()}
  def get_lending_analysis_summary(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetLendingAnalysisSummary", input, options)
  end

  @doc """
   
  List all version of an adapter that meet the specified filtration criteria.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=textract%20ListAdapterVersions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_adapter_versions_request`)
    %{
      optional("AdapterId") => String.t(),
      optional("AfterCreationTime") => non_neg_integer(),
      optional("BeforeCreationTime") => non_neg_integer(),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """
  @spec list_adapter_versions(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_adapter_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_adapter_versions_errors()}
  def list_adapter_versions(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAdapterVersions", input, options)
  end

  @doc """
   
  Lists all adapters that match the specified filtration criteria.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=textract%20ListAdapters&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_adapters_request`)
    %{
      optional("AfterCreationTime") => non_neg_integer(),
      optional("BeforeCreationTime") => non_neg_integer(),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """
  @spec list_adapters(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_adapters_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_adapters_errors()}
  def list_adapters(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAdapters", input, options)
  end

  @doc """
   
  Lists all tags for an Amazon Textract resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=textract%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_tags_for_resource_request`)
    %{
      required("ResourceARN") => String.t()
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
   
  Starts the asynchronous analysis of an input document for relationships between
  detected items such as key-value pairs, tables, and selection elements.
  `StartDocumentAnalysis` can analyze text in documents that are in JPEG, PNG,
  TIFF, and PDF format. The documents are stored in an Amazon S3 bucket. Use
  `DocumentLocation` to specify the bucket name and file name of the document.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=textract%20StartDocumentAnalysis&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:start_document_analysis_request`)
    %{
      optional("AdaptersConfig") => adapters_config(),
      optional("ClientRequestToken") => String.t(),
      optional("JobTag") => String.t(),
      optional("KMSKeyId") => String.t(),
      optional("NotificationChannel") => notification_channel(),
      optional("OutputConfig") => output_config(),
      optional("QueriesConfig") => queries_config(),
      required("DocumentLocation") => document_location(),
      required("FeatureTypes") => list(list(any())())
    }
  """
  @spec start_document_analysis(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, start_document_analysis_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_document_analysis_errors()}
  def start_document_analysis(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartDocumentAnalysis", input, options)
  end

  @doc """
   
  Starts the asynchronous detection of text in a document. Amazon Textract can
  detect lines of text and the words that make up a line of text.
  `StartDocumentTextDetection` can analyze text in documents that are in JPEG,
  PNG, TIFF, and PDF format. The documents are stored in an Amazon S3 bucket.
  Use `DocumentLocation` to specify the bucket name and file name of the
  document.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=textract%20StartDocumentTextDetection&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:start_document_text_detection_request`)
    %{
      optional("ClientRequestToken") => String.t(),
      optional("JobTag") => String.t(),
      optional("KMSKeyId") => String.t(),
      optional("NotificationChannel") => notification_channel(),
      optional("OutputConfig") => output_config(),
      required("DocumentLocation") => document_location()
    }
  """
  @spec start_document_text_detection(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, start_document_text_detection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_document_text_detection_errors()}
  def start_document_text_detection(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartDocumentTextDetection", input, options)
  end

  @doc """
   
  Starts the asynchronous analysis of invoices or receipts for data like contact
  information, items purchased, and vendor names. `StartExpenseAnalysis` can
  analyze text in documents that are in JPEG, PNG, and PDF format. The documents
  must be stored in an Amazon S3 bucket. Use the `DocumentLocation` parameter to
  specify the name of your S3 bucket and the name of the document in that
  bucket.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=textract%20StartExpenseAnalysis&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:start_expense_analysis_request`)
    %{
      optional("ClientRequestToken") => String.t(),
      optional("JobTag") => String.t(),
      optional("KMSKeyId") => String.t(),
      optional("NotificationChannel") => notification_channel(),
      optional("OutputConfig") => output_config(),
      required("DocumentLocation") => document_location()
    }
  """
  @spec start_expense_analysis(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, start_expense_analysis_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_expense_analysis_errors()}
  def start_expense_analysis(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartExpenseAnalysis", input, options)
  end

  @doc """
   
  Starts the classification and analysis of an input document.
  `StartLendingAnalysis` initiates the classification and analysis of a packet
  of lending documents. `StartLendingAnalysis` operates on a document file
  located in an Amazon S3 bucket. `StartLendingAnalysis` can analyze text in
  documents that are in one of the following formats: JPEG, PNG, TIFF, PDF. Use
  `DocumentLocation` to specify the bucket name and the file name of the
  document.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=textract%20StartLendingAnalysis&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:start_lending_analysis_request`)
    %{
      optional("ClientRequestToken") => String.t(),
      optional("JobTag") => String.t(),
      optional("KMSKeyId") => String.t(),
      optional("NotificationChannel") => notification_channel(),
      optional("OutputConfig") => output_config(),
      required("DocumentLocation") => document_location()
    }
  """
  @spec start_lending_analysis(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, start_lending_analysis_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_lending_analysis_errors()}
  def start_lending_analysis(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartLendingAnalysis", input, options)
  end

  @doc """
   
  Adds one or more tags to the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=textract%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:tag_resource_request`)
    %{
      required("ResourceARN") => String.t(),
      required("Tags") => map()
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
   
  Removes any tags with the specified keys from the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=textract%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:untag_resource_request`)
    %{
      required("ResourceARN") => String.t(),
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
   
  Update the configuration for an adapter. FeatureTypes configurations cannot be
  updated. At least one new parameter must be specified as an argument.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=textract%20UpdateAdapter&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_adapter_request`)
    %{
      optional("AdapterName") => String.t(),
      optional("AutoUpdate") => list(any()),
      optional("Description") => String.t(),
      required("AdapterId") => String.t()
    }
  """
  @spec update_adapter(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_adapter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_adapter_errors()}
  def update_adapter(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateAdapter", input, options)
  end
end
