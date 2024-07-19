# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Forecastquery do
  @moduledoc """
  Provides APIs for creating and managing Amazon Forecast resources.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      data_point() :: %{
        "Timestamp" => String.t(),
        "Value" => float()
      }
      
  """
  @type data_point() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      forecast() :: %{
        "Predictions" => map()
      }
      
  """
  @type forecast() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_input_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_input_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_next_token_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_next_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      query_forecast_request() :: %{
        optional("EndDate") => String.t(),
        optional("NextToken") => String.t(),
        optional("StartDate") => String.t(),
        required("Filters") => map(),
        required("ForecastArn") => String.t()
      }
      
  """
  @type query_forecast_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      query_forecast_response() :: %{
        "Forecast" => forecast()
      }
      
  """
  @type query_forecast_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      query_what_if_forecast_request() :: %{
        optional("EndDate") => String.t(),
        optional("NextToken") => String.t(),
        optional("StartDate") => String.t(),
        required("Filters") => map(),
        required("WhatIfForecastArn") => String.t()
      }
      
  """
  @type query_what_if_forecast_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      query_what_if_forecast_response() :: %{
        "Forecast" => forecast()
      }
      
  """
  @type query_what_if_forecast_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_in_use_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @type query_forecast_errors() ::
          resource_not_found_exception()
          | resource_in_use_exception()
          | limit_exceeded_exception()
          | invalid_next_token_exception()
          | invalid_input_exception()

  @type query_what_if_forecast_errors() ::
          resource_not_found_exception()
          | resource_in_use_exception()
          | limit_exceeded_exception()
          | invalid_next_token_exception()
          | invalid_input_exception()

  def metadata do
    %{
      api_version: "2018-06-26",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "forecastquery",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "forecastquery",
      signature_version: "v4",
      signing_name: "forecastquery",
      target_prefix: "AmazonForecastRuntime"
    }
  end

  @doc """
  Retrieves a forecast for a single item, filtered by the supplied criteria. The
  criteria is a key-value pair. The key is either `item_id` (or the equivalent
  non-timestamp, non-target field) from the `TARGET_TIME_SERIES` dataset, or one
  of the forecast dimensions specified as part of the `FeaturizationConfig`
  object.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecastquery%20QueryForecast&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:query_forecast_request`)
    %{
      optional("EndDate") => String.t(),
      optional("NextToken") => String.t(),
      optional("StartDate") => String.t(),
      required("Filters") => map(),
      required("ForecastArn") => String.t()
    }
  """

  @spec query_forecast(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, query_forecast_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, query_forecast_errors()}

  def query_forecast(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "QueryForecast", input, options)
  end

  @doc """
  Retrieves a what-if forecast.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=forecastquery%20QueryWhatIfForecast&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:query_what_if_forecast_request`)
    %{
      optional("EndDate") => String.t(),
      optional("NextToken") => String.t(),
      optional("StartDate") => String.t(),
      required("Filters") => map(),
      required("WhatIfForecastArn") => String.t()
    }
  """

  @spec query_what_if_forecast(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, query_what_if_forecast_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, query_what_if_forecast_errors()}

  def query_what_if_forecast(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "QueryWhatIfForecast", input, options)
  end
end
