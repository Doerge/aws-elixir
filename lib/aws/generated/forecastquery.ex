# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Forecastquery do
  @moduledoc """
  Provides APIs for creating and managing Amazon Forecast resources.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      api_version: "2018-06-26",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "forecastquery",
      global?: false,
      protocol: "json",
      service_id: "forecastquery",
      signature_version: "v4",
      signing_name: "forecastquery",
      target_prefix: "AmazonForecastRuntime"
    }
  end

  @doc """
  Retrieves a forecast for a single item, filtered by the supplied criteria.

  The criteria is a key-value pair. The key is either `item_id` (or the
  equivalent non-timestamp, non-target field) from the `TARGET_TIME_SERIES`
  dataset,
  or one of the forecast dimensions specified as part of the `FeaturizationConfig`
  object.

  By default, `QueryForecast` returns the complete date range for the filtered
  forecast. You can request a specific date range.

  To get the full forecast, use the
  [CreateForecastExportJob](https://docs.aws.amazon.com/en_us/forecast/latest/dg/API_CreateForecastExportJob.html)
  operation.

  The forecasts generated by Amazon Forecast are in the same timezone as the
  dataset that was
  used to create the predictor.
  """
  def query_forecast(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "QueryForecast", input, options)
  end

  @doc """
  Retrieves a what-if forecast.
  """
  def query_what_if_forecast(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "QueryWhatIfForecast", input, options)
  end
end
