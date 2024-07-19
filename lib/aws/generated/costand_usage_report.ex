# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CostandUsageReport do
  @moduledoc """
  You can use the Amazon Web Services Cost and Usage Report API to
  programmatically create, query, and delete Amazon Web Services Cost and Usage
  Report definitions. Amazon Web Services Cost and Usage Report track the
  monthly Amazon Web Services costs and usage associated with your Amazon Web
  Services account. The report contains line items for each unique combination
  of Amazon Web Services product, usage type, and operation that your Amazon Web
  Services account uses. You can configure the Amazon Web Services Cost and
  Usage Report to show only the data that you want, using the Amazon Web
  Services Cost and Usage Report API.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      delete_report_definition_request() :: %{
        required("ReportName") => String.t()
      }
      
  """
  @type delete_report_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_report_definition_response() :: %{
        "ResponseMessage" => String.t()
      }
      
  """
  @type delete_report_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_report_definitions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_report_definitions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_report_definitions_response() :: %{
        "NextToken" => String.t(),
        "ReportDefinitions" => list(report_definition()())
      }
      
  """
  @type describe_report_definitions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      duplicate_report_name_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type duplicate_report_name_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_error_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ReportName") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_report_definition_request() :: %{
        required("ReportDefinition") => report_definition(),
        required("ReportName") => String.t()
      }
      
  """
  @type modify_report_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_report_definition_response() :: %{}
      
  """
  @type modify_report_definition_response() :: %{}

  @typedoc """

  ## Example:
      
      put_report_definition_request() :: %{
        optional("Tags") => list(tag()()),
        required("ReportDefinition") => report_definition()
      }
      
  """
  @type put_report_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_report_definition_response() :: %{}
      
  """
  @type put_report_definition_response() :: %{}

  @typedoc """

  ## Example:
      
      report_definition() :: %{
        "AdditionalArtifacts" => list(list(any())()),
        "AdditionalSchemaElements" => list(list(any())()),
        "BillingViewArn" => String.t(),
        "Compression" => list(any()),
        "Format" => list(any()),
        "RefreshClosedReports" => boolean(),
        "ReportName" => String.t(),
        "ReportStatus" => report_status(),
        "ReportVersioning" => list(any()),
        "S3Bucket" => String.t(),
        "S3Prefix" => String.t(),
        "S3Region" => list(any()),
        "TimeUnit" => list(any())
      }
      
  """
  @type report_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      report_limit_reached_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type report_limit_reached_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      report_status() :: %{
        "lastDelivery" => String.t(),
        "lastStatus" => list(any())
      }
      
  """
  @type report_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

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
      
      tag_resource_request() :: %{
        required("ReportName") => String.t(),
        required("Tags") => list(tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ReportName") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @type delete_report_definition_errors() :: validation_exception() | internal_error_exception()

  @type describe_report_definitions_errors() :: internal_error_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | resource_not_found_exception() | internal_error_exception()

  @type modify_report_definition_errors() :: validation_exception() | internal_error_exception()

  @type put_report_definition_errors() ::
          validation_exception()
          | resource_not_found_exception()
          | report_limit_reached_exception()
          | internal_error_exception()
          | duplicate_report_name_exception()

  @type tag_resource_errors() ::
          validation_exception() | resource_not_found_exception() | internal_error_exception()

  @type untag_resource_errors() ::
          validation_exception() | resource_not_found_exception() | internal_error_exception()

  def metadata do
    %{
      api_version: "2017-01-06",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "cur",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Cost and Usage Report Service",
      signature_version: "v4",
      signing_name: "cur",
      target_prefix: "AWSOrigamiServiceGatewayService"
    }
  end

  @doc """
  Deletes the specified report. Any tags associated with the report are also
  deleted.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=costandusagereportservice%20DeleteReportDefinition&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_report_definition_request`)
    %{
      required("ReportName") => String.t()
    }
  """

  @spec delete_report_definition(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_report_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_report_definition_errors()}

  def delete_report_definition(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteReportDefinition", input, options)
  end

  @doc """
  Lists the Amazon Web Services Cost and Usage Report available to this account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=costandusagereportservice%20DescribeReportDefinitions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_report_definitions_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec describe_report_definitions(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_report_definitions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_report_definitions_errors()}

  def describe_report_definitions(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeReportDefinitions", input, options)
  end

  @doc """
  Lists the tags associated with the specified report definition.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=costandusagereportservice%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_tags_for_resource_request`)
    %{
      required("ReportName") => String.t()
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
  Allows you to programmatically update your report preferences.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=costandusagereportservice%20ModifyReportDefinition&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:modify_report_definition_request`)
    %{
      required("ReportDefinition") => report_definition(),
      required("ReportName") => String.t()
    }
  """

  @spec modify_report_definition(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, modify_report_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_report_definition_errors()}

  def modify_report_definition(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifyReportDefinition", input, options)
  end

  @doc """
  Creates a new report using the description that you provide.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=costandusagereportservice%20PutReportDefinition&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_report_definition_request`)
    %{
      optional("Tags") => list(tag()()),
      required("ReportDefinition") => report_definition()
    }
  """

  @spec put_report_definition(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_report_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_report_definition_errors()}

  def put_report_definition(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutReportDefinition", input, options)
  end

  @doc """
  Associates a set of tags with a report definition.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=costandusagereportservice%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:tag_resource_request`)
    %{
      required("ReportName") => String.t(),
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
  Disassociates a set of tags from a report definition.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=costandusagereportservice%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:untag_resource_request`)
    %{
      required("ReportName") => String.t(),
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
end
