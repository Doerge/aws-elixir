# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SageMakerMetrics do
  @moduledoc """
  Contains all data plane API operations and data types for Amazon SageMaker
  Metrics. Use these APIs to put and retrieve (get) features related to your
  training run.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      batch_put_metrics_error() :: %{
        "Code" => list(any()),
        "MetricIndex" => integer()
      }
      
  """
  @type batch_put_metrics_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_put_metrics_request() :: %{
        required("MetricData") => list(raw_metric_data()()),
        required("TrialComponentName") => String.t()
      }
      
  """
  @type batch_put_metrics_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_put_metrics_response() :: %{
        "Errors" => list(batch_put_metrics_error()())
      }
      
  """
  @type batch_put_metrics_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      raw_metric_data() :: %{
        "MetricName" => String.t(),
        "Step" => integer(),
        "Timestamp" => non_neg_integer(),
        "Value" => float()
      }
      
  """
  @type raw_metric_data() :: %{String.t() => any()}

  def metadata do
    %{
      api_version: "2022-09-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "metrics.sagemaker",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "SageMaker Metrics",
      signature_version: "v4",
      signing_name: "sagemaker",
      target_prefix: nil
    }
  end

  @doc """
  Used to ingest training metrics into SageMaker. These metrics can be visualized
  in SageMaker Studio and retrieved with the `GetMetrics` API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=sagemakermetrics%20BatchPutMetrics&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec batch_put_metrics(AWS.Client.t(), Keyword.t()) ::
          {:ok, batch_put_metrics_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def batch_put_metrics(%Client{} = client, options \\ []) do
    url_path = "/BatchPutMetrics"

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
