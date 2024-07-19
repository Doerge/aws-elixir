# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Pricing do
  @moduledoc """
  The Amazon Web Services Price List API is a centralized and convenient way to
  programmatically query Amazon Web Services for services, products, and pricing
  information. The Amazon Web Services Price List uses standardized product
  attributes such as `Location`, `Storage Class`, and `Operating System`, and
  provides prices at the SKU level. You can use the Amazon Web Services Price
  List to do the following:
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
      
      attribute_value() :: %{
        "Value" => String.t()
      }
      
  """
  @type attribute_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_services_request() :: %{
        optional("FormatVersion") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ServiceCode") => String.t()
      }
      
  """
  @type describe_services_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_services_response() :: %{
        "FormatVersion" => String.t(),
        "NextToken" => String.t(),
        "Services" => list(service()())
      }
      
  """
  @type describe_services_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      expired_next_token_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type expired_next_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      filter() :: %{
        "Field" => String.t(),
        "Type" => list(any()),
        "Value" => String.t()
      }
      
  """
  @type filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_attribute_values_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("AttributeName") => String.t(),
        required("ServiceCode") => String.t()
      }
      
  """
  @type get_attribute_values_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_attribute_values_response() :: %{
        "AttributeValues" => list(attribute_value()()),
        "NextToken" => String.t()
      }
      
  """
  @type get_attribute_values_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_price_list_file_url_request() :: %{
        required("FileFormat") => String.t(),
        required("PriceListArn") => String.t()
      }
      
  """
  @type get_price_list_file_url_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_price_list_file_url_response() :: %{
        "Url" => String.t()
      }
      
  """
  @type get_price_list_file_url_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_products_request() :: %{
        optional("Filters") => list(filter()()),
        optional("FormatVersion") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ServiceCode") => String.t()
      }
      
  """
  @type get_products_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_products_response() :: %{
        "FormatVersion" => String.t(),
        "NextToken" => String.t(),
        "PriceList" => list(String.t()())
      }
      
  """
  @type get_products_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_error_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_next_token_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_next_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_price_lists_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("RegionCode") => String.t(),
        required("CurrencyCode") => String.t(),
        required("EffectiveDate") => non_neg_integer(),
        required("ServiceCode") => String.t()
      }
      
  """
  @type list_price_lists_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_price_lists_response() :: %{
        "NextToken" => String.t(),
        "PriceLists" => list(price_list()())
      }
      
  """
  @type list_price_lists_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      price_list() :: %{
        "CurrencyCode" => String.t(),
        "FileFormats" => list(String.t()()),
        "PriceListArn" => String.t(),
        "RegionCode" => String.t()
      }
      
  """
  @type price_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service() :: %{
        "AttributeNames" => list(String.t()()),
        "ServiceCode" => String.t()
      }
      
  """
  @type service() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @type describe_services_errors() ::
          throttling_exception()
          | not_found_exception()
          | invalid_parameter_exception()
          | invalid_next_token_exception()
          | internal_error_exception()
          | expired_next_token_exception()

  @type get_attribute_values_errors() ::
          throttling_exception()
          | not_found_exception()
          | invalid_parameter_exception()
          | invalid_next_token_exception()
          | internal_error_exception()
          | expired_next_token_exception()

  @type get_price_list_file_url_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | not_found_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | access_denied_exception()

  @type get_products_errors() ::
          throttling_exception()
          | not_found_exception()
          | invalid_parameter_exception()
          | invalid_next_token_exception()
          | internal_error_exception()
          | expired_next_token_exception()

  @type list_price_lists_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | not_found_exception()
          | invalid_parameter_exception()
          | invalid_next_token_exception()
          | internal_error_exception()
          | expired_next_token_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2017-10-15",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "api.pricing",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Pricing",
      signature_version: "v4",
      signing_name: "pricing",
      target_prefix: "AWSPriceListService"
    }
  end

  @doc """
  Returns the metadata for one service or a list of the metadata for all services.
  Use this without a service code to get the service codes for all services. Use
  it with a service code, such as `AmazonEC2`, to get information specific to
  that service, such as the attribute names available for that service. For
  example, some of the attribute names available for EC2 are `volumeType`,
  `maxIopsVolume`, `operation`, `locationType`, and `instanceCapacity10xlarge`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pricing%20DescribeServices&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_services_request`)
    %{
      optional("FormatVersion") => String.t(),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("ServiceCode") => String.t()
    }
  """

  @spec describe_services(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_services_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_services_errors()}

  def describe_services(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeServices", input, options)
  end

  @doc """
  Returns a list of attribute values. Attributes are similar to the details in a
  Price List API offer file. For a list of available attributes, see [Offer File
  Definitions](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/reading-an-offer.html#pps-defs)
  in the [Billing and Cost Management User
  Guide](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-what-is.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pricing%20GetAttributeValues&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_attribute_values_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("AttributeName") => String.t(),
      required("ServiceCode") => String.t()
    }
  """

  @spec get_attribute_values(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_attribute_values_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_attribute_values_errors()}

  def get_attribute_values(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetAttributeValues", input, options)
  end

  @doc """
  * **This feature is in preview release and is subject to change. Your use of
  Amazon Web Services Price List API is subject to the Beta Service
  Participation terms of the [Amazon Web Services Service
  Terms](https://aws.amazon.com/service-terms/) (Section 1.10).** * This returns
  the URL that you can retrieve your Price List file from. This URL is based on
  the `PriceListArn` and `FileFormat` that you retrieve from the
  [ListPriceLists](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_pricing_ListPriceLists.html)
  response.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pricing%20GetPriceListFileUrl&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_price_list_file_url_request`)
    %{
      required("FileFormat") => String.t(),
      required("PriceListArn") => String.t()
    }
  """

  @spec get_price_list_file_url(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_price_list_file_url_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_price_list_file_url_errors()}

  def get_price_list_file_url(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetPriceListFileUrl", input, options)
  end

  @doc """
  Returns a list of all products that match the filter criteria.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pricing%20GetProducts&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_products_request`)
    %{
      optional("Filters") => list(filter()()),
      optional("FormatVersion") => String.t(),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("ServiceCode") => String.t()
    }
  """

  @spec get_products(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_products_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_products_errors()}

  def get_products(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetProducts", input, options)
  end

  @doc """
  * **This feature is in preview release and is subject to change. Your use of
  Amazon Web Services Price List API is subject to the Beta Service
  Participation terms of the [Amazon Web Services Service
  Terms](https://aws.amazon.com/service-terms/) (Section 1.10).** * This returns
  a list of Price List references that the requester if authorized to view,
  given a `ServiceCode`, `CurrencyCode`, and an `EffectiveDate`. Use without a
  `RegionCode` filter to list Price List references from all available Amazon
  Web Services Regions. Use with a `RegionCode` filter to get the Price List
  reference that's specific to a specific Amazon Web Services Region. You can
  use the `PriceListArn` from the response to get your preferred Price List
  files through the
  [GetPriceListFileUrl](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_pricing_GetPriceListFileUrl.html)
  API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pricing%20ListPriceLists&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_price_lists_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("RegionCode") => String.t(),
      required("CurrencyCode") => String.t(),
      required("EffectiveDate") => non_neg_integer(),
      required("ServiceCode") => String.t()
    }
  """

  @spec list_price_lists(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_price_lists_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_price_lists_errors()}

  def list_price_lists(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListPriceLists", input, options)
  end
end
