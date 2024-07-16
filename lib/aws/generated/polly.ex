# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Polly do
  @moduledoc """
  Amazon Polly is a web service that makes it easy to synthesize speech from text.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      synthesize_speech_input() :: %{
        optional("Engine") => list(any()),
        optional("LanguageCode") => list(any()),
        optional("LexiconNames") => list(String.t()()),
        optional("SampleRate") => String.t(),
        optional("SpeechMarkTypes") => list(list(any())()),
        optional("TextType") => list(any()),
        required("OutputFormat") => list(any()),
        required("Text") => String.t(),
        required("VoiceId") => list(any())
      }

  """
  @type synthesize_speech_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_lexicon_input() :: %{
        required("Content") => String.t()
      }

  """
  @type put_lexicon_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_voices_output() :: %{
        "NextToken" => String.t(),
        "Voices" => list(voice()())
      }

  """
  @type describe_voices_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      max_lexicons_number_exceeded_exception() :: %{
        "message" => String.t()
      }

  """
  @type max_lexicons_number_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_speech_synthesis_task_output() :: %{
        "SynthesisTask" => synthesis_task()
      }

  """
  @type start_speech_synthesis_task_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_s3_key_exception() :: %{
        "message" => String.t()
      }

  """
  @type invalid_s3_key_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lexicon_size_exceeded_exception() :: %{
        "message" => String.t()
      }

  """
  @type lexicon_size_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_failure_exception() :: %{
        "message" => String.t()
      }

  """
  @type service_failure_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_lexicons_output() :: %{
        "Lexicons" => list(lexicon_description()()),
        "NextToken" => String.t()
      }

  """
  @type list_lexicons_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_lexicon_input() :: %{}

  """
  @type get_lexicon_input() :: %{}

  @typedoc """

  ## Example:

      describe_voices_input() :: %{
        optional("Engine") => list(any()),
        optional("IncludeAdditionalLanguageCodes") => boolean(),
        optional("LanguageCode") => list(any()),
        optional("NextToken") => String.t()
      }

  """
  @type describe_voices_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_speech_synthesis_tasks_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Status") => list(any())
      }

  """
  @type list_speech_synthesis_tasks_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_speech_synthesis_tasks_output() :: %{
        "NextToken" => String.t(),
        "SynthesisTasks" => list(synthesis_task()())
      }

  """
  @type list_speech_synthesis_tasks_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lexicon_not_found_exception() :: %{
        "message" => String.t()
      }

  """
  @type lexicon_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ssml_marks_not_supported_for_text_type_exception() :: %{
        "message" => String.t()
      }

  """
  @type ssml_marks_not_supported_for_text_type_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      engine_not_supported_exception() :: %{
        "message" => String.t()
      }

  """
  @type engine_not_supported_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_lexicon_output() :: %{
        "Lexicon" => lexicon(),
        "LexiconAttributes" => lexicon_attributes()
      }

  """
  @type get_lexicon_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_ssml_exception() :: %{
        "message" => String.t()
      }

  """
  @type invalid_ssml_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unsupported_pls_alphabet_exception() :: %{
        "message" => String.t()
      }

  """
  @type unsupported_pls_alphabet_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_lexicon_input() :: %{}

  """
  @type delete_lexicon_input() :: %{}

  @typedoc """

  ## Example:

      voice() :: %{
        "AdditionalLanguageCodes" => list(list(any())()),
        "Gender" => list(any()),
        "Id" => list(any()),
        "LanguageCode" => list(any()),
        "LanguageName" => String.t(),
        "Name" => String.t(),
        "SupportedEngines" => list(list(any())())
      }

  """
  @type voice() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_speech_synthesis_task_output() :: %{
        "SynthesisTask" => synthesis_task()
      }

  """
  @type get_speech_synthesis_task_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_s3_bucket_exception() :: %{
        "message" => String.t()
      }

  """
  @type invalid_s3_bucket_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lexicon_attributes() :: %{
        "Alphabet" => String.t(),
        "LanguageCode" => list(any()),
        "LastModified" => non_neg_integer(),
        "LexemesCount" => integer(),
        "LexiconArn" => String.t(),
        "Size" => integer()
      }

  """
  @type lexicon_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_next_token_exception() :: %{
        "message" => String.t()
      }

  """
  @type invalid_next_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      synthesis_task() :: %{
        "CreationTime" => non_neg_integer(),
        "Engine" => list(any()),
        "LanguageCode" => list(any()),
        "LexiconNames" => list(String.t()()),
        "OutputFormat" => list(any()),
        "OutputUri" => String.t(),
        "RequestCharacters" => integer(),
        "SampleRate" => String.t(),
        "SnsTopicArn" => String.t(),
        "SpeechMarkTypes" => list(list(any())()),
        "TaskId" => String.t(),
        "TaskStatus" => list(any()),
        "TaskStatusReason" => String.t(),
        "TextType" => list(any()),
        "VoiceId" => list(any())
      }

  """
  @type synthesis_task() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      max_lexeme_length_exceeded_exception() :: %{
        "message" => String.t()
      }

  """
  @type max_lexeme_length_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      language_not_supported_exception() :: %{
        "message" => String.t()
      }

  """
  @type language_not_supported_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_lexicons_input() :: %{
        optional("NextToken") => String.t()
      }

  """
  @type list_lexicons_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_task_id_exception() :: %{
        "message" => String.t()
      }

  """
  @type invalid_task_id_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_lexicon_exception() :: %{
        "message" => String.t()
      }

  """
  @type invalid_lexicon_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_sns_topic_arn_exception() :: %{
        "message" => String.t()
      }

  """
  @type invalid_sns_topic_arn_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lexicon_description() :: %{
        "Attributes" => lexicon_attributes(),
        "Name" => String.t()
      }

  """
  @type lexicon_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_lexicon_output() :: %{}

  """
  @type put_lexicon_output() :: %{}

  @typedoc """

  ## Example:

      lexicon() :: %{
        "Content" => String.t(),
        "Name" => String.t()
      }

  """
  @type lexicon() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_sample_rate_exception() :: %{
        "message" => String.t()
      }

  """
  @type invalid_sample_rate_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unsupported_pls_language_exception() :: %{
        "message" => String.t()
      }

  """
  @type unsupported_pls_language_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      synthesize_speech_output() :: %{
        "AudioStream" => binary(),
        "ContentType" => String.t(),
        "RequestCharacters" => integer()
      }

  """
  @type synthesize_speech_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_speech_synthesis_task_input() :: %{
        optional("Engine") => list(any()),
        optional("LanguageCode") => list(any()),
        optional("LexiconNames") => list(String.t()()),
        optional("OutputS3KeyPrefix") => String.t(),
        optional("SampleRate") => String.t(),
        optional("SnsTopicArn") => String.t(),
        optional("SpeechMarkTypes") => list(list(any())()),
        optional("TextType") => list(any()),
        required("OutputFormat") => list(any()),
        required("OutputS3BucketName") => String.t(),
        required("Text") => String.t(),
        required("VoiceId") => list(any())
      }

  """
  @type start_speech_synthesis_task_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      marks_not_supported_for_format_exception() :: %{
        "message" => String.t()
      }

  """
  @type marks_not_supported_for_format_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      synthesis_task_not_found_exception() :: %{
        "message" => String.t()
      }

  """
  @type synthesis_task_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_speech_synthesis_task_input() :: %{}

  """
  @type get_speech_synthesis_task_input() :: %{}

  @typedoc """

  ## Example:

      text_length_exceeded_exception() :: %{
        "message" => String.t()
      }

  """
  @type text_length_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_lexicon_output() :: %{}

  """
  @type delete_lexicon_output() :: %{}

  @type delete_lexicon_errors() :: lexicon_not_found_exception() | service_failure_exception()

  @type describe_voices_errors() :: invalid_next_token_exception() | service_failure_exception()

  @type get_lexicon_errors() :: lexicon_not_found_exception() | service_failure_exception()

  @type get_speech_synthesis_task_errors() ::
          synthesis_task_not_found_exception()
          | invalid_task_id_exception()
          | service_failure_exception()

  @type list_lexicons_errors() :: invalid_next_token_exception() | service_failure_exception()

  @type list_speech_synthesis_tasks_errors() ::
          invalid_next_token_exception() | service_failure_exception()

  @type put_lexicon_errors() ::
          unsupported_pls_language_exception()
          | invalid_lexicon_exception()
          | max_lexeme_length_exceeded_exception()
          | unsupported_pls_alphabet_exception()
          | service_failure_exception()
          | lexicon_size_exceeded_exception()
          | max_lexicons_number_exceeded_exception()

  @type start_speech_synthesis_task_errors() ::
          text_length_exceeded_exception()
          | marks_not_supported_for_format_exception()
          | invalid_sample_rate_exception()
          | invalid_sns_topic_arn_exception()
          | language_not_supported_exception()
          | invalid_s3_bucket_exception()
          | invalid_ssml_exception()
          | engine_not_supported_exception()
          | ssml_marks_not_supported_for_text_type_exception()
          | lexicon_not_found_exception()
          | service_failure_exception()
          | invalid_s3_key_exception()

  @type synthesize_speech_errors() ::
          text_length_exceeded_exception()
          | marks_not_supported_for_format_exception()
          | invalid_sample_rate_exception()
          | language_not_supported_exception()
          | invalid_ssml_exception()
          | engine_not_supported_exception()
          | ssml_marks_not_supported_for_text_type_exception()
          | lexicon_not_found_exception()
          | service_failure_exception()

  def metadata do
    %{
      api_version: "2016-06-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "polly",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Polly",
      signature_version: "v4",
      signing_name: "polly",
      target_prefix: nil
    }
  end

  @doc """
  Deletes the specified pronunciation lexicon stored in an Amazon Web Services
  Region. A lexicon which has been deleted is not available for speech
  synthesis, nor is it possible to retrieve it using either the `GetLexicon` or
  `ListLexicon` APIs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=polly%20DeleteLexicon&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of the lexicon to delete. Must be an existing
    lexicon in the region.

  ## Optional parameters:
  """
  @spec delete_lexicon(AWS.Client.t(), String.t(), delete_lexicon_input(), Keyword.t()) ::
          {:ok, delete_lexicon_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_lexicon_errors()}
  def delete_lexicon(%Client{} = client, name, input, options \\ []) do
    url_path = "/v1/lexicons/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns the list of voices that are available for use when requesting speech
  synthesis. Each voice speaks a specified language, is either male or female,
  and is identified by an ID, which is the ASCII version of the voice name. When
  synthesizing speech ( `SynthesizeSpeech` ), you provide the voice ID for the
  voice you want from the list of voices returned by `DescribeVoices`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=polly%20DescribeVoices&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:engine` (`t:enum["GENERATIVE|LONG_FORM|NEURAL|STANDARD"]`) Specifies the
    engine (standard, neural, long-form or generative) used by Amazon Polly when
    processing input text for speech synthesis.
  * `:include_additional_language_codes` (`t:boolean`) Boolean value indicating
    whether to return any bilingual voices that use the specified language as an
    additional language. For instance, if you request all languages that use US
    English (es-US), and there is an Italian voice that speaks both Italian
    (it-IT) and US English, that voice will be included if you specify yes but
    not if you specify no.
  * `:language_code`
    (`t:enum["ar_AE|fr_BE|ru_RU|hi_IN|en_GB|nb_NO|pt_PT|tr_TR|de_AT|en_ZA|en_NZ|fi_FI|is_IS|ca_ES|es_US|nl_BE|en_US|en_IN|yue_CN|cmn_CN|ja_JP|pl_PL|es_ES|da_DK|fr_FR|sv_SE|cy_GB|en_IE|it_IT|ko_KR|en_AU|de_DE|en_GB_WLS|es_MX|pt_BR|nl_NL|ro_RO|arb|fr_CA"]`)
    The language identification tag (ISO 639 code for the language name-ISO 3166
    country code) for filtering the list of voices returned. If you don't
    specify this optional parameter, all available voices are returned.
  * `:next_token` (`t:string`) An opaque pagination token returned from the
    previous DescribeVoices operation. If present, this indicates where to
    continue the listing.
  """
  @spec describe_voices(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_voices_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_voices_errors()}
  def describe_voices(%Client{} = client, options \\ []) do
    url_path = "/v1/voices"

    # Validate optional parameters
    optional_params = [
      engine: nil,
      include_additional_language_codes: nil,
      language_code: nil,
      next_token: nil
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
      if opt_val = Keyword.get(options, :next_token) do
        [{"NextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :language_code) do
        [{"LanguageCode", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :include_additional_language_codes) do
        [{"IncludeAdditionalLanguageCodes", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :engine) do
        [{"Engine", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:engine, :include_additional_language_codes, :language_code, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the content of the specified pronunciation lexicon stored in an Amazon
  Web Services Region. For more information, see [Managing
  Lexicons](https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=polly%20GetLexicon&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) Name of the lexicon.

  ## Optional parameters:
  """
  @spec get_lexicon(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_lexicon_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_lexicon_errors()}
  def get_lexicon(%Client{} = client, name, options \\ []) do
    url_path = "/v1/lexicons/#{AWS.Util.encode_uri(name)}"

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
  Retrieves a specific SpeechSynthesisTask object based on its TaskID. This object
  contains information about the given speech synthesis task, including the
  status of the task, and a link to the S3 bucket containing the output of the
  task.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=polly%20GetSpeechSynthesisTask&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:task_id` (`t:string`) The Amazon Polly generated identifier for a speech
    synthesis task.

  ## Optional parameters:
  """
  @spec get_speech_synthesis_task(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_speech_synthesis_task_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_speech_synthesis_task_errors()}
  def get_speech_synthesis_task(%Client{} = client, task_id, options \\ []) do
    url_path = "/v1/synthesisTasks/#{AWS.Util.encode_uri(task_id)}"

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
  Returns a list of pronunciation lexicons stored in an Amazon Web Services
  Region. For more information, see [Managing
  Lexicons](https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=polly%20ListLexicons&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:next_token` (`t:string`) An opaque pagination token returned from previous
    ListLexicons operation. If present, indicates where to continue the list of
    lexicons.
  """
  @spec list_lexicons(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_lexicons_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_lexicons_errors()}
  def list_lexicons(%Client{} = client, options \\ []) do
    url_path = "/v1/lexicons"

    # Validate optional parameters
    optional_params = [next_token: nil]

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
        [{"NextToken", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of SpeechSynthesisTask objects ordered by their creation date.
  This operation can filter the tasks by their status, for example, allowing
  users to list only tasks that are completed.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=polly%20ListSpeechSynthesisTasks&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) Maximum number of speech synthesis tasks returned
    in a List operation.
  * `:next_token` (`t:string`) The pagination token to use in the next request to
    continue the listing of speech synthesis tasks.
  * `:status` (`t:enum["COMPLETED|FAILED|IN_PROGRESS|SCHEDULED"]`) Status of the
    speech synthesis tasks returned in a List operation
  """
  @spec list_speech_synthesis_tasks(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_speech_synthesis_tasks_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_speech_synthesis_tasks_errors()}
  def list_speech_synthesis_tasks(%Client{} = client, options \\ []) do
    url_path = "/v1/synthesisTasks"

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
        [{"Status", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"NextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"MaxResults", opt_val} | query_params]
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
  Stores a pronunciation lexicon in an Amazon Web Services Region. If a lexicon
  with the same name already exists in the region, it is overwritten by the new
  lexicon. Lexicon operations have eventual consistency, therefore, it might
  take some time before the lexicon is available to the SynthesizeSpeech
  operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=polly%20PutLexicon&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) Name of the lexicon. The name must follow the regular
    express format [0-9A-Za-z]{1,20}. That is, the name is a case-sensitive
    alphanumeric string up to 20 characters long.

  ## Optional parameters:
  """
  @spec put_lexicon(AWS.Client.t(), String.t(), put_lexicon_input(), Keyword.t()) ::
          {:ok, put_lexicon_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_lexicon_errors()}
  def put_lexicon(%Client{} = client, name, input, options \\ []) do
    url_path = "/v1/lexicons/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Allows the creation of an asynchronous synthesis task, by starting a new
  `SpeechSynthesisTask`. This operation requires all the standard information
  needed for speech synthesis, plus the name of an Amazon S3 bucket for the
  service to store the output of the synthesis task and two optional parameters
  (`OutputS3KeyPrefix` and `SnsTopicArn`). Once the synthesis task is created,
  this operation will return a `SpeechSynthesisTask` object, which will include
  an identifier of this task as well as the current status. The
  `SpeechSynthesisTask` object is available for 72 hours after starting the
  asynchronous synthesis task.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=polly%20StartSpeechSynthesisTask&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec start_speech_synthesis_task(
          AWS.Client.t(),
          start_speech_synthesis_task_input(),
          Keyword.t()
        ) ::
          {:ok, start_speech_synthesis_task_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_speech_synthesis_task_errors()}
  def start_speech_synthesis_task(%Client{} = client, input, options \\ []) do
    url_path = "/v1/synthesisTasks"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Synthesizes UTF-8 input, plain text or SSML, to a stream of bytes. SSML input
  must be valid, well-formed SSML. Some alphabets might not be available with
  all the voices (for example, Cyrillic might not be read at all by English
  voices) unless phoneme mapping is used. For more information, see [How it
  Works](https://docs.aws.amazon.com/polly/latest/dg/how-text-to-speech-works.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=polly%20SynthesizeSpeech&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec synthesize_speech(AWS.Client.t(), synthesize_speech_input(), Keyword.t()) ::
          {:ok, synthesize_speech_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, synthesize_speech_errors()}
  def synthesize_speech(%Client{} = client, input, options \\ []) do
    url_path = "/v1/speech"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"Content-Type", "ContentType"},
          {"x-amzn-RequestCharacters", "RequestCharacters"}
        ]
      )

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
