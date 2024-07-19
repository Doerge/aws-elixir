# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Transcribe do
  @moduledoc """
  Amazon Transcribe offers three main types of batch transcription: **Standard**,
  **Medical**, and **Call Analytics**.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      list_vocabularies_response() :: %{
        "NextToken" => String.t(),
        "Status" => list(any()),
        "Vocabularies" => list(vocabulary_info()())
      }
      
  """
  @type list_vocabularies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_transcription_job_response() :: %{
        "TranscriptionJob" => transcription_job()
      }
      
  """
  @type get_transcription_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      call_analytics_job_summary() :: %{
        "CallAnalyticsJobDetails" => call_analytics_job_details(),
        "CallAnalyticsJobName" => String.t(),
        "CallAnalyticsJobStatus" => list(any()),
        "CompletionTime" => non_neg_integer(),
        "CreationTime" => non_neg_integer(),
        "FailureReason" => String.t(),
        "LanguageCode" => list(any()),
        "StartTime" => non_neg_integer()
      }
      
  """
  @type call_analytics_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      transcription_job() :: %{
        "CompletionTime" => non_neg_integer(),
        "ContentRedaction" => content_redaction(),
        "CreationTime" => non_neg_integer(),
        "FailureReason" => String.t(),
        "IdentifiedLanguageScore" => float(),
        "IdentifyLanguage" => boolean(),
        "IdentifyMultipleLanguages" => boolean(),
        "JobExecutionSettings" => job_execution_settings(),
        "LanguageCode" => list(any()),
        "LanguageCodes" => list(language_code_item()()),
        "LanguageIdSettings" => map(),
        "LanguageOptions" => list(list(any())()),
        "Media" => media(),
        "MediaFormat" => list(any()),
        "MediaSampleRateHertz" => integer(),
        "ModelSettings" => model_settings(),
        "Settings" => settings(),
        "StartTime" => non_neg_integer(),
        "Subtitles" => subtitles_output(),
        "Tags" => list(tag()()),
        "ToxicityDetection" => list(toxicity_detection_settings()()),
        "Transcript" => transcript(),
        "TranscriptionJobName" => String.t(),
        "TranscriptionJobStatus" => list(any())
      }
      
  """
  @type transcription_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      medical_transcription_job_summary() :: %{
        "CompletionTime" => non_neg_integer(),
        "ContentIdentificationType" => list(any()),
        "CreationTime" => non_neg_integer(),
        "FailureReason" => String.t(),
        "LanguageCode" => list(any()),
        "MedicalTranscriptionJobName" => String.t(),
        "OutputLocationType" => list(any()),
        "Specialty" => list(any()),
        "StartTime" => non_neg_integer(),
        "TranscriptionJobStatus" => list(any()),
        "Type" => list(any())
      }
      
  """
  @type medical_transcription_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_call_analytics_job_response() :: %{}
      
  """
  @type delete_call_analytics_job_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_call_analytics_category_response() :: %{}
      
  """
  @type delete_call_analytics_category_response() :: %{}

  @typedoc """

  ## Example:
      
      create_language_model_response() :: %{
        "BaseModelName" => list(any()),
        "InputDataConfig" => input_data_config(),
        "LanguageCode" => list(any()),
        "ModelName" => String.t(),
        "ModelStatus" => list(any())
      }
      
  """
  @type create_language_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_vocabulary_filter_request() :: %{
        optional("DataAccessRoleArn") => String.t(),
        optional("Tags") => list(tag()()),
        optional("VocabularyFilterFileUri") => String.t(),
        optional("Words") => list(String.t()()),
        required("LanguageCode") => list(any())
      }
      
  """
  @type create_vocabulary_filter_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("Tags") => list(tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_failure_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_failure_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_medical_transcription_job_request() :: %{}
      
  """
  @type delete_medical_transcription_job_request() :: %{}

  @typedoc """

  ## Example:
      
      list_medical_transcription_jobs_response() :: %{
        "MedicalTranscriptionJobSummaries" => list(medical_transcription_job_summary()()),
        "NextToken" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type list_medical_transcription_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      job_execution_settings() :: %{
        "AllowDeferredExecution" => boolean(),
        "DataAccessRoleArn" => String.t()
      }
      
  """
  @type job_execution_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      absolute_time_range() :: %{
        "EndTime" => float(),
        "First" => float(),
        "Last" => float(),
        "StartTime" => float()
      }
      
  """
  @type absolute_time_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_language_models_request() :: %{
        optional("MaxResults") => integer(),
        optional("NameContains") => String.t(),
        optional("NextToken") => String.t(),
        optional("StatusEquals") => list(any())
      }
      
  """
  @type list_language_models_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      summarization() :: %{
        "GenerateAbstractiveSummary" => boolean()
      }
      
  """
  @type summarization() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      input_data_config() :: %{
        "DataAccessRoleArn" => String.t(),
        "S3Uri" => String.t(),
        "TuningDataS3Uri" => String.t()
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
      
      non_talk_time_filter() :: %{
        "AbsoluteTimeRange" => absolute_time_range(),
        "Negate" => boolean(),
        "RelativeTimeRange" => relative_time_range(),
        "Threshold" => float()
      }
      
  """
  @type non_talk_time_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_medical_transcription_job_response() :: %{
        "MedicalTranscriptionJob" => medical_transcription_job()
      }
      
  """
  @type start_medical_transcription_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      toxicity_detection_settings() :: %{
        "ToxicityCategories" => list(list(any())())
      }
      
  """
  @type toxicity_detection_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_language_model_request() :: %{}
      
  """
  @type delete_language_model_request() :: %{}

  @typedoc """

  ## Example:
      
      create_vocabulary_filter_response() :: %{
        "LanguageCode" => list(any()),
        "LastModifiedTime" => non_neg_integer(),
        "VocabularyFilterName" => String.t()
      }
      
  """
  @type create_vocabulary_filter_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_transcription_jobs_request() :: %{
        optional("JobNameContains") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Status") => list(any())
      }
      
  """
  @type list_transcription_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_vocabulary_response() :: %{
        "FailureReason" => String.t(),
        "LanguageCode" => list(any()),
        "LastModifiedTime" => non_neg_integer(),
        "VocabularyName" => String.t(),
        "VocabularyState" => list(any())
      }
      
  """
  @type create_vocabulary_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_vocabulary_filter_request() :: %{
        optional("DataAccessRoleArn") => String.t(),
        optional("VocabularyFilterFileUri") => String.t(),
        optional("Words") => list(String.t()())
      }
      
  """
  @type update_vocabulary_filter_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      medical_scribe_job_summary() :: %{
        "CompletionTime" => non_neg_integer(),
        "CreationTime" => non_neg_integer(),
        "FailureReason" => String.t(),
        "LanguageCode" => list(any()),
        "MedicalScribeJobName" => String.t(),
        "MedicalScribeJobStatus" => list(any()),
        "StartTime" => non_neg_integer()
      }
      
  """
  @type medical_scribe_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      transcription_job_summary() :: %{
        "CompletionTime" => non_neg_integer(),
        "ContentRedaction" => content_redaction(),
        "CreationTime" => non_neg_integer(),
        "FailureReason" => String.t(),
        "IdentifiedLanguageScore" => float(),
        "IdentifyLanguage" => boolean(),
        "IdentifyMultipleLanguages" => boolean(),
        "LanguageCode" => list(any()),
        "LanguageCodes" => list(language_code_item()()),
        "ModelSettings" => model_settings(),
        "OutputLocationType" => list(any()),
        "StartTime" => non_neg_integer(),
        "ToxicityDetection" => list(toxicity_detection_settings()()),
        "TranscriptionJobName" => String.t(),
        "TranscriptionJobStatus" => list(any())
      }
      
  """
  @type transcription_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_medical_vocabularies_request() :: %{
        optional("MaxResults") => integer(),
        optional("NameContains") => String.t(),
        optional("NextToken") => String.t(),
        optional("StateEquals") => list(any())
      }
      
  """
  @type list_medical_vocabularies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      call_analytics_job() :: %{
        "CallAnalyticsJobDetails" => call_analytics_job_details(),
        "CallAnalyticsJobName" => String.t(),
        "CallAnalyticsJobStatus" => list(any()),
        "ChannelDefinitions" => list(channel_definition()()),
        "CompletionTime" => non_neg_integer(),
        "CreationTime" => non_neg_integer(),
        "DataAccessRoleArn" => String.t(),
        "FailureReason" => String.t(),
        "IdentifiedLanguageScore" => float(),
        "LanguageCode" => list(any()),
        "Media" => media(),
        "MediaFormat" => list(any()),
        "MediaSampleRateHertz" => integer(),
        "Settings" => call_analytics_job_settings(),
        "StartTime" => non_neg_integer(),
        "Transcript" => transcript()
      }
      
  """
  @type call_analytics_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      language_code_item() :: %{
        "DurationInSeconds" => float(),
        "LanguageCode" => list(any())
      }
      
  """
  @type language_code_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_vocabularies_request() :: %{
        optional("MaxResults") => integer(),
        optional("NameContains") => String.t(),
        optional("NextToken") => String.t(),
        optional("StateEquals") => list(any())
      }
      
  """
  @type list_vocabularies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      transcript() :: %{
        "RedactedTranscriptFileUri" => String.t(),
        "TranscriptFileUri" => String.t()
      }
      
  """
  @type transcript() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      call_analytics_job_details() :: %{
        "Skipped" => list(call_analytics_skipped_feature()())
      }
      
  """
  @type call_analytics_job_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_medical_scribe_jobs_response() :: %{
        "MedicalScribeJobSummaries" => list(medical_scribe_job_summary()()),
        "NextToken" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type list_medical_scribe_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_call_analytics_job_request() :: %{}
      
  """
  @type get_call_analytics_job_request() :: %{}

  @typedoc """

  ## Example:
      
      update_vocabulary_request() :: %{
        optional("DataAccessRoleArn") => String.t(),
        optional("Phrases") => list(String.t()()),
        optional("VocabularyFileUri") => String.t(),
        required("LanguageCode") => list(any())
      }
      
  """
  @type update_vocabulary_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      transcript_filter() :: %{
        "AbsoluteTimeRange" => absolute_time_range(),
        "Negate" => boolean(),
        "ParticipantRole" => list(any()),
        "RelativeTimeRange" => relative_time_range(),
        "Targets" => list(String.t()()),
        "TranscriptFilterType" => list(any())
      }
      
  """
  @type transcript_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_vocabulary_request() :: %{
        optional("DataAccessRoleArn") => String.t(),
        optional("Phrases") => list(String.t()()),
        optional("Tags") => list(tag()()),
        optional("VocabularyFileUri") => String.t(),
        required("LanguageCode") => list(any())
      }
      
  """
  @type create_vocabulary_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_vocabulary_request() :: %{}
      
  """
  @type get_vocabulary_request() :: %{}

  @typedoc """

  ## Example:
      
      create_language_model_request() :: %{
        optional("Tags") => list(tag()()),
        required("BaseModelName") => list(any()),
        required("InputDataConfig") => input_data_config(),
        required("LanguageCode") => list(any())
      }
      
  """
  @type create_language_model_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_call_analytics_categories_response() :: %{
        "Categories" => list(category_properties()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_call_analytics_categories_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_call_analytics_job_response() :: %{
        "CallAnalyticsJob" => call_analytics_job()
      }
      
  """
  @type start_call_analytics_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_medical_vocabulary_response() :: %{
        "LanguageCode" => list(any()),
        "LastModifiedTime" => non_neg_integer(),
        "VocabularyName" => String.t(),
        "VocabularyState" => list(any())
      }
      
  """
  @type update_medical_vocabulary_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_call_analytics_job_request() :: %{
        optional("ChannelDefinitions") => list(channel_definition()()),
        optional("DataAccessRoleArn") => String.t(),
        optional("OutputEncryptionKMSKeyId") => String.t(),
        optional("OutputLocation") => String.t(),
        optional("Settings") => call_analytics_job_settings(),
        required("Media") => media()
      }
      
  """
  @type start_call_analytics_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      content_redaction() :: %{
        "PiiEntityTypes" => list(list(any())()),
        "RedactionOutput" => list(any()),
        "RedactionType" => list(any())
      }
      
  """
  @type content_redaction() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      medical_transcript() :: %{
        "TranscriptFileUri" => String.t()
      }
      
  """
  @type medical_transcript() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      medical_transcription_job() :: %{
        "CompletionTime" => non_neg_integer(),
        "ContentIdentificationType" => list(any()),
        "CreationTime" => non_neg_integer(),
        "FailureReason" => String.t(),
        "LanguageCode" => list(any()),
        "Media" => media(),
        "MediaFormat" => list(any()),
        "MediaSampleRateHertz" => integer(),
        "MedicalTranscriptionJobName" => String.t(),
        "Settings" => medical_transcription_setting(),
        "Specialty" => list(any()),
        "StartTime" => non_neg_integer(),
        "Tags" => list(tag()()),
        "Transcript" => medical_transcript(),
        "TranscriptionJobStatus" => list(any()),
        "Type" => list(any())
      }
      
  """
  @type medical_transcription_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      category_properties() :: %{
        "CategoryName" => String.t(),
        "CreateTime" => non_neg_integer(),
        "InputType" => list(any()),
        "LastUpdateTime" => non_neg_integer(),
        "Rules" => list(list()())
      }
      
  """
  @type category_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_transcription_job_request() :: %{}
      
  """
  @type get_transcription_job_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_medical_scribe_job_request() :: %{}
      
  """
  @type delete_medical_scribe_job_request() :: %{}

  @typedoc """

  ## Example:
      
      vocabulary_filter_info() :: %{
        "LanguageCode" => list(any()),
        "LastModifiedTime" => non_neg_integer(),
        "VocabularyFilterName" => String.t()
      }
      
  """
  @type vocabulary_filter_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      medical_scribe_settings() :: %{
        "ChannelIdentification" => boolean(),
        "MaxSpeakerLabels" => integer(),
        "ShowSpeakerLabels" => boolean(),
        "VocabularyFilterMethod" => list(any()),
        "VocabularyFilterName" => String.t(),
        "VocabularyName" => String.t()
      }
      
  """
  @type medical_scribe_settings() :: %{String.t() => any()}

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
      
      delete_transcription_job_request() :: %{}
      
  """
  @type delete_transcription_job_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_call_analytics_job_request() :: %{}
      
  """
  @type delete_call_analytics_job_request() :: %{}

  @typedoc """

  ## Example:
      
      sentiment_filter() :: %{
        "AbsoluteTimeRange" => absolute_time_range(),
        "Negate" => boolean(),
        "ParticipantRole" => list(any()),
        "RelativeTimeRange" => relative_time_range(),
        "Sentiments" => list(list(any())())
      }
      
  """
  @type sentiment_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_vocabulary_filters_request() :: %{
        optional("MaxResults") => integer(),
        optional("NameContains") => String.t(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_vocabulary_filters_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      channel_definition() :: %{
        "ChannelId" => integer(),
        "ParticipantRole" => list(any())
      }
      
  """
  @type channel_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      medical_transcription_setting() :: %{
        "ChannelIdentification" => boolean(),
        "MaxAlternatives" => integer(),
        "MaxSpeakerLabels" => integer(),
        "ShowAlternatives" => boolean(),
        "ShowSpeakerLabels" => boolean(),
        "VocabularyName" => String.t()
      }
      
  """
  @type medical_transcription_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      call_analytics_skipped_feature() :: %{
        "Feature" => list(any()),
        "Message" => String.t(),
        "ReasonCode" => list(any())
      }
      
  """
  @type call_analytics_skipped_feature() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_medical_vocabularies_response() :: %{
        "NextToken" => String.t(),
        "Status" => list(any()),
        "Vocabularies" => list(vocabulary_info()())
      }
      
  """
  @type list_medical_vocabularies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      settings() :: %{
        "ChannelIdentification" => boolean(),
        "MaxAlternatives" => integer(),
        "MaxSpeakerLabels" => integer(),
        "ShowAlternatives" => boolean(),
        "ShowSpeakerLabels" => boolean(),
        "VocabularyFilterMethod" => list(any()),
        "VocabularyFilterName" => String.t(),
        "VocabularyName" => String.t()
      }
      
  """
  @type settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_settings() :: %{
        "LanguageModelName" => String.t()
      }
      
  """
  @type model_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_transcription_jobs_response() :: %{
        "NextToken" => String.t(),
        "Status" => list(any()),
        "TranscriptionJobSummaries" => list(transcription_job_summary()())
      }
      
  """
  @type list_transcription_jobs_response() :: %{String.t() => any()}

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
      
      medical_scribe_job() :: %{
        "ChannelDefinitions" => list(medical_scribe_channel_definition()()),
        "CompletionTime" => non_neg_integer(),
        "CreationTime" => non_neg_integer(),
        "DataAccessRoleArn" => String.t(),
        "FailureReason" => String.t(),
        "LanguageCode" => list(any()),
        "Media" => media(),
        "MedicalScribeJobName" => String.t(),
        "MedicalScribeJobStatus" => list(any()),
        "MedicalScribeOutput" => medical_scribe_output(),
        "Settings" => medical_scribe_settings(),
        "StartTime" => non_neg_integer(),
        "Tags" => list(tag()())
      }
      
  """
  @type medical_scribe_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      language_id_settings() :: %{
        "LanguageModelName" => String.t(),
        "VocabularyFilterName" => String.t(),
        "VocabularyName" => String.t()
      }
      
  """
  @type language_id_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_call_analytics_job_response() :: %{
        "CallAnalyticsJob" => call_analytics_job()
      }
      
  """
  @type get_call_analytics_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      media() :: %{
        "MediaFileUri" => String.t(),
        "RedactedMediaFileUri" => String.t()
      }
      
  """
  @type media() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_vocabulary_filter_response() :: %{
        "LanguageCode" => list(any()),
        "LastModifiedTime" => non_neg_integer(),
        "VocabularyFilterName" => String.t()
      }
      
  """
  @type update_vocabulary_filter_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      language_model() :: %{
        "BaseModelName" => list(any()),
        "CreateTime" => non_neg_integer(),
        "FailureReason" => String.t(),
        "InputDataConfig" => input_data_config(),
        "LanguageCode" => list(any()),
        "LastModifiedTime" => non_neg_integer(),
        "ModelName" => String.t(),
        "ModelStatus" => list(any()),
        "UpgradeAvailability" => boolean()
      }
      
  """
  @type language_model() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_medical_vocabulary_request() :: %{
        required("LanguageCode") => list(any()),
        required("VocabularyFileUri") => String.t()
      }
      
  """
  @type update_medical_vocabulary_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_call_analytics_category_request() :: %{
        optional("InputType") => list(any()),
        required("Rules") => list(list()())
      }
      
  """
  @type update_call_analytics_category_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_medical_transcription_job_request() :: %{
        optional("ContentIdentificationType") => list(any()),
        optional("KMSEncryptionContext") => map(),
        optional("MediaFormat") => list(any()),
        optional("MediaSampleRateHertz") => integer(),
        optional("OutputEncryptionKMSKeyId") => String.t(),
        optional("OutputKey") => String.t(),
        optional("Settings") => medical_transcription_setting(),
        optional("Tags") => list(tag()()),
        required("LanguageCode") => list(any()),
        required("Media") => media(),
        required("OutputBucketName") => String.t(),
        required("Specialty") => list(any()),
        required("Type") => list(any())
      }
      
  """
  @type start_medical_transcription_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_medical_scribe_job_request() :: %{}
      
  """
  @type get_medical_scribe_job_request() :: %{}

  @typedoc """

  ## Example:
      
      list_call_analytics_jobs_response() :: %{
        "CallAnalyticsJobSummaries" => list(call_analytics_job_summary()()),
        "NextToken" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type list_call_analytics_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_transcription_job_response() :: %{
        "TranscriptionJob" => transcription_job()
      }
      
  """
  @type start_transcription_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subtitles() :: %{
        "Formats" => list(list(any())()),
        "OutputStartIndex" => integer()
      }
      
  """
  @type subtitles() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_language_models_response() :: %{
        "Models" => list(language_model()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_language_models_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_call_analytics_category_response() :: %{
        "CategoryProperties" => category_properties()
      }
      
  """
  @type update_call_analytics_category_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_language_model_response() :: %{
        "LanguageModel" => language_model()
      }
      
  """
  @type describe_language_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      medical_scribe_output() :: %{
        "ClinicalDocumentUri" => String.t(),
        "TranscriptFileUri" => String.t()
      }
      
  """
  @type medical_scribe_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_medical_transcription_job_request() :: %{}
      
  """
  @type get_medical_transcription_job_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_vocabulary_filter_request() :: %{}
      
  """
  @type delete_vocabulary_filter_request() :: %{}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      describe_language_model_request() :: %{}
      
  """
  @type describe_language_model_request() :: %{}

  @typedoc """

  ## Example:
      
      list_call_analytics_jobs_request() :: %{
        optional("JobNameContains") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Status") => list(any())
      }
      
  """
  @type list_call_analytics_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_medical_vocabulary_request() :: %{}
      
  """
  @type delete_medical_vocabulary_request() :: %{}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{}
      
  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:
      
      vocabulary_info() :: %{
        "LanguageCode" => list(any()),
        "LastModifiedTime" => non_neg_integer(),
        "VocabularyName" => String.t(),
        "VocabularyState" => list(any())
      }
      
  """
  @type vocabulary_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      call_analytics_job_settings() :: %{
        "ContentRedaction" => content_redaction(),
        "LanguageIdSettings" => map(),
        "LanguageModelName" => String.t(),
        "LanguageOptions" => list(list(any())()),
        "Summarization" => summarization(),
        "VocabularyFilterMethod" => list(any()),
        "VocabularyFilterName" => String.t(),
        "VocabularyName" => String.t()
      }
      
  """
  @type call_analytics_job_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_vocabulary_request() :: %{}
      
  """
  @type delete_vocabulary_request() :: %{}

  @typedoc """

  ## Example:
      
      create_medical_vocabulary_response() :: %{
        "FailureReason" => String.t(),
        "LanguageCode" => list(any()),
        "LastModifiedTime" => non_neg_integer(),
        "VocabularyName" => String.t(),
        "VocabularyState" => list(any())
      }
      
  """
  @type create_medical_vocabulary_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_medical_scribe_job_request() :: %{
        optional("ChannelDefinitions") => list(medical_scribe_channel_definition()()),
        optional("KMSEncryptionContext") => map(),
        optional("OutputEncryptionKMSKeyId") => String.t(),
        optional("Tags") => list(tag()()),
        required("DataAccessRoleArn") => String.t(),
        required("Media") => media(),
        required("OutputBucketName") => String.t(),
        required("Settings") => medical_scribe_settings()
      }
      
  """
  @type start_medical_scribe_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_vocabulary_response() :: %{
        "LanguageCode" => list(any()),
        "LastModifiedTime" => non_neg_integer(),
        "VocabularyName" => String.t(),
        "VocabularyState" => list(any())
      }
      
  """
  @type update_vocabulary_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_medical_vocabulary_response() :: %{
        "DownloadUri" => String.t(),
        "FailureReason" => String.t(),
        "LanguageCode" => list(any()),
        "LastModifiedTime" => non_neg_integer(),
        "VocabularyName" => String.t(),
        "VocabularyState" => list(any())
      }
      
  """
  @type get_medical_vocabulary_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_call_analytics_category_request() :: %{}
      
  """
  @type get_call_analytics_category_request() :: %{}

  @typedoc """

  ## Example:
      
      bad_request_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_medical_transcription_jobs_request() :: %{
        optional("JobNameContains") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Status") => list(any())
      }
      
  """
  @type list_medical_transcription_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_medical_vocabulary_request() :: %{}
      
  """
  @type get_medical_vocabulary_request() :: %{}

  @typedoc """

  ## Example:
      
      list_vocabulary_filters_response() :: %{
        "NextToken" => String.t(),
        "VocabularyFilters" => list(vocabulary_filter_info()())
      }
      
  """
  @type list_vocabulary_filters_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_vocabulary_filter_request() :: %{}
      
  """
  @type get_vocabulary_filter_request() :: %{}

  @typedoc """

  ## Example:
      
      interruption_filter() :: %{
        "AbsoluteTimeRange" => absolute_time_range(),
        "Negate" => boolean(),
        "ParticipantRole" => list(any()),
        "RelativeTimeRange" => relative_time_range(),
        "Threshold" => float()
      }
      
  """
  @type interruption_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_medical_transcription_job_response() :: %{
        "MedicalTranscriptionJob" => medical_transcription_job()
      }
      
  """
  @type get_medical_transcription_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_vocabulary_response() :: %{
        "DownloadUri" => String.t(),
        "FailureReason" => String.t(),
        "LanguageCode" => list(any()),
        "LastModifiedTime" => non_neg_integer(),
        "VocabularyName" => String.t(),
        "VocabularyState" => list(any())
      }
      
  """
  @type get_vocabulary_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_call_analytics_category_request() :: %{}
      
  """
  @type delete_call_analytics_category_request() :: %{}

  @typedoc """

  ## Example:
      
      get_vocabulary_filter_response() :: %{
        "DownloadUri" => String.t(),
        "LanguageCode" => list(any()),
        "LastModifiedTime" => non_neg_integer(),
        "VocabularyFilterName" => String.t()
      }
      
  """
  @type get_vocabulary_filter_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_medical_vocabulary_request() :: %{
        optional("Tags") => list(tag()()),
        required("LanguageCode") => list(any()),
        required("VocabularyFileUri") => String.t()
      }
      
  """
  @type create_medical_vocabulary_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_medical_scribe_jobs_request() :: %{
        optional("JobNameContains") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Status") => list(any())
      }
      
  """
  @type list_medical_scribe_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      relative_time_range() :: %{
        "EndPercentage" => integer(),
        "First" => integer(),
        "Last" => integer(),
        "StartPercentage" => integer()
      }
      
  """
  @type relative_time_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      medical_scribe_channel_definition() :: %{
        "ChannelId" => integer(),
        "ParticipantRole" => list(any())
      }
      
  """
  @type medical_scribe_channel_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_transcription_job_request() :: %{
        optional("ContentRedaction") => content_redaction(),
        optional("IdentifyLanguage") => boolean(),
        optional("IdentifyMultipleLanguages") => boolean(),
        optional("JobExecutionSettings") => job_execution_settings(),
        optional("KMSEncryptionContext") => map(),
        optional("LanguageCode") => list(any()),
        optional("LanguageIdSettings") => map(),
        optional("LanguageOptions") => list(list(any())()),
        optional("MediaFormat") => list(any()),
        optional("MediaSampleRateHertz") => integer(),
        optional("ModelSettings") => model_settings(),
        optional("OutputBucketName") => String.t(),
        optional("OutputEncryptionKMSKeyId") => String.t(),
        optional("OutputKey") => String.t(),
        optional("Settings") => settings(),
        optional("Subtitles") => subtitles(),
        optional("Tags") => list(tag()()),
        optional("ToxicityDetection") => list(toxicity_detection_settings()()),
        required("Media") => media()
      }
      
  """
  @type start_transcription_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_call_analytics_category_response() :: %{
        "CategoryProperties" => category_properties()
      }
      
  """
  @type get_call_analytics_category_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_call_analytics_category_request() :: %{
        optional("InputType") => list(any()),
        required("Rules") => list(list()())
      }
      
  """
  @type create_call_analytics_category_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_medical_scribe_job_response() :: %{
        "MedicalScribeJob" => medical_scribe_job()
      }
      
  """
  @type start_medical_scribe_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_call_analytics_categories_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_call_analytics_categories_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_call_analytics_category_response() :: %{
        "CategoryProperties" => category_properties()
      }
      
  """
  @type create_call_analytics_category_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subtitles_output() :: %{
        "Formats" => list(list(any())()),
        "OutputStartIndex" => integer(),
        "SubtitleFileUris" => list(String.t()())
      }
      
  """
  @type subtitles_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_medical_scribe_job_response() :: %{
        "MedicalScribeJob" => medical_scribe_job()
      }
      
  """
  @type get_medical_scribe_job_response() :: %{String.t() => any()}

  @type create_call_analytics_category_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type create_language_model_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type create_medical_vocabulary_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type create_vocabulary_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type create_vocabulary_filter_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type delete_call_analytics_category_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type delete_call_analytics_job_errors() ::
          bad_request_exception() | limit_exceeded_exception() | internal_failure_exception()

  @type delete_language_model_errors() ::
          bad_request_exception() | limit_exceeded_exception() | internal_failure_exception()

  @type delete_medical_scribe_job_errors() ::
          bad_request_exception() | limit_exceeded_exception() | internal_failure_exception()

  @type delete_medical_transcription_job_errors() ::
          bad_request_exception() | limit_exceeded_exception() | internal_failure_exception()

  @type delete_medical_vocabulary_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type delete_transcription_job_errors() ::
          bad_request_exception() | limit_exceeded_exception() | internal_failure_exception()

  @type delete_vocabulary_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type delete_vocabulary_filter_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type describe_language_model_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type get_call_analytics_category_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type get_call_analytics_job_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type get_medical_scribe_job_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type get_medical_transcription_job_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type get_medical_vocabulary_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type get_transcription_job_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type get_vocabulary_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type get_vocabulary_filter_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type list_call_analytics_categories_errors() ::
          bad_request_exception() | limit_exceeded_exception() | internal_failure_exception()

  @type list_call_analytics_jobs_errors() ::
          bad_request_exception() | limit_exceeded_exception() | internal_failure_exception()

  @type list_language_models_errors() ::
          bad_request_exception() | limit_exceeded_exception() | internal_failure_exception()

  @type list_medical_scribe_jobs_errors() ::
          bad_request_exception() | limit_exceeded_exception() | internal_failure_exception()

  @type list_medical_transcription_jobs_errors() ::
          bad_request_exception() | limit_exceeded_exception() | internal_failure_exception()

  @type list_medical_vocabularies_errors() ::
          bad_request_exception() | limit_exceeded_exception() | internal_failure_exception()

  @type list_tags_for_resource_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type list_transcription_jobs_errors() ::
          bad_request_exception() | limit_exceeded_exception() | internal_failure_exception()

  @type list_vocabularies_errors() ::
          bad_request_exception() | limit_exceeded_exception() | internal_failure_exception()

  @type list_vocabulary_filters_errors() ::
          bad_request_exception() | limit_exceeded_exception() | internal_failure_exception()

  @type start_call_analytics_job_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type start_medical_scribe_job_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type start_medical_transcription_job_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type start_transcription_job_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type tag_resource_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type untag_resource_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type update_call_analytics_category_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type update_medical_vocabulary_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type update_vocabulary_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type update_vocabulary_filter_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  def metadata do
    %{
      api_version: "2017-10-26",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "transcribe",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Transcribe",
      signature_version: "v4",
      signing_name: "transcribe",
      target_prefix: "Transcribe"
    }
  end

  @doc """
  Creates a new Call Analytics category. All categories are automatically applied
  to your Call Analytics transcriptions. Note that in order to apply categories
  to your transcriptions, you must create them before submitting your
  transcription request, as categories cannot be applied retroactively.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=transcribe%20CreateCallAnalyticsCategory&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_call_analytics_category_request`)
    %{
      optional("InputType") => list(any()),
      required("Rules") => list(list()())
    }
  """

  @spec create_call_analytics_category(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_call_analytics_category_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_call_analytics_category_errors()}

  def create_call_analytics_category(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateCallAnalyticsCategory", input, options)
  end

  @doc """
  Creates a new custom language model. When creating a new custom language model,
  you must specify:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=transcribe%20CreateLanguageModel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_language_model_request`)
    %{
      optional("Tags") => list(tag()()),
      required("BaseModelName") => list(any()),
      required("InputDataConfig") => input_data_config(),
      required("LanguageCode") => list(any())
    }
  """

  @spec create_language_model(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_language_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_language_model_errors()}

  def create_language_model(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateLanguageModel", input, options)
  end

  @doc """
  Creates a new custom medical vocabulary. Before creating a new custom medical
  vocabulary, you must first upload a text file that contains your vocabulary
  table into an Amazon S3 bucket. Note that this differs from , where you can
  include a list of terms within your request using the `Phrases` flag;
  `CreateMedicalVocabulary` does not support the `Phrases` flag and only accepts
  vocabularies in table format.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=transcribe%20CreateMedicalVocabulary&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_medical_vocabulary_request`)
    %{
      optional("Tags") => list(tag()()),
      required("LanguageCode") => list(any()),
      required("VocabularyFileUri") => String.t()
    }
  """

  @spec create_medical_vocabulary(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_medical_vocabulary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_medical_vocabulary_errors()}

  def create_medical_vocabulary(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateMedicalVocabulary", input, options)
  end

  @doc """
  Creates a new custom vocabulary. When creating a new custom vocabulary, you can
  either upload a text file that contains your new entries, phrases, and terms
  into an Amazon S3 bucket and include the URI in your request. Or you can
  include a list of terms directly in your request using the `Phrases` flag.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=transcribe%20CreateVocabulary&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_vocabulary_request`)
    %{
      optional("DataAccessRoleArn") => String.t(),
      optional("Phrases") => list(String.t()()),
      optional("Tags") => list(tag()()),
      optional("VocabularyFileUri") => String.t(),
      required("LanguageCode") => list(any())
    }
  """

  @spec create_vocabulary(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_vocabulary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_vocabulary_errors()}

  def create_vocabulary(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateVocabulary", input, options)
  end

  @doc """
  Creates a new custom vocabulary filter. You can use custom vocabulary filters to
  mask, delete, or flag specific words from your transcript. Custom vocabulary
  filters are commonly used to mask profanity in transcripts.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=transcribe%20CreateVocabularyFilter&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_vocabulary_filter_request`)
    %{
      optional("DataAccessRoleArn") => String.t(),
      optional("Tags") => list(tag()()),
      optional("VocabularyFilterFileUri") => String.t(),
      optional("Words") => list(String.t()()),
      required("LanguageCode") => list(any())
    }
  """

  @spec create_vocabulary_filter(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_vocabulary_filter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_vocabulary_filter_errors()}

  def create_vocabulary_filter(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateVocabularyFilter", input, options)
  end

  @doc """
  Deletes a Call Analytics category. To use this operation, specify the name of
  the category you want to delete using `CategoryName`. Category names are case
  sensitive.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=transcribe%20DeleteCallAnalyticsCategory&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_call_analytics_category_request`)
    %{
      
    }
  """

  @spec delete_call_analytics_category(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_call_analytics_category_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_call_analytics_category_errors()}

  def delete_call_analytics_category(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteCallAnalyticsCategory", input, options)
  end

  @doc """
  Deletes a Call Analytics job. To use this operation, specify the name of the job
  you want to delete using `CallAnalyticsJobName`. Job names are case sensitive.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=transcribe%20DeleteCallAnalyticsJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_call_analytics_job_request`)
    %{
      
    }
  """

  @spec delete_call_analytics_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_call_analytics_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_call_analytics_job_errors()}

  def delete_call_analytics_job(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteCallAnalyticsJob", input, options)
  end

  @doc """
  Deletes a custom language model. To use this operation, specify the name of the
  language model you want to delete using `ModelName`. custom language model
  names are case sensitive.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=transcribe%20DeleteLanguageModel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_language_model_request`)
    %{
      
    }
  """

  @spec delete_language_model(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_language_model_errors()}

  def delete_language_model(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteLanguageModel", input, options)
  end

  @doc """
  Deletes a Medical Scribe job. To use this operation, specify the name of the job
  you want to delete using `MedicalScribeJobName`. Job names are case sensitive.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=transcribe%20DeleteMedicalScribeJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_medical_scribe_job_request`)
    %{
      
    }
  """

  @spec delete_medical_scribe_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_medical_scribe_job_errors()}

  def delete_medical_scribe_job(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteMedicalScribeJob", input, options)
  end

  @doc """
  Deletes a medical transcription job. To use this operation, specify the name of
  the job you want to delete using `MedicalTranscriptionJobName`. Job names are
  case sensitive.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=transcribe%20DeleteMedicalTranscriptionJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_medical_transcription_job_request`)
    %{
      
    }
  """

  @spec delete_medical_transcription_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_medical_transcription_job_errors()}

  def delete_medical_transcription_job(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteMedicalTranscriptionJob", input, options)
  end

  @doc """
  Deletes a custom medical vocabulary. To use this operation, specify the name of
  the custom vocabulary you want to delete using `VocabularyName`. Custom
  vocabulary names are case sensitive.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=transcribe%20DeleteMedicalVocabulary&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_medical_vocabulary_request`)
    %{
      
    }
  """

  @spec delete_medical_vocabulary(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_medical_vocabulary_errors()}

  def delete_medical_vocabulary(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteMedicalVocabulary", input, options)
  end

  @doc """
  Deletes a transcription job. To use this operation, specify the name of the job
  you want to delete using `TranscriptionJobName`. Job names are case sensitive.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=transcribe%20DeleteTranscriptionJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_transcription_job_request`)
    %{
      
    }
  """

  @spec delete_transcription_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_transcription_job_errors()}

  def delete_transcription_job(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteTranscriptionJob", input, options)
  end

  @doc """
  Deletes a custom vocabulary. To use this operation, specify the name of the
  custom vocabulary you want to delete using `VocabularyName`. Custom vocabulary
  names are case sensitive.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=transcribe%20DeleteVocabulary&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_vocabulary_request`)
    %{
      
    }
  """

  @spec delete_vocabulary(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_vocabulary_errors()}

  def delete_vocabulary(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteVocabulary", input, options)
  end

  @doc """
  Deletes a custom vocabulary filter. To use this operation, specify the name of
  the custom vocabulary filter you want to delete using `VocabularyFilterName`.
  Custom vocabulary filter names are case sensitive.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=transcribe%20DeleteVocabularyFilter&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_vocabulary_filter_request`)
    %{
      
    }
  """

  @spec delete_vocabulary_filter(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_vocabulary_filter_errors()}

  def delete_vocabulary_filter(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteVocabularyFilter", input, options)
  end

  @doc """
  Provides information about the specified custom language model. This operation
  also shows if the base language model that you used to create your custom
  language model has been updated. If Amazon Transcribe has updated the base
  model, you can create a new custom language model using the updated base
  model.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=transcribe%20DescribeLanguageModel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_language_model_request`)
    %{
      
    }
  """

  @spec describe_language_model(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_language_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_language_model_errors()}

  def describe_language_model(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeLanguageModel", input, options)
  end

  @doc """
  Provides information about the specified Call Analytics category.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=transcribe%20GetCallAnalyticsCategory&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_call_analytics_category_request`)
    %{
      
    }
  """

  @spec get_call_analytics_category(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_call_analytics_category_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_call_analytics_category_errors()}

  def get_call_analytics_category(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetCallAnalyticsCategory", input, options)
  end

  @doc """
  Provides information about the specified Call Analytics job. To view the job's
  status, refer to `CallAnalyticsJobStatus`. If the status is `COMPLETED`, the
  job is finished. You can find your completed transcript at the URI specified
  in `TranscriptFileUri`. If the status is `FAILED`, `FailureReason` provides
  details on why your transcription job failed.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=transcribe%20GetCallAnalyticsJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_call_analytics_job_request`)
    %{
      
    }
  """

  @spec get_call_analytics_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_call_analytics_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_call_analytics_job_errors()}

  def get_call_analytics_job(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetCallAnalyticsJob", input, options)
  end

  @doc """
  Provides information about the specified Medical Scribe job. To view the status
  of the specified medical transcription job, check the `MedicalScribeJobStatus`
  field. If the status is `COMPLETED`, the job is finished. You can find the
  results at the location specified in `MedicalScribeOutput`. If the status is
  `FAILED`, `FailureReason` provides details on why your Medical Scribe job
  failed.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=transcribe%20GetMedicalScribeJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_medical_scribe_job_request`)
    %{
      
    }
  """

  @spec get_medical_scribe_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_medical_scribe_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_medical_scribe_job_errors()}

  def get_medical_scribe_job(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetMedicalScribeJob", input, options)
  end

  @doc """
  Provides information about the specified medical transcription job. To view the
  status of the specified medical transcription job, check the
  `TranscriptionJobStatus` field. If the status is `COMPLETED`, the job is
  finished. You can find the results at the location specified in
  `TranscriptFileUri`. If the status is `FAILED`, `FailureReason` provides
  details on why your transcription job failed.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=transcribe%20GetMedicalTranscriptionJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_medical_transcription_job_request`)
    %{
      
    }
  """

  @spec get_medical_transcription_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_medical_transcription_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_medical_transcription_job_errors()}

  def get_medical_transcription_job(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetMedicalTranscriptionJob", input, options)
  end

  @doc """
  Provides information about the specified custom medical vocabulary. To view the
  status of the specified custom medical vocabulary, check the `VocabularyState`
  field. If the status is `READY`, your custom vocabulary is available to use.
  If the status is `FAILED`, `FailureReason` provides details on why your
  vocabulary failed.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=transcribe%20GetMedicalVocabulary&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_medical_vocabulary_request`)
    %{
      
    }
  """

  @spec get_medical_vocabulary(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_medical_vocabulary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_medical_vocabulary_errors()}

  def get_medical_vocabulary(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetMedicalVocabulary", input, options)
  end

  @doc """
  Provides information about the specified transcription job. To view the status
  of the specified transcription job, check the `TranscriptionJobStatus` field.
  If the status is `COMPLETED`, the job is finished. You can find the results at
  the location specified in `TranscriptFileUri`. If the status is `FAILED`,
  `FailureReason` provides details on why your transcription job failed.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=transcribe%20GetTranscriptionJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_transcription_job_request`)
    %{
      
    }
  """

  @spec get_transcription_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_transcription_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_transcription_job_errors()}

  def get_transcription_job(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetTranscriptionJob", input, options)
  end

  @doc """
  Provides information about the specified custom vocabulary. To view the status
  of the specified custom vocabulary, check the `VocabularyState` field. If the
  status is `READY`, your custom vocabulary is available to use. If the status
  is `FAILED`, `FailureReason` provides details on why your custom vocabulary
  failed.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=transcribe%20GetVocabulary&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_vocabulary_request`)
    %{
      
    }
  """

  @spec get_vocabulary(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_vocabulary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_vocabulary_errors()}

  def get_vocabulary(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetVocabulary", input, options)
  end

  @doc """
  Provides information about the specified custom vocabulary filter.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=transcribe%20GetVocabularyFilter&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_vocabulary_filter_request`)
    %{
      
    }
  """

  @spec get_vocabulary_filter(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_vocabulary_filter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_vocabulary_filter_errors()}

  def get_vocabulary_filter(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetVocabularyFilter", input, options)
  end

  @doc """
  Provides a list of Call Analytics categories, including all rules that make up
  each category.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=transcribe%20ListCallAnalyticsCategories&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_call_analytics_categories_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec list_call_analytics_categories(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_call_analytics_categories_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_call_analytics_categories_errors()}

  def list_call_analytics_categories(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListCallAnalyticsCategories", input, options)
  end

  @doc """
  Provides a list of Call Analytics jobs that match the specified criteria. If no
  criteria are specified, all Call Analytics jobs are returned.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=transcribe%20ListCallAnalyticsJobs&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_call_analytics_jobs_request`)
    %{
      optional("JobNameContains") => String.t(),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("Status") => list(any())
    }
  """

  @spec list_call_analytics_jobs(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_call_analytics_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_call_analytics_jobs_errors()}

  def list_call_analytics_jobs(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListCallAnalyticsJobs", input, options)
  end

  @doc """
  Provides a list of custom language models that match the specified criteria. If
  no criteria are specified, all custom language models are returned.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=transcribe%20ListLanguageModels&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_language_models_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NameContains") => String.t(),
      optional("NextToken") => String.t(),
      optional("StatusEquals") => list(any())
    }
  """

  @spec list_language_models(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_language_models_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_language_models_errors()}

  def list_language_models(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListLanguageModels", input, options)
  end

  @doc """
  Provides a list of Medical Scribe jobs that match the specified criteria. If no
  criteria are specified, all Medical Scribe jobs are returned.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=transcribe%20ListMedicalScribeJobs&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_medical_scribe_jobs_request`)
    %{
      optional("JobNameContains") => String.t(),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("Status") => list(any())
    }
  """

  @spec list_medical_scribe_jobs(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_medical_scribe_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_medical_scribe_jobs_errors()}

  def list_medical_scribe_jobs(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListMedicalScribeJobs", input, options)
  end

  @doc """
  Provides a list of medical transcription jobs that match the specified criteria.
  If no criteria are specified, all medical transcription jobs are returned.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=transcribe%20ListMedicalTranscriptionJobs&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_medical_transcription_jobs_request`)
    %{
      optional("JobNameContains") => String.t(),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("Status") => list(any())
    }
  """

  @spec list_medical_transcription_jobs(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_medical_transcription_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_medical_transcription_jobs_errors()}

  def list_medical_transcription_jobs(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListMedicalTranscriptionJobs", input, options)
  end

  @doc """
  Provides a list of custom medical vocabularies that match the specified
  criteria. If no criteria are specified, all custom medical vocabularies are
  returned.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=transcribe%20ListMedicalVocabularies&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_medical_vocabularies_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NameContains") => String.t(),
      optional("NextToken") => String.t(),
      optional("StateEquals") => list(any())
    }
  """

  @spec list_medical_vocabularies(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_medical_vocabularies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_medical_vocabularies_errors()}

  def list_medical_vocabularies(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListMedicalVocabularies", input, options)
  end

  @doc """
  Lists all tags associated with the specified transcription job, vocabulary,
  model, or resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=transcribe%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_tags_for_resource_request`)
    %{
      
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
  Provides a list of transcription jobs that match the specified criteria. If no
  criteria are specified, all transcription jobs are returned.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=transcribe%20ListTranscriptionJobs&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_transcription_jobs_request`)
    %{
      optional("JobNameContains") => String.t(),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("Status") => list(any())
    }
  """

  @spec list_transcription_jobs(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_transcription_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_transcription_jobs_errors()}

  def list_transcription_jobs(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTranscriptionJobs", input, options)
  end

  @doc """
  Provides a list of custom vocabularies that match the specified criteria. If no
  criteria are specified, all custom vocabularies are returned.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=transcribe%20ListVocabularies&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_vocabularies_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NameContains") => String.t(),
      optional("NextToken") => String.t(),
      optional("StateEquals") => list(any())
    }
  """

  @spec list_vocabularies(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_vocabularies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_vocabularies_errors()}

  def list_vocabularies(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListVocabularies", input, options)
  end

  @doc """
  Provides a list of custom vocabulary filters that match the specified criteria.
  If no criteria are specified, all custom vocabularies are returned.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=transcribe%20ListVocabularyFilters&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_vocabulary_filters_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NameContains") => String.t(),
      optional("NextToken") => String.t()
    }
  """

  @spec list_vocabulary_filters(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_vocabulary_filters_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_vocabulary_filters_errors()}

  def list_vocabulary_filters(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListVocabularyFilters", input, options)
  end

  @doc """
  Transcribes the audio from a customer service call and applies any additional
  Request Parameters you choose to include in your request. In addition to many
  standard transcription features, Call Analytics provides you with call
  characteristics, call summarization, speaker sentiment, and optional redaction
  of your text transcript and your audio file. You can also apply custom
  categories to flag specified conditions. To learn more about these features
  and insights, refer to [Analyzing call center audio with Call
  Analytics](https://docs.aws.amazon.com/transcribe/latest/dg/call-analytics.html).
  If you want to apply categories to your Call Analytics job, you must create
  them before submitting your job request. Categories cannot be retroactively
  applied to a job. To create a new category, use the operation. To learn more
  about Call Analytics categories, see [Creating categories for post-call
  transcriptions](https://docs.aws.amazon.com/transcribe/latest/dg/tca-categories-batch.html)
  and [Creating categories for real-time
  transcriptions](https://docs.aws.amazon.com/transcribe/latest/dg/tca-categories-stream.html).
  To make a `StartCallAnalyticsJob` request, you must first upload your media
  file into an Amazon S3 bucket; you can then specify the Amazon S3 location of
  the file using the `Media` parameter.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=transcribe%20StartCallAnalyticsJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:start_call_analytics_job_request`)
    %{
      optional("ChannelDefinitions") => list(channel_definition()()),
      optional("DataAccessRoleArn") => String.t(),
      optional("OutputEncryptionKMSKeyId") => String.t(),
      optional("OutputLocation") => String.t(),
      optional("Settings") => call_analytics_job_settings(),
      required("Media") => media()
    }
  """

  @spec start_call_analytics_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, start_call_analytics_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_call_analytics_job_errors()}

  def start_call_analytics_job(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartCallAnalyticsJob", input, options)
  end

  @doc """
  Transcribes patient-clinician conversations and generates clinical notes. Amazon
  Web Services HealthScribe automatically provides rich conversation
  transcripts, identifies speaker roles, classifies dialogues, extracts medical
  terms, and generates preliminary clinical notes. To learn more about these
  features, refer to [Amazon Web Services
  HealthScribe](https://docs.aws.amazon.com/transcribe/latest/dg/health-scribe.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=transcribe%20StartMedicalScribeJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:start_medical_scribe_job_request`)
    %{
      optional("ChannelDefinitions") => list(medical_scribe_channel_definition()()),
      optional("KMSEncryptionContext") => map(),
      optional("OutputEncryptionKMSKeyId") => String.t(),
      optional("Tags") => list(tag()()),
      required("DataAccessRoleArn") => String.t(),
      required("Media") => media(),
      required("OutputBucketName") => String.t(),
      required("Settings") => medical_scribe_settings()
    }
  """

  @spec start_medical_scribe_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, start_medical_scribe_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_medical_scribe_job_errors()}

  def start_medical_scribe_job(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartMedicalScribeJob", input, options)
  end

  @doc """
  Transcribes the audio from a medical dictation or conversation and applies any
  additional Request Parameters you choose to include in your request. In
  addition to many standard transcription features, Amazon Transcribe Medical
  provides you with a robust medical vocabulary and, optionally, content
  identification, which adds flags to personal health information (PHI). To
  learn more about these features, refer to [How Amazon Transcribe Medical
  works](https://docs.aws.amazon.com/transcribe/latest/dg/how-it-works-med.html).
  To make a `StartMedicalTranscriptionJob` request, you must first upload your
  media file into an Amazon S3 bucket; you can then specify the Amazon S3
  location of the file using the `Media` parameter.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=transcribe%20StartMedicalTranscriptionJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:start_medical_transcription_job_request`)
    %{
      optional("ContentIdentificationType") => list(any()),
      optional("KMSEncryptionContext") => map(),
      optional("MediaFormat") => list(any()),
      optional("MediaSampleRateHertz") => integer(),
      optional("OutputEncryptionKMSKeyId") => String.t(),
      optional("OutputKey") => String.t(),
      optional("Settings") => medical_transcription_setting(),
      optional("Tags") => list(tag()()),
      required("LanguageCode") => list(any()),
      required("Media") => media(),
      required("OutputBucketName") => String.t(),
      required("Specialty") => list(any()),
      required("Type") => list(any())
    }
  """

  @spec start_medical_transcription_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, start_medical_transcription_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_medical_transcription_job_errors()}

  def start_medical_transcription_job(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartMedicalTranscriptionJob", input, options)
  end

  @doc """
  Transcribes the audio from a media file and applies any additional Request
  Parameters you choose to include in your request. To make a
  `StartTranscriptionJob` request, you must first upload your media file into an
  Amazon S3 bucket; you can then specify the Amazon S3 location of the file
  using the `Media` parameter.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=transcribe%20StartTranscriptionJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:start_transcription_job_request`)
    %{
      optional("ContentRedaction") => content_redaction(),
      optional("IdentifyLanguage") => boolean(),
      optional("IdentifyMultipleLanguages") => boolean(),
      optional("JobExecutionSettings") => job_execution_settings(),
      optional("KMSEncryptionContext") => map(),
      optional("LanguageCode") => list(any()),
      optional("LanguageIdSettings") => map(),
      optional("LanguageOptions") => list(list(any())()),
      optional("MediaFormat") => list(any()),
      optional("MediaSampleRateHertz") => integer(),
      optional("ModelSettings") => model_settings(),
      optional("OutputBucketName") => String.t(),
      optional("OutputEncryptionKMSKeyId") => String.t(),
      optional("OutputKey") => String.t(),
      optional("Settings") => settings(),
      optional("Subtitles") => subtitles(),
      optional("Tags") => list(tag()()),
      optional("ToxicityDetection") => list(toxicity_detection_settings()()),
      required("Media") => media()
    }
  """

  @spec start_transcription_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, start_transcription_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_transcription_job_errors()}

  def start_transcription_job(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartTranscriptionJob", input, options)
  end

  @doc """
  Adds one or more custom tags, each in the form of a key:value pair, to the
  specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=transcribe%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:tag_resource_request`)
    %{
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
  Removes the specified tags from the specified Amazon Transcribe resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=transcribe%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:untag_resource_request`)
    %{
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
  Updates the specified Call Analytics category with new rules. Note that the
  `UpdateCallAnalyticsCategory` operation overwrites all existing rules
  contained in the specified category. You cannot append additional rules onto
  an existing category.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=transcribe%20UpdateCallAnalyticsCategory&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_call_analytics_category_request`)
    %{
      optional("InputType") => list(any()),
      required("Rules") => list(list()())
    }
  """

  @spec update_call_analytics_category(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_call_analytics_category_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_call_analytics_category_errors()}

  def update_call_analytics_category(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateCallAnalyticsCategory", input, options)
  end

  @doc """
  Updates an existing custom medical vocabulary with new values. This operation
  overwrites all existing information with your new values; you cannot append
  new terms onto an existing custom vocabulary.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=transcribe%20UpdateMedicalVocabulary&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_medical_vocabulary_request`)
    %{
      required("LanguageCode") => list(any()),
      required("VocabularyFileUri") => String.t()
    }
  """

  @spec update_medical_vocabulary(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_medical_vocabulary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_medical_vocabulary_errors()}

  def update_medical_vocabulary(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateMedicalVocabulary", input, options)
  end

  @doc """
  Updates an existing custom vocabulary with new values. This operation overwrites
  all existing information with your new values; you cannot append new terms
  onto an existing custom vocabulary.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=transcribe%20UpdateVocabulary&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_vocabulary_request`)
    %{
      optional("DataAccessRoleArn") => String.t(),
      optional("Phrases") => list(String.t()()),
      optional("VocabularyFileUri") => String.t(),
      required("LanguageCode") => list(any())
    }
  """

  @spec update_vocabulary(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_vocabulary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_vocabulary_errors()}

  def update_vocabulary(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateVocabulary", input, options)
  end

  @doc """
  Updates an existing custom vocabulary filter with a new list of words. The new
  list you provide overwrites all previous entries; you cannot append new terms
  onto an existing custom vocabulary filter.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=transcribe%20UpdateVocabularyFilter&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_vocabulary_filter_request`)
    %{
      optional("DataAccessRoleArn") => String.t(),
      optional("VocabularyFilterFileUri") => String.t(),
      optional("Words") => list(String.t()())
    }
  """

  @spec update_vocabulary_filter(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_vocabulary_filter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_vocabulary_filter_errors()}

  def update_vocabulary_filter(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateVocabularyFilter", input, options)
  end
end
