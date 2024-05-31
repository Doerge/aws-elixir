# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Artifact do
  @moduledoc """
  This reference provides descriptions of the low-level AWS Artifact Service API.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      account_settings() :: %{
        "notificationSubscriptionStatus" => String.t()
      }

  """
  @type account_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_account_settings_request() :: %{}

  """
  @type get_account_settings_request() :: %{}

  @typedoc """

  ## Example:

      get_account_settings_response() :: %{
        "accountSettings" => account_settings()
      }

  """
  @type get_account_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_report_metadata_request() :: %{
        optional("reportVersion") => float(),
        required("reportId") => String.t()
      }

  """
  @type get_report_metadata_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_report_metadata_response() :: %{
        "reportDetails" => report_detail()
      }

  """
  @type get_report_metadata_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_report_request() :: %{
        optional("reportVersion") => float(),
        required("reportId") => String.t(),
        required("termToken") => String.t()
      }

  """
  @type get_report_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_report_response() :: %{
        "documentPresignedUrl" => [String.t()]
      }

  """
  @type get_report_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_term_for_report_request() :: %{
        optional("reportVersion") => float(),
        required("reportId") => String.t()
      }

  """
  @type get_term_for_report_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_term_for_report_response() :: %{
        "documentPresignedUrl" => [String.t()],
        "termToken" => [String.t()]
      }

  """
  @type get_term_for_report_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t()],
        "retryAfterSeconds" => [integer()]
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_reports_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_reports_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_reports_response() :: %{
        "nextToken" => String.t(),
        "reports" => list(report_summary()())
      }

  """
  @type list_reports_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_account_settings_request() :: %{
        optional("notificationSubscriptionStatus") => String.t()
      }

  """
  @type put_account_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_account_settings_response() :: %{
        "accountSettings" => account_settings()
      }

  """
  @type put_account_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      report_detail() :: %{
        "acceptanceType" => String.t(),
        "arn" => String.t(),
        "category" => String.t(),
        "companyName" => String.t(),
        "createdAt" => non_neg_integer(),
        "deletedAt" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "lastModifiedAt" => non_neg_integer(),
        "name" => String.t(),
        "periodEnd" => non_neg_integer(),
        "periodStart" => non_neg_integer(),
        "productName" => String.t(),
        "sequenceNumber" => float(),
        "series" => String.t(),
        "state" => String.t(),
        "statusMessage" => String.t(),
        "termArn" => String.t(),
        "uploadState" => String.t(),
        "version" => float()
      }

  """
  @type report_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      report_summary() :: %{
        "arn" => String.t(),
        "category" => String.t(),
        "companyName" => String.t(),
        "description" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "periodEnd" => non_neg_integer(),
        "periodStart" => non_neg_integer(),
        "productName" => String.t(),
        "series" => String.t(),
        "state" => String.t(),
        "statusMessage" => String.t(),
        "uploadState" => String.t(),
        "version" => float()
      }

  """
  @type report_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t()],
        "quotaCode" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()],
        "serviceCode" => [String.t()]
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t()],
        "quotaCode" => [String.t()],
        "retryAfterSeconds" => [integer()],
        "serviceCode" => [String.t()]
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()()),
        "message" => [String.t()],
        "reason" => String.t()
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "message" => [String.t()],
        "name" => [String.t()]
      }

  """
  @type validation_exception_field() :: %{String.t() => any()}

  @type get_account_settings_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type get_report_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type get_report_metadata_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_term_for_report_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type list_reports_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type put_account_settings_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "artifact",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Artifact",
      signature_version: "v4",
      signing_name: "artifact",
      target_prefix: nil
    }
  end

  @doc """
  Get the account settings for Artifact.

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec get_account_settings(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_account_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_account_settings_errors()}
  def get_account_settings(%Client{} = client, options \\ []) do
    url_path = "/v1/account-settings/get"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [
    # ])

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the content for a single report.

  ## Required positional parameters:

  ## Optional parameters:
   • :report_id (t:String.t/0) (reportId)
   • :report_version (t:String.t/0) (reportVersion)
   • :term_token (t:String.t/0) (termToken)
  """
  @spec get_report(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_report_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_report_errors()}
  def get_report(%Client{} = client, report_id, term_token, options \\ []) do
    url_path = "/v1/report/get"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [report_id: nil, report_version: nil, term_token: nil
    # ])

    headers = []
    query_params = []

    {term_token, options} = Keyword.pop(options, :term_token, nil)

    query_params =
      if !is_nil(term_token) do
        [{"termToken", term_token} | query_params]
      else
        query_params
      end

    {report_version, options} = Keyword.pop(options, :report_version, nil)

    query_params =
      if !is_nil(report_version) do
        [{"reportVersion", report_version} | query_params]
      else
        query_params
      end

    {report_id, options} = Keyword.pop(options, :report_id, nil)

    query_params =
      if !is_nil(report_id) do
        [{"reportId", report_id} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the metadata for a single report.

  ## Required positional parameters:

  ## Optional parameters:
   • :report_id (t:String.t/0) (reportId)
   • :report_version (t:String.t/0) (reportVersion)
  """
  @spec get_report_metadata(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_report_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_report_metadata_errors()}
  def get_report_metadata(%Client{} = client, report_id, options \\ []) do
    url_path = "/v1/report/getMetadata"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [report_id: nil, report_version: nil
    # ])

    headers = []
    query_params = []

    {report_version, options} = Keyword.pop(options, :report_version, nil)

    query_params =
      if !is_nil(report_version) do
        [{"reportVersion", report_version} | query_params]
      else
        query_params
      end

    {report_id, options} = Keyword.pop(options, :report_id, nil)

    query_params =
      if !is_nil(report_id) do
        [{"reportId", report_id} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the Term content associated with a single report.

  ## Required positional parameters:

  ## Optional parameters:
   • :report_id (t:String.t/0) (reportId)
   • :report_version (t:String.t/0) (reportVersion)
  """
  @spec get_term_for_report(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_term_for_report_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_term_for_report_errors()}
  def get_term_for_report(%Client{} = client, report_id, options \\ []) do
    url_path = "/v1/report/getTermForReport"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [report_id: nil, report_version: nil
    # ])

    headers = []
    query_params = []

    {report_version, options} = Keyword.pop(options, :report_version, nil)

    query_params =
      if !is_nil(report_version) do
        [{"reportVersion", report_version} | query_params]
      else
        query_params
      end

    {report_id, options} = Keyword.pop(options, :report_id, nil)

    query_params =
      if !is_nil(report_id) do
        [{"reportId", report_id} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List available reports.

  ## Required positional parameters:

  ## Optional parameters:
   • :max_results (t:String.t/0) (maxResults)
   • :next_token (t:String.t/0) (nextToken)
  """
  @spec list_reports(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_reports_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_reports_errors()}
  def list_reports(%Client{} = client, options \\ []) do
    url_path = "/v1/report/list"

    # NOTE: We can't use validate!/2 here because the user might pass options to the client too...
    # options = Keyword.validate!(options, [max_results: nil, next_token: nil
    # ])

    headers = []
    query_params = []

    {next_token, options} = Keyword.pop(options, :next_token, nil)

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    {max_results, options} = Keyword.pop(options, :max_results, nil)

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Put the account settings for Artifact.

  ## Required positional parameters:

  ## Optional parameters:
  """
  @spec put_account_settings(AWS.Client.t(), put_account_settings_request(), Keyword.t()) ::
          {:ok, put_account_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_account_settings_errors()}
  def put_account_settings(%Client{} = client, input, options \\ []) do
    url_path = "/v1/account-settings/put"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
