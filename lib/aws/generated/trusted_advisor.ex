# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.TrustedAdvisor do
  @moduledoc """
  TrustedAdvisor Public API
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      recommendation_resource_exclusion() :: %{
        "arn" => String.t(),
        "isExcluded" => [boolean()]
      }
      
  """
  @type recommendation_resource_exclusion() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recommendation_pillar_specific_aggregates() :: %{
        "costOptimizing" => recommendation_cost_optimizing_aggregates()
      }
      
  """
  @type recommendation_pillar_specific_aggregates() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_organization_recommendation_accounts_response() :: %{
        "accountRecommendationLifecycleSummaries" => list(account_recommendation_lifecycle_summary()()),
        "nextToken" => [String.t()]
      }
      
  """
  @type list_organization_recommendation_accounts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_checks_response() :: %{
        "checkSummaries" => list(check_summary()()),
        "nextToken" => [String.t()]
      }
      
  """
  @type list_checks_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_recommendation_request() :: %{}
      
  """
  @type get_recommendation_request() :: %{}

  @typedoc """

  ## Example:
      
      organization_recommendation_summary() :: %{
        "arn" => String.t(),
        "awsServices" => list(String.t()()),
        "checkArn" => [String.t()],
        "createdAt" => [non_neg_integer()],
        "id" => [String.t()],
        "lastUpdatedAt" => [non_neg_integer()],
        "lifecycleStage" => list(any()),
        "name" => [String.t()],
        "pillarSpecificAggregates" => recommendation_pillar_specific_aggregates(),
        "pillars" => list(list(any())()),
        "resourcesAggregates" => recommendation_resources_aggregates(),
        "source" => list(any()),
        "status" => list(any()),
        "type" => list(any())
      }
      
  """
  @type organization_recommendation_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_recommendation_lifecycle_request() :: %{
        optional("updateReason") => String.t(),
        optional("updateReasonCode") => list(any()),
        required("lifecycleStage") => list(any())
      }
      
  """
  @type update_recommendation_lifecycle_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_update_recommendation_resource_exclusion_request() :: %{
        required("recommendationResourceExclusions") => list(recommendation_resource_exclusion()())
      }
      
  """
  @type batch_update_recommendation_resource_exclusion_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recommendation_resources_aggregates() :: %{
        "errorCount" => [float()],
        "okCount" => [float()],
        "warningCount" => [float()]
      }
      
  """
  @type recommendation_resources_aggregates() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_recommendation_resources_response() :: %{
        "nextToken" => [String.t()],
        "recommendationResourceSummaries" => list(recommendation_resource_summary()())
      }
      
  """
  @type list_recommendation_resources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recommendation() :: %{
        "arn" => String.t(),
        "awsServices" => list(String.t()()),
        "checkArn" => [String.t()],
        "createdAt" => [non_neg_integer()],
        "createdBy" => [String.t()],
        "description" => [String.t()],
        "id" => [String.t()],
        "lastUpdatedAt" => [non_neg_integer()],
        "lifecycleStage" => list(any()),
        "name" => [String.t()],
        "pillarSpecificAggregates" => recommendation_pillar_specific_aggregates(),
        "pillars" => list(list(any())()),
        "resolvedAt" => [non_neg_integer()],
        "resourcesAggregates" => recommendation_resources_aggregates(),
        "source" => list(any()),
        "status" => list(any()),
        "type" => list(any()),
        "updateReason" => String.t(),
        "updateReasonCode" => list(any()),
        "updatedOnBehalfOf" => [String.t()],
        "updatedOnBehalfOfJobTitle" => [String.t()]
      }
      
  """
  @type recommendation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_checks_request() :: %{
        optional("awsService") => String.t(),
        optional("language") => list(any()),
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()],
        optional("pillar") => list(any()),
        optional("source") => list(any())
      }
      
  """
  @type list_checks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_recommendation_lifecycle_summary() :: %{
        "accountId" => String.t(),
        "accountRecommendationArn" => String.t(),
        "lastUpdatedAt" => [non_neg_integer()],
        "lifecycleStage" => list(any()),
        "updateReason" => String.t(),
        "updateReasonCode" => list(any()),
        "updatedOnBehalfOf" => [String.t()],
        "updatedOnBehalfOfJobTitle" => [String.t()]
      }
      
  """
  @type account_recommendation_lifecycle_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_organization_recommendation_request() :: %{}
      
  """
  @type get_organization_recommendation_request() :: %{}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_organization_recommendations_response() :: %{
        "nextToken" => [String.t()],
        "organizationRecommendationSummaries" => list(organization_recommendation_summary()())
      }
      
  """
  @type list_organization_recommendations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_organization_recommendation_accounts_request() :: %{
        optional("affectedAccountId") => String.t(),
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()]
      }
      
  """
  @type list_organization_recommendation_accounts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_update_recommendation_resource_exclusion_response() :: %{
        "batchUpdateRecommendationResourceExclusionErrors" => list(update_recommendation_resource_exclusion_error()())
      }
      
  """
  @type batch_update_recommendation_resource_exclusion_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_recommendation_resources_request() :: %{
        optional("exclusionStatus") => list(any()),
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()],
        optional("regionCode") => [String.t()],
        optional("status") => list(any())
      }
      
  """
  @type list_recommendation_resources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_organization_recommendation_resources_response() :: %{
        "nextToken" => [String.t()],
        "organizationRecommendationResourceSummaries" => list(organization_recommendation_resource_summary()())
      }
      
  """
  @type list_organization_recommendation_resources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_organization_recommendation_lifecycle_request() :: %{
        optional("updateReason") => String.t(),
        optional("updateReasonCode") => list(any()),
        required("lifecycleStage") => list(any())
      }
      
  """
  @type update_organization_recommendation_lifecycle_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_organization_recommendation_response() :: %{
        "organizationRecommendation" => organization_recommendation()
      }
      
  """
  @type get_organization_recommendation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_organization_recommendation_resources_request() :: %{
        optional("affectedAccountId") => String.t(),
        optional("exclusionStatus") => list(any()),
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()],
        optional("regionCode") => [String.t()],
        optional("status") => list(any())
      }
      
  """
  @type list_organization_recommendation_resources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_organization_recommendations_request() :: %{
        optional("afterLastUpdatedAt") => [non_neg_integer()],
        optional("awsService") => String.t(),
        optional("beforeLastUpdatedAt") => [non_neg_integer()],
        optional("checkIdentifier") => String.t(),
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()],
        optional("pillar") => list(any()),
        optional("source") => list(any()),
        optional("status") => list(any()),
        optional("type") => list(any())
      }
      
  """
  @type list_organization_recommendations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      check_summary() :: %{
        "arn" => String.t(),
        "awsServices" => list(String.t()()),
        "description" => [String.t()],
        "id" => [String.t()],
        "metadata" => map(),
        "name" => [String.t()],
        "pillars" => list(list(any())()),
        "source" => list(any())
      }
      
  """
  @type check_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recommendation_summary() :: %{
        "arn" => String.t(),
        "awsServices" => list(String.t()()),
        "checkArn" => [String.t()],
        "createdAt" => [non_neg_integer()],
        "id" => [String.t()],
        "lastUpdatedAt" => [non_neg_integer()],
        "lifecycleStage" => list(any()),
        "name" => [String.t()],
        "pillarSpecificAggregates" => recommendation_pillar_specific_aggregates(),
        "pillars" => list(list(any())()),
        "resourcesAggregates" => recommendation_resources_aggregates(),
        "source" => list(any()),
        "status" => list(any()),
        "type" => list(any())
      }
      
  """
  @type recommendation_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_recommendation_resource_exclusion_error() :: %{
        "arn" => String.t(),
        "errorCode" => [String.t()],
        "errorMessage" => [String.t()]
      }
      
  """
  @type update_recommendation_resource_exclusion_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_recommendation_resource_summary() :: %{
        "accountId" => String.t(),
        "arn" => String.t(),
        "awsResourceId" => [String.t()],
        "exclusionStatus" => list(any()),
        "id" => [String.t()],
        "lastUpdatedAt" => [non_neg_integer()],
        "metadata" => map(),
        "recommendationArn" => String.t(),
        "regionCode" => String.t(),
        "status" => list(any())
      }
      
  """
  @type organization_recommendation_resource_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_recommendations_response() :: %{
        "nextToken" => [String.t()],
        "recommendationSummaries" => list(recommendation_summary()())
      }
      
  """
  @type list_recommendations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recommendation_cost_optimizing_aggregates() :: %{
        "estimatedMonthlySavings" => [float()],
        "estimatedPercentMonthlySavings" => [float()]
      }
      
  """
  @type recommendation_cost_optimizing_aggregates() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_recommendation_response() :: %{
        "recommendation" => recommendation()
      }
      
  """
  @type get_recommendation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_recommendation() :: %{
        "arn" => String.t(),
        "awsServices" => list(String.t()()),
        "checkArn" => [String.t()],
        "createdAt" => [non_neg_integer()],
        "createdBy" => [String.t()],
        "description" => [String.t()],
        "id" => [String.t()],
        "lastUpdatedAt" => [non_neg_integer()],
        "lifecycleStage" => list(any()),
        "name" => [String.t()],
        "pillarSpecificAggregates" => recommendation_pillar_specific_aggregates(),
        "pillars" => list(list(any())()),
        "resolvedAt" => [non_neg_integer()],
        "resourcesAggregates" => recommendation_resources_aggregates(),
        "source" => list(any()),
        "status" => list(any()),
        "type" => list(any()),
        "updateReason" => String.t(),
        "updateReasonCode" => list(any()),
        "updatedOnBehalfOf" => [String.t()],
        "updatedOnBehalfOfJobTitle" => [String.t()]
      }
      
  """
  @type organization_recommendation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recommendation_resource_summary() :: %{
        "arn" => String.t(),
        "awsResourceId" => [String.t()],
        "exclusionStatus" => list(any()),
        "id" => [String.t()],
        "lastUpdatedAt" => [non_neg_integer()],
        "metadata" => map(),
        "recommendationArn" => String.t(),
        "regionCode" => String.t(),
        "status" => list(any())
      }
      
  """
  @type recommendation_resource_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_recommendations_request() :: %{
        optional("afterLastUpdatedAt") => [non_neg_integer()],
        optional("awsService") => String.t(),
        optional("beforeLastUpdatedAt") => [non_neg_integer()],
        optional("checkIdentifier") => String.t(),
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()],
        optional("pillar") => list(any()),
        optional("source") => list(any()),
        optional("status") => list(any()),
        optional("type") => list(any())
      }
      
  """
  @type list_recommendations_request() :: %{String.t() => any()}

  @type batch_update_recommendation_resource_exclusion_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type get_organization_recommendation_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_recommendation_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_checks_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_organization_recommendation_accounts_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_organization_recommendation_resources_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_organization_recommendations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_recommendation_resources_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_recommendations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type update_organization_recommendation_lifecycle_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_recommendation_lifecycle_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2022-09-15",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "trustedadvisor",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "TrustedAdvisor",
      signature_version: "v4",
      signing_name: "trustedadvisor",
      target_prefix: nil
    }
  end

  @doc """
  Update one or more exclusion status for a list of recommendation resources

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=trustedadvisor%20BatchUpdateRecommendationResourceExclusion&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec batch_update_recommendation_resource_exclusion(AWS.Client.t(), Keyword.t()) ::
          {:ok, batch_update_recommendation_resource_exclusion_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_update_recommendation_resource_exclusion_errors()}

  def batch_update_recommendation_resource_exclusion(%Client{} = client, options \\ []) do
    url_path = "/v1/batch-update-recommendation-resource-exclusion"

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

  @doc """
  Get a specific recommendation within an AWS Organizations organization. This API
  supports only prioritized recommendations.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=trustedadvisor%20GetOrganizationRecommendation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:organization_recommendation_identifier` (`t:string`) The Recommendation
  identifier

  ## Optional parameters:
  """

  @spec get_organization_recommendation(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_organization_recommendation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_organization_recommendation_errors()}

  def get_organization_recommendation(
        %Client{} = client,
        organization_recommendation_identifier,
        options \\ []
      ) do
    url_path =
      "/v1/organization-recommendations/#{AWS.Util.encode_uri(organization_recommendation_identifier)}"

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
  Get a specific Recommendation

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=trustedadvisor%20GetRecommendation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:recommendation_identifier` (`t:string`) The Recommendation identifier

  ## Optional parameters:
  """

  @spec get_recommendation(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_recommendation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_recommendation_errors()}

  def get_recommendation(%Client{} = client, recommendation_identifier, options \\ []) do
    url_path = "/v1/recommendations/#{AWS.Util.encode_uri(recommendation_identifier)}"

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
  List a filterable set of Checks

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=trustedadvisor%20ListChecks&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:aws_service` (`t:string`) The aws service associated with the check
  * `:language`
  (`t:enum["BAHASA_INDONESIA|BRAZILIAN_PORTUGUESE|CHINESE|ENGLISH|FRENCH|GERMAN|ITALIAN|JAPANESE|KOREAN|SPANISH|TRADITIONAL_CHINESE"]`)
  The ISO 639-1 code for the language that you want your checks to appear in.
  * `:max_results` (`t:string`) The maximum number of results to return per page.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  * `:pillar`
  (`t:enum["COST_OPTIMIZING|FAULT_TOLERANCE|OPERATIONAL_EXCELLENCE|PERFORMANCE|SECURITY|SERVICE_LIMITS"]`)
  The pillar of the check
  * `:source`
  (`t:enum["AWS_CONFIG|COMPUTE_OPTIMIZER|COST_EXPLORER|LSE|MANUAL|PSE|RDS|RESILIENCE|RESILIENCE_HUB|SECURITY_HUB|STIR|TA_CHECK|WELL_ARCHITECTED"]`)
  The source of the check
  """

  @spec list_checks(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_checks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_checks_errors()}

  def list_checks(%Client{} = client, options \\ []) do
    url_path = "/v1/checks"

    # Validate optional parameters
    optional_params = [
      aws_service: nil,
      language: nil,
      max_results: nil,
      next_token: nil,
      pillar: nil,
      source: nil
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
      if opt_val = Keyword.get(options, :source) do
        [{"source", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :pillar) do
        [{"pillar", opt_val} | query_params]
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

    query_params =
      if opt_val = Keyword.get(options, :language) do
        [{"language", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :aws_service) do
        [{"awsService", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:aws_service, :language, :max_results, :next_token, :pillar, :source])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the accounts that own the resources for an organization aggregate
  recommendation. This API only supports prioritized recommendations.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=trustedadvisor%20ListOrganizationRecommendationAccounts&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:organization_recommendation_identifier` (`t:string`) The Recommendation
  identifier

  ## Optional parameters:
  * `:affected_account_id` (`t:string`) An account affected by this organization
  recommendation
  * `:max_results` (`t:string`) The maximum number of results to return per page.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  """

  @spec list_organization_recommendation_accounts(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_organization_recommendation_accounts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_organization_recommendation_accounts_errors()}

  def list_organization_recommendation_accounts(
        %Client{} = client,
        organization_recommendation_identifier,
        options \\ []
      ) do
    url_path =
      "/v1/organization-recommendations/#{AWS.Util.encode_uri(organization_recommendation_identifier)}/accounts"

    # Validate optional parameters
    optional_params = [affected_account_id: nil, max_results: nil, next_token: nil]

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

    query_params =
      if opt_val = Keyword.get(options, :affected_account_id) do
        [{"affectedAccountId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:affected_account_id, :max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List Resources of a Recommendation within an Organization. This API only
  supports prioritized recommendations.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=trustedadvisor%20ListOrganizationRecommendationResources&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:organization_recommendation_identifier` (`t:string`) The AWS Organization
  organization's Recommendation identifier

  ## Optional parameters:
  * `:affected_account_id` (`t:string`) An account affected by this organization
  recommendation
  * `:exclusion_status` (`t:enum["EXCLUDED|INCLUDED"]`) The exclusion status of
  the resource
  * `:max_results` (`t:string`) The maximum number of results to return per page.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  * `:region_code` (`t:string`) The AWS Region code of the resource
  * `:status` (`t:enum["ERROR|OK|WARNING"]`) The status of the resource
  """

  @spec list_organization_recommendation_resources(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_organization_recommendation_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_organization_recommendation_resources_errors()}

  def list_organization_recommendation_resources(
        %Client{} = client,
        organization_recommendation_identifier,
        options \\ []
      ) do
    url_path =
      "/v1/organization-recommendations/#{AWS.Util.encode_uri(organization_recommendation_identifier)}/resources"

    # Validate optional parameters
    optional_params = [
      affected_account_id: nil,
      exclusion_status: nil,
      max_results: nil,
      next_token: nil,
      region_code: nil,
      status: nil
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
      if opt_val = Keyword.get(options, :status) do
        [{"status", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :region_code) do
        [{"regionCode", opt_val} | query_params]
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

    query_params =
      if opt_val = Keyword.get(options, :exclusion_status) do
        [{"exclusionStatus", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :affected_account_id) do
        [{"affectedAccountId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :affected_account_id,
        :exclusion_status,
        :max_results,
        :next_token,
        :region_code,
        :status
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List a filterable set of Recommendations within an Organization. This API only
  supports prioritized recommendations.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=trustedadvisor%20ListOrganizationRecommendations&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:after_last_updated_at` (`t:string`) After the last update of the
  Recommendation
  * `:aws_service` (`t:string`) The aws service associated with the Recommendation
  * `:before_last_updated_at` (`t:string`) Before the last update of the
  Recommendation
  * `:check_identifier` (`t:string`) The check identifier of the Recommendation
  * `:max_results` (`t:string`) The maximum number of results to return per page.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  * `:pillar`
  (`t:enum["COST_OPTIMIZING|FAULT_TOLERANCE|OPERATIONAL_EXCELLENCE|PERFORMANCE|SECURITY|SERVICE_LIMITS"]`)
  The pillar of the Recommendation
  * `:source`
  (`t:enum["AWS_CONFIG|COMPUTE_OPTIMIZER|COST_EXPLORER|LSE|MANUAL|PSE|RDS|RESILIENCE|RESILIENCE_HUB|SECURITY_HUB|STIR|TA_CHECK|WELL_ARCHITECTED"]`)
  The source of the Recommendation
  * `:status` (`t:enum["ERROR|OK|WARNING"]`) The status of the Recommendation
  * `:type` (`t:enum["PRIORITY|STANDARD"]`) The type of the Recommendation
  """

  @spec list_organization_recommendations(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_organization_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_organization_recommendations_errors()}

  def list_organization_recommendations(%Client{} = client, options \\ []) do
    url_path = "/v1/organization-recommendations"

    # Validate optional parameters
    optional_params = [
      after_last_updated_at: nil,
      aws_service: nil,
      before_last_updated_at: nil,
      check_identifier: nil,
      max_results: nil,
      next_token: nil,
      pillar: nil,
      source: nil,
      status: nil,
      type: nil
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
      if opt_val = Keyword.get(options, :type) do
        [{"type", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :status) do
        [{"status", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :source) do
        [{"source", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :pillar) do
        [{"pillar", opt_val} | query_params]
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

    query_params =
      if opt_val = Keyword.get(options, :check_identifier) do
        [{"checkIdentifier", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :before_last_updated_at) do
        [{"beforeLastUpdatedAt", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :aws_service) do
        [{"awsService", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :after_last_updated_at) do
        [{"afterLastUpdatedAt", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :after_last_updated_at,
        :aws_service,
        :before_last_updated_at,
        :check_identifier,
        :max_results,
        :next_token,
        :pillar,
        :source,
        :status,
        :type
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List Resources of a Recommendation

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=trustedadvisor%20ListRecommendationResources&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:recommendation_identifier` (`t:string`) The Recommendation identifier

  ## Optional parameters:
  * `:exclusion_status` (`t:enum["EXCLUDED|INCLUDED"]`) The exclusion status of
  the resource
  * `:max_results` (`t:string`) The maximum number of results to return per page.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  * `:region_code` (`t:string`) The AWS Region code of the resource
  * `:status` (`t:enum["ERROR|OK|WARNING"]`) The status of the resource
  """

  @spec list_recommendation_resources(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_recommendation_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_recommendation_resources_errors()}

  def list_recommendation_resources(%Client{} = client, recommendation_identifier, options \\ []) do
    url_path = "/v1/recommendations/#{AWS.Util.encode_uri(recommendation_identifier)}/resources"

    # Validate optional parameters
    optional_params = [
      exclusion_status: nil,
      max_results: nil,
      next_token: nil,
      region_code: nil,
      status: nil
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
      if opt_val = Keyword.get(options, :status) do
        [{"status", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :region_code) do
        [{"regionCode", opt_val} | query_params]
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

    query_params =
      if opt_val = Keyword.get(options, :exclusion_status) do
        [{"exclusionStatus", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:exclusion_status, :max_results, :next_token, :region_code, :status])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List a filterable set of Recommendations

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=trustedadvisor%20ListRecommendations&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:after_last_updated_at` (`t:string`) After the last update of the
  Recommendation
  * `:aws_service` (`t:string`) The aws service associated with the Recommendation
  * `:before_last_updated_at` (`t:string`) Before the last update of the
  Recommendation
  * `:check_identifier` (`t:string`) The check identifier of the Recommendation
  * `:max_results` (`t:string`) The maximum number of results to return per page.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  * `:pillar`
  (`t:enum["COST_OPTIMIZING|FAULT_TOLERANCE|OPERATIONAL_EXCELLENCE|PERFORMANCE|SECURITY|SERVICE_LIMITS"]`)
  The pillar of the Recommendation
  * `:source`
  (`t:enum["AWS_CONFIG|COMPUTE_OPTIMIZER|COST_EXPLORER|LSE|MANUAL|PSE|RDS|RESILIENCE|RESILIENCE_HUB|SECURITY_HUB|STIR|TA_CHECK|WELL_ARCHITECTED"]`)
  The source of the Recommendation
  * `:status` (`t:enum["ERROR|OK|WARNING"]`) The status of the Recommendation
  * `:type` (`t:enum["PRIORITY|STANDARD"]`) The type of the Recommendation
  """

  @spec list_recommendations(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_recommendations_errors()}

  def list_recommendations(%Client{} = client, options \\ []) do
    url_path = "/v1/recommendations"

    # Validate optional parameters
    optional_params = [
      after_last_updated_at: nil,
      aws_service: nil,
      before_last_updated_at: nil,
      check_identifier: nil,
      max_results: nil,
      next_token: nil,
      pillar: nil,
      source: nil,
      status: nil,
      type: nil
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
      if opt_val = Keyword.get(options, :type) do
        [{"type", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :status) do
        [{"status", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :source) do
        [{"source", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :pillar) do
        [{"pillar", opt_val} | query_params]
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

    query_params =
      if opt_val = Keyword.get(options, :check_identifier) do
        [{"checkIdentifier", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :before_last_updated_at) do
        [{"beforeLastUpdatedAt", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :aws_service) do
        [{"awsService", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :after_last_updated_at) do
        [{"afterLastUpdatedAt", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :after_last_updated_at,
        :aws_service,
        :before_last_updated_at,
        :check_identifier,
        :max_results,
        :next_token,
        :pillar,
        :source,
        :status,
        :type
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Update the lifecycle of a Recommendation within an Organization. This API only
  supports prioritized recommendations.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=trustedadvisor%20UpdateOrganizationRecommendationLifecycle&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:organization_recommendation_identifier` (`t:string`) The Recommendation
  identifier for AWS Trusted Advisor Priority recommendations

  ## Optional parameters:
  """

  @spec update_organization_recommendation_lifecycle(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_organization_recommendation_lifecycle_errors()}

  def update_organization_recommendation_lifecycle(
        %Client{} = client,
        organization_recommendation_identifier,
        options \\ []
      ) do
    url_path =
      "/v1/organization-recommendations/#{AWS.Util.encode_uri(organization_recommendation_identifier)}/lifecycle"

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

  @doc """
  Update the lifecyle of a Recommendation. This API only supports prioritized
  recommendations.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=trustedadvisor%20UpdateRecommendationLifecycle&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:recommendation_identifier` (`t:string`) The Recommendation identifier for
  AWS Trusted Advisor Priority recommendations

  ## Optional parameters:
  """

  @spec update_recommendation_lifecycle(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_recommendation_lifecycle_errors()}

  def update_recommendation_lifecycle(
        %Client{} = client,
        recommendation_identifier,
        options \\ []
      ) do
    url_path = "/v1/recommendations/#{AWS.Util.encode_uri(recommendation_identifier)}/lifecycle"

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
