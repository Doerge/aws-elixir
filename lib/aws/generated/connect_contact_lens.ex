# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ConnectContactLens do
  @moduledoc """
  Contact Lens for Amazon Connect enables you to analyze conversations between
  customer and agents, by using speech transcription, natural language
  processing, and intelligent search capabilities. It performs sentiment
  analysis, detects issues, and enables you to automatically categorize
  contacts.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      categories() :: %{
        "MatchedCategories" => list(String.t()()),
        "MatchedDetails" => map()
      }
      
  """
  @type categories() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      category_details() :: %{
        "PointsOfInterest" => list(point_of_interest()())
      }
      
  """
  @type category_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      character_offsets() :: %{
        "BeginOffsetChar" => integer(),
        "EndOffsetChar" => integer()
      }
      
  """
  @type character_offsets() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_service_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_service_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_request_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      issue_detected() :: %{
        "CharacterOffsets" => character_offsets()
      }
      
  """
  @type issue_detected() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_realtime_contact_analysis_segments_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ContactId") => String.t(),
        required("InstanceId") => String.t()
      }
      
  """
  @type list_realtime_contact_analysis_segments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_realtime_contact_analysis_segments_response() :: %{
        "NextToken" => String.t(),
        "Segments" => list(realtime_contact_analysis_segment()())
      }
      
  """
  @type list_realtime_contact_analysis_segments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      point_of_interest() :: %{
        "BeginOffsetMillis" => integer(),
        "EndOffsetMillis" => integer()
      }
      
  """
  @type point_of_interest() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      realtime_contact_analysis_segment() :: %{
        "Categories" => categories(),
        "Transcript" => transcript()
      }
      
  """
  @type realtime_contact_analysis_segment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      transcript() :: %{
        "BeginOffsetMillis" => integer(),
        "Content" => String.t(),
        "EndOffsetMillis" => integer(),
        "Id" => String.t(),
        "IssuesDetected" => list(issue_detected()()),
        "ParticipantId" => String.t(),
        "ParticipantRole" => String.t(),
        "Sentiment" => list(any())
      }
      
  """
  @type transcript() :: %{String.t() => any()}

  @type list_realtime_contact_analysis_segments_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2020-08-21",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "contact-lens",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Connect Contact Lens",
      signature_version: "v4",
      signing_name: "connect",
      target_prefix: nil
    }
  end

  @doc """
  Provides a list of analysis segments for a real-time analysis session.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connectcontactlens%20ListRealtimeContactAnalysisSegments&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec list_realtime_contact_analysis_segments(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_realtime_contact_analysis_segments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_realtime_contact_analysis_segments_errors()}

  def list_realtime_contact_analysis_segments(%Client{} = client, options \\ []) do
    url_path = "/realtime-contact-analysis/analysis-segments"

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
end
