# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.TranscribeStreaming do
  @moduledoc """
  Amazon Transcribe streaming offers three main types of real-time transcription:
  **Standard**, **Medical**, and **Call Analytics**.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      issue_detected() :: %{
        "CharacterOffsets" => character_offsets()
      }
      
  """
  @type issue_detected() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_medical_stream_transcription_request() :: %{
        optional("ContentIdentificationType") => list(any()),
        optional("EnableChannelIdentification") => boolean(),
        optional("NumberOfChannels") => integer(),
        optional("SessionId") => String.t(),
        optional("ShowSpeakerLabel") => boolean(),
        optional("VocabularyName") => String.t(),
        required("AudioStream") => list(),
        required("LanguageCode") => list(any()),
        required("MediaEncoding") => list(any()),
        required("MediaSampleRateHertz") => integer(),
        required("Specialty") => list(any()),
        required("Type") => list(any())
      }
      
  """
  @type start_medical_stream_transcription_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_failure_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_failure_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      points_of_interest() :: %{
        "TimestampRanges" => list(timestamp_range()())
      }
      
  """
  @type points_of_interest() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      entity() :: %{
        "Category" => String.t(),
        "Confidence" => float(),
        "Content" => String.t(),
        "EndTime" => float(),
        "StartTime" => float(),
        "Type" => String.t()
      }
      
  """
  @type entity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      character_offsets() :: %{
        "Begin" => integer(),
        "End" => integer()
      }
      
  """
  @type character_offsets() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      audio_event() :: %{
        "AudioChunk" => binary()
      }
      
  """
  @type audio_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      medical_alternative() :: %{
        "Entities" => list(medical_entity()()),
        "Items" => list(medical_item()()),
        "Transcript" => String.t()
      }
      
  """
  @type medical_alternative() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      category_event() :: %{
        "MatchedCategories" => list(String.t()()),
        "MatchedDetails" => map()
      }
      
  """
  @type category_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      language_with_score() :: %{
        "LanguageCode" => list(any()),
        "Score" => float()
      }
      
  """
  @type language_with_score() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      transcript() :: %{
        "Results" => list(result()())
      }
      
  """
  @type transcript() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      medical_entity() :: %{
        "Category" => String.t(),
        "Confidence" => float(),
        "Content" => String.t(),
        "EndTime" => float(),
        "StartTime" => float()
      }
      
  """
  @type medical_entity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      medical_transcript() :: %{
        "Results" => list(medical_result()())
      }
      
  """
  @type medical_transcript() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_call_analytics_stream_transcription_response() :: %{
        "CallAnalyticsTranscriptResultStream" => list(),
        "ContentIdentificationType" => list(any()),
        "ContentRedactionType" => list(any()),
        "EnablePartialResultsStabilization" => boolean(),
        "LanguageCode" => list(any()),
        "LanguageModelName" => String.t(),
        "MediaEncoding" => list(any()),
        "MediaSampleRateHertz" => integer(),
        "PartialResultsStability" => list(any()),
        "PiiEntityTypes" => String.t(),
        "RequestId" => String.t(),
        "SessionId" => String.t(),
        "VocabularyFilterMethod" => list(any()),
        "VocabularyFilterName" => String.t(),
        "VocabularyName" => String.t()
      }
      
  """
  @type start_call_analytics_stream_transcription_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      item() :: %{
        "Confidence" => float(),
        "Content" => String.t(),
        "EndTime" => float(),
        "Speaker" => String.t(),
        "Stable" => boolean(),
        "StartTime" => float(),
        "Type" => list(any()),
        "VocabularyFilterMatch" => boolean()
      }
      
  """
  @type item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_medical_stream_transcription_response() :: %{
        "ContentIdentificationType" => list(any()),
        "EnableChannelIdentification" => boolean(),
        "LanguageCode" => list(any()),
        "MediaEncoding" => list(any()),
        "MediaSampleRateHertz" => integer(),
        "NumberOfChannels" => integer(),
        "RequestId" => String.t(),
        "SessionId" => String.t(),
        "ShowSpeakerLabel" => boolean(),
        "Specialty" => list(any()),
        "TranscriptResultStream" => list(),
        "Type" => list(any()),
        "VocabularyName" => String.t()
      }
      
  """
  @type start_medical_stream_transcription_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      call_analytics_item() :: %{
        "BeginOffsetMillis" => float(),
        "Confidence" => float(),
        "Content" => String.t(),
        "EndOffsetMillis" => float(),
        "Stable" => boolean(),
        "Type" => list(any()),
        "VocabularyFilterMatch" => boolean()
      }
      
  """
  @type call_analytics_item() :: %{String.t() => any()}

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
      
      result() :: %{
        "Alternatives" => list(alternative()()),
        "ChannelId" => String.t(),
        "EndTime" => float(),
        "IsPartial" => boolean(),
        "LanguageCode" => list(any()),
        "LanguageIdentification" => list(language_with_score()()),
        "ResultId" => String.t(),
        "StartTime" => float()
      }
      
  """
  @type result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      post_call_analytics_settings() :: %{
        "ContentRedactionOutput" => list(any()),
        "DataAccessRoleArn" => String.t(),
        "OutputEncryptionKMSKeyId" => String.t(),
        "OutputLocation" => String.t()
      }
      
  """
  @type post_call_analytics_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      call_analytics_entity() :: %{
        "BeginOffsetMillis" => float(),
        "Category" => String.t(),
        "Confidence" => float(),
        "Content" => String.t(),
        "EndOffsetMillis" => float(),
        "Type" => String.t()
      }
      
  """
  @type call_analytics_entity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_unavailable_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_stream_transcription_response() :: %{
        "ContentIdentificationType" => list(any()),
        "ContentRedactionType" => list(any()),
        "EnableChannelIdentification" => boolean(),
        "EnablePartialResultsStabilization" => boolean(),
        "IdentifyLanguage" => boolean(),
        "IdentifyMultipleLanguages" => boolean(),
        "LanguageCode" => list(any()),
        "LanguageModelName" => String.t(),
        "LanguageOptions" => String.t(),
        "MediaEncoding" => list(any()),
        "MediaSampleRateHertz" => integer(),
        "NumberOfChannels" => integer(),
        "PartialResultsStability" => list(any()),
        "PiiEntityTypes" => String.t(),
        "PreferredLanguage" => list(any()),
        "RequestId" => String.t(),
        "SessionId" => String.t(),
        "ShowSpeakerLabel" => boolean(),
        "TranscriptResultStream" => list(),
        "VocabularyFilterMethod" => list(any()),
        "VocabularyFilterName" => String.t(),
        "VocabularyFilterNames" => String.t(),
        "VocabularyName" => String.t(),
        "VocabularyNames" => String.t()
      }
      
  """
  @type start_stream_transcription_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      medical_transcript_event() :: %{
        "Transcript" => medical_transcript()
      }
      
  """
  @type medical_transcript_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_stream_transcription_request() :: %{
        optional("ContentIdentificationType") => list(any()),
        optional("ContentRedactionType") => list(any()),
        optional("EnableChannelIdentification") => boolean(),
        optional("EnablePartialResultsStabilization") => boolean(),
        optional("IdentifyLanguage") => boolean(),
        optional("IdentifyMultipleLanguages") => boolean(),
        optional("LanguageCode") => list(any()),
        optional("LanguageModelName") => String.t(),
        optional("LanguageOptions") => String.t(),
        optional("NumberOfChannels") => integer(),
        optional("PartialResultsStability") => list(any()),
        optional("PiiEntityTypes") => String.t(),
        optional("PreferredLanguage") => list(any()),
        optional("SessionId") => String.t(),
        optional("ShowSpeakerLabel") => boolean(),
        optional("VocabularyFilterMethod") => list(any()),
        optional("VocabularyFilterName") => String.t(),
        optional("VocabularyFilterNames") => String.t(),
        optional("VocabularyName") => String.t(),
        optional("VocabularyNames") => String.t(),
        required("AudioStream") => list(),
        required("MediaEncoding") => list(any()),
        required("MediaSampleRateHertz") => integer()
      }
      
  """
  @type start_stream_transcription_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      medical_result() :: %{
        "Alternatives" => list(medical_alternative()()),
        "ChannelId" => String.t(),
        "EndTime" => float(),
        "IsPartial" => boolean(),
        "ResultId" => String.t(),
        "StartTime" => float()
      }
      
  """
  @type medical_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_call_analytics_stream_transcription_request() :: %{
        optional("ContentIdentificationType") => list(any()),
        optional("ContentRedactionType") => list(any()),
        optional("EnablePartialResultsStabilization") => boolean(),
        optional("LanguageModelName") => String.t(),
        optional("PartialResultsStability") => list(any()),
        optional("PiiEntityTypes") => String.t(),
        optional("SessionId") => String.t(),
        optional("VocabularyFilterMethod") => list(any()),
        optional("VocabularyFilterName") => String.t(),
        optional("VocabularyName") => String.t(),
        required("AudioStream") => list(),
        required("LanguageCode") => list(any()),
        required("MediaEncoding") => list(any()),
        required("MediaSampleRateHertz") => integer()
      }
      
  """
  @type start_call_analytics_stream_transcription_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      timestamp_range() :: %{
        "BeginOffsetMillis" => float(),
        "EndOffsetMillis" => float()
      }
      
  """
  @type timestamp_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      configuration_event() :: %{
        "ChannelDefinitions" => list(channel_definition()()),
        "PostCallAnalyticsSettings" => post_call_analytics_settings()
      }
      
  """
  @type configuration_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      utterance_event() :: %{
        "BeginOffsetMillis" => float(),
        "EndOffsetMillis" => float(),
        "Entities" => list(call_analytics_entity()()),
        "IsPartial" => boolean(),
        "IssuesDetected" => list(issue_detected()()),
        "Items" => list(call_analytics_item()()),
        "ParticipantRole" => list(any()),
        "Sentiment" => list(any()),
        "Transcript" => String.t(),
        "UtteranceId" => String.t()
      }
      
  """
  @type utterance_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bad_request_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      medical_item() :: %{
        "Confidence" => float(),
        "Content" => String.t(),
        "EndTime" => float(),
        "Speaker" => String.t(),
        "StartTime" => float(),
        "Type" => list(any())
      }
      
  """
  @type medical_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      transcript_event() :: %{
        "Transcript" => transcript()
      }
      
  """
  @type transcript_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      alternative() :: %{
        "Entities" => list(entity()()),
        "Items" => list(item()()),
        "Transcript" => String.t()
      }
      
  """
  @type alternative() :: %{String.t() => any()}

  @type start_call_analytics_stream_transcription_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | service_unavailable_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type start_medical_stream_transcription_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | service_unavailable_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type start_stream_transcription_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | service_unavailable_exception()
          | conflict_exception()
          | internal_failure_exception()

  def metadata do
    %{
      api_version: "2017-10-26",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "transcribestreaming",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Transcribe Streaming",
      signature_version: "v4",
      signing_name: "transcribe",
      target_prefix: nil
    }
  end

  @doc """
  Starts a bidirectional HTTP/2 or WebSocket stream where audio is streamed to
  Amazon Transcribe and the transcription results are streamed to your
  application. Use this operation for [Call
  Analytics](https://docs.aws.amazon.com/transcribe/latest/dg/call-analytics.html)
  transcriptions. The following parameters are required:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=transcribestreaming%20StartCallAnalyticsStreamTranscription&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:language_code`
    (`t:enum["DE_DE|EN_AU|EN_GB|EN_US|ES_US|FR_CA|FR_FR|IT_IT|PT_BR"]` required)
    Specify the language code that represents the language spoken in your audio.
  * `:media_encoding` (`t:enum["FLAC|OGG_OPUS|PCM"]` required) Specify the
    encoding of your input audio. Supported formats are:
  * `:media_sample_rate_hertz` (`t:integer` required) The sample rate of the input
    audio (in hertz). Low-quality audio, such as telephone audio, is typically
    around 8,000 Hz. High-quality audio typically ranges from 16,000 Hz to
    48,000 Hz. Note that the sample rate you specify must match that of your
    audio.
  * `:input` (`t:map`):
    * `"AudioStream" => t:union` (required)

  ## Keyword parameters:
  * `:content_identification_type` (`t:enum["PII"]`) Labels all personally
    identifiable information (PII) identified in your transcript.
  * `:content_redaction_type` (`t:enum["PII"]`) Redacts all personally
    identifiable information (PII) identified in your transcript.
  * `:enable_partial_results_stabilization` (`t:boolean`) Enables partial result
    stabilization for your transcription. Partial result stabilization can
    reduce latency in your output, but may impact accuracy. For more
    information, see Partial-result stabilization.
  * `:language_model_name` (`t:string`) Specify the name of the custom language
    model that you want to use when processing your transcription. Note that
    language model names are case sensitive.
  * `:partial_results_stability` (`t:enum["HIGH|LOW|MEDIUM"]`) Specify the level
    of stability to use when you enable partial results stabilization
    (EnablePartialResultsStabilization).
  * `:pii_entity_types` (`t:string`) Specify which types of personally
    identifiable information (PII) you want to redact in your transcript. You
    can include as many types as you'd like, or you can select ALL.
  * `:session_id` (`t:string`) Specify a name for your Call Analytics
    transcription session. If you don't include this parameter in your request,
    Amazon Transcribe generates an ID and returns it in the response.
  * `:vocabulary_filter_method` (`t:enum["MASK|REMOVE|TAG"]`) Specify how you want
    your vocabulary filter applied to your transcript.
  * `:vocabulary_filter_name` (`t:string`) Specify the name of the custom
    vocabulary filter that you want to use when processing your transcription.
    Note that vocabulary filter names are case sensitive.
  * `:vocabulary_name` (`t:string`) Specify the name of the custom vocabulary that
    you want to use when processing your transcription. Note that vocabulary
    names are case sensitive.
  """
  @spec start_call_analytics_stream_transcription(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          input :: map(),
          Keyword.t()
        ) ::
          {:ok, start_call_analytics_stream_transcription_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_call_analytics_stream_transcription_errors()}
  def start_call_analytics_stream_transcription(
        %Client{} = client,
        language_code,
        media_encoding,
        media_sample_rate_hertz,
        input,
        options \\ []
      )
      when is_map(input) and is_binary(language_code) and is_binary(media_encoding) and
             is_integer(media_sample_rate_hertz) do
    url_path = "/call-analytics-stream-transcription"

    # Validate optional parameters
    optional_params = [
      content_identification_type: nil,
      content_redaction_type: nil,
      enable_partial_results_stabilization: nil,
      language_model_name: nil,
      partial_results_stability: nil,
      pii_entity_types: nil,
      session_id: nil,
      vocabulary_filter_method: nil,
      vocabulary_filter_name: nil,
      vocabulary_name: nil
    ]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [
      {"x-amzn-transcribe-language-code", language_code},
      {"x-amzn-transcribe-media-encoding", media_encoding},
      {"x-amzn-transcribe-sample-rate", media_sample_rate_hertz}
    ]

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :vocabulary_name) do
        [{"x-amzn-transcribe-vocabulary-name", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :vocabulary_filter_name) do
        [{"x-amzn-transcribe-vocabulary-filter-name", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :vocabulary_filter_method) do
        [{"x-amzn-transcribe-vocabulary-filter-method", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :session_id) do
        [{"x-amzn-transcribe-session-id", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :pii_entity_types) do
        [{"x-amzn-transcribe-pii-entity-types", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :partial_results_stability) do
        [{"x-amzn-transcribe-partial-results-stability", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :language_model_name) do
        [{"x-amzn-transcribe-language-model-name", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :enable_partial_results_stabilization) do
        [{"x-amzn-transcribe-enable-partial-results-stabilization", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :content_redaction_type) do
        [{"x-amzn-transcribe-content-redaction-type", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :content_identification_type) do
        [{"x-amzn-transcribe-content-identification-type", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params
    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amzn-transcribe-content-identification-type", "ContentIdentificationType"},
          {"x-amzn-transcribe-content-redaction-type", "ContentRedactionType"},
          {"x-amzn-transcribe-enable-partial-results-stabilization",
           "EnablePartialResultsStabilization"},
          {"x-amzn-transcribe-language-code", "LanguageCode"},
          {"x-amzn-transcribe-language-model-name", "LanguageModelName"},
          {"x-amzn-transcribe-media-encoding", "MediaEncoding"},
          {"x-amzn-transcribe-sample-rate", "MediaSampleRateHertz"},
          {"x-amzn-transcribe-partial-results-stability", "PartialResultsStability"},
          {"x-amzn-transcribe-pii-entity-types", "PiiEntityTypes"},
          {"x-amzn-request-id", "RequestId"},
          {"x-amzn-transcribe-session-id", "SessionId"},
          {"x-amzn-transcribe-vocabulary-filter-method", "VocabularyFilterMethod"},
          {"x-amzn-transcribe-vocabulary-filter-name", "VocabularyFilterName"},
          {"x-amzn-transcribe-vocabulary-name", "VocabularyName"}
        ]
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :content_identification_type,
        :content_redaction_type,
        :enable_partial_results_stabilization,
        :language_model_name,
        :partial_results_stability,
        :pii_entity_types,
        :session_id,
        :vocabulary_filter_method,
        :vocabulary_filter_name,
        :vocabulary_name
      ])

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Starts a bidirectional HTTP/2 or WebSocket stream where audio is streamed to
  Amazon Transcribe Medical and the transcription results are streamed to your
  application. The following parameters are required:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=transcribestreaming%20StartMedicalStreamTranscription&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:language_code`
    (`t:enum["DE_DE|EN_AU|EN_GB|EN_US|ES_US|FR_CA|FR_FR|HI_IN|IT_IT|JA_JP|KO_KR|PT_BR|TH_TH|ZH_CN"]`
    required) Specify the language code that represents the language spoken in
    your audio.
  * `:media_encoding` (`t:enum["FLAC|OGG_OPUS|PCM"]` required) Specify the
    encoding used for the input audio. Supported formats are:
  * `:media_sample_rate_hertz` (`t:integer` required) The sample rate of the input
    audio (in hertz). Amazon Transcribe Medical supports a range from 16,000 Hz
    to 48,000 Hz. Note that the sample rate you specify must match that of your
    audio.
  * `:specialty`
    (`t:enum["CARDIOLOGY|NEUROLOGY|ONCOLOGY|PRIMARYCARE|RADIOLOGY|UROLOGY"]`
    required) Specify the medical specialty contained in your audio.
  * `:type` (`t:enum["CONVERSATION|DICTATION"]` required) Specify the type of
    input audio. For example, choose DICTATION for a provider dictating patient
    notes and CONVERSATION for a dialogue between a patient and a medical
    professional.
  * `:input` (`t:map`):
    * `"AudioStream" => t:union` (required)

  ## Keyword parameters:
  * `:content_identification_type` (`t:enum["PHI"]`) Labels all personal health
    information (PHI) identified in your transcript.
  * `:enable_channel_identification` (`t:boolean`) Enables channel identification
    in multi-channel audio.
  * `:number_of_channels` (`t:integer`) Specify the number of channels in your
    audio stream. Up to two channels are supported.
  * `:session_id` (`t:string`) Specify a name for your transcription session. If
    you don't include this parameter in your request, Amazon Transcribe Medical
    generates an ID and returns it in the response.
  * `:show_speaker_label` (`t:boolean`) Enables speaker partitioning (diarization)
    in your transcription output. Speaker partitioning labels the speech from
    individual speakers in your media file.
  * `:vocabulary_name` (`t:string`) Specify the name of the custom vocabulary that
    you want to use when processing your transcription. Note that vocabulary
    names are case sensitive.
  """
  @spec start_medical_stream_transcription(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          input :: map(),
          Keyword.t()
        ) ::
          {:ok, start_medical_stream_transcription_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_medical_stream_transcription_errors()}
  def start_medical_stream_transcription(
        %Client{} = client,
        language_code,
        media_encoding,
        media_sample_rate_hertz,
        specialty,
        type,
        input,
        options \\ []
      )
      when is_map(input) and is_binary(language_code) and is_binary(media_encoding) and
             is_integer(media_sample_rate_hertz) and is_binary(specialty) and is_binary(type) do
    url_path = "/medical-stream-transcription"

    # Validate optional parameters
    optional_params = [
      content_identification_type: nil,
      enable_channel_identification: nil,
      number_of_channels: nil,
      session_id: nil,
      show_speaker_label: nil,
      vocabulary_name: nil
    ]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [
      {"x-amzn-transcribe-language-code", language_code},
      {"x-amzn-transcribe-media-encoding", media_encoding},
      {"x-amzn-transcribe-sample-rate", media_sample_rate_hertz},
      {"x-amzn-transcribe-specialty", specialty},
      {"x-amzn-transcribe-type", type}
    ]

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :vocabulary_name) do
        [{"x-amzn-transcribe-vocabulary-name", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :show_speaker_label) do
        [{"x-amzn-transcribe-show-speaker-label", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :session_id) do
        [{"x-amzn-transcribe-session-id", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :number_of_channels) do
        [{"x-amzn-transcribe-number-of-channels", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :enable_channel_identification) do
        [{"x-amzn-transcribe-enable-channel-identification", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :content_identification_type) do
        [{"x-amzn-transcribe-content-identification-type", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params
    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amzn-transcribe-content-identification-type", "ContentIdentificationType"},
          {"x-amzn-transcribe-enable-channel-identification", "EnableChannelIdentification"},
          {"x-amzn-transcribe-language-code", "LanguageCode"},
          {"x-amzn-transcribe-media-encoding", "MediaEncoding"},
          {"x-amzn-transcribe-sample-rate", "MediaSampleRateHertz"},
          {"x-amzn-transcribe-number-of-channels", "NumberOfChannels"},
          {"x-amzn-request-id", "RequestId"},
          {"x-amzn-transcribe-session-id", "SessionId"},
          {"x-amzn-transcribe-show-speaker-label", "ShowSpeakerLabel"},
          {"x-amzn-transcribe-specialty", "Specialty"},
          {"x-amzn-transcribe-type", "Type"},
          {"x-amzn-transcribe-vocabulary-name", "VocabularyName"}
        ]
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :content_identification_type,
        :enable_channel_identification,
        :number_of_channels,
        :session_id,
        :show_speaker_label,
        :vocabulary_name
      ])

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Starts a bidirectional HTTP/2 or WebSocket stream where audio is streamed to
  Amazon Transcribe and the transcription results are streamed to your
  application. The following parameters are required:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=transcribestreaming%20StartStreamTranscription&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:media_encoding` (`t:enum["FLAC|OGG_OPUS|PCM"]` required) Specify the
    encoding of your input audio. Supported formats are:
  * `:media_sample_rate_hertz` (`t:integer` required) The sample rate of the input
    audio (in hertz). Low-quality audio, such as telephone audio, is typically
    around 8,000 Hz. High-quality audio typically ranges from 16,000 Hz to
    48,000 Hz. Note that the sample rate you specify must match that of your
    audio.
  * `:input` (`t:map`):
    * `"AudioStream" => t:union` (required) An encoded stream of audio blobs. Audio
    streams are encoded as either HTTP/2 or WebSocket data frames.

  ## Keyword parameters:
  * `:content_identification_type` (`t:enum["PII"]`) Labels all personally
    identifiable information (PII) identified in your transcript.
  * `:content_redaction_type` (`t:enum["PII"]`) Redacts all personally
    identifiable information (PII) identified in your transcript.
  * `:enable_channel_identification` (`t:boolean`) Enables channel identification
    in multi-channel audio.
  * `:enable_partial_results_stabilization` (`t:boolean`) Enables partial result
    stabilization for your transcription. Partial result stabilization can
    reduce latency in your output, but may impact accuracy. For more
    information, see Partial-result stabilization.
  * `:identify_language` (`t:boolean`) Enables automatic language identification
    for your transcription.
  * `:identify_multiple_languages` (`t:boolean`) Enables automatic multi-language
    identification in your transcription job request. Use this parameter if your
    stream contains more than one language. If your stream contains only one
    language, use IdentifyLanguage instead.
  * `:language_code`
    (`t:enum["DE_DE|EN_AU|EN_GB|EN_US|ES_US|FR_CA|FR_FR|HI_IN|IT_IT|JA_JP|KO_KR|PT_BR|TH_TH|ZH_CN"]`)
    Specify the language code that represents the language spoken in your audio.
  * `:language_model_name` (`t:string`) Specify the name of the custom language
    model that you want to use when processing your transcription. Note that
    language model names are case sensitive.
  * `:language_options` (`t:string`) Specify two or more language codes that
    represent the languages you think may be present in your media; including
    more than five is not recommended. If you're unsure what languages are
    present, do not include this parameter.
  * `:number_of_channels` (`t:integer`) Specify the number of channels in your
    audio stream. Up to two channels are supported.
  * `:partial_results_stability` (`t:enum["HIGH|LOW|MEDIUM"]`) Specify the level
    of stability to use when you enable partial results stabilization
    (EnablePartialResultsStabilization).
  * `:pii_entity_types` (`t:string`) Specify which types of personally
    identifiable information (PII) you want to redact in your transcript. You
    can include as many types as you'd like, or you can select ALL.
  * `:preferred_language`
    (`t:enum["DE_DE|EN_AU|EN_GB|EN_US|ES_US|FR_CA|FR_FR|HI_IN|IT_IT|JA_JP|KO_KR|PT_BR|TH_TH|ZH_CN"]`)
    Specify a preferred language from the subset of languages codes you
    specified in LanguageOptions.
  * `:session_id` (`t:string`) Specify a name for your transcription session. If
    you don't include this parameter in your request, Amazon Transcribe
    generates an ID and returns it in the response.
  * `:show_speaker_label` (`t:boolean`) Enables speaker partitioning (diarization)
    in your transcription output. Speaker partitioning labels the speech from
    individual speakers in your media file.
  * `:vocabulary_filter_method` (`t:enum["MASK|REMOVE|TAG"]`) Specify how you want
    your vocabulary filter applied to your transcript.
  * `:vocabulary_filter_name` (`t:string`) Specify the name of the custom
    vocabulary filter that you want to use when processing your transcription.
    Note that vocabulary filter names are case sensitive.
  * `:vocabulary_filter_names` (`t:string`) Specify the names of the custom
    vocabulary filters that you want to use when processing your transcription.
    Note that vocabulary filter names are case sensitive.
  * `:vocabulary_name` (`t:string`) Specify the name of the custom vocabulary that
    you want to use when processing your transcription. Note that vocabulary
    names are case sensitive.
  * `:vocabulary_names` (`t:string`) Specify the names of the custom vocabularies
    that you want to use when processing your transcription. Note that
    vocabulary names are case sensitive.
  """
  @spec start_stream_transcription(
          AWS.Client.t(),
          String.t(),
          String.t(),
          input :: map(),
          Keyword.t()
        ) ::
          {:ok, start_stream_transcription_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_stream_transcription_errors()}
  def start_stream_transcription(
        %Client{} = client,
        media_encoding,
        media_sample_rate_hertz,
        input,
        options \\ []
      )
      when is_map(input) and is_binary(media_encoding) and is_integer(media_sample_rate_hertz) do
    url_path = "/stream-transcription"

    # Validate optional parameters
    optional_params = [
      content_identification_type: nil,
      content_redaction_type: nil,
      enable_channel_identification: nil,
      enable_partial_results_stabilization: nil,
      identify_language: nil,
      identify_multiple_languages: nil,
      language_code: nil,
      language_model_name: nil,
      language_options: nil,
      number_of_channels: nil,
      partial_results_stability: nil,
      pii_entity_types: nil,
      preferred_language: nil,
      session_id: nil,
      show_speaker_label: nil,
      vocabulary_filter_method: nil,
      vocabulary_filter_name: nil,
      vocabulary_filter_names: nil,
      vocabulary_name: nil,
      vocabulary_names: nil
    ]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [
      {"x-amzn-transcribe-media-encoding", media_encoding},
      {"x-amzn-transcribe-sample-rate", media_sample_rate_hertz}
    ]

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :vocabulary_names) do
        [{"x-amzn-transcribe-vocabulary-names", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :vocabulary_name) do
        [{"x-amzn-transcribe-vocabulary-name", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :vocabulary_filter_names) do
        [{"x-amzn-transcribe-vocabulary-filter-names", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :vocabulary_filter_name) do
        [{"x-amzn-transcribe-vocabulary-filter-name", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :vocabulary_filter_method) do
        [{"x-amzn-transcribe-vocabulary-filter-method", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :show_speaker_label) do
        [{"x-amzn-transcribe-show-speaker-label", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :session_id) do
        [{"x-amzn-transcribe-session-id", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :preferred_language) do
        [{"x-amzn-transcribe-preferred-language", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :pii_entity_types) do
        [{"x-amzn-transcribe-pii-entity-types", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :partial_results_stability) do
        [{"x-amzn-transcribe-partial-results-stability", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :number_of_channels) do
        [{"x-amzn-transcribe-number-of-channels", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :language_options) do
        [{"x-amzn-transcribe-language-options", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :language_model_name) do
        [{"x-amzn-transcribe-language-model-name", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :language_code) do
        [{"x-amzn-transcribe-language-code", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :identify_multiple_languages) do
        [{"x-amzn-transcribe-identify-multiple-languages", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :identify_language) do
        [{"x-amzn-transcribe-identify-language", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :enable_partial_results_stabilization) do
        [{"x-amzn-transcribe-enable-partial-results-stabilization", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :enable_channel_identification) do
        [{"x-amzn-transcribe-enable-channel-identification", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :content_redaction_type) do
        [{"x-amzn-transcribe-content-redaction-type", opt_val} | headers]
      else
        headers
      end

    headers =
      if opt_val = Keyword.get(options, :content_identification_type) do
        [{"x-amzn-transcribe-content-identification-type", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params
    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amzn-transcribe-content-identification-type", "ContentIdentificationType"},
          {"x-amzn-transcribe-content-redaction-type", "ContentRedactionType"},
          {"x-amzn-transcribe-enable-channel-identification", "EnableChannelIdentification"},
          {"x-amzn-transcribe-enable-partial-results-stabilization",
           "EnablePartialResultsStabilization"},
          {"x-amzn-transcribe-identify-language", "IdentifyLanguage"},
          {"x-amzn-transcribe-identify-multiple-languages", "IdentifyMultipleLanguages"},
          {"x-amzn-transcribe-language-code", "LanguageCode"},
          {"x-amzn-transcribe-language-model-name", "LanguageModelName"},
          {"x-amzn-transcribe-language-options", "LanguageOptions"},
          {"x-amzn-transcribe-media-encoding", "MediaEncoding"},
          {"x-amzn-transcribe-sample-rate", "MediaSampleRateHertz"},
          {"x-amzn-transcribe-number-of-channels", "NumberOfChannels"},
          {"x-amzn-transcribe-partial-results-stability", "PartialResultsStability"},
          {"x-amzn-transcribe-pii-entity-types", "PiiEntityTypes"},
          {"x-amzn-transcribe-preferred-language", "PreferredLanguage"},
          {"x-amzn-request-id", "RequestId"},
          {"x-amzn-transcribe-session-id", "SessionId"},
          {"x-amzn-transcribe-show-speaker-label", "ShowSpeakerLabel"},
          {"x-amzn-transcribe-vocabulary-filter-method", "VocabularyFilterMethod"},
          {"x-amzn-transcribe-vocabulary-filter-name", "VocabularyFilterName"},
          {"x-amzn-transcribe-vocabulary-filter-names", "VocabularyFilterNames"},
          {"x-amzn-transcribe-vocabulary-name", "VocabularyName"},
          {"x-amzn-transcribe-vocabulary-names", "VocabularyNames"}
        ]
      )

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :content_identification_type,
        :content_redaction_type,
        :enable_channel_identification,
        :enable_partial_results_stabilization,
        :identify_language,
        :identify_multiple_languages,
        :language_code,
        :language_model_name,
        :language_options,
        :number_of_channels,
        :partial_results_stability,
        :pii_entity_types,
        :preferred_language,
        :session_id,
        :show_speaker_label,
        :vocabulary_filter_method,
        :vocabulary_filter_name,
        :vocabulary_filter_names,
        :vocabulary_name,
        :vocabulary_names
      ])

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end
end
