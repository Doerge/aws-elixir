# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CloudSearchDomain do
  @moduledoc """
  You use the AmazonCloudSearch2013 API to upload documents to a search domain and
  search those documents. The endpoints for submitting `UploadDocuments`,
  `Search`, and `Suggest` requests are domain-specific. To get the endpoints for
  your domain, use the Amazon CloudSearch configuration service
  `DescribeDomains` action. The domain endpoints are also displayed on the
  domain dashboard in the Amazon CloudSearch console. You submit suggest
  requests to the search endpoint.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      bucket() :: %{
        "count" => float(),
        "value" => String.t()
      }
      
  """
  @type bucket() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bucket_info() :: %{
        "buckets" => list(bucket()())
      }
      
  """
  @type bucket_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document_service_exception() :: %{
        "message" => String.t(),
        "status" => String.t()
      }
      
  """
  @type document_service_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document_service_warning() :: %{
        "message" => String.t()
      }
      
  """
  @type document_service_warning() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      field_stats() :: %{
        "count" => float(),
        "max" => String.t(),
        "mean" => String.t(),
        "min" => String.t(),
        "missing" => float(),
        "stddev" => float(),
        "sum" => float(),
        "sumOfSquares" => float()
      }
      
  """
  @type field_stats() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hit() :: %{
        "exprs" => map(),
        "fields" => map(),
        "highlights" => map(),
        "id" => String.t()
      }
      
  """
  @type hit() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hits() :: %{
        "cursor" => String.t(),
        "found" => float(),
        "hit" => list(hit()()),
        "start" => float()
      }
      
  """
  @type hits() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type search_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_request() :: %{
        optional("cursor") => String.t(),
        optional("expr") => String.t(),
        optional("facet") => String.t(),
        optional("filterQuery") => String.t(),
        optional("highlight") => String.t(),
        optional("partial") => boolean(),
        optional("queryOptions") => String.t(),
        optional("queryParser") => list(any()),
        optional("return") => String.t(),
        optional("size") => float(),
        optional("sort") => String.t(),
        optional("start") => float(),
        optional("stats") => String.t(),
        required("query") => String.t()
      }
      
  """
  @type search_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_response() :: %{
        "facets" => map(),
        "hits" => hits(),
        "stats" => map(),
        "status" => search_status()
      }
      
  """
  @type search_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_status() :: %{
        "rid" => String.t(),
        "timems" => float()
      }
      
  """
  @type search_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      suggest_model() :: %{
        "found" => float(),
        "query" => String.t(),
        "suggestions" => list(suggestion_match()())
      }
      
  """
  @type suggest_model() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      suggest_request() :: %{
        optional("size") => float(),
        required("query") => String.t(),
        required("suggester") => String.t()
      }
      
  """
  @type suggest_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      suggest_response() :: %{
        "status" => suggest_status(),
        "suggest" => suggest_model()
      }
      
  """
  @type suggest_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      suggest_status() :: %{
        "rid" => String.t(),
        "timems" => float()
      }
      
  """
  @type suggest_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      suggestion_match() :: %{
        "id" => String.t(),
        "score" => float(),
        "suggestion" => String.t()
      }
      
  """
  @type suggestion_match() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      upload_documents_request() :: %{
        required("contentType") => list(any()),
        required("documents") => binary()
      }
      
  """
  @type upload_documents_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      upload_documents_response() :: %{
        "adds" => float(),
        "deletes" => float(),
        "status" => String.t(),
        "warnings" => list(document_service_warning()())
      }
      
  """
  @type upload_documents_response() :: %{String.t() => any()}

  @type search_errors() :: search_exception()

  @type suggest_errors() :: search_exception()

  @type upload_documents_errors() :: document_service_exception()

  def metadata do
    %{
      api_version: "2013-01-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "cloudsearchdomain",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "CloudSearch Domain",
      signature_version: "v4",
      signing_name: "cloudsearch",
      target_prefix: nil
    }
  end

  @doc """
  Retrieves a list of documents that match the specified search criteria. How you
  specify the search criteria depends on which query parser you use. Amazon
  CloudSearch supports four query parsers:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudsearchdomain%20Search&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:query` (`t:string`) Specifies the search criteria for the request. How you
  specify the search criteria depends on the query parser used for the request
  and the parser options specified in the queryOptions parameter. By default,
  the simple query parser is used to process requests. To use the structured,
  lucene, or dismax query parser, you must also specify the queryParser
  parameter.

  ## Optional parameters:
  * `:cursor` (`t:string`) Retrieves a cursor value you can use to page through
  large result sets. Use the size parameter to control the number of hits to
  include in each response. You can specify either the cursor or start
  parameter in a request; they are mutually exclusive. To get the first
  cursor, set the cursor value to initial. In subsequent requests, specify the
  cursor value returned in the hits section of the response.
  * `:expr` (`t:string`) Defines one or more numeric expressions that can be used
  to sort results or specify search or filter criteria. You can also specify
  expressions as return fields.
  * `:facet` (`t:string`) Specifies one or more fields for which to get facet
  information, and options that control how the facet information is returned.
  Each specified field must be facet-enabled in the domain configuration. The
  fields and options are specified in JSON using the form
  {"FIELD":{"OPTION":VALUE,"OPTION:"STRING"},"FIELD":{"OPTION":VALUE,"OPTION":"STRING"}}.
  * `:filter_query` (`t:string`) Specifies a structured query that filters the
  results of a search without affecting how the results are scored and sorted.
  You use filterQuery in conjunction with the query parameter to filter the
  documents that match the constraints specified in the query parameter.
  Specifying a filter controls only which matching documents are included in
  the results, it has no effect on how they are scored and sorted. The
  filterQuery parameter supports the full structured query syntax.
  * `:highlight` (`t:string`) Retrieves highlights for matches in the specified
  text or text-array fields. Each specified field must be highlight enabled in
  the domain configuration. The fields and options are specified in JSON using
  the form
  {"FIELD":{"OPTION":VALUE,"OPTION:"STRING"},"FIELD":{"OPTION":VALUE,"OPTION":"STRING"}}.
  * `:partial` (`t:boolean`) Enables partial results to be returned if one or more
  index partitions are unavailable. When your search index is partitioned
  across multiple search instances, by default Amazon CloudSearch only returns
  results if every partition can be queried. This means that the failure of a
  single search instance can result in 5xx (internal server) errors. When you
  enable partial results, Amazon CloudSearch returns whatever results are
  available and includes the percentage of documents searched in the search
  results (percent-searched). This enables you to more gracefully degrade your
  users' search experience. For example, rather than displaying no results,
  you could display the partial results and a message indicating that the
  results might be incomplete due to a temporary system outage.
  * `:query_options` (`t:string`) Configures options for the query parser
  specified in the queryParser parameter. You specify the options in JSON
  using the following form
  {"OPTION1":"VALUE1","OPTION2":VALUE2"..."OPTIONN":"VALUEN"}.
  * `:query_parser` (`t:enum["dismax|lucene|simple|structured"]`) Specifies which
  query parser to use to process the request. If queryParser is not specified,
  Amazon CloudSearch uses the simple query parser.
  * `:return` (`t:string`) Specifies the field and expression values to include in
  the response. Multiple fields or expressions are specified as a
  comma-separated list. By default, a search response includes all return
  enabled fields (_all_fields). To return only the document IDs for the
  matching documents, specify _no_fields. To retrieve the relevance score
  calculated for each document, specify _score.
  * `:size` (`t:long`) Specifies the maximum number of search hits to include in
  the response.
  * `:sort` (`t:string`) Specifies the fields or custom expressions to use to sort
  the search results. Multiple fields or expressions are specified as a
  comma-separated list. You must specify the sort direction (asc or desc) for
  each field; for example, year desc,title asc. To use a field to sort
  results, the field must be sort-enabled in the domain configuration. Array
  type fields cannot be used for sorting. If no sort parameter is specified,
  results are sorted by their default relevance scores in descending order:
  _score desc. You can also sort by document ID (_id asc) and version
  (_version desc).
  * `:start` (`t:long`) Specifies the offset of the first search hit you want to
  return. Note that the result set is zero-based; the first result is at index
  0. You can specify either the start or cursor parameter in a request, they
  are mutually exclusive.
  * `:stats` (`t:string`) Specifies one or more fields for which to get statistics
  information. Each specified field must be facet-enabled in the domain
  configuration. The fields are specified in JSON using the form:
  """

  @spec search(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, search_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_errors()}

  def search(%Client{} = client, query, options \\ []) when is_binary(query) do
    url_path = "/2013-01-01/search?format=sdk&pretty=true"

    # Validate optional parameters
    optional_params = [
      cursor: nil,
      expr: nil,
      facet: nil,
      filter_query: nil,
      highlight: nil,
      partial: nil,
      query_options: nil,
      query_parser: nil,
      return: nil,
      size: nil,
      sort: nil,
      start: nil,
      stats: nil
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
    query_params = [{"q", query}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :stats) do
        [{"stats", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :start) do
        [{"start", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :sort) do
        [{"sort", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :size) do
        [{"size", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :return) do
        [{"return", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :query_parser) do
        [{"q.parser", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :query_options) do
        [{"q.options", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :partial) do
        [{"partial", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :highlight) do
        [{"highlight", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :filter_query) do
        [{"fq", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :facet) do
        [{"facet", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :expr) do
        [{"expr", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :cursor) do
        [{"cursor", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :cursor,
        :expr,
        :facet,
        :filter_query,
        :highlight,
        :partial,
        :query_options,
        :query_parser,
        :return,
        :size,
        :sort,
        :start,
        :stats
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves autocomplete suggestions for a partial query string. You can use
  suggestions enable you to display likely matches before users finish typing.
  In Amazon CloudSearch, suggestions are based on the contents of a particular
  text field. When you request suggestions, Amazon CloudSearch finds all of the
  documents whose values in the suggester field start with the specified query
  string. The beginning of the field must match the query string to be
  considered a match. For more information about configuring suggesters and
  retrieving suggestions, see [Getting
  Suggestions](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html)
  in the *Amazon CloudSearch Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudsearchdomain%20Suggest&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:query` (`t:string`) Specifies the string for which you want to get
  suggestions.
  * `:suggester` (`t:string`) Specifies the name of the suggester to use to find
  suggested matches.

  ## Optional parameters:
  * `:size` (`t:long`) Specifies the maximum number of suggestions to return.
  """

  @spec suggest(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, suggest_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, suggest_errors()}

  def suggest(%Client{} = client, query, suggester, options \\ [])
      when is_binary(query) and is_binary(suggester) do
    url_path = "/2013-01-01/suggest?format=sdk&pretty=true"

    # Validate optional parameters
    optional_params = [size: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"q", query}, {"suggester", suggester}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :size) do
        [{"size", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:size])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Posts a batch of documents to a search domain for indexing. A document batch is
  a collection of add and delete operations that represent the documents you
  want to add, update, or delete from your domain. Batches can be described in
  either JSON or XML. Each item that you want Amazon CloudSearch to return as a
  search result (such as a product) is represented as a document. Every document
  has a unique ID and one or more fields that contain the data that you want to
  search and return in results. Individual documents cannot contain more than 1
  MB of data. The entire batch cannot exceed 5 MB. To get the best possible
  upload performance, group add and delete operations in batches that are close
  the 5 MB limit. Submitting a large volume of single-document batches can
  overload a domain's document service. The endpoint for submitting
  `UploadDocuments` requests is domain-specific. To get the document endpoint
  for your domain, use the Amazon CloudSearch configuration service
  `DescribeDomains` action. A domain's endpoints are also displayed on the
  domain dashboard in the Amazon CloudSearch console.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cloudsearchdomain%20UploadDocuments&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:content_type` (`t:enum["application_json|application_xml"]`) The format of
  the batch you are uploading. Amazon CloudSearch supports two document batch
  formats:
  * `:input` (`t:map`):
    * `:documents` (`t:blob`) A batch of documents formatted in JSON or HTML.

  ## Optional parameters:
  """

  @spec upload_documents(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, upload_documents_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, upload_documents_errors()}

  def upload_documents(%Client{} = client, content_type, input, options \\ [])
      when is_map(input) and is_binary(content_type) do
    url_path = "/2013-01-01/documents/batch?format=sdk"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"Content-Type", content_type}]

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end
end
