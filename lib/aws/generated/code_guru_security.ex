# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CodeGuruSecurity do
  @moduledoc """
  Amazon CodeGuru Security is in preview release and is subject to change. This
  section provides documentation for the Amazon CodeGuru Security API
  operations. CodeGuru Security is a service that uses program analysis and
  machine learning to detect security policy violations and vulnerabilities, and
  recommends ways to address these security risks.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      list_scans_response() :: %{
        "nextToken" => String.t(),
        "summaries" => list(scan_summary()())
      }
      
  """
  @type list_scans_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_scans_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t()
      }
      
  """
  @type list_scans_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      finding_identifier() :: %{
        "findingId" => [String.t()],
        "scanName" => [String.t()]
      }
      
  """
  @type finding_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      encryption_config() :: %{
        "kmsKeyArn" => String.t()
      }
      
  """
  @type encryption_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      suggested_fix() :: %{
        "code" => [String.t()],
        "description" => [String.t()]
      }
      
  """
  @type suggested_fix() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vulnerability() :: %{
        "filePath" => file_path(),
        "id" => [String.t()],
        "itemCount" => [integer()],
        "referenceUrls" => list([String.t()]()),
        "relatedVulnerabilities" => list([String.t()]())
      }
      
  """
  @type vulnerability() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      finding_metrics_value_per_severity() :: %{
        "critical" => [float()],
        "high" => [float()],
        "info" => [float()],
        "low" => [float()],
        "medium" => [float()]
      }
      
  """
  @type finding_metrics_value_per_severity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_scan_response() :: %{
        "analysisType" => list(any()),
        "createdAt" => [non_neg_integer()],
        "errorMessage" => String.t(),
        "numberOfRevisions" => [float()],
        "runId" => String.t(),
        "scanName" => String.t(),
        "scanNameArn" => String.t(),
        "scanState" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }
      
  """
  @type get_scan_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remediation() :: %{
        "recommendation" => recommendation(),
        "suggestedFixes" => list(suggested_fix()())
      }
      
  """
  @type remediation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      category_with_finding_num() :: %{
        "categoryName" => [String.t()],
        "findingNumber" => [integer()]
      }
      
  """
  @type category_with_finding_num() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_scan_response() :: %{
        "resourceId" => list(),
        "runId" => String.t(),
        "scanName" => String.t(),
        "scanNameArn" => String.t(),
        "scanState" => list(any())
      }
      
  """
  @type create_scan_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_upload_url_response() :: %{
        "codeArtifactId" => String.t(),
        "requestHeaders" => map(),
        "s3Url" => String.t()
      }
      
  """
  @type create_upload_url_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_scan_request() :: %{
        optional("runId") => String.t()
      }
      
  """
  @type get_scan_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_findings_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t(),
        optional("status") => list(any())
      }
      
  """
  @type get_findings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metrics_summary() :: %{
        "categoriesWithMostFindings" => list(category_with_finding_num()()),
        "date" => [non_neg_integer()],
        "openFindings" => finding_metrics_value_per_severity(),
        "scansWithMostOpenCriticalFindings" => list(scan_name_with_finding_num()()),
        "scansWithMostOpenFindings" => list(scan_name_with_finding_num()())
      }
      
  """
  @type metrics_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_metrics_summary_response() :: %{
        "metricsSummary" => metrics_summary()
      }
      
  """
  @type get_metrics_summary_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scan_name_with_finding_num() :: %{
        "findingNumber" => [integer()],
        "scanName" => [String.t()]
      }
      
  """
  @type scan_name_with_finding_num() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_findings_metrics_response() :: %{
        "findingsMetrics" => list(account_findings_metric()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_findings_metrics_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_findings_response() :: %{
        "failedFindings" => list(batch_get_findings_error()()),
        "findings" => list(finding()())
      }
      
  """
  @type batch_get_findings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "errorCode" => [String.t()],
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "errorCode" => [String.t()],
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_findings_error() :: %{
        "errorCode" => list(any()),
        "findingId" => [String.t()],
        "message" => [String.t()],
        "scanName" => String.t()
      }
      
  """
  @type batch_get_findings_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_findings_response() :: %{
        "findings" => list(finding()()),
        "nextToken" => String.t()
      }
      
  """
  @type get_findings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_findings_metrics_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t(),
        required("endDate") => [non_neg_integer()],
        required("startDate") => [non_neg_integer()]
      }
      
  """
  @type list_findings_metrics_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      code_line() :: %{
        "content" => [String.t()],
        "number" => [integer()]
      }
      
  """
  @type code_line() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recommendation() :: %{
        "text" => [String.t()],
        "url" => [String.t()]
      }
      
  """
  @type recommendation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_metrics_summary_request() :: %{
        required("date") => [non_neg_integer()]
      }
      
  """
  @type get_metrics_summary_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_account_configuration_response() :: %{
        "encryptionConfig" => encryption_config()
      }
      
  """
  @type get_account_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      finding() :: %{
        "createdAt" => [non_neg_integer()],
        "description" => [String.t()],
        "detectorId" => [String.t()],
        "detectorName" => [String.t()],
        "detectorTags" => list([String.t()]()),
        "generatorId" => [String.t()],
        "id" => [String.t()],
        "remediation" => remediation(),
        "resource" => resource(),
        "ruleId" => [String.t()],
        "severity" => list(any()),
        "status" => list(any()),
        "title" => [String.t()],
        "type" => [String.t()],
        "updatedAt" => [non_neg_integer()],
        "vulnerability" => vulnerability()
      }
      
  """
  @type finding() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "tags" => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_upload_url_request() :: %{
        required("scanName") => String.t()
      }
      
  """
  @type create_upload_url_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_findings_request() :: %{
        required("findingIdentifiers") => list(finding_identifier()())
      }
      
  """
  @type batch_get_findings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception_field() :: %{
        "message" => [String.t()],
        "name" => [String.t()]
      }
      
  """
  @type validation_exception_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "error" => [String.t()],
        "message" => [String.t()]
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_scan_request() :: %{
        optional("analysisType") => list(any()),
        optional("clientToken") => String.t(),
        optional("scanType") => list(any()),
        optional("tags") => map(),
        required("resourceId") => list(),
        required("scanName") => String.t()
      }
      
  """
  @type create_scan_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "errorCode" => [String.t()],
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "errorCode" => [String.t()],
        "fieldList" => list(validation_exception_field()()),
        "message" => [String.t()],
        "reason" => list(any())
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{}
      
  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:
      
      file_path() :: %{
        "codeSnippet" => list(code_line()()),
        "endLine" => [integer()],
        "name" => [String.t()],
        "path" => [String.t()],
        "startLine" => [integer()]
      }
      
  """
  @type file_path() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "errorCode" => [String.t()],
        "message" => [String.t()],
        "quotaCode" => [String.t()],
        "serviceCode" => [String.t()]
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scan_summary() :: %{
        "createdAt" => [non_neg_integer()],
        "runId" => String.t(),
        "scanName" => String.t(),
        "scanNameArn" => String.t(),
        "scanState" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }
      
  """
  @type scan_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_account_configuration_response() :: %{
        "encryptionConfig" => encryption_config()
      }
      
  """
  @type update_account_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_findings_metric() :: %{
        "closedFindings" => finding_metrics_value_per_severity(),
        "date" => [non_neg_integer()],
        "meanTimeToClose" => finding_metrics_value_per_severity(),
        "newFindings" => finding_metrics_value_per_severity(),
        "openFindings" => finding_metrics_value_per_severity()
      }
      
  """
  @type account_findings_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_account_configuration_request() :: %{
        required("encryptionConfig") => encryption_config()
      }
      
  """
  @type update_account_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_account_configuration_request() :: %{}
      
  """
  @type get_account_configuration_request() :: %{}

  @typedoc """

  ## Example:
      
      resource() :: %{
        "id" => [String.t()],
        "subResourceId" => [String.t()]
      }
      
  """
  @type resource() :: %{String.t() => any()}

  @type batch_get_findings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type create_scan_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_upload_url_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type get_account_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type get_findings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_metrics_summary_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type get_scan_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_findings_metrics_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_scans_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_account_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "codeguru-security",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "CodeGuru Security",
      signature_version: "v4",
      signing_name: "codeguru-security",
      target_prefix: nil
    }
  end

  @doc """
  Returns a list of requested findings from standard scans.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codegurusecurity%20BatchGetFindings&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec batch_get_findings(AWS.Client.t(), Keyword.t()) ::
          {:ok, batch_get_findings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_get_findings_errors()}
  def batch_get_findings(%Client{} = client, options \\ []) do
    url_path = "/batchGetFindings"

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

  @doc """
  Use to create a scan using code uploaded to an Amazon S3 bucket.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codegurusecurity%20CreateScan&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_scan(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_scan_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_scan_errors()}
  def create_scan(%Client{} = client, options \\ []) do
    url_path = "/scans"

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

  @doc """
  Generates a pre-signed URL, request headers used to upload a code resource, and
  code artifact identifier for the uploaded resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codegurusecurity%20CreateUploadUrl&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_upload_url(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_upload_url_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_upload_url_errors()}
  def create_upload_url(%Client{} = client, options \\ []) do
    url_path = "/uploadUrl"

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

  @doc """
  Use to get the encryption configuration for an account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codegurusecurity%20GetAccountConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec get_account_configuration(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_account_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_account_configuration_errors()}
  def get_account_configuration(%Client{} = client, options \\ []) do
    url_path = "/accountConfiguration/get"

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
  Returns a list of all findings generated by a particular scan.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codegurusecurity%20GetFindings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:scan_name` (`t:string` required) The name of the scan you want to retrieve
  findings from.
  ## Keyword parameters:
  * `:max_results` (`t:string`) The maximum number of results to return in the
  response. Use this parameter when paginating results. If additional results
  exist beyond the number you specify, the nextToken element is returned in
  the response. Use nextToken in a subsequent request to retrieve additional
  results. If not specified, returns 1000 results.
  * `:next_token` (`t:string`) A token to use for paginating results that are
  returned in the response. Set the value of this parameter to null for the
  first request. For subsequent calls, use the nextToken value returned from
  the previous request to continue listing results after the first page.
  * `:status` (`t:enum["ALL|CLOSED|OPEN"]`) The status of the findings you want to
  get. Pass either Open, Closed, or All.
  """
  @spec get_findings(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_findings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_findings_errors()}
  def get_findings(%Client{} = client, scan_name, options \\ []) do
    url_path = "/findings/#{AWS.Util.encode_uri(scan_name)}"

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
        [{"status", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
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
  Returns a summary of metrics for an account from a specified date, including
  number of open findings, the categories with most findings, the scans with
  most open findings, and scans with most open critical findings.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codegurusecurity%20GetMetricsSummary&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:date` (`t:string` required) The date you want to retrieve summary metrics
  from, rounded to the nearest day. The date must be within the past two
  years.
  ## Keyword parameters:
  """
  @spec get_metrics_summary(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_metrics_summary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_metrics_summary_errors()}
  def get_metrics_summary(%Client{} = client, date, options \\ []) when is_binary(date) do
    url_path = "/metrics/summary"

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
    query_params = [{"date", date}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns details about a scan, including whether or not a scan has completed.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codegurusecurity%20GetScan&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:scan_name` (`t:string` required) The name of the scan you want to view
  details about.
  ## Keyword parameters:
  * `:run_id` (`t:string`) UUID that identifies the individual scan run you want
  to view details about. You retrieve this when you call the CreateScan
  operation. Defaults to the latest scan run if missing.
  """
  @spec get_scan(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_scan_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_scan_errors()}
  def get_scan(%Client{} = client, scan_name, options \\ []) do
    url_path = "/scans/#{AWS.Util.encode_uri(scan_name)}"

    # Validate optional parameters
    optional_params = [run_id: nil]

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
      if opt_val = Keyword.get(options, :run_id) do
        [{"runId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:run_id])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns metrics about all findings in an account within a specified time range.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codegurusecurity%20ListFindingsMetrics&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:end_date` (`t:string` required) The end date of the interval which you want
  to retrieve metrics from. Round to the nearest day.
  * `:start_date` (`t:string` required) The start date of the interval which you
  want to retrieve metrics from. Rounds to the nearest day.
  ## Keyword parameters:
  * `:max_results` (`t:string`) The maximum number of results to return in the
  response. Use this parameter when paginating results. If additional results
  exist beyond the number you specify, the nextToken element is returned in
  the response. Use nextToken in a subsequent request to retrieve additional
  results. If not specified, returns 1000 results.
  * `:next_token` (`t:string`) A token to use for paginating results that are
  returned in the response. Set the value of this parameter to null for the
  first request. For subsequent calls, use the nextToken value returned from
  the previous request to continue listing results after the first page.
  """
  @spec list_findings_metrics(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_findings_metrics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_findings_metrics_errors()}
  def list_findings_metrics(%Client{} = client, end_date, start_date, options \\ [])
      when is_binary(end_date) and is_binary(start_date) do
    url_path = "/metrics/findings"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"endDate", end_date}, {"startDate", start_date}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of all scans in an account. Does not return `EXPRESS` scans.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codegurusecurity%20ListScans&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  * `:max_results` (`t:string`) The maximum number of results to return in the
  response. Use this parameter when paginating results. If additional results
  exist beyond the number you specify, the nextToken element is returned in
  the response. Use nextToken in a subsequent request to retrieve additional
  results. If not specified, returns 100 results.
  * `:next_token` (`t:string`) A token to use for paginating results that are
  returned in the response. Set the value of this parameter to null for the
  first request. For subsequent calls, use the nextToken value returned from
  the previous request to continue listing results after the first page.
  """
  @spec list_scans(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_scans_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_scans_errors()}
  def list_scans(%Client{} = client, options \\ []) do
    url_path = "/scans"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

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
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of all tags associated with a scan.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codegurusecurity%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The ARN of the ScanName object. You can
  retrieve this ARN by calling CreateScan, ListScans, or GetScan.
  ## Keyword parameters:
  """
  @spec list_tags_for_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"

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
  Use to add one or more tags to an existing scan.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codegurusecurity%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The ARN of the ScanName object. You can
  retrieve this ARN by calling CreateScan, ListScans, or GetScan.
  ## Keyword parameters:
  """
  @spec tag_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 204)
  end

  @doc """
  Use to remove one or more tags from an existing scan.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codegurusecurity%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The ARN of the ScanName object. You can
  retrieve this ARN by calling CreateScan, ListScans, or GetScan.
  * `:tag_keys` (`t:list[com.amazonaws.codegurusecurity#TagKey]` required) A list
  of keys for each tag you want to remove from a scan.
  ## Keyword parameters:
  """
  @spec untag_resource(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, tag_keys, options \\ [])
      when is_binary(tag_keys) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"

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
    query_params = [{"tagKeys", tag_keys}]

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      204
    )
  end

  @doc """
  Use to update the encryption configuration for an account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=codegurusecurity%20UpdateAccountConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec update_account_configuration(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_account_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_account_configuration_errors()}
  def update_account_configuration(%Client{} = client, options \\ []) do
    url_path = "/updateAccountConfiguration"

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

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end
end
