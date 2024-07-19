# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SWF do
  @moduledoc """
  Amazon Simple Workflow Service The Amazon Simple Workflow Service (Amazon SWF)
  makes it easy to build applications that use Amazon's cloud to coordinate work
  across distributed components. In Amazon SWF, a *task* represents a logical
  unit of work that is performed by a component of your workflow. Coordinating
  tasks in a workflow involves managing intertask dependencies, scheduling, and
  concurrency in accordance with the logical flow of the application.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      workflow_execution_infos() :: %{
        "executionInfos" => list(workflow_execution_info()()),
        "nextPageToken" => String.t()
      }
      
  """
  @type workflow_execution_infos() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      respond_decision_task_completed_input() :: %{
        optional("decisions") => list(decision()()),
        optional("executionContext") => String.t(),
        optional("taskList") => task_list(),
        optional("taskListScheduleToStartTimeout") => String.t(),
        required("taskToken") => String.t()
      }
      
  """
  @type respond_decision_task_completed_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workflow_type_detail() :: %{
        "configuration" => workflow_type_configuration(),
        "typeInfo" => workflow_type_info()
      }
      
  """
  @type workflow_type_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      timer_canceled_event_attributes() :: %{
        "decisionTaskCompletedEventId" => float(),
        "startedEventId" => float(),
        "timerId" => String.t()
      }
      
  """
  @type timer_canceled_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workflow_execution_cancel_requested_event_attributes() :: %{
        "cause" => list(any()),
        "externalInitiatedEventId" => float(),
        "externalWorkflowExecution" => workflow_execution()
      }
      
  """
  @type workflow_execution_cancel_requested_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activity_task_status() :: %{
        "cancelRequested" => boolean()
      }
      
  """
  @type activity_task_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      undeprecate_workflow_type_input() :: %{
        required("domain") => String.t(),
        required("workflowType") => workflow_type()
      }
      
  """
  @type undeprecate_workflow_type_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activity_task_scheduled_event_attributes() :: %{
        "activityId" => String.t(),
        "activityType" => activity_type(),
        "control" => String.t(),
        "decisionTaskCompletedEventId" => float(),
        "heartbeatTimeout" => String.t(),
        "input" => String.t(),
        "scheduleToCloseTimeout" => String.t(),
        "scheduleToStartTimeout" => String.t(),
        "startToCloseTimeout" => String.t(),
        "taskList" => task_list(),
        "taskPriority" => String.t()
      }
      
  """
  @type activity_task_scheduled_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      count_closed_workflow_executions_input() :: %{
        optional("closeStatusFilter") => close_status_filter(),
        optional("closeTimeFilter") => execution_time_filter(),
        optional("executionFilter") => workflow_execution_filter(),
        optional("startTimeFilter") => execution_time_filter(),
        optional("tagFilter") => tag_filter(),
        optional("typeFilter") => workflow_type_filter(),
        required("domain") => String.t()
      }
      
  """
  @type count_closed_workflow_executions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activity_type_configuration() :: %{
        "defaultTaskHeartbeatTimeout" => String.t(),
        "defaultTaskList" => task_list(),
        "defaultTaskPriority" => String.t(),
        "defaultTaskScheduleToCloseTimeout" => String.t(),
        "defaultTaskScheduleToStartTimeout" => String.t(),
        "defaultTaskStartToCloseTimeout" => String.t()
      }
      
  """
  @type activity_type_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lambda_function_completed_event_attributes() :: %{
        "result" => String.t(),
        "scheduledEventId" => float(),
        "startedEventId" => float()
      }
      
  """
  @type lambda_function_completed_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_child_workflow_execution_decision_attributes() :: %{
        "childPolicy" => list(any()),
        "control" => String.t(),
        "executionStartToCloseTimeout" => String.t(),
        "input" => String.t(),
        "lambdaRole" => String.t(),
        "tagList" => list(String.t()()),
        "taskList" => task_list(),
        "taskPriority" => String.t(),
        "taskStartToCloseTimeout" => String.t(),
        "workflowId" => String.t(),
        "workflowType" => workflow_type()
      }
      
  """
  @type start_child_workflow_execution_decision_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workflow_execution_timed_out_event_attributes() :: %{
        "childPolicy" => list(any()),
        "timeoutType" => list(any())
      }
      
  """
  @type workflow_execution_timed_out_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      poll_for_decision_task_input() :: %{
        optional("identity") => String.t(),
        optional("maximumPageSize") => integer(),
        optional("nextPageToken") => String.t(),
        optional("reverseOrder") => boolean(),
        optional("startAtPreviousStartedEvent") => boolean(),
        required("domain") => String.t(),
        required("taskList") => task_list()
      }
      
  """
  @type poll_for_decision_task_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_workflow_execution_input() :: %{
        required("domain") => String.t(),
        required("execution") => workflow_execution()
      }
      
  """
  @type describe_workflow_execution_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      close_status_filter() :: %{
        "status" => list(any())
      }
      
  """
  @type close_status_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      child_workflow_execution_canceled_event_attributes() :: %{
        "details" => String.t(),
        "initiatedEventId" => float(),
        "startedEventId" => float(),
        "workflowExecution" => workflow_execution(),
        "workflowType" => workflow_type()
      }
      
  """
  @type child_workflow_execution_canceled_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_activity_type_input() :: %{
        optional("defaultTaskHeartbeatTimeout") => String.t(),
        optional("defaultTaskList") => task_list(),
        optional("defaultTaskPriority") => String.t(),
        optional("defaultTaskScheduleToCloseTimeout") => String.t(),
        optional("defaultTaskScheduleToStartTimeout") => String.t(),
        optional("defaultTaskStartToCloseTimeout") => String.t(),
        optional("description") => String.t(),
        required("domain") => String.t(),
        required("name") => String.t(),
        required("version") => String.t()
      }
      
  """
  @type register_activity_type_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workflow_execution_count() :: %{
        "count" => integer(),
        "truncated" => boolean()
      }
      
  """
  @type workflow_execution_count() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workflow_execution_started_event_attributes() :: %{
        "childPolicy" => list(any()),
        "continuedExecutionRunId" => String.t(),
        "executionStartToCloseTimeout" => String.t(),
        "input" => String.t(),
        "lambdaRole" => String.t(),
        "parentInitiatedEventId" => float(),
        "parentWorkflowExecution" => workflow_execution(),
        "tagList" => list(String.t()()),
        "taskList" => task_list(),
        "taskPriority" => String.t(),
        "taskStartToCloseTimeout" => String.t(),
        "workflowType" => workflow_type()
      }
      
  """
  @type workflow_execution_started_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type limit_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workflow_type_filter() :: %{
        "name" => String.t(),
        "version" => String.t()
      }
      
  """
  @type workflow_type_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      request_cancel_activity_task_decision_attributes() :: %{
        "activityId" => String.t()
      }
      
  """
  @type request_cancel_activity_task_decision_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_workflow_execution_decision_attributes() :: %{
        "details" => String.t()
      }
      
  """
  @type cancel_workflow_execution_decision_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      complete_workflow_execution_decision_attributes() :: %{
        "result" => String.t()
      }
      
  """
  @type complete_workflow_execution_decision_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      external_workflow_execution_signaled_event_attributes() :: %{
        "initiatedEventId" => float(),
        "workflowExecution" => workflow_execution()
      }
      
  """
  @type external_workflow_execution_signaled_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      child_workflow_execution_completed_event_attributes() :: %{
        "initiatedEventId" => float(),
        "result" => String.t(),
        "startedEventId" => float(),
        "workflowExecution" => workflow_execution(),
        "workflowType" => workflow_type()
      }
      
  """
  @type child_workflow_execution_completed_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      decision_task_timed_out_event_attributes() :: %{
        "scheduledEventId" => float(),
        "startedEventId" => float(),
        "timeoutType" => list(any())
      }
      
  """
  @type decision_task_timed_out_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workflow_execution_canceled_event_attributes() :: %{
        "decisionTaskCompletedEventId" => float(),
        "details" => String.t()
      }
      
  """
  @type workflow_execution_canceled_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workflow_execution_configuration() :: %{
        "childPolicy" => list(any()),
        "executionStartToCloseTimeout" => String.t(),
        "lambdaRole" => String.t(),
        "taskList" => task_list(),
        "taskPriority" => String.t(),
        "taskStartToCloseTimeout" => String.t()
      }
      
  """
  @type workflow_execution_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workflow_type_infos() :: %{
        "nextPageToken" => String.t(),
        "typeInfos" => list(workflow_type_info()())
      }
      
  """
  @type workflow_type_infos() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workflow_execution_already_started_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type workflow_execution_already_started_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_workflow_types_input() :: %{
        optional("maximumPageSize") => integer(),
        optional("name") => String.t(),
        optional("nextPageToken") => String.t(),
        optional("reverseOrder") => boolean(),
        required("domain") => String.t(),
        required("registrationStatus") => list(any())
      }
      
  """
  @type list_workflow_types_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activity_task_canceled_event_attributes() :: %{
        "details" => String.t(),
        "latestCancelRequestedEventId" => float(),
        "scheduledEventId" => float(),
        "startedEventId" => float()
      }
      
  """
  @type activity_task_canceled_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_output() :: %{
        "tags" => list(resource_tag()())
      }
      
  """
  @type list_tags_for_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      schedule_lambda_function_failed_event_attributes() :: %{
        "cause" => list(any()),
        "decisionTaskCompletedEventId" => float(),
        "id" => String.t(),
        "name" => String.t()
      }
      
  """
  @type schedule_lambda_function_failed_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      respond_activity_task_failed_input() :: %{
        optional("details") => String.t(),
        optional("reason") => String.t(),
        required("taskToken") => String.t()
      }
      
  """
  @type respond_activity_task_failed_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execution_time_filter() :: %{
        "latestDate" => non_neg_integer(),
        "oldestDate" => non_neg_integer()
      }
      
  """
  @type execution_time_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_timer_failed_event_attributes() :: %{
        "cause" => list(any()),
        "decisionTaskCompletedEventId" => float(),
        "timerId" => String.t()
      }
      
  """
  @type cancel_timer_failed_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_timer_decision_attributes() :: %{
        "control" => String.t(),
        "startToFireTimeout" => String.t(),
        "timerId" => String.t()
      }
      
  """
  @type start_timer_decision_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      type_not_deprecated_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type type_not_deprecated_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workflow_type_configuration() :: %{
        "defaultChildPolicy" => list(any()),
        "defaultExecutionStartToCloseTimeout" => String.t(),
        "defaultLambdaRole" => String.t(),
        "defaultTaskList" => task_list(),
        "defaultTaskPriority" => String.t(),
        "defaultTaskStartToCloseTimeout" => String.t()
      }
      
  """
  @type workflow_type_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_domain_input() :: %{
        optional("description") => String.t(),
        optional("tags") => list(resource_tag()()),
        required("name") => String.t(),
        required("workflowExecutionRetentionPeriodInDays") => String.t()
      }
      
  """
  @type register_domain_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      undeprecate_domain_input() :: %{
        required("name") => String.t()
      }
      
  """
  @type undeprecate_domain_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      poll_for_activity_task_input() :: %{
        optional("identity") => String.t(),
        required("domain") => String.t(),
        required("taskList") => task_list()
      }
      
  """
  @type poll_for_activity_task_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lambda_function_scheduled_event_attributes() :: %{
        "control" => String.t(),
        "decisionTaskCompletedEventId" => float(),
        "id" => String.t(),
        "input" => String.t(),
        "name" => String.t(),
        "startToCloseTimeout" => String.t()
      }
      
  """
  @type lambda_function_scheduled_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      request_cancel_external_workflow_execution_decision_attributes() :: %{
        "control" => String.t(),
        "runId" => String.t(),
        "workflowId" => String.t()
      }
      
  """
  @type request_cancel_external_workflow_execution_decision_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      continue_as_new_workflow_execution_decision_attributes() :: %{
        "childPolicy" => list(any()),
        "executionStartToCloseTimeout" => String.t(),
        "input" => String.t(),
        "lambdaRole" => String.t(),
        "tagList" => list(String.t()()),
        "taskList" => task_list(),
        "taskPriority" => String.t(),
        "taskStartToCloseTimeout" => String.t(),
        "workflowTypeVersion" => String.t()
      }
      
  """
  @type continue_as_new_workflow_execution_decision_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lambda_function_timed_out_event_attributes() :: %{
        "scheduledEventId" => float(),
        "startedEventId" => float(),
        "timeoutType" => list(any())
      }
      
  """
  @type lambda_function_timed_out_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      record_activity_task_heartbeat_input() :: %{
        optional("details") => String.t(),
        required("taskToken") => String.t()
      }
      
  """
  @type record_activity_task_heartbeat_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      terminate_workflow_execution_input() :: %{
        optional("childPolicy") => list(any()),
        optional("details") => String.t(),
        optional("reason") => String.t(),
        optional("runId") => String.t(),
        required("domain") => String.t(),
        required("workflowId") => String.t()
      }
      
  """
  @type terminate_workflow_execution_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      respond_activity_task_completed_input() :: %{
        optional("result") => String.t(),
        required("taskToken") => String.t()
      }
      
  """
  @type respond_activity_task_completed_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_open_workflow_executions_input() :: %{
        optional("executionFilter") => workflow_execution_filter(),
        optional("maximumPageSize") => integer(),
        optional("nextPageToken") => String.t(),
        optional("reverseOrder") => boolean(),
        optional("tagFilter") => tag_filter(),
        optional("typeFilter") => workflow_type_filter(),
        required("domain") => String.t(),
        required("startTimeFilter") => execution_time_filter()
      }
      
  """
  @type list_open_workflow_executions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workflow_execution() :: %{
        "runId" => String.t(),
        "workflowId" => String.t()
      }
      
  """
  @type workflow_execution() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deprecate_domain_input() :: %{
        required("name") => String.t()
      }
      
  """
  @type deprecate_domain_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_workflow_type_input() :: %{
        optional("defaultChildPolicy") => list(any()),
        optional("defaultExecutionStartToCloseTimeout") => String.t(),
        optional("defaultLambdaRole") => String.t(),
        optional("defaultTaskList") => task_list(),
        optional("defaultTaskPriority") => String.t(),
        optional("defaultTaskStartToCloseTimeout") => String.t(),
        optional("description") => String.t(),
        required("domain") => String.t(),
        required("name") => String.t(),
        required("version") => String.t()
      }
      
  """
  @type register_workflow_type_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      decision() :: %{
        "cancelTimerDecisionAttributes" => cancel_timer_decision_attributes(),
        "cancelWorkflowExecutionDecisionAttributes" => cancel_workflow_execution_decision_attributes(),
        "completeWorkflowExecutionDecisionAttributes" => complete_workflow_execution_decision_attributes(),
        "continueAsNewWorkflowExecutionDecisionAttributes" => continue_as_new_workflow_execution_decision_attributes(),
        "decisionType" => list(any()),
        "failWorkflowExecutionDecisionAttributes" => fail_workflow_execution_decision_attributes(),
        "recordMarkerDecisionAttributes" => record_marker_decision_attributes(),
        "requestCancelActivityTaskDecisionAttributes" => request_cancel_activity_task_decision_attributes(),
        "requestCancelExternalWorkflowExecutionDecisionAttributes" => request_cancel_external_workflow_execution_decision_attributes(),
        "scheduleActivityTaskDecisionAttributes" => schedule_activity_task_decision_attributes(),
        "scheduleLambdaFunctionDecisionAttributes" => schedule_lambda_function_decision_attributes(),
        "signalExternalWorkflowExecutionDecisionAttributes" => signal_external_workflow_execution_decision_attributes(),
        "startChildWorkflowExecutionDecisionAttributes" => start_child_workflow_execution_decision_attributes(),
        "startTimerDecisionAttributes" => start_timer_decision_attributes()
      }
      
  """
  @type decision() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workflow_type_info() :: %{
        "creationDate" => non_neg_integer(),
        "deprecationDate" => non_neg_integer(),
        "description" => String.t(),
        "status" => list(any()),
        "workflowType" => workflow_type()
      }
      
  """
  @type workflow_type_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lambda_function_started_event_attributes() :: %{
        "scheduledEventId" => float()
      }
      
  """
  @type lambda_function_started_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      child_workflow_execution_failed_event_attributes() :: %{
        "details" => String.t(),
        "initiatedEventId" => float(),
        "reason" => String.t(),
        "startedEventId" => float(),
        "workflowExecution" => workflow_execution(),
        "workflowType" => workflow_type()
      }
      
  """
  @type child_workflow_execution_failed_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      decision_task_started_event_attributes() :: %{
        "identity" => String.t(),
        "scheduledEventId" => float()
      }
      
  """
  @type decision_task_started_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pending_task_count() :: %{
        "count" => integer(),
        "truncated" => boolean()
      }
      
  """
  @type pending_task_count() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_closed_workflow_executions_input() :: %{
        optional("closeStatusFilter") => close_status_filter(),
        optional("closeTimeFilter") => execution_time_filter(),
        optional("executionFilter") => workflow_execution_filter(),
        optional("maximumPageSize") => integer(),
        optional("nextPageToken") => String.t(),
        optional("reverseOrder") => boolean(),
        optional("startTimeFilter") => execution_time_filter(),
        optional("tagFilter") => tag_filter(),
        optional("typeFilter") => workflow_type_filter(),
        required("domain") => String.t()
      }
      
  """
  @type list_closed_workflow_executions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      decision_task_completed_event_attributes() :: %{
        "executionContext" => String.t(),
        "scheduledEventId" => float(),
        "startedEventId" => float(),
        "taskList" => task_list(),
        "taskListScheduleToStartTimeout" => String.t()
      }
      
  """
  @type decision_task_completed_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      signal_external_workflow_execution_initiated_event_attributes() :: %{
        "control" => String.t(),
        "decisionTaskCompletedEventId" => float(),
        "input" => String.t(),
        "runId" => String.t(),
        "signalName" => String.t(),
        "workflowId" => String.t()
      }
      
  """
  @type signal_external_workflow_execution_initiated_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      record_marker_decision_attributes() :: %{
        "details" => String.t(),
        "markerName" => String.t()
      }
      
  """
  @type record_marker_decision_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workflow_execution_terminated_event_attributes() :: %{
        "cause" => list(any()),
        "childPolicy" => list(any()),
        "details" => String.t(),
        "reason" => String.t()
      }
      
  """
  @type workflow_execution_terminated_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_workflow_execution_input() :: %{
        optional("childPolicy") => list(any()),
        optional("executionStartToCloseTimeout") => String.t(),
        optional("input") => String.t(),
        optional("lambdaRole") => String.t(),
        optional("tagList") => list(String.t()()),
        optional("taskList") => task_list(),
        optional("taskPriority") => String.t(),
        optional("taskStartToCloseTimeout") => String.t(),
        required("domain") => String.t(),
        required("workflowId") => String.t(),
        required("workflowType") => workflow_type()
      }
      
  """
  @type start_workflow_execution_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activity_task_timed_out_event_attributes() :: %{
        "details" => String.t(),
        "scheduledEventId" => float(),
        "startedEventId" => float(),
        "timeoutType" => list(any())
      }
      
  """
  @type activity_task_timed_out_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      continue_as_new_workflow_execution_failed_event_attributes() :: %{
        "cause" => list(any()),
        "decisionTaskCompletedEventId" => float()
      }
      
  """
  @type continue_as_new_workflow_execution_failed_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      fail_workflow_execution_decision_attributes() :: %{
        "details" => String.t(),
        "reason" => String.t()
      }
      
  """
  @type fail_workflow_execution_decision_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      complete_workflow_execution_failed_event_attributes() :: %{
        "cause" => list(any()),
        "decisionTaskCompletedEventId" => float()
      }
      
  """
  @type complete_workflow_execution_failed_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      task_list() :: %{
        "name" => String.t()
      }
      
  """
  @type task_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deprecate_activity_type_input() :: %{
        required("activityType") => activity_type(),
        required("domain") => String.t()
      }
      
  """
  @type deprecate_activity_type_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_timer_decision_attributes() :: %{
        "timerId" => String.t()
      }
      
  """
  @type cancel_timer_decision_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      decision_task() :: %{
        "events" => list(history_event()()),
        "nextPageToken" => String.t(),
        "previousStartedEventId" => float(),
        "startedEventId" => float(),
        "taskToken" => String.t(),
        "workflowExecution" => workflow_execution(),
        "workflowType" => workflow_type()
      }
      
  """
  @type decision_task() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      child_workflow_execution_timed_out_event_attributes() :: %{
        "initiatedEventId" => float(),
        "startedEventId" => float(),
        "timeoutType" => list(any()),
        "workflowExecution" => workflow_execution(),
        "workflowType" => workflow_type()
      }
      
  """
  @type child_workflow_execution_timed_out_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      fail_workflow_execution_failed_event_attributes() :: %{
        "cause" => list(any()),
        "decisionTaskCompletedEventId" => float()
      }
      
  """
  @type fail_workflow_execution_failed_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      schedule_activity_task_decision_attributes() :: %{
        "activityId" => String.t(),
        "activityType" => activity_type(),
        "control" => String.t(),
        "heartbeatTimeout" => String.t(),
        "input" => String.t(),
        "scheduleToCloseTimeout" => String.t(),
        "scheduleToStartTimeout" => String.t(),
        "startToCloseTimeout" => String.t(),
        "taskList" => task_list(),
        "taskPriority" => String.t()
      }
      
  """
  @type schedule_activity_task_decision_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      signal_external_workflow_execution_failed_event_attributes() :: %{
        "cause" => list(any()),
        "control" => String.t(),
        "decisionTaskCompletedEventId" => float(),
        "initiatedEventId" => float(),
        "runId" => String.t(),
        "workflowId" => String.t()
      }
      
  """
  @type signal_external_workflow_execution_failed_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      type_deprecated_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type type_deprecated_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      request_cancel_activity_task_failed_event_attributes() :: %{
        "activityId" => String.t(),
        "cause" => list(any()),
        "decisionTaskCompletedEventId" => float()
      }
      
  """
  @type request_cancel_activity_task_failed_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      schedule_activity_task_failed_event_attributes() :: %{
        "activityId" => String.t(),
        "activityType" => activity_type(),
        "cause" => list(any()),
        "decisionTaskCompletedEventId" => float()
      }
      
  """
  @type schedule_activity_task_failed_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workflow_execution_detail() :: %{
        "executionConfiguration" => workflow_execution_configuration(),
        "executionInfo" => workflow_execution_info(),
        "latestActivityTaskTimestamp" => non_neg_integer(),
        "latestExecutionContext" => String.t(),
        "openCounts" => workflow_execution_open_counts()
      }
      
  """
  @type workflow_execution_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workflow_execution_failed_event_attributes() :: %{
        "decisionTaskCompletedEventId" => float(),
        "details" => String.t(),
        "reason" => String.t()
      }
      
  """
  @type workflow_execution_failed_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      count_open_workflow_executions_input() :: %{
        optional("executionFilter") => workflow_execution_filter(),
        optional("tagFilter") => tag_filter(),
        optional("typeFilter") => workflow_type_filter(),
        required("domain") => String.t(),
        required("startTimeFilter") => execution_time_filter()
      }
      
  """
  @type count_open_workflow_executions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_input() :: %{
        required("resourceArn") => String.t(),
        required("tags") => list(resource_tag()())
      }
      
  """
  @type tag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workflow_type() :: %{
        "name" => String.t(),
        "version" => String.t()
      }
      
  """
  @type workflow_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workflow_execution_info() :: %{
        "cancelRequested" => boolean(),
        "closeStatus" => list(any()),
        "closeTimestamp" => non_neg_integer(),
        "execution" => workflow_execution(),
        "executionStatus" => list(any()),
        "parent" => workflow_execution(),
        "startTimestamp" => non_neg_integer(),
        "tagList" => list(String.t()()),
        "workflowType" => workflow_type()
      }
      
  """
  @type workflow_execution_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activity_task() :: %{
        "activityId" => String.t(),
        "activityType" => activity_type(),
        "input" => String.t(),
        "startedEventId" => float(),
        "taskToken" => String.t(),
        "workflowExecution" => workflow_execution()
      }
      
  """
  @type activity_task() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      history_event() :: %{
        "signalExternalWorkflowExecutionFailedEventAttributes" => signal_external_workflow_execution_failed_event_attributes(),
        "workflowExecutionFailedEventAttributes" => workflow_execution_failed_event_attributes(),
        "workflowExecutionSignaledEventAttributes" => workflow_execution_signaled_event_attributes(),
        "workflowExecutionCancelRequestedEventAttributes" => workflow_execution_cancel_requested_event_attributes(),
        "scheduleActivityTaskFailedEventAttributes" => schedule_activity_task_failed_event_attributes(),
        "cancelWorkflowExecutionFailedEventAttributes" => cancel_workflow_execution_failed_event_attributes(),
        "childWorkflowExecutionCompletedEventAttributes" => child_workflow_execution_completed_event_attributes(),
        "workflowExecutionTimedOutEventAttributes" => workflow_execution_timed_out_event_attributes(),
        "startChildWorkflowExecutionInitiatedEventAttributes" => start_child_workflow_execution_initiated_event_attributes(),
        "markerRecordedEventAttributes" => marker_recorded_event_attributes(),
        "workflowExecutionStartedEventAttributes" => workflow_execution_started_event_attributes(),
        "lambdaFunctionScheduledEventAttributes" => lambda_function_scheduled_event_attributes(),
        "eventTimestamp" => non_neg_integer(),
        "decisionTaskScheduledEventAttributes" => decision_task_scheduled_event_attributes(),
        "requestCancelExternalWorkflowExecutionInitiatedEventAttributes" => request_cancel_external_workflow_execution_initiated_event_attributes(),
        "timerFiredEventAttributes" => timer_fired_event_attributes(),
        "childWorkflowExecutionStartedEventAttributes" => child_workflow_execution_started_event_attributes(),
        "decisionTaskStartedEventAttributes" => decision_task_started_event_attributes(),
        "lambdaFunctionFailedEventAttributes" => lambda_function_failed_event_attributes(),
        "startLambdaFunctionFailedEventAttributes" => start_lambda_function_failed_event_attributes(),
        "activityTaskScheduledEventAttributes" => activity_task_scheduled_event_attributes(),
        "activityTaskTimedOutEventAttributes" => activity_task_timed_out_event_attributes(),
        "activityTaskStartedEventAttributes" => activity_task_started_event_attributes(),
        "requestCancelActivityTaskFailedEventAttributes" => request_cancel_activity_task_failed_event_attributes(),
        "signalExternalWorkflowExecutionInitiatedEventAttributes" => signal_external_workflow_execution_initiated_event_attributes(),
        "externalWorkflowExecutionCancelRequestedEventAttributes" => external_workflow_execution_cancel_requested_event_attributes(),
        "requestCancelExternalWorkflowExecutionFailedEventAttributes" => request_cancel_external_workflow_execution_failed_event_attributes(),
        "lambdaFunctionTimedOutEventAttributes" => lambda_function_timed_out_event_attributes(),
        "childWorkflowExecutionTerminatedEventAttributes" => child_workflow_execution_terminated_event_attributes(),
        "lambdaFunctionCompletedEventAttributes" => lambda_function_completed_event_attributes(),
        "childWorkflowExecutionTimedOutEventAttributes" => child_workflow_execution_timed_out_event_attributes(),
        "activityTaskCanceledEventAttributes" => activity_task_canceled_event_attributes(),
        "externalWorkflowExecutionSignaledEventAttributes" => external_workflow_execution_signaled_event_attributes(),
        "decisionTaskTimedOutEventAttributes" => decision_task_timed_out_event_attributes(),
        "failWorkflowExecutionFailedEventAttributes" => fail_workflow_execution_failed_event_attributes(),
        "recordMarkerFailedEventAttributes" => record_marker_failed_event_attributes(),
        "startChildWorkflowExecutionFailedEventAttributes" => start_child_workflow_execution_failed_event_attributes(),
        "activityTaskFailedEventAttributes" => activity_task_failed_event_attributes(),
        "eventId" => float(),
        "workflowExecutionContinuedAsNewEventAttributes" => workflow_execution_continued_as_new_event_attributes(),
        "continueAsNewWorkflowExecutionFailedEventAttributes" => continue_as_new_workflow_execution_failed_event_attributes(),
        "eventType" => list(any()),
        "workflowExecutionCanceledEventAttributes" => workflow_execution_canceled_event_attributes(),
        "lambdaFunctionStartedEventAttributes" => lambda_function_started_event_attributes(),
        "childWorkflowExecutionFailedEventAttributes" => child_workflow_execution_failed_event_attributes(),
        "decisionTaskCompletedEventAttributes" => decision_task_completed_event_attributes(),
        "activityTaskCompletedEventAttributes" => activity_task_completed_event_attributes(),
        "activityTaskCancelRequestedEventAttributes" => activity_task_cancel_requested_event_attributes(),
        "completeWorkflowExecutionFailedEventAttributes" => complete_workflow_execution_failed_event_attributes(),
        "workflowExecutionCompletedEventAttributes" => workflow_execution_completed_event_attributes(),
        "workflowExecutionTerminatedEventAttributes" => workflow_execution_terminated_event_attributes(),
        "timerStartedEventAttributes" => timer_started_event_attributes(),
        "timerCanceledEventAttributes" => timer_canceled_event_attributes(),
        "startTimerFailedEventAttributes" => start_timer_failed_event_attributes(),
        "childWorkflowExecutionCanceledEventAttributes" => child_workflow_execution_canceled_event_attributes(),
        "cancelTimerFailedEventAttributes" => cancel_timer_failed_event_attributes(),
        "scheduleLambdaFunctionFailedEventAttributes" => schedule_lambda_function_failed_event_attributes()
      }
      
  """
  @type history_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      domain_configuration() :: %{
        "workflowExecutionRetentionPeriodInDays" => String.t()
      }
      
  """
  @type domain_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      schedule_lambda_function_decision_attributes() :: %{
        "control" => String.t(),
        "id" => String.t(),
        "input" => String.t(),
        "name" => String.t(),
        "startToCloseTimeout" => String.t()
      }
      
  """
  @type schedule_lambda_function_decision_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      request_cancel_workflow_execution_input() :: %{
        optional("runId") => String.t(),
        required("domain") => String.t(),
        required("workflowId") => String.t()
      }
      
  """
  @type request_cancel_workflow_execution_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_timer_failed_event_attributes() :: %{
        "cause" => list(any()),
        "decisionTaskCompletedEventId" => float(),
        "timerId" => String.t()
      }
      
  """
  @type start_timer_failed_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      domain_info() :: %{
        "arn" => String.t(),
        "description" => String.t(),
        "name" => String.t(),
        "status" => list(any())
      }
      
  """
  @type domain_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      timer_fired_event_attributes() :: %{
        "startedEventId" => float(),
        "timerId" => String.t()
      }
      
  """
  @type timer_fired_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      respond_activity_task_canceled_input() :: %{
        optional("details") => String.t(),
        required("taskToken") => String.t()
      }
      
  """
  @type respond_activity_task_canceled_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_activity_types_input() :: %{
        optional("maximumPageSize") => integer(),
        optional("name") => String.t(),
        optional("nextPageToken") => String.t(),
        optional("reverseOrder") => boolean(),
        required("domain") => String.t(),
        required("registrationStatus") => list(any())
      }
      
  """
  @type list_activity_types_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      domain_detail() :: %{
        "configuration" => domain_configuration(),
        "domainInfo" => domain_info()
      }
      
  """
  @type domain_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unknown_resource_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type unknown_resource_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_tag() :: %{
        "key" => String.t(),
        "value" => String.t()
      }
      
  """
  @type resource_tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activity_type() :: %{
        "name" => String.t(),
        "version" => String.t()
      }
      
  """
  @type activity_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activity_type_infos() :: %{
        "nextPageToken" => String.t(),
        "typeInfos" => list(activity_type_info()())
      }
      
  """
  @type activity_type_infos() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_tags_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type too_many_tags_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lambda_function_failed_event_attributes() :: %{
        "details" => String.t(),
        "reason" => String.t(),
        "scheduledEventId" => float(),
        "startedEventId" => float()
      }
      
  """
  @type lambda_function_failed_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      domain_infos() :: %{
        "domainInfos" => list(domain_info()()),
        "nextPageToken" => String.t()
      }
      
  """
  @type domain_infos() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workflow_execution_filter() :: %{
        "workflowId" => String.t()
      }
      
  """
  @type workflow_execution_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workflow_execution_completed_event_attributes() :: %{
        "decisionTaskCompletedEventId" => float(),
        "result" => String.t()
      }
      
  """
  @type workflow_execution_completed_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      signal_workflow_execution_input() :: %{
        optional("input") => String.t(),
        optional("runId") => String.t(),
        required("domain") => String.t(),
        required("signalName") => String.t(),
        required("workflowId") => String.t()
      }
      
  """
  @type signal_workflow_execution_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      request_cancel_external_workflow_execution_failed_event_attributes() :: %{
        "cause" => list(any()),
        "control" => String.t(),
        "decisionTaskCompletedEventId" => float(),
        "initiatedEventId" => float(),
        "runId" => String.t(),
        "workflowId" => String.t()
      }
      
  """
  @type request_cancel_external_workflow_execution_failed_event_attributes() :: %{
          String.t() => any()
        }

  @typedoc """

  ## Example:
      
      operation_not_permitted_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type operation_not_permitted_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_input() :: %{
        required("resourceArn") => String.t(),
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_domain_input() :: %{
        required("name") => String.t()
      }
      
  """
  @type describe_domain_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activity_type_info() :: %{
        "activityType" => activity_type(),
        "creationDate" => non_neg_integer(),
        "deprecationDate" => non_neg_integer(),
        "description" => String.t(),
        "status" => list(any())
      }
      
  """
  @type activity_type_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      request_cancel_external_workflow_execution_initiated_event_attributes() :: %{
        "control" => String.t(),
        "decisionTaskCompletedEventId" => float(),
        "runId" => String.t(),
        "workflowId" => String.t()
      }
      
  """
  @type request_cancel_external_workflow_execution_initiated_event_attributes() :: %{
          String.t() => any()
        }

  @typedoc """

  ## Example:
      
      list_tags_for_resource_input() :: %{
        required("resourceArn") => String.t()
      }
      
  """
  @type list_tags_for_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      external_workflow_execution_cancel_requested_event_attributes() :: %{
        "initiatedEventId" => float(),
        "workflowExecution" => workflow_execution()
      }
      
  """
  @type external_workflow_execution_cancel_requested_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      child_workflow_execution_terminated_event_attributes() :: %{
        "initiatedEventId" => float(),
        "startedEventId" => float(),
        "workflowExecution" => workflow_execution(),
        "workflowType" => workflow_type()
      }
      
  """
  @type child_workflow_execution_terminated_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      domain_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type domain_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activity_task_completed_event_attributes() :: %{
        "result" => String.t(),
        "scheduledEventId" => float(),
        "startedEventId" => float()
      }
      
  """
  @type activity_task_completed_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      decision_task_scheduled_event_attributes() :: %{
        "scheduleToStartTimeout" => String.t(),
        "startToCloseTimeout" => String.t(),
        "taskList" => task_list(),
        "taskPriority" => String.t()
      }
      
  """
  @type decision_task_scheduled_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      count_pending_decision_tasks_input() :: %{
        required("domain") => String.t(),
        required("taskList") => task_list()
      }
      
  """
  @type count_pending_decision_tasks_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activity_task_started_event_attributes() :: %{
        "identity" => String.t(),
        "scheduledEventId" => float()
      }
      
  """
  @type activity_task_started_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_child_workflow_execution_failed_event_attributes() :: %{
        "cause" => list(any()),
        "control" => String.t(),
        "decisionTaskCompletedEventId" => float(),
        "initiatedEventId" => float(),
        "workflowId" => String.t(),
        "workflowType" => workflow_type()
      }
      
  """
  @type start_child_workflow_execution_failed_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      count_pending_activity_tasks_input() :: %{
        required("domain") => String.t(),
        required("taskList") => task_list()
      }
      
  """
  @type count_pending_activity_tasks_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      undeprecate_activity_type_input() :: %{
        required("activityType") => activity_type(),
        required("domain") => String.t()
      }
      
  """
  @type undeprecate_activity_type_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      timer_started_event_attributes() :: %{
        "control" => String.t(),
        "decisionTaskCompletedEventId" => float(),
        "startToFireTimeout" => String.t(),
        "timerId" => String.t()
      }
      
  """
  @type timer_started_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activity_task_cancel_requested_event_attributes() :: %{
        "activityId" => String.t(),
        "decisionTaskCompletedEventId" => float()
      }
      
  """
  @type activity_task_cancel_requested_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workflow_execution_open_counts() :: %{
        "openActivityTasks" => integer(),
        "openChildWorkflowExecutions" => integer(),
        "openDecisionTasks" => integer(),
        "openLambdaFunctions" => integer(),
        "openTimers" => integer()
      }
      
  """
  @type workflow_execution_open_counts() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_activity_type_input() :: %{
        required("activityType") => activity_type(),
        required("domain") => String.t()
      }
      
  """
  @type describe_activity_type_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workflow_execution_continued_as_new_event_attributes() :: %{
        "childPolicy" => list(any()),
        "decisionTaskCompletedEventId" => float(),
        "executionStartToCloseTimeout" => String.t(),
        "input" => String.t(),
        "lambdaRole" => String.t(),
        "newExecutionRunId" => String.t(),
        "tagList" => list(String.t()()),
        "taskList" => task_list(),
        "taskPriority" => String.t(),
        "taskStartToCloseTimeout" => String.t(),
        "workflowType" => workflow_type()
      }
      
  """
  @type workflow_execution_continued_as_new_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      marker_recorded_event_attributes() :: %{
        "decisionTaskCompletedEventId" => float(),
        "details" => String.t(),
        "markerName" => String.t()
      }
      
  """
  @type marker_recorded_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      record_marker_failed_event_attributes() :: %{
        "cause" => list(any()),
        "decisionTaskCompletedEventId" => float(),
        "markerName" => String.t()
      }
      
  """
  @type record_marker_failed_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_lambda_function_failed_event_attributes() :: %{
        "cause" => list(any()),
        "message" => String.t(),
        "scheduledEventId" => float()
      }
      
  """
  @type start_lambda_function_failed_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      history() :: %{
        "events" => list(history_event()()),
        "nextPageToken" => String.t()
      }
      
  """
  @type history() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activity_type_detail() :: %{
        "configuration" => activity_type_configuration(),
        "typeInfo" => activity_type_info()
      }
      
  """
  @type activity_type_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deprecate_workflow_type_input() :: %{
        required("domain") => String.t(),
        required("workflowType") => workflow_type()
      }
      
  """
  @type deprecate_workflow_type_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_child_workflow_execution_initiated_event_attributes() :: %{
        "childPolicy" => list(any()),
        "control" => String.t(),
        "decisionTaskCompletedEventId" => float(),
        "executionStartToCloseTimeout" => String.t(),
        "input" => String.t(),
        "lambdaRole" => String.t(),
        "tagList" => list(String.t()()),
        "taskList" => task_list(),
        "taskPriority" => String.t(),
        "taskStartToCloseTimeout" => String.t(),
        "workflowId" => String.t(),
        "workflowType" => workflow_type()
      }
      
  """
  @type start_child_workflow_execution_initiated_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      type_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type type_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_filter() :: %{
        "tag" => String.t()
      }
      
  """
  @type tag_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_workflow_execution_failed_event_attributes() :: %{
        "cause" => list(any()),
        "decisionTaskCompletedEventId" => float()
      }
      
  """
  @type cancel_workflow_execution_failed_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_workflow_execution_history_input() :: %{
        optional("maximumPageSize") => integer(),
        optional("nextPageToken") => String.t(),
        optional("reverseOrder") => boolean(),
        required("domain") => String.t(),
        required("execution") => workflow_execution()
      }
      
  """
  @type get_workflow_execution_history_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_domains_input() :: %{
        optional("maximumPageSize") => integer(),
        optional("nextPageToken") => String.t(),
        optional("reverseOrder") => boolean(),
        required("registrationStatus") => list(any())
      }
      
  """
  @type list_domains_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      signal_external_workflow_execution_decision_attributes() :: %{
        "control" => String.t(),
        "input" => String.t(),
        "runId" => String.t(),
        "signalName" => String.t(),
        "workflowId" => String.t()
      }
      
  """
  @type signal_external_workflow_execution_decision_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workflow_execution_signaled_event_attributes() :: %{
        "externalInitiatedEventId" => float(),
        "externalWorkflowExecution" => workflow_execution(),
        "input" => String.t(),
        "signalName" => String.t()
      }
      
  """
  @type workflow_execution_signaled_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      domain_deprecated_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type domain_deprecated_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_workflow_type_input() :: %{
        required("domain") => String.t(),
        required("workflowType") => workflow_type()
      }
      
  """
  @type delete_workflow_type_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_workflow_type_input() :: %{
        required("domain") => String.t(),
        required("workflowType") => workflow_type()
      }
      
  """
  @type describe_workflow_type_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      default_undefined_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type default_undefined_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activity_task_failed_event_attributes() :: %{
        "details" => String.t(),
        "reason" => String.t(),
        "scheduledEventId" => float(),
        "startedEventId" => float()
      }
      
  """
  @type activity_task_failed_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      run() :: %{
        "runId" => String.t()
      }
      
  """
  @type run() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      child_workflow_execution_started_event_attributes() :: %{
        "initiatedEventId" => float(),
        "workflowExecution" => workflow_execution(),
        "workflowType" => workflow_type()
      }
      
  """
  @type child_workflow_execution_started_event_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_activity_type_input() :: %{
        required("activityType") => activity_type(),
        required("domain") => String.t()
      }
      
  """
  @type delete_activity_type_input() :: %{String.t() => any()}

  @type count_closed_workflow_executions_errors() ::
          operation_not_permitted_fault() | unknown_resource_fault()

  @type count_open_workflow_executions_errors() ::
          operation_not_permitted_fault() | unknown_resource_fault()

  @type count_pending_activity_tasks_errors() ::
          operation_not_permitted_fault() | unknown_resource_fault()

  @type count_pending_decision_tasks_errors() ::
          operation_not_permitted_fault() | unknown_resource_fault()

  @type delete_activity_type_errors() ::
          operation_not_permitted_fault() | unknown_resource_fault() | type_not_deprecated_fault()

  @type delete_workflow_type_errors() ::
          operation_not_permitted_fault() | unknown_resource_fault() | type_not_deprecated_fault()

  @type deprecate_activity_type_errors() ::
          operation_not_permitted_fault() | unknown_resource_fault() | type_deprecated_fault()

  @type deprecate_domain_errors() ::
          domain_deprecated_fault() | operation_not_permitted_fault() | unknown_resource_fault()

  @type deprecate_workflow_type_errors() ::
          operation_not_permitted_fault() | unknown_resource_fault() | type_deprecated_fault()

  @type describe_activity_type_errors() ::
          operation_not_permitted_fault() | unknown_resource_fault()

  @type describe_domain_errors() :: operation_not_permitted_fault() | unknown_resource_fault()

  @type describe_workflow_execution_errors() ::
          operation_not_permitted_fault() | unknown_resource_fault()

  @type describe_workflow_type_errors() ::
          operation_not_permitted_fault() | unknown_resource_fault()

  @type get_workflow_execution_history_errors() ::
          operation_not_permitted_fault() | unknown_resource_fault()

  @type list_activity_types_errors() :: operation_not_permitted_fault() | unknown_resource_fault()

  @type list_closed_workflow_executions_errors() ::
          operation_not_permitted_fault() | unknown_resource_fault()

  @type list_domains_errors() :: operation_not_permitted_fault()

  @type list_open_workflow_executions_errors() ::
          operation_not_permitted_fault() | unknown_resource_fault()

  @type list_tags_for_resource_errors() ::
          operation_not_permitted_fault() | unknown_resource_fault() | limit_exceeded_fault()

  @type list_workflow_types_errors() :: operation_not_permitted_fault() | unknown_resource_fault()

  @type poll_for_activity_task_errors() ::
          operation_not_permitted_fault() | unknown_resource_fault() | limit_exceeded_fault()

  @type poll_for_decision_task_errors() ::
          operation_not_permitted_fault() | unknown_resource_fault() | limit_exceeded_fault()

  @type record_activity_task_heartbeat_errors() ::
          operation_not_permitted_fault() | unknown_resource_fault()

  @type register_activity_type_errors() ::
          type_already_exists_fault()
          | operation_not_permitted_fault()
          | unknown_resource_fault()
          | limit_exceeded_fault()

  @type register_domain_errors() ::
          domain_already_exists_fault()
          | operation_not_permitted_fault()
          | too_many_tags_fault()
          | limit_exceeded_fault()

  @type register_workflow_type_errors() ::
          type_already_exists_fault()
          | operation_not_permitted_fault()
          | unknown_resource_fault()
          | limit_exceeded_fault()

  @type request_cancel_workflow_execution_errors() ::
          operation_not_permitted_fault() | unknown_resource_fault()

  @type respond_activity_task_canceled_errors() ::
          operation_not_permitted_fault() | unknown_resource_fault()

  @type respond_activity_task_completed_errors() ::
          operation_not_permitted_fault() | unknown_resource_fault()

  @type respond_activity_task_failed_errors() ::
          operation_not_permitted_fault() | unknown_resource_fault()

  @type respond_decision_task_completed_errors() ::
          operation_not_permitted_fault() | unknown_resource_fault()

  @type signal_workflow_execution_errors() ::
          operation_not_permitted_fault() | unknown_resource_fault()

  @type start_workflow_execution_errors() ::
          default_undefined_fault()
          | operation_not_permitted_fault()
          | unknown_resource_fault()
          | type_deprecated_fault()
          | workflow_execution_already_started_fault()
          | limit_exceeded_fault()

  @type tag_resource_errors() ::
          operation_not_permitted_fault()
          | too_many_tags_fault()
          | unknown_resource_fault()
          | limit_exceeded_fault()

  @type terminate_workflow_execution_errors() ::
          operation_not_permitted_fault() | unknown_resource_fault()

  @type undeprecate_activity_type_errors() ::
          type_already_exists_fault() | operation_not_permitted_fault() | unknown_resource_fault()

  @type undeprecate_domain_errors() ::
          domain_already_exists_fault()
          | operation_not_permitted_fault()
          | unknown_resource_fault()

  @type undeprecate_workflow_type_errors() ::
          type_already_exists_fault() | operation_not_permitted_fault() | unknown_resource_fault()

  @type untag_resource_errors() ::
          operation_not_permitted_fault() | unknown_resource_fault() | limit_exceeded_fault()

  def metadata do
    %{
      api_version: "2012-01-25",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "swf",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "SWF",
      signature_version: "v4",
      signing_name: "swf",
      target_prefix: "SimpleWorkflowService"
    }
  end

  @doc """
  Returns the number of closed workflow executions within the given domain that
  meet the specified filtering criteria. This operation is eventually
  consistent. The results are best effort and may not exactly reflect recent
  updates and changes.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=swf%20CountClosedWorkflowExecutions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:count_closed_workflow_executions_input`)
    %{
      optional("closeStatusFilter") => close_status_filter(),
      optional("closeTimeFilter") => execution_time_filter(),
      optional("executionFilter") => workflow_execution_filter(),
      optional("startTimeFilter") => execution_time_filter(),
      optional("tagFilter") => tag_filter(),
      optional("typeFilter") => workflow_type_filter(),
      required("domain") => String.t()
    }
  """

  @spec count_closed_workflow_executions(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, workflow_execution_count(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, count_closed_workflow_executions_errors()}

  def count_closed_workflow_executions(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CountClosedWorkflowExecutions", input, options)
  end

  @doc """
  Returns the number of open workflow executions within the given domain that meet
  the specified filtering criteria. This operation is eventually consistent. The
  results are best effort and may not exactly reflect recent updates and
  changes.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=swf%20CountOpenWorkflowExecutions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:count_open_workflow_executions_input`)
    %{
      optional("executionFilter") => workflow_execution_filter(),
      optional("tagFilter") => tag_filter(),
      optional("typeFilter") => workflow_type_filter(),
      required("domain") => String.t(),
      required("startTimeFilter") => execution_time_filter()
    }
  """

  @spec count_open_workflow_executions(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, workflow_execution_count(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, count_open_workflow_executions_errors()}

  def count_open_workflow_executions(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CountOpenWorkflowExecutions", input, options)
  end

  @doc """
  Returns the estimated number of activity tasks in the specified task list. The
  count returned is an approximation and isn't guaranteed to be exact. If you
  specify a task list that no activity task was ever scheduled in then `0` is
  returned. **Access Control**

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=swf%20CountPendingActivityTasks&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:count_pending_activity_tasks_input`)
    %{
      required("domain") => String.t(),
      required("taskList") => task_list()
    }
  """

  @spec count_pending_activity_tasks(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, pending_task_count(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, count_pending_activity_tasks_errors()}

  def count_pending_activity_tasks(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CountPendingActivityTasks", input, options)
  end

  @doc """
  Returns the estimated number of decision tasks in the specified task list. The
  count returned is an approximation and isn't guaranteed to be exact. If you
  specify a task list that no decision task was ever scheduled in then `0` is
  returned. **Access Control**

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=swf%20CountPendingDecisionTasks&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:count_pending_decision_tasks_input`)
    %{
      required("domain") => String.t(),
      required("taskList") => task_list()
    }
  """

  @spec count_pending_decision_tasks(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, pending_task_count(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, count_pending_decision_tasks_errors()}

  def count_pending_decision_tasks(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CountPendingDecisionTasks", input, options)
  end

  @doc """
  Deletes the specified *activity type*. Note: Prior to deletion, activity types
  must first be **deprecated**.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=swf%20DeleteActivityType&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_activity_type_input`)
    %{
      required("activityType") => activity_type(),
      required("domain") => String.t()
    }
  """

  @spec delete_activity_type(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_activity_type_errors()}

  def delete_activity_type(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteActivityType", input, options)
  end

  @doc """
  Deletes the specified *workflow type*. Note: Prior to deletion, workflow types
  must first be **deprecated**.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=swf%20DeleteWorkflowType&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_workflow_type_input`)
    %{
      required("domain") => String.t(),
      required("workflowType") => workflow_type()
    }
  """

  @spec delete_workflow_type(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_workflow_type_errors()}

  def delete_workflow_type(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteWorkflowType", input, options)
  end

  @doc """
  Deprecates the specified *activity type*. After an activity type has been
  deprecated, you cannot create new tasks of that activity type. Tasks of this
  type that were scheduled before the type was deprecated continue to run.
  **Access Control**

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=swf%20DeprecateActivityType&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:deprecate_activity_type_input`)
    %{
      required("activityType") => activity_type(),
      required("domain") => String.t()
    }
  """

  @spec deprecate_activity_type(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deprecate_activity_type_errors()}

  def deprecate_activity_type(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeprecateActivityType", input, options)
  end

  @doc """
  Deprecates the specified domain. After a domain has been deprecated it cannot be
  used to create new workflow executions or register new types. However, you can
  still use visibility actions on this domain. Deprecating a domain also
  deprecates all activity and workflow types registered in the domain.
  Executions that were started before the domain was deprecated continues to
  run. This operation is eventually consistent. The results are best effort and
  may not exactly reflect recent updates and changes.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=swf%20DeprecateDomain&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:deprecate_domain_input`)
    %{
      required("name") => String.t()
    }
  """

  @spec deprecate_domain(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deprecate_domain_errors()}

  def deprecate_domain(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeprecateDomain", input, options)
  end

  @doc """
  Deprecates the specified *workflow type*. After a workflow type has been
  deprecated, you cannot create new executions of that type. Executions that
  were started before the type was deprecated continues to run. A deprecated
  workflow type may still be used when calling visibility actions. This
  operation is eventually consistent. The results are best effort and may not
  exactly reflect recent updates and changes.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=swf%20DeprecateWorkflowType&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:deprecate_workflow_type_input`)
    %{
      required("domain") => String.t(),
      required("workflowType") => workflow_type()
    }
  """

  @spec deprecate_workflow_type(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deprecate_workflow_type_errors()}

  def deprecate_workflow_type(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeprecateWorkflowType", input, options)
  end

  @doc """
  Returns information about the specified activity type. This includes
  configuration settings provided when the type was registered and other general
  information about the type. **Access Control**

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=swf%20DescribeActivityType&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_activity_type_input`)
    %{
      required("activityType") => activity_type(),
      required("domain") => String.t()
    }
  """

  @spec describe_activity_type(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, activity_type_detail(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_activity_type_errors()}

  def describe_activity_type(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeActivityType", input, options)
  end

  @doc """
  Returns information about the specified domain, including description and
  status. **Access Control**

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=swf%20DescribeDomain&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_domain_input`)
    %{
      required("name") => String.t()
    }
  """

  @spec describe_domain(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, domain_detail(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_domain_errors()}

  def describe_domain(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeDomain", input, options)
  end

  @doc """
  Returns information about the specified workflow execution including its type
  and some statistics. This operation is eventually consistent. The results are
  best effort and may not exactly reflect recent updates and changes.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=swf%20DescribeWorkflowExecution&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_workflow_execution_input`)
    %{
      required("domain") => String.t(),
      required("execution") => workflow_execution()
    }
  """

  @spec describe_workflow_execution(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, workflow_execution_detail(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_workflow_execution_errors()}

  def describe_workflow_execution(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeWorkflowExecution", input, options)
  end

  @doc """
  Returns information about the specified *workflow type*. This includes
  configuration settings specified when the type was registered and other
  information such as creation date, current status, etc. **Access Control**

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=swf%20DescribeWorkflowType&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_workflow_type_input`)
    %{
      required("domain") => String.t(),
      required("workflowType") => workflow_type()
    }
  """

  @spec describe_workflow_type(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, workflow_type_detail(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_workflow_type_errors()}

  def describe_workflow_type(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeWorkflowType", input, options)
  end

  @doc """
  Returns the history of the specified workflow execution. The results may be
  split into multiple pages. To retrieve subsequent pages, make the call again
  using the `nextPageToken` returned by the initial call. This operation is
  eventually consistent. The results are best effort and may not exactly reflect
  recent updates and changes.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=swf%20GetWorkflowExecutionHistory&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_workflow_execution_history_input`)
    %{
      optional("maximumPageSize") => integer(),
      optional("nextPageToken") => String.t(),
      optional("reverseOrder") => boolean(),
      required("domain") => String.t(),
      required("execution") => workflow_execution()
    }
  """

  @spec get_workflow_execution_history(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, history(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_workflow_execution_history_errors()}

  def get_workflow_execution_history(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetWorkflowExecutionHistory", input, options)
  end

  @doc """
  Returns information about all activities registered in the specified domain that
  match the specified name and registration status. The result includes
  information like creation date, current status of the activity, etc. The
  results may be split into multiple pages. To retrieve subsequent pages, make
  the call again using the `nextPageToken` returned by the initial call.
  **Access Control**

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=swf%20ListActivityTypes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_activity_types_input`)
    %{
      optional("maximumPageSize") => integer(),
      optional("name") => String.t(),
      optional("nextPageToken") => String.t(),
      optional("reverseOrder") => boolean(),
      required("domain") => String.t(),
      required("registrationStatus") => list(any())
    }
  """

  @spec list_activity_types(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, activity_type_infos(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_activity_types_errors()}

  def list_activity_types(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListActivityTypes", input, options)
  end

  @doc """
  Returns a list of closed workflow executions in the specified domain that meet
  the filtering criteria. The results may be split into multiple pages. To
  retrieve subsequent pages, make the call again using the nextPageToken
  returned by the initial call. This operation is eventually consistent. The
  results are best effort and may not exactly reflect recent updates and
  changes.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=swf%20ListClosedWorkflowExecutions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_closed_workflow_executions_input`)
    %{
      optional("closeStatusFilter") => close_status_filter(),
      optional("closeTimeFilter") => execution_time_filter(),
      optional("executionFilter") => workflow_execution_filter(),
      optional("maximumPageSize") => integer(),
      optional("nextPageToken") => String.t(),
      optional("reverseOrder") => boolean(),
      optional("startTimeFilter") => execution_time_filter(),
      optional("tagFilter") => tag_filter(),
      optional("typeFilter") => workflow_type_filter(),
      required("domain") => String.t()
    }
  """

  @spec list_closed_workflow_executions(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, workflow_execution_infos(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_closed_workflow_executions_errors()}

  def list_closed_workflow_executions(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListClosedWorkflowExecutions", input, options)
  end

  @doc """
  Returns the list of domains registered in the account. The results may be split
  into multiple pages. To retrieve subsequent pages, make the call again using
  the nextPageToken returned by the initial call. This operation is eventually
  consistent. The results are best effort and may not exactly reflect recent
  updates and changes.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=swf%20ListDomains&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_domains_input`)
    %{
      optional("maximumPageSize") => integer(),
      optional("nextPageToken") => String.t(),
      optional("reverseOrder") => boolean(),
      required("registrationStatus") => list(any())
    }
  """

  @spec list_domains(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, domain_infos(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_domains_errors()}

  def list_domains(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListDomains", input, options)
  end

  @doc """
  Returns a list of open workflow executions in the specified domain that meet the
  filtering criteria. The results may be split into multiple pages. To retrieve
  subsequent pages, make the call again using the nextPageToken returned by the
  initial call. This operation is eventually consistent. The results are best
  effort and may not exactly reflect recent updates and changes.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=swf%20ListOpenWorkflowExecutions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_open_workflow_executions_input`)
    %{
      optional("executionFilter") => workflow_execution_filter(),
      optional("maximumPageSize") => integer(),
      optional("nextPageToken") => String.t(),
      optional("reverseOrder") => boolean(),
      optional("tagFilter") => tag_filter(),
      optional("typeFilter") => workflow_type_filter(),
      required("domain") => String.t(),
      required("startTimeFilter") => execution_time_filter()
    }
  """

  @spec list_open_workflow_executions(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, workflow_execution_infos(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_open_workflow_executions_errors()}

  def list_open_workflow_executions(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListOpenWorkflowExecutions", input, options)
  end

  @doc """
  List tags for a given domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=swf%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_tags_for_resource_input`)
    %{
      required("resourceArn") => String.t()
    }
  """

  @spec list_tags_for_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_tags_for_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}

  def list_tags_for_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Returns information about workflow types in the specified domain. The results
  may be split into multiple pages that can be retrieved by making the call
  repeatedly. **Access Control**

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=swf%20ListWorkflowTypes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_workflow_types_input`)
    %{
      optional("maximumPageSize") => integer(),
      optional("name") => String.t(),
      optional("nextPageToken") => String.t(),
      optional("reverseOrder") => boolean(),
      required("domain") => String.t(),
      required("registrationStatus") => list(any())
    }
  """

  @spec list_workflow_types(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, workflow_type_infos(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_workflow_types_errors()}

  def list_workflow_types(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListWorkflowTypes", input, options)
  end

  @doc """
  Used by workers to get an `ActivityTask` from the specified activity `taskList`.
  This initiates a long poll, where the service holds the HTTP connection open
  and responds as soon as a task becomes available. The maximum time the service
  holds on to the request before responding is 60 seconds. If no task is
  available within 60 seconds, the poll returns an empty result. An empty
  result, in this context, means that an ActivityTask is returned, but that the
  value of taskToken is an empty string. If a task is returned, the worker
  should use its type to identify and process it correctly. Workers should set
  their client side socket timeout to at least 70 seconds (10 seconds higher
  than the maximum time service may hold the poll request).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=swf%20PollForActivityTask&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:poll_for_activity_task_input`)
    %{
      optional("identity") => String.t(),
      required("domain") => String.t(),
      required("taskList") => task_list()
    }
  """

  @spec poll_for_activity_task(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, activity_task(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, poll_for_activity_task_errors()}

  def poll_for_activity_task(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PollForActivityTask", input, options)
  end

  @doc """
  Used by deciders to get a `DecisionTask` from the specified decision `taskList`.
  A decision task may be returned for any open workflow execution that is using
  the specified task list. The task includes a paginated view of the history of
  the workflow execution. The decider should use the workflow type and the
  history to determine how to properly handle the task. This action initiates a
  long poll, where the service holds the HTTP connection open and responds as
  soon a task becomes available. If no decision task is available in the
  specified task list before the timeout of 60 seconds expires, an empty result
  is returned. An empty result, in this context, means that a DecisionTask is
  returned, but that the value of taskToken is an empty string.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=swf%20PollForDecisionTask&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:poll_for_decision_task_input`)
    %{
      optional("identity") => String.t(),
      optional("maximumPageSize") => integer(),
      optional("nextPageToken") => String.t(),
      optional("reverseOrder") => boolean(),
      optional("startAtPreviousStartedEvent") => boolean(),
      required("domain") => String.t(),
      required("taskList") => task_list()
    }
  """

  @spec poll_for_decision_task(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, decision_task(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, poll_for_decision_task_errors()}

  def poll_for_decision_task(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PollForDecisionTask", input, options)
  end

  @doc """
  Used by activity workers to report to the service that the `ActivityTask`
  represented by the specified `taskToken` is still making progress. The worker
  can also specify details of the progress, for example percent complete, using
  the `details` parameter. This action can also be used by the worker as a
  mechanism to check if cancellation is being requested for the activity task.
  If a cancellation is being attempted for the specified task, then the boolean
  `cancelRequested` flag returned by the service is set to `true`. This action
  resets the `taskHeartbeatTimeout` clock. The `taskHeartbeatTimeout` is
  specified in `RegisterActivityType`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=swf%20RecordActivityTaskHeartbeat&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:record_activity_task_heartbeat_input`)
    %{
      optional("details") => String.t(),
      required("taskToken") => String.t()
    }
  """

  @spec record_activity_task_heartbeat(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, activity_task_status(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, record_activity_task_heartbeat_errors()}

  def record_activity_task_heartbeat(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "RecordActivityTaskHeartbeat", input, options)
  end

  @doc """
  Registers a new *activity type* along with its configuration settings in the
  specified domain. A `TypeAlreadyExists` fault is returned if the type already
  exists in the domain. You cannot change any configuration settings of the type
  after its registration, and it must be registered as a new version.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=swf%20RegisterActivityType&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:register_activity_type_input`)
    %{
      optional("defaultTaskHeartbeatTimeout") => String.t(),
      optional("defaultTaskList") => task_list(),
      optional("defaultTaskPriority") => String.t(),
      optional("defaultTaskScheduleToCloseTimeout") => String.t(),
      optional("defaultTaskScheduleToStartTimeout") => String.t(),
      optional("defaultTaskStartToCloseTimeout") => String.t(),
      optional("description") => String.t(),
      required("domain") => String.t(),
      required("name") => String.t(),
      required("version") => String.t()
    }
  """

  @spec register_activity_type(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_activity_type_errors()}

  def register_activity_type(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "RegisterActivityType", input, options)
  end

  @doc """
  Registers a new domain. **Access Control**

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=swf%20RegisterDomain&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:register_domain_input`)
    %{
      optional("description") => String.t(),
      optional("tags") => list(resource_tag()()),
      required("name") => String.t(),
      required("workflowExecutionRetentionPeriodInDays") => String.t()
    }
  """

  @spec register_domain(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_domain_errors()}

  def register_domain(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "RegisterDomain", input, options)
  end

  @doc """
  Registers a new *workflow type* and its configuration settings in the specified
  domain. The retention period for the workflow history is set by the
  `RegisterDomain` action.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=swf%20RegisterWorkflowType&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:register_workflow_type_input`)
    %{
      optional("defaultChildPolicy") => list(any()),
      optional("defaultExecutionStartToCloseTimeout") => String.t(),
      optional("defaultLambdaRole") => String.t(),
      optional("defaultTaskList") => task_list(),
      optional("defaultTaskPriority") => String.t(),
      optional("defaultTaskStartToCloseTimeout") => String.t(),
      optional("description") => String.t(),
      required("domain") => String.t(),
      required("name") => String.t(),
      required("version") => String.t()
    }
  """

  @spec register_workflow_type(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_workflow_type_errors()}

  def register_workflow_type(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "RegisterWorkflowType", input, options)
  end

  @doc """
  Records a `WorkflowExecutionCancelRequested` event in the currently running
  workflow execution identified by the given domain, workflowId, and runId. This
  logically requests the cancellation of the workflow execution as a whole. It
  is up to the decider to take appropriate actions when it receives an execution
  history with this event. If the runId isn't specified, the
  `WorkflowExecutionCancelRequested` event is recorded in the history of the
  current open workflow execution with the specified workflowId in the domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=swf%20RequestCancelWorkflowExecution&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:request_cancel_workflow_execution_input`)
    %{
      optional("runId") => String.t(),
      required("domain") => String.t(),
      required("workflowId") => String.t()
    }
  """

  @spec request_cancel_workflow_execution(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, request_cancel_workflow_execution_errors()}

  def request_cancel_workflow_execution(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "RequestCancelWorkflowExecution", input, options)
  end

  @doc """
  Used by workers to tell the service that the `ActivityTask` identified by the
  `taskToken` was successfully canceled. Additional `details` can be provided
  using the `details` argument. These `details` (if provided) appear in the
  `ActivityTaskCanceled` event added to the workflow history.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=swf%20RespondActivityTaskCanceled&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:respond_activity_task_canceled_input`)
    %{
      optional("details") => String.t(),
      required("taskToken") => String.t()
    }
  """

  @spec respond_activity_task_canceled(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, respond_activity_task_canceled_errors()}

  def respond_activity_task_canceled(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "RespondActivityTaskCanceled", input, options)
  end

  @doc """
  Used by workers to tell the service that the `ActivityTask` identified by the
  `taskToken` completed successfully with a `result` (if provided). The `result`
  appears in the `ActivityTaskCompleted` event in the workflow history. If the
  requested task doesn't complete successfully, use `RespondActivityTaskFailed`
  instead. If the worker finds that the task is canceled through the `canceled`
  flag returned by `RecordActivityTaskHeartbeat`, it should cancel the task,
  clean up and then call `RespondActivityTaskCanceled`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=swf%20RespondActivityTaskCompleted&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:respond_activity_task_completed_input`)
    %{
      optional("result") => String.t(),
      required("taskToken") => String.t()
    }
  """

  @spec respond_activity_task_completed(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, respond_activity_task_completed_errors()}

  def respond_activity_task_completed(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "RespondActivityTaskCompleted", input, options)
  end

  @doc """
  Used by workers to tell the service that the `ActivityTask` identified by the
  `taskToken` has failed with `reason` (if specified). The `reason` and
  `details` appear in the `ActivityTaskFailed` event added to the workflow
  history. A task is considered open from the time that it is scheduled until it
  is closed. Therefore a task is reported as open while a worker is processing
  it. A task is closed after it has been specified in a call to
  `RespondActivityTaskCompleted`, `RespondActivityTaskCanceled`,
  RespondActivityTaskFailed, or the task has [timed
  out](https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-basic.html#swf-dev-timeout-types).
  **Access Control**

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=swf%20RespondActivityTaskFailed&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:respond_activity_task_failed_input`)
    %{
      optional("details") => String.t(),
      optional("reason") => String.t(),
      required("taskToken") => String.t()
    }
  """

  @spec respond_activity_task_failed(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, respond_activity_task_failed_errors()}

  def respond_activity_task_failed(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "RespondActivityTaskFailed", input, options)
  end

  @doc """
  Used by deciders to tell the service that the `DecisionTask` identified by the
  `taskToken` has successfully completed. The `decisions` argument specifies the
  list of decisions made while processing the task. A `DecisionTaskCompleted`
  event is added to the workflow history. The `executionContext` specified is
  attached to the event in the workflow execution history.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=swf%20RespondDecisionTaskCompleted&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:respond_decision_task_completed_input`)
    %{
      optional("decisions") => list(decision()()),
      optional("executionContext") => String.t(),
      optional("taskList") => task_list(),
      optional("taskListScheduleToStartTimeout") => String.t(),
      required("taskToken") => String.t()
    }
  """

  @spec respond_decision_task_completed(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, respond_decision_task_completed_errors()}

  def respond_decision_task_completed(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "RespondDecisionTaskCompleted", input, options)
  end

  @doc """
  Records a `WorkflowExecutionSignaled` event in the workflow execution history
  and creates a decision task for the workflow execution identified by the given
  domain, workflowId and runId. The event is recorded with the specified user
  defined signalName and input (if provided). If a runId isn't specified, then
  the `WorkflowExecutionSignaled` event is recorded in the history of the
  current open workflow with the matching workflowId in the domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=swf%20SignalWorkflowExecution&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:signal_workflow_execution_input`)
    %{
      optional("input") => String.t(),
      optional("runId") => String.t(),
      required("domain") => String.t(),
      required("signalName") => String.t(),
      required("workflowId") => String.t()
    }
  """

  @spec signal_workflow_execution(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, signal_workflow_execution_errors()}

  def signal_workflow_execution(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SignalWorkflowExecution", input, options)
  end

  @doc """
  Starts an execution of the workflow type in the specified domain using the
  provided `workflowId` and input data. This action returns the newly started
  workflow execution.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=swf%20StartWorkflowExecution&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:start_workflow_execution_input`)
    %{
      optional("childPolicy") => list(any()),
      optional("executionStartToCloseTimeout") => String.t(),
      optional("input") => String.t(),
      optional("lambdaRole") => String.t(),
      optional("tagList") => list(String.t()()),
      optional("taskList") => task_list(),
      optional("taskPriority") => String.t(),
      optional("taskStartToCloseTimeout") => String.t(),
      required("domain") => String.t(),
      required("workflowId") => String.t(),
      required("workflowType") => workflow_type()
    }
  """

  @spec start_workflow_execution(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, run(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_workflow_execution_errors()}

  def start_workflow_execution(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartWorkflowExecution", input, options)
  end

  @doc """
  Add a tag to a Amazon SWF domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=swf%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:tag_resource_input`)
    %{
      required("resourceArn") => String.t(),
      required("tags") => list(resource_tag()())
    }
  """

  @spec tag_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}

  def tag_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Records a `WorkflowExecutionTerminated` event and forces closure of the workflow
  execution identified by the given domain, runId, and workflowId. The child
  policy, registered with the workflow type or specified when starting this
  execution, is applied to any open child workflow executions of this workflow
  execution. If the identified workflow execution was in progress, it is
  terminated immediately.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=swf%20TerminateWorkflowExecution&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:terminate_workflow_execution_input`)
    %{
      optional("childPolicy") => list(any()),
      optional("details") => String.t(),
      optional("reason") => String.t(),
      optional("runId") => String.t(),
      required("domain") => String.t(),
      required("workflowId") => String.t()
    }
  """

  @spec terminate_workflow_execution(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, terminate_workflow_execution_errors()}

  def terminate_workflow_execution(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "TerminateWorkflowExecution", input, options)
  end

  @doc """
  Undeprecates a previously deprecated *activity type*. After an activity type has
  been undeprecated, you can create new tasks of that activity type. This
  operation is eventually consistent. The results are best effort and may not
  exactly reflect recent updates and changes.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=swf%20UndeprecateActivityType&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:undeprecate_activity_type_input`)
    %{
      required("activityType") => activity_type(),
      required("domain") => String.t()
    }
  """

  @spec undeprecate_activity_type(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, undeprecate_activity_type_errors()}

  def undeprecate_activity_type(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UndeprecateActivityType", input, options)
  end

  @doc """
  Undeprecates a previously deprecated domain. After a domain has been
  undeprecated it can be used to create new workflow executions or register new
  types. This operation is eventually consistent. The results are best effort
  and may not exactly reflect recent updates and changes.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=swf%20UndeprecateDomain&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:undeprecate_domain_input`)
    %{
      required("name") => String.t()
    }
  """

  @spec undeprecate_domain(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, undeprecate_domain_errors()}

  def undeprecate_domain(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UndeprecateDomain", input, options)
  end

  @doc """
  Undeprecates a previously deprecated *workflow type*. After a workflow type has
  been undeprecated, you can create new executions of that type. This operation
  is eventually consistent. The results are best effort and may not exactly
  reflect recent updates and changes.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=swf%20UndeprecateWorkflowType&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:undeprecate_workflow_type_input`)
    %{
      required("domain") => String.t(),
      required("workflowType") => workflow_type()
    }
  """

  @spec undeprecate_workflow_type(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, undeprecate_workflow_type_errors()}

  def undeprecate_workflow_type(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UndeprecateWorkflowType", input, options)
  end

  @doc """
  Remove a tag from a Amazon SWF domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=swf%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:untag_resource_input`)
    %{
      required("resourceArn") => String.t(),
      required("tagKeys") => list(String.t()())
    }
  """

  @spec untag_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}

  def untag_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end
end
