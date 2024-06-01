# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ApplicationAutoScaling do
  @moduledoc """
  With Application Auto Scaling, you can configure automatic scaling for the
  following resources:
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      step_adjustment() :: %{
        "MetricIntervalLowerBound" => float(),
        "MetricIntervalUpperBound" => float(),
        "ScalingAdjustment" => integer()
      }
      
  """
  @type step_adjustment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceARN") => String.t(),
        required("Tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_scaling_policies_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("PolicyNames") => list(String.t()()),
        optional("ResourceId") => String.t(),
        optional("ScalableDimension") => list(any()),
        required("ServiceNamespace") => list(any())
      }
      
  """
  @type describe_scaling_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_scheduled_action_response() :: %{}
      
  """
  @type delete_scheduled_action_response() :: %{}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      alarm() :: %{
        "AlarmARN" => String.t(),
        "AlarmName" => String.t()
      }
      
  """
  @type alarm() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      target_tracking_scaling_policy_configuration() :: %{
        "CustomizedMetricSpecification" => customized_metric_specification(),
        "DisableScaleIn" => boolean(),
        "PredefinedMetricSpecification" => predefined_metric_specification(),
        "ScaleInCooldown" => integer(),
        "ScaleOutCooldown" => integer(),
        "TargetValue" => float()
      }
      
  """
  @type target_tracking_scaling_policy_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_scalable_target_request() :: %{
        required("ResourceId") => String.t(),
        required("ScalableDimension") => list(any()),
        required("ServiceNamespace") => list(any())
      }
      
  """
  @type deregister_scalable_target_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scaling_policy() :: %{
        "Alarms" => list(alarm()()),
        "CreationTime" => non_neg_integer(),
        "PolicyARN" => String.t(),
        "PolicyName" => String.t(),
        "PolicyType" => list(any()),
        "ResourceId" => String.t(),
        "ScalableDimension" => list(any()),
        "ServiceNamespace" => list(any()),
        "StepScalingPolicyConfiguration" => step_scaling_policy_configuration(),
        "TargetTrackingScalingPolicyConfiguration" => target_tracking_scaling_policy_configuration()
      }
      
  """
  @type scaling_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_service_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_service_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_scheduled_actions_response() :: %{
        "NextToken" => String.t(),
        "ScheduledActions" => list(scheduled_action()())
      }
      
  """
  @type describe_scheduled_actions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_scheduled_actions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ResourceId") => String.t(),
        optional("ScalableDimension") => list(any()),
        optional("ScheduledActionNames") => list(String.t()()),
        required("ServiceNamespace") => list(any())
      }
      
  """
  @type describe_scheduled_actions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceARN") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      customized_metric_specification() :: %{
        "Dimensions" => list(metric_dimension()()),
        "MetricName" => String.t(),
        "Metrics" => list(target_tracking_metric_data_query()()),
        "Namespace" => String.t(),
        "Statistic" => list(any()),
        "Unit" => String.t()
      }
      
  """
  @type customized_metric_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_scaling_activities_response() :: %{
        "NextToken" => String.t(),
        "ScalingActivities" => list(scaling_activity()())
      }
      
  """
  @type describe_scaling_activities_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      suspended_state() :: %{
        "DynamicScalingInSuspended" => boolean(),
        "DynamicScalingOutSuspended" => boolean(),
        "ScheduledScalingSuspended" => boolean()
      }
      
  """
  @type suspended_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t(),
        "ResourceName" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_next_token_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_next_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      target_tracking_metric_stat() :: %{
        "Metric" => target_tracking_metric(),
        "Stat" => String.t(),
        "Unit" => String.t()
      }
      
  """
  @type target_tracking_metric_stat() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scheduled_action() :: %{
        "CreationTime" => non_neg_integer(),
        "EndTime" => non_neg_integer(),
        "ResourceId" => String.t(),
        "ScalableDimension" => list(any()),
        "ScalableTargetAction" => scalable_target_action(),
        "Schedule" => String.t(),
        "ScheduledActionARN" => String.t(),
        "ScheduledActionName" => String.t(),
        "ServiceNamespace" => list(any()),
        "StartTime" => non_neg_integer(),
        "Timezone" => String.t()
      }
      
  """
  @type scheduled_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scaling_activity() :: %{
        "ActivityId" => String.t(),
        "Cause" => String.t(),
        "Description" => String.t(),
        "Details" => String.t(),
        "EndTime" => non_neg_integer(),
        "NotScaledReasons" => list(not_scaled_reason()()),
        "ResourceId" => String.t(),
        "ScalableDimension" => list(any()),
        "ServiceNamespace" => list(any()),
        "StartTime" => non_neg_integer(),
        "StatusCode" => list(any()),
        "StatusMessage" => String.t()
      }
      
  """
  @type scaling_activity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_scalable_target_request() :: %{
        optional("MaxCapacity") => integer(),
        optional("MinCapacity") => integer(),
        optional("RoleARN") => String.t(),
        optional("SuspendedState") => suspended_state(),
        optional("Tags") => map(),
        required("ResourceId") => String.t(),
        required("ScalableDimension") => list(any()),
        required("ServiceNamespace") => list(any())
      }
      
  """
  @type register_scalable_target_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      step_scaling_policy_configuration() :: %{
        "AdjustmentType" => list(any()),
        "Cooldown" => integer(),
        "MetricAggregationType" => list(any()),
        "MinAdjustmentMagnitude" => integer(),
        "StepAdjustments" => list(step_adjustment()())
      }
      
  """
  @type step_scaling_policy_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_scaling_activities_request() :: %{
        optional("IncludeNotScaledActivities") => boolean(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ResourceId") => String.t(),
        optional("ScalableDimension") => list(any()),
        required("ServiceNamespace") => list(any())
      }
      
  """
  @type describe_scaling_activities_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      target_tracking_metric() :: %{
        "Dimensions" => list(target_tracking_metric_dimension()()),
        "MetricName" => String.t(),
        "Namespace" => String.t()
      }
      
  """
  @type target_tracking_metric() :: %{String.t() => any()}

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
      
      put_scaling_policy_response() :: %{
        "Alarms" => list(alarm()()),
        "PolicyARN" => String.t()
      }
      
  """
  @type put_scaling_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scalable_target_action() :: %{
        "MaxCapacity" => integer(),
        "MinCapacity" => integer()
      }
      
  """
  @type scalable_target_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_scalable_targets_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ResourceIds") => list(String.t()()),
        optional("ScalableDimension") => list(any()),
        required("ServiceNamespace") => list(any())
      }
      
  """
  @type describe_scalable_targets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_scaling_policies_response() :: %{
        "NextToken" => String.t(),
        "ScalingPolicies" => list(scaling_policy()())
      }
      
  """
  @type describe_scaling_policies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_scaling_policy_request() :: %{
        required("PolicyName") => String.t(),
        required("ResourceId") => String.t(),
        required("ScalableDimension") => list(any()),
        required("ServiceNamespace") => list(any())
      }
      
  """
  @type delete_scaling_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_scheduled_action_request() :: %{
        optional("EndTime") => non_neg_integer(),
        optional("ScalableTargetAction") => scalable_target_action(),
        optional("Schedule") => String.t(),
        optional("StartTime") => non_neg_integer(),
        optional("Timezone") => String.t(),
        required("ResourceId") => String.t(),
        required("ScalableDimension") => list(any()),
        required("ScheduledActionName") => String.t(),
        required("ServiceNamespace") => list(any())
      }
      
  """
  @type put_scheduled_action_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      object_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type object_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_scheduled_action_response() :: %{}
      
  """
  @type put_scheduled_action_response() :: %{}

  @typedoc """

  ## Example:
      
      predefined_metric_specification() :: %{
        "PredefinedMetricType" => list(any()),
        "ResourceLabel" => String.t()
      }
      
  """
  @type predefined_metric_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scalable_target() :: %{
        "CreationTime" => non_neg_integer(),
        "MaxCapacity" => integer(),
        "MinCapacity" => integer(),
        "ResourceId" => String.t(),
        "RoleARN" => String.t(),
        "ScalableDimension" => list(any()),
        "ScalableTargetARN" => String.t(),
        "ServiceNamespace" => list(any()),
        "SuspendedState" => suspended_state()
      }
      
  """
  @type scalable_target() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      concurrent_update_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type concurrent_update_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceARN") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_scaling_policy_request() :: %{
        optional("PolicyType") => list(any()),
        optional("StepScalingPolicyConfiguration") => step_scaling_policy_configuration(),
        optional("TargetTrackingScalingPolicyConfiguration") => target_tracking_scaling_policy_configuration(),
        required("PolicyName") => String.t(),
        required("ResourceId") => String.t(),
        required("ScalableDimension") => list(any()),
        required("ServiceNamespace") => list(any())
      }
      
  """
  @type put_scaling_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_scaling_policy_response() :: %{}
      
  """
  @type delete_scaling_policy_response() :: %{}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_scheduled_action_request() :: %{
        required("ResourceId") => String.t(),
        required("ScalableDimension") => list(any()),
        required("ScheduledActionName") => String.t(),
        required("ServiceNamespace") => list(any())
      }
      
  """
  @type delete_scheduled_action_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      target_tracking_metric_dimension() :: %{
        "Name" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type target_tracking_metric_dimension() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_scalable_targets_response() :: %{
        "NextToken" => String.t(),
        "ScalableTargets" => list(scalable_target()())
      }
      
  """
  @type describe_scalable_targets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      target_tracking_metric_data_query() :: %{
        "Expression" => String.t(),
        "Id" => String.t(),
        "Label" => String.t(),
        "MetricStat" => target_tracking_metric_stat(),
        "ReturnData" => boolean()
      }
      
  """
  @type target_tracking_metric_data_query() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      not_scaled_reason() :: %{
        "Code" => String.t(),
        "CurrentCapacity" => integer(),
        "MaxCapacity" => integer(),
        "MinCapacity" => integer()
      }
      
  """
  @type not_scaled_reason() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_scalable_target_response() :: %{}
      
  """
  @type deregister_scalable_target_response() :: %{}

  @typedoc """

  ## Example:
      
      too_many_tags_exception() :: %{
        "Message" => String.t(),
        "ResourceName" => String.t()
      }
      
  """
  @type too_many_tags_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      failed_resource_access_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type failed_resource_access_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_scalable_target_response() :: %{
        "ScalableTargetARN" => String.t()
      }
      
  """
  @type register_scalable_target_response() :: %{String.t() => any()}

  @type delete_scaling_policy_errors() ::
          validation_exception()
          | concurrent_update_exception()
          | object_not_found_exception()
          | internal_service_exception()

  @type delete_scheduled_action_errors() ::
          validation_exception()
          | concurrent_update_exception()
          | object_not_found_exception()
          | internal_service_exception()

  @type deregister_scalable_target_errors() ::
          validation_exception()
          | concurrent_update_exception()
          | object_not_found_exception()
          | internal_service_exception()

  @type describe_scalable_targets_errors() ::
          validation_exception()
          | concurrent_update_exception()
          | invalid_next_token_exception()
          | internal_service_exception()

  @type describe_scaling_activities_errors() ::
          validation_exception()
          | concurrent_update_exception()
          | invalid_next_token_exception()
          | internal_service_exception()

  @type describe_scaling_policies_errors() ::
          failed_resource_access_exception()
          | validation_exception()
          | concurrent_update_exception()
          | invalid_next_token_exception()
          | internal_service_exception()

  @type describe_scheduled_actions_errors() ::
          validation_exception()
          | concurrent_update_exception()
          | invalid_next_token_exception()
          | internal_service_exception()

  @type list_tags_for_resource_errors() :: resource_not_found_exception()

  @type put_scaling_policy_errors() ::
          failed_resource_access_exception()
          | limit_exceeded_exception()
          | validation_exception()
          | concurrent_update_exception()
          | object_not_found_exception()
          | internal_service_exception()

  @type put_scheduled_action_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | concurrent_update_exception()
          | object_not_found_exception()
          | internal_service_exception()

  @type register_scalable_target_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | concurrent_update_exception()
          | internal_service_exception()

  @type tag_resource_errors() ::
          too_many_tags_exception() | validation_exception() | resource_not_found_exception()

  @type untag_resource_errors() :: validation_exception() | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2016-02-06",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "application-autoscaling",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Application Auto Scaling",
      signature_version: "v4",
      signing_name: "application-autoscaling",
      target_prefix: "AnyScaleFrontendService"
    }
  end

  @doc """
  Deletes the specified scaling policy for an Application Auto Scaling scalable
  target. Deleting a step scaling policy deletes the underlying alarm action,
  but does not delete the CloudWatch alarm associated with the scaling policy,
  even if it no longer has an associated action.
  """
  @spec delete_scaling_policy(AWS.Client.t(), delete_scaling_policy_request(), Keyword.t()) ::
          {:ok, delete_scaling_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_scaling_policy_errors()}
  def delete_scaling_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteScalingPolicy", input, options)
  end

  @doc """
  Deletes the specified scheduled action for an Application Auto Scaling scalable
  target.
  """
  @spec delete_scheduled_action(AWS.Client.t(), delete_scheduled_action_request(), Keyword.t()) ::
          {:ok, delete_scheduled_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_scheduled_action_errors()}
  def delete_scheduled_action(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteScheduledAction", input, options)
  end

  @doc """
  Deregisters an Application Auto Scaling scalable target when you have finished
  using it. To see which resources have been registered, use
  [DescribeScalableTargets](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_DescribeScalableTargets.html).
  """
  @spec deregister_scalable_target(
          AWS.Client.t(),
          deregister_scalable_target_request(),
          Keyword.t()
        ) ::
          {:ok, deregister_scalable_target_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deregister_scalable_target_errors()}
  def deregister_scalable_target(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeregisterScalableTarget", input, options)
  end

  @doc """
  Gets information about the scalable targets in the specified namespace.
  """
  @spec describe_scalable_targets(
          AWS.Client.t(),
          describe_scalable_targets_request(),
          Keyword.t()
        ) ::
          {:ok, describe_scalable_targets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_scalable_targets_errors()}
  def describe_scalable_targets(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeScalableTargets", input, options)
  end

  @doc """
  Provides descriptive information about the scaling activities in the specified
  namespace from the previous six weeks. You can filter the results using
  `ResourceId` and `ScalableDimension`.
  """
  @spec describe_scaling_activities(
          AWS.Client.t(),
          describe_scaling_activities_request(),
          Keyword.t()
        ) ::
          {:ok, describe_scaling_activities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_scaling_activities_errors()}
  def describe_scaling_activities(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeScalingActivities", input, options)
  end

  @doc """
  Describes the Application Auto Scaling scaling policies for the specified
  service namespace. You can filter the results using `ResourceId`,
  `ScalableDimension`, and `PolicyNames`.
  """
  @spec describe_scaling_policies(
          AWS.Client.t(),
          describe_scaling_policies_request(),
          Keyword.t()
        ) ::
          {:ok, describe_scaling_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_scaling_policies_errors()}
  def describe_scaling_policies(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeScalingPolicies", input, options)
  end

  @doc """
  Describes the Application Auto Scaling scheduled actions for the specified
  service namespace. You can filter the results using the `ResourceId`,
  `ScalableDimension`, and `ScheduledActionNames` parameters.
  """
  @spec describe_scheduled_actions(
          AWS.Client.t(),
          describe_scheduled_actions_request(),
          Keyword.t()
        ) ::
          {:ok, describe_scheduled_actions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_scheduled_actions_errors()}
  def describe_scheduled_actions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeScheduledActions", input, options)
  end

  @doc """
  Returns all the tags on the specified Application Auto Scaling scalable target.
  """
  @spec list_tags_for_resource(AWS.Client.t(), list_tags_for_resource_request(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Creates or updates a scaling policy for an Application Auto Scaling scalable
  target. Each scalable target is identified by a service namespace, resource
  ID, and scalable dimension. A scaling policy applies to the scalable target
  identified by those three attributes. You cannot create a scaling policy until
  you have registered the resource as a scalable target.
  """
  @spec put_scaling_policy(AWS.Client.t(), put_scaling_policy_request(), Keyword.t()) ::
          {:ok, put_scaling_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_scaling_policy_errors()}
  def put_scaling_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutScalingPolicy", input, options)
  end

  @doc """
  Creates or updates a scheduled action for an Application Auto Scaling scalable
  target. Each scalable target is identified by a service namespace, resource
  ID, and scalable dimension. A scheduled action applies to the scalable target
  identified by those three attributes. You cannot create a scheduled action
  until you have registered the resource as a scalable target.
  """
  @spec put_scheduled_action(AWS.Client.t(), put_scheduled_action_request(), Keyword.t()) ::
          {:ok, put_scheduled_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_scheduled_action_errors()}
  def put_scheduled_action(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutScheduledAction", input, options)
  end

  @doc """
  Registers or updates a scalable target, which is the resource that you want to
  scale. Scalable targets are uniquely identified by the combination of resource
  ID, scalable dimension, and namespace, which represents some capacity
  dimension of the underlying service.
  """
  @spec register_scalable_target(AWS.Client.t(), register_scalable_target_request(), Keyword.t()) ::
          {:ok, register_scalable_target_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_scalable_target_errors()}
  def register_scalable_target(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RegisterScalableTarget", input, options)
  end

  @doc """
  Adds or edits tags on an Application Auto Scaling scalable target. Each tag
  consists of a tag key and a tag value, which are both case-sensitive strings.
  To add a tag, specify a new tag key and a tag value. To edit a tag, specify an
  existing tag key and a new tag value.
  """
  @spec tag_resource(AWS.Client.t(), tag_resource_request(), Keyword.t()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Deletes tags from an Application Auto Scaling scalable target. To delete a tag,
  specify the tag key and the Application Auto Scaling scalable target.
  """
  @spec untag_resource(AWS.Client.t(), untag_resource_request(), Keyword.t()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end
end
