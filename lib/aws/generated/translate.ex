# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Translate do
  @moduledoc """
  Provides translation of the input content from the source language to the target
  language.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      terminology_data_location() :: %{
        "Location" => String.t(),
        "RepositoryType" => String.t()
      }
      
  """
  @type terminology_data_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      translate_term() :: %{
        "SourceText" => String.t(),
        "TargetText" => String.t()
      }
      
  """
  @type translate_term() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_languages_request() :: %{
        optional("DisplayLanguageCode") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_languages_request() :: %{String.t() => any()}

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
      
      get_terminology_response() :: %{
        "AuxiliaryDataLocation" => terminology_data_location(),
        "TerminologyDataLocation" => terminology_data_location(),
        "TerminologyProperties" => terminology_properties()
      }
      
  """
  @type get_terminology_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_language_pair_exception() :: %{
        "Message" => String.t(),
        "SourceLanguageCode" => String.t(),
        "TargetLanguageCode" => String.t()
      }
      
  """
  @type unsupported_language_pair_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parallel_data_properties() :: %{
        "Arn" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "EncryptionKey" => encryption_key(),
        "FailedRecordCount" => float(),
        "ImportedDataSize" => float(),
        "ImportedRecordCount" => float(),
        "LastUpdatedAt" => non_neg_integer(),
        "LatestUpdateAttemptAt" => non_neg_integer(),
        "LatestUpdateAttemptStatus" => list(any()),
        "Message" => String.t(),
        "Name" => String.t(),
        "ParallelDataConfig" => parallel_data_config(),
        "SkippedRecordCount" => float(),
        "SourceLanguageCode" => String.t(),
        "Status" => list(any()),
        "TargetLanguageCodes" => list(String.t()())
      }
      
  """
  @type parallel_data_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      input_data_config() :: %{
        "ContentType" => String.t(),
        "S3Uri" => String.t()
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
      
      translate_text_response() :: %{
        "AppliedSettings" => translation_settings(),
        "AppliedTerminologies" => list(applied_terminology()()),
        "SourceLanguageCode" => String.t(),
        "TargetLanguageCode" => String.t(),
        "TranslatedText" => String.t()
      }
      
  """
  @type translate_text_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_text_translation_job_response() :: %{
        "TextTranslationJobProperties" => text_translation_job_properties()
      }
      
  """
  @type describe_text_translation_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      translation_settings() :: %{
        "Brevity" => list(any()),
        "Formality" => list(any()),
        "Profanity" => list(any())
      }
      
  """
  @type translation_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_terminologies_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_terminologies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_parallel_data_request() :: %{
        required("Name") => String.t()
      }
      
  """
  @type get_parallel_data_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_parallel_data_response() :: %{
        "Name" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type delete_parallel_data_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      text_translation_job_properties() :: %{
        "DataAccessRoleArn" => String.t(),
        "EndTime" => non_neg_integer(),
        "InputDataConfig" => input_data_config(),
        "JobDetails" => job_details(),
        "JobId" => String.t(),
        "JobName" => String.t(),
        "JobStatus" => list(any()),
        "Message" => String.t(),
        "OutputDataConfig" => output_data_config(),
        "ParallelDataNames" => list(String.t()()),
        "Settings" => translation_settings(),
        "SourceLanguageCode" => String.t(),
        "SubmittedTime" => non_neg_integer(),
        "TargetLanguageCodes" => list(String.t()()),
        "TerminologyNames" => list(String.t()())
      }
      
  """
  @type text_translation_job_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detected_language_low_confidence_exception() :: %{
        "DetectedLanguageCode" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type detected_language_low_confidence_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_terminology_request() :: %{
        optional("Description") => String.t(),
        optional("EncryptionKey") => encryption_key(),
        optional("Tags") => list(tag()()),
        required("MergeStrategy") => list(any()),
        required("Name") => String.t(),
        required("TerminologyData") => terminology_data()
      }
      
  """
  @type import_terminology_request() :: %{String.t() => any()}

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
      
      import_terminology_response() :: %{
        "AuxiliaryDataLocation" => terminology_data_location(),
        "TerminologyProperties" => terminology_properties()
      }
      
  """
  @type import_terminology_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_requests_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_parallel_data_response() :: %{
        "AuxiliaryDataLocation" => parallel_data_data_location(),
        "DataLocation" => parallel_data_data_location(),
        "LatestUpdateAttemptAuxiliaryDataLocation" => parallel_data_data_location(),
        "ParallelDataProperties" => parallel_data_properties()
      }
      
  """
  @type get_parallel_data_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_filter_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_filter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parallel_data_config() :: %{
        "Format" => list(any()),
        "S3Uri" => String.t()
      }
      
  """
  @type parallel_data_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_text_translation_jobs_request() :: %{
        optional("Filter") => text_translation_job_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_text_translation_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_text_translation_jobs_response() :: %{
        "NextToken" => String.t(),
        "TextTranslationJobPropertiesList" => list(text_translation_job_properties()())
      }
      
  """
  @type list_text_translation_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_terminologies_response() :: %{
        "NextToken" => String.t(),
        "TerminologyPropertiesList" => list(terminology_properties()())
      }
      
  """
  @type list_terminologies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      text_translation_job_filter() :: %{
        "JobName" => String.t(),
        "JobStatus" => list(any()),
        "SubmittedAfterTime" => non_neg_integer(),
        "SubmittedBeforeTime" => non_neg_integer()
      }
      
  """
  @type text_translation_job_filter() :: %{String.t() => any()}

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
      
      invalid_request_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      translated_document() :: %{
        "Content" => binary()
      }
      
  """
  @type translated_document() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_value_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_parameter_value_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_parallel_data_response() :: %{
        "Name" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type create_parallel_data_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_text_translation_job_request() :: %{
        required("JobId") => String.t()
      }
      
  """
  @type stop_text_translation_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_unavailable_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      language() :: %{
        "LanguageCode" => String.t(),
        "LanguageName" => String.t()
      }
      
  """
  @type language() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_terminology_request() :: %{
        required("Name") => String.t()
      }
      
  """
  @type delete_terminology_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      job_details() :: %{
        "DocumentsWithErrorsCount" => integer(),
        "InputDocumentsCount" => integer(),
        "TranslatedDocumentsCount" => integer()
      }
      
  """
  @type job_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_parallel_data_request() :: %{
        optional("Description") => String.t(),
        required("ClientToken") => String.t(),
        required("Name") => String.t(),
        required("ParallelDataConfig") => parallel_data_config()
      }
      
  """
  @type update_parallel_data_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      translate_text_request() :: %{
        optional("Settings") => translation_settings(),
        optional("TerminologyNames") => list(String.t()()),
        required("SourceLanguageCode") => String.t(),
        required("TargetLanguageCode") => String.t(),
        required("Text") => String.t()
      }
      
  """
  @type translate_text_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_parallel_data_request() :: %{
        optional("Description") => String.t(),
        optional("EncryptionKey") => encryption_key(),
        optional("Tags") => list(tag()()),
        required("ClientToken") => String.t(),
        required("Name") => String.t(),
        required("ParallelDataConfig") => parallel_data_config()
      }
      
  """
  @type create_parallel_data_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_parallel_data_response() :: %{
        "NextToken" => String.t(),
        "ParallelDataPropertiesList" => list(parallel_data_properties()())
      }
      
  """
  @type list_parallel_data_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_text_translation_job_response() :: %{
        "JobId" => String.t(),
        "JobStatus" => list(any())
      }
      
  """
  @type start_text_translation_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_languages_response() :: %{
        "DisplayLanguageCode" => list(any()),
        "Languages" => list(language()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_languages_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_parallel_data_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_parallel_data_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      translate_document_response() :: %{
        "AppliedSettings" => translation_settings(),
        "AppliedTerminologies" => list(applied_terminology()()),
        "SourceLanguageCode" => String.t(),
        "TargetLanguageCode" => String.t(),
        "TranslatedDocument" => translated_document()
      }
      
  """
  @type translate_document_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      text_size_limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type text_size_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_parallel_data_response() :: %{
        "LatestUpdateAttemptAt" => non_neg_integer(),
        "LatestUpdateAttemptStatus" => list(any()),
        "Name" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type update_parallel_data_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      stop_text_translation_job_response() :: %{
        "JobId" => String.t(),
        "JobStatus" => list(any())
      }
      
  """
  @type stop_text_translation_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      concurrent_modification_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type concurrent_modification_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_display_language_code_exception() :: %{
        "DisplayLanguageCode" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type unsupported_display_language_code_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceArn") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_text_translation_job_request() :: %{
        required("JobId") => String.t()
      }
      
  """
  @type describe_text_translation_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      output_data_config() :: %{
        "EncryptionKey" => encryption_key(),
        "S3Uri" => String.t()
      }
      
  """
  @type output_data_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parallel_data_data_location() :: %{
        "Location" => String.t(),
        "RepositoryType" => String.t()
      }
      
  """
  @type parallel_data_data_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      translate_document_request() :: %{
        optional("Settings") => translation_settings(),
        optional("TerminologyNames") => list(String.t()()),
        required("Document") => document(),
        required("SourceLanguageCode") => String.t(),
        required("TargetLanguageCode") => String.t()
      }
      
  """
  @type translate_document_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      terminology_data() :: %{
        "Directionality" => list(any()),
        "File" => binary(),
        "Format" => list(any())
      }
      
  """
  @type terminology_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_parallel_data_request() :: %{
        required("Name") => String.t()
      }
      
  """
  @type delete_parallel_data_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      encryption_key() :: %{
        "Id" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type encryption_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      terminology_properties() :: %{
        "Arn" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "Directionality" => list(any()),
        "EncryptionKey" => encryption_key(),
        "Format" => list(any()),
        "LastUpdatedAt" => non_neg_integer(),
        "Message" => String.t(),
        "Name" => String.t(),
        "SizeBytes" => integer(),
        "SkippedTermCount" => integer(),
        "SourceLanguageCode" => String.t(),
        "TargetLanguageCodes" => list(String.t()()),
        "TermCount" => integer()
      }
      
  """
  @type terminology_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_text_translation_job_request() :: %{
        optional("JobName") => String.t(),
        optional("ParallelDataNames") => list(String.t()()),
        optional("Settings") => translation_settings(),
        optional("TerminologyNames") => list(String.t()()),
        required("ClientToken") => String.t(),
        required("DataAccessRoleArn") => String.t(),
        required("InputDataConfig") => input_data_config(),
        required("OutputDataConfig") => output_data_config(),
        required("SourceLanguageCode") => String.t(),
        required("TargetLanguageCodes") => list(String.t()())
      }
      
  """
  @type start_text_translation_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document() :: %{
        "Content" => binary(),
        "ContentType" => String.t()
      }
      
  """
  @type document() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_terminology_request() :: %{
        optional("TerminologyDataFormat") => list(any()),
        required("Name") => String.t()
      }
      
  """
  @type get_terminology_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_tags_exception() :: %{
        "ResourceArn" => String.t(),
        "message" => String.t()
      }
      
  """
  @type too_many_tags_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      applied_terminology() :: %{
        "Name" => String.t(),
        "Terms" => list(translate_term()())
      }
      
  """
  @type applied_terminology() :: %{String.t() => any()}

  @type create_parallel_data_errors() ::
          too_many_tags_exception()
          | limit_exceeded_exception()
          | concurrent_modification_exception()
          | internal_server_exception()
          | invalid_parameter_value_exception()
          | invalid_request_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type delete_parallel_data_errors() ::
          concurrent_modification_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type delete_terminology_errors() ::
          internal_server_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type describe_text_translation_job_errors() ::
          internal_server_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_parallel_data_errors() ::
          internal_server_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_terminology_errors() ::
          internal_server_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type import_terminology_errors() ::
          too_many_tags_exception()
          | limit_exceeded_exception()
          | concurrent_modification_exception()
          | internal_server_exception()
          | invalid_parameter_value_exception()
          | too_many_requests_exception()

  @type list_languages_errors() ::
          unsupported_display_language_code_exception()
          | internal_server_exception()
          | invalid_parameter_value_exception()
          | too_many_requests_exception()

  @type list_parallel_data_errors() ::
          internal_server_exception()
          | invalid_parameter_value_exception()
          | too_many_requests_exception()

  @type list_tags_for_resource_errors() ::
          internal_server_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()

  @type list_terminologies_errors() ::
          internal_server_exception()
          | invalid_parameter_value_exception()
          | too_many_requests_exception()

  @type list_text_translation_jobs_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | invalid_filter_exception()
          | too_many_requests_exception()

  @type start_text_translation_job_errors() ::
          internal_server_exception()
          | invalid_parameter_value_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | unsupported_language_pair_exception()

  @type stop_text_translation_job_errors() ::
          internal_server_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type tag_resource_errors() ::
          too_many_tags_exception()
          | concurrent_modification_exception()
          | internal_server_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()

  @type translate_document_errors() ::
          limit_exceeded_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | unsupported_language_pair_exception()

  @type translate_text_errors() ::
          text_size_limit_exceeded_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | detected_language_low_confidence_exception()
          | unsupported_language_pair_exception()

  @type untag_resource_errors() ::
          concurrent_modification_exception()
          | internal_server_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()

  @type update_parallel_data_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | internal_server_exception()
          | invalid_parameter_value_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()

  def metadata do
    %{
      api_version: "2017-07-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "translate",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Translate",
      signature_version: "v4",
      signing_name: "translate",
      target_prefix: "AWSShineFrontendService_20170701"
    }
  end

  @doc """
   
  Creates a parallel data resource in Amazon Translate by importing an input file
  from Amazon S3. Parallel data files contain examples that show how you want
  segments of text to be translated. By adding parallel data, you can influence
  the style, tone, and word choice in your translation output.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=translate%20CreateParallelData&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_parallel_data_request`)
    %{
      optional("Description") => String.t(),
      optional("EncryptionKey") => encryption_key(),
      optional("Tags") => list(tag()()),
      required("ClientToken") => String.t(),
      required("Name") => String.t(),
      required("ParallelDataConfig") => parallel_data_config()
    }
  """
  @spec create_parallel_data(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_parallel_data_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_parallel_data_errors()}
  def create_parallel_data(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateParallelData", input, options)
  end

  @doc """
   
  Deletes a parallel data resource in Amazon Translate.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=translate%20DeleteParallelData&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_parallel_data_request`)
    %{
      required("Name") => String.t()
    }
  """
  @spec delete_parallel_data(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_parallel_data_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_parallel_data_errors()}
  def delete_parallel_data(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteParallelData", input, options)
  end

  @doc """
   
  A synchronous action that deletes a custom terminology.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=translate%20DeleteTerminology&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_terminology_request`)
    %{
      required("Name") => String.t()
    }
  """
  @spec delete_terminology(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_terminology_errors()}
  def delete_terminology(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteTerminology", input, options)
  end

  @doc """
   
  Gets the properties associated with an asynchronous batch translation job
  including name, ID, status, source and target languages, input/output S3
  buckets, and so on.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=translate%20DescribeTextTranslationJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_text_translation_job_request`)
    %{
      required("JobId") => String.t()
    }
  """
  @spec describe_text_translation_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_text_translation_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_text_translation_job_errors()}
  def describe_text_translation_job(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeTextTranslationJob", input, options)
  end

  @doc """
   
  Provides information about a parallel data resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=translate%20GetParallelData&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_parallel_data_request`)
    %{
      required("Name") => String.t()
    }
  """
  @spec get_parallel_data(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_parallel_data_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_parallel_data_errors()}
  def get_parallel_data(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetParallelData", input, options)
  end

  @doc """
   
  Retrieves a custom terminology.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=translate%20GetTerminology&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_terminology_request`)
    %{
      optional("TerminologyDataFormat") => list(any()),
      required("Name") => String.t()
    }
  """
  @spec get_terminology(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_terminology_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_terminology_errors()}
  def get_terminology(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetTerminology", input, options)
  end

  @doc """
   
  Creates or updates a custom terminology, depending on whether one already exists
  for the given terminology name. Importing a terminology with the same name as
  an existing one will merge the terminologies based on the chosen merge
  strategy. The only supported merge strategy is OVERWRITE, where the imported
  terminology overwrites the existing terminology of the same name.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=translate%20ImportTerminology&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:import_terminology_request`)
    %{
      optional("Description") => String.t(),
      optional("EncryptionKey") => encryption_key(),
      optional("Tags") => list(tag()()),
      required("MergeStrategy") => list(any()),
      required("Name") => String.t(),
      required("TerminologyData") => terminology_data()
    }
  """
  @spec import_terminology(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, import_terminology_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, import_terminology_errors()}
  def import_terminology(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ImportTerminology", input, options)
  end

  @doc """
   
  Provides a list of languages (RFC-5646 codes and names) that Amazon Translate
  supports.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=translate%20ListLanguages&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_languages_request`)
    %{
      optional("DisplayLanguageCode") => list(any()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """
  @spec list_languages(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_languages_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_languages_errors()}
  def list_languages(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListLanguages", input, options)
  end

  @doc """
   
  Provides a list of your parallel data resources in Amazon Translate.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=translate%20ListParallelData&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_parallel_data_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """
  @spec list_parallel_data(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_parallel_data_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_parallel_data_errors()}
  def list_parallel_data(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListParallelData", input, options)
  end

  @doc """
   
  Lists all tags associated with a given Amazon Translate resource. For more
  information, see [ Tagging your
  resources](https://docs.aws.amazon.com/translate/latest/dg/tagging.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=translate%20ListTagsForResource&this_doc_guide=API%2520Reference)

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
   
  Provides a list of custom terminologies associated with your account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=translate%20ListTerminologies&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_terminologies_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """
  @spec list_terminologies(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_terminologies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_terminologies_errors()}
  def list_terminologies(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTerminologies", input, options)
  end

  @doc """
   
  Gets a list of the batch translation jobs that you have submitted.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=translate%20ListTextTranslationJobs&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_text_translation_jobs_request`)
    %{
      optional("Filter") => text_translation_job_filter(),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """
  @spec list_text_translation_jobs(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_text_translation_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_text_translation_jobs_errors()}
  def list_text_translation_jobs(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTextTranslationJobs", input, options)
  end

  @doc """
   
  Starts an asynchronous batch translation job. Use batch translation jobs to
  translate large volumes of text across multiple documents at once. For batch
  translation, you can input documents with different source languages (specify
  `auto` as the source language). You can specify one or more target languages.
  Batch translation translates each input document into each of the target
  languages. For more information, see [Asynchronous batch
  processing](https://docs.aws.amazon.com/translate/latest/dg/async.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=translate%20StartTextTranslationJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:start_text_translation_job_request`)
    %{
      optional("JobName") => String.t(),
      optional("ParallelDataNames") => list(String.t()()),
      optional("Settings") => translation_settings(),
      optional("TerminologyNames") => list(String.t()()),
      required("ClientToken") => String.t(),
      required("DataAccessRoleArn") => String.t(),
      required("InputDataConfig") => input_data_config(),
      required("OutputDataConfig") => output_data_config(),
      required("SourceLanguageCode") => String.t(),
      required("TargetLanguageCodes") => list(String.t()())
    }
  """
  @spec start_text_translation_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, start_text_translation_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_text_translation_job_errors()}
  def start_text_translation_job(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartTextTranslationJob", input, options)
  end

  @doc """
   
  Stops an asynchronous batch translation job that is in progress. If the job's
  state is `IN_PROGRESS`, the job will be marked for termination and put into
  the `STOP_REQUESTED` state. If the job completes before it can be stopped, it
  is put into the `COMPLETED` state. Otherwise, the job is put into the
  `STOPPED` state.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=translate%20StopTextTranslationJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:stop_text_translation_job_request`)
    %{
      required("JobId") => String.t()
    }
  """
  @spec stop_text_translation_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, stop_text_translation_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_text_translation_job_errors()}
  def stop_text_translation_job(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopTextTranslationJob", input, options)
  end

  @doc """
   
  Associates a specific tag with a resource. A tag is a key-value pair that adds
  as a metadata to a resource. For more information, see [ Tagging your
  resources](https://docs.aws.amazon.com/translate/latest/dg/tagging.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=translate%20TagResource&this_doc_guide=API%2520Reference)

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
   
  Translates the input document from the source language to the target language.
  This synchronous operation supports text, HTML, or Word documents as the input
  document. `TranslateDocument` supports translations from English to any
  supported language, and from any supported language to English. Therefore,
  specify either the source language code or the target language code as “en”
  (English).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=translate%20TranslateDocument&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:translate_document_request`)
    %{
      optional("Settings") => translation_settings(),
      optional("TerminologyNames") => list(String.t()()),
      required("Document") => document(),
      required("SourceLanguageCode") => String.t(),
      required("TargetLanguageCode") => String.t()
    }
  """
  @spec translate_document(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, translate_document_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, translate_document_errors()}
  def translate_document(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "TranslateDocument", input, options)
  end

  @doc """
   
  Translates input text from the source language to the target language. For a
  list of available languages and language codes, see [Supported
  languages](https://docs.aws.amazon.com/translate/latest/dg/what-is-languages.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=translate%20TranslateText&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:translate_text_request`)
    %{
      optional("Settings") => translation_settings(),
      optional("TerminologyNames") => list(String.t()()),
      required("SourceLanguageCode") => String.t(),
      required("TargetLanguageCode") => String.t(),
      required("Text") => String.t()
    }
  """
  @spec translate_text(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, translate_text_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, translate_text_errors()}
  def translate_text(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "TranslateText", input, options)
  end

  @doc """
   
  Removes a specific tag associated with an Amazon Translate resource. For more
  information, see [ Tagging your
  resources](https://docs.aws.amazon.com/translate/latest/dg/tagging.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=translate%20UntagResource&this_doc_guide=API%2520Reference)

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
   
  Updates a previously created parallel data resource by importing a new input
  file from Amazon S3.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=translate%20UpdateParallelData&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_parallel_data_request`)
    %{
      optional("Description") => String.t(),
      required("ClientToken") => String.t(),
      required("Name") => String.t(),
      required("ParallelDataConfig") => parallel_data_config()
    }
  """
  @spec update_parallel_data(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_parallel_data_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_parallel_data_errors()}
  def update_parallel_data(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateParallelData", input, options)
  end
end
