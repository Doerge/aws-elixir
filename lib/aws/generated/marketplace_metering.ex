# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MarketplaceMetering do
  @moduledoc """
  AWS Marketplace Metering Service This reference provides descriptions of the
  low-level AWS Marketplace Metering Service API.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      batch_meter_usage_request() :: %{
        required("ProductCode") => String.t(),
        required("UsageRecords") => list(usage_record()())
      }
      
  """
  @type batch_meter_usage_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_meter_usage_result() :: %{
        "Results" => list(usage_record_result()()),
        "UnprocessedRecords" => list(usage_record()())
      }
      
  """
  @type batch_meter_usage_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      customer_not_entitled_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type customer_not_entitled_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disabled_api_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type disabled_api_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      duplicate_request_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type duplicate_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      expired_token_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type expired_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_service_error_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type internal_service_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_customer_identifier_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_customer_identifier_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_endpoint_region_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_endpoint_region_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_product_code_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_product_code_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_public_key_version_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_public_key_version_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_region_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_region_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_tag_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_tag_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_token_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_usage_allocations_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_usage_allocations_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_usage_dimension_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_usage_dimension_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      meter_usage_request() :: %{
        optional("DryRun") => boolean(),
        optional("UsageAllocations") => list(usage_allocation()()),
        optional("UsageQuantity") => integer(),
        required("ProductCode") => String.t(),
        required("Timestamp") => non_neg_integer(),
        required("UsageDimension") => String.t()
      }
      
  """
  @type meter_usage_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      meter_usage_result() :: %{
        "MeteringRecordId" => String.t()
      }
      
  """
  @type meter_usage_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      platform_not_supported_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type platform_not_supported_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_usage_request() :: %{
        optional("Nonce") => String.t(),
        required("ProductCode") => String.t(),
        required("PublicKeyVersion") => integer()
      }
      
  """
  @type register_usage_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_usage_result() :: %{
        "PublicKeyRotationTimestamp" => non_neg_integer(),
        "Signature" => String.t()
      }
      
  """
  @type register_usage_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resolve_customer_request() :: %{
        required("RegistrationToken") => String.t()
      }
      
  """
  @type resolve_customer_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resolve_customer_result() :: %{
        "CustomerAWSAccountId" => String.t(),
        "CustomerIdentifier" => String.t(),
        "ProductCode" => String.t()
      }
      
  """
  @type resolve_customer_result() :: %{String.t() => any()}

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
      
      throttling_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      timestamp_out_of_bounds_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type timestamp_out_of_bounds_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      usage_allocation() :: %{
        "AllocatedUsageQuantity" => integer(),
        "Tags" => list(tag()())
      }
      
  """
  @type usage_allocation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      usage_record() :: %{
        "CustomerIdentifier" => String.t(),
        "Dimension" => String.t(),
        "Quantity" => integer(),
        "Timestamp" => non_neg_integer(),
        "UsageAllocations" => list(usage_allocation()())
      }
      
  """
  @type usage_record() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      usage_record_result() :: %{
        "MeteringRecordId" => String.t(),
        "Status" => list(any()),
        "UsageRecord" => usage_record()
      }
      
  """
  @type usage_record_result() :: %{String.t() => any()}

  @type batch_meter_usage_errors() ::
          timestamp_out_of_bounds_exception()
          | throttling_exception()
          | invalid_usage_dimension_exception()
          | invalid_usage_allocations_exception()
          | invalid_tag_exception()
          | invalid_product_code_exception()
          | invalid_customer_identifier_exception()
          | internal_service_error_exception()
          | disabled_api_exception()

  @type meter_usage_errors() ::
          timestamp_out_of_bounds_exception()
          | throttling_exception()
          | invalid_usage_dimension_exception()
          | invalid_usage_allocations_exception()
          | invalid_tag_exception()
          | invalid_product_code_exception()
          | invalid_endpoint_region_exception()
          | internal_service_error_exception()
          | duplicate_request_exception()
          | customer_not_entitled_exception()

  @type register_usage_errors() ::
          throttling_exception()
          | platform_not_supported_exception()
          | invalid_region_exception()
          | invalid_public_key_version_exception()
          | invalid_product_code_exception()
          | internal_service_error_exception()
          | disabled_api_exception()
          | customer_not_entitled_exception()

  @type resolve_customer_errors() ::
          throttling_exception()
          | invalid_token_exception()
          | internal_service_error_exception()
          | expired_token_exception()
          | disabled_api_exception()

  def metadata do
    %{
      api_version: "2016-01-14",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "metering.marketplace",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Marketplace Metering",
      signature_version: "v4",
      signing_name: "metering.marketplace",
      target_prefix: "AWSMPMeteringService"
    }
  end

  @doc """
  `BatchMeterUsage` is called from a SaaS application listed on AWS Marketplace to
  post metering records for a set of customers. For identical requests, the API
  is idempotent; requests can be retried with the same records or a subset of
  the input records.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=marketplacemetering%20BatchMeterUsage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:batch_meter_usage_request`)
    %{
      required("ProductCode") => String.t(),
      required("UsageRecords") => list(usage_record()())
    }
  """

  @spec batch_meter_usage(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, batch_meter_usage_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_meter_usage_errors()}

  def batch_meter_usage(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "BatchMeterUsage", input, options)
  end

  @doc """
  API to emit metering records. For identical requests, the API is idempotent. It
  simply returns the metering record ID. `MeterUsage` is authenticated on the
  buyer's AWS account using credentials from the EC2 instance, ECS task, or EKS
  pod.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=marketplacemetering%20MeterUsage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:meter_usage_request`)
    %{
      optional("DryRun") => boolean(),
      optional("UsageAllocations") => list(usage_allocation()()),
      optional("UsageQuantity") => integer(),
      required("ProductCode") => String.t(),
      required("Timestamp") => non_neg_integer(),
      required("UsageDimension") => String.t()
    }
  """

  @spec meter_usage(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, meter_usage_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, meter_usage_errors()}

  def meter_usage(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "MeterUsage", input, options)
  end

  @doc """
  Paid container software products sold through AWS Marketplace must integrate
  with the AWS Marketplace Metering Service and call the `RegisterUsage`
  operation for software entitlement and metering. Free and BYOL products for
  Amazon ECS or Amazon EKS aren't required to call `RegisterUsage`, but you may
  choose to do so if you would like to receive usage data in your seller
  reports. The sections below explain the behavior of `RegisterUsage`.
  `RegisterUsage` performs two primary functions: metering and entitlement.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=marketplacemetering%20RegisterUsage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:register_usage_request`)
    %{
      optional("Nonce") => String.t(),
      required("ProductCode") => String.t(),
      required("PublicKeyVersion") => integer()
    }
  """

  @spec register_usage(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, register_usage_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_usage_errors()}

  def register_usage(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "RegisterUsage", input, options)
  end

  @doc """
  `ResolveCustomer` is called by a SaaS application during the registration
  process. When a buyer visits your website during the registration process, the
  buyer submits a registration token through their browser. The registration
  token is resolved through this API to obtain a `CustomerIdentifier` along with
  the `CustomerAWSAccountId` and `ProductCode`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=marketplacemetering%20ResolveCustomer&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:resolve_customer_request`)
    %{
      required("RegistrationToken") => String.t()
    }
  """

  @spec resolve_customer(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, resolve_customer_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resolve_customer_errors()}

  def resolve_customer(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ResolveCustomer", input, options)
  end
end
