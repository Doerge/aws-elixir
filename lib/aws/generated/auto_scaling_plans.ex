# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AutoScalingPlans do
  @moduledoc """
  AWS Auto Scaling
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      application_source() :: %{
        "CloudFormationStackARN" => String.t(),
        "TagFilters" => list(tag_filter()())
      }
      
  """
  @type application_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      concurrent_update_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type concurrent_update_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_scaling_plan_request() :: %{
        required("ApplicationSource") => application_source(),
        required("ScalingInstructions") => list(scaling_instruction()()),
        required("ScalingPlanName") => String.t()
      }
      
  """
  @type create_scaling_plan_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_scaling_plan_response() :: %{
        "ScalingPlanVersion" => float()
      }
      
  """
  @type create_scaling_plan_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      customized_load_metric_specification() :: %{
        "Dimensions" => list(metric_dimension()()),
        "MetricName" => String.t(),
        "Namespace" => String.t(),
        "Statistic" => list(any()),
        "Unit" => String.t()
      }
      
  """
  @type customized_load_metric_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      customized_scaling_metric_specification() :: %{
        "Dimensions" => list(metric_dimension()()),
        "MetricName" => String.t(),
        "Namespace" => String.t(),
        "Statistic" => list(any()),
        "Unit" => String.t()
      }
      
  """
  @type customized_scaling_metric_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      datapoint() :: %{
        "Timestamp" => non_neg_integer(),
        "Value" => float()
      }
      
  """
  @type datapoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_scaling_plan_request() :: %{
        required("ScalingPlanName") => String.t(),
        required("ScalingPlanVersion") => float()
      }
      
  """
  @type delete_scaling_plan_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_scaling_plan_response() :: %{}
      
  """
  @type delete_scaling_plan_response() :: %{}

  @typedoc """

  ## Example:
      
      describe_scaling_plan_resources_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ScalingPlanName") => String.t(),
        required("ScalingPlanVersion") => float()
      }
      
  """
  @type describe_scaling_plan_resources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_scaling_plan_resources_response() :: %{
        "NextToken" => String.t(),
        "ScalingPlanResources" => list(scaling_plan_resource()())
      }
      
  """
  @type describe_scaling_plan_resources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_scaling_plans_request() :: %{
        optional("ApplicationSources") => list(application_source()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ScalingPlanNames") => list(String.t()()),
        optional("ScalingPlanVersion") => float()
      }
      
  """
  @type describe_scaling_plans_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_scaling_plans_response() :: %{
        "NextToken" => String.t(),
        "ScalingPlans" => list(scaling_plan()())
      }
      
  """
  @type describe_scaling_plans_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_scaling_plan_resource_forecast_data_request() :: %{
        required("EndTime") => non_neg_integer(),
        required("ForecastDataType") => list(any()),
        required("ResourceId") => String.t(),
        required("ScalableDimension") => list(any()),
        required("ScalingPlanName") => String.t(),
        required("ScalingPlanVersion") => float(),
        required("ServiceNamespace") => list(any()),
        required("StartTime") => non_neg_integer()
      }
      
  """
  @type get_scaling_plan_resource_forecast_data_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_scaling_plan_resource_forecast_data_response() :: %{
        "Datapoints" => list(datapoint()())
      }
      
  """
  @type get_scaling_plan_resource_forecast_data_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_service_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_service_exception() :: %{String.t() => any()}

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
      
      metric_dimension() :: %{
        "Name" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type metric_dimension() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      object_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type object_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      predefined_load_metric_specification() :: %{
        "PredefinedLoadMetricType" => list(any()),
        "ResourceLabel" => String.t()
      }
      
  """
  @type predefined_load_metric_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      predefined_scaling_metric_specification() :: %{
        "PredefinedScalingMetricType" => list(any()),
        "ResourceLabel" => String.t()
      }
      
  """
  @type predefined_scaling_metric_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scaling_instruction() :: %{
        "CustomizedLoadMetricSpecification" => customized_load_metric_specification(),
        "DisableDynamicScaling" => boolean(),
        "MaxCapacity" => integer(),
        "MinCapacity" => integer(),
        "PredefinedLoadMetricSpecification" => predefined_load_metric_specification(),
        "PredictiveScalingMaxCapacityBehavior" => list(any()),
        "PredictiveScalingMaxCapacityBuffer" => integer(),
        "PredictiveScalingMode" => list(any()),
        "ResourceId" => String.t(),
        "ScalableDimension" => list(any()),
        "ScalingPolicyUpdateBehavior" => list(any()),
        "ScheduledActionBufferTime" => integer(),
        "ServiceNamespace" => list(any()),
        "TargetTrackingConfigurations" => list(target_tracking_configuration()())
      }
      
  """
  @type scaling_instruction() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scaling_plan() :: %{
        "ApplicationSource" => application_source(),
        "CreationTime" => non_neg_integer(),
        "ScalingInstructions" => list(scaling_instruction()()),
        "ScalingPlanName" => String.t(),
        "ScalingPlanVersion" => float(),
        "StatusCode" => list(any()),
        "StatusMessage" => String.t(),
        "StatusStartTime" => non_neg_integer()
      }
      
  """
  @type scaling_plan() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scaling_plan_resource() :: %{
        "ResourceId" => String.t(),
        "ScalableDimension" => list(any()),
        "ScalingPlanName" => String.t(),
        "ScalingPlanVersion" => float(),
        "ScalingPolicies" => list(scaling_policy()()),
        "ScalingStatusCode" => list(any()),
        "ScalingStatusMessage" => String.t(),
        "ServiceNamespace" => list(any())
      }
      
  """
  @type scaling_plan_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scaling_policy() :: %{
        "PolicyName" => String.t(),
        "PolicyType" => list(any()),
        "TargetTrackingConfiguration" => target_tracking_configuration()
      }
      
  """
  @type scaling_policy() :: %{String.t() => any()}

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
      
      target_tracking_configuration() :: %{
        "CustomizedScalingMetricSpecification" => customized_scaling_metric_specification(),
        "DisableScaleIn" => boolean(),
        "EstimatedInstanceWarmup" => integer(),
        "PredefinedScalingMetricSpecification" => predefined_scaling_metric_specification(),
        "ScaleInCooldown" => integer(),
        "ScaleOutCooldown" => integer(),
        "TargetValue" => float()
      }
      
  """
  @type target_tracking_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_scaling_plan_request() :: %{
        optional("ApplicationSource") => application_source(),
        optional("ScalingInstructions") => list(scaling_instruction()()),
        required("ScalingPlanName") => String.t(),
        required("ScalingPlanVersion") => float()
      }
      
  """
  @type update_scaling_plan_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_scaling_plan_response() :: %{}
      
  """
  @type update_scaling_plan_response() :: %{}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @type create_scaling_plan_errors() ::
          validation_exception()
          | limit_exceeded_exception()
          | internal_service_exception()
          | concurrent_update_exception()

  @type delete_scaling_plan_errors() ::
          validation_exception()
          | object_not_found_exception()
          | internal_service_exception()
          | concurrent_update_exception()

  @type describe_scaling_plan_resources_errors() ::
          validation_exception()
          | invalid_next_token_exception()
          | internal_service_exception()
          | concurrent_update_exception()

  @type describe_scaling_plans_errors() ::
          validation_exception()
          | invalid_next_token_exception()
          | internal_service_exception()
          | concurrent_update_exception()

  @type get_scaling_plan_resource_forecast_data_errors() ::
          validation_exception() | internal_service_exception()

  @type update_scaling_plan_errors() ::
          validation_exception()
          | object_not_found_exception()
          | internal_service_exception()
          | concurrent_update_exception()

  def metadata do
    %{
      api_version: "2018-01-06",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "autoscaling-plans",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Auto Scaling Plans",
      signature_version: "v4",
      signing_name: "autoscaling-plans",
      target_prefix: "AnyScaleScalingPlannerFrontendService"
    }
  end

  @doc """
  Creates a scaling plan.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=autoscalingplans%20CreateScalingPlan&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_scaling_plan_request`)
    %{
      required("ApplicationSource") => application_source(),
      required("ScalingInstructions") => list(scaling_instruction()()),
      required("ScalingPlanName") => String.t()
    }
  """

  @spec create_scaling_plan(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_scaling_plan_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_scaling_plan_errors()}

  def create_scaling_plan(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateScalingPlan", input, options)
  end

  @doc """
  Deletes the specified scaling plan. Deleting a scaling plan deletes the
  underlying `ScalingInstruction` for all of the scalable resources that are
  covered by the plan.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=autoscalingplans%20DeleteScalingPlan&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_scaling_plan_request`)
    %{
      required("ScalingPlanName") => String.t(),
      required("ScalingPlanVersion") => float()
    }
  """

  @spec delete_scaling_plan(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_scaling_plan_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_scaling_plan_errors()}

  def delete_scaling_plan(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteScalingPlan", input, options)
  end

  @doc """
  Describes the scalable resources in the specified scaling plan.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=autoscalingplans%20DescribeScalingPlanResources&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_scaling_plan_resources_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("ScalingPlanName") => String.t(),
      required("ScalingPlanVersion") => float()
    }
  """

  @spec describe_scaling_plan_resources(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_scaling_plan_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_scaling_plan_resources_errors()}

  def describe_scaling_plan_resources(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeScalingPlanResources", input, options)
  end

  @doc """
  Describes one or more of your scaling plans.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=autoscalingplans%20DescribeScalingPlans&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_scaling_plans_request`)
    %{
      optional("ApplicationSources") => list(application_source()()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("ScalingPlanNames") => list(String.t()()),
      optional("ScalingPlanVersion") => float()
    }
  """

  @spec describe_scaling_plans(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_scaling_plans_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_scaling_plans_errors()}

  def describe_scaling_plans(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeScalingPlans", input, options)
  end

  @doc """
  Retrieves the forecast data for a scalable resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=autoscalingplans%20GetScalingPlanResourceForecastData&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_scaling_plan_resource_forecast_data_request`)
    %{
      required("EndTime") => non_neg_integer(),
      required("ForecastDataType") => list(any()),
      required("ResourceId") => String.t(),
      required("ScalableDimension") => list(any()),
      required("ScalingPlanName") => String.t(),
      required("ScalingPlanVersion") => float(),
      required("ServiceNamespace") => list(any()),
      required("StartTime") => non_neg_integer()
    }
  """

  @spec get_scaling_plan_resource_forecast_data(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_scaling_plan_resource_forecast_data_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_scaling_plan_resource_forecast_data_errors()}

  def get_scaling_plan_resource_forecast_data(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetScalingPlanResourceForecastData", input, options)
  end

  @doc """
  Updates the specified scaling plan.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=autoscalingplans%20UpdateScalingPlan&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_scaling_plan_request`)
    %{
      optional("ApplicationSource") => application_source(),
      optional("ScalingInstructions") => list(scaling_instruction()()),
      required("ScalingPlanName") => String.t(),
      required("ScalingPlanVersion") => float()
    }
  """

  @spec update_scaling_plan(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_scaling_plan_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_scaling_plan_errors()}

  def update_scaling_plan(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateScalingPlan", input, options)
  end
end
