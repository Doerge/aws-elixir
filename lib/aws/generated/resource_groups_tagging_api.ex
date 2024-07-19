# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ResourceGroupsTaggingAPI do
  @moduledoc """
  Resource Groups Tagging API
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      compliance_details() :: %{
        "ComplianceStatus" => boolean(),
        "KeysWithNoncompliantValues" => list(String.t()()),
        "NoncompliantKeys" => list(String.t()())
      }
      
  """
  @type compliance_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      concurrent_modification_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type concurrent_modification_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      constraint_violation_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type constraint_violation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_report_creation_input() :: %{}
      
  """
  @type describe_report_creation_input() :: %{}

  @typedoc """

  ## Example:
      
      describe_report_creation_output() :: %{
        "ErrorMessage" => String.t(),
        "S3Location" => String.t(),
        "StartDate" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type describe_report_creation_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      failure_info() :: %{
        "ErrorCode" => list(any()),
        "ErrorMessage" => String.t(),
        "StatusCode" => integer()
      }
      
  """
  @type failure_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_compliance_summary_input() :: %{
        optional("GroupBy") => list(list(any())()),
        optional("MaxResults") => integer(),
        optional("PaginationToken") => String.t(),
        optional("RegionFilters") => list(String.t()()),
        optional("ResourceTypeFilters") => list(String.t()()),
        optional("TagKeyFilters") => list(String.t()()),
        optional("TargetIdFilters") => list(String.t()())
      }
      
  """
  @type get_compliance_summary_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_compliance_summary_output() :: %{
        "PaginationToken" => String.t(),
        "SummaryList" => list(summary()())
      }
      
  """
  @type get_compliance_summary_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resources_input() :: %{
        optional("ExcludeCompliantResources") => boolean(),
        optional("IncludeComplianceDetails") => boolean(),
        optional("PaginationToken") => String.t(),
        optional("ResourceARNList") => list(String.t()()),
        optional("ResourceTypeFilters") => list(String.t()()),
        optional("ResourcesPerPage") => integer(),
        optional("TagFilters") => list(tag_filter()()),
        optional("TagsPerPage") => integer()
      }
      
  """
  @type get_resources_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resources_output() :: %{
        "PaginationToken" => String.t(),
        "ResourceTagMappingList" => list(resource_tag_mapping()())
      }
      
  """
  @type get_resources_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_tag_keys_input() :: %{
        optional("PaginationToken") => String.t()
      }
      
  """
  @type get_tag_keys_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_tag_keys_output() :: %{
        "PaginationToken" => String.t(),
        "TagKeys" => list(String.t()())
      }
      
  """
  @type get_tag_keys_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_tag_values_input() :: %{
        optional("PaginationToken") => String.t(),
        required("Key") => String.t()
      }
      
  """
  @type get_tag_values_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_tag_values_output() :: %{
        "PaginationToken" => String.t(),
        "TagValues" => list(String.t()())
      }
      
  """
  @type get_tag_values_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_service_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_service_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pagination_token_expired_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type pagination_token_expired_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_tag_mapping() :: %{
        "ComplianceDetails" => compliance_details(),
        "ResourceARN" => String.t(),
        "Tags" => list(tag()())
      }
      
  """
  @type resource_tag_mapping() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_report_creation_input() :: %{
        required("S3Bucket") => String.t()
      }
      
  """
  @type start_report_creation_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_report_creation_output() :: %{}
      
  """
  @type start_report_creation_output() :: %{}

  @typedoc """

  ## Example:
      
      summary() :: %{
        "LastUpdated" => String.t(),
        "NonCompliantResources" => float(),
        "Region" => String.t(),
        "ResourceType" => String.t(),
        "TargetId" => String.t(),
        "TargetIdType" => list(any())
      }
      
  """
  @type summary() :: %{String.t() => any()}

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
      
      tag_filter() :: %{
        "Key" => String.t(),
        "Values" => list(String.t()())
      }
      
  """
  @type tag_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resources_input() :: %{
        required("ResourceARNList") => list(String.t()()),
        required("Tags") => map()
      }
      
  """
  @type tag_resources_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resources_output() :: %{
        "FailedResourcesMap" => map()
      }
      
  """
  @type tag_resources_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttled_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type throttled_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resources_input() :: %{
        required("ResourceARNList") => list(String.t()()),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resources_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resources_output() :: %{
        "FailedResourcesMap" => map()
      }
      
  """
  @type untag_resources_output() :: %{String.t() => any()}

  @type describe_report_creation_errors() ::
          throttled_exception()
          | invalid_parameter_exception()
          | internal_service_exception()
          | constraint_violation_exception()

  @type get_compliance_summary_errors() ::
          throttled_exception()
          | invalid_parameter_exception()
          | internal_service_exception()
          | constraint_violation_exception()

  @type get_resources_errors() ::
          throttled_exception()
          | pagination_token_expired_exception()
          | invalid_parameter_exception()
          | internal_service_exception()

  @type get_tag_keys_errors() ::
          throttled_exception()
          | pagination_token_expired_exception()
          | invalid_parameter_exception()
          | internal_service_exception()

  @type get_tag_values_errors() ::
          throttled_exception()
          | pagination_token_expired_exception()
          | invalid_parameter_exception()
          | internal_service_exception()

  @type start_report_creation_errors() ::
          throttled_exception()
          | invalid_parameter_exception()
          | internal_service_exception()
          | constraint_violation_exception()
          | concurrent_modification_exception()

  @type tag_resources_errors() ::
          throttled_exception() | invalid_parameter_exception() | internal_service_exception()

  @type untag_resources_errors() ::
          throttled_exception() | invalid_parameter_exception() | internal_service_exception()

  def metadata do
    %{
      api_version: "2017-01-26",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "tagging",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Resource Groups Tagging API",
      signature_version: "v4",
      signing_name: "tagging",
      target_prefix: "ResourceGroupsTaggingAPI_20170126"
    }
  end

  @doc """
  Describes the status of the `StartReportCreation` operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourcegroupstaggingapi%20DescribeReportCreation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_report_creation_input`)
    %{
      
    }
  """

  @spec describe_report_creation(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_report_creation_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_report_creation_errors()}

  def describe_report_creation(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeReportCreation", input, options)
  end

  @doc """
  Returns a table that shows counts of resources that are noncompliant with their
  tag policies. For more information on tag policies, see [Tag
  Policies](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html)
  in the *Organizations User Guide.*

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourcegroupstaggingapi%20GetComplianceSummary&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_compliance_summary_input`)
    %{
      optional("GroupBy") => list(list(any())()),
      optional("MaxResults") => integer(),
      optional("PaginationToken") => String.t(),
      optional("RegionFilters") => list(String.t()()),
      optional("ResourceTypeFilters") => list(String.t()()),
      optional("TagKeyFilters") => list(String.t()()),
      optional("TargetIdFilters") => list(String.t()())
    }
  """

  @spec get_compliance_summary(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_compliance_summary_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_compliance_summary_errors()}

  def get_compliance_summary(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetComplianceSummary", input, options)
  end

  @doc """
  Returns all the tagged or previously tagged resources that are located in the
  specified Amazon Web Services Region for the account. Depending on what
  information you want returned, you can also specify the following:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourcegroupstaggingapi%20GetResources&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_resources_input`)
    %{
      optional("ExcludeCompliantResources") => boolean(),
      optional("IncludeComplianceDetails") => boolean(),
      optional("PaginationToken") => String.t(),
      optional("ResourceARNList") => list(String.t()()),
      optional("ResourceTypeFilters") => list(String.t()()),
      optional("ResourcesPerPage") => integer(),
      optional("TagFilters") => list(tag_filter()()),
      optional("TagsPerPage") => integer()
    }
  """

  @spec get_resources(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_resources_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_resources_errors()}

  def get_resources(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetResources", input, options)
  end

  @doc """
  Returns all tag keys currently in use in the specified Amazon Web Services
  Region for the calling account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourcegroupstaggingapi%20GetTagKeys&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_tag_keys_input`)
    %{
      optional("PaginationToken") => String.t()
    }
  """

  @spec get_tag_keys(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_tag_keys_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_tag_keys_errors()}

  def get_tag_keys(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetTagKeys", input, options)
  end

  @doc """
  Returns all tag values for the specified key that are used in the specified
  Amazon Web Services Region for the calling account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourcegroupstaggingapi%20GetTagValues&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_tag_values_input`)
    %{
      optional("PaginationToken") => String.t(),
      required("Key") => String.t()
    }
  """

  @spec get_tag_values(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_tag_values_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_tag_values_errors()}

  def get_tag_values(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetTagValues", input, options)
  end

  @doc """
  Generates a report that lists all tagged resources in the accounts across your
  organization and tells whether each resource is compliant with the effective
  tag policy. Compliance data is refreshed daily. The report is generated
  asynchronously. The generated report is saved to the following location:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourcegroupstaggingapi%20StartReportCreation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:start_report_creation_input`)
    %{
      required("S3Bucket") => String.t()
    }
  """

  @spec start_report_creation(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, start_report_creation_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_report_creation_errors()}

  def start_report_creation(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartReportCreation", input, options)
  end

  @doc """
  Applies one or more tags to the specified resources. Note the following:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourcegroupstaggingapi%20TagResources&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:tag_resources_input`)
    %{
      required("ResourceARNList") => list(String.t()()),
      required("Tags") => map()
    }
  """

  @spec tag_resources(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, tag_resources_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resources_errors()}

  def tag_resources(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagResources", input, options)
  end

  @doc """
  Removes the specified tags from the specified resources. When you specify a tag
  key, the action removes both that key and its associated value. The operation
  succeeds even if you attempt to remove tags from a resource that were already
  removed. Note the following:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=resourcegroupstaggingapi%20UntagResources&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:untag_resources_input`)
    %{
      required("ResourceARNList") => list(String.t()()),
      required("TagKeys") => list(String.t()())
    }
  """

  @spec untag_resources(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, untag_resources_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resources_errors()}

  def untag_resources(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagResources", input, options)
  end
end
