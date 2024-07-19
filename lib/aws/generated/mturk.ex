# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MTurk do
  @moduledoc """
  Amazon Mechanical Turk API Reference
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      approve_assignment_request() :: %{
        optional("OverrideRejection") => boolean(),
        optional("RequesterFeedback") => String.t(),
        required("AssignmentId") => String.t()
      }
      
  """
  @type approve_assignment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_hit_response() :: %{}
      
  """
  @type delete_hit_response() :: %{}

  @typedoc """

  ## Example:
      
      notify_workers_request() :: %{
        required("MessageText") => String.t(),
        required("Subject") => String.t(),
        required("WorkerIds") => list(String.t()())
      }
      
  """
  @type notify_workers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      qualification_requirement() :: %{
        "ActionsGuarded" => list(any()),
        "Comparator" => list(any()),
        "IntegerValues" => list(integer()()),
        "LocaleValues" => list(locale()()),
        "QualificationTypeId" => String.t(),
        "RequiredToPreview" => boolean()
      }
      
  """
  @type qualification_requirement() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      review_policy() :: %{
        "Parameters" => list(policy_parameter()()),
        "PolicyName" => String.t()
      }
      
  """
  @type review_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_worker_block_request() :: %{
        optional("Reason") => String.t(),
        required("WorkerId") => String.t()
      }
      
  """
  @type delete_worker_block_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_qualification_type_request() :: %{
        required("QualificationTypeId") => String.t()
      }
      
  """
  @type get_qualification_type_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_qualification_type_request() :: %{
        optional("AnswerKey") => String.t(),
        optional("AutoGranted") => boolean(),
        optional("AutoGrantedValue") => integer(),
        optional("Keywords") => String.t(),
        optional("RetryDelayInSeconds") => float(),
        optional("Test") => String.t(),
        optional("TestDurationInSeconds") => float(),
        required("Description") => String.t(),
        required("Name") => String.t(),
        required("QualificationTypeStatus") => list(any())
      }
      
  """
  @type create_qualification_type_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      assignment() :: %{
        "AcceptTime" => non_neg_integer(),
        "Answer" => String.t(),
        "ApprovalTime" => non_neg_integer(),
        "AssignmentId" => String.t(),
        "AssignmentStatus" => list(any()),
        "AutoApprovalTime" => non_neg_integer(),
        "Deadline" => non_neg_integer(),
        "HITId" => String.t(),
        "RejectionTime" => non_neg_integer(),
        "RequesterFeedback" => String.t(),
        "SubmitTime" => non_neg_integer(),
        "WorkerId" => String.t()
      }
      
  """
  @type assignment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reject_assignment_request() :: %{
        required("AssignmentId") => String.t(),
        required("RequesterFeedback") => String.t()
      }
      
  """
  @type reject_assignment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_account_balance_response() :: %{
        "AvailableBalance" => String.t(),
        "OnHoldBalance" => String.t()
      }
      
  """
  @type get_account_balance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_reviewable_hits_request() :: %{
        optional("HITTypeId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Status") => list(any())
      }
      
  """
  @type list_reviewable_hits_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_file_upload_url_response() :: %{
        "FileUploadURL" => String.t()
      }
      
  """
  @type get_file_upload_url_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_qualification_types_request() :: %{
        optional("MaxResults") => integer(),
        optional("MustBeOwnedByCaller") => boolean(),
        optional("NextToken") => String.t(),
        optional("Query") => String.t(),
        required("MustBeRequestable") => boolean()
      }
      
  """
  @type list_qualification_types_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      accept_qualification_request_request() :: %{
        optional("IntegerValue") => integer(),
        required("QualificationRequestId") => String.t()
      }
      
  """
  @type accept_qualification_request_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_hit_type_response() :: %{
        "HITTypeId" => String.t()
      }
      
  """
  @type create_hit_type_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_worker_block_response() :: %{}
      
  """
  @type create_worker_block_response() :: %{}

  @typedoc """

  ## Example:
      
      service_fault() :: %{
        "Message" => String.t(),
        "TurkErrorCode" => String.t()
      }
      
  """
  @type service_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_additional_assignments_for_hit_response() :: %{}
      
  """
  @type create_additional_assignments_for_hit_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_qualification_type_request() :: %{
        required("QualificationTypeId") => String.t()
      }
      
  """
  @type delete_qualification_type_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      locale() :: %{
        "Country" => String.t(),
        "Subdivision" => String.t()
      }
      
  """
  @type locale() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      review_result_detail() :: %{
        "ActionId" => String.t(),
        "Key" => String.t(),
        "QuestionId" => String.t(),
        "SubjectId" => String.t(),
        "SubjectType" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type review_result_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_hits_for_qualification_type_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("QualificationTypeId") => String.t()
      }
      
  """
  @type list_hits_for_qualification_type_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_bonus_response() :: %{}
      
  """
  @type send_bonus_response() :: %{}

  @typedoc """

  ## Example:
      
      get_file_upload_url_request() :: %{
        required("AssignmentId") => String.t(),
        required("QuestionIdentifier") => String.t()
      }
      
  """
  @type get_file_upload_url_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_qualification_score_request() :: %{
        required("QualificationTypeId") => String.t(),
        required("WorkerId") => String.t()
      }
      
  """
  @type get_qualification_score_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_hit_type_of_hit_request() :: %{
        required("HITId") => String.t(),
        required("HITTypeId") => String.t()
      }
      
  """
  @type update_hit_type_of_hit_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      approve_assignment_response() :: %{}
      
  """
  @type approve_assignment_response() :: %{}

  @typedoc """

  ## Example:
      
      list_review_policy_results_for_hit_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("PolicyLevels") => list(list(any())()),
        optional("RetrieveActions") => boolean(),
        optional("RetrieveResults") => boolean(),
        required("HITId") => String.t()
      }
      
  """
  @type list_review_policy_results_for_hit_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_worker_blocks_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_worker_blocks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_bonus_request() :: %{
        optional("UniqueRequestToken") => String.t(),
        required("AssignmentId") => String.t(),
        required("BonusAmount") => String.t(),
        required("Reason") => String.t(),
        required("WorkerId") => String.t()
      }
      
  """
  @type send_bonus_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reject_assignment_response() :: %{}
      
  """
  @type reject_assignment_response() :: %{}

  @typedoc """

  ## Example:
      
      notification_specification() :: %{
        "Destination" => String.t(),
        "EventTypes" => list(list(any())()),
        "Transport" => list(any()),
        "Version" => String.t()
      }
      
  """
  @type notification_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_bonus_payments_response() :: %{
        "BonusPayments" => list(bonus_payment()()),
        "NextToken" => String.t(),
        "NumResults" => integer()
      }
      
  """
  @type list_bonus_payments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_test_event_notification_request() :: %{
        required("Notification") => notification_specification(),
        required("TestEventType") => list(any())
      }
      
  """
  @type send_test_event_notification_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notify_workers_failure_status() :: %{
        "NotifyWorkersFailureCode" => list(any()),
        "NotifyWorkersFailureMessage" => String.t(),
        "WorkerId" => String.t()
      }
      
  """
  @type notify_workers_failure_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_hits_for_qualification_type_response() :: %{
        "HITs" => list(hit()()),
        "NextToken" => String.t(),
        "NumResults" => integer()
      }
      
  """
  @type list_hits_for_qualification_type_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_account_balance_request() :: %{}
      
  """
  @type get_account_balance_request() :: %{}

  @typedoc """

  ## Example:
      
      update_notification_settings_response() :: %{}
      
  """
  @type update_notification_settings_response() :: %{}

  @typedoc """

  ## Example:
      
      reject_qualification_request_response() :: %{}
      
  """
  @type reject_qualification_request_response() :: %{}

  @typedoc """

  ## Example:
      
      update_qualification_type_response() :: %{
        "QualificationType" => qualification_type()
      }
      
  """
  @type update_qualification_type_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_hit_response() :: %{
        "HIT" => hit()
      }
      
  """
  @type get_hit_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_assignment_response() :: %{
        "Assignment" => assignment(),
        "HIT" => hit()
      }
      
  """
  @type get_assignment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reject_qualification_request_request() :: %{
        optional("Reason") => String.t(),
        required("QualificationRequestId") => String.t()
      }
      
  """
  @type reject_qualification_request_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_worker_block_request() :: %{
        required("Reason") => String.t(),
        required("WorkerId") => String.t()
      }
      
  """
  @type create_worker_block_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_qualification_type_response() :: %{}
      
  """
  @type delete_qualification_type_response() :: %{}

  @typedoc """

  ## Example:
      
      list_worker_blocks_response() :: %{
        "NextToken" => String.t(),
        "NumResults" => integer(),
        "WorkerBlocks" => list(worker_block()())
      }
      
  """
  @type list_worker_blocks_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_qualification_with_worker_response() :: %{}
      
  """
  @type associate_qualification_with_worker_response() :: %{}

  @typedoc """

  ## Example:
      
      qualification() :: %{
        "GrantTime" => non_neg_integer(),
        "IntegerValue" => integer(),
        "LocaleValue" => locale(),
        "QualificationTypeId" => String.t(),
        "Status" => list(any()),
        "WorkerId" => String.t()
      }
      
  """
  @type qualification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_hit_review_status_response() :: %{}
      
  """
  @type update_hit_review_status_response() :: %{}

  @typedoc """

  ## Example:
      
      notify_workers_response() :: %{
        "NotifyWorkersFailureStatuses" => list(notify_workers_failure_status()())
      }
      
  """
  @type notify_workers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      worker_block() :: %{
        "Reason" => String.t(),
        "WorkerId" => String.t()
      }
      
  """
  @type worker_block() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_notification_settings_request() :: %{
        optional("Active") => boolean(),
        optional("Notification") => notification_specification(),
        required("HITTypeId") => String.t()
      }
      
  """
  @type update_notification_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      request_error() :: %{
        "Message" => String.t(),
        "TurkErrorCode" => String.t()
      }
      
  """
  @type request_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      accept_qualification_request_response() :: %{}
      
  """
  @type accept_qualification_request_response() :: %{}

  @typedoc """

  ## Example:
      
      disassociate_qualification_from_worker_response() :: %{}
      
  """
  @type disassociate_qualification_from_worker_response() :: %{}

  @typedoc """

  ## Example:
      
      list_qualification_requests_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("QualificationTypeId") => String.t()
      }
      
  """
  @type list_qualification_requests_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_expiration_for_hit_response() :: %{}
      
  """
  @type update_expiration_for_hit_response() :: %{}

  @typedoc """

  ## Example:
      
      hit() :: %{
        "AssignmentDurationInSeconds" => float(),
        "AutoApprovalDelayInSeconds" => float(),
        "CreationTime" => non_neg_integer(),
        "Description" => String.t(),
        "Expiration" => non_neg_integer(),
        "HITGroupId" => String.t(),
        "HITId" => String.t(),
        "HITLayoutId" => String.t(),
        "HITReviewStatus" => list(any()),
        "HITStatus" => list(any()),
        "HITTypeId" => String.t(),
        "Keywords" => String.t(),
        "MaxAssignments" => integer(),
        "NumberOfAssignmentsAvailable" => integer(),
        "NumberOfAssignmentsCompleted" => integer(),
        "NumberOfAssignmentsPending" => integer(),
        "QualificationRequirements" => list(qualification_requirement()()),
        "Question" => String.t(),
        "RequesterAnnotation" => String.t(),
        "Reward" => String.t(),
        "Title" => String.t()
      }
      
  """
  @type hit() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_hit_request() :: %{
        required("HITId") => String.t()
      }
      
  """
  @type get_hit_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_parameter() :: %{
        "Key" => String.t(),
        "MapEntries" => list(parameter_map_entry()()),
        "Values" => list(String.t()())
      }
      
  """
  @type policy_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bonus_payment() :: %{
        "AssignmentId" => String.t(),
        "BonusAmount" => String.t(),
        "GrantTime" => non_neg_integer(),
        "Reason" => String.t(),
        "WorkerId" => String.t()
      }
      
  """
  @type bonus_payment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_workers_with_qualification_type_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Status") => list(any()),
        required("QualificationTypeId") => String.t()
      }
      
  """
  @type list_workers_with_qualification_type_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_bonus_payments_request() :: %{
        optional("AssignmentId") => String.t(),
        optional("HITId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_bonus_payments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_hit_request() :: %{
        optional("AssignmentReviewPolicy") => review_policy(),
        optional("AutoApprovalDelayInSeconds") => float(),
        optional("HITLayoutId") => String.t(),
        optional("HITLayoutParameters") => list(hit_layout_parameter()()),
        optional("HITReviewPolicy") => review_policy(),
        optional("Keywords") => String.t(),
        optional("MaxAssignments") => integer(),
        optional("QualificationRequirements") => list(qualification_requirement()()),
        optional("Question") => String.t(),
        optional("RequesterAnnotation") => String.t(),
        optional("UniqueRequestToken") => String.t(),
        required("AssignmentDurationInSeconds") => float(),
        required("Description") => String.t(),
        required("LifetimeInSeconds") => float(),
        required("Reward") => String.t(),
        required("Title") => String.t()
      }
      
  """
  @type create_hit_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_qualification_with_worker_request() :: %{
        optional("IntegerValue") => integer(),
        optional("SendNotification") => boolean(),
        required("QualificationTypeId") => String.t(),
        required("WorkerId") => String.t()
      }
      
  """
  @type associate_qualification_with_worker_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_qualification_requests_response() :: %{
        "NextToken" => String.t(),
        "NumResults" => integer(),
        "QualificationRequests" => list(qualification_request()())
      }
      
  """
  @type list_qualification_requests_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hit_layout_parameter() :: %{
        "Name" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type hit_layout_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      review_action_detail() :: %{
        "ActionId" => String.t(),
        "ActionName" => String.t(),
        "CompleteTime" => non_neg_integer(),
        "ErrorCode" => String.t(),
        "Result" => String.t(),
        "Status" => list(any()),
        "TargetId" => String.t(),
        "TargetType" => String.t()
      }
      
  """
  @type review_action_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_hit_with_hit_type_response() :: %{
        "HIT" => hit()
      }
      
  """
  @type create_hit_with_hit_type_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_hits_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_hits_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_test_event_notification_response() :: %{}
      
  """
  @type send_test_event_notification_response() :: %{}

  @typedoc """

  ## Example:
      
      update_hit_review_status_request() :: %{
        optional("Revert") => boolean(),
        required("HITId") => String.t()
      }
      
  """
  @type update_hit_review_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_workers_with_qualification_type_response() :: %{
        "NextToken" => String.t(),
        "NumResults" => integer(),
        "Qualifications" => list(qualification()())
      }
      
  """
  @type list_workers_with_qualification_type_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_review_policy_results_for_hit_response() :: %{
        "AssignmentReviewPolicy" => review_policy(),
        "AssignmentReviewReport" => review_report(),
        "HITId" => String.t(),
        "HITReviewPolicy" => review_policy(),
        "HITReviewReport" => review_report(),
        "NextToken" => String.t()
      }
      
  """
  @type list_review_policy_results_for_hit_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_additional_assignments_for_hit_request() :: %{
        optional("UniqueRequestToken") => String.t(),
        required("HITId") => String.t(),
        required("NumberOfAdditionalAssignments") => integer()
      }
      
  """
  @type create_additional_assignments_for_hit_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      review_report() :: %{
        "ReviewActions" => list(review_action_detail()()),
        "ReviewResults" => list(review_result_detail()())
      }
      
  """
  @type review_report() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_assignment_request() :: %{
        required("AssignmentId") => String.t()
      }
      
  """
  @type get_assignment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_assignments_for_hit_response() :: %{
        "Assignments" => list(assignment()()),
        "NextToken" => String.t(),
        "NumResults" => integer()
      }
      
  """
  @type list_assignments_for_hit_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      qualification_type() :: %{
        "AnswerKey" => String.t(),
        "AutoGranted" => boolean(),
        "AutoGrantedValue" => integer(),
        "CreationTime" => non_neg_integer(),
        "Description" => String.t(),
        "IsRequestable" => boolean(),
        "Keywords" => String.t(),
        "Name" => String.t(),
        "QualificationTypeId" => String.t(),
        "QualificationTypeStatus" => list(any()),
        "RetryDelayInSeconds" => float(),
        "Test" => String.t(),
        "TestDurationInSeconds" => float()
      }
      
  """
  @type qualification_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      qualification_request() :: %{
        "Answer" => String.t(),
        "QualificationRequestId" => String.t(),
        "QualificationTypeId" => String.t(),
        "SubmitTime" => non_neg_integer(),
        "Test" => String.t(),
        "WorkerId" => String.t()
      }
      
  """
  @type qualification_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_qualification_score_response() :: %{
        "Qualification" => qualification()
      }
      
  """
  @type get_qualification_score_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_qualification_type_response() :: %{
        "QualificationType" => qualification_type()
      }
      
  """
  @type create_qualification_type_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_hit_type_of_hit_response() :: %{}
      
  """
  @type update_hit_type_of_hit_response() :: %{}

  @typedoc """

  ## Example:
      
      create_hit_with_hit_type_request() :: %{
        optional("AssignmentReviewPolicy") => review_policy(),
        optional("HITLayoutId") => String.t(),
        optional("HITLayoutParameters") => list(hit_layout_parameter()()),
        optional("HITReviewPolicy") => review_policy(),
        optional("MaxAssignments") => integer(),
        optional("Question") => String.t(),
        optional("RequesterAnnotation") => String.t(),
        optional("UniqueRequestToken") => String.t(),
        required("HITTypeId") => String.t(),
        required("LifetimeInSeconds") => float()
      }
      
  """
  @type create_hit_with_hit_type_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_hits_response() :: %{
        "HITs" => list(hit()()),
        "NextToken" => String.t(),
        "NumResults" => integer()
      }
      
  """
  @type list_hits_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_expiration_for_hit_request() :: %{
        required("ExpireAt") => non_neg_integer(),
        required("HITId") => String.t()
      }
      
  """
  @type update_expiration_for_hit_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_hit_request() :: %{
        required("HITId") => String.t()
      }
      
  """
  @type delete_hit_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_reviewable_hits_response() :: %{
        "HITs" => list(hit()()),
        "NextToken" => String.t(),
        "NumResults" => integer()
      }
      
  """
  @type list_reviewable_hits_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_qualification_type_response() :: %{
        "QualificationType" => qualification_type()
      }
      
  """
  @type get_qualification_type_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_hit_response() :: %{
        "HIT" => hit()
      }
      
  """
  @type create_hit_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_qualification_from_worker_request() :: %{
        optional("Reason") => String.t(),
        required("QualificationTypeId") => String.t(),
        required("WorkerId") => String.t()
      }
      
  """
  @type disassociate_qualification_from_worker_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_qualification_type_request() :: %{
        optional("AnswerKey") => String.t(),
        optional("AutoGranted") => boolean(),
        optional("AutoGrantedValue") => integer(),
        optional("Description") => String.t(),
        optional("QualificationTypeStatus") => list(any()),
        optional("RetryDelayInSeconds") => float(),
        optional("Test") => String.t(),
        optional("TestDurationInSeconds") => float(),
        required("QualificationTypeId") => String.t()
      }
      
  """
  @type update_qualification_type_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parameter_map_entry() :: %{
        "Key" => String.t(),
        "Values" => list(String.t()())
      }
      
  """
  @type parameter_map_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_assignments_for_hit_request() :: %{
        optional("AssignmentStatuses") => list(list(any())()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("HITId") => String.t()
      }
      
  """
  @type list_assignments_for_hit_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_qualification_types_response() :: %{
        "NextToken" => String.t(),
        "NumResults" => integer(),
        "QualificationTypes" => list(qualification_type()())
      }
      
  """
  @type list_qualification_types_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_hit_type_request() :: %{
        optional("AutoApprovalDelayInSeconds") => float(),
        optional("Keywords") => String.t(),
        optional("QualificationRequirements") => list(qualification_requirement()()),
        required("AssignmentDurationInSeconds") => float(),
        required("Description") => String.t(),
        required("Reward") => String.t(),
        required("Title") => String.t()
      }
      
  """
  @type create_hit_type_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_worker_block_response() :: %{}
      
  """
  @type delete_worker_block_response() :: %{}

  @type accept_qualification_request_errors() :: request_error() | service_fault()

  @type approve_assignment_errors() :: request_error() | service_fault()

  @type associate_qualification_with_worker_errors() :: request_error() | service_fault()

  @type create_additional_assignments_for_hit_errors() :: request_error() | service_fault()

  @type create_hit_errors() :: request_error() | service_fault()

  @type create_hit_type_errors() :: request_error() | service_fault()

  @type create_hit_with_hit_type_errors() :: request_error() | service_fault()

  @type create_qualification_type_errors() :: request_error() | service_fault()

  @type create_worker_block_errors() :: request_error() | service_fault()

  @type delete_hit_errors() :: request_error() | service_fault()

  @type delete_qualification_type_errors() :: request_error() | service_fault()

  @type delete_worker_block_errors() :: request_error() | service_fault()

  @type disassociate_qualification_from_worker_errors() :: request_error() | service_fault()

  @type get_account_balance_errors() :: request_error() | service_fault()

  @type get_assignment_errors() :: request_error() | service_fault()

  @type get_file_upload_url_errors() :: request_error() | service_fault()

  @type get_hit_errors() :: request_error() | service_fault()

  @type get_qualification_score_errors() :: request_error() | service_fault()

  @type get_qualification_type_errors() :: request_error() | service_fault()

  @type list_assignments_for_hit_errors() :: request_error() | service_fault()

  @type list_bonus_payments_errors() :: request_error() | service_fault()

  @type list_hits_errors() :: request_error() | service_fault()

  @type list_hits_for_qualification_type_errors() :: request_error() | service_fault()

  @type list_qualification_requests_errors() :: request_error() | service_fault()

  @type list_qualification_types_errors() :: request_error() | service_fault()

  @type list_review_policy_results_for_hit_errors() :: request_error() | service_fault()

  @type list_reviewable_hits_errors() :: request_error() | service_fault()

  @type list_worker_blocks_errors() :: request_error() | service_fault()

  @type list_workers_with_qualification_type_errors() :: request_error() | service_fault()

  @type notify_workers_errors() :: request_error() | service_fault()

  @type reject_assignment_errors() :: request_error() | service_fault()

  @type reject_qualification_request_errors() :: request_error() | service_fault()

  @type send_bonus_errors() :: request_error() | service_fault()

  @type send_test_event_notification_errors() :: request_error() | service_fault()

  @type update_expiration_for_hit_errors() :: request_error() | service_fault()

  @type update_hit_review_status_errors() :: request_error() | service_fault()

  @type update_hit_type_of_hit_errors() :: request_error() | service_fault()

  @type update_notification_settings_errors() :: request_error() | service_fault()

  @type update_qualification_type_errors() :: request_error() | service_fault()

  def metadata do
    %{
      api_version: "2017-01-17",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "mturk-requester",
      global?: true,
      hostname: nil,
      protocol: "json",
      service_id: "MTurk",
      signature_version: "v4",
      signing_name: "mturk-requester",
      target_prefix: "MTurkRequesterServiceV20170117"
    }
  end

  @doc """
  The `AcceptQualificationRequest` operation approves a Worker's request for a
  Qualification. Only the owner of the Qualification type can grant a
  Qualification request for that type.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mturk%20AcceptQualificationRequest&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:accept_qualification_request_request`)
    %{
      optional("IntegerValue") => integer(),
      required("QualificationRequestId") => String.t()
    }
  """

  @spec accept_qualification_request(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, accept_qualification_request_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, accept_qualification_request_errors()}

  def accept_qualification_request(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AcceptQualificationRequest", input, options)
  end

  @doc """
  The `ApproveAssignment` operation approves the results of a completed
  assignment. Approving an assignment initiates two payments from the
  Requester's Amazon.com account

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mturk%20ApproveAssignment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:approve_assignment_request`)
    %{
      optional("OverrideRejection") => boolean(),
      optional("RequesterFeedback") => String.t(),
      required("AssignmentId") => String.t()
    }
  """

  @spec approve_assignment(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, approve_assignment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, approve_assignment_errors()}

  def approve_assignment(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ApproveAssignment", input, options)
  end

  @doc """
  The `AssociateQualificationWithWorker` operation gives a Worker a Qualification.
  `AssociateQualificationWithWorker` does not require that the Worker submit a
  Qualification request. It gives the Qualification directly to the Worker. You
  can only assign a Qualification of a Qualification type that you created
  (using the `CreateQualificationType` operation).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mturk%20AssociateQualificationWithWorker&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:associate_qualification_with_worker_request`)
    %{
      optional("IntegerValue") => integer(),
      optional("SendNotification") => boolean(),
      required("QualificationTypeId") => String.t(),
      required("WorkerId") => String.t()
    }
  """

  @spec associate_qualification_with_worker(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, associate_qualification_with_worker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_qualification_with_worker_errors()}

  def associate_qualification_with_worker(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssociateQualificationWithWorker", input, options)
  end

  @doc """
  The `CreateAdditionalAssignmentsForHIT` operation increases the maximum number
  of assignments of an existing HIT. To extend the maximum number of
  assignments, specify the number of additional assignments.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mturk%20CreateAdditionalAssignmentsForHIT&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_additional_assignments_for_hit_request`)
    %{
      optional("UniqueRequestToken") => String.t(),
      required("HITId") => String.t(),
      required("NumberOfAdditionalAssignments") => integer()
    }
  """

  @spec create_additional_assignments_for_hit(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_additional_assignments_for_hit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_additional_assignments_for_hit_errors()}

  def create_additional_assignments_for_hit(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateAdditionalAssignmentsForHIT", input, options)
  end

  @doc """
  The `CreateHIT` operation creates a new Human Intelligence Task (HIT). The new
  HIT is made available for Workers to find and accept on the Amazon Mechanical
  Turk website. This operation allows you to specify a new HIT by passing in
  values for the properties of the HIT, such as its title, reward amount and
  number of assignments. When you pass these values to `CreateHIT`, a new HIT is
  created for you, with a new `HITTypeID`. The HITTypeID can be used to create
  additional HITs in the future without needing to specify common parameters
  such as the title, description and reward amount each time.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mturk%20CreateHIT&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_hit_request`)
    %{
      optional("AssignmentReviewPolicy") => review_policy(),
      optional("AutoApprovalDelayInSeconds") => float(),
      optional("HITLayoutId") => String.t(),
      optional("HITLayoutParameters") => list(hit_layout_parameter()()),
      optional("HITReviewPolicy") => review_policy(),
      optional("Keywords") => String.t(),
      optional("MaxAssignments") => integer(),
      optional("QualificationRequirements") => list(qualification_requirement()()),
      optional("Question") => String.t(),
      optional("RequesterAnnotation") => String.t(),
      optional("UniqueRequestToken") => String.t(),
      required("AssignmentDurationInSeconds") => float(),
      required("Description") => String.t(),
      required("LifetimeInSeconds") => float(),
      required("Reward") => String.t(),
      required("Title") => String.t()
    }
  """

  @spec create_hit(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_hit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_hit_errors()}

  def create_hit(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateHIT", input, options)
  end

  @doc """
  The `CreateHITType` operation creates a new HIT type. This operation allows you
  to define a standard set of HIT properties to use when creating HITs. If you
  register a HIT type with values that match an existing HIT type, the HIT type
  ID of the existing type will be returned.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mturk%20CreateHITType&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_hit_type_request`)
    %{
      optional("AutoApprovalDelayInSeconds") => float(),
      optional("Keywords") => String.t(),
      optional("QualificationRequirements") => list(qualification_requirement()()),
      required("AssignmentDurationInSeconds") => float(),
      required("Description") => String.t(),
      required("Reward") => String.t(),
      required("Title") => String.t()
    }
  """

  @spec create_hit_type(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_hit_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_hit_type_errors()}

  def create_hit_type(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateHITType", input, options)
  end

  @doc """
  The `CreateHITWithHITType` operation creates a new Human Intelligence Task (HIT)
  using an existing HITTypeID generated by the `CreateHITType` operation. This
  is an alternative way to create HITs from the `CreateHIT` operation. This is
  the recommended best practice for Requesters who are creating large numbers of
  HITs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mturk%20CreateHITWithHITType&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_hit_with_hit_type_request`)
    %{
      optional("AssignmentReviewPolicy") => review_policy(),
      optional("HITLayoutId") => String.t(),
      optional("HITLayoutParameters") => list(hit_layout_parameter()()),
      optional("HITReviewPolicy") => review_policy(),
      optional("MaxAssignments") => integer(),
      optional("Question") => String.t(),
      optional("RequesterAnnotation") => String.t(),
      optional("UniqueRequestToken") => String.t(),
      required("HITTypeId") => String.t(),
      required("LifetimeInSeconds") => float()
    }
  """

  @spec create_hit_with_hit_type(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_hit_with_hit_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_hit_with_hit_type_errors()}

  def create_hit_with_hit_type(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateHITWithHITType", input, options)
  end

  @doc """
  The `CreateQualificationType` operation creates a new Qualification type, which
  is represented by a `QualificationType` data structure.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mturk%20CreateQualificationType&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_qualification_type_request`)
    %{
      optional("AnswerKey") => String.t(),
      optional("AutoGranted") => boolean(),
      optional("AutoGrantedValue") => integer(),
      optional("Keywords") => String.t(),
      optional("RetryDelayInSeconds") => float(),
      optional("Test") => String.t(),
      optional("TestDurationInSeconds") => float(),
      required("Description") => String.t(),
      required("Name") => String.t(),
      required("QualificationTypeStatus") => list(any())
    }
  """

  @spec create_qualification_type(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_qualification_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_qualification_type_errors()}

  def create_qualification_type(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateQualificationType", input, options)
  end

  @doc """
  The `CreateWorkerBlock` operation allows you to prevent a Worker from working on
  your HITs. For example, you can block a Worker who is producing poor quality
  work. You can block up to 100,000 Workers.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mturk%20CreateWorkerBlock&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_worker_block_request`)
    %{
      required("Reason") => String.t(),
      required("WorkerId") => String.t()
    }
  """

  @spec create_worker_block(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_worker_block_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_worker_block_errors()}

  def create_worker_block(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateWorkerBlock", input, options)
  end

  @doc """
  The `DeleteHIT` operation is used to delete HIT that is no longer needed. Only
  the Requester who created the HIT can delete it. You can only dispose of HITs
  that are in the `Reviewable` state, with all of their submitted assignments
  already either approved or rejected. If you call the DeleteHIT operation on a
  HIT that is not in the `Reviewable` state (for example, that has not expired,
  or still has active assignments), or on a HIT that is Reviewable but without
  all of its submitted assignments already approved or rejected, the service
  will return an error.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mturk%20DeleteHIT&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_hit_request`)
    %{
      required("HITId") => String.t()
    }
  """

  @spec delete_hit(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_hit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_hit_errors()}

  def delete_hit(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteHIT", input, options)
  end

  @doc """
  The `DeleteQualificationType` deletes a Qualification type and deletes any HIT
  types that are associated with the Qualification type. This operation does not
  revoke Qualifications already assigned to Workers because the Qualifications
  might be needed for active HITs. If there are any pending requests for the
  Qualification type, Amazon Mechanical Turk rejects those requests. After you
  delete a Qualification type, you can no longer use it to create HITs or HIT
  types.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mturk%20DeleteQualificationType&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_qualification_type_request`)
    %{
      required("QualificationTypeId") => String.t()
    }
  """

  @spec delete_qualification_type(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_qualification_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_qualification_type_errors()}

  def delete_qualification_type(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteQualificationType", input, options)
  end

  @doc """
  The `DeleteWorkerBlock` operation allows you to reinstate a blocked Worker to
  work on your HITs. This operation reverses the effects of the
  CreateWorkerBlock operation. You need the Worker ID to use this operation. If
  the Worker ID is missing or invalid, this operation fails and returns the
  message “WorkerId is invalid.” If the specified Worker is not blocked, this
  operation returns successfully.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mturk%20DeleteWorkerBlock&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_worker_block_request`)
    %{
      optional("Reason") => String.t(),
      required("WorkerId") => String.t()
    }
  """

  @spec delete_worker_block(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_worker_block_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_worker_block_errors()}

  def delete_worker_block(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteWorkerBlock", input, options)
  end

  @doc """
  The `DisassociateQualificationFromWorker` revokes a previously granted
  Qualification from a user.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mturk%20DisassociateQualificationFromWorker&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:disassociate_qualification_from_worker_request`)
    %{
      optional("Reason") => String.t(),
      required("QualificationTypeId") => String.t(),
      required("WorkerId") => String.t()
    }
  """

  @spec disassociate_qualification_from_worker(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, disassociate_qualification_from_worker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_qualification_from_worker_errors()}

  def disassociate_qualification_from_worker(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisassociateQualificationFromWorker", input, options)
  end

  @doc """
  The `GetAccountBalance` operation retrieves the Prepaid HITs balance in your
  Amazon Mechanical Turk account if you are a Prepaid Requester. Alternatively,
  this operation will retrieve the remaining available AWS Billing usage if you
  have enabled AWS Billing. Note: If you have enabled AWS Billing and still have
  a remaining Prepaid HITs balance, this balance can be viewed on the My Account
  page in the Requester console.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mturk%20GetAccountBalance&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_account_balance_request`)
    %{
      
    }
  """

  @spec get_account_balance(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_account_balance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_account_balance_errors()}

  def get_account_balance(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetAccountBalance", input, options)
  end

  @doc """
  The `GetAssignment` operation retrieves the details of the specified Assignment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mturk%20GetAssignment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_assignment_request`)
    %{
      required("AssignmentId") => String.t()
    }
  """

  @spec get_assignment(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_assignment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_assignment_errors()}

  def get_assignment(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetAssignment", input, options)
  end

  @doc """
  The `GetFileUploadURL` operation generates and returns a temporary URL. You use
  the temporary URL to retrieve a file uploaded by a Worker as an answer to a
  FileUploadAnswer question for a HIT. The temporary URL is generated the
  instant the GetFileUploadURL operation is called, and is valid for 60 seconds.
  You can get a temporary file upload URL any time until the HIT is disposed.
  After the HIT is disposed, any uploaded files are deleted, and cannot be
  retrieved. Pending Deprecation on December 12, 2017. The Answer Specification
  structure will no longer support the `FileUploadAnswer` element to be used for
  the QuestionForm data structure. Instead, we recommend that Requesters who
  want to create HITs asking Workers to upload files to use Amazon S3.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mturk%20GetFileUploadURL&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_file_upload_url_request`)
    %{
      required("AssignmentId") => String.t(),
      required("QuestionIdentifier") => String.t()
    }
  """

  @spec get_file_upload_url(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_file_upload_url_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_file_upload_url_errors()}

  def get_file_upload_url(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetFileUploadURL", input, options)
  end

  @doc """
  The `GetHIT` operation retrieves the details of the specified HIT.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mturk%20GetHIT&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_hit_request`)
    %{
      required("HITId") => String.t()
    }
  """

  @spec get_hit(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_hit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_hit_errors()}

  def get_hit(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetHIT", input, options)
  end

  @doc """
  The `GetQualificationScore` operation returns the value of a Worker's
  Qualification for a given Qualification type. To get a Worker's Qualification,
  you must know the Worker's ID. The Worker's ID is included in the assignment
  data returned by the `ListAssignmentsForHIT` operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mturk%20GetQualificationScore&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_qualification_score_request`)
    %{
      required("QualificationTypeId") => String.t(),
      required("WorkerId") => String.t()
    }
  """

  @spec get_qualification_score(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_qualification_score_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_qualification_score_errors()}

  def get_qualification_score(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetQualificationScore", input, options)
  end

  @doc """
  The `GetQualificationType`operation retrieves information about a Qualification
  type using its ID.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mturk%20GetQualificationType&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_qualification_type_request`)
    %{
      required("QualificationTypeId") => String.t()
    }
  """

  @spec get_qualification_type(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_qualification_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_qualification_type_errors()}

  def get_qualification_type(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetQualificationType", input, options)
  end

  @doc """
  The `ListAssignmentsForHIT` operation retrieves completed assignments for a HIT.
  You can use this operation to retrieve the results for a HIT. You can get
  assignments for a HIT at any time, even if the HIT is not yet Reviewable. If a
  HIT requested multiple assignments, and has received some results but has not
  yet become Reviewable, you can still retrieve the partial results with this
  operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mturk%20ListAssignmentsForHIT&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_assignments_for_hit_request`)
    %{
      optional("AssignmentStatuses") => list(list(any())()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("HITId") => String.t()
    }
  """

  @spec list_assignments_for_hit(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_assignments_for_hit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_assignments_for_hit_errors()}

  def list_assignments_for_hit(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAssignmentsForHIT", input, options)
  end

  @doc """
  The `ListBonusPayments` operation retrieves the amounts of bonuses you have paid
  to Workers for a given HIT or assignment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mturk%20ListBonusPayments&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_bonus_payments_request`)
    %{
      optional("AssignmentId") => String.t(),
      optional("HITId") => String.t(),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec list_bonus_payments(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_bonus_payments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_bonus_payments_errors()}

  def list_bonus_payments(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListBonusPayments", input, options)
  end

  @doc """
  The `ListHITs` operation returns all of a Requester's HITs. The operation
  returns HITs of any status, except for HITs that have been deleted of with the
  DeleteHIT operation or that have been auto-deleted.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mturk%20ListHITs&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_hits_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec list_hits(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_hits_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_hits_errors()}

  def list_hits(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListHITs", input, options)
  end

  @doc """
  The `ListHITsForQualificationType` operation returns the HITs that use the given
  Qualification type for a Qualification requirement. The operation returns HITs
  of any status, except for HITs that have been deleted with the `DeleteHIT`
  operation or that have been auto-deleted.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mturk%20ListHITsForQualificationType&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_hits_for_qualification_type_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("QualificationTypeId") => String.t()
    }
  """

  @spec list_hits_for_qualification_type(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_hits_for_qualification_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_hits_for_qualification_type_errors()}

  def list_hits_for_qualification_type(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListHITsForQualificationType", input, options)
  end

  @doc """
  The `ListQualificationRequests` operation retrieves requests for Qualifications
  of a particular Qualification type. The owner of the Qualification type calls
  this operation to poll for pending requests, and accepts them using the
  AcceptQualification operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mturk%20ListQualificationRequests&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_qualification_requests_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("QualificationTypeId") => String.t()
    }
  """

  @spec list_qualification_requests(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_qualification_requests_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_qualification_requests_errors()}

  def list_qualification_requests(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListQualificationRequests", input, options)
  end

  @doc """
  The `ListQualificationTypes` operation returns a list of Qualification types,
  filtered by an optional search term.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mturk%20ListQualificationTypes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_qualification_types_request`)
    %{
      optional("MaxResults") => integer(),
      optional("MustBeOwnedByCaller") => boolean(),
      optional("NextToken") => String.t(),
      optional("Query") => String.t(),
      required("MustBeRequestable") => boolean()
    }
  """

  @spec list_qualification_types(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_qualification_types_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_qualification_types_errors()}

  def list_qualification_types(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListQualificationTypes", input, options)
  end

  @doc """
  The `ListReviewPolicyResultsForHIT` operation retrieves the computed results and
  the actions taken in the course of executing your Review Policies for a given
  HIT. For information about how to specify Review Policies when you call
  CreateHIT, see Review Policies. The ListReviewPolicyResultsForHIT operation
  can return results for both Assignment-level and HIT-level review results.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mturk%20ListReviewPolicyResultsForHIT&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_review_policy_results_for_hit_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("PolicyLevels") => list(list(any())()),
      optional("RetrieveActions") => boolean(),
      optional("RetrieveResults") => boolean(),
      required("HITId") => String.t()
    }
  """

  @spec list_review_policy_results_for_hit(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_review_policy_results_for_hit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_review_policy_results_for_hit_errors()}

  def list_review_policy_results_for_hit(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListReviewPolicyResultsForHIT", input, options)
  end

  @doc """
  The `ListReviewableHITs` operation retrieves the HITs with Status equal to
  Reviewable or Status equal to Reviewing that belong to the Requester calling
  the operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mturk%20ListReviewableHITs&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_reviewable_hits_request`)
    %{
      optional("HITTypeId") => String.t(),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("Status") => list(any())
    }
  """

  @spec list_reviewable_hits(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_reviewable_hits_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_reviewable_hits_errors()}

  def list_reviewable_hits(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListReviewableHITs", input, options)
  end

  @doc """
  The `ListWorkersBlocks` operation retrieves a list of Workers who are blocked
  from working on your HITs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mturk%20ListWorkerBlocks&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_worker_blocks_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec list_worker_blocks(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_worker_blocks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_worker_blocks_errors()}

  def list_worker_blocks(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListWorkerBlocks", input, options)
  end

  @doc """
  The `ListWorkersWithQualificationType` operation returns all of the Workers that
  have been associated with a given Qualification type.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mturk%20ListWorkersWithQualificationType&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_workers_with_qualification_type_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("Status") => list(any()),
      required("QualificationTypeId") => String.t()
    }
  """

  @spec list_workers_with_qualification_type(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_workers_with_qualification_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_workers_with_qualification_type_errors()}

  def list_workers_with_qualification_type(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListWorkersWithQualificationType", input, options)
  end

  @doc """
  The `NotifyWorkers` operation sends an email to one or more Workers that you
  specify with the Worker ID. You can specify up to 100 Worker IDs to send the
  same message with a single call to the NotifyWorkers operation. The
  NotifyWorkers operation will send a notification email to a Worker only if you
  have previously approved or rejected work from the Worker.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mturk%20NotifyWorkers&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:notify_workers_request`)
    %{
      required("MessageText") => String.t(),
      required("Subject") => String.t(),
      required("WorkerIds") => list(String.t()())
    }
  """

  @spec notify_workers(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, notify_workers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, notify_workers_errors()}

  def notify_workers(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "NotifyWorkers", input, options)
  end

  @doc """
  The `RejectAssignment` operation rejects the results of a completed assignment.
  You can include an optional feedback message with the rejection, which the
  Worker can see in the Status section of the web site. When you include a
  feedback message with the rejection, it helps the Worker understand why the
  assignment was rejected, and can improve the quality of the results the Worker
  submits in the future.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mturk%20RejectAssignment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:reject_assignment_request`)
    %{
      required("AssignmentId") => String.t(),
      required("RequesterFeedback") => String.t()
    }
  """

  @spec reject_assignment(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, reject_assignment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reject_assignment_errors()}

  def reject_assignment(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "RejectAssignment", input, options)
  end

  @doc """
  The `RejectQualificationRequest` operation rejects a user's request for a
  Qualification.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mturk%20RejectQualificationRequest&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:reject_qualification_request_request`)
    %{
      optional("Reason") => String.t(),
      required("QualificationRequestId") => String.t()
    }
  """

  @spec reject_qualification_request(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, reject_qualification_request_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reject_qualification_request_errors()}

  def reject_qualification_request(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "RejectQualificationRequest", input, options)
  end

  @doc """
  The `SendBonus` operation issues a payment of money from your account to a
  Worker. This payment happens separately from the reward you pay to the Worker
  when you approve the Worker's assignment. The SendBonus operation requires the
  Worker's ID and the assignment ID as parameters to initiate payment of the
  bonus. You must include a message that explains the reason for the bonus
  payment, as the Worker may not be expecting the payment. Amazon Mechanical
  Turk collects a fee for bonus payments, similar to the HIT listing fee. This
  operation fails if your account does not have enough funds to pay for both the
  bonus and the fees.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mturk%20SendBonus&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:send_bonus_request`)
    %{
      optional("UniqueRequestToken") => String.t(),
      required("AssignmentId") => String.t(),
      required("BonusAmount") => String.t(),
      required("Reason") => String.t(),
      required("WorkerId") => String.t()
    }
  """

  @spec send_bonus(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, send_bonus_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_bonus_errors()}

  def send_bonus(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SendBonus", input, options)
  end

  @doc """
  The `SendTestEventNotification` operation causes Amazon Mechanical Turk to send
  a notification message as if a HIT event occurred, according to the provided
  notification specification. This allows you to test notifications without
  setting up notifications for a real HIT type and trying to trigger them using
  the website. When you call this operation, the service attempts to send the
  test notification immediately.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mturk%20SendTestEventNotification&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:send_test_event_notification_request`)
    %{
      required("Notification") => notification_specification(),
      required("TestEventType") => list(any())
    }
  """

  @spec send_test_event_notification(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, send_test_event_notification_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_test_event_notification_errors()}

  def send_test_event_notification(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SendTestEventNotification", input, options)
  end

  @doc """
  The `UpdateExpirationForHIT` operation allows you update the expiration time of
  a HIT. If you update it to a time in the past, the HIT will be immediately
  expired.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mturk%20UpdateExpirationForHIT&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_expiration_for_hit_request`)
    %{
      required("ExpireAt") => non_neg_integer(),
      required("HITId") => String.t()
    }
  """

  @spec update_expiration_for_hit(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_expiration_for_hit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_expiration_for_hit_errors()}

  def update_expiration_for_hit(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateExpirationForHIT", input, options)
  end

  @doc """
  The `UpdateHITReviewStatus` operation updates the status of a HIT. If the status
  is Reviewable, this operation can update the status to Reviewing, or it can
  revert a Reviewing HIT back to the Reviewable status.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mturk%20UpdateHITReviewStatus&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_hit_review_status_request`)
    %{
      optional("Revert") => boolean(),
      required("HITId") => String.t()
    }
  """

  @spec update_hit_review_status(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_hit_review_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_hit_review_status_errors()}

  def update_hit_review_status(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateHITReviewStatus", input, options)
  end

  @doc """
  The `UpdateHITTypeOfHIT` operation allows you to change the HITType properties
  of a HIT. This operation disassociates the HIT from its old HITType properties
  and associates it with the new HITType properties. The HIT takes on the
  properties of the new HITType in place of the old ones.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mturk%20UpdateHITTypeOfHIT&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_hit_type_of_hit_request`)
    %{
      required("HITId") => String.t(),
      required("HITTypeId") => String.t()
    }
  """

  @spec update_hit_type_of_hit(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_hit_type_of_hit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_hit_type_of_hit_errors()}

  def update_hit_type_of_hit(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateHITTypeOfHIT", input, options)
  end

  @doc """
  The `UpdateNotificationSettings` operation creates, updates, disables or
  re-enables notifications for a HIT type. If you call the
  UpdateNotificationSettings operation for a HIT type that already has a
  notification specification, the operation replaces the old specification with
  a new one. You can call the UpdateNotificationSettings operation to enable or
  disable notifications for the HIT type, without having to modify the
  notification specification itself by providing updates to the Active status
  without specifying a new notification specification. To change the Active
  status of a HIT type's notifications, the HIT type must already have a
  notification specification, or one must be provided in the same call to
  `UpdateNotificationSettings`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mturk%20UpdateNotificationSettings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_notification_settings_request`)
    %{
      optional("Active") => boolean(),
      optional("Notification") => notification_specification(),
      required("HITTypeId") => String.t()
    }
  """

  @spec update_notification_settings(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_notification_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_notification_settings_errors()}

  def update_notification_settings(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateNotificationSettings", input, options)
  end

  @doc """
  The `UpdateQualificationType` operation modifies the attributes of an existing
  Qualification type, which is represented by a QualificationType data
  structure. Only the owner of a Qualification type can modify its attributes.
  Most attributes of a Qualification type can be changed after the type has been
  created. However, the Name and Keywords fields cannot be modified. The
  RetryDelayInSeconds parameter can be modified or added to change the delay or
  to enable retries, but RetryDelayInSeconds cannot be used to disable retries.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mturk%20UpdateQualificationType&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_qualification_type_request`)
    %{
      optional("AnswerKey") => String.t(),
      optional("AutoGranted") => boolean(),
      optional("AutoGrantedValue") => integer(),
      optional("Description") => String.t(),
      optional("QualificationTypeStatus") => list(any()),
      optional("RetryDelayInSeconds") => float(),
      optional("Test") => String.t(),
      optional("TestDurationInSeconds") => float(),
      required("QualificationTypeId") => String.t()
    }
  """

  @spec update_qualification_type(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_qualification_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_qualification_type_errors()}

  def update_qualification_type(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateQualificationType", input, options)
  end
end
