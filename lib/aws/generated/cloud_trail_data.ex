# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CloudTrailData do
  @moduledoc """
  The CloudTrail Data Service lets you ingest events into CloudTrail from any
  source in your hybrid environments, such as in-house or SaaS applications
  hosted on-premises or in the cloud, virtual machines, or containers. You can
  store, access, analyze, troubleshoot and take action on this data without
  maintaining multiple log aggregators and reporting tools. After you run
  `PutAuditEvents` to ingest your application activity into CloudTrail, you can
  use CloudTrail Lake to search, query, and analyze the data that is logged from
  your applications.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      audit_event() :: %{
        "eventData" => [String.t()],
        "eventDataChecksum" => [String.t()],
        "id" => String.t()
      }
      
  """
  @type audit_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      audit_event_result_entry() :: %{
        "eventID" => String.t(),
        "id" => String.t()
      }
      
  """
  @type audit_event_result_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      channel_insufficient_permission() :: %{
        "message" => [String.t()]
      }
      
  """
  @type channel_insufficient_permission() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      channel_not_found() :: %{
        "message" => [String.t()]
      }
      
  """
  @type channel_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      channel_unsupported_schema() :: %{
        "message" => [String.t()]
      }
      
  """
  @type channel_unsupported_schema() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      duplicated_audit_event_id() :: %{
        "message" => [String.t()]
      }
      
  """
  @type duplicated_audit_event_id() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_channel_arn() :: %{
        "message" => [String.t()]
      }
      
  """
  @type invalid_channel_arn() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_audit_events_request() :: %{
        optional("externalId") => String.t(),
        required("auditEvents") => list(audit_event()()),
        required("channelArn") => String.t()
      }
      
  """
  @type put_audit_events_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_audit_events_response() :: %{
        required("failed") => list(result_error_entry()()),
        required("successful") => list(audit_event_result_entry()())
      }
      
  """
  @type put_audit_events_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      result_error_entry() :: %{
        "errorCode" => String.t(),
        "errorMessage" => String.t(),
        "id" => String.t()
      }
      
  """
  @type result_error_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_operation_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type unsupported_operation_exception() :: %{String.t() => any()}

  @type put_audit_events_errors() ::
          unsupported_operation_exception()
          | invalid_channel_arn()
          | duplicated_audit_event_id()
          | channel_unsupported_schema()
          | channel_not_found()
          | channel_insufficient_permission()

  def metadata do
    %{
      api_version: "2021-08-11",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "cloudtrail-data",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "CloudTrail Data",
      signature_version: "v4",
      signing_name: "cloudtrail-data",
      target_prefix: nil
    }
  end

  @doc """
  Ingests your application events into CloudTrail Lake. A required parameter,
  `auditEvents`, accepts the JSON records (also called *payload*) of events that
  you want CloudTrail to ingest. You can add up to 100 of these events (or up to
  1 MB) per `PutAuditEvents` request.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudtraildata%20PutAuditEvents&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_arn` (`t:string`) The ARN or ID (the ARN suffix) of a channel.

  ## Optional parameters:
  * `:external_id` (`t:string`) A unique identifier that is conditionally required
  when the channel's resource policy includes an external ID. This value can
  be any string, such as a passphrase or account number.
  """

  @spec put_audit_events(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, put_audit_events_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_audit_events_errors()}

  def put_audit_events(%Client{} = client, channel_arn, options \\ [])
      when is_binary(channel_arn) do
    url_path = "/PutAuditEvents"

    # Validate optional parameters
    optional_params = [external_id: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"channelArn", channel_arn}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :external_id) do
        [{"externalId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:external_id])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end
end
