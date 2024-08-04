# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ConnectParticipant do
  @moduledoc """
  Amazon Connect is an easy-to-use omnichannel cloud contact center service that
  enables companies of any size to deliver superior customer service at a lower
  cost. Amazon Connect communications capabilities make it easy for companies to
  deliver personalized interactions across communication channels, including
  chat.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      view() :: %{
        "Arn" => String.t(),
        "Content" => view_content(),
        "Id" => String.t(),
        "Name" => String.t(),
        "Version" => integer()
      }
      
  """
  @type view() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disconnect_participant_response() :: %{}
      
  """
  @type disconnect_participant_response() :: %{}

  @typedoc """

  ## Example:
      
      receipt() :: %{
        "DeliveredTimestamp" => String.t(),
        "ReadTimestamp" => String.t(),
        "RecipientParticipantId" => String.t()
      }
      
  """
  @type receipt() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_position() :: %{
        "AbsoluteTime" => String.t(),
        "Id" => String.t(),
        "MostRecent" => integer()
      }
      
  """
  @type start_position() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      websocket() :: %{
        "ConnectionExpiry" => String.t(),
        "Url" => String.t()
      }
      
  """
  @type websocket() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      complete_attachment_upload_request() :: %{
        required("AttachmentIds") => list(String.t()()),
        required("ClientToken") => String.t(),
        required("ConnectionToken") => String.t()
      }
      
  """
  @type complete_attachment_upload_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_event_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Content") => String.t(),
        required("ConnectionToken") => String.t(),
        required("ContentType") => String.t()
      }
      
  """
  @type send_event_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_view_response() :: %{
        "View" => view()
      }
      
  """
  @type describe_view_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      item() :: %{
        "AbsoluteTime" => String.t(),
        "Attachments" => list(attachment_item()()),
        "ContactId" => String.t(),
        "Content" => String.t(),
        "ContentType" => String.t(),
        "DisplayName" => String.t(),
        "Id" => String.t(),
        "MessageMetadata" => message_metadata(),
        "ParticipantId" => String.t(),
        "ParticipantRole" => list(any()),
        "RelatedContactId" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disconnect_participant_request() :: %{
        optional("ClientToken") => String.t(),
        required("ConnectionToken") => String.t()
      }
      
  """
  @type disconnect_participant_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      view_content() :: %{
        "Actions" => list(String.t()()),
        "InputSchema" => String.t(),
        "Template" => String.t()
      }
      
  """
  @type view_content() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_participant_connection_request() :: %{
        optional("ConnectParticipant") => boolean(),
        optional("Type") => list(list(any())()),
        required("ParticipantToken") => String.t()
      }
      
  """
  @type create_participant_connection_request() :: %{String.t() => any()}

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
        "Message" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => list(any())
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_event_response() :: %{
        "AbsoluteTime" => String.t(),
        "Id" => String.t()
      }
      
  """
  @type send_event_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attachment_item() :: %{
        "AttachmentId" => String.t(),
        "AttachmentName" => String.t(),
        "ContentType" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type attachment_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_view_request() :: %{
        required("ConnectionToken") => String.t()
      }
      
  """
  @type describe_view_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_attachment_response() :: %{
        "Url" => String.t(),
        "UrlExpiry" => String.t()
      }
      
  """
  @type get_attachment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      message_metadata() :: %{
        "MessageId" => String.t(),
        "Receipts" => list(receipt()())
      }
      
  """
  @type message_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_attachment_upload_response() :: %{
        "AttachmentId" => String.t(),
        "UploadMetadata" => upload_metadata()
      }
      
  """
  @type start_attachment_upload_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_transcript_request() :: %{
        optional("ContactId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ScanDirection") => list(any()),
        optional("SortOrder") => list(any()),
        optional("StartPosition") => start_position(),
        required("ConnectionToken") => String.t()
      }
      
  """
  @type get_transcript_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_attachment_request() :: %{
        required("AttachmentId") => String.t(),
        required("ConnectionToken") => String.t()
      }
      
  """
  @type get_attachment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      connection_credentials() :: %{
        "ConnectionToken" => String.t(),
        "Expiry" => String.t()
      }
      
  """
  @type connection_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_attachment_upload_request() :: %{
        required("AttachmentName") => String.t(),
        required("AttachmentSizeInBytes") => float(),
        required("ClientToken") => String.t(),
        required("ConnectionToken") => String.t(),
        required("ContentType") => String.t()
      }
      
  """
  @type start_attachment_upload_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      complete_attachment_upload_response() :: %{}
      
  """
  @type complete_attachment_upload_response() :: %{}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_transcript_response() :: %{
        "InitialContactId" => String.t(),
        "NextToken" => String.t(),
        "Transcript" => list(item()())
      }
      
  """
  @type get_transcript_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_message_request() :: %{
        optional("ClientToken") => String.t(),
        required("ConnectionToken") => String.t(),
        required("Content") => String.t(),
        required("ContentType") => String.t()
      }
      
  """
  @type send_message_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_message_response() :: %{
        "AbsoluteTime" => String.t(),
        "Id" => String.t()
      }
      
  """
  @type send_message_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      upload_metadata() :: %{
        "HeadersToInclude" => map(),
        "Url" => String.t(),
        "UrlExpiry" => String.t()
      }
      
  """
  @type upload_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_participant_connection_response() :: %{
        "ConnectionCredentials" => connection_credentials(),
        "Websocket" => websocket()
      }
      
  """
  @type create_participant_connection_response() :: %{String.t() => any()}

  @type complete_attachment_upload_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_participant_connection_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type describe_view_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type disconnect_participant_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type get_attachment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type get_transcript_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type send_event_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type send_message_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type start_attachment_upload_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  def metadata do
    %{
      api_version: "2018-09-07",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "participant.connect",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "ConnectParticipant",
      signature_version: "v4",
      signing_name: "execute-api",
      target_prefix: nil
    }
  end

  @doc """
  Allows you to confirm that the attachment has been uploaded using the pre-signed
  URL provided in StartAttachmentUpload API. A conflict exception is thrown when
  an attachment with that identifier is already being uploaded.
  `ConnectionToken` is used for invoking this API instead of `ParticipantToken`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connectparticipant%20CompleteAttachmentUpload&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:connection_token` (`t:string` required) The authentication token associated
  with the participant's connection.
  ## Keyword parameters:
  """
  @spec complete_attachment_upload(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, complete_attachment_upload_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, complete_attachment_upload_errors()}
  def complete_attachment_upload(%Client{} = client, connection_token, options \\ [])
      when is_binary(connection_token) do
    url_path = "/participant/complete-attachment-upload"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"X-Amz-Bearer", connection_token}]

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
  Creates the participant's connection. `ParticipantToken` is used for invoking
  this API instead of `ConnectionToken`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connectparticipant%20CreateParticipantConnection&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:participant_token` (`t:string` required) This is a header parameter.
  ## Keyword parameters:
  """
  @spec create_participant_connection(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_participant_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_participant_connection_errors()}
  def create_participant_connection(%Client{} = client, participant_token, options \\ [])
      when is_binary(participant_token) do
    url_path = "/participant/connection"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"X-Amz-Bearer", participant_token}]

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
  Retrieves the view for the specified view token.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connectparticipant%20DescribeView&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:view_token` (`t:string` required) An encrypted token originating from the
  interactive message of a ShowView block operation. Represents the desired
  view.
  * `:connection_token` (`t:string` required) The connection token.
  ## Keyword parameters:
  """
  @spec describe_view(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_view_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_view_errors()}
  def describe_view(%Client{} = client, view_token, connection_token, options \\ [])
      when is_binary(connection_token) do
    url_path = "/participant/views/#{AWS.Util.encode_uri(view_token)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"X-Amz-Bearer", connection_token}]

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Disconnects a participant. `ConnectionToken` is used for invoking this API
  instead of `ParticipantToken`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connectparticipant%20DisconnectParticipant&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:connection_token` (`t:string` required) The authentication token associated
  with the participant's connection.
  ## Keyword parameters:
  """
  @spec disconnect_participant(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, disconnect_participant_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disconnect_participant_errors()}
  def disconnect_participant(%Client{} = client, connection_token, options \\ [])
      when is_binary(connection_token) do
    url_path = "/participant/disconnect"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"X-Amz-Bearer", connection_token}]

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
  Provides a pre-signed URL for download of a completed attachment. This is an
  asynchronous API for use with active contacts. `ConnectionToken` is used for
  invoking this API instead of `ParticipantToken`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connectparticipant%20GetAttachment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:connection_token` (`t:string` required) The authentication token associated
  with the participant's connection.
  ## Keyword parameters:
  """
  @spec get_attachment(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_attachment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_attachment_errors()}
  def get_attachment(%Client{} = client, connection_token, options \\ [])
      when is_binary(connection_token) do
    url_path = "/participant/attachment"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"X-Amz-Bearer", connection_token}]

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
  Retrieves a transcript of the session, including details about any attachments.
  For information about accessing past chat contact transcripts for a persistent
  chat, see [Enable persistent
  chat](https://docs.aws.amazon.com/connect/latest/adminguide/chat-persistence.html).
  If you have a process that consumes events in the transcript of an chat that
  has ended, note that chat transcripts contain the following event content
  types if the event has occurred during the chat session:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connectparticipant%20GetTranscript&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:connection_token` (`t:string` required) The authentication token associated
  with the participant's connection.
  ## Keyword parameters:
  """
  @spec get_transcript(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_transcript_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_transcript_errors()}
  def get_transcript(%Client{} = client, connection_token, options \\ [])
      when is_binary(connection_token) do
    url_path = "/participant/transcript"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"X-Amz-Bearer", connection_token}]

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
  The `application/vnd.amazonaws.connect.event.connection.acknowledged`
  ContentType will no longer be supported starting December 31, 2024. This event
  has been migrated to the
  [CreateParticipantConnection](https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_CreateParticipantConnection.html)
  API using the `ConnectParticipant` field. Sends an event. Message receipts are
  not supported when there are more than two active participants in the chat.
  Using the SendEvent API for message receipts when a supervisor is barged-in
  will result in a conflict exception. `ConnectionToken` is used for invoking
  this API instead of `ParticipantToken`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connectparticipant%20SendEvent&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:connection_token` (`t:string` required) The authentication token associated
  with the participant's connection.
  ## Keyword parameters:
  """
  @spec send_event(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, send_event_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_event_errors()}
  def send_event(%Client{} = client, connection_token, options \\ [])
      when is_binary(connection_token) do
    url_path = "/participant/event"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"X-Amz-Bearer", connection_token}]

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
  Sends a message. `ConnectionToken` is used for invoking this API instead of
  `ParticipantToken`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connectparticipant%20SendMessage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:connection_token` (`t:string` required) The authentication token associated
  with the connection.
  ## Keyword parameters:
  """
  @spec send_message(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, send_message_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_message_errors()}
  def send_message(%Client{} = client, connection_token, options \\ [])
      when is_binary(connection_token) do
    url_path = "/participant/message"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"X-Amz-Bearer", connection_token}]

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
  Provides a pre-signed Amazon S3 URL in response for uploading the file directly
  to S3. `ConnectionToken` is used for invoking this API instead of
  `ParticipantToken`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connectparticipant%20StartAttachmentUpload&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:connection_token` (`t:string` required) The authentication token associated
  with the participant's connection.
  ## Keyword parameters:
  """
  @spec start_attachment_upload(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, start_attachment_upload_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_attachment_upload_errors()}
  def start_attachment_upload(%Client{} = client, connection_token, options \\ [])
      when is_binary(connection_token) do
    url_path = "/participant/start-attachment-upload"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"X-Amz-Bearer", connection_token}]

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
