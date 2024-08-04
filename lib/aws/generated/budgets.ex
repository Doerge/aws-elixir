# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Budgets do
  @moduledoc """
  Use the Amazon Web Services Budgets API to plan your service usage, service
  costs, and instance reservations. This API reference provides descriptions,
  syntax, and usage examples for each of the actions and data types for the
  Amazon Web Services Budgets feature. Budgets provide you with a way to see the
  following information:
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      delete_budget_action_request() :: %{
        required("AccountId") => String.t(),
        required("ActionId") => String.t(),
        required("BudgetName") => String.t()
      }
      
  """
  @type delete_budget_action_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceARN") => String.t(),
        required("ResourceTags") => list(resource_tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_budgets_response() :: %{
        "Budgets" => list(budget()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_budgets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_budget_notifications_for_account_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("AccountId") => String.t()
      }
      
  """
  @type describe_budget_notifications_for_account_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_budget_response() :: %{}
      
  """
  @type delete_budget_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_subscriber_request() :: %{
        required("AccountId") => String.t(),
        required("BudgetName") => String.t(),
        required("Notification") => notification(),
        required("Subscriber") => subscriber()
      }
      
  """
  @type delete_subscriber_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_budget_action_response() :: %{
        "AccountId" => String.t(),
        "Action" => action(),
        "BudgetName" => String.t()
      }
      
  """
  @type delete_budget_action_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_budget_action_histories_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("TimePeriod") => time_period(),
        required("AccountId") => String.t(),
        required("ActionId") => String.t(),
        required("BudgetName") => String.t()
      }
      
  """
  @type describe_budget_action_histories_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_budget_response() :: %{}
      
  """
  @type create_budget_response() :: %{}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      update_subscriber_response() :: %{}
      
  """
  @type update_subscriber_response() :: %{}

  @typedoc """

  ## Example:
      
      action_threshold() :: %{
        "ActionThresholdType" => list(any()),
        "ActionThresholdValue" => float()
      }
      
  """
  @type action_threshold() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_subscriber_response() :: %{}
      
  """
  @type create_subscriber_response() :: %{}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceARN") => String.t(),
        required("ResourceTagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_budget_action_request() :: %{
        optional("ActionThreshold") => action_threshold(),
        optional("ApprovalModel") => list(any()),
        optional("Definition") => definition(),
        optional("ExecutionRoleArn") => String.t(),
        optional("NotificationType") => list(any()),
        optional("Subscribers") => list(subscriber()()),
        required("AccountId") => String.t(),
        required("ActionId") => String.t(),
        required("BudgetName") => String.t()
      }
      
  """
  @type update_budget_action_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_budget_actions_for_account_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("AccountId") => String.t()
      }
      
  """
  @type describe_budget_actions_for_account_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_budgets_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("AccountId") => String.t()
      }
      
  """
  @type describe_budgets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      time_period() :: %{
        "End" => non_neg_integer(),
        "Start" => non_neg_integer()
      }
      
  """
  @type time_period() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_notification_response() :: %{}
      
  """
  @type create_notification_response() :: %{}

  @typedoc """

  ## Example:
      
      describe_budget_actions_for_budget_response() :: %{
        "Actions" => list(action()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_budget_actions_for_budget_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_budget_actions_for_budget_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("AccountId") => String.t(),
        required("BudgetName") => String.t()
      }
      
  """
  @type describe_budget_actions_for_budget_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_budget_request() :: %{
        required("AccountId") => String.t(),
        required("NewBudget") => budget()
      }
      
  """
  @type update_budget_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_subscriber_response() :: %{}
      
  """
  @type delete_subscriber_response() :: %{}

  @typedoc """

  ## Example:
      
      expired_next_token_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type expired_next_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_subscribers_for_notification_response() :: %{
        "NextToken" => String.t(),
        "Subscribers" => list(subscriber()())
      }
      
  """
  @type describe_subscribers_for_notification_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_budget_notifications_for_account_response() :: %{
        "BudgetNotificationsForAccount" => list(budget_notifications_for_account()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_budget_notifications_for_account_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execute_budget_action_response() :: %{
        "AccountId" => String.t(),
        "ActionId" => String.t(),
        "BudgetName" => String.t(),
        "ExecutionType" => list(any())
      }
      
  """
  @type execute_budget_action_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      calculated_spend() :: %{
        "ActualSpend" => spend(),
        "ForecastedSpend" => spend()
      }
      
  """
  @type calculated_spend() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_subscriber_request() :: %{
        required("AccountId") => String.t(),
        required("BudgetName") => String.t(),
        required("NewSubscriber") => subscriber(),
        required("Notification") => notification(),
        required("OldSubscriber") => subscriber()
      }
      
  """
  @type update_subscriber_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scp_action_definition() :: %{
        "PolicyId" => String.t(),
        "TargetIds" => list(String.t()())
      }
      
  """
  @type scp_action_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_budget_performance_history_response() :: %{
        "BudgetPerformanceHistory" => budget_performance_history(),
        "NextToken" => String.t()
      }
      
  """
  @type describe_budget_performance_history_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      action_history() :: %{
        "ActionHistoryDetails" => action_history_details(),
        "EventType" => list(any()),
        "Status" => list(any()),
        "Timestamp" => non_neg_integer()
      }
      
  """
  @type action_history() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ssm_action_definition() :: %{
        "ActionSubType" => list(any()),
        "InstanceIds" => list(String.t()()),
        "Region" => String.t()
      }
      
  """
  @type ssm_action_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_next_token_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_next_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_budget_action_histories_response() :: %{
        "ActionHistories" => list(action_history()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_budget_action_histories_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cost_types() :: %{
        "IncludeCredit" => boolean(),
        "IncludeDiscount" => boolean(),
        "IncludeOtherSubscription" => boolean(),
        "IncludeRecurring" => boolean(),
        "IncludeRefund" => boolean(),
        "IncludeSubscription" => boolean(),
        "IncludeSupport" => boolean(),
        "IncludeTax" => boolean(),
        "IncludeUpfront" => boolean(),
        "UseAmortized" => boolean(),
        "UseBlended" => boolean()
      }
      
  """
  @type cost_types() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_budget_response() :: %{}
      
  """
  @type update_budget_response() :: %{}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "ResourceTags" => list(resource_tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_adjust_data() :: %{
        "AutoAdjustType" => list(any()),
        "HistoricalOptions" => historical_options(),
        "LastAutoAdjustTime" => non_neg_integer()
      }
      
  """
  @type auto_adjust_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notification_with_subscribers() :: %{
        "Notification" => notification(),
        "Subscribers" => list(subscriber()())
      }
      
  """
  @type notification_with_subscribers() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subscriber() :: %{
        "Address" => String.t(),
        "SubscriptionType" => list(any())
      }
      
  """
  @type subscriber() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_budget_action_request() :: %{
        optional("ResourceTags") => list(resource_tag()()),
        required("AccountId") => String.t(),
        required("ActionThreshold") => action_threshold(),
        required("ActionType") => list(any()),
        required("ApprovalModel") => list(any()),
        required("BudgetName") => String.t(),
        required("Definition") => definition(),
        required("ExecutionRoleArn") => String.t(),
        required("NotificationType") => list(any()),
        required("Subscribers") => list(subscriber()())
      }
      
  """
  @type create_budget_action_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_notifications_for_budget_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("AccountId") => String.t(),
        required("BudgetName") => String.t()
      }
      
  """
  @type describe_notifications_for_budget_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_budget_action_request() :: %{
        required("AccountId") => String.t(),
        required("ActionId") => String.t(),
        required("BudgetName") => String.t()
      }
      
  """
  @type describe_budget_action_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_budget_request() :: %{
        required("AccountId") => String.t(),
        required("BudgetName") => String.t()
      }
      
  """
  @type describe_budget_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_notification_request() :: %{
        required("AccountId") => String.t(),
        required("BudgetName") => String.t(),
        required("NewNotification") => notification(),
        required("OldNotification") => notification()
      }
      
  """
  @type update_notification_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_tag() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type resource_tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_budget_actions_for_account_response() :: %{
        "Actions" => list(action()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_budget_actions_for_account_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      action() :: %{
        "ActionId" => String.t(),
        "ActionThreshold" => action_threshold(),
        "ActionType" => list(any()),
        "ApprovalModel" => list(any()),
        "BudgetName" => String.t(),
        "Definition" => definition(),
        "ExecutionRoleArn" => String.t(),
        "NotificationType" => list(any()),
        "Status" => list(any()),
        "Subscribers" => list(subscriber()())
      }
      
  """
  @type action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      budget() :: %{
        "AutoAdjustData" => auto_adjust_data(),
        "BudgetLimit" => spend(),
        "BudgetName" => String.t(),
        "BudgetType" => list(any()),
        "CalculatedSpend" => calculated_spend(),
        "CostFilters" => map(),
        "CostTypes" => cost_types(),
        "LastUpdatedTime" => non_neg_integer(),
        "PlannedBudgetLimits" => map(),
        "TimePeriod" => time_period(),
        "TimeUnit" => list(any())
      }
      
  """
  @type budget() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      historical_options() :: %{
        "BudgetAdjustmentPeriod" => integer(),
        "LookBackAvailablePeriods" => integer()
      }
      
  """
  @type historical_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_budget_request() :: %{
        optional("NotificationsWithSubscribers") => list(notification_with_subscribers()()),
        optional("ResourceTags") => list(resource_tag()()),
        required("AccountId") => String.t(),
        required("Budget") => budget()
      }
      
  """
  @type create_budget_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execute_budget_action_request() :: %{
        required("AccountId") => String.t(),
        required("ActionId") => String.t(),
        required("BudgetName") => String.t(),
        required("ExecutionType") => list(any())
      }
      
  """
  @type execute_budget_action_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_notification_response() :: %{}
      
  """
  @type delete_notification_response() :: %{}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceARN") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_budget_response() :: %{
        "Budget" => budget()
      }
      
  """
  @type describe_budget_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_locked_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_locked_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_notifications_for_budget_response() :: %{
        "NextToken" => String.t(),
        "Notifications" => list(notification()())
      }
      
  """
  @type describe_notifications_for_budget_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_budget_action_response() :: %{
        "AccountId" => String.t(),
        "ActionId" => String.t(),
        "BudgetName" => String.t()
      }
      
  """
  @type create_budget_action_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      definition() :: %{
        "IamActionDefinition" => iam_action_definition(),
        "ScpActionDefinition" => scp_action_definition(),
        "SsmActionDefinition" => ssm_action_definition()
      }
      
  """
  @type definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      budgeted_and_actual_amounts() :: %{
        "ActualAmount" => spend(),
        "BudgetedAmount" => spend(),
        "TimePeriod" => time_period()
      }
      
  """
  @type budgeted_and_actual_amounts() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_budget_action_response() :: %{
        "AccountId" => String.t(),
        "BudgetName" => String.t(),
        "NewAction" => action(),
        "OldAction" => action()
      }
      
  """
  @type update_budget_action_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notification() :: %{
        "ComparisonOperator" => list(any()),
        "NotificationState" => list(any()),
        "NotificationType" => list(any()),
        "Threshold" => float(),
        "ThresholdType" => list(any())
      }
      
  """
  @type notification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      budget_performance_history() :: %{
        "BudgetName" => String.t(),
        "BudgetType" => list(any()),
        "BudgetedAndActualAmountsList" => list(budgeted_and_actual_amounts()()),
        "CostFilters" => map(),
        "CostTypes" => cost_types(),
        "TimeUnit" => list(any())
      }
      
  """
  @type budget_performance_history() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_budget_action_response() :: %{
        "AccountId" => String.t(),
        "Action" => action(),
        "BudgetName" => String.t()
      }
      
  """
  @type describe_budget_action_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_budget_request() :: %{
        required("AccountId") => String.t(),
        required("BudgetName") => String.t()
      }
      
  """
  @type delete_budget_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_subscriber_request() :: %{
        required("AccountId") => String.t(),
        required("BudgetName") => String.t(),
        required("Notification") => notification(),
        required("Subscriber") => subscriber()
      }
      
  """
  @type create_subscriber_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      iam_action_definition() :: %{
        "Groups" => list(String.t()()),
        "PolicyArn" => String.t(),
        "Roles" => list(String.t()()),
        "Users" => list(String.t()())
      }
      
  """
  @type iam_action_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_notification_request() :: %{
        required("AccountId") => String.t(),
        required("BudgetName") => String.t(),
        required("Notification") => notification()
      }
      
  """
  @type delete_notification_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      duplicate_record_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type duplicate_record_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      budget_notifications_for_account() :: %{
        "BudgetName" => String.t(),
        "Notifications" => list(notification()())
      }
      
  """
  @type budget_notifications_for_account() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_notification_response() :: %{}
      
  """
  @type update_notification_response() :: %{}

  @typedoc """

  ## Example:
      
      create_notification_request() :: %{
        required("AccountId") => String.t(),
        required("BudgetName") => String.t(),
        required("Notification") => notification(),
        required("Subscribers") => list(subscriber()())
      }
      
  """
  @type create_notification_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      spend() :: %{
        "Amount" => String.t(),
        "Unit" => String.t()
      }
      
  """
  @type spend() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_budget_performance_history_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("TimePeriod") => time_period(),
        required("AccountId") => String.t(),
        required("BudgetName") => String.t()
      }
      
  """
  @type describe_budget_performance_history_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      creation_limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type creation_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      action_history_details() :: %{
        "Action" => action(),
        "Message" => String.t()
      }
      
  """
  @type action_history_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_subscribers_for_notification_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("AccountId") => String.t(),
        required("BudgetName") => String.t(),
        required("Notification") => notification()
      }
      
  """
  @type describe_subscribers_for_notification_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_error_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_error_exception() :: %{String.t() => any()}

  @type create_budget_errors() ::
          internal_error_exception()
          | creation_limit_exceeded_exception()
          | duplicate_record_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()

  @type create_budget_action_errors() ::
          internal_error_exception()
          | creation_limit_exceeded_exception()
          | duplicate_record_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()
          | service_quota_exceeded_exception()

  @type create_notification_errors() ::
          internal_error_exception()
          | creation_limit_exceeded_exception()
          | duplicate_record_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()

  @type create_subscriber_errors() ::
          internal_error_exception()
          | creation_limit_exceeded_exception()
          | duplicate_record_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()

  @type delete_budget_errors() ::
          internal_error_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()

  @type delete_budget_action_errors() ::
          internal_error_exception()
          | throttling_exception()
          | resource_locked_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()

  @type delete_notification_errors() ::
          internal_error_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()

  @type delete_subscriber_errors() ::
          internal_error_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()

  @type describe_budget_errors() ::
          internal_error_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()

  @type describe_budget_action_errors() ::
          internal_error_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()

  @type describe_budget_action_histories_errors() ::
          internal_error_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()
          | invalid_next_token_exception()

  @type describe_budget_actions_for_account_errors() ::
          internal_error_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_next_token_exception()

  @type describe_budget_actions_for_budget_errors() ::
          internal_error_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()
          | invalid_next_token_exception()

  @type describe_budget_notifications_for_account_errors() ::
          internal_error_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()
          | invalid_next_token_exception()
          | expired_next_token_exception()

  @type describe_budget_performance_history_errors() ::
          internal_error_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()
          | invalid_next_token_exception()
          | expired_next_token_exception()

  @type describe_budgets_errors() ::
          internal_error_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()
          | invalid_next_token_exception()
          | expired_next_token_exception()

  @type describe_notifications_for_budget_errors() ::
          internal_error_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()
          | invalid_next_token_exception()
          | expired_next_token_exception()

  @type describe_subscribers_for_notification_errors() ::
          internal_error_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()
          | invalid_next_token_exception()
          | expired_next_token_exception()

  @type execute_budget_action_errors() ::
          internal_error_exception()
          | throttling_exception()
          | resource_locked_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()

  @type list_tags_for_resource_errors() ::
          internal_error_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()

  @type tag_resource_errors() ::
          internal_error_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()
          | service_quota_exceeded_exception()

  @type untag_resource_errors() ::
          internal_error_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()

  @type update_budget_errors() ::
          internal_error_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()

  @type update_budget_action_errors() ::
          internal_error_exception()
          | throttling_exception()
          | resource_locked_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()

  @type update_notification_errors() ::
          internal_error_exception()
          | duplicate_record_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()

  @type update_subscriber_errors() ::
          internal_error_exception()
          | duplicate_record_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()

  def metadata do
    %{
      api_version: "2016-10-20",
      content_type: "application/x-amz-json-1.1",
      credential_scope: "us-east-1",
      endpoint_prefix: "budgets",
      global?: true,
      hostname: "budgets.amazonaws.com",
      protocol: "json",
      service_id: "Budgets",
      signature_version: "v4",
      signing_name: "budgets",
      target_prefix: "AWSBudgetServiceGateway"
    }
  end

  @doc """
   
  Creates a budget and, if included, notifications and subscribers.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=budgets%20CreateBudget&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_budget_request`)
    %{
      optional("NotificationsWithSubscribers") => list(notification_with_subscribers()()),
      optional("ResourceTags") => list(resource_tag()()),
      required("AccountId") => String.t(),
      required("Budget") => budget()
    }
  """
  @spec create_budget(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_budget_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_budget_errors()}
  def create_budget(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateBudget", input, options)
  end

  @doc """
   
  Creates a budget action.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=budgets%20CreateBudgetAction&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_budget_action_request`)
    %{
      optional("ResourceTags") => list(resource_tag()()),
      required("AccountId") => String.t(),
      required("ActionThreshold") => action_threshold(),
      required("ActionType") => list(any()),
      required("ApprovalModel") => list(any()),
      required("BudgetName") => String.t(),
      required("Definition") => definition(),
      required("ExecutionRoleArn") => String.t(),
      required("NotificationType") => list(any()),
      required("Subscribers") => list(subscriber()())
    }
  """
  @spec create_budget_action(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_budget_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_budget_action_errors()}
  def create_budget_action(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateBudgetAction", input, options)
  end

  @doc """
   
  Creates a notification. You must create the budget before you create the
  associated notification.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=budgets%20CreateNotification&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_notification_request`)
    %{
      required("AccountId") => String.t(),
      required("BudgetName") => String.t(),
      required("Notification") => notification(),
      required("Subscribers") => list(subscriber()())
    }
  """
  @spec create_notification(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_notification_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_notification_errors()}
  def create_notification(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateNotification", input, options)
  end

  @doc """
   
  Creates a subscriber. You must create the associated budget and notification
  before you create the subscriber.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=budgets%20CreateSubscriber&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_subscriber_request`)
    %{
      required("AccountId") => String.t(),
      required("BudgetName") => String.t(),
      required("Notification") => notification(),
      required("Subscriber") => subscriber()
    }
  """
  @spec create_subscriber(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_subscriber_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_subscriber_errors()}
  def create_subscriber(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateSubscriber", input, options)
  end

  @doc """
   
  Deletes a budget. You can delete your budget at any time.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=budgets%20DeleteBudget&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_budget_request`)
    %{
      required("AccountId") => String.t(),
      required("BudgetName") => String.t()
    }
  """
  @spec delete_budget(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_budget_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_budget_errors()}
  def delete_budget(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteBudget", input, options)
  end

  @doc """
   
  Deletes a budget action.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=budgets%20DeleteBudgetAction&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_budget_action_request`)
    %{
      required("AccountId") => String.t(),
      required("ActionId") => String.t(),
      required("BudgetName") => String.t()
    }
  """
  @spec delete_budget_action(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_budget_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_budget_action_errors()}
  def delete_budget_action(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteBudgetAction", input, options)
  end

  @doc """
   
  Deletes a notification.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=budgets%20DeleteNotification&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_notification_request`)
    %{
      required("AccountId") => String.t(),
      required("BudgetName") => String.t(),
      required("Notification") => notification()
    }
  """
  @spec delete_notification(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_notification_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_notification_errors()}
  def delete_notification(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteNotification", input, options)
  end

  @doc """
   
  Deletes a subscriber.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=budgets%20DeleteSubscriber&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_subscriber_request`)
    %{
      required("AccountId") => String.t(),
      required("BudgetName") => String.t(),
      required("Notification") => notification(),
      required("Subscriber") => subscriber()
    }
  """
  @spec delete_subscriber(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_subscriber_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_subscriber_errors()}
  def delete_subscriber(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteSubscriber", input, options)
  end

  @doc """
   
  Describes a budget.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=budgets%20DescribeBudget&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_budget_request`)
    %{
      required("AccountId") => String.t(),
      required("BudgetName") => String.t()
    }
  """
  @spec describe_budget(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_budget_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_budget_errors()}
  def describe_budget(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeBudget", input, options)
  end

  @doc """
   
  Describes a budget action detail.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=budgets%20DescribeBudgetAction&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_budget_action_request`)
    %{
      required("AccountId") => String.t(),
      required("ActionId") => String.t(),
      required("BudgetName") => String.t()
    }
  """
  @spec describe_budget_action(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_budget_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_budget_action_errors()}
  def describe_budget_action(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeBudgetAction", input, options)
  end

  @doc """
   
  Describes a budget action history detail.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=budgets%20DescribeBudgetActionHistories&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_budget_action_histories_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("TimePeriod") => time_period(),
      required("AccountId") => String.t(),
      required("ActionId") => String.t(),
      required("BudgetName") => String.t()
    }
  """
  @spec describe_budget_action_histories(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_budget_action_histories_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_budget_action_histories_errors()}
  def describe_budget_action_histories(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeBudgetActionHistories", input, options)
  end

  @doc """
   
  Describes all of the budget actions for an account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=budgets%20DescribeBudgetActionsForAccount&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_budget_actions_for_account_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("AccountId") => String.t()
    }
  """
  @spec describe_budget_actions_for_account(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_budget_actions_for_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_budget_actions_for_account_errors()}
  def describe_budget_actions_for_account(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeBudgetActionsForAccount", input, options)
  end

  @doc """
   
  Describes all of the budget actions for a budget.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=budgets%20DescribeBudgetActionsForBudget&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_budget_actions_for_budget_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("AccountId") => String.t(),
      required("BudgetName") => String.t()
    }
  """
  @spec describe_budget_actions_for_budget(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_budget_actions_for_budget_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_budget_actions_for_budget_errors()}
  def describe_budget_actions_for_budget(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeBudgetActionsForBudget", input, options)
  end

  @doc """
   
  Lists the budget names and notifications that are associated with an account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=budgets%20DescribeBudgetNotificationsForAccount&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_budget_notifications_for_account_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("AccountId") => String.t()
    }
  """
  @spec describe_budget_notifications_for_account(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_budget_notifications_for_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_budget_notifications_for_account_errors()}
  def describe_budget_notifications_for_account(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeBudgetNotificationsForAccount", input, options)
  end

  @doc """
   
  Describes the history for `DAILY`, `MONTHLY`, and `QUARTERLY` budgets. Budget
  history isn't available for `ANNUAL` budgets.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=budgets%20DescribeBudgetPerformanceHistory&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_budget_performance_history_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("TimePeriod") => time_period(),
      required("AccountId") => String.t(),
      required("BudgetName") => String.t()
    }
  """
  @spec describe_budget_performance_history(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_budget_performance_history_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_budget_performance_history_errors()}
  def describe_budget_performance_history(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeBudgetPerformanceHistory", input, options)
  end

  @doc """
   
  Lists the budgets that are associated with an account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=budgets%20DescribeBudgets&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_budgets_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("AccountId") => String.t()
    }
  """
  @spec describe_budgets(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_budgets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_budgets_errors()}
  def describe_budgets(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeBudgets", input, options)
  end

  @doc """
   
  Lists the notifications that are associated with a budget.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=budgets%20DescribeNotificationsForBudget&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_notifications_for_budget_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("AccountId") => String.t(),
      required("BudgetName") => String.t()
    }
  """
  @spec describe_notifications_for_budget(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_notifications_for_budget_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_notifications_for_budget_errors()}
  def describe_notifications_for_budget(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeNotificationsForBudget", input, options)
  end

  @doc """
   
  Lists the subscribers that are associated with a notification.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=budgets%20DescribeSubscribersForNotification&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_subscribers_for_notification_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("AccountId") => String.t(),
      required("BudgetName") => String.t(),
      required("Notification") => notification()
    }
  """
  @spec describe_subscribers_for_notification(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_subscribers_for_notification_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_subscribers_for_notification_errors()}
  def describe_subscribers_for_notification(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeSubscribersForNotification", input, options)
  end

  @doc """
   
  Executes a budget action.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=budgets%20ExecuteBudgetAction&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:execute_budget_action_request`)
    %{
      required("AccountId") => String.t(),
      required("ActionId") => String.t(),
      required("BudgetName") => String.t(),
      required("ExecutionType") => list(any())
    }
  """
  @spec execute_budget_action(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, execute_budget_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, execute_budget_action_errors()}
  def execute_budget_action(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ExecuteBudgetAction", input, options)
  end

  @doc """
   
  Lists tags associated with a budget or budget action resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=budgets%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_tags_for_resource_request`)
    %{
      required("ResourceARN") => String.t()
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
   
  Creates tags for a budget or budget action resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=budgets%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:tag_resource_request`)
    %{
      required("ResourceARN") => String.t(),
      required("ResourceTags") => list(resource_tag()())
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
   
  Deletes tags associated with a budget or budget action resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=budgets%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:untag_resource_request`)
    %{
      required("ResourceARN") => String.t(),
      required("ResourceTagKeys") => list(String.t()())
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

  @doc """
   
  Updates a budget. You can change every part of a budget except for the
  `budgetName` and the `calculatedSpend`. When you modify a budget, the
  `calculatedSpend` drops to zero until Amazon Web Services has new usage data
  to use for forecasting.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=budgets%20UpdateBudget&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_budget_request`)
    %{
      required("AccountId") => String.t(),
      required("NewBudget") => budget()
    }
  """
  @spec update_budget(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_budget_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_budget_errors()}
  def update_budget(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateBudget", input, options)
  end

  @doc """
   
  Updates a budget action.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=budgets%20UpdateBudgetAction&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_budget_action_request`)
    %{
      optional("ActionThreshold") => action_threshold(),
      optional("ApprovalModel") => list(any()),
      optional("Definition") => definition(),
      optional("ExecutionRoleArn") => String.t(),
      optional("NotificationType") => list(any()),
      optional("Subscribers") => list(subscriber()()),
      required("AccountId") => String.t(),
      required("ActionId") => String.t(),
      required("BudgetName") => String.t()
    }
  """
  @spec update_budget_action(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_budget_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_budget_action_errors()}
  def update_budget_action(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateBudgetAction", input, options)
  end

  @doc """
   
  Updates a notification.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=budgets%20UpdateNotification&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_notification_request`)
    %{
      required("AccountId") => String.t(),
      required("BudgetName") => String.t(),
      required("NewNotification") => notification(),
      required("OldNotification") => notification()
    }
  """
  @spec update_notification(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_notification_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_notification_errors()}
  def update_notification(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateNotification", input, options)
  end

  @doc """
   
  Updates a subscriber.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=budgets%20UpdateSubscriber&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_subscriber_request`)
    %{
      required("AccountId") => String.t(),
      required("BudgetName") => String.t(),
      required("NewSubscriber") => subscriber(),
      required("Notification") => notification(),
      required("OldSubscriber") => subscriber()
    }
  """
  @spec update_subscriber(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_subscriber_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_subscriber_errors()}
  def update_subscriber(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateSubscriber", input, options)
  end
end
